/* Практическое задание по теме «Операторы, фильтрация, сортировка и ограничение» */
/* 1. Пусть в таблице users поля created_at и updated_at оказались незаполненными. Заполните их текущими датой и временем. */
UPDATE users SET created_at = NOW(), updated_at = NOW();


/* 2. Таблица users была неудачно спроектирована. Записи created_at и updated_at были заданы типом VARCHAR и в них долгое время помещались 
значения в формате 20.10.2017 8:10. Необходимо преобразовать поля к типу DATETIME, сохранив введённые ранее значения. */
-- преобразуем записи created_at и updated_at к виду даты
UPDATE users SET created_at = STR_TO_DATE(created_at, '%d.%m.%Y %h:%i'), updated_at = STR_TO_DATE(updated_at, '%d.%m.%Y %h:%i');
-- обновим тип столбцов created_at и updated_at (для каждого по отдельности) на DATETIME 
ALTER TABLE users MODIFY created_at DATETIME;
ALTER TABLE users MODIFY updated_at DATETIME;


/* 3. В таблице складских запасов storehouses_products в поле value могут встречаться самые разные цифры: 0, если товар закончился и выше нуля, 
 если на складе имеются запасы. Необходимо отсортировать записи таким образом, чтобы они выводились в порядке увеличения значения value. 
 Однако нулевые запасы должны выводиться в конце, после всех записей. */
SELECT * FROM storehouses_products ORDER BY IF (value = 0, 1, 0), value;

/* 4. (по желанию) Из таблицы users необходимо извлечь пользователей, родившихся в августе и мае. Месяцы заданы в виде списка английских названий (may, august) */
SELECT * FROM users WHERE birthday_at LIKE '%may%' OR birthday_at LIKE '%august%';

/* 5. (по желанию) Из таблицы catalogs извлекаются записи при помощи запроса. SELECT * FROM catalogs WHERE id IN (5, 1, 2); 
 Отсортируйте записи в порядке, заданном в списке IN. */
SELECT * FROM catalogs WHERE id IN (5, 1, 2) ORDER BY FIELD(id, 5, 1, 2); 



/* Практическое задание теме «Агрегация данных» */
/* 1. Подсчитайте средний возраст пользователей в таблице users. */

CREATE TABLE users (
	name VARCHAR(20),
	birthday_at DATE
);

INSERT INTO users VALUES ('jon', '2010-05-10'), ('hytjh', '1989-06-10'), ('fhgty', '2004-11-10'), ('tyht', '2002-10-17');

SELECT AVG(TIMESTAMPDIFF(YEAR, birthday_at, NOW())) FROM users;

/* 2. Подсчитайте количество дней рождения, которые приходятся на каждый из дней недели. Следует учесть, что необходимы дни недели текущего года, а не года рождения. */


/* 3. (по желанию) Подсчитайте произведение чисел в столбце таблицы. */
CREATE TABLE numbers (
	value INT
);

INSERT INTO numbers VALUES (1), (2), (3), (4); -- вводим значения в таблицу

SELECT EXP(SUM(LN(value))) FROM numbers; -- результат должен быть 24





