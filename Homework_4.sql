/* 1. Заполнить все таблицы БД vk данными (по 10-100 записей в каждой таблице). */

-- MariaDB dump 10.19  Distrib 10.5.12-MariaDB, for Linux (x86_64)
--
-- Host: mysql.hostinger.ro    Database: u574849695_25
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
  `address_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `country` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Страна проживания',
  `city` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Город проживания',
  `street` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'улица',
  `house` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'дом',
  `flat` bigint(20) DEFAULT NULL COMMENT 'квартира',
  PRIMARY KEY (`address_id`),
  KEY `address_city_idx` (`city`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'Australia','Port Orintown','Huel Mills','138',259),(2,'Mali','Murazikborough','Jake Well','81',104),(3,'Singapore','Weldontown','Lulu Stravenue','140',299),(4,'Jersey','Cruickshankmouth','Mohammad Harbors','42',282),(5,'Mexico','West Jeaniefort','Spencer Squares','199',229),(6,'French Guiana','Elisabethchester','Delta Crest','50',110),(7,'Korea','Lake Kayden','Ashton Land','179',210),(8,'Belgium','Edport','Mosciski Trafficway','84',212),(9,'Yemen','Port Josefinaborough','Myra Manor','99',121),(10,'Fiji','Bartellton','Adrien Lakes','90',46),(11,'Mali','Billieside','Hackett Street','57',171),(12,'Armenia','Garnettville','Roderick Groves','147',275),(13,'Malaysia','Kinghaven','Lola Coves','167',80),(14,'British Virgin Islands','North Enos','Boyle Locks','175',249),(15,'Israel','Lake Giaside','Norval Glen','1',241),(16,'Solomon Islands','Wisozkland','Boyle Mountains','101',272),(17,'Pakistan','Eulahland','Dach Throughway','94',206),(18,'Oman','Port Dorthy','Toby Ramp','86',65),(19,'Burundi','Kirabury','Jordi Cove','101',192),(20,'Switzerland','West Ovaside','Barney Tunnel','126',234),(21,'Mauritius','East Carlimouth','Dejah Ports','123',20),(22,'Gibraltar','Lake Johnnytown','Kutch Estates','124',65),(23,'India','New Kaia','Ashlynn Mission','190',105),(24,'Northern Mariana Islands','South Elinor','Kassulke Brooks','34',157),(25,'Swaziland','West Leone','Mittie Bridge','119',74),(26,'Serbia','Angelinafurt','Adrain Island','141',154),(27,'Liechtenstein','North Emmalee','Kim Islands','2',62),(28,'Germany','West Shaynamouth','Telly Lodge','126',113),(29,'United States Virgin Islands','Metzhaven','Reinger Crossroad','31',99),(30,'Heard Island and McDonald Islands','South Celestinochester','Charles Ports','163',15);
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `games`
--

DROP TABLE IF EXISTS `games`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `games` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_user_id` bigint(20) unsigned DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `boby` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_user_id` (`admin_user_id`),
  KEY `games_name_idx` (`name`),
  CONSTRAINT `games_ibfk_1` FOREIGN KEY (`admin_user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `games`
--

LOCK TABLES `games` WRITE;
/*!40000 ALTER TABLE `games` DISABLE KEYS */;
INSERT INTO `games` VALUES (41,'Kuhn-Leuschke',26,1,'Minus quaerat vel et. Voluptas temporibus sunt dignissimos cum. At quis voluptas ut.',1466046417,'1977-01-21 15:43:11','2004-03-13 08:41:46'),(42,'Nienow Ltd',24,27,'Maxime voluptate dolorem ut repellat et. Voluptas illo assumenda accusantium est quisquam non aut et. Est aut voluptas dolorum facilis est fugiat facere.',727714170,'1996-12-22 11:07:42','1974-07-15 19:33:03'),(43,'Kohler PLC',7,17,'Quidem ut rerum voluptas dolores sint porro similique. Eaque ut sed qui officiis ut ea. Aut consectetur doloribus necessitatibus eum ducimus. Veritatis amet soluta aut quae culpa.',580025679,'2006-05-17 19:44:14','1974-03-23 23:59:19'),(44,'Dibbert, Powlowski and Jerde',15,21,'Voluptas id vel laudantium vel. Et explicabo est odio. Vero sed maxime quo amet.',254399964,'2020-02-24 11:56:29','2018-10-12 22:26:58'),(45,'Auer Group',30,15,'Explicabo voluptas autem sequi est officia explicabo temporibus. Quidem quae nobis deserunt. Consectetur dolor adipisci quia et deleniti.',188935473,'1986-10-20 18:35:26','1998-06-13 11:59:58'),(46,'Rempel LLC',1,20,'Earum vero qui harum est error ea repellat. Omnis excepturi et rerum iure sed esse. Dolorem occaecati mollitia veritatis corrupti. Et deleniti ducimus occaecati distinctio numquam.',840695142,'2017-03-20 20:27:39','1987-01-03 14:40:54'),(47,'Moore-Dooley',3,16,'Est occaecati vitae excepturi odit exercitationem omnis. Atque minus distinctio a nostrum qui. Quibusdam sint animi omnis quas delectus accusantium eveniet hic.',888999070,'1976-10-12 22:25:02','1989-08-04 19:30:43'),(53,'Witting, Koch and Adams',6,28,'Quia eos et asperiores ea quo. Beatae qui dolores numquam id qui nihil. Eius soluta modi aut odio dolor similique qui.',196477102,'1992-08-16 09:33:00','1991-06-27 16:54:43'),(54,'Price-Baumbach',18,27,'Facilis atque eum voluptas unde eligendi. Blanditiis qui earum enim minima velit cupiditate sapiente. Quos velit tempore aut eos eligendi.',947851256,'1975-06-06 12:52:06','1998-07-06 15:50:57'),(55,'Romaguera-Crona',5,21,'Et sint incidunt aut et omnis. Et placeat cum repudiandae. In dolor dicta officiis et.',1640616046,'1989-06-19 12:24:10','2001-03-02 18:18:04'),(56,'Breitenberg PLC',4,1,'Deserunt et ipsa dolorem debitis in. Illum beatae et quia amet nisi consequatur maxime. Reiciendis consequuntur consequatur quod. Aut omnis veniam nesciunt quaerat vel rerum.',2016359573,'1980-08-15 00:54:57','1974-10-27 02:49:25'),(57,'Krajcik, Gibson and Kuvalis',21,28,'Nobis eveniet consequatur est. Deserunt nesciunt praesentium doloribus dolore sit qui ea. Consequatur eos neque tempora dicta consequatur tempore quia.',1697250124,'2007-03-03 23:07:40','2006-05-09 15:00:58'),(58,'Schaefer-Hirthe',27,27,'Porro error sapiente voluptate voluptatibus sint iste eum quis. Dolorum provident repudiandae optio esse sit rem rerum. Qui amet possimus sequi ut.',1432799048,'1979-03-17 08:23:57','1980-09-30 18:42:50'),(61,'Botsford, Kunde and Robel',25,18,'Ut nam iure voluptatibus excepturi repellendus corporis. Quia laudantium architecto et numquam. Rerum repellendus officia sapiente labore omnis.',800101600,'1989-11-17 09:57:04','1981-10-16 02:38:33'),(65,'Lehner Group',8,7,'Qui voluptatum blanditiis repellat corporis. Officiis fuga ut dolore exercitationem enim eligendi reprehenderit. Velit minima velit doloremque rem.',1768361466,'1980-01-06 04:55:52','1989-01-17 18:50:12'),(67,'Littel-Keeling',11,6,'Perferendis et ex distinctio nisi. Ducimus in eaque assumenda necessitatibus aut. Consequatur cupiditate iusto qui et. Tempora illum sunt occaecati autem aliquam incidunt hic repellat.',1040163198,'2005-03-25 20:14:59','1996-09-09 22:32:54'),(70,'Glover-Aufderhar',14,8,'Adipisci iste ut ea quas sit unde possimus. Occaecati eos mollitia dolores nulla et. Voluptates qui officia labore totam earum veniam.',1310298715,'2006-10-30 08:22:29','1985-05-17 14:58:50'),(74,'Osinski PLC',20,29,'Repellendus aut quia unde facilis. Recusandae nulla exercitationem nesciunt aut dolore eaque ut. Perspiciatis maiores consequatur aut dolorem quidem non reprehenderit.',2073060601,'2014-08-13 05:08:08','1977-02-21 14:10:22'),(76,'Watsica Group',13,9,'Deleniti fugit ut enim soluta facere. Modi nihil eum sapiente perspiciatis ad corporis. Quia porro id quia incidunt distinctio facilis est. Quibusdam non aliquid dolorem atque ut.',579355751,'2018-04-23 15:52:06','1971-08-03 11:12:13');
/*!40000 ALTER TABLE `games` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `games_mmo`
--

DROP TABLE IF EXISTS `games_mmo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `games_mmo` (
  `games_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`games_id`,`user_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `games_mmo_ibfk_1` FOREIGN KEY (`games_id`) REFERENCES `games` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `games_mmo_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `games_mmo`
--

LOCK TABLES `games_mmo` WRITE;
/*!40000 ALTER TABLE `games_mmo` DISABLE KEYS */;
INSERT INTO `games_mmo` VALUES (31,2,'Praesentium porro corrupti dolorem porro incidunt. Perspiciatis quia alias et qui aut molestiae ipsa. Dolor ut ab hic. Molestiae eum qui rerum perspiciatis et.'),(33,3,'Dolorem error earum et necessitatibus suscipit porro quam. Aliquam eum est assumenda aliquid non deleniti ipsum.'),(33,18,'Labore illo enim eaque esse. Rem animi officia sit perferendis. Non omnis laborum error tempora reiciendis. Quia facilis accusamus repellat vel repellat odio natus.'),(33,28,'Praesentium et aspernatur explicabo doloremque iusto. Unde laudantium sit autem tempore fuga. Et ipsam consequatur mollitia. Laborum harum et atque qui et alias commodi.'),(33,30,'Error est laboriosam adipisci sed assumenda dolorem. Omnis quia voluptatum sunt dolores rem. Veniam libero nam optio pariatur neque quia.'),(34,4,'Reiciendis commodi quibusdam tenetur at vel in. Explicabo alias quidem ex iure corrupti consequatur. Pariatur autem itaque ipsa corporis.'),(36,13,'Nihil qui quod atque qui. Dolorum et ipsum sint id repudiandae saepe consequatur. Ea et pariatur enim sint nisi autem. Molestiae impedit aperiam omnis quia dolor libero ea.'),(36,29,'Molestias facilis ut vitae tempora. Ea esse incidunt velit architecto. Dicta nostrum consequatur quo non. Quia ratione autem sit odio voluptatem sapiente.'),(37,9,'Consequatur totam id sed pariatur fugit qui. Reiciendis adipisci quia autem iure voluptatem autem aspernatur. Doloremque et maxime aut aliquid corporis assumenda tenetur voluptates. At similique tempore vel a repudiandae quidem animi. Incidunt corrupti adipisci excepturi.'),(38,5,'Eos aut inventore harum dolorem amet asperiores numquam. Quia laudantium ut rem repellendus et. Commodi labore sed et sed. Omnis non modi totam sapiente corrupti architecto. Nam placeat totam nesciunt quis tempore voluptas doloremque eos.'),(38,26,'Reiciendis sapiente aut molestiae doloremque enim. Dolorem vel unde reiciendis quidem temporibus neque et. Dolores fugiat harum nisi quidem.'),(39,6,'Et quia error autem enim fugit. Quisquam debitis quam rerum qui vero quo. Aut harum quia excepturi pariatur. Sapiente blanditiis cum quibusdam minima dolores illo aspernatur.'),(39,24,'Optio earum ratione est dolore. Asperiores quis in saepe atque. Magni expedita aut vitae eaque asperiores quia similique quam. Ab id quasi voluptatem eos provident.'),(39,25,'Veritatis reiciendis asperiores qui explicabo sit harum. Impedit aut reiciendis saepe aut magni laudantium rerum iure. Autem ut est nemo nostrum inventore et. Error explicabo a saepe maiores error soluta.'),(41,27,'Ut repudiandae ratione dolore neque culpa est minus. Animi nisi vitae delectus mollitia tenetur ut et.'),(44,25,'Consectetur laborum libero deserunt dolorum voluptatem. Eligendi quod harum placeat deserunt. Omnis fugit dolorem non.'),(45,12,'Nemo et at cupiditate quibusdam a sunt. Vel iste nostrum provident dolorem. Saepe incidunt et eveniet nulla hic quod ratione. Quia vel quae voluptatem nostrum.'),(45,22,'Sint similique inventore quisquam illo accusamus sint a. Mollitia itaque facere molestiae iure ut. Aperiam minima rerum nulla voluptatem quis quia aut animi.'),(45,28,'Sint rerum et enim aliquid voluptatem aspernatur. Temporibus minus distinctio veritatis earum hic. Numquam ipsam corrupti iure autem.'),(48,11,'Aut blanditiis tempore consequatur quasi veniam. Consequatur aut laboriosam ipsam ea non aut delectus omnis. Libero aut tempora sint et amet pariatur voluptas. Corrupti sit quia commodi magnam laudantium quia.'),(48,16,'Ipsum maiores unde illo molestias sequi amet. Dignissimos ipsam dolores recusandae voluptatem. Et praesentium est dicta commodi molestiae qui error.'),(48,18,'Minus est et ea maxime exercitationem. Inventore deleniti vel consequuntur eos. Corporis fugiat est qui magnam. Inventore aut iure maxime doloremque nobis officiis. Laboriosam aut fugiat in.'),(49,3,'Ducimus tempore aut tenetur iure quasi voluptas. Magni voluptatibus rem sunt ut possimus. Perspiciatis necessitatibus voluptas itaque ut ut occaecati nostrum.'),(49,12,'Laudantium consectetur quia doloribus earum libero. Corporis iusto quidem sit tempora cum et ullam. Quibusdam corrupti ut animi eaque facilis doloribus velit quasi. Tempore quidem eum eos voluptate aut illo exercitationem.'),(49,19,'Aut beatae architecto perferendis officia. Qui dolorem omnis quo ullam qui nesciunt qui. Qui aliquam eum quisquam hic ut.'),(50,4,'Tenetur et dolore dolor consectetur beatae et. Similique corrupti dignissimos iste ipsum et iusto. Aut expedita iusto est voluptatem. Quasi ratione excepturi magnam.'),(56,7,'Labore ut aut eos dolores. Eveniet dolorem earum tempora aspernatur et doloribus corrupti. Et molestiae quas molestiae sint cumque. Sed minima fuga velit recusandae. Aut et aut aliquam eos blanditiis.'),(59,6,'Vitae rerum velit minus architecto saepe deleniti veritatis. Saepe omnis suscipit ut debitis. Qui natus neque tempora consequatur autem eum asperiores. Saepe rerum quibusdam magnam.'),(59,16,'Animi accusantium voluptate sunt explicabo. Et nostrum qui vitae qui. Error velit itaque quisquam sit quisquam exercitationem ipsam. Quisquam et officia doloremque est illum sit.');
/*!40000 ALTER TABLE `games_mmo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `from_user_id` bigint(20) unsigned NOT NULL,
  `to_user_id` bigint(20) unsigned NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `from_user_id` (`from_user_id`),
  KEY `to_user_id` (`to_user_id`),
  CONSTRAINT `messages_ibfk_1` FOREIGN KEY (`from_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `messages_ibfk_2` FOREIGN KEY (`to_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (1,11,28,'Sed perspiciatis et nulla quos. Repellendus commodi et non occaecati ut amet a. Quasi omnis id vel perferendis. Odit sequi et et consequatur.','1982-06-25 02:38:49'),(2,16,22,'Minus molestias perspiciatis cumque beatae et quis. Veniam laudantium unde exercitationem. Illo eaque ut cupiditate dolores.','1990-06-27 01:01:53'),(3,11,5,'Quas molestiae explicabo iure aut cum quae et. Ea et aliquid et qui. Sit tempore laboriosam inventore facilis aut fugiat. Velit culpa facilis aperiam vel dolor illum. Quia perferendis voluptatem et aut.','1972-08-31 18:41:33'),(4,14,24,'Quia est ullam cupiditate officiis dolores. Amet a iure sit maxime eaque maxime. Cupiditate soluta numquam impedit et eveniet debitis unde id. Voluptatem hic ea dolorem rem consequatur consequatur.','2015-03-28 14:02:35'),(5,4,16,'Ut sit praesentium sed voluptas dolorem. Id doloribus modi aut accusamus non. Et quo non maxime autem qui et ipsa. Animi quia voluptas necessitatibus excepturi unde.','2008-11-08 11:25:56'),(6,13,14,'Commodi facere maxime nam rerum ut fugiat. Iusto qui perferendis ratione. Provident voluptate velit modi ut. Quidem quia nisi eum soluta quam officiis. Ullam excepturi tempore id sed quaerat maxime dolorem.','1979-02-11 05:01:24'),(7,7,13,'Aut totam facilis ea aut assumenda deleniti. Corporis voluptatem tempora enim incidunt accusantium sit ut quis.','1973-02-18 15:29:36'),(8,1,12,'Voluptatibus nihil ut aliquam sunt saepe. Autem accusamus voluptas aspernatur reprehenderit qui officiis ut ut. Quam sunt nisi aut ab eaque voluptatibus reprehenderit. Suscipit harum et fuga nulla quas nihil dicta.','2004-01-21 03:24:14'),(9,20,3,'Nihil officia occaecati amet. Quam quidem quidem minima delectus. Praesentium reprehenderit earum ut qui debitis nostrum et.','2003-12-11 06:37:35'),(10,17,10,'Consectetur iure adipisci libero officiis. Id ea qui provident et nulla molestiae. Omnis non nostrum eum odio officia. At quam nulla dolores voluptate. Est et error hic.','2021-04-01 12:31:19'),(11,6,14,'Delectus rerum enim enim sed. Quas nihil voluptas sequi magnam et quia. Illo dolor numquam omnis rerum rem nihil quos voluptatibus. Est labore voluptas culpa id dolores.','1987-06-21 22:24:05'),(12,2,3,'Sequi deserunt consequatur saepe qui molestias dicta libero. Iusto impedit molestiae atque vero qui quasi. Ex voluptas ipsa voluptas provident repellat temporibus sit culpa. Dolores consequuntur commodi iure quo labore labore. Sit aut dolor sit quia.','2009-11-30 09:35:58'),(13,10,10,'Dignissimos corporis dolor necessitatibus rerum modi. Sint et voluptatem ut ullam rerum commodi. Earum beatae nihil rerum cumque et. Laborum alias voluptatum et reiciendis.','1994-01-08 10:39:29'),(14,22,24,'Consequuntur voluptas et ut placeat. Beatae dolores autem sed voluptatem rem. Facilis velit eius rerum pariatur expedita tenetur autem.','1985-06-05 23:20:22'),(15,7,21,'Sed repellendus quisquam et maiores occaecati hic. Aut iusto eaque ut aut. Iste minus similique ut sequi ut quidem exercitationem.','1974-04-17 10:43:29'),(16,23,18,'Odit aut sint quis recusandae nihil. Sed culpa debitis quidem ea culpa. Veritatis sit occaecati dolorem vitae veritatis consequatur. Aut in veniam totam maiores iste sit alias.','2008-05-26 03:13:35'),(17,19,8,'Fugit officia velit repellendus culpa ratione. Dolorem autem excepturi amet quasi quisquam corrupti delectus. Eos quas aut ad quaerat magnam occaecati quae. Quos error sint eum et.','1999-10-16 11:15:51'),(18,10,30,'Iusto aut est accusamus quis minus perferendis debitis. Dolore dolorem et aut veritatis distinctio provident a. Omnis ad et molestiae sed.','1982-01-06 17:13:02'),(19,13,24,'Commodi sit autem corrupti quidem fuga deserunt aut. Nostrum est voluptatem facere. Deleniti veritatis omnis dolorum tempore laudantium. Et enim aut commodi dolores repudiandae.','2015-05-01 12:21:31'),(20,24,17,'Consequatur nesciunt facilis nemo et sit voluptatem. Enim nobis nulla sint porro neque voluptatum. Ex placeat et consequatur dicta molestiae.','1995-08-17 22:26:15'),(21,10,6,'Quo autem libero fugiat sint at. Quae ut aliquid earum sequi voluptatum ipsa eum.','1993-02-28 15:51:44'),(22,1,16,'Autem enim fugit optio veritatis suscipit. Quia et fugit quo dolores voluptas asperiores. Non aut et rerum fuga expedita animi. At fuga ea et repellat hic blanditiis deserunt voluptatem.','1970-11-29 13:29:01'),(23,18,2,'Ut officiis molestiae voluptatem eum. Velit voluptas enim ratione aliquam pariatur ut. Perspiciatis blanditiis excepturi laudantium hic. Omnis quo aut nobis voluptatibus facilis eos.','1970-04-28 07:42:43'),(24,28,8,'Provident rerum ipsa voluptatem fugit dolorem hic. Reprehenderit deserunt tenetur accusamus. Ullam dolores similique qui quos voluptas. Quia a at quidem sed voluptatem tempora iusto.','1978-07-13 18:20:07'),(25,4,15,'Perspiciatis consectetur sed consequatur ipsa sit non quod sunt. Iste non praesentium ullam sit. Est ipsa nam et a amet. Repellendus voluptas deleniti voluptate dolores consequuntur neque.','2013-02-04 10:53:34'),(26,18,10,'Deleniti ut repellat autem. Voluptas eos distinctio voluptatem placeat et reiciendis. Dolorem rem nihil fuga harum cum voluptatem alias. Ab nobis impedit minima rerum non.','1999-07-20 23:03:52'),(27,28,19,'Molestiae aut rerum nihil quibusdam. Rem atque consectetur repellendus atque beatae veniam at. Maiores reiciendis dolorum officia aliquid saepe excepturi. Non voluptas et eos dolorem modi id velit sint. Itaque minus cupiditate aut fugit velit nihil odit assumenda.','2008-10-26 07:46:27'),(28,13,7,'Corrupti odio sed laborum doloribus voluptatibus in. Qui omnis qui sed consectetur repudiandae et recusandae molestiae. Aliquam quam expedita reiciendis rerum non quos nobis.','1999-06-14 17:10:15'),(29,29,5,'Placeat repellendus sint sed in. Rerum at vero asperiores enim occaecati vitae quibusdam. Alias provident nobis nam et. Id laborum assumenda est recusandae eaque cum.','2018-05-03 15:37:48'),(30,1,5,'Et minima sed saepe hic molestiae totam magni. In et sit magni commodi sed tempore. Quis illo repellat qui. Eos assumenda tempore ut et.','2010-11-20 01:47:21');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profiles`
--

DROP TABLE IF EXISTS `profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profiles` (
  `user_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `gender` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_id` bigint(20) unsigned DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`user_id`),
  KEY `address_id` (`address_id`),
  CONSTRAINT `fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `profiles_ibfk_1` FOREIGN KEY (`address_id`) REFERENCES `address` (`address_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profiles`
--

LOCK TABLES `profiles` WRITE;
/*!40000 ALTER TABLE `profiles` DISABLE KEYS */;
INSERT INTO `profiles` VALUES (1,'f',1,'1989-10-24','1983-03-31 05:57:26'),(2,'f',2,'2014-11-19','1995-05-26 23:10:56'),(3,'f',3,'1994-02-06','2001-03-22 17:25:51'),(4,'m',4,'1994-09-18','1978-10-02 15:18:29'),(5,'f',5,'1994-10-14','2005-08-23 01:21:01'),(6,'f',6,'2001-02-21','1986-08-15 02:02:44'),(7,'f',7,'2015-01-28','1996-02-23 21:39:39'),(8,'f',8,'1982-07-29','1996-09-08 00:52:19'),(9,'m',9,'1985-12-29','1991-12-08 20:45:00'),(10,'m',10,'2019-06-29','2004-12-24 22:28:46'),(11,'f',11,'1991-02-08','2020-03-30 01:07:12'),(12,'m',12,'1977-10-01','1986-05-02 07:09:44'),(13,'m',13,'1973-03-15','1971-07-13 20:36:29'),(14,'m',14,'1978-04-08','1986-07-28 03:14:21'),(15,'m',15,'1997-08-11','2003-03-23 00:51:13'),(16,'f',16,'2009-05-31','2001-06-18 18:28:01'),(17,'m',17,'1998-06-19','1989-06-22 23:13:43'),(18,'m',18,'1971-12-12','2022-01-06 06:44:48'),(19,'m',19,'2005-09-12','2011-12-22 12:50:07'),(20,'m',20,'2001-01-22','2002-10-04 15:09:35'),(21,'f',21,'1974-09-25','1991-02-02 05:18:01'),(22,'f',22,'2016-05-25','2008-01-29 04:57:13'),(23,'m',23,'2004-11-20','2019-10-15 16:12:19'),(24,'f',24,'2002-04-28','2003-12-03 18:08:30'),(25,'f',25,'2008-10-30','1981-09-14 20:07:55'),(26,'f',26,'2006-02-28','1988-07-21 16:04:47'),(27,'f',27,'1978-01-09','1974-10-20 06:55:56'),(28,'f',28,'2001-08-12','2013-01-06 08:49:51'),(29,'f',29,'2004-12-27','2015-06-02 23:26:43'),(30,'f',30,'2017-08-23','1978-06-16 03:18:31');
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
  `firstname` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Имя',
  `lastname` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Фамилия',
  `email` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password_hash` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` bigint(20) unsigned DEFAULT NULL,
  `is_deleted` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`),
  KEY `users_firstname_lastname_idx` (`firstname`,`lastname`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Craig','Walter','morissette.ottis@example.org','72ce6b764c6c5584c04eb60c65378e8d21d53624',89417851047,'\0'),(2,'Destinee','Huel','llangosh@example.com','f0a05b4fe4e7a051ef9bec866c07969dd882569d',89493814416,'\0'),(3,'Esperanza','Pfeffer','schultz.darlene@example.net','36445b451f81a0b927cc51ad69213b2700f47221',89284902673,'\0'),(4,'Hobart','Swaniawski','kub.crystal@example.org','67df18d8b182736572f6e271e0fb59b4a67925ff',89898786106,'\0'),(5,'Rhett','Hane','bschultz@example.net','a332d4b3fcb09d4f1cc0d9e2a0d7e63002c9c5ef',89660276631,'\0'),(6,'Cora','Maggio','johnathan12@example.com','f14c7d086d5acf782befb383db830d71d17bc1a7',89964754610,'\0'),(7,'Darron','Franecki','xhyatt@example.net','347adfcf27e5c24b8a569791f661b11b785bf31a',89287574586,'\0'),(8,'Eliseo','Torphy','paucek.efrain@example.net','e1587b12b893b493a689a8d3be76ac22e2e9cf59',89631647126,'\0'),(9,'Emmett','Paucek','corbin65@example.org','2b821a849c24c0c9536c42d2c76c6ba048d5908a',89217238064,'\0'),(10,'Ahmad','Stamm','johan50@example.com','d627faf04415a354b238e698b1c8832b9d6af5d5',89678193907,'\0'),(11,'Gabe','Kulas','johathan.ebert@example.org','ef225083b0eafa9af2fcc2172407b0345b60ad7e',89372869861,'\0'),(12,'Adolph','Carter','iheaney@example.net','723842cdf4003c684a158bc6991226a5f89ebd5e',89675818552,'\0'),(13,'Concepcion','Toy','shakira71@example.net','49e8b3218600ba38cd68b5a3c2a93f77ac38a384',89546811794,'\0'),(14,'Cyril','Baumbach','dicki.melody@example.net','59226744bc533376c81e5d7b27efb4be0c5f787b',89073609655,'\0'),(15,'Cathryn','Kassulke','silas.hackett@example.com','b40a6c68517bd6789837b9ff6d0bfda432159850',89011439244,'\0'),(16,'Emelia','Paucek','mcorkery@example.net','bed15fad671bde0978ee3522552017b24ed03fe0',89803167487,'\0'),(17,'Estel','Kiehn','spinka.fiona@example.net','5ff7e088d0aa17d778cd756b586f132fde5e7ffa',89683127264,'\0'),(18,'Tremaine','Kuhlman','ctowne@example.org','6b7326d4b67161a2a337c6bd13504c929a132d29',89818570465,'\0'),(19,'Milton','Koepp','murray.arvel@example.net','d19e62ed0e306165bf747f2c4bab62157d861197',89543151185,'\0'),(20,'Elinore','Ondricka','austin.effertz@example.net','c7d2ddf7df6bdd955aea05020355a4b276313eef',89623138962,'\0'),(21,'Lila','Purdy','randerson@example.com','b37c615ca9f1f52711ee937b1fcdd2c438c4a790',89470443381,'\0'),(22,'Gavin','Rodriguez','bernice.littel@example.net','bb9a2e80d3c724465ddfeaf7eca29c2c08d16344',89843525231,'\0'),(23,'Ansel','Hahn','boyer.myrtle@example.org','68576e3cc79f0afa0045cf51814ed9e6bcdd3a30',89608743247,'\0'),(24,'Aric','Ebert','burley.runolfsson@example.org','04b1b91f53e370a7a549408a8d0da35f8e8f92da',89256190535,'\0'),(25,'David','Kuphal','lupe45@example.org','17f10f728b7e0199f510dd3659708515d0dd9ab5',89231717520,'\0'),(26,'David','Zboncak','zoie.nikolaus@example.org','c7a4a73b50eb2d870394fb1c7179fa660e09016b',89204312118,'\0'),(27,'Heidi','Hilll','dahlia.tromp@example.com','39800ee5c1e110c6cf7cc98baa7d37aa18441775',89951647102,'\0'),(28,'Simeon','Fadel','precious.hammes@example.com','e6a33498368e38815590b75e64707d82b330d4f4',89644643129,'\0'),(29,'Mable','Kirlin','kunze.lucas@example.org','daf19a9c8c88d766b15df0259606a2df53c67a09',89822740863,'\0'),(30,'Jevon','Pouros','bruen.emmy@example.com','ed5649b615685a5ca6184adfbd21135f8e5710ad',89517046152,'\0');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-06  5:02:01



/* 2. Написать скрипт, возвращающий список имен (только firstname) пользователей без повторений в алфавитном порядке. */

SELECT DISTINCT firstname FROM users ORDER BY firstname;


/* 3. Первые пять пользователей пометить как удаленные. */

UPDATE users
SET
	is_deleted = 1
WHERE
	is_deleted = 0 OR is_deleted = 1 -- не важно, помечены были какие-либо пользователи как удаленные или нет, всё равно первые 5 будут помечены удаленными. В данном случае можно и не писать это условие.
LIMIT 5;


/* 4. Написать скрипт, удаляющий сообщения «из будущего» (дата больше сегодняшней). */

UPDATE messages 
SET 
	created_at = '2022-05-13'
WHERE
	id = 3;
	
DELETE FROM messages WHERE created_at > NOW();


/* 5. Написать название темы курсового проекта.*/

Интернет-магазин Лабиринт https://www.labirint.ru/ 