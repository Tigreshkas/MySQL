/* Курсовая работа "База данных интернет-магазина".
 * База данных описывает модель книжного интернет-магазина Лабиринт (labirint.ru). Было реализовано хранение данных (файл 1-Основная часть.sql) с описанием книг, пользователей, заказов и т.д. 
 * Созданы различные виды связей между таблицами. Также было предусмотрено наполнение БД (файл 2-Наполнение БД.sql) с помощью сервиса http://filldb.info/ (Некоторые данные были отредактированы для наглядности).
 * Создана ERDiagram для данной БД (файл 3-ERDiagram.mwb). Реализованы представления, процедура, функция, триггер и несколько характерных выборок (файл 4-Заключительная часть.sql). */

DROP DATABASE IF EXISTS labirint;
CREATE DATABASE labirint;
USE labirint;

DROP TABLE IF EXISTS users;
CREATE TABLE users (
	id SERIAL PRIMARY KEY,
	phone BIGINT UNSIGNED UNIQUE,
	email VARCHAR(120) NOT NULL UNIQUE,
	discount_code VARCHAR(50) NULL UNIQUE
);

DROP TABLE IF EXISTS `profiles`;
CREATE TABLE `profiles` (
	user_id SERIAL PRIMARY KEY,
	firstname VARCHAR(100) COMMENT 'Фамилия',
	lastname VARCHAR(100) COMMENT 'Имя',
	gender CHAR(1),
	address_id BIGINT UNSIGNED,
	birthday DATE,
	created_at DATETIME DEFAULT NOW()
);

ALTER TABLE `profiles` ADD CONSTRAINT 
	FOREIGN KEY (user_id) REFERENCES users(id) 
	ON UPDATE CASCADE ON DELETE CASCADE;  -- связь 1-1 (у одного пользователя только один профиль)

DROP TABLE IF EXISTS address;
CREATE TABLE address (
	id SERIAL PRIMARY KEY,
	region TEXT COMMENT 'Область/Край',
	city TEXT COMMENT 'Город',
	street TEXT COMMENT 'Улица',
	house INT COMMENT 'дом',
	flat BIGINT COMMENT 'квартира'
);

ALTER TABLE `profiles` ADD CONSTRAINT 
	FOREIGN KEY (address_id) REFERENCES address(id) 
	ON UPDATE CASCADE ON DELETE CASCADE;

DROP TABLE IF EXISTS books;
CREATE TABLE books (
	id SERIAL PRIMARY KEY,
	title VARCHAR(200) COMMENT 'Название книги',
	author VARCHAR(150) COMMENT 'Автор',
	annotation TEXT COMMENT 'Аннотация',
	price BIGINT COMMENT 'Цена',
	quantity BIGINT COMMENT 'В наличии',
	image_id BIGINT UNSIGNED,
	INDEX books_title_idx(title), -- индекс для быстрого поиска по названию книги
	INDEX books_author_idx(author) -- индекс для быстрого поиска по автору
) COMMENT = 'Товар (книги)';

DROP TABLE IF EXISTS book_description;
CREATE TABLE book_description (
	book_id SERIAL PRIMARY KEY,
	page BIGINT UNSIGNED COMMENT 'Количество страниц',
	cover VARCHAR(150) COMMENT 'Обложка',
	weight BIGINT UNSIGNED COMMENT 'Масса книги',
	size_book TEXT COMMENT 'Размер книги',  -- 220х290, 205х260, 170х240, 170х215, 145х215, 145х200, 130х200, 120х165, 107х177, 107х165, 107х140, 100х140
	publish_house VARCHAR(200) COMMENT 'Издательство',
	year_publish YEAR COMMENT 'Год издания'
) COMMENT 'Описание товара (книги)';

ALTER TABLE book_description ADD CONSTRAINT
	FOREIGN KEY (book_id) REFERENCES books(id) 
	ON UPDATE CASCADE ON DELETE CASCADE;  -- связь 1-1 (у одной книги только одно описание)
	
	
DROP TABLE IF EXISTS orders;
CREATE TABLE orders (
	id SERIAL PRIMARY KEY,
	user_id BIGINT UNSIGNED,
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
	updated_at DATETIME ON UPDATE NOW(),
	status ENUM('not paid','paid','assembled', 'on the way', 'completed') COMMENT 'Статус: оплачен, не оплачен, в сборке, в пути, выполнен', 
	discount BIGINT DEFAULT 0 COMMENT 'Скидка',
	sum_orders BIGINT UNSIGNED NOT NULL,
	FOREIGN KEY (user_id) REFERENCES users(id) 
    ON UPDATE CASCADE ON DELETE CASCADE
) COMMENT 'Заказы';
	
DROP TABLE IF EXISTS orders_products;
CREATE TABLE orders_products (
	order_id SERIAL PRIMARY KEY,
	num_order_id BIGINT UNSIGNED NOT NULL,  -- связь с номером заказа (может быть несколько позиций в одном заказе)
    book_id BIGINT UNSIGNED NOT NULL,
    quantity INT UNSIGNED NOT NULL COMMENT 'Количество заказанных позиций',
    created_at DATETIME DEFAULT NOW(),
    updated_at DATETIME ON UPDATE NOW(),
    -- 1-М связь (у одного пользователя одна корзина с одной или несколькими книгами)
    FOREIGN KEY (num_order_id) REFERENCES orders(id) 
    ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (book_id) REFERENCES books(id) 
    ON UPDATE CASCADE ON DELETE CASCADE
) COMMENT 'Состав заказов';
	
DROP TABLE IF EXISTS images;
CREATE TABLE images (
	image_id SERIAL PRIMARY KEY,
	user_id BIGINT UNSIGNED NOT NULL,
	filename VARCHAR(255),
	FOREIGN KEY (user_id) REFERENCES users(id) ON UPDATE CASCADE ON DELETE NO ACTION  -- (при удалении пользователя все загруженные обложки книг останутся не тронутыми)
) COMMENT 'Обложка книги';

-- связь 1-1 у одной книги только одна обложка
ALTER TABLE books ADD CONSTRAINT 
    FOREIGN KEY (image_id) REFERENCES images(image_id)
    ON UPDATE CASCADE ON DELETE SET NULL;	

DROP TABLE IF EXISTS favourites;
CREATE TABLE favourites(
	id SERIAL PRIMARY KEY,
    user_id BIGINT UNSIGNED NOT NULL,
    books_id BIGINT UNSIGNED NOT NULL,
    created_at DATETIME DEFAULT NOW(),
    FOREIGN KEY (user_id) REFERENCES users(id)
    ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (books_id) REFERENCES books(id)
    ON UPDATE CASCADE ON DELETE CASCADE
) COMMENT 'Избранное';


DROP TABLE IF EXISTS club;
CREATE TABLE club(
	id SERIAL PRIMARY KEY,
	name VARCHAR(150) UNIQUE COMMENT 'Название клуба'  -- Лабиринт. Сейчас, Детский навигатор, Новости Лабиринта, Книжные обзоры, Рецензии читателей, Подборки читателей, Литературные журналы, Литературные премии
) COMMENT 'Клуб';

DROP TABLE IF EXISTS users_club;
CREATE TABLE users_club (
	user_id BIGINT UNSIGNED NOT NULL,
	club_id BIGINT UNSIGNED NOT NULL,
	PRIMARY KEY (user_id, club_id), -- чтобы не было 2 записей о пользователе и клубе
-- связь М-М (многие читатели могут состоять в разных клубах)
    FOREIGN KEY (user_id) REFERENCES users(id)
    ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (club_id) REFERENCES club(id)
    ON UPDATE CASCADE ON DELETE CASCADE
) COMMENT 'Читатели в клубе';
	

