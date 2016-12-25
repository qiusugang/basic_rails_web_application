-- MySQL dump 10.13  Distrib 5.5.53, for debian-linux-gnu (x86_64)
--
-- Host: 192.168.1.112    Database: simpleapp_development
-- ------------------------------------------------------
-- Server version	5.6.25-log

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
-- Table structure for table `rules`
--

DROP TABLE IF EXISTS `rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `controller_name` varchar(128) NOT NULL,
  `action_name` varchar(128) NOT NULL,
  `params` varchar(255) NOT NULL DEFAULT 'true',
  `description` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rules`
--

LOCK TABLES `rules` WRITE;
/*!40000 ALTER TABLE `rules` DISABLE KEYS */;
INSERT INTO `rules` VALUES (1,'users','index','true',NULL,'2016-10-18 09:10:52','2016-10-18 09:10:52'),(2,'users','destroy','is_admin?',NULL,'2016-10-18 09:44:07','2016-10-25 04:47:32'),(3,'users','show','true',NULL,'2016-10-18 10:04:16','2016-10-18 10:04:16'),(4,'users','edit','is_admin? || session[:user][\'id\']==params[\'id\'].to_i',NULL,'2016-10-20 09:23:15','2016-10-25 04:46:46'),(5,'rules','index','true',NULL,'2016-10-24 14:41:02','2016-10-24 14:41:04'),(6,'rules','new','true',NULL,'2016-10-24 14:41:44','2016-10-24 14:41:46'),(7,'rules','edit','true',NULL,'2016-10-24 14:42:02','2016-10-24 14:42:04'),(8,'rules','create','true',NULL,'2016-10-24 14:42:44','2016-10-24 14:42:46'),(9,'rules','update','true',NULL,'2016-10-24 14:43:55','2016-10-24 14:43:56'),(10,'rules','show','true',NULL,'2016-10-24 14:44:17','2016-10-24 14:44:19'),(11,'roles','build_credentials','true',NULL,'2016-10-18 09:44:07','2016-10-18 09:44:07'),(12,'roles','index','true',NULL,'2016-10-18 09:44:07','2016-10-18 09:44:07'),(13,'roles','show','true',NULL,'2016-10-24 08:00:48','2016-10-24 08:00:48'),(14,'roles','edit','true',NULL,'2016-10-24 08:15:04','2016-10-24 08:15:04'),(15,'roles','remove','true',NULL,'2016-10-24 08:50:35','2016-10-24 08:50:35'),(16,'roles','add','true',NULL,'2016-10-24 08:50:45','2016-10-24 08:50:45'),(17,'articles','create','true',NULL,'2016-10-24 09:02:29','2016-10-24 09:02:29'),(18,'articles','new','true',NULL,'2016-10-24 09:02:37','2016-10-24 09:02:37'),(19,'articles','index','true',NULL,'2016-10-24 09:02:48','2016-10-24 09:02:48'),(20,'articles','update','true',NULL,'2016-10-24 09:02:56','2016-10-24 09:02:56'),(21,'articles','show','true',NULL,'2016-10-24 09:03:07','2016-10-24 09:03:07'),(22,'articles','edit','true',NULL,'2016-10-24 09:06:30','2016-10-24 09:06:30'),(23,'roles','create','true',NULL,'2016-10-24 09:10:01','2016-10-24 09:10:01'),(24,'roles','new','true',NULL,'2016-10-24 09:10:10','2016-10-24 09:10:10'),(25,'roles','update','true',NULL,'2016-10-24 09:10:19','2016-10-24 09:10:19'),(26,'users','update','is_admin? || session[:user][\'id\']==params[\'id\'].to_i',NULL,'2016-10-25 04:38:44','2016-10-25 04:38:44'),(27,'articles','destroy','true',NULL,'2016-10-25 05:34:29','2016-10-25 05:34:29'),(28,'roles','destroy','true',NULL,'2016-10-25 06:07:12','2016-10-25 06:07:12'),(29,'rules','destroy','true',NULL,'2016-10-25 06:07:25','2016-10-25 06:07:25'),(30,'settings','new','true',NULL,'2016-11-04 06:18:49','2016-11-04 06:18:49'),(31,'settings','create','true',NULL,'2016-11-04 06:19:00','2016-11-04 07:36:53'),(32,'settings','edit','true',NULL,'2016-11-04 06:19:25','2016-11-04 06:19:25'),(33,'settings','update','true',NULL,'2016-11-04 06:19:36','2016-11-04 06:19:36'),(34,'settings','index','true',NULL,'2016-11-04 06:19:52','2016-11-04 06:19:52'),(35,'settings','show','true',NULL,'2016-11-04 06:20:06','2016-11-04 06:20:06'),(36,'settings','destroy','true',NULL,'2016-11-04 06:25:15','2016-11-04 06:25:15');
/*!40000 ALTER TABLE `rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'operator','operator',4,'2016-10-18 09:42:17','2016-10-18 09:57:28'),(2,'manager','manager of user',1,'2016-10-18 09:42:33','2016-10-18 09:42:33'),(3,'admin','administrator',2,'2016-10-18 09:42:50','2016-10-18 09:42:50'),(4,'public','guest user',0,'2016-10-18 09:51:58','2016-10-18 09:51:58');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles_rules`
--

DROP TABLE IF EXISTS `roles_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles_rules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL DEFAULT '0',
  `rule_id` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles_rules`
--

LOCK TABLES `roles_rules` WRITE;
/*!40000 ALTER TABLE `roles_rules` DISABLE KEYS */;
INSERT INTO `roles_rules` VALUES (4,3,5,'2016-10-24 14:44:50','2016-10-24 14:44:52'),(5,3,6,'2016-10-24 14:44:50','2016-10-24 14:44:52'),(6,3,7,'2016-10-24 14:44:50','2016-10-24 14:44:52'),(7,3,8,'2016-10-24 14:44:50','2016-10-24 14:44:52'),(8,3,9,'2016-10-24 14:44:50','2016-10-24 14:44:52'),(9,3,10,'2016-10-24 14:44:50','2016-10-24 14:44:52'),(10,3,11,'2016-10-24 14:44:50','2016-10-24 14:44:52'),(13,3,12,'2016-10-24 14:44:50','2016-10-24 14:44:52'),(14,3,13,'2016-10-24 14:44:50','2016-10-24 14:44:52'),(15,3,15,'2016-10-24 08:54:10','2016-10-24 08:54:10'),(16,3,16,'2016-10-24 08:54:12','2016-10-24 08:54:12'),(17,3,14,'2016-10-24 08:54:16','2016-10-24 08:54:16'),(19,1,17,'2016-10-24 09:04:26','2016-10-24 09:04:26'),(20,1,18,'2016-10-24 09:04:29','2016-10-24 09:04:29'),(21,1,20,'2016-10-24 09:04:33','2016-10-24 09:04:33'),(23,1,22,'2016-10-24 09:06:44','2016-10-24 09:06:44'),(24,3,24,'2016-10-24 09:10:46','2016-10-24 09:10:46'),(25,3,23,'2016-10-24 09:10:50','2016-10-24 09:10:50'),(26,3,25,'2016-10-24 09:10:52','2016-10-24 09:10:52'),(27,4,1,'2016-10-25 03:45:32','2016-10-25 03:45:32'),(28,4,3,'2016-10-25 03:45:39','2016-10-25 03:45:39'),(30,4,4,'2016-10-25 04:44:24','2016-10-25 04:44:24'),(31,4,26,'2016-10-25 04:48:08','2016-10-25 04:48:08'),(32,2,2,'2016-10-25 04:48:38','2016-10-25 04:48:38'),(33,4,19,'2016-10-25 05:32:59','2016-10-25 05:32:59'),(34,4,21,'2016-10-25 05:33:05','2016-10-25 05:33:05'),(35,1,27,'2016-10-25 05:34:44','2016-10-25 05:34:44'),(36,3,28,'2016-10-25 06:07:35','2016-10-25 06:07:35'),(37,3,29,'2016-10-25 06:07:38','2016-10-25 06:07:38'),(38,2,27,'2016-10-25 07:54:04','2016-10-25 07:54:04'),(39,3,34,'2016-11-04 06:57:53','2016-11-04 06:57:53'),(40,3,35,'2016-11-04 06:57:57','2016-11-04 06:57:57'),(41,3,30,'2016-11-04 06:58:02','2016-11-04 06:58:02'),(43,3,32,'2016-11-04 06:58:14','2016-11-04 06:58:14'),(44,3,33,'2016-11-04 06:58:18','2016-11-04 06:58:18'),(45,3,36,'2016-11-04 06:58:20','2016-11-04 06:58:20'),(46,3,31,'2016-11-04 07:37:13','2016-11-04 07:37:13');
/*!40000 ALTER TABLE `roles_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'public_controller','welcome',1,'2016-11-04 07:37:56','2016-11-04 07:37:56'),(2,'public_action','users#login',1,'2016-11-04 07:38:23','2016-11-04 07:38:23'),(3,'public_action','users#create',2,'2016-11-04 07:38:51','2016-11-04 07:38:51'),(4,'public_action','users#logout',3,'2016-11-04 07:39:11','2016-11-04 07:39:11'),(5,'public_action','users#new',4,'2016-11-04 07:39:37','2016-11-04 07:39:37');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-11-04 16:49:59
