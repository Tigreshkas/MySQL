-- MariaDB dump 10.19  Distrib 10.5.12-MariaDB, for Linux (x86_64)
--
-- Host: mysql.hostinger.ro    Database: u574849695_20
-- ------------------------------------------------------
-- Server version	10.5.12-MariaDB-cll-lve

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `region` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Область/Край',
  `city` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Город',
  `street` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Улица',
  `house` int(11) DEFAULT NULL COMMENT 'дом',
  `flat` bigint(20) DEFAULT NULL COMMENT 'квартира',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'Washington','Dorcaston','Sawayn Squares',64,79),(2,'Alabama','New Danny','Dustin Club',88,121),(3,'District of Columbia','South Leonor','Jaskolski Corner',3,3),
	(4,'NorthCarolina','Danielfort','Moore Inlet',84,45),(5,'Utah','East Colbyland','Gerhold Grove',59,129),(6,'NewJersey','Gregoriofort','Malvina Center',67,73),
	(7,'NorthCarolina','South Clovis','Herminio Highway',86,128),(8,'Kansas','Lake Fosterville','Green Ports',84,66),(9,'Maryland','Hirtheville','Wehner Fall',18,118),
	(10,'NewYork','Seamusview','Jermain Ramp',18,23),(11,'Idaho','Stephaniachester','Marc Shore',33,61),(12,'Maryland','Lake Alvaton','Stuart Lodge',73,132),
	(13,'SouthDakota','East Dejon','Gerhold Pass',8,60),(14,'NorthCarolina','New Nedraside','Aida Path',44,24),(15,'Nevada','Kshlerinmouth','Grimes Falls',47,101),
	(16,'Arkansas','New Niafurt','Ankunding Flat',100,113),(17,'NewHampshire','Garrickberg','Nicole Village',38,41),(18,'Ohio','Dickensshire','Hauck Tunnel',39,73),
	(19,'Utah','New Margaretta','Rogahn Junction',96,66),(20,'Kentucky','Adolphusview','Bernadette Center',56,65),(21,'Delaware','North Domenicbury','Mallory Trafficway',89,7),
	(22,'Texas','Lake Ima','Farrell Curve',40,16),(23,'NewMexico','Lake Eldonberg','Santino Harbor',75,22),(24,'Missouri','West Salvatorestad','Gust Terrace',86,40),
	(25,'Mississippi','Johnathonside','Shawna Brooks',35,102),(26,'Wisconsin','New Kevenberg','Lenore Gateway',81,13),(27,'Oklahoma','East Magnusville','Moises Gateway',12,48),
	(28,'Colorado','Waelchiborough','Mayer Walks',21,117),(29,'Colorado','East Alessia','Alexa Forge',80,121),(30,'Arizona','North Sheastad','Kaylie Springs',54,131);
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book_description`
--

DROP TABLE IF EXISTS `book_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `book_description` (
  `book_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `page` bigint(20) unsigned DEFAULT NULL COMMENT 'Количество страниц',
  `cover` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Обложка',
  `weight` bigint(20) unsigned DEFAULT NULL COMMENT 'Масса книги',
  `size_book` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Размер книги',
  `publish_house` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Издательство',
  `year_publish` year(4) DEFAULT NULL COMMENT 'Год издания',
  PRIMARY KEY (`book_id`),
  CONSTRAINT `book_description_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Описание товара (книги)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book_description`
--

LOCK TABLES `book_description` WRITE;
/*!40000 ALTER TABLE `book_description` DISABLE KEYS */;
INSERT INTO `book_description` VALUES (1,60,'hard',195,' 170х215','Bednar, Stamm and Kuhic',2004),
	(2,81,'hard',242,' 107х140','Turner-O`Hara',2011),
	(3,329,'soft',195,'220х290','Schoen, Prohaska and Heller',1989),
	(4,159,'soft',187,'220х290','Howe, Schaefer and Schmeler',2011),
	(5,223,'soft',59,' 130х200','Heathcote-Hudson',1972),
	(6,228,'soft',286,' 145х215','Morar-Reilly',2009),
	(7,234,'hard',59,' 170х215','Streich-Welch',1974),
	(8,52,'soft',133,' 145х200','Hegmann, Johnston and Emmerich',2020),
	(9,114,'hard',332,'220х290','Marquardt, Christiansen and Jerde',1995),
	(10,217,'soft',279,' 145х200','Jenkins, Huel and Schaefer',1989),
	(11,351,'hard',184,' 170х240','Bailey Ltd',2006),
	(12,274,'soft',261,' 170х240','Zieme PLC',2020),
	(13,466,'hard',177,' 100х140','Treutel-Hintz',1989),
	(14,347,'soft',350,' 170х215','Huel, Reichert and Barrows',2002),
	(15,84,'soft',187,' 205х260','Shields, Crist and Morar',1971),
	(16,70,'hard',154,' 130х200','Dare, Hammes and Corkery',2006),
	(17,200,'hard',331,' 145х200','Ebert-Schumm',2020),
	(18,419,'soft',40,' 130х200','Kshlerin-Jacobi',2009),
	(19,465,'soft',252,' 100х140','Legros-Keebler',2019),
	(20,138,'soft',310,' 170х240','Rippin LLC',2004),
	(21,418,'soft',57,' 120х165','Walter, Schmitt and Murazik',1980),
	(22,7,'hard',106,' 120х165','Barton and Sons',1992),
	(23,145,'hard',49,' 145х200','White Group',1989),
	(24,399,'soft',204,' 170х215','Nolan, Sporer and Muller',2011),
	(25,46,'hard',29,' 170х215','Kassulke-Connelly',1996),
	(26,154,'hard',71,' 107х177','Ortiz Inc',1996),
	(27,497,'soft',15,' 170х215','Treutel, Brown and Leuschke',1984),
	(28,500,'soft',246,' 107х140','Abernathy-Upton',2004),
	(29,485,'soft',273,' 107х177','Goldner-Block',1975),
	(30,355,'soft',182,' 120х165','Kutch, Dietrich and Breitenberg',1977),
	(31,354,'hard',142,' 170х240','Bayer Inc',2015),
	(32,461,'hard',239,' 107х177','Monahan, King and Barrows',2016),
	(33,255,'hard',320,' 130х200','Barrows, Cummerata and Kemmer',2010),
	(34,63,'hard',17,' 170х240','Klocko, Kohler and Windler',1984),
	(35,244,'hard',67,' 107х177','Gleichner, Funk and Frami',1979),
	(36,472,'soft',335,'220х290','Wisoky PLC',2015),
	(37,205,'hard',220,' 100х140','Dare, Turcotte and Cole',1975),
	(38,221,'soft',328,' 205х260','Ferry-Mann',1989),
	(39,165,'soft',63,' 205х260','Prohaska, McCullough and Reichert',2006),
	(40,355,'soft',223,' 205х260','Thiel-Frami',1979),
	(41,82,'hard',293,' 130х200','Torphy-Brekke',1974),
	(42,278,'hard',163,' 107х165','Daniel, Hartmann and Ruecker',1990),
	(43,288,'hard',164,' 107х165','Hoeger Group',1998),
	(44,461,'hard',23,' 170х240','Bartell, Stroman and Legros',2016),
	(45,376,'soft',275,' 100х140','Batz-Roob',1970),
	(46,98,'hard',218,' 107х177','Crooks Inc',1978),
	(47,421,'hard',129,' 170х215','Hagenes, Glover and Jenkins',1986),
	(48,194,'hard',297,' 130х200','Schimmel, Nicolas and Kulas',1973),
	(49,132,'hard',331,' 107х140','Stehr-Kris',1976),
	(50,494,'hard',258,' 100х140','McLaughlin-Fadel',1973);
/*!40000 ALTER TABLE `book_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `books` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Название книги',
  `author` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Автор',
  `annotation` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Аннотация',
  `price` bigint(20) DEFAULT NULL COMMENT 'Цена',
  `quantity` BIGINT COMMENT 'В наличии',
  `image_id` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `books_title_idx` (`title`),
  KEY `books_author_idx` (`author`),
  KEY `image_id` (`image_id`),
  CONSTRAINT `books_ibfk_1` FOREIGN KEY (`image_id`) REFERENCES `images` (`image_id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Товар (книги)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES (1,'Гамлет','Уильям Шекспир','Dicta fugit ut et consequatur enim doloremque minus qui. Odio esse in qui.',883,14,1),
	(2,'Король Лир','Уильям Шекспир','Et aut nemo ipsam voluptatum voluptatibus architecto. Iusto voluptate est facilis. ',534,35,2),
	(3,'Отелло','Уильям Шекспир','Aut error est officiis quos itaque sed asperiores. Nemo aut necessitatibus in at dignissimos enim. Nobis doloribus et porro sunt aliquam quis dignissimos.',729,26,3),
	(4,'Сонеты','Уильям Шекспир','Nihil doloremque vitae quos sed est aut totam. Praesentium fugit molestiae incidunt ut. Quia perspiciatis qui quo exercitationem porro.',291,21,4),
	(5,'Unde animi quae in occaecati excepturi omnis iure.','Lynn Fadel','Velit numquam rerum optio nulla. Ducimus et et ab accusamus a. Ut saepe ullam nesciunt.',101,35,5),
	(6,'Perferendis et eos quia expedita autem.','Ima Goodwin II','Consequatur quo vitae rerum enim eius nihil commodi. ',813,42,6),
	(7,'Nisi maiores error sed accusamus expedita natus sunt.','Mrs. June Miller','Omnis omnis animi enim in velit debitis doloremque. ',75,27,7),
	(8,'Velit eum velit iure vitae error ut facilis.','Duane Stamm','Fugit molestiae commodi reprehenderit vel sit sint. Voluptates velit unde sunt fugit sed a. ',502,30,8),
	(9,'Voluptate minima ea neque aliquid porro.','Bailey Zieme','Magni expedita ipsum natus rerum. Pariatur sequi ab excepturi est quo. ',760,17,9),
	(10,'Libero illum et labore unde est.','Dr. Coty Parker','Impedit ut doloremque aut quis eveniet. Ut quam quam aliquam sequi earum aut. ',709,18,10),
	(11,'Accusamus voluptatem maiores illum aliquid.','Tremaine Boehm','Voluptatem minus eligendi nemo architecto. Quas est autem consectetur repellendus consequatur quaerat. ',657,41,11),
	(12,'Sed harum consequatur natus qui libero eum quia placeat.','Thea Bogisich','Aliquam reiciendis et repudiandae eius doloremque deserunt provident. Minima vero quod enim et voluptates. ',149,13,12),
	(13,'Repellendus quos sit quo repellat eum accusamus.','Colleen Feil','Officia unde ipsum aut repudiandae sunt dignissimos quae. Exercitationem neque quaerat ut voluptatibus non.',328,22,13),
	(14,'Modi dolorum maxime maiores qui veniam tempore asperiores.','Mr. Gaylord Bradtke I','Soluta asperiores alias quam aut. Reiciendis optio impedit officia. Ipsam cum aperiam quidem rerum consectetur maxime. ',191,56,14),
	(15,'Iste debitis temporibus facilis aut est impedit.','Prof. Virgil Johns','Rem sunt non molestiae. Officia nihil debitis nesciunt aut. Unde labore numquam tempora architecto ea sunt.',671,34,15),
	(16,'Consequatur dolore fugiat tempore impedit et.','Miss Camylle Dibbert','Ea ipsam modi dicta iste facilis recusandae. Eos in provident non quis libero in qui perspiciatis.',533,22,16),
	(17,'Magnam labore nihil repudiandae voluptas magni est.','Prof. Deanna Will MD','Et est consequatur fugit ut cum repellat est. Pariatur neque ad expedita maxime nam itaque. ',815,48,17),
	(18,'Autem perspiciatis et aut occaecati.','Dr. Earl Metz','Velit molestiae tenetur nobis quidem. Quia quisquam quia sed provident officiis perferendis est autem.',137,13,18),
	(19,'Modi pariatur sed dignissimos necessitatibus id ut recusandae.','Prof. Clifford Schowalter','Ducimus voluptatem repellendus explicabo repellat at.',293,34,19),
	(20,'Sed consequatur at sit accusamus velit numquam.','Mrs. Belle Mueller IV','Explicabo quaerat enim beatae excepturi vitae. Et maxime assumenda et nobis autem deserunt sed. ',764,51,20),
	(21,'Quidem dolorem pariatur ex aliquam dolore itaque tempora.','Mrs. Shirley Zieme','Ullam veritatis eveniet doloribus distinctio autem vel cum. Consequuntur aut culpa temporibus officiis voluptas. ',332,22,21),
	(22,'Dolor praesentium sit est qui reprehenderit.','Ola D`Amore','Ipsum ipsa facilis minus quod consequatur quod sit et. Rerum expedita voluptates atque et et magnam dolor. Repellendus mollitia esse et consequatur sit. Voluptatem qui tempore delectus et dolores.',650,17,22),
	(23,'Inventore veniam quam animi magni.','Ashlynn Nienow','Sed quas possimus recusandae esse. Est atque fuga consequatur tempora ex ut tempora. Nobis ea quasi eum possimus autem. Quidem recusandae voluptas ab dolor.',354,86,23),
	(24,'Quis nihil dolor dignissimos temporibus consectetur dolores.','Summer Gerlach','Odit quas quas quos est sint et cupiditate. Exercitationem accusantium aut rerum qui.',631,11,24),
	(25,'Enim qui quod ut eum atque.','Miss Katharina Bins MD','Non molestiae aperiam aut quis nesciunt. Placeat aliquid vel corrupti repellendus. Dolor qui sit error incidunt non.',787,17,25),
	(26,'Asperiores recusandae pariatur ut.','Tianna Wolff','Laudantium tempore earum nisi nobis. Cumque in est consequatur totam qui ipsum reprehenderit. Autem aspernatur in dolores laborum nihil numquam. Aut vel voluptatum et totam minus aliquam quas.',844,16,26),
	(27,'Enim ipsum sint vitae omnis dolores.','Tom Morar','Quia ut facilis eligendi soluta qui. Pariatur natus illum cupiditate rerum voluptatem commodi reprehenderit aut. Quae tenetur qui voluptas fugit vel quas eius.',126,18,27),
	(28,'Aliquam ut aperiam explicabo itaque.','Ms. Albina Ullrich','Veniam aut libero at. Voluptatibus vero eius est eos quibusdam accusamus. Dolores cumque est in enim. Officiis ut odio ullam nihil id.',360,32,28),
	(29,'Qui praesentium odit explicabo debitis nesciunt debitis dolore doloremque.','Sophie Weissnat','Voluptas vel recusandae repudiandae consequuntur. Et vel consequatur repudiandae quas.',645,16,29),
	(30,'Enim itaque voluptas laboriosam impedit et quo.','Dr. Daphnee Boyle Sr.','Ipsam minus veritatis ea. Voluptatibus at quae et quidem. Iste quidem corrupti hic eaque ea ullam sit corrupti. Vel perspiciatis ipsa ullam magni laboriosam et.',173,24,30),
	(31,'Qui enim dolorem veritatis id consequatur molestiae.','Bartholome Yundt','Ut itaque et odio a itaque. Incidunt ducimus laborum fugit quis sed occaecati et. Magni dolorem vero et quibusdam quia. Est pariatur id et soluta et voluptatem.',881,35,31),
	(32,'Harum quo quam illum esse consequatur eum.','Jo Lehner','Consectetur nisi sint unde vero tempora. Autem quia et ad rerum non est omnis distinctio. Dolorem sit quasi rerum fugiat eos.',271,18,32),
	(33,'Qui non ipsa veritatis ut.','Prof. Nella Lind','Minima eveniet non sit perferendis. Incidunt laudantium consequatur et debitis. Deleniti sunt est repellat.',906,18,33),
	(34,'Sapiente soluta ducimus molestiae et saepe dicta.','Jewel Kihn','Ipsum ad modi maiores debitis nostrum unde ipsum quia. Fugiat ut est possimus eos minus qui quia. Non quo eos nostrum occaecati maxime quis architecto.',134,21,34),
	(35,'Esse doloremque ex consectetur iste consequatur.','Marco Grant','Sit ut alias esse velit. Deleniti dicta sunt enim et impedit. Nihil porro delectus voluptatem laudantium ut dicta. Odit magni ea aliquam aut dolor. Ut dolorum omnis dolorum eos non.',374,36,35),
	(36,'Quod recusandae delectus voluptatem aperiam rem voluptatem sit.','Martin Gleason','Maiores consequatur neque ad alias cupiditate inventore quia. Quod tenetur dolorem rem laborum rerum dolore laboriosam. Amet sapiente eum voluptatem laboriosam. Aut quam velit esse ut minima laborum.',810,14,36),
	(37,'Expedita molestiae est est est et.','Bernie Klein DDS','Explicabo dolore voluptas ea itaque facilis. Ut aut veritatis aliquid eos aut impedit. Earum nihil quod praesentium laudantium nulla. Nisi qui a tempore eius.',43,37,37),
	(38,'Odio dolores aut autem sint et fugiat.','Daniela Boehm V','Quas et illo soluta. Minima quisquam aliquid fuga aut neque. Quo aut et rerum aperiam esse accusamus. Nostrum provident iste labore.',581,21,38),
	(39,'Iste totam quae qui ducimus et unde.','Christy Cartwright III','Voluptatem mollitia alias eum. Explicabo quis excepturi dolore eum corporis exercitationem non neque. Tenetur ducimus eos omnis accusantium id maiores.',81,65,39),
	(40,'Omnis molestias cumque esse magni porro.','Miss Haylee McLaughlin','Aliquam dignissimos fuga optio et commodi voluptatum provident. Neque nihil aut et odit iure recusandae. Eos neque quo aspernatur deserunt vero.',15,16,40),
	(41,'Animi porro labore sint.','Laverna Cole','Culpa voluptates vero aut dolor tempora est aliquid. Quidem rerum enim corporis autem qui. Ut soluta sequi enim ab voluptatum eos. Temporibus culpa ea dolores ut dolorum necessitatibus.',937,29,41),
	(42,'Suscipit sed et reprehenderit quia praesentium sed suscipit corrupti.','Nicola Langosh DDS','Qui tempore quia voluptatem aliquid iure architecto nesciunt. At commodi qui nostrum est aperiam sit. Sit non beatae qui ex.',947,21,42),
	(43,'Fugiat est et quas aut qui.','Peyton Muller','Ea minima est error occaecati. Adipisci perferendis praesentium aspernatur. Officia possimus est odio reprehenderit. Similique perspiciatis voluptas dolore dolores quis ipsa cupiditate sunt.',355,14,43),
	(44,'At ut nisi delectus odio.','Prof. Lorenz Herzog','Reprehenderit et porro voluptatum voluptas et. Sed ex sit ex corporis aliquid voluptas repellat.',846,22,44),
	(45,'Consequatur excepturi eligendi quia deserunt quia atque consectetur.','Reid Robel Sr.','Dolorem exercitationem non est sint odit dolorum. Impedit dolorem culpa quae et aut. Id aut voluptatem officiis eveniet ratione consectetur architecto id.',334,35,45),
	(46,'Quasi et nostrum laboriosam non.','Marcelina Turcotte DDS','Minima accusamus saepe fugit ut rem. Optio nihil ex magnam sed.',937,29,46),
	(47,'Laborum omnis omnis aut repudiandae magnam.','Saul Oberbrunner','Corrupti perspiciatis tempore sunt praesentium deserunt blanditiis saepe. Enim modi repudiandae sint enim omnis. Quasi quod placeat corrupti deleniti ut. Quae et dolor velit hic omnis porro.',522,40,47),
	(48,'Repellendus sed deleniti et excepturi autem.','Gregoria Graham','Est veritatis qui molestias et consectetur. Excepturi laudantium dolor provident aspernatur quaerat sint totam. Suscipit et quidem quibusdam ipsam.',727,32,48),
	(49,'Non quo est maxime.','Angie Kuhic I','Adipisci aut amet culpa et error voluptatum vel. Non necessitatibus minus suscipit voluptas iusto aut ipsam facilis.',325,26,49),
	(50,'Non eius numquam error optio exercitationem.','Danny Predovic','Eos et reiciendis error quos sint quos. Tempora cum impedit ipsam temporibus. Incidunt amet aliquam sed quisquam et.',671,74,50);
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `club`
--

DROP TABLE IF EXISTS `club`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `club` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Название клуба',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Клуб';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `club`
--

LOCK TABLES `club` WRITE;
/*!40000 ALTER TABLE `club` DISABLE KEYS */;
INSERT INTO `club` VALUES (1,'Книжные обзоры'),
	(2,'Литературные премии'),
	(3,'Лабиринт. Сейчас'),
	(4,'Детский навигатор'),
	(5,'Подборки читателей'),
	(6,'Литературные журналы'),
	(7,'Рецензии читателей'),
	(8,'Новости Лабиринта');
/*!40000 ALTER TABLE `club` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `favourites`
--

DROP TABLE IF EXISTS `favourites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `favourites` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `books_id` bigint(20) unsigned NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `books_id` (`books_id`),
  CONSTRAINT `favourites_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `favourites_ibfk_2` FOREIGN KEY (`books_id`) REFERENCES `books` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Избранное';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favourites`
--

LOCK TABLES `favourites` WRITE;
/*!40000 ALTER TABLE `favourites` DISABLE KEYS */;
INSERT INTO `favourites` VALUES (1,25,23,'1977-12-20 15:33:46'),(2,10,50,'1984-02-05 17:52:54'),(3,10,30,'2004-05-16 06:08:36'),(4,17,30,'1974-11-22 18:38:07'),
	(5,6,26,'2002-07-13 09:17:09'),(6,14,38,'2006-05-06 01:48:13'),(7,21,28,'1977-04-08 12:29:44'),(8,22,25,'1977-01-18 09:01:52'),
	(9,21,1,'1986-09-02 17:37:09'),(10,5,15,'2008-04-08 06:21:39'),(11,25,4,'2014-02-17 05:30:39'),(12,4,38,'2003-09-11 00:20:25'),
	(13,13,22,'1997-03-15 06:11:25'),(14,26,4,'2016-07-17 02:38:25'),(15,9,36,'1982-06-11 22:23:53'),(16,10,6,'1995-12-04 02:00:17'),
	(17,5,31,'1995-05-16 03:33:02'),(18,3,24,'1978-01-28 07:08:28'),(19,7,32,'1991-05-23 05:19:51'),(20,2,20,'1989-08-18 19:50:15'),
	(21,5,25,'1999-04-13 07:26:10'),(22,5,42,'2020-12-15 12:08:07'),(23,2,43,'2018-02-20 07:16:25'),(24,10,37,'1989-01-17 12:15:01'),
	(25,27,25,'2012-05-03 23:35:39'),(26,1,35,'2001-09-26 00:13:34'),(27,17,6,'2020-10-25 08:11:29'),(28,14,49,'1979-10-06 07:44:39'),
	(29,17,16,'1996-07-28 00:21:21'),(30,1,42,'1975-07-23 08:43:44'),(31,1,17,'1978-08-17 00:28:56'),(32,28,8,'1988-10-25 01:07:21'),
	(33,29,1,'1990-10-20 17:08:22'),(34,19,8,'2002-11-19 22:12:42'),(35,20,34,'1981-08-12 06:08:42'),(36,17,41,'1988-05-02 21:05:04'),
	(37,6,34,'2008-11-03 03:55:52'),(38,19,11,'1978-05-10 05:24:23'),(39,16,48,'1992-06-17 00:59:17'),(40,29,21,'2006-02-06 16:50:21'),
	(41,13,48,'2015-03-15 17:21:46'),(42,3,50,'1988-03-27 16:37:30'),(43,2,27,'2010-06-03 10:20:46'),(44,29,31,'1997-08-25 04:35:09'),
	(45,26,49,'1970-02-25 18:13:34'),(46,13,43,'1988-08-11 05:59:21'),(47,10,18,'2021-04-30 09:33:51'),(48,30,13,'2013-01-21 21:56:50'),
	(49,12,30,'2019-07-07 14:11:41'),(50,13,2,'1985-08-16 14:56:44'),(51,9,47,'2014-08-12 20:43:39'),(52,25,22,'1971-01-14 20:25:27'),
	(53,19,23,'1994-06-05 06:13:27'),(54,20,7,'1989-07-27 05:01:53'),(55,13,30,'1996-02-12 08:53:17'),(56,17,42,'2019-12-23 15:22:11'),
	(57,16,33,'2011-07-20 03:54:18'),(58,25,30,'2008-06-20 02:16:00'),(59,6,38,'1989-08-26 20:41:24'),(60,6,2,'1981-08-29 12:57:16'),
	(61,22,32,'2020-08-16 21:48:50'),(62,27,2,'1985-04-22 22:43:42'),(63,30,43,'2018-09-27 04:32:54'),(64,9,18,'2017-02-05 02:12:22'),
	(65,14,35,'2015-02-06 05:43:27'),(66,12,37,'2002-04-11 16:26:31'),(67,19,11,'1981-10-24 02:45:43'),(68,5,12,'1986-12-22 00:04:36'),
	(69,20,41,'1977-04-26 14:14:15'),(70,12,4,'2021-03-08 20:33:15');
/*!40000 ALTER TABLE `favourites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `images` (
  `image_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`image_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `images_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Обложка книги';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `images`
--

LOCK TABLES `images` WRITE;
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
INSERT INTO `images` VALUES (1,25,'http://lorempixel.com/640/480/'),(2,19,'http://lorempixel.com/640/480/'),(3,15,'http://lorempixel.com/640/480/'),
	(4,22,'http://lorempixel.com/640/480/'),(5,19,'http://lorempixel.com/640/480/'),(6,14,'http://lorempixel.com/640/480/'),
	(7,11,'http://lorempixel.com/640/480/'),(8,17,'http://lorempixel.com/640/480/'),(9,11,'http://lorempixel.com/640/480/'),
	(10,9,'http://lorempixel.com/640/480/'),(11,20,'http://lorempixel.com/640/480/'),(12,12,'http://lorempixel.com/640/480/'),
	(13,21,'http://lorempixel.com/640/480/'),(14,7,'http://lorempixel.com/640/480/'),(15,4,'http://lorempixel.com/640/480/'),
	(16,3,'http://lorempixel.com/640/480/'),(17,1,'http://lorempixel.com/640/480/'),(18,6,'http://lorempixel.com/640/480/'),
	(19,22,'http://lorempixel.com/640/480/'),(20,23,'http://lorempixel.com/640/480/'),(21,22,'http://lorempixel.com/640/480/'),
	(22,12,'http://lorempixel.com/640/480/'),(23,15,'http://lorempixel.com/640/480/'),(24,22,'http://lorempixel.com/640/480/'),
	(25,29,'http://lorempixel.com/640/480/'),(26,6,'http://lorempixel.com/640/480/'),(27,15,'http://lorempixel.com/640/480/'),
	(28,6,'http://lorempixel.com/640/480/'),(29,12,'http://lorempixel.com/640/480/'),(30,22,'http://lorempixel.com/640/480/'),
	(31,19,'http://lorempixel.com/640/480/'),(32,6,'http://lorempixel.com/640/480/'),(33,10,'http://lorempixel.com/640/480/'),
	(34,3,'http://lorempixel.com/640/480/'),(35,28,'http://lorempixel.com/640/480/'),(36,29,'http://lorempixel.com/640/480/'),
	(37,16,'http://lorempixel.com/640/480/'),(38,8,'http://lorempixel.com/640/480/'),(39,16,'http://lorempixel.com/640/480/'),
	(40,27,'http://lorempixel.com/640/480/'),(41,16,'http://lorempixel.com/640/480/'),(42,5,'http://lorempixel.com/640/480/'),
	(43,9,'http://lorempixel.com/640/480/'),(44,7,'http://lorempixel.com/640/480/'),(45,12,'http://lorempixel.com/640/480/'),
	(46,12,'http://lorempixel.com/640/480/'),(47,9,'http://lorempixel.com/640/480/'),(48,13,'http://lorempixel.com/640/480/'),
	(49,17,'http://lorempixel.com/640/480/'),(50,1,'http://lorempixel.com/640/480/');
/*!40000 ALTER TABLE `images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `status` ENUM('not paid','paid','assembled', 'on the way', 'completed') COMMENT 'Статус: оплачен, не оплачен, в сборке, в пути, выполнен', 
  `discount` BIGINT DEFAULT 0 COMMENT 'Скидка',
  `sum_orders` BIGINT UNSIGNED,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Заказы';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,16,'1982-08-22 11:35:00','1974-03-08 12:09:04','assembled',0,0),
	(2,27,'1997-12-22 01:11:44','1997-01-05 16:05:19','on the way',0,0),
	(3,12,'2006-10-18 20:32:13','1998-09-15 19:13:27','completed',0,0),
	(4,20,'1978-02-12 15:16:05','2015-04-02 07:11:47','completed',0,0),
	(5,15,'2010-05-31 14:44:45','1992-01-29 12:08:18','assembled',0,0),
	(6,23,'2014-01-03 05:48:23','1972-11-12 23:37:13','assembled',0,0),
	(7,13,'1987-04-09 17:09:13','1970-04-11 12:11:31','assembled',0,0),
	(8,21,'1995-04-16 09:46:29','2018-03-01 11:31:32','on the way',0,0),
	(9,9,'2006-01-16 14:58:46','1976-01-17 18:12:12','assembled',0,0),
	(10,13,'1983-06-27 01:54:59','2000-03-05 12:39:27','assembled',0,0),
	(11,16,'1990-06-06 05:51:33','2007-01-25 04:10:21','assembled',0,0),
	(12,14,'1993-07-24 02:05:40','1977-04-05 04:00:22','on the way',0,0),
	(13,3,'1970-05-10 13:30:37','1975-01-07 00:16:30','on the way',0,0),
	(14,18,'2001-06-28 18:18:32','2002-07-07 15:04:15','completed',0,0),
	(15,1,'1976-12-20 03:28:45','1994-05-13 12:27:57','completed',0,0),
	(16,25,'2002-11-22 22:20:15','1991-10-27 12:55:34','completed',0,0),
	(17,23,'1979-04-13 16:18:09','1977-10-05 09:30:18','completed',0,0),
	(18,13,'1980-05-30 00:50:11','1981-06-16 14:36:20','on the way',0,0),
	(19,10,'2012-10-09 16:24:44','1995-06-11 03:18:04','assembled',0,0),
	(20,25,'2005-01-31 03:30:23','1983-07-28 02:25:54','assembled',0,0),
	(21,12,'2020-09-11 00:50:21','1983-05-25 07:06:52','assembled',0,0),
	(22,22,'2005-12-13 04:52:26','1978-10-25 18:10:45','completed',0,0),
	(23,17,'2008-04-13 18:02:32','2008-08-10 01:10:34','completed',0,0),
	(24,16,'1976-07-06 20:17:03','2002-04-05 19:07:14','completed',0,0),
	(25,3,'1984-01-29 16:07:21','1979-05-07 09:26:44','completed',0,0),
	(26,25,'2016-04-28 05:08:11','1994-06-01 21:02:11','assembled',0,0),
	(27,13,'2009-06-30 09:38:03','1980-01-17 11:57:01','completed',0,0),
	(28,6,'2017-08-31 07:18:27','1976-05-17 20:40:21','completed',0,0),
	(29,6,'1977-10-06 00:36:11','1983-02-25 22:54:54','completed',0,0),
	(30,21,'2008-09-24 09:54:54','1994-10-30 06:04:47','assembled',0,0);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders_products`
--

DROP TABLE IF EXISTS `orders_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders_products` (
  `order_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `num_order_id` bigint(20) unsigned NOT NULL,
  `book_id` bigint(20) unsigned NOT NULL,
  `quantity` int(10) unsigned NOT NULL COMMENT 'Количество заказанных позиций',
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  PRIMARY KEY (`order_id`),
  KEY `num_order_id` (`num_order_id`),
  KEY `book_id` (`book_id`),
  CONSTRAINT `orders_products_ibfk_1` FOREIGN KEY (`num_order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `orders_products_ibfk_2` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Состав заказов';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders_products`
--

LOCK TABLES `orders_products` WRITE;
/*!40000 ALTER TABLE `orders_products` DISABLE KEYS */;
INSERT INTO `orders_products` VALUES (1,13,45,9,'2013-03-20 04:35:01','2018-02-23 05:34:46'),(2,1,7,10,'2002-12-18 08:28:39','1987-09-20 09:29:04'),
	(3,18,8,4,'1983-04-22 14:59:59','1981-04-21 02:11:42'),(4,4,20,10,'1981-05-25 04:58:45','1983-04-27 21:33:31'),
	(5,5,14,10,'2003-04-04 00:07:13','2016-01-12 03:37:31'),(6,12,7,6,'1990-08-20 14:45:16','2015-12-07 07:11:10'),
	(7,9,45,3,'1977-04-11 22:19:51','2019-01-25 19:00:40'),(8,8,48,3,'2014-06-01 19:46:05','2015-12-05 15:58:16'),
	(9,19,6,5,'1992-04-09 03:15:44','1996-05-03 01:14:43'),(10,5,49,1,'2013-04-27 08:02:50','1996-11-18 05:22:34'),
	(11,1,37,7,'1999-10-03 21:46:44','1986-04-20 06:00:57'),(12,14,30,10,'1984-11-07 21:34:15','1972-11-12 03:20:37'),
	(13,9,17,3,'2006-12-03 21:46:53','2009-09-20 09:31:47'),(14,26,27,3,'1980-04-08 05:11:18','1985-07-16 11:35:25'),
	(15,12,24,10,'2019-05-12 06:16:53','2008-11-07 12:00:59'),(16,11,37,9,'1984-02-29 22:27:26','1980-08-23 15:06:38'),
	(17,11,19,4,'1980-11-24 01:51:35','2021-08-26 19:56:55'),(18,27,47,4,'2021-02-19 06:36:22','2008-02-22 08:20:25'),
	(19,17,1,6,'1983-08-17 08:02:22','1973-09-17 11:42:26'),(20,10,34,3,'2003-08-15 14:19:06','1981-09-27 04:29:15'),
	(21,9,36,1,'1981-12-08 01:22:36','2013-08-03 15:07:12'),(22,25,28,5,'1991-08-03 06:59:48','1978-12-28 10:32:05'),
	(23,19,3,8,'1985-12-18 11:05:49','1987-04-02 09:58:19'),(24,15,11,10,'1971-10-25 22:11:12','1994-11-14 12:23:56'),
	(25,5,33,10,'1976-10-02 15:53:42','2019-09-14 22:57:21'),(26,6,9,7,'1971-11-28 00:00:10','1988-07-19 13:20:37'),
	(27,12,31,1,'2011-10-27 11:20:51','2006-10-04 21:35:59'),(28,24,33,7,'1990-11-01 13:36:51','1972-10-07 19:58:47'),
	(29,29,31,6,'2017-10-09 18:34:01','1989-05-14 09:59:34'),(30,6,17,6,'1999-08-28 13:44:49','2020-11-18 05:38:47'),
	(31,2,28,2,'1975-01-09 15:09:47','2021-07-07 20:55:23'),(32,2,21,8,'1974-05-27 14:19:31','1987-04-24 12:10:28'),
	(33,28,47,10,'1975-03-23 12:16:13','2007-10-03 02:52:21'),(34,11,23,7,'1990-02-23 04:52:39','2001-09-15 09:18:43'),
	(35,28,34,8,'2012-01-20 00:48:33','1979-02-22 08:00:08'),(36,4,11,5,'1996-04-22 08:05:04','1994-11-04 05:09:05'),
	(37,12,47,4,'2021-04-13 01:11:02','2007-05-05 05:44:16'),(38,23,50,4,'1993-04-14 14:57:49','2020-11-18 18:42:05'),
	(39,30,13,2,'2006-11-04 06:21:35','1981-10-12 14:54:40'),(40,6,8,5,'1998-02-06 05:05:57','1984-09-01 21:13:12'),
	(41,27,19,1,'1976-06-12 04:04:29','2009-06-09 17:31:16'),(42,10,14,8,'2010-12-31 06:53:41','2010-01-14 17:57:47'),
	(43,30,5,9,'2017-03-09 15:23:43','2003-11-19 04:27:27'),(44,28,48,2,'1973-05-09 13:02:23','2019-04-29 21:19:48'),
	(45,21,6,3,'2003-04-17 16:56:03','1982-12-30 01:09:50'),(46,8,38,5,'1994-04-29 04:28:11','2007-08-04 15:15:55'),
	(47,20,16,9,'2004-07-17 07:44:00','1973-11-23 02:57:51'),(48,6,29,6,'2012-05-02 15:46:07','1970-04-26 04:01:14'),
	(49,8,27,4,'1978-04-02 17:46:38','1979-11-02 03:29:52'),(50,3,9,4,'1978-04-17 10:25:20','1986-04-24 01:16:26'),
	(51,6,8,2,'2018-10-17 11:43:22','2012-07-31 09:42:45'),(52,12,29,8,'2016-11-15 23:39:19','1984-04-02 11:04:52'),
	(53,3,7,8,'2022-02-18 16:40:41','1994-06-23 01:45:12'),(54,17,5,6,'2001-11-24 02:22:31','1994-08-29 06:09:31'),
	(55,12,38,6,'1982-08-11 16:11:57','1975-09-18 05:37:08'),(56,7,15,8,'1971-07-13 22:03:15','1974-09-07 09:45:16'),
	(57,4,28,10,'1994-08-12 06:29:10','2008-06-25 05:18:39'),(58,17,6,5,'1988-09-28 08:31:46','1974-09-30 23:46:44'),
	(59,20,25,6,'2021-09-07 18:20:56','1987-09-11 02:19:21'),(60,2,17,9,'2017-05-25 12:48:43','1995-03-25 14:02:21'),
	(61,19,17,10,'1974-04-15 06:19:10','2019-10-01 15:31:55'),(62,3,13,6,'2003-12-30 01:37:53','1995-04-22 21:12:24'),
	(63,20,14,4,'1980-08-05 03:55:28','1973-03-09 08:36:11'),(64,25,45,8,'1991-07-25 01:32:00','1988-12-12 13:55:22'),
	(65,24,44,3,'1974-07-03 17:22:26','2011-02-10 12:05:20'),(66,2,49,2,'1993-08-31 13:49:18','2003-02-14 17:33:41'),
	(67,1,23,4,'2013-11-05 10:11:24','2000-07-17 09:03:38'),(68,17,6,3,'2016-12-02 09:07:15','1984-01-19 03:09:56'),
	(69,18,5,5,'1992-11-19 01:39:23','2002-02-17 01:53:44'),(70,7,49,10,'1995-12-10 04:46:01','1996-08-01 15:41:49'),
	(71,26,22,4,'2017-10-10 12:37:51','2012-09-29 08:14:07'),(72,8,49,8,'1989-10-22 12:48:10','2019-06-18 15:35:08'),
	(73,30,41,8,'2011-10-16 16:24:14','2015-02-05 14:01:25'),(74,3,32,6,'2016-12-15 16:22:42','1979-05-12 07:08:31'),
	(75,9,8,4,'1989-08-06 14:57:13','1999-11-15 22:53:31'),(76,29,45,4,'2011-03-17 11:36:24','1988-10-24 06:50:39'),
	(77,15,3,4,'1985-11-14 10:15:32','1975-04-19 03:20:05'),(78,5,6,6,'1989-10-12 17:53:44','1985-06-09 00:25:45'),
	(79,10,50,3,'2017-05-31 02:23:11','2000-08-19 16:02:43'),(80,30,5,1,'2004-06-16 08:48:40','2010-10-28 02:48:42'),
	(81,26,3,10,'2015-03-31 13:56:25','1971-03-11 02:23:46'),(82,3,44,10,'2016-07-06 05:48:26','2016-02-22 17:28:08'),
	(83,15,31,5,'2002-03-02 03:30:49','2014-05-10 04:31:28'),(84,30,5,2,'2006-06-13 05:22:55','1975-05-04 12:13:28'),
	(85,22,10,5,'2006-06-05 10:30:14','1992-11-01 23:00:45'),(86,2,28,9,'1997-12-10 06:31:27','2003-06-27 11:18:44'),
	(87,19,16,7,'1977-05-27 10:24:50','1973-12-17 13:06:20'),(88,16,31,5,'2019-03-26 12:09:13','2013-02-07 19:13:49'),
	(89,4,31,6,'1975-02-08 02:46:42','1995-01-23 23:07:47'),(90,7,21,3,'1994-06-09 23:08:41','2005-10-20 14:44:59'),
	(91,23,10,8,'2001-02-14 05:56:30','2011-11-01 04:44:05'),(92,10,11,3,'1981-03-27 08:59:32','2017-09-12 20:32:03'),
	(93,7,1,2,'1979-09-23 19:08:38','1996-06-11 10:37:21'),(94,10,27,8,'1984-08-10 06:47:09','1975-03-11 11:30:47'),
	(95,14,16,2,'1979-03-22 19:02:34','2003-08-01 17:20:51'),(96,19,15,8,'1995-06-19 12:44:27','1991-02-03 03:17:18'),
	(97,11,35,10,'2007-11-27 05:44:57','2001-06-02 12:53:09'),(98,5,43,1,'2006-06-22 13:09:24','1990-04-04 23:43:36'),
	(99,10,8,3,'1995-12-06 19:32:53','1977-07-03 07:08:29'),(100,29,1,3,'1986-09-07 15:44:02','2015-07-18 10:07:28');
/*!40000 ALTER TABLE `orders_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profiles`
--

DROP TABLE IF EXISTS `profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profiles` (
  `user_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Фамилия',
  `lastname` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Имя',
  `gender` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_id` bigint(20) unsigned DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`user_id`),
  KEY `address_id` (`address_id`),
  CONSTRAINT `profiles_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `profiles_ibfk_2` FOREIGN KEY (`address_id`) REFERENCES `address` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profiles`
--

LOCK TABLES `profiles` WRITE;
/*!40000 ALTER TABLE `profiles` DISABLE KEYS */;
INSERT INTO `profiles` VALUES (1,'Bryon','Bode','m',1,'2014-01-19','1986-12-04 12:49:44'),(2,'Idell','Heidenreich','f',2,'1983-12-29','1982-01-17 16:00:57'),
	(3,'Alfredo','Jacobson','m',3,'1996-10-10','2017-07-04 05:14:57'),(4,'Hilma','Friesen','m',4,'2016-06-08','2013-10-20 04:19:54'),
	(5,'Jaydon','Rohan','m',5,'2001-04-15','2001-01-09 15:21:21'),(6,'Leone','Bosco','m',6,'1981-10-19','2011-02-27 03:23:08'),
	(7,'Elvera','Kilback','f',7,'1996-06-26','1971-05-10 08:29:27'),(8,'Nelda','Dare','f',8,'1979-01-12','2010-06-09 06:42:52'),
	(9,'Estell','Torphy','m',9,'1972-02-19','1977-02-10 07:43:29'),(10,'Jalen','Stoltenberg','f',10,'2003-04-14','2012-08-04 02:10:00'),
	(11,'Clotilde','Parker','m',11,'1995-02-27','1997-03-15 12:13:30'),(12,'Marian','Hahn','m',12,'2000-10-20','1976-12-22 14:44:44'),
	(13,'Rosalinda','Huels','m',13,'1993-10-12','2015-06-30 08:04:51'),(14,'Abner','Gerhold','m',14,'2009-05-23','1989-02-06 15:40:17'),
	(15,'Brigitte','Douglas','f',15,'1979-02-19','1986-11-02 05:17:59'),(16,'Nakia','Emard','f',16,'2013-12-19','2018-08-06 21:32:47'),
	(17,'Rubie','Sawayn','m',17,'1994-10-05','2006-03-18 08:39:45'),(18,'Vicky','Johnston','m',18,'1994-05-24','1976-11-10 03:21:00'),
	(19,'Fannie','Wolf','f',19,'1979-10-08','2008-09-17 19:40:34'),(20,'Sandrine','Friesen','f',20,'2008-04-17','1990-08-20 06:58:03'),
	(21,'Kattie','McCullough','m',21,'1995-12-15','2011-11-03 21:13:04'),(22,'Jana','Larkin','m',22,'1977-07-08','2021-07-16 19:22:48'),
	(23,'Sabryna','Lemke','m',23,'2006-08-18','1996-10-08 01:40:16'),(24,'Kelley','Medhurst','m',24,'2016-09-14','1986-01-13 01:48:52'),
	(25,'Fernando','Cole','m',25,'1978-12-08','1994-11-28 06:15:34'),(26,'Una','Rowe','m',26,'1984-06-13','1973-08-24 07:18:42'),
	(27,'Leta','Bartell','m',27,'1996-08-27','1992-04-17 05:37:42'),(28,'Verla','Wolff','m',28,'1973-11-25','1991-07-16 06:10:55'),
	(29,'Jaren','Upton','f',29,'1974-11-14','2006-12-24 07:01:41'),(30,'Heaven','Legros','m',30,'1996-01-26','2005-08-21 02:49:46');
/*!40000 ALTER TABLE `profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `phone` bigint(20) unsigned DEFAULT NULL,
  `email` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount_code` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`),
  UNIQUE KEY `discount_code` (`discount_code`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,89655866591,'veum.samara@example.net', NULL),(2,89574662588,'mohammed91@example.net','gfhh'),
	(3,89806377466,'everette37@example.com', NULL),(4,89979170627,'brooks32@example.org','lwer'),(5,89016962598,'baumbach.hillard@example.com','labj'),
	(6,89733891559,'tillman.glover@example.com','ztrv'),(7,89268360968,'llueilwitz@example.net','iphi'),(8,89991563023,'ada24@example.com','zmno'),
	(9,89514923297,'dayna.halvorson@example.org','xlbb'),(10,89043537847,'scot13@example.com','pmap'),(11,89584670856,'qhermann@example.net', NULL),
	(12,89356172642,'cameron64@example.com','yhcd'),(13,89668209053,'giovani.rolfson@example.org','garg'),(14,89898744345,'rowland98@example.org','rprj'),
	(15,89833897636,'watsica.dahlia@example.net','nmvm'),(16,89613273767,'santino86@example.com', NULL),(17,89752185571,'willard.maggio@example.net','utgg'),
	(18,89896892431,'achristiansen@example.com','norj'),(19,89810440249,'eliseo.yost@example.org','pgcu'),(20,89577614945,'clemmie28@example.net','whms'),
	(21,89444708953,'chadd64@example.com','pmlf'),(22,89242043765,'stephania.feest@example.net','eaau'),(23,89677323170,'moore.hope@example.org','uzva'),
	(24,89778880015,'linda94@example.com','tkyv'),(25,89289676157,'qerdman@example.com', NULL),(26,89582940748,'katarina08@example.org','hyun'),
	(27,89328194169,'qmurray@example.org', NULL),(28,89095838387,'conn.darren@example.com','fett'),(29,89095410099,'paige.kemmer@example.org','txrr'),(30,89520100243,'ubahringer@example.com','rpdv');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_club`
--

DROP TABLE IF EXISTS `users_club`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_club` (
  `user_id` bigint(20) unsigned NOT NULL,
  `club_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`club_id`),
  KEY `club_id` (`club_id`),
  CONSTRAINT `users_club_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `users_club_ibfk_2` FOREIGN KEY (`club_id`) REFERENCES `club` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Читатели в клубе';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_club`
--

LOCK TABLES `users_club` WRITE;
/*!40000 ALTER TABLE `users_club` DISABLE KEYS */;
INSERT INTO `users_club` VALUES (1,3),(4,8),(5,8),(6,1),(6,3),(9,5),(9,6),(11,1),(12,6),(13,5),(15,6),(16,2),(18,2),(18,8),(19,1),(19,7),(20,7),(25,1),(26,2),(26,4),(28,3),(28,7),(30,7);
/*!40000 ALTER TABLE `users_club` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-29  5:55:28
