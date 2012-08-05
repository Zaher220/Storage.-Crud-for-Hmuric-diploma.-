-- MySQL dump 10.13  Distrib 5.5.24, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: skl
-- ------------------------------------------------------
-- Server version	5.5.24-0ubuntu0.12.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `buy_lists`
--

DROP TABLE IF EXISTS `buy_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `buy_lists` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `amount` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `buy_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buy_lists`
--

LOCK TABLES `buy_lists` WRITE;
/*!40000 ALTER TABLE `buy_lists` DISABLE KEYS */;
INSERT INTO `buy_lists` VALUES (1,NULL,1,1,'2012-05-16 05:45:11','2012-05-16 05:45:11'),(2,30,1,2,'2012-05-17 01:00:47','2012-05-17 01:00:47'),(3,300,1,2,'2012-05-17 01:00:47','2012-05-17 01:00:47'),(4,200,1,2,'2012-05-17 01:00:47','2012-05-17 01:00:47'),(5,22,NULL,2,'2012-05-17 01:00:47','2012-05-17 01:00:47'),(6,15,3,4,'2012-05-18 04:22:10','2012-05-18 04:22:10'),(22,2,3,4,'2012-05-18 04:39:42','2012-05-18 04:39:42'),(23,3,12,6,'2012-05-21 15:06:47','2012-05-21 15:06:47'),(24,45,11,6,'2012-05-21 15:07:19','2012-05-21 15:07:19'),(25,25,18,7,'2012-05-23 01:21:22','2012-05-23 01:21:22'),(26,210,14,7,'2012-05-23 01:21:39','2012-05-23 01:21:39'),(27,3,11,7,'2012-05-23 01:22:02','2012-05-23 01:22:02'),(28,120,17,7,'2012-05-23 03:10:25','2012-05-23 03:10:25'),(29,30,18,6,'2012-05-23 03:31:10','2012-05-23 03:31:10'),(30,20,18,8,'2012-05-23 03:58:59','2012-05-23 03:58:59'),(31,45,18,9,'2012-05-23 04:01:03','2012-05-23 04:01:03'),(32,55,15,9,'2012-05-23 04:01:03','2012-05-23 04:01:03'),(33,7,11,9,'2012-05-23 04:01:03','2012-05-23 04:01:03'),(34,9,16,9,'2012-05-23 04:01:25','2012-05-23 04:01:25');
/*!40000 ALTER TABLE `buy_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `buyer_types`
--

DROP TABLE IF EXISTS `buyer_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `buyer_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `buyer_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buyer_types`
--

LOCK TABLES `buyer_types` WRITE;
/*!40000 ALTER TABLE `buyer_types` DISABLE KEYS */;
INSERT INTO `buyer_types` VALUES (1,'Физическое лицо','2012-05-18 05:05:53','2012-05-18 05:05:53'),(2,'Юридическое лицо','2012-05-18 05:06:03','2012-05-18 05:06:03');
/*!40000 ALTER TABLE `buyer_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `buyers`
--

DROP TABLE IF EXISTS `buyers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `buyers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_face` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `adress` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tel` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `buyer_type_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buyers`
--

LOCK TABLES `buyers` WRITE;
/*!40000 ALTER TABLE `buyers` DISABLE KEYS */;
INSERT INTO `buyers` VALUES (2,'ООО Мегатэк','Арутюнян Самвел Иванович','Владивосток Малая Речка 274','891455665555','zakupki@megatek.ru',2,'2012-05-18 05:51:23','2012-05-18 05:51:23'),(3,'ЗАО ОптТорг','Вендор Константин Павлович','Переяславский переулок 9 ','89140506266','k.vendor@gmail.com',2,'2012-05-20 13:49:43','2012-05-20 13:49:43'),(4,'ИП Мельниченко','Мальниченко Валентина Адольфовна','Серышево Трудовая 20','89632515555','melnichenko@melnichenko.name',2,'2012-05-20 13:52:14','2012-05-20 13:52:14');
/*!40000 ALTER TABLE `buyers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `buys`
--

DROP TABLE IF EXISTS `buys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `buys` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `buyer_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buys`
--

LOCK TABLES `buys` WRITE;
/*!40000 ALTER TABLE `buys` DISABLE KEYS */;
INSERT INTO `buys` VALUES (6,3,'2012-05-21 15:06:47','2012-05-21 15:06:47'),(7,2,'2012-05-23 01:21:22','2012-05-23 01:21:22'),(8,3,'2012-05-23 03:58:59','2012-05-23 03:58:59'),(9,2,'2012-05-23 04:01:03','2012-05-23 04:01:03');
/*!40000 ALTER TABLE `buys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `new_view`
--

DROP TABLE IF EXISTS `new_view`;
/*!50001 DROP VIEW IF EXISTS `new_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `new_view` (
  `pr_name` varchar(255),
  `postupilo` int(11),
  `u_name` varchar(255),
  `su_name` varchar(255),
  `ae_name` varchar(255),
  `sr_name` varchar(255),
  `id` int(11)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shtrih_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postupilo` int(11) DEFAULT NULL,
  `shipment_id` int(11) DEFAULT NULL,
  `unit_id` int(11) DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `single_price` float DEFAULT NULL,
  `opt_price` float DEFAULT NULL,
  `suppls_price` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (11,'Спиртовой раствор 60%','89568874856',845,1,3,4,3,'2012-05-21 14:53:07','2012-05-23 04:01:03',90,70,30),(12,'Натрия хлорид','5698623458',22,1,1,6,3,'2012-05-21 14:54:23','2012-05-21 15:06:47',110,50,34),(13,'Глицерин','4589658998',692,1,1,1,3,'2012-05-21 15:01:57','2012-05-21 15:01:57',738,500,322),(14,'Ласьёны lacost, avon','8956878995',590,3,2,6,12,'2012-05-22 00:40:49','2012-05-23 01:21:39',500,300,270),(15,'Крем от загара ','5896587458',845,3,1,5,6,'2012-05-22 01:45:27','2012-05-23 04:01:03',560,300,237),(16,'Мыло Яблочное','23590045865',881,3,2,3,11,'2012-05-22 01:48:34','2012-05-23 04:01:25',15,7,3),(17,'Шампунь ','5698632145',202,3,2,5,11,'2012-05-22 02:55:52','2012-05-23 03:10:25',98,58,20),(18,'Крем гель','5896526548',680,3,1,7,11,'2012-05-22 03:01:34','2012-05-23 04:01:03',580,255,170),(19,'name','shtrih_code',0,1,NULL,NULL,NULL,'2012-05-23 04:05:48','2012-05-23 04:05:48',0,0,0),(20,'лыжи','12392222',20,1,NULL,NULL,NULL,'2012-05-23 04:05:48','2012-05-23 04:05:48',200,0,0),(21,'dsddsssd','fggf',28,1,NULL,NULL,NULL,'2012-05-23 04:05:48','2012-05-23 04:05:48',300,22,10),(22,'thhrthrt','454ftghdf434',55555,1,NULL,NULL,NULL,'2012-05-23 04:05:48','2012-05-23 04:05:48',222,55,222),(23,'gfrg','232',2232,1,NULL,NULL,NULL,'2012-05-23 04:05:48','2012-05-23 04:05:48',232,322,2323),(24,'name','shtrih_code',0,1,NULL,NULL,NULL,'2012-05-23 04:22:49','2012-05-23 04:22:49',0,0,0),(25,'лыжи','12392222',20,1,NULL,NULL,NULL,'2012-05-23 04:22:50','2012-05-23 04:22:50',200,0,0),(26,'dsddsssd','fggf',28,1,NULL,NULL,NULL,'2012-05-23 04:22:50','2012-05-23 04:22:50',300,22,10),(27,'thhrthrt','454ftghdf434',55555,1,NULL,NULL,NULL,'2012-05-23 04:22:50','2012-05-23 04:22:50',222,55,222),(28,'gfrg','232',2232,1,NULL,NULL,NULL,'2012-05-23 04:22:50','2012-05-23 04:22:50',232,322,2323),(29,'name','shtrih_code',0,1,NULL,NULL,NULL,'2012-05-23 04:23:10','2012-05-23 04:23:10',0,0,0),(30,'лыжи','12392222',20,1,NULL,NULL,NULL,'2012-05-23 04:23:10','2012-05-23 04:23:10',200,0,0),(31,'dsddsssd','fggf',28,1,NULL,NULL,NULL,'2012-05-23 04:23:10','2012-05-23 04:23:10',300,22,10),(32,'thhrthrt','454ftghdf434',55555,1,NULL,NULL,NULL,'2012-05-23 04:23:11','2012-05-23 04:23:11',222,55,222),(33,'gfrg','232',2232,1,NULL,NULL,NULL,'2012-05-23 04:23:11','2012-05-23 04:23:11',232,322,2323),(34,'name','shtrih_code',0,1,NULL,NULL,NULL,'2012-05-23 23:54:44','2012-05-23 23:54:44',0,0,0),(35,'лыжи','12392222',20,1,NULL,NULL,NULL,'2012-05-23 23:54:44','2012-05-23 23:54:44',200,0,0),(36,'dsddsssd','fggf',28,1,NULL,NULL,NULL,'2012-05-23 23:54:44','2012-05-23 23:54:44',300,22,10),(37,'thhrthrt','454ftghdf434',55555,1,NULL,NULL,NULL,'2012-05-23 23:54:44','2012-05-23 23:54:44',222,55,222),(38,'gfrg','232',2232,1,NULL,NULL,NULL,'2012-05-23 23:54:44','2012-05-23 23:54:44',232,322,2323),(39,'name','shtrih_code',0,1,NULL,NULL,NULL,'2012-05-23 23:56:07','2012-05-23 23:56:07',0,0,0),(40,'лыжи','12392222',20,1,NULL,NULL,NULL,'2012-05-23 23:56:07','2012-05-23 23:56:07',200,0,0),(41,'dsddsssd','fggf',28,1,NULL,NULL,NULL,'2012-05-23 23:56:07','2012-05-23 23:56:07',300,22,10),(42,'thhrthrt','454ftghdf434',55555,1,NULL,NULL,NULL,'2012-05-23 23:56:07','2012-05-23 23:56:07',222,55,222),(43,'gfrg','232',2232,1,NULL,NULL,NULL,'2012-05-23 23:56:07','2012-05-23 23:56:07',232,322,2323);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20120513015240'),('20120513015257'),('20120513015310'),('20120513015331'),('20120513015343'),('20120513015514'),('20120513015522'),('20120513015535'),('20120513015549'),('20120513015602'),('20120513015620'),('20120514060334'),('20120515001024');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sections`
--

DROP TABLE IF EXISTS `sections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `storage_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sections`
--

LOCK TABLES `sections` WRITE;
/*!40000 ALTER TABLE `sections` DISABLE KEYS */;
INSERT INTO `sections` VALUES (3,3,'Склад оптового хранения ингридиентов','2012-05-18 05:45:18','2012-05-21 05:12:30'),(4,3,'Отдел хранения единичных заказов','2012-05-18 05:45:18','2012-05-21 05:13:27'),(5,3,'Отдел сухих смесей','2012-05-18 05:45:18','2012-05-21 05:14:23'),(6,3,'Отдел хранения кремов','2012-05-18 05:45:18','2012-05-21 05:15:02'),(7,4,'Холодильная комната','2012-05-18 05:47:51','2012-05-21 05:37:05'),(8,4,'Химически опасные реактивы','2012-05-18 05:47:51','2012-05-21 05:37:05'),(9,4,'Склад лаборатории','2012-05-18 05:47:51','2012-05-21 05:37:05'),(10,5,'Взрывоопасные','2012-05-18 05:48:52','2012-05-21 05:43:58'),(11,5,'Щелочи','2012-05-18 05:48:52','2012-05-21 05:43:58'),(12,5,'Парфимерия','2012-05-18 05:48:52','2012-05-21 05:43:58'),(13,5,'Бытовая химия','2012-05-22 03:03:25','2012-05-22 03:03:25');
/*!40000 ALTER TABLE `sections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shipments`
--

DROP TABLE IF EXISTS `shipments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shipments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `file_name_attach_file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_name_attach_content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_name_attach_file_size` int(11) DEFAULT NULL,
  `file_name_attach_updated_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipments`
--

LOCK TABLES `shipments` WRITE;
/*!40000 ALTER TABLE `shipments` DISABLE KEYS */;
INSERT INTO `shipments` VALUES (1,'products.csv','text/csv',205,'2012-05-23 04:05:36','2012-05-16 05:08:25','2012-05-23 04:05:36'),(3,NULL,NULL,NULL,NULL,'2012-05-22 00:38:34','2012-05-22 00:38:34');
/*!40000 ALTER TABLE `shipments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shipping_errors`
--

DROP TABLE IF EXISTS `shipping_errors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shipping_errors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `error_text` text COLLATE utf8_unicode_ci,
  `shipment_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipping_errors`
--

LOCK TABLES `shipping_errors` WRITE;
/*!40000 ALTER TABLE `shipping_errors` DISABLE KEYS */;
/*!40000 ALTER TABLE `shipping_errors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storages`
--

DROP TABLE IF EXISTS `storages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `adress` text COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storages`
--

LOCK TABLES `storages` WRITE;
/*!40000 ALTER TABLE `storages` DISABLE KEYS */;
INSERT INTO `storages` VALUES (3,'Склад 1','Кантемирова 20','2012-05-18 05:45:18','2012-05-21 05:12:44'),(4,'Склад мелкооптовой выдачи','Текстильная 43','2012-05-18 05:47:51','2012-05-21 05:37:05'),(5,'Склад 3 крупнооптовый','Загородная 21','2012-05-18 05:48:52','2012-05-21 05:43:58');
/*!40000 ALTER TABLE `storages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `suppliers`
--

DROP TABLE IF EXISTS `suppliers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `suppliers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_face` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `adress` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tel` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suppliers`
--

LOCK TABLES `suppliers` WRITE;
/*!40000 ALTER TABLE `suppliers` DISABLE KEYS */;
INSERT INTO `suppliers` VALUES (1,'ЗАО ГЛОРИЯ','Маслюченко Евгений Николаевич','Нагорная 22 каб 14','89145245566','e.masluchenko@gmail.com','2012-05-18 05:07:28','2012-05-18 05:07:28'),(2,'ООО РусПарфюм','Токарчук Владимир Николаевич','Волошина 15 3 эт','89145890589','v.tokarchuk@rusbeton.ru','2012-05-18 05:10:38','2012-05-20 00:50:56'),(3,'ИП Полтавченко','Полтавченко Елизавета Витольдовна','Богдана -Хмельницкого 8 ','89145877777','poltachenko.elizaveta@mail.ru','2012-05-18 05:13:37','2012-05-18 05:13:37'),(4,'ОАО Футур','Поддубный Семён Михайлович','Политехническая 174 3 эт. каб 355','89620456566','bitovietovari@kvnt.ru','2012-05-18 05:17:51','2012-05-20 00:51:37'),(5,'ЗАО  Оверфлоу','Азраэлов Евгений Андорович','Чайковского 182 каб 12','89268966448','overflow@mail.ru','2012-05-18 05:33:06','2012-05-18 05:33:06'),(6,'ИП АромаТовары','Винникова Мария Андреевна','Ленина 150 4 эт','89140405155','m.vinnikova@gmail.com','2012-05-18 05:35:26','2012-05-20 00:52:13'),(7,'Консорциум ТРИО','Елисеев Сергей Геннадиевич','Ленина 24 ','89145000054','s.eleseev@trio.com','2012-05-18 05:38:45','2012-05-18 05:38:45');
/*!40000 ALTER TABLE `suppliers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `units`
--

DROP TABLE IF EXISTS `units`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `units` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `units`
--

LOCK TABLES `units` WRITE;
/*!40000 ALTER TABLE `units` DISABLE KEYS */;
INSERT INTO `units` VALUES (1,'кг','2012-05-18 05:04:59','2012-05-18 05:04:59'),(2,'шт.','2012-05-18 05:05:06','2012-05-18 05:05:06'),(3,'л.','2012-05-18 05:05:11','2012-05-18 05:05:11');
/*!40000 ALTER TABLE `units` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_users_on_email` (`email`),
  UNIQUE KEY `index_users_on_reset_password_token` (`reset_password_token`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'zaher220@mail.ru','$2a$10$ieJh9t6smJmgvSTfys/RAuSi8Bt90iIujsq95upVoYC2ZwixjV/V6',NULL,NULL,NULL,18,'2012-08-05 09:20:23','2012-05-23 23:27:36','127.0.0.1','10.3.1.13'),(2,'segey@mail.ru','$2a$10$wLa1ZQAQ9zg92hWjRYZVZe9v8Boun8VXrzL333Hlad4b.mF8Gr/wK',NULL,NULL,NULL,1,'2012-05-23 04:15:34','2012-05-23 04:15:34','127.0.0.1','127.0.0.1'),(3,'sergey@mail.ru','$2a$10$K2xNBYeKF/2uJ700Zo6gDeHAmyW5g4T5/CbONaV2LaQW.Na6IwOui',NULL,NULL,NULL,1,'2012-05-23 05:57:37','2012-05-23 05:57:37','10.3.1.16','10.3.1.16');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `new_view`
--

/*!50001 DROP TABLE IF EXISTS `new_view`*/;
/*!50001 DROP VIEW IF EXISTS `new_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `new_view` AS select `products`.`name` AS `pr_name`,`products`.`postupilo` AS `postupilo`,`units`.`name` AS `u_name`,`suppliers`.`name` AS `su_name`,`sections`.`name` AS `ae_name`,`storages`.`name` AS `sr_name`,`shipments`.`id` AS `id` from (((((`shipments` join `products`) join `units`) join `suppliers`) join `sections`) join `storages`) where ((`shipments`.`id` = `products`.`shipment_id`) and (`units`.`id` = `products`.`unit_id`) and (`suppliers`.`id` = `products`.`supplier_id`) and (`sections`.`id` = `products`.`section_id`) and (`storages`.`id` = `sections`.`storage_id`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-08-05 19:28:36
