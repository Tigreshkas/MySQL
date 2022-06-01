/* Скрипты характерных выборок (включающие группировки, JOIN'ы, вложенные таблицы) */

-- узнаем, у какого автора больше всего книг
SELECT author, COUNT(*) AS cnt FROM books b 
GROUP BY author ORDER BY cnt DESC LIMIT 1;

-- сколько раз был выполнен заказ и на какое количество экземпляров, на книгу с ИД=1
SELECT title, COUNT(*) AS cnt, SUM(op.quantity) AS quantity FROM books b 
INNER JOIN orders_products op ON (op.book_id=1) 
WHERE b.id=1
GROUP BY title;



/* Представления (минимум 2)*/

-- Представление, где хранятся все пользователи, которые младше 18 лет

DROP VIEW IF EXISTS age_less_18;
CREATE VIEW age_less_18 AS SELECT p.user_id, p.birthday FROM profiles p WHERE TIMESTAMPDIFF(YEAR, p.birthday, NOW()) < 18; 

-- Второе представление находится в конце файла, т.к. оно зависит от процедуры и функции, описанных ниже.	
		
		

/* Хранимые процедуры/триггеры */

-- триггер добавляет в таблицу логов запись о том, что пользователь, оформивший заказ, младше 18 лет
DROP TABLE IF EXISTS logs;
CREATE TABLE logs (
	created_at DATETIME,
	orders_id BIGINT NOT NULL,
	name_value VARCHAR(255)
) COMMENT = 'Таблица логов' ENGINE=ARCHIVE;


DROP TRIGGER IF EXISTS order_age;
DELIMITER //

CREATE TRIGGER order_age AFTER INSERT ON orders
FOR EACH ROW 
BEGIN 
	INSERT INTO logs (created_at, orders_id, name_value) 
	SELECT NOW(), NEW.id, 'Заказ сделал пользователь младше 18 лет!' FROM orders o
	RIGHT JOIN age_less_18 al ON o.user_id = al.user_id 
	WHERE o.user_id IS NOT NULL LIMIT 1;
END //

DELIMITER ;

-- Проверка действия триггера

INSERT INTO orders VALUES (31,1,'1982-08-22 11:35:00','1974-03-08 12:09:04','assembled', 0, 0);
SELECT created_at, orders_id, name_value FROM logs l;


-- Функция подсчета суммы заказа

DROP FUNCTION IF EXISTS sum_ord;
DELIMITER //
CREATE FUNCTION sum_ord(id_order BIGINT)
RETURNS BIGINT DETERMINISTIC
BEGIN
	RETURN (SELECT SUM(price*op.quantity) FROM books b 
	LEFT JOIN orders_products op 
	ON op.book_id = b.id 
	WHERE op.num_order_id = id_order
	GROUP BY op.num_order_id);
END //
DELIMITER ;


-- Процедура начисления скидки в зависимости от суммы заказа

DROP PROCEDURE IF EXISTS discount_ord;
DELIMITER //
CREATE PROCEDURE discount_ord()
BEGIN
	UPDATE orders SET discount =
	CASE
		WHEN sum_ord(orders.id) < 5000 THEN 0
		WHEN sum_ord(orders.id) >= 5000 AND sum_ord(orders.id) < 10000 THEN 5
		WHEN sum_ord(orders.id) >= 10000 AND sum_ord(orders.id) < 15000 THEN 10
		WHEN sum_ord(orders.id) >= 15000 AND sum_ord(orders.id) < 25000 THEN 15
		WHEN sum_ord(orders.id) >= 25000 THEN 25
	END;
END //
DELIMITER ;

CALL discount_ord();

-- обновляем сумму заказа с учетом скидки
UPDATE orders SET sum_orders = sum_ord(orders.id)-sum_ord(orders.id)*orders.discount/100;

-- Проверка стоимости заказа (с учетом скидки)
SELECT id AS 'Номер заказа', sum_orders AS 'Сумма заказа' FROM orders o;


-- Представление, где хранится остаток книг на складе (выполнять после выполнения блока хранимых процедур/триггеров)

DROP VIEW IF EXISTS remains_books;
CREATE VIEW remains_books AS SELECT id, remains FROM (SELECT b.id, b.quantity - SUM(op.quantity) AS remains
	FROM orders_products op 
	LEFT JOIN books b
	ON op.book_id = b.id 
	GROUP BY op.book_id
UNION
SELECT b.id, b.quantity FROM books b WHERE b.id NOT IN (SELECT op.book_id FROM orders_products op GROUP BY op.book_id)) AS subquery
ORDER BY id;

-- проверяем остаток книг на складе
SELECT id, remains FROM remains_books;	



