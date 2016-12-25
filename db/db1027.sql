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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- 正在导出表  simpleapp_development.articles 的数据：~3 rows (大约)
/*!40000 ALTER TABLE `articles` DISABLE KEYS */;
INSERT INTO `articles` (`id`, `title`, `content`, `user_id`, `created_at`, `updated_at`) VALUES
	(1, 'The test first acticle', 'method delete_all Importance_2<br>\r\nRuby on Rails latest stable (v4.2.7) - 0 notes - Class: ActiveRecord::Base<br>\r\n<br>\r\nIcon_private_sm = private<br>\r\nIcon_protected_sm = protected<br>\r\n<br>\r\nMethod deprecated or moved<br>\r\nThis method is deprecated or moved on the latest stable version. The last existing version (v2.3.8) is shown here.\r\n<br>\r\nThese similar methods exist in v4.2.7:<br>\r\n<br>\r\nActiveRecord::Relation#delete_all<br>\r\nActiveRecord::Associations::CollectionAssociation#delete_all<br>\r\nActiveRecord::Associations::CollectionProxy#delete_all<br>\r\nActiveRecord::NullRelation#delete_all<br>\r\ndelete_all(conditions = nil) public<br>\r\nDeletes the records matching conditions without instantiating the records first, and hence not calling the destroy method nor invoking callbacks. This is a single SQL DELETE statement that goes straight to the database, much more efficient than destroy_all. Be careful with relations though, in particular :dependent rules defined on associations are not honored. Returns the number of rows affected.<br>\r\n<br>\r\nParameters<br>\r\n<br>\r\nconditions - Conditions are specified the same way as with find method.<br>\r\nExample<br>\r\n<br>\r\n  Post.delete_all("person_id = 5 AND (category = \'Something\' OR category = \'Else\')")<br>\r\n  Post.delete_all(["person_id = ? AND (category = ? OR category = ?)", 5, \'Something\', \'Else\'])<br>\r\nBoth calls delete the affected posts all at once with a single DELETE statement. If you need to destroy dependent associations or call your before_* or after_destroy callbacks, use the destroy_all method instead.<br>', 2, '2016-10-24 09:08:14', '2016-10-25 08:08:15'),
	(2, 'test article', 'This is test from testuser21', 1, '2016-10-24 09:24:33', '2016-10-24 09:24:33'),
	(3, 'The test second acticle', 'Axure RP首页、文档和下载 - 原型制作软件 - 开源中国社区\r\nAxureRP 是一个快速原型制作软件，由美国Axure Software Solutions, Inc.公司开发。 Axure RP 能让操作它的人快速准确的创建基于Web的网站流程图、原型页面、交互体验 ...\r\nwww.oschina.net/p/axure+rp\r\n', 2, '2016-10-26 05:32:38', '2016-10-26 05:32:38');
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
) ENGINE=InnoDB AUTO_INCREMENT=751 DEFAULT CHARSET=utf8;

-- 正在导出表  simpleapp_development.credentials 的数据：~58 rows (大约)
/*!40000 ALTER TABLE `credentials` DISABLE KEYS */;
INSERT INTO `credentials` (`id`, `match`, `params`, `created_at`, `updated_at`) VALUES
	(693, 'articles#create#1', 'true', '2016-10-25 07:55:42', '2016-10-25 07:55:42'),
	(694, 'articles#new#1', 'true', '2016-10-25 07:55:42', '2016-10-25 07:55:42'),
	(695, 'articles#update#1', 'true', '2016-10-25 07:55:42', '2016-10-25 07:55:42'),
	(696, 'articles#edit#1', 'true', '2016-10-25 07:55:43', '2016-10-25 07:55:43'),
	(697, 'articles#destroy#1', 'true', '2016-10-25 07:55:43', '2016-10-25 07:55:43'),
	(698, 'users#index#1', 'true', '2016-10-25 07:55:43', '2016-10-25 07:55:43'),
	(699, 'users#index#4', 'true', '2016-10-25 07:55:43', '2016-10-25 07:55:43'),
	(700, 'users#show#1', 'true', '2016-10-25 07:55:43', '2016-10-25 07:55:43'),
	(701, 'users#show#4', 'true', '2016-10-25 07:55:43', '2016-10-25 07:55:43'),
	(702, 'users#edit#1', 'is_admin? || session[:user][\'id\']==params[\'id\'].to_i', '2016-10-25 07:55:43', '2016-10-25 07:55:43'),
	(703, 'users#edit#4', 'is_admin? || session[:user][\'id\']==params[\'id\'].to_i', '2016-10-25 07:55:43', '2016-10-25 07:55:43'),
	(704, 'users#update#1', 'is_admin? || session[:user][\'id\']==params[\'id\'].to_i', '2016-10-25 07:55:43', '2016-10-25 07:55:43'),
	(705, 'users#update#4', 'is_admin? || session[:user][\'id\']==params[\'id\'].to_i', '2016-10-25 07:55:43', '2016-10-25 07:55:43'),
	(706, 'articles#index#1', 'true', '2016-10-25 07:55:43', '2016-10-25 07:55:43'),
	(707, 'articles#index#4', 'true', '2016-10-25 07:55:43', '2016-10-25 07:55:43'),
	(708, 'articles#show#1', 'true', '2016-10-25 07:55:43', '2016-10-25 07:55:43'),
	(709, 'articles#show#4', 'true', '2016-10-25 07:55:43', '2016-10-25 07:55:43'),
	(710, 'users#destroy#2', 'is_admin?', '2016-10-25 07:55:43', '2016-10-25 07:55:43'),
	(711, 'articles#destroy#2', 'true', '2016-10-25 07:55:43', '2016-10-25 07:55:43'),
	(712, 'articles#create#2', 'true', '2016-10-25 07:55:43', '2016-10-25 07:55:43'),
	(713, 'articles#new#2', 'true', '2016-10-25 07:55:43', '2016-10-25 07:55:43'),
	(714, 'articles#update#2', 'true', '2016-10-25 07:55:43', '2016-10-25 07:55:43'),
	(715, 'articles#edit#2', 'true', '2016-10-25 07:55:43', '2016-10-25 07:55:43'),
	(716, 'users#index#2', 'true', '2016-10-25 07:55:43', '2016-10-25 07:55:43'),
	(717, 'users#show#2', 'true', '2016-10-25 07:55:43', '2016-10-25 07:55:43'),
	(718, 'users#edit#2', 'is_admin? || session[:user][\'id\']==params[\'id\'].to_i', '2016-10-25 07:55:44', '2016-10-25 07:55:44'),
	(719, 'users#update#2', 'is_admin? || session[:user][\'id\']==params[\'id\'].to_i', '2016-10-25 07:55:44', '2016-10-25 07:55:44'),
	(720, 'articles#index#2', 'true', '2016-10-25 07:55:44', '2016-10-25 07:55:44'),
	(721, 'articles#show#2', 'true', '2016-10-25 07:55:44', '2016-10-25 07:55:44'),
	(722, 'rules#index#3', 'true', '2016-10-25 07:55:44', '2016-10-25 07:55:44'),
	(723, 'rules#new#3', 'true', '2016-10-25 07:55:44', '2016-10-25 07:55:44'),
	(724, 'rules#edit#3', 'true', '2016-10-25 07:55:44', '2016-10-25 07:55:44'),
	(725, 'rules#create#3', 'true', '2016-10-25 07:55:44', '2016-10-25 07:55:44'),
	(726, 'rules#update#3', 'true', '2016-10-25 07:55:44', '2016-10-25 07:55:44'),
	(727, 'rules#show#3', 'true', '2016-10-25 07:55:44', '2016-10-25 07:55:44'),
	(728, 'roles#build_credentials#3', 'true', '2016-10-25 07:55:44', '2016-10-25 07:55:44'),
	(729, 'roles#index#3', 'true', '2016-10-25 07:55:44', '2016-10-25 07:55:44'),
	(730, 'roles#show#3', 'true', '2016-10-25 07:55:44', '2016-10-25 07:55:44'),
	(731, 'roles#remove#3', 'true', '2016-10-25 07:55:44', '2016-10-25 07:55:44'),
	(732, 'roles#add#3', 'true', '2016-10-25 07:55:44', '2016-10-25 07:55:44'),
	(733, 'roles#edit#3', 'true', '2016-10-25 07:55:44', '2016-10-25 07:55:44'),
	(734, 'roles#new#3', 'true', '2016-10-25 07:55:44', '2016-10-25 07:55:44'),
	(735, 'roles#create#3', 'true', '2016-10-25 07:55:44', '2016-10-25 07:55:44'),
	(736, 'roles#update#3', 'true', '2016-10-25 07:55:44', '2016-10-25 07:55:44'),
	(737, 'roles#destroy#3', 'true', '2016-10-25 07:55:44', '2016-10-25 07:55:44'),
	(738, 'rules#destroy#3', 'true', '2016-10-25 07:55:44', '2016-10-25 07:55:44'),
	(739, 'users#destroy#3', 'is_admin?', '2016-10-25 07:55:44', '2016-10-25 07:55:44'),
	(740, 'articles#destroy#3', 'true', '2016-10-25 07:55:44', '2016-10-25 07:55:44'),
	(741, 'articles#create#3', 'true', '2016-10-25 07:55:44', '2016-10-25 07:55:44'),
	(742, 'articles#new#3', 'true', '2016-10-25 07:55:44', '2016-10-25 07:55:44'),
	(743, 'articles#update#3', 'true', '2016-10-25 07:55:44', '2016-10-25 07:55:44'),
	(744, 'articles#edit#3', 'true', '2016-10-25 07:55:45', '2016-10-25 07:55:45'),
	(745, 'users#index#3', 'true', '2016-10-25 07:55:45', '2016-10-25 07:55:45'),
	(746, 'users#show#3', 'true', '2016-10-25 07:55:45', '2016-10-25 07:55:45'),
	(747, 'users#edit#3', 'is_admin? || session[:user][\'id\']==params[\'id\'].to_i', '2016-10-25 07:55:45', '2016-10-25 07:55:45'),
	(748, 'users#update#3', 'is_admin? || session[:user][\'id\']==params[\'id\'].to_i', '2016-10-25 07:55:45', '2016-10-25 07:55:45'),
	(749, 'articles#index#3', 'true', '2016-10-25 07:55:45', '2016-10-25 07:55:45'),
	(750, 'articles#show#3', 'true', '2016-10-25 07:55:45', '2016-10-25 07:55:45');
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
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

-- 正在导出表  simpleapp_development.roles_rules 的数据：~30 rows (大约)
/*!40000 ALTER TABLE `roles_rules` DISABLE KEYS */;
INSERT INTO `roles_rules` (`id`, `role_id`, `rule_id`, `created_at`, `updated_at`) VALUES
	(4, 3, 5, '2016-10-24 14:44:50', '2016-10-24 14:44:52'),
	(5, 3, 6, '2016-10-24 14:44:50', '2016-10-24 14:44:52'),
	(6, 3, 7, '2016-10-24 14:44:50', '2016-10-24 14:44:52'),
	(7, 3, 8, '2016-10-24 14:44:50', '2016-10-24 14:44:52'),
	(8, 3, 9, '2016-10-24 14:44:50', '2016-10-24 14:44:52'),
	(9, 3, 10, '2016-10-24 14:44:50', '2016-10-24 14:44:52'),
	(10, 3, 11, '2016-10-24 14:44:50', '2016-10-24 14:44:52'),
	(13, 3, 12, '2016-10-24 14:44:50', '2016-10-24 14:44:52'),
	(14, 3, 13, '2016-10-24 14:44:50', '2016-10-24 14:44:52'),
	(15, 3, 15, '2016-10-24 08:54:10', '2016-10-24 08:54:10'),
	(16, 3, 16, '2016-10-24 08:54:12', '2016-10-24 08:54:12'),
	(17, 3, 14, '2016-10-24 08:54:16', '2016-10-24 08:54:16'),
	(19, 1, 17, '2016-10-24 09:04:26', '2016-10-24 09:04:26'),
	(20, 1, 18, '2016-10-24 09:04:29', '2016-10-24 09:04:29'),
	(21, 1, 20, '2016-10-24 09:04:33', '2016-10-24 09:04:33'),
	(23, 1, 22, '2016-10-24 09:06:44', '2016-10-24 09:06:44'),
	(24, 3, 24, '2016-10-24 09:10:46', '2016-10-24 09:10:46'),
	(25, 3, 23, '2016-10-24 09:10:50', '2016-10-24 09:10:50'),
	(26, 3, 25, '2016-10-24 09:10:52', '2016-10-24 09:10:52'),
	(27, 4, 1, '2016-10-25 03:45:32', '2016-10-25 03:45:32'),
	(28, 4, 3, '2016-10-25 03:45:39', '2016-10-25 03:45:39'),
	(30, 4, 4, '2016-10-25 04:44:24', '2016-10-25 04:44:24'),
	(31, 4, 26, '2016-10-25 04:48:08', '2016-10-25 04:48:08'),
	(32, 2, 2, '2016-10-25 04:48:38', '2016-10-25 04:48:38'),
	(33, 4, 19, '2016-10-25 05:32:59', '2016-10-25 05:32:59'),
	(34, 4, 21, '2016-10-25 05:33:05', '2016-10-25 05:33:05'),
	(35, 1, 27, '2016-10-25 05:34:44', '2016-10-25 05:34:44'),
	(36, 3, 28, '2016-10-25 06:07:35', '2016-10-25 06:07:35'),
	(37, 3, 29, '2016-10-25 06:07:38', '2016-10-25 06:07:38'),
	(38, 2, 27, '2016-10-25 07:54:04', '2016-10-25 07:54:04');
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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- 正在导出表  simpleapp_development.rules 的数据：~29 rows (大约)
/*!40000 ALTER TABLE `rules` DISABLE KEYS */;
INSERT INTO `rules` (`id`, `controller_name`, `action_name`, `params`, `description`, `created_at`, `updated_at`) VALUES
	(1, 'users', 'index', 'true', NULL, '2016-10-18 09:10:52', '2016-10-18 09:10:52'),
	(2, 'users', 'destroy', 'is_admin?', NULL, '2016-10-18 09:44:07', '2016-10-25 04:47:32'),
	(3, 'users', 'show', 'true', NULL, '2016-10-18 10:04:16', '2016-10-18 10:04:16'),
	(4, 'users', 'edit', 'is_admin? || session[:user][\'id\']==params[\'id\'].to_i', NULL, '2016-10-20 09:23:15', '2016-10-25 04:46:46'),
	(5, 'rules', 'index', 'true', NULL, '2016-10-24 14:41:02', '2016-10-24 14:41:04'),
	(6, 'rules', 'new', 'true', NULL, '2016-10-24 14:41:44', '2016-10-24 14:41:46'),
	(7, 'rules', 'edit', 'true', NULL, '2016-10-24 14:42:02', '2016-10-24 14:42:04'),
	(8, 'rules', 'create', 'true', NULL, '2016-10-24 14:42:44', '2016-10-24 14:42:46'),
	(9, 'rules', 'update', 'true', NULL, '2016-10-24 14:43:55', '2016-10-24 14:43:56'),
	(10, 'rules', 'show', 'true', NULL, '2016-10-24 14:44:17', '2016-10-24 14:44:19'),
	(11, 'roles', 'build_credentials', 'true', NULL, '2016-10-18 09:44:07', '2016-10-18 09:44:07'),
	(12, 'roles', 'index', 'true', NULL, '2016-10-18 09:44:07', '2016-10-18 09:44:07'),
	(13, 'roles', 'show', 'true', NULL, '2016-10-24 08:00:48', '2016-10-24 08:00:48'),
	(14, 'roles', 'edit', 'true', NULL, '2016-10-24 08:15:04', '2016-10-24 08:15:04'),
	(15, 'roles', 'remove', 'true', NULL, '2016-10-24 08:50:35', '2016-10-24 08:50:35'),
	(16, 'roles', 'add', 'true', NULL, '2016-10-24 08:50:45', '2016-10-24 08:50:45'),
	(17, 'articles', 'create', 'true', NULL, '2016-10-24 09:02:29', '2016-10-24 09:02:29'),
	(18, 'articles', 'new', 'true', NULL, '2016-10-24 09:02:37', '2016-10-24 09:02:37'),
	(19, 'articles', 'index', 'true', NULL, '2016-10-24 09:02:48', '2016-10-24 09:02:48'),
	(20, 'articles', 'update', 'true', NULL, '2016-10-24 09:02:56', '2016-10-24 09:02:56'),
	(21, 'articles', 'show', 'true', NULL, '2016-10-24 09:03:07', '2016-10-24 09:03:07'),
	(22, 'articles', 'edit', 'true', NULL, '2016-10-24 09:06:30', '2016-10-24 09:06:30'),
	(23, 'roles', 'create', 'true', NULL, '2016-10-24 09:10:01', '2016-10-24 09:10:01'),
	(24, 'roles', 'new', 'true', NULL, '2016-10-24 09:10:10', '2016-10-24 09:10:10'),
	(25, 'roles', 'update', 'true', NULL, '2016-10-24 09:10:19', '2016-10-24 09:10:19'),
	(26, 'users', 'update', 'is_admin? || session[:user][\'id\']==params[\'id\'].to_i', NULL, '2016-10-25 04:38:44', '2016-10-25 04:38:44'),
	(27, 'articles', 'destroy', 'true', NULL, '2016-10-25 05:34:29', '2016-10-25 05:34:29'),
	(28, 'roles', 'destroy', 'true', NULL, '2016-10-25 06:07:12', '2016-10-25 06:07:12'),
	(29, 'rules', 'destroy', 'true', NULL, '2016-10-25 06:07:25', '2016-10-25 06:07:25');
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
  `role_id` int(11) NOT NULL DEFAULT '4',
  `email` varchar(128) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- 正在导出表  simpleapp_development.users 的数据：~7 rows (大约)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `gender`, `age`, `avatar`, `encrypt_password`, `password_salt`, `role_id`, `email`, `created_at`, `updated_at`) VALUES
	(1, 'testuser21', 0, 22, '211110.jpg', '44bff6aa1e1f6c8f34bdce1819c60dd16230656c', 'hzdnesov', 1, NULL, '2016-10-18 03:17:31', '2016-10-20 09:09:06'),
	(2, 'testuser1', 0, 33, '221111d.jpg', '44bff6aa1e1f6c8f34bdce1819c60dd16230656c', 'hzdnesov', 3, NULL, '2016-10-20 08:16:55', '2016-10-20 09:09:14'),
	(3, 'testuser23', 0, 23, '21111f.jpg', '004ddf948e5cc535debe4e1f2abd1dfdeb1e1808', 'qrsdtzdt', 4, NULL, '2016-10-25 04:30:55', '2016-10-25 04:30:55'),
	(4, 'testuser22', 1, 23, '4321.jpg', '87a78b654e51c643788e688b4e4be6ca9a7970ee', 'omxrlgdl', 4, NULL, '2016-10-25 04:36:35', '2016-10-25 04:42:04'),
	(5, 'testuser25', 0, 42, '3333.jpg', '3e20780e6b75a3aec8c4ae2119c63bea0a0e46fc', 'gfmdjevj', 4, NULL, '2016-10-25 04:42:52', '2016-10-25 04:42:52'),
	(6, '特色他', 0, 23, '11119.jpg', '0265b2221e5178f6d129f19942b0fbddb15483f0', 'kllwcppt', 4, NULL, '2016-10-25 07:34:54', '2016-10-25 07:34:54'),
	(7, 'testuser26', 1, 23, '11fxwrtna8134670.jpg', '63a72972f4f92b30447f275a4845c2283403045c', 'qforkdmh', 4, NULL, '2016-10-26 05:28:27', '2016-10-26 05:28:27');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
