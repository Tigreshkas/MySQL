/* 1. Составьте список пользователей users, которые осуществили хотя бы один заказ orders в интернет магазине. */
USE shop;

TRUNCATE TABLE orders;
INSERT INTO orders VALUES (1,1,'2015-03-14 07:47:02','1983-04-13 14:02:08'),
	(2,2,'1974-11-29 04:58:35','2005-07-16 07:43:24'),
	(4,4,'1990-08-14 00:18:19','1984-01-27 21:58:06'),
	(5,5,'1979-06-30 15:49:56','1974-06-06 13:36:46'),
	(6,6,'2005-04-11 19:52:35','1980-07-15 01:19:51'),
	(7,1,'1987-12-04 05:39:56','1991-08-05 01:54:03'),
	(8,2,'1995-05-24 22:48:13','2008-06-16 22:10:25'),
	(10,4,'1977-05-24 02:16:30','1983-12-26 17:10:29');

SELECT name FROM users INNER JOIN orders ON orders.user_id=users.id GROUP BY name; 


/* 2. Выведите список товаров products и разделов catalogs, который соответствует товару. */

SELECT products.name AS product_name, catalogs.name AS catalog_name FROM products 
	RIGHT JOIN catalogs ON (products.catalog_id = catalogs.id);




/* 3. (по желанию) Пусть имеется таблица рейсов flights (id, from, to) и таблица городов cities (label, name). 
 * Поля from, to и label содержат английские названия городов, поле name — русское. 
 * Выведите список рейсов flights с русскими названиями городов.*/


DROP DATABASE IF EXISTS flights;
CREATE DATABASE flights;
USE flights;

DROP TABLE IF EXISTS flights;
CREATE TABLE flights (
	id SERIAL PRIMARY KEY,
	`from` VARCHAR(100),
	`to` VARCHAR(100)
);

DROP TABLE IF EXISTS cities;
CREATE TABLE cities (
	label VARCHAR(100),
	name VARCHAR(100)
);

TRUNCATE TABLE flights;
INSERT INTO flights VALUES (1,'Moscow','Paris'),
	(2,'Paris','London'),
	(3,'London','Rim');

TRUNCATE TABLE cities;
INSERT INTO cities VALUES ('Moscow','Москва'),
	('Paris', 'Париж'),
	('London', 'Лондон'),
	('Rim', 'Рим');


SELECT id, 
	(SELECT name FROM cities WHERE flights.`from`=cities.label) AS `from`, 
	(SELECT name FROM cities WHERE flights.`to`=cities.label) AS `to` 
	FROM flights;

