-- --------------------------------------------------------
-- 主机:                           127.0.0.1
-- 服务器版本:                        5.6.25-log - MySQL Community Server (GPL)
-- 服务器操作系统:                      Win64
-- HeidiSQL 版本:                  8.2.0.4675
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- 导出 simpleapp_development 的数据库结构
DROP DATABASE IF EXISTS `simpleapp_development`;
CREATE DATABASE IF NOT EXISTS `simpleapp_development` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `simpleapp_development`;


-- 导出  表 simpleapp_development.articles 结构
DROP TABLE IF EXISTS `articles`;
CREATE TABLE IF NOT EXISTS `articles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `content` text,
  `user_id` int(11) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  simpleapp_development.articles 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `articles` DISABLE KEYS */;
/*!40000 ALTER TABLE `articles` ENABLE KEYS */;


-- 导出  表 simpleapp_development.ar_internal_metadata 结构
DROP TABLE IF EXISTS `ar_internal_metadata`;
CREATE TABLE IF NOT EXISTS `ar_internal_metadata` (
  `key` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  simpleapp_development.ar_internal_metadata 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `ar_internal_metadata` DISABLE KEYS */;
INSERT INTO `ar_internal_metadata` (`key`, `value`, `created_at`, `updated_at`) VALUES
	('environment', 'development', '2016-09-22 09:40:48', '2016-09-22 09:40:48');
/*!40000 ALTER TABLE `ar_internal_metadata` ENABLE KEYS */;


-- 导出  表 simpleapp_development.credentials 结构
DROP TABLE IF EXISTS `credentials`;
CREATE TABLE IF NOT EXISTS `credentials` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `match` varchar(128) NOT NULL,
  `params` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pkey` (`match`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  simpleapp_development.credentials 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `credentials` DISABLE KEYS */;
/*!40000 ALTER TABLE `credentials` ENABLE KEYS */;


-- 导出  表 simpleapp_development.roles 结构
DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- 正在导出表  simpleapp_development.roles 的数据：~3 rows (大约)
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` (`id`, `name`, `description`, `parent_id`, `created_at`, `updated_at`) VALUES
	(1, 'operator', 'operator', 4, '2016-10-18 09:42:17', '2016-10-18 09:57:28'),
	(2, 'manager', 'manager of user', 1, '2016-10-18 09:42:33', '2016-10-18 09:42:33'),
	(3, 'admin', 'administrator', 2, '2016-10-18 09:42:50', '2016-10-18 09:42:50'),
	(4, 'public', 'guest user', 0, '2016-10-18 09:51:58', '2016-10-18 09:51:58');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;


-- 导出  表 simpleapp_development.roles_rules 结构
DROP TABLE IF EXISTS `roles_rules`;
CREATE TABLE IF NOT EXISTS `roles_rules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL DEFAULT '0',
  `rule_id` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- 正在导出表  simpleapp_development.roles_rules 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `roles_rules` DISABLE KEYS */;
INSERT INTO `roles_rules` (`id`, `role_id`, `rule_id`, `created_at`, `updated_at`) VALUES
	(1, 1, 1, '2016-10-21 12:04:07', '2016-10-21 12:04:08'),
	(2, 1, 2, '2016-10-21 12:04:29', '2016-10-21 12:04:30'),
	(3, 1, 3, '2016-10-21 12:05:21', '2016-10-21 12:05:23');
/*!40000 ALTER TABLE `roles_rules` ENABLE KEYS */;


-- 导出  表 simpleapp_development.rules 结构
DROP TABLE IF EXISTS `rules`;
CREATE TABLE IF NOT EXISTS `rules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `controller_name` varchar(128) NOT NULL,
  `action_name` varchar(128) NOT NULL,
  `params` varchar(255) NOT NULL DEFAULT 'true',
  `description` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- 正在导出表  simpleapp_development.rules 的数据：~4 rows (大约)
/*!40000 ALTER TABLE `rules` DISABLE KEYS */;
INSERT INTO `rules` (`id`, `controller_name`, `action_name`, `params`, `description`, `created_at`, `updated_at`) VALUES
	(1, 'users', 'index', 'true', NULL, '2016-10-18 09:10:52', '2016-10-18 09:10:52'),
	(2, 'roles', 'index', 'true', NULL, '2016-10-18 09:44:07', '2016-10-18 09:44:07'),
	(3, 'welcome', 'index', 'true', NULL, '2016-10-18 10:04:16', '2016-10-18 10:04:16'),
	(4, 'users', 'edit', 'session[:user]&&(session[:user][\'role_id\']==2||session[:user][\'id\']==params[:id])', NULL, '2016-10-20 09:23:15', '2016-10-20 09:27:42');
/*!40000 ALTER TABLE `rules` ENABLE KEYS */;


-- 导出  表 simpleapp_development.schema_migrations 结构
DROP TABLE IF EXISTS `schema_migrations`;
CREATE TABLE IF NOT EXISTS `schema_migrations` (
  `version` varchar(255) NOT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  simpleapp_development.schema_migrations 的数据：~8 rows (大约)
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` (`version`) VALUES
	('20160922091051'),
	('20160922101422'),
	('20160922102716'),
	('20160923024321'),
	('20161009064017'),
	('20161018091417'),
	('20161018092629'),
	('20161018093510');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;


-- 导出  表 simpleapp_development.users 结构
DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `gender` tinyint(4) NOT NULL DEFAULT '0',
  `age` int(11) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `encrypt_password` varchar(128) DEFAULT NULL,
  `password_salt` varchar(64) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- 正在导出表  simpleapp_development.users 的数据：~2 rows (大约)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `gender`, `age`, `avatar`, `encrypt_password`, `password_salt`, `role_id`, `created_at`, `updated_at`) VALUES
	(1, 'testuser21', 0, 22, '211110.jpg', '44bff6aa1e1f6c8f34bdce1819c60dd16230656c', 'hzdnesov', 4, '2016-10-18 03:17:31', '2016-10-20 09:09:06'),
	(2, 'testuser1', 0, 33, '221111d.jpg', NULL, NULL, 2, '2016-10-20 08:16:55', '2016-10-20 09:09:14');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
