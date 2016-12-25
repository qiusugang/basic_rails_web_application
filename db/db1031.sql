-- MySQL dump 10.13  Distrib 5.1.73, for redhat-linux-gnu (x86_64)
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
-- Table structure for table `ar_internal_metadata`
--

DROP TABLE IF EXISTS `ar_internal_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ar_internal_metadata` (
  `key` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ar_internal_metadata`
--

LOCK TABLES `ar_internal_metadata` WRITE;
/*!40000 ALTER TABLE `ar_internal_metadata` DISABLE KEYS */;
INSERT INTO `ar_internal_metadata` VALUES ('environment','development','2016-09-22 09:40:48','2016-09-22 09:40:48');
/*!40000 ALTER TABLE `ar_internal_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `articles`
--

DROP TABLE IF EXISTS `articles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `articles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `content` text,
  `user_id` int(11) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articles`
--

LOCK TABLES `articles` WRITE;
/*!40000 ALTER TABLE `articles` DISABLE KEYS */;
INSERT INTO `articles` VALUES (1,'The test first acticle','method delete_all Importance_2<br>\r\nRuby on Rails latest stable (v4.2.7) - 0 notes - Class: ActiveRecord::Base<br>\r\n<br>\r\nIcon_private_sm = private<br>\r\nIcon_protected_sm = protected<br>\r\n<br>\r\nMethod deprecated or moved<br>\r\nThis method is deprecated or moved on the latest stable version. The last existing version (v2.3.8) is shown here.\r\n<br>\r\nThese similar methods exist in v4.2.7:<br>\r\n<br>\r\nActiveRecord::Relation#delete_all<br>\r\nActiveRecord::Associations::CollectionAssociation#delete_all<br>\r\nActiveRecord::Associations::CollectionProxy#delete_all<br>\r\nActiveRecord::NullRelation#delete_all<br>\r\ndelete_all(conditions = nil) public<br>\r\nDeletes the records matching conditions without instantiating the records first, and hence not calling the destroy method nor invoking callbacks. This is a single SQL DELETE statement that goes straight to the database, much more efficient than destroy_all. Be careful with relations though, in particular :dependent rules defined on associations are not honored. Returns the number of rows affected.<br>\r\n<br>\r\nParameters<br>\r\n<br>\r\nconditions - Conditions are specified the same way as with find method.<br>\r\nExample<br>\r\n<br>\r\n  Post.delete_all(\"person_id = 5 AND (category = \'Something\' OR category = \'Else\')\")<br>\r\n  Post.delete_all([\"person_id = ? AND (category = ? OR category = ?)\", 5, \'Something\', \'Else\'])<br>\r\nBoth calls delete the affected posts all at once with a single DELETE statement. If you need to destroy dependent associations or call your before_* or after_destroy callbacks, use the destroy_all method instead.<br>',2,'2016-10-24 09:08:14','2016-10-25 08:08:15'),(2,'test article','This is test from testuser21',1,'2016-10-24 09:24:33','2016-10-24 09:24:33'),(3,'The test second acticle','Axure RP首页、文档和下载 - 原型制作软件 - 开源中国社区\r\nAxureRP 是一个快速原型制作软件，由美国Axure Software Solutions, Inc.公司开发。 Axure RP 能让操作它的人快速准确的创建基于Web的网站流程图、原型页面、交互体验 ...\r\nwww.oschina.net/p/axure+rp\r\n',2,'2016-10-26 05:32:38','2016-10-26 05:32:38');
/*!40000 ALTER TABLE `articles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `credentials`
--

DROP TABLE IF EXISTS `credentials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `credentials` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `match` varchar(128) NOT NULL,
  `params` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pkey` (`match`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=751 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `credentials`
--

LOCK TABLES `credentials` WRITE;
/*!40000 ALTER TABLE `credentials` DISABLE KEYS */;
INSERT INTO `credentials` VALUES (693,'articles#create#1','true','2016-10-25 07:55:42','2016-10-25 07:55:42'),(694,'articles#new#1','true','2016-10-25 07:55:42','2016-10-25 07:55:42'),(695,'articles#update#1','true','2016-10-25 07:55:42','2016-10-25 07:55:42'),(696,'articles#edit#1','true','2016-10-25 07:55:43','2016-10-25 07:55:43'),(697,'articles#destroy#1','true','2016-10-25 07:55:43','2016-10-25 07:55:43'),(698,'users#index#1','true','2016-10-25 07:55:43','2016-10-25 07:55:43'),(699,'users#index#4','true','2016-10-25 07:55:43','2016-10-25 07:55:43'),(700,'users#show#1','true','2016-10-25 07:55:43','2016-10-25 07:55:43'),(701,'users#show#4','true','2016-10-25 07:55:43','2016-10-25 07:55:43'),(702,'users#edit#1','is_admin? || session[:user][\'id\']==params[\'id\'].to_i','2016-10-25 07:55:43','2016-10-25 07:55:43'),(703,'users#edit#4','is_admin? || session[:user][\'id\']==params[\'id\'].to_i','2016-10-25 07:55:43','2016-10-25 07:55:43'),(704,'users#update#1','is_admin? || session[:user][\'id\']==params[\'id\'].to_i','2016-10-25 07:55:43','2016-10-25 07:55:43'),(705,'users#update#4','is_admin? || session[:user][\'id\']==params[\'id\'].to_i','2016-10-25 07:55:43','2016-10-25 07:55:43'),(706,'articles#index#1','true','2016-10-25 07:55:43','2016-10-25 07:55:43'),(707,'articles#index#4','true','2016-10-25 07:55:43','2016-10-25 07:55:43'),(708,'articles#show#1','true','2016-10-25 07:55:43','2016-10-25 07:55:43'),(709,'articles#show#4','true','2016-10-25 07:55:43','2016-10-25 07:55:43'),(710,'users#destroy#2','is_admin?','2016-10-25 07:55:43','2016-10-25 07:55:43'),(711,'articles#destroy#2','true','2016-10-25 07:55:43','2016-10-25 07:55:43'),(712,'articles#create#2','true','2016-10-25 07:55:43','2016-10-25 07:55:43'),(713,'articles#new#2','true','2016-10-25 07:55:43','2016-10-25 07:55:43'),(714,'articles#update#2','true','2016-10-25 07:55:43','2016-10-25 07:55:43'),(715,'articles#edit#2','true','2016-10-25 07:55:43','2016-10-25 07:55:43'),(716,'users#index#2','true','2016-10-25 07:55:43','2016-10-25 07:55:43'),(717,'users#show#2','true','2016-10-25 07:55:43','2016-10-25 07:55:43'),(718,'users#edit#2','is_admin? || session[:user][\'id\']==params[\'id\'].to_i','2016-10-25 07:55:44','2016-10-25 07:55:44'),(719,'users#update#2','is_admin? || session[:user][\'id\']==params[\'id\'].to_i','2016-10-25 07:55:44','2016-10-25 07:55:44'),(720,'articles#index#2','true','2016-10-25 07:55:44','2016-10-25 07:55:44'),(721,'articles#show#2','true','2016-10-25 07:55:44','2016-10-25 07:55:44'),(722,'rules#index#3','true','2016-10-25 07:55:44','2016-10-25 07:55:44'),(723,'rules#new#3','true','2016-10-25 07:55:44','2016-10-25 07:55:44'),(724,'rules#edit#3','true','2016-10-25 07:55:44','2016-10-25 07:55:44'),(725,'rules#create#3','true','2016-10-25 07:55:44','2016-10-25 07:55:44'),(726,'rules#update#3','true','2016-10-25 07:55:44','2016-10-25 07:55:44'),(727,'rules#show#3','true','2016-10-25 07:55:44','2016-10-25 07:55:44'),(728,'roles#build_credentials#3','true','2016-10-25 07:55:44','2016-10-25 07:55:44'),(729,'roles#index#3','true','2016-10-25 07:55:44','2016-10-25 07:55:44'),(730,'roles#show#3','true','2016-10-25 07:55:44','2016-10-25 07:55:44'),(731,'roles#remove#3','true','2016-10-25 07:55:44','2016-10-25 07:55:44'),(732,'roles#add#3','true','2016-10-25 07:55:44','2016-10-25 07:55:44'),(733,'roles#edit#3','true','2016-10-25 07:55:44','2016-10-25 07:55:44'),(734,'roles#new#3','true','2016-10-25 07:55:44','2016-10-25 07:55:44'),(735,'roles#create#3','true','2016-10-25 07:55:44','2016-10-25 07:55:44'),(736,'roles#update#3','true','2016-10-25 07:55:44','2016-10-25 07:55:44'),(737,'roles#destroy#3','true','2016-10-25 07:55:44','2016-10-25 07:55:44'),(738,'rules#destroy#3','true','2016-10-25 07:55:44','2016-10-25 07:55:44'),(739,'users#destroy#3','is_admin?','2016-10-25 07:55:44','2016-10-25 07:55:44'),(740,'articles#destroy#3','true','2016-10-25 07:55:44','2016-10-25 07:55:44'),(741,'articles#create#3','true','2016-10-25 07:55:44','2016-10-25 07:55:44'),(742,'articles#new#3','true','2016-10-25 07:55:44','2016-10-25 07:55:44'),(743,'articles#update#3','true','2016-10-25 07:55:44','2016-10-25 07:55:44'),(744,'articles#edit#3','true','2016-10-25 07:55:45','2016-10-25 07:55:45'),(745,'users#index#3','true','2016-10-25 07:55:45','2016-10-25 07:55:45'),(746,'users#show#3','true','2016-10-25 07:55:45','2016-10-25 07:55:45'),(747,'users#edit#3','is_admin? || session[:user][\'id\']==params[\'id\'].to_i','2016-10-25 07:55:45','2016-10-25 07:55:45'),(748,'users#update#3','is_admin? || session[:user][\'id\']==params[\'id\'].to_i','2016-10-25 07:55:45','2016-10-25 07:55:45'),(749,'articles#index#3','true','2016-10-25 07:55:45','2016-10-25 07:55:45'),(750,'articles#show#3','true','2016-10-25 07:55:45','2016-10-25 07:55:45');
/*!40000 ALTER TABLE `credentials` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles_rules`
--

LOCK TABLES `roles_rules` WRITE;
/*!40000 ALTER TABLE `roles_rules` DISABLE KEYS */;
INSERT INTO `roles_rules` VALUES (4,3,5,'2016-10-24 14:44:50','2016-10-24 14:44:52'),(5,3,6,'2016-10-24 14:44:50','2016-10-24 14:44:52'),(6,3,7,'2016-10-24 14:44:50','2016-10-24 14:44:52'),(7,3,8,'2016-10-24 14:44:50','2016-10-24 14:44:52'),(8,3,9,'2016-10-24 14:44:50','2016-10-24 14:44:52'),(9,3,10,'2016-10-24 14:44:50','2016-10-24 14:44:52'),(10,3,11,'2016-10-24 14:44:50','2016-10-24 14:44:52'),(13,3,12,'2016-10-24 14:44:50','2016-10-24 14:44:52'),(14,3,13,'2016-10-24 14:44:50','2016-10-24 14:44:52'),(15,3,15,'2016-10-24 08:54:10','2016-10-24 08:54:10'),(16,3,16,'2016-10-24 08:54:12','2016-10-24 08:54:12'),(17,3,14,'2016-10-24 08:54:16','2016-10-24 08:54:16'),(19,1,17,'2016-10-24 09:04:26','2016-10-24 09:04:26'),(20,1,18,'2016-10-24 09:04:29','2016-10-24 09:04:29'),(21,1,20,'2016-10-24 09:04:33','2016-10-24 09:04:33'),(23,1,22,'2016-10-24 09:06:44','2016-10-24 09:06:44'),(24,3,24,'2016-10-24 09:10:46','2016-10-24 09:10:46'),(25,3,23,'2016-10-24 09:10:50','2016-10-24 09:10:50'),(26,3,25,'2016-10-24 09:10:52','2016-10-24 09:10:52'),(27,4,1,'2016-10-25 03:45:32','2016-10-25 03:45:32'),(28,4,3,'2016-10-25 03:45:39','2016-10-25 03:45:39'),(30,4,4,'2016-10-25 04:44:24','2016-10-25 04:44:24'),(31,4,26,'2016-10-25 04:48:08','2016-10-25 04:48:08'),(32,2,2,'2016-10-25 04:48:38','2016-10-25 04:48:38'),(33,4,19,'2016-10-25 05:32:59','2016-10-25 05:32:59'),(34,4,21,'2016-10-25 05:33:05','2016-10-25 05:33:05'),(35,1,27,'2016-10-25 05:34:44','2016-10-25 05:34:44'),(36,3,28,'2016-10-25 06:07:35','2016-10-25 06:07:35'),(37,3,29,'2016-10-25 06:07:38','2016-10-25 06:07:38'),(38,2,27,'2016-10-25 07:54:04','2016-10-25 07:54:04');
/*!40000 ALTER TABLE `roles_rules` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rules`
--

LOCK TABLES `rules` WRITE;
/*!40000 ALTER TABLE `rules` DISABLE KEYS */;
INSERT INTO `rules` VALUES (1,'users','index','true',NULL,'2016-10-18 09:10:52','2016-10-18 09:10:52'),(2,'users','destroy','is_admin?',NULL,'2016-10-18 09:44:07','2016-10-25 04:47:32'),(3,'users','show','true',NULL,'2016-10-18 10:04:16','2016-10-18 10:04:16'),(4,'users','edit','is_admin? || session[:user][\'id\']==params[\'id\'].to_i',NULL,'2016-10-20 09:23:15','2016-10-25 04:46:46'),(5,'rules','index','true',NULL,'2016-10-24 14:41:02','2016-10-24 14:41:04'),(6,'rules','new','true',NULL,'2016-10-24 14:41:44','2016-10-24 14:41:46'),(7,'rules','edit','true',NULL,'2016-10-24 14:42:02','2016-10-24 14:42:04'),(8,'rules','create','true',NULL,'2016-10-24 14:42:44','2016-10-24 14:42:46'),(9,'rules','update','true',NULL,'2016-10-24 14:43:55','2016-10-24 14:43:56'),(10,'rules','show','true',NULL,'2016-10-24 14:44:17','2016-10-24 14:44:19'),(11,'roles','build_credentials','true',NULL,'2016-10-18 09:44:07','2016-10-18 09:44:07'),(12,'roles','index','true',NULL,'2016-10-18 09:44:07','2016-10-18 09:44:07'),(13,'roles','show','true',NULL,'2016-10-24 08:00:48','2016-10-24 08:00:48'),(14,'roles','edit','true',NULL,'2016-10-24 08:15:04','2016-10-24 08:15:04'),(15,'roles','remove','true',NULL,'2016-10-24 08:50:35','2016-10-24 08:50:35'),(16,'roles','add','true',NULL,'2016-10-24 08:50:45','2016-10-24 08:50:45'),(17,'articles','create','true',NULL,'2016-10-24 09:02:29','2016-10-24 09:02:29'),(18,'articles','new','true',NULL,'2016-10-24 09:02:37','2016-10-24 09:02:37'),(19,'articles','index','true',NULL,'2016-10-24 09:02:48','2016-10-24 09:02:48'),(20,'articles','update','true',NULL,'2016-10-24 09:02:56','2016-10-24 09:02:56'),(21,'articles','show','true',NULL,'2016-10-24 09:03:07','2016-10-24 09:03:07'),(22,'articles','edit','true',NULL,'2016-10-24 09:06:30','2016-10-24 09:06:30'),(23,'roles','create','true',NULL,'2016-10-24 09:10:01','2016-10-24 09:10:01'),(24,'roles','new','true',NULL,'2016-10-24 09:10:10','2016-10-24 09:10:10'),(25,'roles','update','true',NULL,'2016-10-24 09:10:19','2016-10-24 09:10:19'),(26,'users','update','is_admin? || session[:user][\'id\']==params[\'id\'].to_i',NULL,'2016-10-25 04:38:44','2016-10-25 04:38:44'),(27,'articles','destroy','true',NULL,'2016-10-25 05:34:29','2016-10-25 05:34:29'),(28,'roles','destroy','true',NULL,'2016-10-25 06:07:12','2016-10-25 06:07:12'),(29,'rules','destroy','true',NULL,'2016-10-25 06:07:25','2016-10-25 06:07:25');
/*!40000 ALTER TABLE `rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20160922091051'),('20160922101422'),('20160922102716'),('20160923024321'),('20161009064017'),('20161018091417'),('20161018092629'),('20161018093510');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `gender` tinyint(4) NOT NULL DEFAULT '0',
  `age` int(11) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `encrypt_password` varchar(128) DEFAULT NULL,
  `password_salt` varchar(64) DEFAULT NULL,
  `role_id` int(11) NOT NULL DEFAULT '4',
  `email` varchar(128) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'testuser21',0,22,'211110.jpg','44bff6aa1e1f6c8f34bdce1819c60dd16230656c','hzdnesov',1,NULL,'2016-10-18 03:17:31','2016-10-20 09:09:06'),(2,'testuser1',0,33,'221111d.jpg','44bff6aa1e1f6c8f34bdce1819c60dd16230656c','hzdnesov',3,NULL,'2016-10-20 08:16:55','2016-10-20 09:09:14'),(3,'testuser23',0,23,'21111f.jpg','004ddf948e5cc535debe4e1f2abd1dfdeb1e1808','qrsdtzdt',4,NULL,'2016-10-25 04:30:55','2016-10-25 04:30:55'),(4,'testuser22',1,23,'4321.jpg','87a78b654e51c643788e688b4e4be6ca9a7970ee','omxrlgdl',4,NULL,'2016-10-25 04:36:35','2016-10-25 04:42:04'),(5,'testuser25',0,42,'3333.jpg','3e20780e6b75a3aec8c4ae2119c63bea0a0e46fc','gfmdjevj',4,NULL,'2016-10-25 04:42:52','2016-10-25 04:42:52'),(6,'特色他',0,23,'11119.jpg','0265b2221e5178f6d129f19942b0fbddb15483f0','kllwcppt',4,NULL,'2016-10-25 07:34:54','2016-10-25 07:34:54'),(7,'testuser26',1,23,'11fxwrtna8134670.jpg','63a72972f4f92b30447f275a4845c2283403045c','qforkdmh',4,NULL,'2016-10-26 05:28:27','2016-10-26 05:28:27'),(8,'admin',1,33,'201604211330182550.jpg','25f5039d3244908e8b8767be8fd3ddcea53b6b8c','lqrfohpr',2,'sugang@2duche.com','2016-10-27 06:50:43','2016-10-27 06:55:17'),(9,'testuser12',0,33,'__.png','586fa75ca297aa49deabb6b657ceebdc64e88719','zyhrovzn',4,'sugang.qiu@jipinauto.com','2016-10-27 07:00:49','2016-10-27 07:00:49');
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

-- Dump completed on 2016-10-31 16:05:55
