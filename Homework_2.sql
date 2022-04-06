/* Задание 1
Установите СУБД MySQL. Создайте в домашней директории файл .my.cnf, задав в нем логин и пароль, который указывался при установке. */

Использую Windows, поэтому был создан файл my.cnf и помещен в папку C:\Program Files\MySQL\MySQL Server 8.0. 
Файл работает, mySQL запускается без запроса кода (из-под обычной командной строки, а из-под MySQL command line всё равно требует код).
Единственное, в чем не разобралась: как для винды сделать чтобы файл исполнялся только под моим пользователем. 


/* Задание 2
Создайте базу данных example, разместите в ней таблицу users, состоящую из двух столбцов, числового id и строкового name.
*/
-- Выполняется через командную строку, предварительно запустив mysql
-- посмотреть все существующие базы
SHOW DATABASES;
-- удалить базу, если она есть
DROP DATABASE IF EXISTS example;
-- создать базу
CREATE DATABASE example; 
-- выбрать базу
USE example;
-- создать таблицу users с колонкой 1 (исп. псевдотип SERIAL) и колонкой 2 (строковый тип, хранящий 255 знаков)
CREATE TABLE users (id SERIAL PRIMARY KEY, name VARCHAR(255) COMMENT 'строковое имя');
-- показать все столбцы таблицы users
DESCRIBE users;
-- выход
exit
-- Также был испробован вариант с созданием файла example.sql с написанием кода там через DBeaver. Тоже получилось. 


/* Задание 3
Создайте дамп базы данных example из предыдущего задания, разверните содержимое дампа в новую базу данных sample.
*/
-- создаю дамп таблицы в файл
mysqldump example > example.sql
-- выводит весь файл example.sql (не знаю как в винде вывести только 10 строк, ниже скопировала только 10 строк для наглядности)
type example.sql
-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: example
-- ------------------------------------------------------
-- Server version       8.0.28

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
mysql
-- создаю новую базу
CREATE DATABASE sample;
exit
-- разворачиваю данные из example.sql в таблицу sample 
mysql sample < example.sql
mysql
SHOW DATABASES;
+--------------------+
| Database           |
+--------------------+
| example            |
| information_schema |
| mysql              |
| performance_schema |
| sakila             |
| sample             |
| sys                |
| world              |
+--------------------+
USE sample;
-- показать таблицы из БД sample
SHOW TABLES;
+------------------+
| Tables_in_sample |
+------------------+
| users            |
+------------------+
1 row in set (0.00 sec)
-- И соответственно, всё отображается через DBeaver


/* Задание 4
 * 
 * */
-- делаю дамп первых 100 строк таблицы help_keyword базы mysql:
mysqldump --where="1 limit 100" mysql help_keyword > task_4.sql
-- разворачиваем базу из файла:
mysql sample < task_4.sql
ERROR 3723 (HY000) at line 25: The table 'help_keyword' may not be created in the reserved tablespace 'mysql'.
-- и выводится вот эта ошибка, хотя при дампе данных из обычной БД (не mysql) всё нормально разворачивается.
