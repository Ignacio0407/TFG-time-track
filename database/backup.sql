-- MySQL dump 10.13  Distrib 8.3.0, for Linux (x86_64)
--
-- Host: localhost    Database: kimai
-- ------------------------------------------------------
-- Server version	8.3.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `kimai2_access_token`
--

DROP TABLE IF EXISTS `kimai2_access_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kimai2_access_token` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `token` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_usage` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)',
  `expires_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_6FB0DB1E5F37A13B` (`token`),
  KEY `IDX_6FB0DB1EA76ED395` (`user_id`),
  CONSTRAINT `FK_6FB0DB1EA76ED395` FOREIGN KEY (`user_id`) REFERENCES `kimai2_users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kimai2_access_token`
--

LOCK TABLES `kimai2_access_token` WRITE;
/*!40000 ALTER TABLE `kimai2_access_token` DISABLE KEYS */;
/*!40000 ALTER TABLE `kimai2_access_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kimai2_activities`
--

DROP TABLE IF EXISTS `kimai2_activities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kimai2_activities` (
  `id` int NOT NULL AUTO_INCREMENT,
  `project_id` int DEFAULT NULL,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci,
  `visible` tinyint(1) NOT NULL,
  `color` varchar(7) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_budget` int NOT NULL DEFAULT '0',
  `budget` double NOT NULL DEFAULT '0',
  `budget_type` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billable` tinyint(1) NOT NULL DEFAULT '1',
  `invoice_text` longtext COLLATE utf8mb4_unicode_ci,
  `number` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)',
  PRIMARY KEY (`id`),
  KEY `IDX_8811FE1C166D1F9C` (`project_id`),
  KEY `IDX_8811FE1C7AB0E859166D1F9C` (`visible`,`project_id`),
  KEY `IDX_8811FE1C7AB0E859166D1F9C5E237E06` (`visible`,`project_id`,`name`),
  KEY `IDX_8811FE1C7AB0E8595E237E06` (`visible`,`name`),
  CONSTRAINT `FK_8811FE1C166D1F9C` FOREIGN KEY (`project_id`) REFERENCES `kimai2_projects` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kimai2_activities`
--

LOCK TABLES `kimai2_activities` WRITE;
/*!40000 ALTER TABLE `kimai2_activities` DISABLE KEYS */;
INSERT INTO `kimai2_activities` VALUES (1,1,'Base project (backend)','Creating classes to allow services and controller to implement basic CRUD operations out of the box without repeating so much code',1,'#808000',0,0,NULL,0,NULL,'1','2026-03-09 18:21:39'),(2,1,'Base Project (frontend)','React components that tackle some of the most useful and repetitive developing tasks such as creating lists, searchbars, forms...',1,'#808000',0,0,NULL,0,NULL,'2','2026-03-09 18:27:27'),(3,1,'Frontend to Typescript','Rewrite frontend code from JS to TS for much better error highlighting and debugging capabilities',1,NULL,0,0,NULL,1,NULL,'3','2026-03-09 18:28:49'),(4,1,'Refactoring (backend)',NULL,1,'#00ffff',0,0,NULL,0,NULL,'4','2026-03-09 18:36:02'),(5,1,'Refactoring (frontend)',NULL,1,'#00ffff',0,0,NULL,0,NULL,'5','2026-03-09 18:36:40'),(6,1,'Web sockets',NULL,1,'#00bfff',0,0,NULL,0,NULL,'6','2026-03-09 18:37:04'),(7,1,'DTOs',NULL,1,'#008000',0,0,NULL,1,NULL,'7','2026-03-09 18:39:05'),(8,1,'Efficiency',NULL,1,'#ffe4e1',0,0,NULL,0,NULL,'8','2026-03-09 18:40:49'),(9,1,'AI Automatic Player',NULL,1,'#ffff00',0,0,NULL,0,NULL,'9','2026-03-09 18:41:16'),(10,1,'Memory',NULL,1,'#c0c0c0',0,0,NULL,0,NULL,'10','2026-03-09 19:21:13'),(13,1,'HTTP/2 and Security','Implementing HTTP/2 to improve security and performance and make necessary changes in Spring\'s configuration to also improve security',1,'#ffe4e1',0,0,NULL,0,NULL,'11','2026-03-11 11:51:48'),(14,1,'Tests (backend)','Realizar tests del backend',1,'#ee82ee',0,0,NULL,0,NULL,'12','2026-03-11 11:55:56'),(15,1,'Tests (frontend)','Realizar pruebas del frontend',1,'#808080',0,0,NULL,0,NULL,'13','2026-03-11 11:56:32'),(16,1,'Tests','Realizar tests generales de que todo funciona. Esta tarea se irá realizando junto con la implementación del resto, así que solo tendrá tiempo asociado al final del proyecto cuando se haya desarrollado completamente',1,NULL,0,0,NULL,1,NULL,'14','2026-03-11 12:00:41'),(17,1,'Adding/Modifying extra-game functionalities','Realizar cambios en funcionalidades no directamente relacionadas con el juego de mesa en sí, como logros, listado de usuarios, solicitudes de amistad...',1,'#00ffff',0,0,NULL,0,NULL,'15','2026-03-11 13:44:40'),(18,1,'Frontend Tooling Migration (CRA → Vite)','Migrar de Create React App a Vite para adoptar tendencias más modernas y reducir el número de dependencias.',1,'#ffe4e1',0,0,NULL,0,NULL,'16','2026-03-17 09:53:07');
/*!40000 ALTER TABLE `kimai2_activities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kimai2_activities_meta`
--

DROP TABLE IF EXISTS `kimai2_activities_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kimai2_activities_meta` (
  `id` int NOT NULL AUTO_INCREMENT,
  `activity_id` int NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `visible` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_A7C0A43D81C060965E237E06` (`activity_id`,`name`),
  KEY `IDX_A7C0A43D81C06096` (`activity_id`),
  CONSTRAINT `FK_A7C0A43D81C06096` FOREIGN KEY (`activity_id`) REFERENCES `kimai2_activities` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kimai2_activities_meta`
--

LOCK TABLES `kimai2_activities_meta` WRITE;
/*!40000 ALTER TABLE `kimai2_activities_meta` DISABLE KEYS */;
/*!40000 ALTER TABLE `kimai2_activities_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kimai2_activities_rates`
--

DROP TABLE IF EXISTS `kimai2_activities_rates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kimai2_activities_rates` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `activity_id` int DEFAULT NULL,
  `rate` double NOT NULL,
  `fixed` tinyint(1) NOT NULL,
  `internal_rate` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_4A7F11BEA76ED39581C06096` (`user_id`,`activity_id`),
  KEY `IDX_4A7F11BEA76ED395` (`user_id`),
  KEY `IDX_4A7F11BE81C06096` (`activity_id`),
  CONSTRAINT `FK_4A7F11BE81C06096` FOREIGN KEY (`activity_id`) REFERENCES `kimai2_activities` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_4A7F11BEA76ED395` FOREIGN KEY (`user_id`) REFERENCES `kimai2_users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kimai2_activities_rates`
--

LOCK TABLES `kimai2_activities_rates` WRITE;
/*!40000 ALTER TABLE `kimai2_activities_rates` DISABLE KEYS */;
/*!40000 ALTER TABLE `kimai2_activities_rates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kimai2_activities_teams`
--

DROP TABLE IF EXISTS `kimai2_activities_teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kimai2_activities_teams` (
  `activity_id` int NOT NULL,
  `team_id` int NOT NULL,
  PRIMARY KEY (`activity_id`,`team_id`),
  KEY `IDX_986998DA81C06096` (`activity_id`),
  KEY `IDX_986998DA296CD8AE` (`team_id`),
  CONSTRAINT `FK_986998DA296CD8AE` FOREIGN KEY (`team_id`) REFERENCES `kimai2_teams` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_986998DA81C06096` FOREIGN KEY (`activity_id`) REFERENCES `kimai2_activities` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kimai2_activities_teams`
--

LOCK TABLES `kimai2_activities_teams` WRITE;
/*!40000 ALTER TABLE `kimai2_activities_teams` DISABLE KEYS */;
/*!40000 ALTER TABLE `kimai2_activities_teams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kimai2_bookmarks`
--

DROP TABLE IF EXISTS `kimai2_bookmarks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kimai2_bookmarks` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_4016EF25A76ED3955E237E06` (`user_id`,`name`),
  KEY `IDX_4016EF25A76ED395` (`user_id`),
  CONSTRAINT `FK_4016EF25A76ED395` FOREIGN KEY (`user_id`) REFERENCES `kimai2_users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kimai2_bookmarks`
--

LOCK TABLES `kimai2_bookmarks` WRITE;
/*!40000 ALTER TABLE `kimai2_bookmarks` DISABLE KEYS */;
/*!40000 ALTER TABLE `kimai2_bookmarks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kimai2_configuration`
--

DROP TABLE IF EXISTS `kimai2_configuration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kimai2_configuration` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_1C5D63D85E237E06` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kimai2_configuration`
--

LOCK TABLES `kimai2_configuration` WRITE;
/*!40000 ALTER TABLE `kimai2_configuration` DISABLE KEYS */;
/*!40000 ALTER TABLE `kimai2_configuration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kimai2_customers`
--

DROP TABLE IF EXISTS `kimai2_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kimai2_customers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `number` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci,
  `visible` tinyint(1) NOT NULL,
  `company` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `country` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(75) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `homepage` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `timezone` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(7) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_budget` int NOT NULL DEFAULT '0',
  `budget` double NOT NULL DEFAULT '0',
  `vat_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `budget_type` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billable` tinyint(1) NOT NULL DEFAULT '1',
  `invoice_template_id` int DEFAULT NULL,
  `invoice_text` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)',
  `address_line1` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_line2` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_line3` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postcode` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `buyer_reference` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_5A9760447AB0E859` (`visible`),
  KEY `IDX_5A97604412946D8B` (`invoice_template_id`),
  CONSTRAINT `FK_5A97604412946D8B` FOREIGN KEY (`invoice_template_id`) REFERENCES `kimai2_invoice_templates` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kimai2_customers`
--

LOCK TABLES `kimai2_customers` WRITE;
/*!40000 ALTER TABLE `kimai2_customers` DISABLE KEYS */;
INSERT INTO `kimai2_customers` VALUES (1,'Universidad de Sevilla','1',NULL,1,NULL,NULL,NULL,'ES','EUR',NULL,NULL,NULL,NULL,NULL,'Europe/Madrid','#ff0000',0,0,NULL,NULL,0,NULL,NULL,'2026-03-09 18:09:09',NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `kimai2_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kimai2_customers_comments`
--

DROP TABLE IF EXISTS `kimai2_customers_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kimai2_customers_comments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int NOT NULL,
  `created_by_id` int NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `pinned` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `IDX_A5B142D99395C3F3` (`customer_id`),
  KEY `IDX_A5B142D9B03A8386` (`created_by_id`),
  CONSTRAINT `FK_A5B142D99395C3F3` FOREIGN KEY (`customer_id`) REFERENCES `kimai2_customers` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_A5B142D9B03A8386` FOREIGN KEY (`created_by_id`) REFERENCES `kimai2_users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kimai2_customers_comments`
--

LOCK TABLES `kimai2_customers_comments` WRITE;
/*!40000 ALTER TABLE `kimai2_customers_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `kimai2_customers_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kimai2_customers_meta`
--

DROP TABLE IF EXISTS `kimai2_customers_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kimai2_customers_meta` (
  `id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `visible` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_A48A760F9395C3F35E237E06` (`customer_id`,`name`),
  KEY `IDX_A48A760F9395C3F3` (`customer_id`),
  CONSTRAINT `FK_A48A760F9395C3F3` FOREIGN KEY (`customer_id`) REFERENCES `kimai2_customers` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kimai2_customers_meta`
--

LOCK TABLES `kimai2_customers_meta` WRITE;
/*!40000 ALTER TABLE `kimai2_customers_meta` DISABLE KEYS */;
/*!40000 ALTER TABLE `kimai2_customers_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kimai2_customers_rates`
--

DROP TABLE IF EXISTS `kimai2_customers_rates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kimai2_customers_rates` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `customer_id` int DEFAULT NULL,
  `rate` double NOT NULL,
  `fixed` tinyint(1) NOT NULL,
  `internal_rate` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_82AB0AECA76ED3959395C3F3` (`user_id`,`customer_id`),
  KEY `IDX_82AB0AECA76ED395` (`user_id`),
  KEY `IDX_82AB0AEC9395C3F3` (`customer_id`),
  CONSTRAINT `FK_82AB0AEC9395C3F3` FOREIGN KEY (`customer_id`) REFERENCES `kimai2_customers` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_82AB0AECA76ED395` FOREIGN KEY (`user_id`) REFERENCES `kimai2_users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kimai2_customers_rates`
--

LOCK TABLES `kimai2_customers_rates` WRITE;
/*!40000 ALTER TABLE `kimai2_customers_rates` DISABLE KEYS */;
/*!40000 ALTER TABLE `kimai2_customers_rates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kimai2_customers_teams`
--

DROP TABLE IF EXISTS `kimai2_customers_teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kimai2_customers_teams` (
  `customer_id` int NOT NULL,
  `team_id` int NOT NULL,
  PRIMARY KEY (`customer_id`,`team_id`),
  KEY `IDX_50BD83889395C3F3` (`customer_id`),
  KEY `IDX_50BD8388296CD8AE` (`team_id`),
  CONSTRAINT `FK_50BD8388296CD8AE` FOREIGN KEY (`team_id`) REFERENCES `kimai2_teams` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_50BD83889395C3F3` FOREIGN KEY (`customer_id`) REFERENCES `kimai2_customers` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kimai2_customers_teams`
--

LOCK TABLES `kimai2_customers_teams` WRITE;
/*!40000 ALTER TABLE `kimai2_customers_teams` DISABLE KEYS */;
/*!40000 ALTER TABLE `kimai2_customers_teams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kimai2_export_templates`
--

DROP TABLE IF EXISTS `kimai2_export_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kimai2_export_templates` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `renderer` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` varchar(6) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `columns` json NOT NULL,
  `options` json NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_2F0CA26F2B36786B` (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kimai2_export_templates`
--

LOCK TABLES `kimai2_export_templates` WRITE;
/*!40000 ALTER TABLE `kimai2_export_templates` DISABLE KEYS */;
/*!40000 ALTER TABLE `kimai2_export_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kimai2_invoice_templates`
--

DROP TABLE IF EXISTS `kimai2_invoice_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kimai2_invoice_templates` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `due_days` int NOT NULL,
  `vat` double DEFAULT '0',
  `calculator` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `number_generator` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `renderer` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_terms` text COLLATE utf8mb4_unicode_ci,
  `vat_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact` longtext COLLATE utf8mb4_unicode_ci,
  `payment_details` longtext COLLATE utf8mb4_unicode_ci,
  `language` varchar(6) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_1626CFE95E237E06` (`name`),
  KEY `IDX_1626CFE99395C3F3` (`customer_id`),
  CONSTRAINT `FK_1626CFE99395C3F3` FOREIGN KEY (`customer_id`) REFERENCES `kimai2_customers` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kimai2_invoice_templates`
--

LOCK TABLES `kimai2_invoice_templates` WRITE;
/*!40000 ALTER TABLE `kimai2_invoice_templates` DISABLE KEYS */;
/*!40000 ALTER TABLE `kimai2_invoice_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kimai2_invoice_templates_meta`
--

DROP TABLE IF EXISTS `kimai2_invoice_templates_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kimai2_invoice_templates_meta` (
  `id` int NOT NULL AUTO_INCREMENT,
  `template_id` int NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `visible` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_A165B0555DA0FB85E237E06` (`template_id`,`name`),
  KEY `IDX_A165B0555DA0FB8` (`template_id`),
  CONSTRAINT `FK_A165B0555DA0FB8` FOREIGN KEY (`template_id`) REFERENCES `kimai2_invoice_templates` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kimai2_invoice_templates_meta`
--

LOCK TABLES `kimai2_invoice_templates_meta` WRITE;
/*!40000 ALTER TABLE `kimai2_invoice_templates_meta` DISABLE KEYS */;
/*!40000 ALTER TABLE `kimai2_invoice_templates_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kimai2_invoices`
--

DROP TABLE IF EXISTS `kimai2_invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kimai2_invoices` (
  `id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int NOT NULL,
  `user_id` int NOT NULL,
  `invoice_number` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `timezone` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` double NOT NULL,
  `tax` double NOT NULL,
  `currency` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `due_days` int NOT NULL,
  `vat` double NOT NULL,
  `invoice_filename` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_date` date DEFAULT NULL,
  `comment` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_76C38E372DA68207` (`invoice_number`),
  UNIQUE KEY `UNIQ_76C38E372323B33D` (`invoice_filename`),
  KEY `IDX_76C38E37A76ED395` (`user_id`),
  KEY `IDX_76C38E379395C3F3` (`customer_id`),
  CONSTRAINT `FK_76C38E379395C3F3` FOREIGN KEY (`customer_id`) REFERENCES `kimai2_customers` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_76C38E37A76ED395` FOREIGN KEY (`user_id`) REFERENCES `kimai2_users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kimai2_invoices`
--

LOCK TABLES `kimai2_invoices` WRITE;
/*!40000 ALTER TABLE `kimai2_invoices` DISABLE KEYS */;
/*!40000 ALTER TABLE `kimai2_invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kimai2_invoices_meta`
--

DROP TABLE IF EXISTS `kimai2_invoices_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kimai2_invoices_meta` (
  `id` int NOT NULL AUTO_INCREMENT,
  `invoice_id` int NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `visible` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_7EDC37D92989F1FD5E237E06` (`invoice_id`,`name`),
  KEY `IDX_7EDC37D92989F1FD` (`invoice_id`),
  CONSTRAINT `FK_7EDC37D92989F1FD` FOREIGN KEY (`invoice_id`) REFERENCES `kimai2_invoices` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kimai2_invoices_meta`
--

LOCK TABLES `kimai2_invoices_meta` WRITE;
/*!40000 ALTER TABLE `kimai2_invoices_meta` DISABLE KEYS */;
/*!40000 ALTER TABLE `kimai2_invoices_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kimai2_projects`
--

DROP TABLE IF EXISTS `kimai2_projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kimai2_projects` (
  `id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int NOT NULL,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_number` tinytext COLLATE utf8mb4_unicode_ci,
  `comment` text COLLATE utf8mb4_unicode_ci,
  `visible` tinyint(1) NOT NULL,
  `budget` double NOT NULL DEFAULT '0',
  `color` varchar(7) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_budget` int NOT NULL DEFAULT '0',
  `order_date` datetime DEFAULT NULL,
  `start` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `timezone` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `budget_type` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billable` tinyint(1) NOT NULL DEFAULT '1',
  `invoice_text` longtext COLLATE utf8mb4_unicode_ci,
  `global_activities` tinyint(1) NOT NULL DEFAULT '1',
  `number` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)',
  PRIMARY KEY (`id`),
  KEY `IDX_407F12069395C3F3` (`customer_id`),
  KEY `IDX_407F12069395C3F37AB0E8595E237E06` (`customer_id`,`visible`,`name`),
  KEY `IDX_407F12069395C3F37AB0E859BF396750` (`customer_id`,`visible`,`id`),
  CONSTRAINT `FK_407F12069395C3F3` FOREIGN KEY (`customer_id`) REFERENCES `kimai2_customers` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kimai2_projects`
--

LOCK TABLES `kimai2_projects` WRITE;
/*!40000 ALTER TABLE `kimai2_projects` DISABLE KEYS */;
INSERT INTO `kimai2_projects` VALUES (1,1,'TFG (Upstream)',NULL,NULL,1,0,'#ffa500',0,NULL,'2025-06-01 22:00:00','2026-07-31 21:59:59','Europe/Madrid',NULL,0,NULL,1,'1','2026-03-09 18:10:28');
/*!40000 ALTER TABLE `kimai2_projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kimai2_projects_comments`
--

DROP TABLE IF EXISTS `kimai2_projects_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kimai2_projects_comments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `project_id` int NOT NULL,
  `created_by_id` int NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `pinned` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `IDX_29A23638166D1F9C` (`project_id`),
  KEY `IDX_29A23638B03A8386` (`created_by_id`),
  CONSTRAINT `FK_29A23638166D1F9C` FOREIGN KEY (`project_id`) REFERENCES `kimai2_projects` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_29A23638B03A8386` FOREIGN KEY (`created_by_id`) REFERENCES `kimai2_users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kimai2_projects_comments`
--

LOCK TABLES `kimai2_projects_comments` WRITE;
/*!40000 ALTER TABLE `kimai2_projects_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `kimai2_projects_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kimai2_projects_meta`
--

DROP TABLE IF EXISTS `kimai2_projects_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kimai2_projects_meta` (
  `id` int NOT NULL AUTO_INCREMENT,
  `project_id` int NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `visible` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_50536EF2166D1F9C5E237E06` (`project_id`,`name`),
  KEY `IDX_50536EF2166D1F9C` (`project_id`),
  CONSTRAINT `FK_50536EF2166D1F9C` FOREIGN KEY (`project_id`) REFERENCES `kimai2_projects` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kimai2_projects_meta`
--

LOCK TABLES `kimai2_projects_meta` WRITE;
/*!40000 ALTER TABLE `kimai2_projects_meta` DISABLE KEYS */;
/*!40000 ALTER TABLE `kimai2_projects_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kimai2_projects_rates`
--

DROP TABLE IF EXISTS `kimai2_projects_rates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kimai2_projects_rates` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `project_id` int DEFAULT NULL,
  `rate` double NOT NULL,
  `fixed` tinyint(1) NOT NULL,
  `internal_rate` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_41535D55A76ED395166D1F9C` (`user_id`,`project_id`),
  KEY `IDX_41535D55A76ED395` (`user_id`),
  KEY `IDX_41535D55166D1F9C` (`project_id`),
  CONSTRAINT `FK_41535D55166D1F9C` FOREIGN KEY (`project_id`) REFERENCES `kimai2_projects` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_41535D55A76ED395` FOREIGN KEY (`user_id`) REFERENCES `kimai2_users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kimai2_projects_rates`
--

LOCK TABLES `kimai2_projects_rates` WRITE;
/*!40000 ALTER TABLE `kimai2_projects_rates` DISABLE KEYS */;
/*!40000 ALTER TABLE `kimai2_projects_rates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kimai2_projects_teams`
--

DROP TABLE IF EXISTS `kimai2_projects_teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kimai2_projects_teams` (
  `project_id` int NOT NULL,
  `team_id` int NOT NULL,
  PRIMARY KEY (`project_id`,`team_id`),
  KEY `IDX_9345D431166D1F9C` (`project_id`),
  KEY `IDX_9345D431296CD8AE` (`team_id`),
  CONSTRAINT `FK_9345D431166D1F9C` FOREIGN KEY (`project_id`) REFERENCES `kimai2_projects` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_9345D431296CD8AE` FOREIGN KEY (`team_id`) REFERENCES `kimai2_teams` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kimai2_projects_teams`
--

LOCK TABLES `kimai2_projects_teams` WRITE;
/*!40000 ALTER TABLE `kimai2_projects_teams` DISABLE KEYS */;
/*!40000 ALTER TABLE `kimai2_projects_teams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kimai2_roles`
--

DROP TABLE IF EXISTS `kimai2_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kimai2_roles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kimai2_roles`
--

LOCK TABLES `kimai2_roles` WRITE;
/*!40000 ALTER TABLE `kimai2_roles` DISABLE KEYS */;
INSERT INTO `kimai2_roles` VALUES (3,'ROLE_ADMIN'),(4,'ROLE_SUPER_ADMIN'),(2,'ROLE_TEAMLEAD'),(1,'ROLE_USER');
/*!40000 ALTER TABLE `kimai2_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kimai2_roles_permissions`
--

DROP TABLE IF EXISTS `kimai2_roles_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kimai2_roles_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `role_id` int NOT NULL,
  `permission` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `allowed` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `role_permission` (`role_id`,`permission`),
  KEY `IDX_D263A3B8D60322AC` (`role_id`),
  CONSTRAINT `FK_D263A3B8D60322AC` FOREIGN KEY (`role_id`) REFERENCES `kimai2_roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kimai2_roles_permissions`
--

LOCK TABLES `kimai2_roles_permissions` WRITE;
/*!40000 ALTER TABLE `kimai2_roles_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `kimai2_roles_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kimai2_sessions`
--

DROP TABLE IF EXISTS `kimai2_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kimai2_sessions` (
  `id` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` blob NOT NULL,
  `time` int unsigned NOT NULL,
  `lifetime` int unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kimai2_sessions`
--

LOCK TABLES `kimai2_sessions` WRITE;
/*!40000 ALTER TABLE `kimai2_sessions` DISABLE KEYS */;
INSERT INTO `kimai2_sessions` VALUES ('joms8ftmdio39u2mnbehv3dcg5',_binary '_sf2_attributes|a:6:{s:22:\"_security_secured_area\";s:420:\"O:74:\"Symfony\\Component\\Security\\Core\\Authentication\\Token\\UsernamePasswordToken\":3:{i:0;N;i:1;s:12:\"secured_area\";i:2;a:5:{i:0;O:15:\"App\\Entity\\User\":5:{s:2:\"id\";i:1;s:8:\"username\";s:5:\"admin\";s:7:\"enabled\";b:1;s:5:\"email\";s:20:\"igngutser@alum.us.es\";s:8:\"password\";s:60:\"$2y$13$gCrCalSz/k/P7PgzZKi61uj.fRFQrftDRk6V9pZbRy9ZpAe0g2926\";}i:1;b:1;i:2;N;i:3;a:0:{}i:4;a:2:{i:0;s:16:\"ROLE_SUPER_ADMIN\";i:1;s:9:\"ROLE_USER\";}}}\";s:23:\"_security.last_username\";s:5:\"admin\";s:12:\"_csrf/search\";s:43:\"opjIkkl64WrAmOL0crLtakpQx0823v-Lx4Ma18PpYRQ\";s:22:\"_csrf/datatable_update\";s:43:\"QESJVqLERqr4k-nKpyHW-ZZ1KZYRNoXFV7w5aO1tt3s\";s:26:\"_csrf/entities_multiupdate\";s:43:\"Dx10g-lpDy3zjMAt_DQB0rk3jxXm-mpK127JqoG4MCU\";s:20:\"_csrf/timesheet_edit\";s:43:\"h41S1IEFkm69E7JHvjHC20EPbFo3SXKcmaxZXivP3a4\";}_sf2_meta|a:3:{s:1:\"u\";i:1776525303;s:1:\"c\";i:1776183369;s:1:\"l\";i:0;}',1776525303,1777130103),('nrj80vhdd9i4kljefresmpk9ga',_binary '_sf2_attributes|a:6:{s:22:\"_security_secured_area\";s:420:\"O:74:\"Symfony\\Component\\Security\\Core\\Authentication\\Token\\UsernamePasswordToken\":3:{i:0;N;i:1;s:12:\"secured_area\";i:2;a:5:{i:0;O:15:\"App\\Entity\\User\":5:{s:2:\"id\";i:1;s:8:\"username\";s:5:\"admin\";s:7:\"enabled\";b:1;s:5:\"email\";s:20:\"igngutser@alum.us.es\";s:8:\"password\";s:60:\"$2y$13$gCrCalSz/k/P7PgzZKi61uj.fRFQrftDRk6V9pZbRy9ZpAe0g2926\";}i:1;b:1;i:2;N;i:3;a:0:{}i:4;a:2:{i:0;s:16:\"ROLE_SUPER_ADMIN\";i:1;s:9:\"ROLE_USER\";}}}\";s:23:\"_security.last_username\";s:5:\"admin\";s:12:\"_csrf/search\";s:43:\"S6Y37XWOcPUhDQkjAhm9qQ4OXfdud-kwzdAywN_x2Cc\";s:22:\"_csrf/datatable_update\";s:43:\"DFdjtO32jnXzy3w0k9FsN1AuAPVgGOWuKxpnq-fg0v0\";s:26:\"_csrf/entities_multiupdate\";s:43:\"VzmR8817LYQDduoTKBRBbUsR9Fc9_n_uu_9QGW7mkks\";s:20:\"_csrf/timesheet_edit\";s:43:\"VxnrY8RorF3Q5NREXI1qM0gzqlvuIYAMKjNBw9CHYTw\";}_sf2_meta|a:3:{s:1:\"u\";i:1776117494;s:1:\"c\";i:1776096032;s:1:\"l\";i:0;}',1776117494,1776722294);
/*!40000 ALTER TABLE `kimai2_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kimai2_tags`
--

DROP TABLE IF EXISTS `kimai2_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kimai2_tags` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(7) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visible` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_27CAF54C5E237E06` (`name`),
  KEY `IDX_27CAF54C7AB0E859` (`visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kimai2_tags`
--

LOCK TABLES `kimai2_tags` WRITE;
/*!40000 ALTER TABLE `kimai2_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `kimai2_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kimai2_teams`
--

DROP TABLE IF EXISTS `kimai2_teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kimai2_teams` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(7) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_3BEDDC7F5E237E06` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kimai2_teams`
--

LOCK TABLES `kimai2_teams` WRITE;
/*!40000 ALTER TABLE `kimai2_teams` DISABLE KEYS */;
/*!40000 ALTER TABLE `kimai2_teams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kimai2_timesheet`
--

DROP TABLE IF EXISTS `kimai2_timesheet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kimai2_timesheet` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user` int NOT NULL,
  `activity_id` int NOT NULL,
  `project_id` int NOT NULL,
  `start_time` datetime NOT NULL,
  `end_time` datetime DEFAULT NULL,
  `duration` int DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `rate` double NOT NULL,
  `fixed_rate` double DEFAULT NULL,
  `hourly_rate` double DEFAULT NULL,
  `exported` tinyint(1) NOT NULL DEFAULT '0',
  `timezone` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `internal_rate` double DEFAULT NULL,
  `billable` tinyint(1) DEFAULT '1',
  `category` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'work',
  `modified_at` datetime DEFAULT NULL,
  `date_tz` date NOT NULL,
  `break` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_4F60C6B18D93D649` (`user`),
  KEY `IDX_4F60C6B181C06096` (`activity_id`),
  KEY `IDX_4F60C6B1166D1F9C` (`project_id`),
  KEY `IDX_4F60C6B18D93D649502DF587` (`user`,`start_time`),
  KEY `IDX_4F60C6B1502DF587` (`start_time`),
  KEY `IDX_4F60C6B1502DF58741561401` (`start_time`,`end_time`),
  KEY `IDX_4F60C6B1502DF587415614018D93D649` (`start_time`,`end_time`,`user`),
  KEY `IDX_4F60C6B1BDF467148D93D649` (`date_tz`,`user`),
  KEY `IDX_4F60C6B1415614018D93D649` (`end_time`,`user`),
  KEY `IDX_TIMESHEET_TICKTAC` (`end_time`,`user`,`start_time`),
  KEY `IDX_TIMESHEET_RECENT_ACTIVITIES` (`user`,`project_id`,`activity_id`),
  KEY `IDX_TIMESHEET_RESULT_STATS` (`user`,`id`,`duration`),
  CONSTRAINT `FK_4F60C6B1166D1F9C` FOREIGN KEY (`project_id`) REFERENCES `kimai2_projects` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_4F60C6B181C06096` FOREIGN KEY (`activity_id`) REFERENCES `kimai2_activities` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_4F60C6B18D93D649` FOREIGN KEY (`user`) REFERENCES `kimai2_users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kimai2_timesheet`
--

LOCK TABLES `kimai2_timesheet` WRITE;
/*!40000 ALTER TABLE `kimai2_timesheet` DISABLE KEYS */;
INSERT INTO `kimai2_timesheet` VALUES (2,1,10,1,'2026-03-09 19:21:00','2026-03-09 19:52:00',1860,'Actualizando el paquete glossaries para que el pdf se genere correctamente',0,NULL,0,0,'Europe/Madrid',0,0,'work','2026-03-09 19:52:24','2026-03-09',0),(3,1,9,1,'2026-03-09 19:53:00','2026-03-09 20:05:00',720,'Determinando fuentes para estudiar sobre Monte Carlo Tree Search, yendo desde el básico, al determinista hasta, finalmente, el que voy a implementar, el Information Set Monte Carlo Tree Search',0,NULL,0,0,'Europe/Madrid',0,0,'work','2026-03-09 20:04:18','2026-03-09',0),(4,1,10,1,'2026-03-09 20:05:00','2026-03-09 20:20:00',900,'Rellenando la sección de Contexto.',0,NULL,0,0,'Europe/Madrid',0,0,'work','2026-03-09 20:19:08','2026-03-09',0),(5,1,10,1,'2026-03-10 09:49:00','2026-03-10 11:25:00',5760,'Arreglando errores de la plantilla.',0,NULL,0,0,'Europe/Madrid',0,0,'work','2026-03-10 11:25:57','2026-03-10',0),(6,1,10,1,'2026-03-10 12:04:00','2026-03-10 12:25:00',1260,'Quitando errores de la plantilla de la memoria latex.',0,NULL,0,0,'Europe/Madrid',0,0,'work','2026-03-10 12:24:43','2026-03-10',0),(7,1,6,1,'2026-03-10 12:25:00','2026-03-10 13:16:00',3060,'Añadiendo seguridad a los web sockets.',0,NULL,0,0,'Europe/Madrid',0,0,'work','2026-03-10 13:15:44','2026-03-10',0),(8,1,10,1,'2026-03-10 16:41:00','2026-03-10 17:44:00',3780,'Redactando la lista de características del archivo Arranque.tex',0,NULL,0,0,'Europe/Madrid',0,0,'work','2026-03-10 17:44:33','2026-03-10',0),(10,1,13,1,'2026-03-11 10:24:00','2026-03-11 11:03:00',2340,'Tests de componentes del backend',0,NULL,0,0,'Europe/Madrid',0,0,'work','2026-03-11 14:00:23','2026-03-11',0),(11,1,17,1,'2026-03-11 13:30:00','2026-03-11 14:00:00',1800,'Eliminando creación de jugadores y modificando como puede el admin actualizar sus autoridades',0,NULL,0,0,'Europe/Madrid',0,0,'work','2026-03-11 14:07:58','2026-03-11',0),(12,1,6,1,'2026-03-11 11:03:00','2026-03-11 12:00:00',3420,'Actualización de los web sockets para que funcionen con seguridad según las recomendaciones de las cheatsheets de OWASP.',0,NULL,0,0,'Europe/Madrid',0,0,'work','2026-03-11 14:01:18','2026-03-11',0),(13,1,13,1,'2026-03-11 14:07:00','2026-03-11 14:19:00',720,'Subiendo los cambios ayer realizados de HTTP/2 y Web sockets seguros (WSS).',0,NULL,0,0,'Europe/Madrid',0,0,'work','2026-03-11 14:19:00','2026-03-11',0),(14,1,10,1,'2026-03-11 14:20:00','2026-03-11 16:06:00',6360,'Redactando la planificación',0,NULL,0,0,'Europe/Madrid',0,0,'work','2026-03-11 16:05:16','2026-03-11',0),(15,1,15,1,'2026-03-11 16:05:00','2026-03-11 16:46:00',2460,'Realizando tests de ListGenerator y sus componentes auxiliares, así como integración de tsconfig en el proyecto.',0,NULL,0,0,'Europe/Madrid',0,0,'work','2026-03-11 16:45:59','2026-03-11',0),(16,1,15,1,'2026-03-16 11:00:00','2026-03-16 11:41:00',2460,'Tests de ListGenerator y sus componentes auxiliares.',0,NULL,0,0,'Europe/Madrid',0,0,'work','2026-03-16 14:03:29','2026-03-16',0),(17,1,15,1,'2026-03-16 14:02:00','2026-03-16 14:21:00',1140,'Tests de ListGenerator y sus componentes adicionales.',0,NULL,0,0,'Europe/Madrid',0,0,'work','2026-03-16 14:20:10','2026-03-16',0),(18,1,15,1,'2026-03-16 18:43:00','2026-03-16 20:50:00',7620,'Tests de ListGenerator y sus componentes auxiliares',0,NULL,0,0,'Europe/Madrid',0,0,'work','2026-03-16 20:49:37','2026-03-16',0),(19,1,15,1,'2026-03-17 09:13:00','2026-03-17 09:51:00',2280,'Tests de ListGenerator con diferentes patrones (Integration Behaviour e Integration Matrix)',0,NULL,0,0,'Europe/Madrid',0,0,'work','2026-03-17 09:50:18','2026-03-17',0),(20,1,18,1,'2026-03-17 09:53:00','2026-03-17 10:20:00',1620,'Migrando de Create React App a Vite',0,NULL,0,0,'Europe/Madrid',0,0,'work','2026-03-17 10:19:30','2026-03-17',0),(21,1,18,1,'2026-03-17 11:14:00','2026-03-17 11:56:00',2520,'Solucionando problema de página renderizándose en blanco y más ajustes de configuración',0,NULL,0,0,'Europe/Madrid',0,0,'work','2026-03-17 12:16:04','2026-03-17',0),(22,1,18,1,'2026-03-17 11:56:00','2026-03-17 13:15:00',4740,'Adaptando los tests para que vuelvan a funcionar utilizando ahora Vitest en vez de Jest.',0,NULL,0,0,'Europe/Madrid',0,0,'work','2026-03-17 15:21:27','2026-03-17',0),(23,1,18,1,'2026-03-17 15:15:00','2026-03-17 16:34:00',4740,'Adaptando tests de AppNavbar para que todo funcione antes de subir el cambio.',0,NULL,0,0,'Europe/Madrid',0,0,'work','2026-03-17 16:51:08','2026-03-17',0),(24,1,6,1,'2026-03-17 16:35:00','2026-03-17 18:24:00',6540,'Mejorando la seguridad de los webSockets para que pasen el suite de tests recomendado por OWASP, antes los subí con fallos, y para realizar correctamente los tests de frontend que usan webSockets, primero ha de estar correcto su backend y sus tests unitarios en backend.',0,NULL,0,0,'Europe/Madrid',0,0,'work','2026-03-17 18:23:43','2026-03-17',0),(25,1,6,1,'2026-03-20 14:56:00','2026-03-20 16:48:00',6720,'Ampliando la seguridad de los Web Sockets según las recomendaciones de OWASP y mejorando los tests para que cubran todas las nuevas medidas de seguridad.',0,NULL,0,0,'Europe/Madrid',0,0,'work','2026-03-20 17:02:47','2026-03-20',0),(26,1,6,1,'2026-03-22 18:00:00','2026-03-22 19:41:00',6060,'Modificando nuevamente los Web sockets para que la aplicación funcione después de sus mejoras de seguridad',0,NULL,0,0,'Europe/Madrid',0,0,'work','2026-03-22 19:41:23','2026-03-22',0),(27,1,6,1,'2026-03-22 20:25:00','2026-03-22 20:35:00',600,'Ajustando las medidas de seguridad del WebSocketSecurityInterceptor',0,NULL,0,0,'Europe/Madrid',0,0,'work','2026-03-22 20:34:27','2026-03-22',0),(28,1,6,1,'2026-03-24 09:50:00','2026-03-24 11:10:00',4800,'Afinando la configuración de seguridad y ajustando los tests para que pasen todos.',0,NULL,0,0,'Europe/Madrid',0,0,'work','2026-03-24 11:09:59','2026-03-24',0),(29,1,6,1,'2026-03-24 12:40:00','2026-03-24 14:41:00',7260,'Terminando de ajustar la comprobación de rutas para seguridad y los tests.',0,NULL,0,0,'Europe/Madrid',0,0,'work','2026-03-24 14:40:31','2026-03-24',0),(30,1,6,1,'2026-03-24 16:27:00','2026-03-24 16:44:00',1020,'Haciendo que el juego funcione después de los ajustes en seguridad.',0,NULL,0,0,'Europe/Madrid',0,0,'work','2026-03-24 16:43:34','2026-03-24',0),(31,1,10,1,'2026-03-24 16:43:00','2026-03-24 17:21:00',2280,'Reunión con el profe',0,NULL,0,0,'Europe/Madrid',0,0,'work','2026-03-24 17:20:04','2026-03-24',0),(32,1,6,1,'2026-03-24 17:22:00','2026-03-24 18:13:00',3060,'Haciendo que la app funcione tras los cambios de seguridad en los web sockets.',0,NULL,0,0,'Europe/Madrid',0,0,'work','2026-03-24 18:12:38','2026-03-24',0),(33,1,9,1,'2026-04-08 08:30:00','2026-04-08 09:00:00',1800,'Leyendo el artículo original de ISMCTS',0,NULL,0,0,'Europe/Madrid',0,0,'work','2026-04-08 09:04:23','2026-04-08',0),(34,1,15,1,'2026-04-08 09:08:00','2026-04-08 09:46:00',2280,'Terminando de ajustar test de Dashboard.',0,NULL,0,0,'Europe/Madrid',0,0,'work','2026-04-08 09:45:06','2026-04-08',0),(35,1,15,1,'2026-04-08 10:10:00','2026-04-08 10:16:00',360,'Tests de Dashboard terminados.',0,NULL,0,0,'Europe/Madrid',0,0,'work','2026-04-08 10:16:50','2026-04-08',0),(36,1,15,1,'2026-04-08 10:21:00','2026-04-08 11:34:00',4380,'Tests de Chat',0,NULL,0,0,'Europe/Madrid',0,0,'work','2026-04-08 11:33:51','2026-04-08',0),(37,1,6,1,'2026-04-08 11:34:00','2026-04-08 12:05:00',1860,'Haciendo que la app funcione tras los cambios de seguridad en los web sockets.',0,NULL,0,0,'Europe/Madrid',0,0,'work','2026-04-08 13:36:42','2026-04-08',0),(38,1,6,1,'2026-04-09 15:28:00','2026-04-09 16:27:00',3540,'Haciendo que la partida funcione tras los ajustes de seguridad en los web sockets.',0,NULL,0,0,'Europe/Madrid',0,0,'work','2026-04-09 16:26:14','2026-04-09',0),(39,1,15,1,'2026-04-09 17:50:00','2026-04-09 18:07:00',1020,'Terminando tests de Chat',0,NULL,0,0,'Europe/Madrid',0,0,'work','2026-04-09 18:06:15','2026-04-09',0),(40,1,5,1,'2026-04-09 18:06:00','2026-04-09 18:17:00',660,'Estudiando como mejorar AppNavBar mediante principios de desarrollo y buenas prácticas.',0,NULL,0,0,'Europe/Madrid',0,0,'work','2026-04-09 18:17:02','2026-04-09',0),(41,1,15,1,'2026-04-09 18:17:00','2026-04-09 18:35:00',1080,'Tests de UserListAdmin',0,NULL,0,0,'Europe/Madrid',0,0,'work','2026-04-09 18:37:59','2026-04-09',0),(42,1,15,1,'2026-04-09 18:36:00','2026-04-09 18:55:00',1140,'Tests de AchievementList',0,NULL,0,0,'Europe/Madrid',0,0,'work','2026-04-09 19:00:02','2026-04-09',0),(43,1,15,1,'2026-04-09 18:56:00','2026-04-09 19:07:00',660,'Tests de AchievementEdit.',0,NULL,0,0,'Europe/Madrid',0,0,'work','2026-04-09 19:12:39','2026-04-09',0),(44,1,10,1,'2026-04-09 19:08:00','2026-04-09 19:57:00',2940,'A',0,NULL,0,0,'Europe/Madrid',0,0,'work','2026-04-09 19:56:01','2026-04-09',0),(45,1,10,1,'2026-04-13 15:58:00','2026-04-13 16:30:00',1920,'Tomando notas de la reunión del 24 de marzo con el profe',0,NULL,0,0,'Europe/Madrid',0,0,'work','2026-04-13 17:15:43','2026-04-13',0),(46,1,10,1,'2026-04-13 16:31:00','2026-04-13 17:15:00',2640,'Realizando los cambios en la memoria descritos por el profesor.',0,NULL,0,0,'Europe/Madrid',0,0,'work','2026-04-13 17:16:15','2026-04-13',0),(47,1,10,1,'2026-04-13 17:15:00','2026-04-13 17:48:00',1980,'Redactando la iteración 1',0,NULL,0,0,'Europe/Madrid',0,0,'work','2026-04-13 20:38:22','2026-04-13',0),(48,1,10,1,'2026-04-13 17:49:00','2026-04-13 18:30:00',2460,'Redacción de la iteración 2',0,NULL,0,0,'Europe/Madrid',0,0,'work','2026-04-13 20:42:53','2026-04-13',0),(49,1,10,1,'2026-04-13 19:00:00','2026-04-13 19:45:00',2700,'Redacción iteración 3.',0,NULL,0,0,'Europe/Madrid',0,0,'work','2026-04-13 21:57:09','2026-04-13',0),(50,1,10,1,'2026-04-13 19:46:00','2026-04-13 20:30:00',2640,'Redacción iteración 4',0,NULL,0,0,'Europe/Madrid',0,0,'work','2026-04-13 21:58:14','2026-04-13',0),(51,1,15,1,'2026-04-14 16:19:00','2026-04-14 17:17:00',3480,'Terminando tests de ListGenerator y sus componentes auxiliares.',0,NULL,0,0,'Europe/Madrid',0,0,'work','2026-04-14 17:16:46','2026-04-14',0),(52,1,10,1,'2026-04-14 17:16:00','2026-04-14 18:22:00',3960,'Revisando lo redactado ayer',0,NULL,0,0,'Europe/Madrid',0,0,'work','2026-04-18 10:22:06','2026-04-14',0),(53,1,10,1,'2026-04-18 10:19:00','2026-04-18 12:28:00',7740,'Revisando lo redactado el martes',0,NULL,0,0,'Europe/Madrid',0,0,'work','2026-04-18 12:55:07','2026-04-18',0),(54,1,10,1,'2026-04-18 14:02:00','2026-04-18 14:55:00',3180,'Revisando la redacción de las iteraciones',0,NULL,0,0,'Europe/Madrid',0,0,'work','2026-04-18 15:00:05','2026-04-18',0),(55,1,10,1,'2026-04-18 14:56:00','2026-04-18 15:16:00',1200,'Subiendo cambios para adoptar las exigencias del profe y la redacción de las iteraciones 1 a 4',0,NULL,0,0,'Europe/Madrid',0,0,'work','2026-04-18 15:15:03','2026-04-18',0);
/*!40000 ALTER TABLE `kimai2_timesheet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kimai2_timesheet_meta`
--

DROP TABLE IF EXISTS `kimai2_timesheet_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kimai2_timesheet_meta` (
  `id` int NOT NULL AUTO_INCREMENT,
  `timesheet_id` int NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `visible` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_CB606CBAABDD46BE5E237E06` (`timesheet_id`,`name`),
  KEY `IDX_CB606CBAABDD46BE` (`timesheet_id`),
  CONSTRAINT `FK_CB606CBAABDD46BE` FOREIGN KEY (`timesheet_id`) REFERENCES `kimai2_timesheet` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kimai2_timesheet_meta`
--

LOCK TABLES `kimai2_timesheet_meta` WRITE;
/*!40000 ALTER TABLE `kimai2_timesheet_meta` DISABLE KEYS */;
/*!40000 ALTER TABLE `kimai2_timesheet_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kimai2_timesheet_tags`
--

DROP TABLE IF EXISTS `kimai2_timesheet_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kimai2_timesheet_tags` (
  `timesheet_id` int NOT NULL,
  `tag_id` int NOT NULL,
  PRIMARY KEY (`timesheet_id`,`tag_id`),
  KEY `IDX_E3284EFEABDD46BE` (`timesheet_id`),
  KEY `IDX_E3284EFEBAD26311` (`tag_id`),
  CONSTRAINT `FK_732EECA9ABDD46BE` FOREIGN KEY (`timesheet_id`) REFERENCES `kimai2_timesheet` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_732EECA9BAD26311` FOREIGN KEY (`tag_id`) REFERENCES `kimai2_tags` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kimai2_timesheet_tags`
--

LOCK TABLES `kimai2_timesheet_tags` WRITE;
/*!40000 ALTER TABLE `kimai2_timesheet_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `kimai2_timesheet_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kimai2_user_preferences`
--

DROP TABLE IF EXISTS `kimai2_user_preferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kimai2_user_preferences` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_8D08F631A76ED3955E237E06` (`user_id`,`name`),
  KEY `IDX_8D08F631A76ED395` (`user_id`),
  CONSTRAINT `FK_8D08F631A76ED395` FOREIGN KEY (`user_id`) REFERENCES `kimai2_users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kimai2_user_preferences`
--

LOCK TABLES `kimai2_user_preferences` WRITE;
/*!40000 ALTER TABLE `kimai2_user_preferences` DISABLE KEYS */;
INSERT INTO `kimai2_user_preferences` VALUES (1,1,'timezone','Europe/Madrid'),(2,1,'language','es'),(3,1,'skin','auto'),(4,1,'hourly_rate','0'),(5,1,'internal_rate',NULL),(6,1,'locale','es_ES'),(7,1,'first_weekday','monday'),(8,1,'update_browser_title','1'),(9,1,'calendar_initial_view','month'),(10,1,'login_initial_view','timesheet'),(11,1,'favorite_routes',''),(12,1,'daily_stats',''),(13,1,'export_decimal',''),(14,1,'__wizards__','intro,profile'),(15,1,'_latest_approval',NULL);
/*!40000 ALTER TABLE `kimai2_user_preferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kimai2_users`
--

DROP TABLE IF EXISTS `kimai2_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kimai2_users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL,
  `registration_date` datetime DEFAULT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `roles` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `last_login` datetime DEFAULT NULL,
  `confirmation_token` varchar(180) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password_requested_at` datetime DEFAULT NULL,
  `api_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `auth` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(7) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `totp_secret` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `totp_enabled` tinyint(1) NOT NULL DEFAULT '0',
  `system_account` tinyint(1) NOT NULL DEFAULT '0',
  `supervisor_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_B9AC5BCEF85E0677` (`username`),
  UNIQUE KEY `UNIQ_B9AC5BCEE7927C74` (`email`),
  UNIQUE KEY `UNIQ_B9AC5BCEC05FB297` (`confirmation_token`),
  KEY `IDX_B9AC5BCE19E9AC5F` (`supervisor_id`),
  CONSTRAINT `FK_B9AC5BCE19E9AC5F` FOREIGN KEY (`supervisor_id`) REFERENCES `kimai2_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kimai2_users`
--

LOCK TABLES `kimai2_users` WRITE;
/*!40000 ALTER TABLE `kimai2_users` DISABLE KEYS */;
INSERT INTO `kimai2_users` VALUES (1,'admin','igngutser@alum.us.es','$2y$13$gCrCalSz/k/P7PgzZKi61uj.fRFQrftDRk6V9pZbRy9ZpAe0g2926','Ignacio',1,'2026-03-09 17:43:03',NULL,NULL,'a:1:{i:0;s:16:\"ROLE_SUPER_ADMIN\";}','2026-04-14 16:16:09',NULL,NULL,NULL,'kimai',NULL,NULL,'Q7UZPNMP7NIDGBKXS5UP67QG3IQ46IDLY6TFXC3FDISTIZZMUDDA',0,0,NULL);
/*!40000 ALTER TABLE `kimai2_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kimai2_users_teams`
--

DROP TABLE IF EXISTS `kimai2_users_teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kimai2_users_teams` (
  `user_id` int NOT NULL,
  `team_id` int NOT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  `teamlead` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_B5E92CF8A76ED395296CD8AE` (`user_id`,`team_id`),
  KEY `IDX_B5E92CF8A76ED395` (`user_id`),
  KEY `IDX_B5E92CF8296CD8AE` (`team_id`),
  CONSTRAINT `FK_B5E92CF8296CD8AE` FOREIGN KEY (`team_id`) REFERENCES `kimai2_teams` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_B5E92CF8A76ED395` FOREIGN KEY (`user_id`) REFERENCES `kimai2_users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kimai2_users_teams`
--

LOCK TABLES `kimai2_users_teams` WRITE;
/*!40000 ALTER TABLE `kimai2_users_teams` DISABLE KEYS */;
/*!40000 ALTER TABLE `kimai2_users_teams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kimai2_working_times`
--

DROP TABLE IF EXISTS `kimai2_working_times`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kimai2_working_times` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `approved_by` int DEFAULT NULL,
  `date` date NOT NULL,
  `expected` int NOT NULL,
  `actual` int NOT NULL,
  `approved_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_F95E4933A76ED395AA9E377A` (`user_id`,`date`),
  KEY `IDX_F95E4933A76ED395` (`user_id`),
  KEY `IDX_F95E49334EA3CB3D` (`approved_by`),
  CONSTRAINT `FK_F95E49334EA3CB3D` FOREIGN KEY (`approved_by`) REFERENCES `kimai2_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_F95E4933A76ED395` FOREIGN KEY (`user_id`) REFERENCES `kimai2_users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kimai2_working_times`
--

LOCK TABLES `kimai2_working_times` WRITE;
/*!40000 ALTER TABLE `kimai2_working_times` DISABLE KEYS */;
/*!40000 ALTER TABLE `kimai2_working_times` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migration_versions`
--

DROP TABLE IF EXISTS `migration_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migration_versions` (
  `version` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migration_versions`
--

LOCK TABLES `migration_versions` WRITE;
/*!40000 ALTER TABLE `migration_versions` DISABLE KEYS */;
INSERT INTO `migration_versions` VALUES ('DoctrineMigrations\\Version20180701120000','2026-03-09 17:42:35',497),('DoctrineMigrations\\Version20180715160326','2026-03-09 17:42:36',204),('DoctrineMigrations\\Version20180730044139','2026-03-09 17:42:36',68),('DoctrineMigrations\\Version20180805183527','2026-03-09 17:42:36',35),('DoctrineMigrations\\Version20180903202256','2026-03-09 17:42:36',34),('DoctrineMigrations\\Version20180905190737','2026-03-09 17:42:36',87),('DoctrineMigrations\\Version20180924111853','2026-03-09 17:42:36',60),('DoctrineMigrations\\Version20181031220003','2026-03-09 17:42:36',399),('DoctrineMigrations\\Version20190124004014','2026-03-09 17:42:37',31),('DoctrineMigrations\\Version20190201150324','2026-03-09 17:42:37',20),('DoctrineMigrations\\Version20190219200020','2026-03-09 17:42:37',2),('DoctrineMigrations\\Version20190305152308','2026-03-09 17:42:37',235),('DoctrineMigrations\\Version20190321181243','2026-03-09 17:42:37',24),('DoctrineMigrations\\Version20190502161758','2026-03-09 17:42:37',67),('DoctrineMigrations\\Version20190510205245','2026-03-09 17:42:37',72),('DoctrineMigrations\\Version20190605171157','2026-03-09 17:42:37',71),('DoctrineMigrations\\Version20190617100845','2026-03-09 17:42:37',386),('DoctrineMigrations\\Version20190706224211','2026-03-09 17:42:38',201),('DoctrineMigrations\\Version20190706224219','2026-03-09 17:42:38',224),('DoctrineMigrations\\Version20190729162655','2026-03-09 17:42:38',119),('DoctrineMigrations\\Version20190730123324','2026-03-09 17:42:38',804),('DoctrineMigrations\\Version20190813162649','2026-03-09 17:42:39',122),('DoctrineMigrations\\Version20191024100951','2026-03-09 17:42:39',67),('DoctrineMigrations\\Version20191108151534','2026-03-09 17:42:39',208),('DoctrineMigrations\\Version20191113132640','2026-03-09 17:42:39',26),('DoctrineMigrations\\Version20191116110124','2026-03-09 17:42:39',70),('DoctrineMigrations\\Version20191204120823','2026-03-09 17:42:39',42),('DoctrineMigrations\\Version20200109102138','2026-03-09 17:42:40',459),('DoctrineMigrations\\Version20200125123942','2026-03-09 17:42:40',71),('DoctrineMigrations\\Version20200204124425','2026-03-09 17:42:40',56),('DoctrineMigrations\\Version20200205115243','2026-03-09 17:42:40',686),('DoctrineMigrations\\Version20200205115244','2026-03-09 17:42:41',103),('DoctrineMigrations\\Version20200308171950','2026-03-09 17:42:41',276),('DoctrineMigrations\\Version20200323163038','2026-03-09 17:42:41',123),('DoctrineMigrations\\Version20200323163039','2026-03-09 17:42:41',0),('DoctrineMigrations\\Version20200413133226','2026-03-09 17:42:41',44),('DoctrineMigrations\\Version20200524142042','2026-03-09 17:42:41',50),('DoctrineMigrations\\Version20200705152310','2026-03-09 17:42:41',94),('DoctrineMigrations\\Version20200725213424','2026-03-09 17:42:42',291),('DoctrineMigrations\\Version20210316224358','2026-03-09 17:42:42',204),('DoctrineMigrations\\Version20210320162820','2026-03-09 17:42:42',70),('DoctrineMigrations\\Version20210405105611','2026-03-09 17:42:42',54),('DoctrineMigrations\\Version20210605154245','2026-03-09 17:42:42',169),('DoctrineMigrations\\Version20210704111542','2026-03-09 17:42:42',95),('DoctrineMigrations\\Version20210717211144','2026-03-09 17:42:42',56),('DoctrineMigrations\\Version20210719123928','2026-03-09 17:42:43',96),('DoctrineMigrations\\Version20210727104955','2026-03-09 17:42:43',256),('DoctrineMigrations\\Version20210802152259','2026-03-09 17:42:43',67),('DoctrineMigrations\\Version20210802152814','2026-03-09 17:42:43',13),('DoctrineMigrations\\Version20210802160837','2026-03-09 17:42:43',135),('DoctrineMigrations\\Version20210802174318','2026-03-09 17:42:43',92),('DoctrineMigrations\\Version20210802174319','2026-03-09 17:42:43',1),('DoctrineMigrations\\Version20210802174320','2026-03-09 17:42:43',97),('DoctrineMigrations\\Version20211008092010','2026-03-09 17:42:43',26),('DoctrineMigrations\\Version20211230163612','2026-03-09 17:42:43',49),('DoctrineMigrations\\Version20220101204501','2026-03-09 17:42:43',120),('DoctrineMigrations\\Version20220315224645','2026-03-09 17:42:44',115),('DoctrineMigrations\\Version20220404150236','2026-03-09 17:42:44',81),('DoctrineMigrations\\Version20220531145920','2026-03-09 17:42:44',86),('DoctrineMigrations\\Version20220722125847','2026-03-09 17:42:44',63),('DoctrineMigrations\\Version20230126002049','2026-03-09 17:42:44',307),('DoctrineMigrations\\Version20230126002050','2026-03-09 17:42:44',103),('DoctrineMigrations\\Version20230327143628','2026-03-09 17:42:44',184),('DoctrineMigrations\\Version20230606125948','2026-03-09 17:42:44',42),('DoctrineMigrations\\Version20230819090536','2026-03-09 17:42:45',194),('DoctrineMigrations\\Version20231130000719','2026-03-09 17:42:45',1),('DoctrineMigrations\\Version20240214061246','2026-03-09 17:42:45',118),('DoctrineMigrations\\Version20240326125247','2026-03-09 17:42:45',118),('DoctrineMigrations\\Version20240920105524','2026-03-09 17:42:45',1),('DoctrineMigrations\\Version20240926111739','2026-03-09 17:42:45',114),('DoctrineMigrations\\Version20250608143244','2026-03-09 17:42:45',52),('DoctrineMigrations\\Version20251031142000','2026-03-09 17:42:45',180),('DoctrineMigrations\\Version20251031143000','2026-03-09 17:42:45',107),('DoctrineMigrations\\Version20251214160001','2026-03-09 17:42:45',55);
/*!40000 ALTER TABLE `migration_versions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-04-18 15:36:50
