/* Написать cкрипт, добавляющий в БД vk, которую создали на 3 вебинаре, 3-4 новые таблицы (с перечнем полей, указанием индексов и внешних ключей).
(по желанию: организовать все связи 1-1, 1-М, М-М) */

DROP DATABASE IF EXISTS vk;
CREATE DATABASE vk;
USE vk;

DROP TABLE IF EXISTS users;
CREATE TABLE users (
	id SERIAL PRIMARY KEY,
	firstname VARCHAR(100) COMMENT 'Имя',
	lastname VARCHAR(100) COMMENT 'Фамилия',
	
	email VARCHAR(120) UNIQUE,
	password_hash VARCHAR(100),
	phone BIGINT UNSIGNED UNIQUE,
	is_deleted BIT(1),
	-- добавляем индекс для быстрого поиска по имени-фамилии
	INDEX users_firstname_lastname_idx(firstname, lastname)
);

DROP TABLE IF EXISTS `profiles`;
CREATE TABLE `profiles` (
	user_id  SERIAL PRIMARY KEY,
	gender CHAR(1),
	address_id BIGINT UNSIGNED,
	birthday DATE,
	created_at DATETIME DEFAULT NOW()
);
-- создаем связь 1-1 между таблицей профилей и таблицей пользователей
ALTER TABLE `profiles` ADD CONSTRAINT fk_user_id
	FOREIGN KEY (user_id) REFERENCES users(id) 
	ON UPDATE CASCADE ON DELETE CASCADE;

-- создаем таблицу сообщений со связями 1-М
DROP TABLE IF EXISTS messages;
CREATE TABLE messages (
	id SERIAL PRIMARY KEY,
	from_user_id BIGINT UNSIGNED NOT NULL,
    to_user_id BIGINT UNSIGNED NOT NULL,
    body TEXT,
    created_at DATETIME DEFAULT NOW(), 
    FOREIGN KEY (from_user_id) REFERENCES users(id) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (to_user_id) REFERENCES users(id) ON UPDATE CASCADE ON DELETE CASCADE
);

-- Создаем таблицу с адресом проживания со связью 1-1 (у 1 профиля может быть только 1 адрес проживания)
DROP TABLE IF EXISTS address;
CREATE TABLE address (
	address_id SERIAL PRIMARY KEY,
	country VARCHAR(100) COMMENT 'Страна проживания',
	city VARCHAR(100) COMMENT 'Город проживания',
	street VARCHAR(150) COMMENT 'улица',
	house VARCHAR(150) COMMENT 'дом',
	flat BIGINT COMMENT 'квартира',
	-- добавляем индекс для быстрого поиска по городу
	INDEX address_city_idx(city)
);

-- Создаем связь 1-1 (у 1 профиля - 1 адрес)
ALTER TABLE `profiles` ADD CONSTRAINT
    FOREIGN KEY (address_id) REFERENCES address(address_id)
    ON UPDATE CASCADE ON DELETE CASCADE;

-- Создаем таблицу игр
DROP TABLE IF EXISTS games;
CREATE TABLE games (
	id SERIAL PRIMARY KEY,
	name VARCHAR(150),
	admin_user_id BIGINT UNSIGNED UNIQUE,
	user_id BIGINT,
	boby text,
    `size` INT,
	created_at DATETIME DEFAULT NOW(),
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    -- индекс для поиска по названию игры
    INDEX games_name_idx(name),
    -- связь 1-М (у одного админа может быть несколько игр, при этом у одной игры только 1 админ)???
    FOREIGN KEY (admin_user_id) REFERENCES users(id) ON UPDATE CASCADE ON DELETE SET NULL
);

-- создаем таблицу многопользовательской игры со связью М-М (у нескольких игр может быть несколько пользователей)
DROP TABLE IF EXISTS games_mmo;
CREATE TABLE games_mmo (
    games_id BIGINT UNSIGNED,
    user_id BIGINT UNSIGNED NOT NULL,
  	body text,
    PRIMARY KEY (games_id, user_id), -- чтобы не было повторяющихся записей (у одного пользователя не может быть несколько версий одной и той же игры)
    FOREIGN KEY (games_id) REFERENCES games(id) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (user_id) REFERENCES users(id) ON UPDATE CASCADE ON DELETE CASCADE
);
