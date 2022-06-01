/* 1. Создайте таблицу logs типа Archive. Пусть при каждом создании записи в таблицах users, catalogs и products в таблицу logs 
 * помещается время и дата создания записи, название таблицы, идентификатор первичного ключа и содержимое поля name. */

USE shop;

DROP TABLE IF EXISTS logs;
CREATE TABLE logs (
	created_at DATETIME,
	table_name VARCHAR(100),
	table_id BIGINT UNSIGNED NOT NULL,
	name_value VARCHAR(255)
) COMMENT = 'Таблица логов' ENGINE=ARCHIVE;


-- триггер для таблицы users
DROP TRIGGER IF EXISTS add_row_in_users;
DELIMITER //

CREATE TRIGGER add_row_in_users AFTER INSERT ON users
FOR EACH ROW 
BEGIN 
	INSERT INTO logs (created_at, table_name, table_id, name_value)
	VALUES (NOW(), 'users', NEW.id, NEW.name);
END //

DELIMITER ;


-- триггер для таблицы catalogs
DROP TRIGGER IF EXISTS add_row_in_catalogs;
DELIMITER //

CREATE TRIGGER add_row_in_catalogs AFTER INSERT ON catalogs
FOR EACH ROW 
BEGIN 
	INSERT INTO logs (created_at, table_name, table_id, name_value)
	VALUES (NOW(), 'catalogs', NEW.id, NEW.name);
END //

DELIMITER ;


-- триггер для таблицы products
DROP TRIGGER IF EXISTS add_row_in_products;
DELIMITER //

CREATE TRIGGER add_row_in_products AFTER INSERT ON products
FOR EACH ROW 
BEGIN 
	INSERT INTO logs (created_at, table_name, table_id, name_value)
	VALUES (NOW(), 'products', NEW.id, NEW.name);
END //

DELIMITER ;


-- проверяем действие триггеров
INSERT INTO catalogs VALUES (NULL, 'Клавиатура');
INSERT INTO users (name, birthday_at) VALUES ('Елизавета', '1998-03-27');
INSERT INTO products (name, desription, price, catalog_id) VALUES ('Intel Core i5', 'Процессор для настольных ПК, основанных на платформе Intel.', 9320.00, 1);

SELECT created_at, table_name, table_id, name_value FROM logs;




/* 2. Создайте SQL-запрос, который помещает в таблицу users миллион записей (на данный момент не миллион, а всего 100, чтобы была возможность проверить результат). */
USE shop;

DROP PROCEDURE IF EXISTS add_mln_users;
DELIMITER //
CREATE PROCEDURE add_mln_users()
BEGIN
	DECLARE i INT DEFAULT 0;
	WHILE i <= 100 DO
		INSERT INTO users (name, birthday_at) VALUES (CONCAT('users-', i), NOW());
		SET i = i + 1;
	END WHILE;
END //
DELIMITER ;


CALL add_mln_users();

SELECT name, birthday_at FROM users;


