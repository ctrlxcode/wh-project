/*
Navicat MySQL Data Transfer

Source Server         : MySQL_XAMPP
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : wh_db

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2018-07-26 06:02:07
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for auth_assignment
-- ----------------------------
DROP TABLE IF EXISTS `auth_assignment`;
CREATE TABLE `auth_assignment` (
  `item_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`item_name`,`user_id`),
  CONSTRAINT `auth_assignment_ibfk_1` FOREIGN KEY (`item_name`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of auth_assignment
-- ----------------------------
INSERT INTO `auth_assignment` VALUES ('administrator', '1', '1473420284');
INSERT INTO `auth_assignment` VALUES ('user', '2', '1473475464');

-- ----------------------------
-- Table structure for auth_item
-- ----------------------------
DROP TABLE IF EXISTS `auth_item`;
CREATE TABLE `auth_item` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `rule_name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` text COLLATE utf8_unicode_ci,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `rule_name` (`rule_name`),
  KEY `idx-auth_item-type` (`type`),
  CONSTRAINT `auth_item_ibfk_1` FOREIGN KEY (`rule_name`) REFERENCES `auth_rule` (`name`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of auth_item
-- ----------------------------
INSERT INTO `auth_item` VALUES ('/*', '2', null, null, null, '1473419986', '1473419986');
INSERT INTO `auth_item` VALUES ('/admin/*', '2', null, null, null, '1473419986', '1473419986');
INSERT INTO `auth_item` VALUES ('/admin/assignment/*', '2', null, null, null, '1473419986', '1473419986');
INSERT INTO `auth_item` VALUES ('/admin/assignment/assign', '2', null, null, null, '1473419986', '1473419986');
INSERT INTO `auth_item` VALUES ('/admin/assignment/index', '2', null, null, null, '1473419986', '1473419986');
INSERT INTO `auth_item` VALUES ('/admin/assignment/revoke', '2', null, null, null, '1473419986', '1473419986');
INSERT INTO `auth_item` VALUES ('/admin/assignment/view', '2', null, null, null, '1473419986', '1473419986');
INSERT INTO `auth_item` VALUES ('/admin/default/*', '2', null, null, null, '1473419986', '1473419986');
INSERT INTO `auth_item` VALUES ('/admin/default/index', '2', null, null, null, '1473419986', '1473419986');
INSERT INTO `auth_item` VALUES ('/admin/menu/*', '2', null, null, null, '1473419986', '1473419986');
INSERT INTO `auth_item` VALUES ('/admin/menu/create', '2', null, null, null, '1473419986', '1473419986');
INSERT INTO `auth_item` VALUES ('/admin/menu/delete', '2', null, null, null, '1473419986', '1473419986');
INSERT INTO `auth_item` VALUES ('/admin/menu/index', '2', null, null, null, '1473419986', '1473419986');
INSERT INTO `auth_item` VALUES ('/admin/menu/update', '2', null, null, null, '1473419986', '1473419986');
INSERT INTO `auth_item` VALUES ('/admin/menu/view', '2', null, null, null, '1473419986', '1473419986');
INSERT INTO `auth_item` VALUES ('/admin/permission/*', '2', null, null, null, '1473419986', '1473419986');
INSERT INTO `auth_item` VALUES ('/admin/permission/assign', '2', null, null, null, '1473419986', '1473419986');
INSERT INTO `auth_item` VALUES ('/admin/permission/create', '2', null, null, null, '1473419986', '1473419986');
INSERT INTO `auth_item` VALUES ('/admin/permission/delete', '2', null, null, null, '1473419986', '1473419986');
INSERT INTO `auth_item` VALUES ('/admin/permission/index', '2', null, null, null, '1473419986', '1473419986');
INSERT INTO `auth_item` VALUES ('/admin/permission/remove', '2', null, null, null, '1473419986', '1473419986');
INSERT INTO `auth_item` VALUES ('/admin/permission/update', '2', null, null, null, '1473419986', '1473419986');
INSERT INTO `auth_item` VALUES ('/admin/permission/view', '2', null, null, null, '1473419986', '1473419986');
INSERT INTO `auth_item` VALUES ('/admin/role/*', '2', null, null, null, '1473419986', '1473419986');
INSERT INTO `auth_item` VALUES ('/admin/role/assign', '2', null, null, null, '1473419986', '1473419986');
INSERT INTO `auth_item` VALUES ('/admin/role/create', '2', null, null, null, '1473419986', '1473419986');
INSERT INTO `auth_item` VALUES ('/admin/role/delete', '2', null, null, null, '1473419986', '1473419986');
INSERT INTO `auth_item` VALUES ('/admin/role/index', '2', null, null, null, '1473419986', '1473419986');
INSERT INTO `auth_item` VALUES ('/admin/role/remove', '2', null, null, null, '1473419986', '1473419986');
INSERT INTO `auth_item` VALUES ('/admin/role/update', '2', null, null, null, '1473419986', '1473419986');
INSERT INTO `auth_item` VALUES ('/admin/role/view', '2', null, null, null, '1473419986', '1473419986');
INSERT INTO `auth_item` VALUES ('/admin/route/*', '2', null, null, null, '1473419986', '1473419986');
INSERT INTO `auth_item` VALUES ('/admin/route/assign', '2', null, null, null, '1473419986', '1473419986');
INSERT INTO `auth_item` VALUES ('/admin/route/create', '2', null, null, null, '1473419986', '1473419986');
INSERT INTO `auth_item` VALUES ('/admin/route/index', '2', null, null, null, '1473419986', '1473419986');
INSERT INTO `auth_item` VALUES ('/admin/route/refresh', '2', null, null, null, '1473419986', '1473419986');
INSERT INTO `auth_item` VALUES ('/admin/route/remove', '2', null, null, null, '1473419986', '1473419986');
INSERT INTO `auth_item` VALUES ('/admin/rule/*', '2', null, null, null, '1473419986', '1473419986');
INSERT INTO `auth_item` VALUES ('/admin/rule/create', '2', null, null, null, '1473419986', '1473419986');
INSERT INTO `auth_item` VALUES ('/admin/rule/delete', '2', null, null, null, '1473419986', '1473419986');
INSERT INTO `auth_item` VALUES ('/admin/rule/index', '2', null, null, null, '1473419986', '1473419986');
INSERT INTO `auth_item` VALUES ('/admin/rule/update', '2', null, null, null, '1473419986', '1473419986');
INSERT INTO `auth_item` VALUES ('/admin/rule/view', '2', null, null, null, '1473419986', '1473419986');
INSERT INTO `auth_item` VALUES ('/admin/user/*', '2', null, null, null, '1473419986', '1473419986');
INSERT INTO `auth_item` VALUES ('/admin/user/activate', '2', null, null, null, '1473419986', '1473419986');
INSERT INTO `auth_item` VALUES ('/admin/user/change-password', '2', null, null, null, '1473419986', '1473419986');
INSERT INTO `auth_item` VALUES ('/admin/user/delete', '2', null, null, null, '1473419986', '1473419986');
INSERT INTO `auth_item` VALUES ('/admin/user/index', '2', null, null, null, '1473419986', '1473419986');
INSERT INTO `auth_item` VALUES ('/admin/user/login', '2', null, null, null, '1473419986', '1473419986');
INSERT INTO `auth_item` VALUES ('/admin/user/logout', '2', null, null, null, '1473419986', '1473419986');
INSERT INTO `auth_item` VALUES ('/admin/user/request-password-reset', '2', null, null, null, '1473419986', '1473419986');
INSERT INTO `auth_item` VALUES ('/admin/user/reset-password', '2', null, null, null, '1473419986', '1473419986');
INSERT INTO `auth_item` VALUES ('/admin/user/signup', '2', null, null, null, '1473419986', '1473419986');
INSERT INTO `auth_item` VALUES ('/admin/user/view', '2', null, null, null, '1473419986', '1473419986');
INSERT INTO `auth_item` VALUES ('/debug/*', '2', null, null, null, '1473419986', '1473419986');
INSERT INTO `auth_item` VALUES ('/debug/default/*', '2', null, null, null, '1473419986', '1473419986');
INSERT INTO `auth_item` VALUES ('/debug/default/db-explain', '2', null, null, null, '1473419986', '1473419986');
INSERT INTO `auth_item` VALUES ('/debug/default/download-mail', '2', null, null, null, '1473419986', '1473419986');
INSERT INTO `auth_item` VALUES ('/debug/default/index', '2', null, null, null, '1473419986', '1473419986');
INSERT INTO `auth_item` VALUES ('/debug/default/toolbar', '2', null, null, null, '1473419986', '1473419986');
INSERT INTO `auth_item` VALUES ('/debug/default/view', '2', null, null, null, '1473419986', '1473419986');
INSERT INTO `auth_item` VALUES ('/gii/*', '2', null, null, null, '1473419986', '1473419986');
INSERT INTO `auth_item` VALUES ('/gii/default/*', '2', null, null, null, '1473419986', '1473419986');
INSERT INTO `auth_item` VALUES ('/gii/default/action', '2', null, null, null, '1473419986', '1473419986');
INSERT INTO `auth_item` VALUES ('/gii/default/diff', '2', null, null, null, '1473419986', '1473419986');
INSERT INTO `auth_item` VALUES ('/gii/default/index', '2', null, null, null, '1473419986', '1473419986');
INSERT INTO `auth_item` VALUES ('/gii/default/preview', '2', null, null, null, '1473419986', '1473419986');
INSERT INTO `auth_item` VALUES ('/gii/default/view', '2', null, null, null, '1473419986', '1473419986');
INSERT INTO `auth_item` VALUES ('/post/*', '2', null, null, null, '1473419986', '1473419986');
INSERT INTO `auth_item` VALUES ('/post/create', '2', null, null, null, '1473419986', '1473419986');
INSERT INTO `auth_item` VALUES ('/post/delete', '2', null, null, null, '1473419986', '1473419986');
INSERT INTO `auth_item` VALUES ('/post/index', '2', null, null, null, '1473419986', '1473419986');
INSERT INTO `auth_item` VALUES ('/post/update', '2', null, null, null, '1473419986', '1473419986');
INSERT INTO `auth_item` VALUES ('/post/view', '2', null, null, null, '1473419986', '1473419986');
INSERT INTO `auth_item` VALUES ('/posts/*', '2', null, null, null, '1473419986', '1473419986');
INSERT INTO `auth_item` VALUES ('/posts/create', '2', null, null, null, '1473419986', '1473419986');
INSERT INTO `auth_item` VALUES ('/posts/delete', '2', null, null, null, '1473419986', '1473419986');
INSERT INTO `auth_item` VALUES ('/posts/index', '2', null, null, null, '1473419986', '1473419986');
INSERT INTO `auth_item` VALUES ('/posts/post', '2', null, null, null, '1473477378', '1473477378');
INSERT INTO `auth_item` VALUES ('/posts/update', '2', null, null, null, '1473419986', '1473419986');
INSERT INTO `auth_item` VALUES ('/posts/view', '2', null, null, null, '1473419986', '1473419986');
INSERT INTO `auth_item` VALUES ('/site/*', '2', null, null, null, '1473419986', '1473419986');
INSERT INTO `auth_item` VALUES ('/site/about', '2', null, null, null, '1473419986', '1473419986');
INSERT INTO `auth_item` VALUES ('/site/captcha', '2', null, null, null, '1473419986', '1473419986');
INSERT INTO `auth_item` VALUES ('/site/contact', '2', null, null, null, '1473419986', '1473419986');
INSERT INTO `auth_item` VALUES ('/site/error', '2', null, null, null, '1473419986', '1473419986');
INSERT INTO `auth_item` VALUES ('/site/index', '2', null, null, null, '1473419986', '1473419986');
INSERT INTO `auth_item` VALUES ('/site/login', '2', null, null, null, '1473419986', '1473419986');
INSERT INTO `auth_item` VALUES ('/site/logout', '2', null, null, null, '1473419986', '1473419986');
INSERT INTO `auth_item` VALUES ('/site/request-password-reset', '2', null, null, null, '1473419986', '1473419986');
INSERT INTO `auth_item` VALUES ('/site/reset-password', '2', null, null, null, '1473419986', '1473419986');
INSERT INTO `auth_item` VALUES ('/site/signup', '2', null, null, null, '1473419986', '1473419986');
INSERT INTO `auth_item` VALUES ('/test/*', '2', null, null, null, '1473419986', '1473419986');
INSERT INTO `auth_item` VALUES ('/test/about', '2', null, null, null, '1473419986', '1473419986');
INSERT INTO `auth_item` VALUES ('/test/captcha', '2', null, null, null, '1473419986', '1473419986');
INSERT INTO `auth_item` VALUES ('/test/contact', '2', null, null, null, '1473419986', '1473419986');
INSERT INTO `auth_item` VALUES ('/test/error', '2', null, null, null, '1473419986', '1473419986');
INSERT INTO `auth_item` VALUES ('/test/login', '2', null, null, null, '1473419986', '1473419986');
INSERT INTO `auth_item` VALUES ('/test/logout', '2', null, null, null, '1473419986', '1473419986');
INSERT INTO `auth_item` VALUES ('/test/request-password-reset', '2', null, null, null, '1473419986', '1473419986');
INSERT INTO `auth_item` VALUES ('/test/reset-password', '2', null, null, null, '1473419986', '1473419986');
INSERT INTO `auth_item` VALUES ('/test/signup', '2', null, null, null, '1473419986', '1473419986');
INSERT INTO `auth_item` VALUES ('/test/test1', '2', null, null, null, '1473419986', '1473419986');
INSERT INTO `auth_item` VALUES ('/test/test2', '2', null, null, null, '1473419986', '1473419986');
INSERT INTO `auth_item` VALUES ('/user/*', '2', null, null, null, '1473419986', '1473419986');
INSERT INTO `auth_item` VALUES ('/user/create', '2', null, null, null, '1473419986', '1473419986');
INSERT INTO `auth_item` VALUES ('/user/delete', '2', null, null, null, '1473419986', '1473419986');
INSERT INTO `auth_item` VALUES ('/user/index', '2', null, null, null, '1473419986', '1473419986');
INSERT INTO `auth_item` VALUES ('/user/update', '2', null, null, null, '1473419986', '1473419986');
INSERT INTO `auth_item` VALUES ('/user/view', '2', null, null, null, '1473419986', '1473419986');
INSERT INTO `auth_item` VALUES ('administrator', '2', null, null, null, '1473420103', '1473420103');
INSERT INTO `auth_item` VALUES ('user', '2', null, null, null, '1473475343', '1473475343');

-- ----------------------------
-- Table structure for auth_item_child
-- ----------------------------
DROP TABLE IF EXISTS `auth_item_child`;
CREATE TABLE `auth_item_child` (
  `parent` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `child` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`parent`,`child`),
  KEY `child` (`child`),
  CONSTRAINT `auth_item_child_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `auth_item_child_ibfk_2` FOREIGN KEY (`child`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of auth_item_child
-- ----------------------------
INSERT INTO `auth_item_child` VALUES ('administrator', '/admin/*');
INSERT INTO `auth_item_child` VALUES ('administrator', '/admin/default/*');
INSERT INTO `auth_item_child` VALUES ('administrator', '/user/*');
INSERT INTO `auth_item_child` VALUES ('user', '/user/*');

-- ----------------------------
-- Table structure for auth_rule
-- ----------------------------
DROP TABLE IF EXISTS `auth_rule`;
CREATE TABLE `auth_rule` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `data` text COLLATE utf8_unicode_ci,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of auth_rule
-- ----------------------------

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `parent` int(11) DEFAULT NULL,
  `route` varchar(255) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `data` blob,
  PRIMARY KEY (`id`),
  KEY `parent` (`parent`),
  CONSTRAINT `menu_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `menu` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of menu
-- ----------------------------

-- ----------------------------
-- Table structure for migration
-- ----------------------------
DROP TABLE IF EXISTS `migration`;
CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of migration
-- ----------------------------
INSERT INTO `migration` VALUES ('m000000_000000_base', '1473390010');
INSERT INTO `migration` VALUES ('m130524_201442_init', '1473390013');
INSERT INTO `migration` VALUES ('m140602_111327_create_menu_table', '1473415635');
INSERT INTO `migration` VALUES ('m160312_050000_create_user', '1473415635');

-- ----------------------------
-- Table structure for posts
-- ----------------------------
DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts` (
  `post_id` int(11) NOT NULL AUTO_INCREMENT,
  `post_title` varchar(100) DEFAULT NULL,
  `post_detail` text,
  `author_id` int(11) NOT NULL,
  PRIMARY KEY (`post_id`),
  KEY `author_id` (`author_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of posts
-- ----------------------------
INSERT INTO `posts` VALUES ('1', 'อบรม Yii 2', 'อบรม Yii 2 Advance', '1');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ผู้ใช้',
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'อีเมล',
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `password_reset_token` (`password_reset_token`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', 'rsTALfhJlu5E4L3rMbntJ6m8Tuclz2OT', '$2y$13$DLHYpbPRseT7KbHFqK62newrlIufqt632pzKlOaDv1k3Jzh2VuiJi', null, 'admin@localhost.com', '10', '1473390204', '1473390204');
INSERT INTO `user` VALUES ('2', 'gogo', 'fb8pNdJ4IjUqkNtVBr5Me1BjnNxuP8w_', '$2y$13$DLHYpbPRseT7KbHFqK62newrlIufqt632pzKlOaDv1k3Jzh2VuiJi', null, 'gogo@gmail.com', '10', '1473395434', '1473395434');
INSERT INTO `user` VALUES ('3', 'superuser', 'JcybPcRKTgq1zNDpJXfbSC7AEClLAyTg', '$2y$13$1EqJEF70bWaKJtUEMsmS2OsvuxdGJNmgXpSUdvsxPgwJD1.XSJGJS', null, 'superuser@localhost.com', '10', '1473474958', '1473474958');
