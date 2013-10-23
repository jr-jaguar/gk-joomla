-- MySQL dump 10.13  Distrib 5.5.32, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: jomlabd
-- ------------------------------------------------------
-- Server version	5.5.32-0ubuntu0.12.04.1

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
-- Table structure for table `xofti_assets`
--

DROP TABLE IF EXISTS `xofti_assets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xofti_assets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int(10) unsigned NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_asset_name` (`name`),
  KEY `idx_lft_rgt` (`lft`,`rgt`),
  KEY `idx_parent_id` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xofti_assets`
--

LOCK TABLES `xofti_assets` WRITE;
/*!40000 ALTER TABLE `xofti_assets` DISABLE KEYS */;
INSERT INTO `xofti_assets` VALUES (1,0,1,97,0,'root.1','Root Asset','{\"core.login.site\":{\"6\":1,\"2\":1},\"core.login.admin\":{\"6\":1},\"core.login.offline\":{\"6\":1},\"core.admin\":{\"8\":1},\"core.manage\":{\"7\":1},\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(2,1,1,2,1,'com_admin','com_admin','{}'),(3,1,3,6,1,'com_banners','com_banners','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(4,1,7,8,1,'com_cache','com_cache','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),(5,1,9,10,1,'com_checkin','com_checkin','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),(6,1,11,12,1,'com_config','com_config','{}'),(7,1,13,16,1,'com_contact','com_contact','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(8,1,17,46,1,'com_content','com_content','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":[],\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1},\"core.edit.own\":[]}'),(9,1,47,48,1,'com_cpanel','com_cpanel','{}'),(10,1,49,50,1,'com_installer','com_installer','{\"core.admin\":[],\"core.manage\":{\"7\":0},\"core.delete\":{\"7\":0},\"core.edit.state\":{\"7\":0}}'),(11,1,51,52,1,'com_languages','com_languages','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(12,1,53,54,1,'com_login','com_login','{}'),(13,1,55,56,1,'com_mailto','com_mailto','{}'),(14,1,57,58,1,'com_massmail','com_massmail','{}'),(15,1,59,60,1,'com_media','com_media','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":{\"5\":1}}'),(16,1,61,62,1,'com_menus','com_menus','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(17,1,63,64,1,'com_messages','com_messages','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),(18,1,65,66,1,'com_modules','com_modules','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(19,1,67,70,1,'com_newsfeeds','com_newsfeeds','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(20,1,71,72,1,'com_plugins','com_plugins','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(21,1,73,74,1,'com_redirect','com_redirect','{\"core.admin\":{\"7\":1},\"core.manage\":[]}'),(22,1,75,76,1,'com_search','com_search','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),(23,1,77,78,1,'com_templates','com_templates','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(24,1,79,82,1,'com_users','com_users','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(25,1,83,86,1,'com_weblinks','com_weblinks','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":[],\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1},\"core.edit.own\":[]}'),(26,1,87,88,1,'com_wrapper','com_wrapper','{}'),(27,8,18,25,2,'com_content.category.2','Avto','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(28,3,4,5,2,'com_banners.category.3','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(29,7,14,15,2,'com_contact.category.4','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(30,19,68,69,2,'com_newsfeeds.category.5','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(31,25,84,85,2,'com_weblinks.category.6','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(32,24,80,81,1,'com_users.category.7','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(33,1,89,90,1,'com_finder','com_finder','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),(34,1,91,92,1,'com_joomlaupdate','com_joomlaupdate','{\"core.admin\":[],\"core.manage\":[],\"core.delete\":[],\"core.edit.state\":[]}'),(35,8,26,35,2,'com_content.category.8','Moto','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(36,35,27,28,3,'com_content.article.1','Yamaha TDM850 2000','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(37,8,36,37,2,'com_content.category.9','Travel','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(38,8,38,45,2,'com_content.category.10','News','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(39,35,29,30,3,'com_content.article.2','Honda CRF250L','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(40,35,31,32,3,'com_content.article.3','Harley Davidson Dyna  FLD Switchback 2012','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(41,35,33,34,3,'com_content.article.4','Can-Am Spyder Rotax 990 2009','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(42,27,19,20,3,'com_content.article.5','В Subaru недовольны проектом седана на базе Toyota GT 86','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(43,27,21,22,3,'com_content.article.6','Электромобиль BMW грозит превратиться в дефицитный товар','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(44,27,23,24,3,'com_content.article.7','Новейший Bentley GT V8 S будет стоить в России от 10 млн рублей','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(45,38,39,40,3,'com_content.article.8','Российский гонщик Д.Квят подписал контракт с командой \"Формулы-1\"','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(46,38,41,42,3,'com_content.article.9','ФСБ добивается полного доступа к данным интернет-пользователей','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(47,38,43,44,3,'com_content.article.10','Мексиканский наркобарон был застрелен клоуном-убийцей','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(48,1,93,94,1,'com_demotivator','com_demotivator','{}'),(49,1,95,96,1,'com_slogin','com_slogin','{}');
/*!40000 ALTER TABLE `xofti_assets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xofti_associations`
--

DROP TABLE IF EXISTS `xofti_associations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xofti_associations` (
  `id` varchar(50) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.',
  PRIMARY KEY (`context`,`id`),
  KEY `idx_key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xofti_associations`
--

LOCK TABLES `xofti_associations` WRITE;
/*!40000 ALTER TABLE `xofti_associations` DISABLE KEYS */;
/*!40000 ALTER TABLE `xofti_associations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xofti_banner_clients`
--

DROP TABLE IF EXISTS `xofti_banner_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xofti_banner_clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `contact` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `extrainfo` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` text NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xofti_banner_clients`
--

LOCK TABLES `xofti_banner_clients` WRITE;
/*!40000 ALTER TABLE `xofti_banner_clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `xofti_banner_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xofti_banner_tracks`
--

DROP TABLE IF EXISTS `xofti_banner_tracks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xofti_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  KEY `idx_track_date` (`track_date`),
  KEY `idx_track_type` (`track_type`),
  KEY `idx_banner_id` (`banner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xofti_banner_tracks`
--

LOCK TABLES `xofti_banner_tracks` WRITE;
/*!40000 ALTER TABLE `xofti_banner_tracks` DISABLE KEYS */;
/*!40000 ALTER TABLE `xofti_banner_tracks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xofti_banners`
--

DROP TABLE IF EXISTS `xofti_banners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xofti_banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `clickurl` varchar(200) NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `custombannercode` varchar(2048) NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `params` text NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `idx_state` (`state`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`),
  KEY `idx_banner_catid` (`catid`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xofti_banners`
--

LOCK TABLES `xofti_banners` WRITE;
/*!40000 ALTER TABLE `xofti_banners` DISABLE KEYS */;
/*!40000 ALTER TABLE `xofti_banners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xofti_categories`
--

DROP TABLE IF EXISTS `xofti_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xofti_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `extension` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`extension`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xofti_categories`
--

LOCK TABLES `xofti_categories` WRITE;
/*!40000 ALTER TABLE `xofti_categories` DISABLE KEYS */;
INSERT INTO `xofti_categories` VALUES (1,0,0,0,19,0,'','system','ROOT','root','','',1,0,'0000-00-00 00:00:00',1,'{}','','','',0,'2009-10-18 16:07:09',0,'0000-00-00 00:00:00',0,'*'),(2,27,1,1,2,1,'avto','com_content','Avto','avto','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',42,'2010-06-28 13:26:37',282,'2013-10-22 08:29:24',0,'*'),(3,28,1,3,4,1,'uncategorised','com_banners','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\",\"foobar\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',42,'2010-06-28 13:27:35',0,'0000-00-00 00:00:00',0,'*'),(4,29,1,5,6,1,'uncategorised','com_contact','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',42,'2010-06-28 13:27:57',0,'0000-00-00 00:00:00',0,'*'),(5,30,1,7,8,1,'uncategorised','com_newsfeeds','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',42,'2010-06-28 13:28:15',0,'0000-00-00 00:00:00',0,'*'),(6,31,1,9,10,1,'uncategorised','com_weblinks','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',42,'2010-06-28 13:28:33',0,'0000-00-00 00:00:00',0,'*'),(7,32,1,11,12,1,'uncategorised','com_users','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',42,'2010-06-28 13:28:33',0,'0000-00-00 00:00:00',0,'*'),(8,35,1,13,14,1,'moto','com_content','Moto','moto','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"_:default\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',282,'2013-10-22 08:28:56',282,'2013-10-22 09:35:37',0,'*'),(9,37,1,15,16,1,'travel','com_content','Travel','travel','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',282,'2013-10-22 10:57:18',0,'0000-00-00 00:00:00',0,'*'),(10,38,1,17,18,1,'news','com_content','News','news','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',282,'2013-10-22 10:58:22',0,'0000-00-00 00:00:00',0,'*');
/*!40000 ALTER TABLE `xofti_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xofti_contact_details`
--

DROP TABLE IF EXISTS `xofti_contact_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xofti_contact_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `con_position` varchar(255) DEFAULT NULL,
  `address` text,
  `suburb` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `postcode` varchar(100) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `misc` mediumtext,
  `image` varchar(255) DEFAULT NULL,
  `imagepos` varchar(20) DEFAULT NULL,
  `email_to` varchar(255) DEFAULT NULL,
  `default_con` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `mobile` varchar(255) NOT NULL DEFAULT '',
  `webpage` varchar(255) NOT NULL DEFAULT '',
  `sortname1` varchar(255) NOT NULL,
  `sortname2` varchar(255) NOT NULL,
  `sortname3` varchar(255) NOT NULL,
  `language` char(7) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xofti_contact_details`
--

LOCK TABLES `xofti_contact_details` WRITE;
/*!40000 ALTER TABLE `xofti_contact_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `xofti_contact_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xofti_content`
--

DROP TABLE IF EXISTS `xofti_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xofti_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `title_alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT 'Deprecated in Joomla! 3.0',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `sectionid` int(10) unsigned NOT NULL DEFAULT '0',
  `mask` int(10) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` varchar(5120) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `parentid` int(10) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xofti_content`
--

LOCK TABLES `xofti_content` WRITE;
/*!40000 ALTER TABLE `xofti_content` DISABLE KEYS */;
INSERT INTO `xofti_content` VALUES (1,36,'Yamaha TDM850 2000','yamaha-tdm850-2000','','<p style=\"text-align: left;\"><strong><img src=\"images/STR34.jpg\" border=\"0\" alt=\"\" />2 цилиндра<br /> 849 см3 <br /> 76 л.с.<br /> 20 л<br /> 220 кг<br /> 47000 грн.</strong></p>\r\n<p> </p>\r\n<p style=\"text-align: left;\">   Примерно раз в десять-двадцать лет в мире рождается новый класс мотоциклов. Но, поскольку уже больше столетия компоновка мотоцикла принципиально не меняется (колёс по-прежнему два, между ними – двигатель, а райдер сидит сверху этой конструкции и держится за руль), то все «новорожденные» представляют собой скрещённые фантазией конструкторов предыдущие типы мотоциклов.</p>\r\n','\r\n<p style=\"text-align: left;\"><br /> <br />    Поговаривают, что команда создателей первого Yamaha TDM850 любила рассекать на мотоциклах по горным серпантинам Японии, где постоянно сталкивалась с различным дорожным покрытием... Видимо, потомков самураев настолько впечатлили их же собственные буераки, что они решили создать универсальный мотоцикл для езды по ровной (и не очень) поверхности. Оказалось, что для этого нужно не так уж и много: тяговитый двигатель, прямая посадка и ход подвесок, чуть больший, чем у типичного дорожного мотоцикла. <br />    Мда... я думаю, повидай они дороги в нашей сельской глубинке, на свет родился бы совершенно другой мотоцикл – с гусеничным траком и шноркелями в базовой комплектации. Но, не об этом речь.<br /> <br />    Именно тогда, в 1991 году, родился новый класс мотоциклов – паркетные эндуро. Прошу не путать с эндуро-туристами, ибо для них литые диски и ход подвесок менее 20 сантиметров – моветон!<br />    Новинка была тепло воспринята не только в Европе, но даже в США, где не признают никаких полукровок. Впрочем, в Штатах спрос продержался недолго и через два -три года официальные продажи были прекращены. Нельзя сказать, что TDM стал бестселлером вроде 4-цилиндровых среднекубатурных японских неоклассиков, но свою немалую аудиторию он завоевал надёжно и надолго. <br /> <br />    Ясно, почему. Байк позволял закладывать себя в повороты почти как спортбайк, но при этом на нём можно было скакать по бордюрам и носиться по ровной укатанной грунтовочке. Параллельный «твин», являющийся переработанным силовым агрегатом от 750-кубового Super Tenere, демонстрировал отличные по меркам времени силовые характеристики. И, чёрт-побери, это был новый класс мотоциклов! Этот последний фактор привёл в ряды поклонников TDMа массу оригиналов и прочих деятельных личностей.<br />    В 1996 году появилось второе поколение Yamaha TDM 850. Помимо внешнего «фейслифтинга», конструкторы переработали нутро мотоцикла. Например, угол между шатунными шейками коленвала изменили с 90 до 270 градусов, придав тем самым двухцилиндровому «ряднику» характер работы V-твина. Это никак не повлияло на паспортные показатели мощности и крутящего момента, но зато улучшился контроль тяги на колесе при езде по скользким поверхностям. Простыми словами, пилоту стало проще контролировать снос заднего колеса во время ускорения. Кроме того, диаметр перьев вилки вырос с 41 до 43 мм, а настройки демпфирования стали более жёсткими.<br /> <br />    Поменялась и компоновка агрегатов. Маслобак переехал из подседельного пространства в картер двигателя, что позволило разместить в освободившемся пространстве ютившийся прежде под бензобаком аккумулятор.<br />    Модель, которая попала к нам на тест, была спроектирована в 1999 году и относится к третьему поколению «850-х» TDM-ов, что стало последним перед выходом в 2001- м году 900-кубовой инжекторной версии. В ней уже была решена проблема с бензонасосом (капризный вакуумный агрегат был заменён электрическим) и карбюратором (дозирующие иглы разбивали колодец распылителя и быстро изнашивались, что влекло за собой переобогащение смеси). Кроме того, в байке стало больше электроники. Механический привод спидометра был заменён магнитным датчиком, механический одометр – ЖК-дисплеем, а также добавился датчик положения дроссельных заслонок, в зависимости от показаний которого менялся угол опережения зажигания. Последнее нововведение позволило поднять максимальный крутящий момент с 75,5 до 80,4 Нм при 6000 об/мин.<br /> <br />    Попавший к нам на тест TDM был предназначен для японского рынка (о чём говорит размеченный до 180 км/ч спидометр) и, соответственно, сильно «задушен». Но, предыдущий владелец не пожелал это терпеть и постарался выжать из мотоцикла максимум возможностей: установил тюнинговые карбюраторы, прямотоки и короткоходную ручку газа. <br /> <br /> Для меня, кстати, так и осталось загадкой: зачем паркетному эндуро, не предназначенному для гонок, короткоходная ручка?...<br /> <br />    Запустив и прогрев мотоцикл, я выкатился с территории харьковского отделения компании «МотоДом». Первые ощущения и мысли: «какая же у него тяжёлая морда!». Пару десятков метров по раскисшей объездной грунтовке... асфальт... поворот... газ... и корма мотоцикла начала уходить в строну. Виной тому – заднее колесо, основательно покрытое жирной грязью. Тут стоит сразу отдать должное мотору с его имитацией работы V-твина. Занос заднего колеса развивается не так быстро и более контролируем, нежели на обычных «рядниках».<br /> <br />    Размещение руля, сиденья и подножек, как и обещано, формирует прямую расслабленную посадку. Само сиденье, благодаря глубокому профилю, создаёт ощущение восседания не «на», а «в» мотоцикле. Сюда же можно добавить удачную форму облицовок, которые предоставляют удобное место для коленей. Однозначный одобрям-с!.<br />    Расположение всех кнопочек-рычажков-лапок-переключателей отвечает общепринятым канонам и не вызывает дискомфорта. Осмотрев всё перед стартом, я больше ни разу не искал глазами очередной переключатель и не махал впустую ступнёй в поисках, например, лапки КПП. Приборная панель TDM850 компактна и лаконична. Читабельность не идеальна, но чтобы «снять» минимум необходимой информации, достаточно беглого взгляда.<br /> <br />    На протяжении первых километров по городу я быстро привыкаю к характеру мотоцикла. Из-за тяжёлой «морды» мотоцикл норовит «резать» траектории на низкой скорости и распрямлять – на высокой. Тем не менее, жаловаться на управляемость данного байка могут лишь зажравшиеся снобы, развращённые роскошью современной мотопромышленности. Например, такие как я. Так вот, Yamaha TDM 850 демонстрирует великолепную курсовую устойчивость в широчайшем диапазоне скоростей, но маневрирование на этом мотоцикле вызывало у меня скуку вперемешку с раздражением.<br /> <br />    Двигатель – сильная сторона TDM 850. Его 80 ньютонометров крутящего момента, толстым слоем размазанных по шкале оборотов, хватает, чтобы «отстреливать» со светофоров получше современных 600-кубовых спортбайков. Это и не удивительно. Пока двигатель, например, Yamaha R6 едва-едва начинает «просыпаться», чтобы выйти на режим максимальной тяги, мотор TDM-а находится уже на пике своего крутящего момента и разгоняет мотоцикл.<br />    Благодаря отличной тяге во всём диапазоне оборотов, отпадает необходимость часто пользоваться КПП. Этот байк позволяет включить третью передачу и проехать на ней весь город: от забитых улиц со скоростью потока машин в 20 км/ч, до широких проспектов, где спидометр редко показывает значения меньше «100».<br /> <br />    Впрочем, можно расслабиться, повесить на мотоцикл кофры и поехать куда-нибудь прочь от городской суеты, поигрывая ручкой газа и наслаждаясь накатывающими волнами крутящего момента. Отмеченная выше эластичность мотора пригодится и здесь. Перед затяжным обгоном нет особой необходимости «уходить вниз» на одну-две передачи. В отличие от TDM 900, где высшая передача используется в большей степени для поддержания крейсерской скорости, TDM 850 позволяет пользоваться ею для разгона.<br />    Что касается КПП, у меня о ней сложилось неоднозначное впечатление. Мотожурналисты различных изданий отмечают, что TDM-ы имеют жёсткую коробку с «кашеобразным» характером работы и затруднённый поиск «нейтрали». Да, КПП и правда туговата – для переключений необходимо прилагать некоторые усилия, да и ход лапки слегка размашист, но в остальном этот узел не вызвал у меня нареканий. И это несмотря на то, что к моменту теста мотоцикл отбегал 67 тысяч километров – вполне достойный пробег для мотоцикла.<br />    С торможением у TDM 850 тоже всё OK, потому как спереди стоят 4-поршневые «почти моноблочные» суппорты Sumitomo с 298-мм «плавающими» тормозными дисками, которые устанавливались на Yamaha R1. Поскольку эти механизмы были созданы в расчёте на спортивные нагрузки, они великолепно чувствуют себя на «паркетнике», обеспечивая ему эффективное и хорошо контролируемое замедление. Передие тормоза настолько эффективны, что слишком резкое нажатие на ручку на приличной скорости может закончиться внезапным «стоппи»! Что касается внедорожных возможностей, то тут TDM 850 – полный профан. Его подвески с малыми ходами (150 перед и 133 мм зад), а также слишком тяжёлый передок позволяют разве-что езду по укатанным грунтовкам или ровненькому полю. Покорение грязевых направлений чревато «потерей» переднего колеса и падением. <br /> <br />    Но при этом, преимущество «ТыГыДыма» над обычными дорожными мотоциклами в городе очевидно. Там, где проедет TDM 850, спортбайк потеряет нижний пластик, а неоклассик получит бордюром по выпускному коллектору.<br /> <br /> <strong>Подытоживаю. </strong><br /> <br />    Я никогда не был любителем «кастрированных внедорожников» как в мото, так и в автотематике, но этому байку следует отдать должное, ведь TDM 850 является родоначальником современного, бурно развивающегося класса, за представителей которого покупатели сейчас охотно голосуют кошельком.<br />    По сей день TDM 850 остаётся удобным, быстрым, надёжным и универсальным мотоциклом. И, что немаловажно – относительно недорогим в покупке. Это один из немногих байков, которые «не для всех». Но, если вы подружились с «ТыгыДыМом», то желание расстаться с ним у вас возникнет ох, как не скоро! <br /> <br />  </p>\r\n<p> </p>\r\n<p style=\"text-align: right;\"><em>Благодарим за предоставленный мотоцикл компанию \"Мотодом\".<br /> г. Харьков, ул. Полтавский шлях, 83Б<br /> www.motodom.ua<br /> </em></p>\r\n<p><em>Полное или частичное копирование статьи возможно только с активной ссылкой на <a href=\"http://motodrive.com.ua\" rel=\"nofollow\"><strong>http://motodrive.com.ua</strong></a></em></p>',1,0,0,8,'2013-10-22 09:27:49',282,'','2013-10-22 09:27:55',282,0,'0000-00-00 00:00:00','2013-10-22 09:27:49','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',2,0,3,'','',1,1,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(2,39,'Honda CRF250L','honda-crf250l','','<p style=\"text-align: left;\"><strong><img src=\"images/STR28.jpg\" border=\"0\" alt=\"\" />1 цилиндр<br /> 249 см3 <br /> 23 л.с.<br /> 7,7 л<br /> 144 кг</strong></p>\r\n<p> </p>\r\n<p style=\"text-align: left;\">   Honda недавно отправила на штурм мирового рынка свою новую волну моделей. Направление атаки очевидно – экономия. В последнее время использование таких «бюджетных» моделей, как CBR125R, CBR250R и NC700S/N стало традицией для этого японского производителя. Видимо, японцы пытаются убедить (и довольно успешно) «идеологических гонщиков», что пора бы им обратить внимание на недорогие и экономичные транспортные средства. Похоже, что наступление «крылатой марки» не теряет оборотов: во имя борьбы за сердца и кошельки покупателей и был запущен проект в секторе «эндуро» – Honda CRF250L.</p>\r\n','\r\n<p style=\"text-align: left;\"> </p>\r\n<p> </p>\r\n<p style=\"text-align: left;\"><strong>Красота в малом </strong><br /> <br />    Малая мощность в последнее время стала трендом. Причём, по многим причинам, а не ввиду одной лишь проблемы подорожания топлива, жизни в целом и ужесточения эконорм. На первый план здесь выходит простота использования и удовольствие от езды. Согласитесь, что транспортное средство, которое не утомляет владельца нервным характером и чрезмерной мощностью, но при этом способно прохватить по лесу и оврагам, а в мегаполисе – прошить пробку любой плотности, преодолеть бордюр и даже лестницу, а также способное запарковаться между фонарным столбом и кустом – это привлекательное предложение.<br /> <br />    Такова Honda CRF250L. Этот мотоцикл не имеет ничего общего с подвигами своих предков из серии CRF - это стоит отметить в самом начале рассказа про данный байк. Honda классифицирует свой продукт, как байк двойного назначения, а не как бескомпромиссную «гряземешалку» или «трамплино-пулялку». Другой двигатель, рама, подвески, аксессуары. Вполне понятно, что модель CRF250L не имеет ни одной общей черты с CRF250X. Тем не менее, это не должно рассматриваться, как недостаток или несовершенство этой модели. Этот лёгкий и вёрткий новичок от Honda является весьма универсальным малым и способен подарить райдеру удовольствие как на асфальте, так и вне его.<br />    Удивительно, но в седле будет комфортно даже очень высокому райдеру. Важно упомянуть, что посадка водителя по формату ближе к дорожной, чем к внедорожной. Руль расположен ниже, чем у чистокровных эндуро, а седло очень широкое (по меркам тех же «хардов») и довольно удобное. Приборная панель CRF250L, похоже, сбежала с велосипеда и нашла постоянное пристанище на этом байке. Шучу! Она компактна, симпатична и предоставляет райдеру всю необходимую информацию и даже немного больше. Данный байк выглядит, как 100% эндуро, но вместе с тем он позволяет каждый день совершать пробеги по городу в режиме «дом-работа-дом».<br /> <br />    Вилка-перевёртыш выглядит очень серьёзно, а пластиковый обвес тщательно изготовлен и подогнан. Сразу видно, что производитель уделил немало внимания эстетике. CRF250L не выглядит, как недорогой бюджетный мотоцикл и это – его большое преимущество. <br /> <br /> <strong>Унификация и оптимизация </strong><br /> <br />    В этой «250-ке» виден далеко идущий процесс унификации, положительным эффектом которого стало сокращение издержек производства. Двигатель поставляется напрямую от CBR250R, некоторые элементы «отделки», вроде поворотников и стоп-сигнала, позаимствованы у NC700. То же самое относится к числу прочего оборудования. <br /> <br />    Как мотоцикл, который является будущей «рабочей лошадкой», CRF250L получил чуть менее изящную стальную раму и большой глушитель. Но серьёзная с виду вилка и задний маятник с системой Pro-Link, к сожалению, не обладают широким спектром регулировок.... Если вообще уместно говорить о каком-либо «спектре». Ведь настроить можно лишь предварительное поджатие пружины заднего моноамортизатора. <br />    Удешевление и адаптация для дорог общего пользования не прошли даром для веса этой 250-ки. Модель «пополнела» и набрала аж 29 килограммов по сравнению с CRF250X. Теперь снаряженный вес байка (с бензином и всеми жидкостями) составляет внушительные 144 килограмма. Есть куда приложить руки будущим владельцам!<br /> <br /> <strong>Сердце, как колокол </strong><br /> <br />    Одноцилиндровый 250-кубовый мотор – это слегка дефорсированный в сторону «моментности» силовой агрегат от CRF250R. Для сглаживания кривой крутящего момента пришлось отказаться от 3 л.с. Теперь мотор имеет плавный и линейный прирост мощности, а также хорошо тянет уже с низких оборотов. Работа системы впрыска, приёмистость и реакция на дросселирование не вызывают никакой критики. <br />    Коробка передач легка и точна в использовании, как и рычаг сцепления. Это, конечно, не тот тип двигателя, который ежесекундно демонстрирует взрывной характер, заставляя шевелиться волосы на копчике водителя перед заходом в гараж, но зато чёткость работы КПП – весьма ценный фактор для мотоцикла, пропагандирующего спокойствие характера и лёгкость управления.<br /> <br /> <strong>Почти как эндуро </strong><br /> <br />    Honda CRF250L является в большей степени дорожным байком, который внешне очень похож на серьёзный хард-эндуро. Конечно, на нём возможно ломиться сквозь чащу, он даже может прыгать, но попытки такой «боевой эксплуатации» рано или поздно выльются в лопнувший пластик и оторванные поворотники. <br />    Высокий вес, мягкие подвески и шины с универсальным рисунком протектора быстро исчерпывают его довольно средний внедорожный потенциал. Лес, овраги, гравий и грязь-пыль плохих дорог, проезд на рыбалку по грунтовке и траве – это да. Но Enduro Downhill, скалы и, не дай Бог, серьёзные «говна» – конечно же, нет. <br /> <br />    Как было сказано выше, CRF250L больше выглядит, чем едет как эндуро. А вот на дороге он весьма приятен, особенно на тесных улочках города. Динамичный, подвижный и лёгкий (144 кг на дороге и в «говнах» – это два различных значения!) Байк ведёт себя в городских джунглях, как рыба в воде, легко преодолевая бордюры, тротуары, газоны и лестницы.<br />    Идея перемещения транспортного средства оффроадного назначения на обычные городские дороги может показаться немного рискованной, но в ней есть много рационального. Например, CRF250L великолепно переварил крепко разбитый грузовиками и автобусами асфальт в Варшаве на улице Modlińska, куда меня занесло во время тест-драйва. Переезд лежачих полицейских не вызывал никаких затруднений даже на высоких скоростях. Да, толчок в руки будет ощутим, но байк даже не пытается выйти из под контроля и сменить траекторию.<br />    При перемещении в пробках мотоцикл проявляет чудеса всепролазности благодаря врождённой худощавости и тому, что ручки его руля проходят аккурат над зеркалами легковушек. Пока вы сидите прямо, зеркала заднего вида обеспечивают вас подробнейшей информацией о том, что происходит сзади. Именно потому небольшие «гражданские» эндурики так популярны в перенаселённых городах западной, а особенно – южной Европы! <br /> <br /> <strong>Не блуждать</strong><br /> <br />    Не сомневаюсь, что вы попросите нас сравнить CRF с её основными конкурентами в классе, такими как Yamaha WR250R или Kawasaki KLX250. Honda уступит WR-ке (которая создана именно для «внедорожных подвигов)) и очень сопоставима с KLX-ом, имеющим аналогичные технические показатели и массу. <br />    Вы спросите, как повели себя штатные шины на асфальте и грунте? Используемая на CRF250L резина очень хороша при езде по сухому асфальту и весьма неплоха в дождь. А вот при движении по мокрой траве (особенно с препятствиями в виде веток и брёвен) она быстро «выбрасывает белый флаг». <br /> <br />    Проблемой может стать лишь малый объём топливного бака, основной запас топлива в котором заканчивается уже через 140-160 километров активной езды, а резерва надолго не хватает.<br /> <br /> <strong>CRF для каждого? </strong><br /> <br />    В чем смысл создания новой модели CRF? Конечно, цель её выпуска – не покорение гоночных трасс. Модель 250L должна стать универсальным, недорогим и экономичным транспортом «на каждый день» для самой широкой аудитории. И, похоже, у Honda всё должно получиться.<br />  </p>\r\n<p> </p>\r\n<p style=\"text-align: right;\"><em>Текст: Мариуш Ловицкий <br /> Фото: предоставлены автором<br /> Адаптация: Серге й Кузнецов</em><br />  </p>\r\n<p><em>Полное или частичное копирование статьи возможно только с активной ссылкой на <a href=\"http://motodrive.com.ua\" rel=\"nofollow\"><strong>http://motodrive.com.ua</strong></a></em></p>',1,0,0,8,'2013-10-22 11:04:30',282,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','2013-10-22 11:04:30','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',1,0,2,'','',1,1,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(3,40,'Harley Davidson Dyna  FLD Switchback 2012','harley-davidson-dyna-fld-switchback-2012','','<p style=\"text-align: left;\"><strong> <img src=\"images/STR30.jpg\" border=\"0\" alt=\"\" />2012 г.в.<br /> 1690 см3 <br /> 316 кг<br /> 230700 грн.<br /> </strong></p>\r\n<p> </p>\r\n<p style=\"text-align: left;\"><strong>Трансформер</strong><br /> <br />    Мотоциклы Harley-Davidson нельзя оценивать исключительно сточки зрения ездовых характеристик. Но для большинства мотоциклистов именно они, а также качество изготовления мотоцикла стоят на первом месте. Все остальное, харизма бренда, стиль и престиж модели – лишь приятное дополнение. А в идеале всё должно находиться на высоком уровне.</p>\r\n','\r\n<p style=\"text-align: left;\"><br /> <br />    В случае со Switchback, о стиле мотоцикла и престиже марки говорить не приходится. Без слов понятно, что для многих байкеров Harley-Davidson – золотая мечта и икона в мире мототехники. Но каждая модель этого производителя отличается индивидуальностью, а Switchback – тем более. Это второй по счету мотоцикл в линейке компании, который позволяет легко трансформировать его из круизера, в мотоцикл для города. Первым был (и до сих пор является) CVO Softail Convertible. Но, так как он принадлежит к лимитированной серии заводских кастом-байков, то и стоит более, чем в полтора раза дороже. <br /> <br />    Switchback же – серийная модель, а потому и её цена более доступна. Хотя украинские реалии превращают $15999, которые за него просят в Штатах, в 230000 украинских гривен, которые придется выложить за новинку в Украине. Это, мягко говоря, не мало, а потому и спрашивать с мотоцикла следует «по полной программе».</p>\r\n<p> </p>\r\n<p style=\"text-align: left;\"><strong>Владислав Софонов<br /> Рост: 180 см, вес: 75 кг. <br /> Стаж вождения: 10 лет.</strong><br /> <br />    Начну с эргономики. По удобству посадки Switchback находится на уровне хорошего туриста. На нём можно легко преодолевать большие дистанции. Вы не просто садитесь, а погружаетесь в низкое, мягкое, широкое сиденье. Платформы для ног расположены умеренно далеко и до руля тянуться не приходится. Уверен, что даже менее рослые водители будут чувствовать себя за его рулем вполне комфортно.<br />    А теперь перейду к внешности. Здесь и вправду не к чему придраться. Качество изготовления и отделки – выше всяческих похвал. Любая деталь, какую ни возьми, явно прошла детальный анализ с точки зрения того, как она будет смотреться на этом мотоцикле. «Фишка» модели – быстросъемные кофры и ветровое стекло – также прошли тщательную подгонку. <br /> <br />    К слову, эти кофры имеют объём поменьше тех, что устанавливаются на большие туреры H.D. Но это – уже дань стилю, который в Switchback стоит на первом месте. Простота и лёгкость «раздевания» мотоцикла действительно заслуживает похвалы. Конечно, я и в своем мотоцикле могу отстегнуть боковые кофры за считанные секунды, но ведь здесь важен и эстетический фактор, ведь крепёжные элементы кофров на Switchback скрыты от посторонних глаз, чего не скажешь про большинство мотоциклов других марок. <br />    А вот быстросъёмное крепление ветровика показалось мне недостаточно надежным, ведь в роли защелок выступают две витиеватые пружинки из круглой стальной проволоки. Хотя, надо отдать им должное – стекло даже на наших ухабистых дорогах не раскачивается и из пазов не выскакивает. С другой стороны, я бы поставил этому решению 5 баллов за практичность. Ведь жарким летним днем гораздо приятней колесить по городу без ветрового стекла, ощущая на себе охлаждающий поток ветра. К тому же, без кофров и ветровика мотоцикл становится визуально легче и несколько уже, а потому на нём будет гораздо проще пробираться по городским заторам в часы пик. <br /> <br />    Управляемость мотоцикла – на высоте. Он легко держит заданный угол и траекторию движения в поворотах. Им необычайно легко управлять даже на сверхмаленькой скорости – Switchback не норовит завалиться в сторону поворота (спасибо правильной геометрии рулевой колонки!). Его снаряженный вес, который при этом доходит до 420 кг (с водителем), практически не ощущается. <br />    Но всё выглядит так хорошо только в случае, когда движение происходит по ровному асфальту. Стоит съехать с такового на «real Ukrainian asphalt», как наступает разочарование. Переднее крыло, выполненное из толстого листа отборной американской стали – вещь, заслуживающая уважения. Но ведь это еще и пара-тройка килограмм лишнего веса! А потому вполне резонно, что я ощущал, как переднее колесо подпрыгивает даже на совсем небольших ухабах, вилка щёлкает при ходе отбоя, а на гребёнке я и вовсе потерял чувство дороги. Задняя подвеска показалась мне более сбитой, к тому же она неплохо справлялась с неровностями, хотя до идеала ей не хватает ещё сантиметра 3 хода амортизаторов.<br /> <br />    Не впечатлила меня и тормозная система. Для столь тяжёлого мотоцикла одного переднего 300-миллиметрового диска, пусть даже и с четырёхпоршневым суппортом, не просто мало, а чрезвычайно мало. К тому же, усилие на ручке чрезмерно велико, что суммарно приводит к необходимости использования заднего тормоза, хотя при попытке резко остановиться с приличной скорости и он не выручает. К тому же, на этом байке он ещё и малоинформативен. Возможно, по мере обкатки (а мотоцикл был абсолютно новым) ситуация несколько улучшится, но не думаю, что кардинально.<br />    И последнее, за что можно было бы похвалить Switchback – это его двигатель. Но оценить его в полной мере было невозможно, поскольку по какой-то причине он откровенно «тупил» в зоне выше средних оборотов. Почему я выразился «можно было бы»? Американский Интернет-ресурс motorcycle.com провел замер мощности двигателя Switchback на династенде, где он выдал всего 66 л.с. при 5000 об/мин и 110 Нм при 3250 об/мин. На деле же эти показатели проявились в откровенно слабой тяге (кроме узкой «середины» – там тяга есть), совсем не адекватной объёму двигателя. Возможно, в угоду жёстким европейским эконормам перенастроили «мозги», а мотор ещё не прошёл обкатку… Тогда ситуацию можно улучшить позже, слегка «поколдовав» с программными настройками движка и облегчив ему «дыхание».<br /> <br />    Кстати, звук, доносящийся из выхлопной трубы – также на «троечку». Возможно, на заводе его также приглушили, но сделали это чересчур радикально. После покупки хозяин данного байка однозначно поставит себе тюнинговый выхлоп, и это будет правильно!<br />    В итоге, резюмируя вышесказанное, я вынужден признать, что Harley-Davidson Switchback меня разочаровал. От столь именитого производителя я ожидал увидеть сбалансированную модель, которая переплюнула бы конкурентов по всем показателям. Но этого не произошло. Мотоцикл подкупает только своей оригинальной внешностью, но серьёзно впечатлить меня ходовыми качествами он не смог.<br />  <br /> <br /> <strong>Андрей Блинов<br /> Рост: 183 см, вес: 105 кг. <br /> Стаж вождения: 14 лет.</strong><br /> <br />    «Дайна»… У меня это название больше ассоциируется с пневматическим ружьишком (хоть и пишется по-другому), ну, да ладно. Это всё-же мотоцикл, и не абы какой – с мотором в 103 кубических дюйма (1690 см3), о чём свидетельствует красноречивая надпись на крышке коробки передач. Но сразу хочу предупредить: этот двигатель лишён балансировочного вала, а к раме крепится в трёх точках, но только в двух – через резиновые подушки...<br /> <br />    Когда заводишь мотор, то понимаешь, как наглядно можно продемонстрировать выражение «сердце выскакивает из груди»! Но не буду забегать вперёд.<br />    Внешний осмотр показал, что компоновка у Switchback – стандартная, «харлеевская», но с маркетинговыми «фишками»: наблюдаются быстросъёмные кофры и ещё более быстросъёмное ветровое стекло. Стекло действительно снимается быстро –буквально за секунды, но… это может сделать не только хозяин! Фактически, любой желающий может разжиться ветровым стёклышком от H.D., как для своего «Днепра» так и любого другого «чоппероида»… А вот с кофрами такой номер не пройдёт. Оба они тоже отстёгиваются за пару минут, но только при условии, что крышки у них открыты, а этот процесс не так прост, скажу я вам – целый шаманский танец с бубном. Хотя, проделав эту операцию два раза подряд, я готов признать, что все движения просты и продуманы – даже если забыть запереть кофры, то их крышки на ходу не откроются ни при какой тряске! Правда, и в запертом положении они слегка постукивают на неровностях, так что в идеале их всё же следует доуплотнить.<br /> <br />    Ременной привод, литые диски колёс, а вот передний тормоз – один, зато с АБС. Приборка – «харитоновская» классика: лампочки находятся отдельно. Но – о чудо! На Dyna появился тахометр!!! Правда, обороты отображаются сверхмелкими циферками на маленьком ЖК-дисплее – так и хочется закрепить над ним большое увеличительное стекло! При перебирании кнопкой «trip» функций табло, включение тахометра происходит не сразу! Сначала дисплей продемонстрирует анимацию из «звёздочек», потом появится бегущая строка и текст на английском, который вольно можно перевести как: «Внимание! Сейчас будут показаны обороты двигателя!!!». Если учесть высоту шрифта (не более 10 мм), да помножить чёткость изображения на вибромассажные способности мотора, то вряд ли его можно назвать информативным.<br /> <br />    А что же в ходу? К сожалению, первый «контакт» с этой Dуna у меня получился в качестве «нажопника». Это, я вам скажу, номер! После 10-15 километров, проведенных мною на пассажирском месте, мой копчик был отбит. Причём, не подвеской – к ней как раз претензий не было, а как-то отсижен, что ли. Но болевые ощущения начали проявляться даже от вибрации двигателя. Не могу утверждать, что это правило – при средних настройках подвески, и нагрузке в виде двух «тушек» общим весом под 240 кг, возможно, это ответная реакция мотоцикла на издевательства. Но на всякий случай, ориентируясь на результаты нашей «экстрим-примерки», выбирайте себе пассажирок маленьких, хрупких, но с широкой и мягкой попой – дабы позже не выслушивать от них ругательств. А ещё лучше – закажите тюнинговое пассажирское сиденье. Кстати, на водительское можно и не тратиться – позже оно меня вполне удовлетворило. <br />    Задняя подвеска справлялась на четыре с минусом (пару раз мы её таки «пробили», но – не забываем о мягких настройках амортизаторов). В целом – достаточный минимум. А вот комфортной её точно назвать сложно... Это о задней подвеске. Сидя сзади, говорить о вилке бесполезно. Из приколов эргономического конструктива – пассажирские подножки крепятся к маятнику. И на неровностях мотоцикл «шевелит ногами» пассажира. Амплитуда несильная, но есть шанс поцарапать гуляющими вверх-вниз ботами (или каблучками), что-нибудь блестящее. Ну и напоследок из впечатлений пассажира: обязательно ставьте спинку! Мотоцикл немного «нервный», и без оной есть шанс пассажира попросту потерять.<br /> <br />    За рулём ситуация переменилась. Спешка закончилась, фотоматериал был отснят, и у меня впереди – несколько часов «один на один» с Dyna Switchback. Посадка в целом вполне адекватна. Возможно, для среднестатического мотоциклиста она непривычна, но логична. По крайней мере, неудобной её назвать нельзя, скорее, наоборот. Пульты немного не удобны в мелочах. Непривычными для «японовода» станут кнопки включения поворотников (по одному на сторону) и слева эта самая кнопка находится в аккурат на том месте, где у других мотоциклов расположен сигнал… А она – это маленькая двойная кнопка над клавишей левого поворотника. Но привыкаешь быстро. Сам сигнал, кстати, пневматический и очень громкий, одно огорчает – пока компрессор раскрутится, может и повод сигналить пропасть. Другими словами, сигнал звучит, как пароходный гудок, но также немножко «подтормаживает».<br />    Видимость в зеркалах на удивление достаточно неплоха, и на них даже нанесен противоослепляющий слой. Впрочем, этот самый слой я бы с большим удовольствием намазал на весь хром. На солнышке всё бликует, и «солнечные зайчики» периодически бьют по глазам. Руль высокий, но в меру, и в этом «что-то есть». <br /> <br />    Кофры имеют маленький объём, но зато совершенно не мешают при езде в междурядье. Крышки, как я уже говорил, это – «шаманский танец с бубном». Открываем замок, отщёлкиваем запорный механизм, подтягиваем наружную сторону вверх, утапливаем крышку к крылу и отводим внутренней стороне кофра, а затем «кувыркаем» крышку наружу… Всё бы ничего, но кофры двухслойные (опциональный термос?!), и на ямках в них что-то так мерзко погромыхивает. Не то крышки, не то «слои», но присутствует ощущение забытого внутри рожкового ключа «на 32»… <br /> <br />    Стекло, при совершенно неказистых размерах, справляется с поставленной задачей «на отличненько», я даже не ожидал. Разогнать Дайну «на все деньги» было особо негде, но на 140 км/ч встречный поток ветра не доставлял мне совершенно никакого дискомфорта. Редкий случай, когда штатное стекло настолько хорошо работает.<br />    Из удобностей и полезностей: датчик топлива (стрелочный), в фальшкрышке бака (слева), а также иммобилайзер и сигнализация, что называется, «в одном флаконе». Работу иммобилайзера я так и не осознал – он то распознавался в 7-10 метрах от мотоцикла, то не срабатывал, пока не принести брелок в «метровую зону». Чтобы не было печали, при остановке не следует забывать о блокировке замка зажигания и руля – игрушка-то недешёвая.<br /> <br /> На холостых оборотах вибрирует всё!!! Руль, зеркала, подножки…<br /> <br />    Вибрации (но с другой частотой) также проявляются и под нагрузкой, в области 3500-4000 об/мин. Но мне удавалось проехать от светофора до светофора и без «трясучки»… Значит, к этому можно привыкнуть и избегать их, или хотя бы сглаживать, подбирая комфортные обороты. Но, стоя на светофоре – хоть мотор глуши. Мальчик лет трёх тыкал в меня пальцем и что-то говорил папе. Мне, конечно, было не слышно, но догадаться несложно: «…Пап, гляди, дядя щас двигатель потеряет!».<br /> <br /> Очень сложно поверить, что это так задумано, но фанаты марки ценят именно такие моторы серии Evolution, называя их «живыми».<br /> <br />    Буквально одно слово про выхлоп – он никакой. Видимо производитель, осознавая, что его после покупки сразу меняют на тюнинговый, решил сэкономить – какая разница, что позже клиент отправит на свалку! Но характерный звук «Харли» со штатной трубой не угадывается вообще.<br />    Подвески совсем странные – вилка на малых скоростях ведёт себя великолепно, а на больших превращается в две палки, передавая всё на руль и подножки. Пару раз мои ноги чуть не соскочили со здоровенных платформ. При отбое вилка постукивает, что меня удивило. В целом, проезд на хорошей скорости, к примеру, соединительного шва моста очень негативно сказывается на комфорте. Нет, за счёт массы мотоцикл идеально сохраняет траекторию, но его как-то перетряхивает. А вот управляемость, особенно на малых скоростях, просто отличная. Маневрировать в пробке и междурядье можно легко и непринуждённо. А если к этому добавить, устойчивую езду на 1-2 передаче при полностью закрытой ручке газа, то получаем «городской турер».<br /> <br />    В целом же «Дайна» подложила мне свинью. Пока на ней катался, то рисовал в голове план статьи, а под конец оказалось, что всё совсем не так. Почти все проблемы ушли, так как были связаны с абсолютной новизной экземпляра. Тормоза к концу теста немного притёрлись и появились, коробка перестала быть такой тугой, сцепление обрело обратную связь, а «нейтралка» стала «ловиться» с первого раза.<br />    Весь бренд Harley-Davidson – это своеобразная философия и большое достижение маркетинга. Мотоцикл красивый, в меру удобный, достаточно интересный. Но почему-то, кажется, что за свою стоимость он должен приносить только удовольствие, окружать заботой и вниманием, но получаем исключительно «философию» и бонус, когда на классический вопрос обывателя: «Это Харли?», можно смело и гордо ответить «Да, ЭТО – Harley-Davidson!».</p>\r\n<p> </p>\r\n<p style=\"text-align: left;\"><strong>Валерий Чуйков<br /> Рост: 186 см, вес: 125 кг. <br /> Стаж вождения: 30 лет.</strong><br /> <br />    Я оказался единственным участником «примерки», которому ранее удалось достаточно много покататься на различных моделях «эволюшенов» с воздушными моторами разных объёмов и единственным же, которому всё время пришлось возить пассажира немалых габаритов. Мотоцикл был абсолютно новым, и это, безусловно, накладывало свой негативный отпечаток. Тормоза не тормозили, коробка работала туго и жёстко, а двигатель не развивал привычной «ломовой» тяги. Но, как отметил Андрей, к концу теста всё наладилось и большинство негативных моментов «убежали» вместе с километрами, хотя некоторые остались и никогда сами не самоустранятся. На них и сосредоточусь. Первое – это тормоза. Одного диска спереди явно недостаточно для мотоцикла с такой полной массой, а усилие, требуемое для срабатывания ABS на сухом асфальте, может развить разве что бодибилдер. Выход возможен в замене тормозных машинок с иным соотношением диаметров поршней. Второе – это звук выхлопа. Чётко помню во время теста Electra Glide 2010 года то кайфовое ощущение при моём первом знакомстве с мотором «эволюшн», которое я испытывал каждый раз, когда откручивал ручку газа стоявшего на ней «96-го» Twincam\'a! Здесь же было только жалкое бормотание, избавиться от которого можно только хирургическим путём – заменив стоковый выхлоп «2 в 1» на «правильные трубы», например, от Vince&amp;Hince. Третье – это подвески. К задней особых претензий нет – штатные амортизаторы весьма неплохо отрабатывают мелкие и средние неровности, но из-за малого хода (всего 54 мм) пасуют перед более-менее глубокими (3-5 см) ямками и вспучиваниями, коих, к сожалению, на наших несовершенных дорогах большинство. К тому же, кроме поджатия пружины, других изменений в их работу внести нельзя. Поэтому конкретно для Украины лечение выглядит однозначно: замена и только замена их на тюнинговые, например, от Ohlins, спасёт ситуацию. С вилкой получше – её хода при умеренном темпе движения достаточно и всё было бы хорошо, если бы не противное «клац» в конце хода её отбоя. Как говорится, на результат не влияет, но осадок оставляет. Думаю, что дефект частично (а, возможно, и полностью) вылечится подбором масла с другой вязкостью. И последнее – странный характер мотора. Он отлично работает и тащит на себе двух «горилл» на первой-второй передачах при полностью закрытой ручке газа, но почему-то немного «затыкается» при оборотах «выше средних», от 3500 и выше, одаривая седоков противными мелкими вибрациями. Предполагаю (и надеюсь), что это – определённый режим работы ECU, на период обкатки, который на первом ТО поменяют на нормальный.<br /> <br />    Теперь о приятном. Посадка водителя, его ветрозащита торса и головы, а также общая управляемость и устойчивость на пешеходных скоростях (даже с тяжёлым пассажиром) – просто превосходны. Toже понравилось сиденье и возможность быстрой трансформации мотоцикла из турера в городской и наоборот. <br />    Для кого он, этот новоявленный трансформер от H.-D.? Думаю, что после проведения недорогой доработки «под себя» он станет неплохой альтернативой тем поклонникам марки, что мечтают о Road King, но он для них слишком велик, тяжёл или дороговат.<br />  </p>\r\n<p> </p>\r\n<p style=\"text-align: right;\">Фото: Андрей Шленчак<br />  </p>\r\n<p><strong style=\"color: #000000; font-family: Arial, Verdana, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; letter-spacing: normal; line-height: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; background-color: #ffffff;\">Полное или частичное копирование статьи возможно только с активной ссылкой на<a href=\"http://www.motodrive.com.ua/\" rel=\"nofollow\"><span class=\"Apple-converted-space\"> </span>http://motodrive.com.ua</a></strong></p>',1,0,0,8,'2013-10-22 11:10:45',282,'','2013-10-22 11:10:50',282,0,'0000-00-00 00:00:00','2013-10-22 11:10:45','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',2,0,1,'','',1,0,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(4,41,'Can-Am Spyder Rotax 990 2009','can-am-spyder-rotax-990-2009','','<p><img src=\"images/STR36.jpg\" border=\"0\" alt=\"\" />998 см3</p>\r\n<p><strong> 106 л.с.<br /> 2 цилиндра<br /> 317 кг<br /> $ 15000</strong></p>\r\n<p style=\"text-align: left;\">Что же это? Перемотоцикл или недоавтомобиль? А вот и нет! Это асфальтоход!<br /> <br />    Производитель позиционирует данное изделие, как «родстер», и причисляет его к мотоциклам. Согласно записи в техпаспорте, это мотоцикл, без бокового прицепа. В реальности, всё не совсем так... Да и название весьма своеобразное. Вовсе не «Паук», как кажется многим, а что-то другое... шпионское...</p>\r\n','\r\n<p style=\"text-align: left;\"><br /> Но не будем забегать вперёд. Начнём с рекламы, которой нас потчуют производители.<br />  <br /> <br />    Все рекламные проспекты сравнивают его с табуреткой на трёх ножках, которая имеет избыточную устойчивость. А также наперебой расхваливают его электронное оснащение. Да, с электроникой у него всё в порядке. На борту имеется TCS (Traction Control System), SCS (Stability Control System), ABS (Anti-lock Braking System) и DPS (Dynamic Power Steering). По «нашенски» это – «антибукс», «курсовая устойчивость», АБС и «динамический усилитель руля». На мотоциклах такой набор не встретишь! «Трэкшен-антибукс» даёт возможность максимально эффективно разгоняться, оптимизируя крутящий момент, передаваемый мотором на заднее колесо. Владельцы автомобилей уже давно с ним знакомы и привыкли к его присутствию. «Курсовая устойчивость» в теории, контролирует изменение направления движения и усилия, в случае необходимости стабилизируя транспортное средство путём подтормаживания правого или левого колеса, а также корректирует крутящий момент. Звучит это страшновато, не всем хочется попадать в зависимость от «электронного мозга», но отключить эти системы невозможно и поэтому сравнить, как едется с ними и без них, не представляется возможным.<br /> <br />    Останавливаться подробно на ABS нет смысла, она есть, и этот факт не может не радовать. Опять же, неотключаемая, а лезть в блок предохранителей я не стал… Неудобно как-то. <br />    С DPS вообще сложно. Согласно описаниям, система корректирует усилия на руле и оптимизирует усилия рук. Звучит совершенно пугающе, особенно на фоне отзыва большой партии Spyder’ов именно из-за проблем с этой системой. Как это: компьютер за меня и подруливать будет?! На самом деле не всё так печально. Данная система на многих автомобилях устанавливается с 80-х годов. Только она не имеет такого громкого названия и управляется не компьютером, а гидравликой. По свойствам и ощущениям – это не более, чем рулевой демпфер. Фактически, работает очень просто – чем выше скорость, тем более жёсткий руль.<br /> <br />    Так получилось, что при достаточной распространённости этого «перемотоцикла», мне не приходилось видеть его живьём. Перед тестом полазил в сети, почитал рекламу, посмотрел картинки и сложилось у меня устойчивое впечатление, что для езды нужно будет только сесть, сложить локти на груди, и сказать «повелеваю!». Момент встречи волновал и будоражил ум… И вот, из-за поворота появляется жёлто-чёрный красавец! Да, хорош собой! Впечатляет…<br /> <br />    Что же мы имеем? Пространственная лонжеронная рама перекочевала со снегоходов и квадроциклов. Ну, по крайней мере, принцип её построения такой же… Профиль постоянного сечения (SST) охватывает двигатель сверху и снизу. Двигатель – это V-Twin жидкостного охлаждения Rotax, объёмом 998 см3 имеет по два распредвала на каждый цилиндр и электронный впрыск. Его немного дефорсировали (106 «лошадок») в пользу крутящего момента (104,3 Нм при 6250 об/мин), тем самым обеспечив достаточную мощность во всём диапазоне. Двигатель, кстати, тоже родом из Австрии, где делают «сердца» для снегоходов и ATV.<br />    Привод на заднее колесо производится длиннющим кевларовым ремнём. Ничего другого и быть не могло при длине его маятника! Коробка передач разрабатывалась специально для Spyder’a: пятиступенчатая, с дополнительным реверсом. Опционально можно заказать «автомат», но вот работает ли он в полностью автоматическом режиме, я так и не понял. Скорее всего, под «автомат-коробкой» они подразумевают полуавтомат с переключением кнопками на руле.<br /> <br />    Тормозная система – интегрированная и тоже «интеллектуальная»… Дисковые тормоза на всех трёх колёсах имеют диаметр 260 мм и в комбинации с передними четырёхпоршневыми скобами дают отличное замедление, но неужели так трудно было расположить все органы управления по-мотоциклетному?! Ведь тормоз только один – под правой ногой, а на правой ручке руля НИЧЕГО НЕТ! <br />    Для мотоциклиста это – дико. Привычки никуда не денутся, и если у тебя в руках мотоциклетный руль, под пальцами правой руки просто обязан быть тормоз, а его нет!<br /> <br />    Подвеска ведущего колеса простая и предсказуемая – сзади маятник и моноамортизатор с рабочим ходом в 145 мм. Передняя же выполнена на двойных А-образных рычагах, со стабилизатором поперечной устойчивости и ходом в 144 мм. Пружины имеют прогрессивную характеристику и даже регулировку поджатия, правда, только при помощи специнструмента (Интересно, входит ли он в комплект поставки?). <br /> <br /> Ну и эстетичность открытой подвески весьма интересна. Сразу вспомнился диалог из мультика «Тачки-2»:<br /> <br /> – Мисс Салли – ваша огромная поклонница – всё жужжит и жужжит про ваши обнажённые шины!<br /> <br /> – Франческо не удивлён, это естественная реакция на Франческо! Женщинам нравится, когда нам нечего скрывать!<br /> <br /> Функциональность крыльев вызывает сомнение, но красиво – вне всякого сомнения.<br /> <br />     С размерностью колёс и резиной отдельная история: Spyder-то в повороты не «укладывается» – ведь резина у него автомобильная: 165/65 R14 спереди и 225/50 R15 сзади.<br />    Ещё когда я только ехал на тест, подумалось о том, что в нашей стране сложно купить одно автомобильное колесо – только попарно… и как же быть? Спросил владельца. ТАКИ ДА! Для того, чтобы переобуть заднее колесо, пришлось купить две покрышки этого размера!<br />    Теперь кратенько – о приборке, органах управления и свете и – будем ехать. Приборная панель хорошо читается, в центре располагается многофункциональный круглый жидкокристаллический дисплей, на который выводится вся необходимая информация о топливе, температурах, передаче, режимах и даже цифровой спидометр. К сожалению не удалось разобраться во всех тонкостях не хватило времени. <br />    Слева от ЖК экранчика располагается хорошо читаемый спидометр, а справа – такой же аналоговый тахометр, но «мега-дизайнерское» решение запустить его стрелку против часовой, немного трудно воспринимается глазом. <br /> <br />    Органами управления Can-Am порадовал. Все стандартные рычаги и переключалки расположены логично и на своём месте, а вот нестандартные – расположились на максимально понятных местах. Например, рычажок включения задней передачи имеет тот же вид и расположение, что и обогатитель на карбюраторных мотоциклах – на «пульте» левой ручки руля. Очень понравилась кнопка переключения света (ближний/дальний) – помимо основной функции, в неё ещё добавлена «моргалка». На мой взгляд это более удобно, чем отдельная кнопка на тыльной стороне ручки.<br /> <br />    Сцепление/переключение передач находятся на своих местах, но под левой пяткой расположился ещё и стояночный тормоз. Про основной тормоз я уже говорил – его педаль только под правой ногой. Эргономика посадки весьма широка. На Spyder будет удобно водителю любого роста и комплекции. Линзовая оптика даёт хороший свет и не слепит встречный поток. Но «габариты» на передних крыльях должны быть явно крупнее и ярче, потому что в нашей стране может найтись особо умный, который захочет проехать впритирку к мотоциклу по принципу «не трамвай – подвинется». Также не мешало бы добавить светящиеся габариты на крыльях (в заднем направлении) и тем самым обозначить физические габариты. Имеющейся «светоотражайки» явно недостаточно – сзади Spyder воспринимается, как мотоцикл. Стопы/повороты хорошо читаются, но всё – «по мотоциклетному».<br /> <br />    И как же я забыл про багажник! Располагается он в передней части пухлого «паучьего» тельца под пластиком. Багажник не особо большой, но при этом легко вмещает в себя один шлем и куртку. Но не спешите огорчаться! Опционально на Spyder устанавливается комплект задних кофров а ля «хочу быть Голдой», а также музыка и прочие прелести жизни.<br /> <br /> Теперь о баке. Он большой, 27 литров, но его горловина спрятана под сиденьем, и доступ к нему открывается только после поднятия такового. <br /> <br />    Замок зажигания имеет кучу положений и, по совместительству, подрабатывает также и замком бака, и замком багажника. Самое интересное, что крышка последнего никак не подпружинена, а положение замка «открытие багажника» никак не фиксируется. <br />    И если вы попытаетесь в одиночку открыть его – вы тут же станете звездой «ютюба», ибо все прохожие достанут мобилки и видео получится весьма комичным: в положении «полуприсядь» нужно одной рукой держать замок, а второй пытаться поддеть пальцем крышку. И главное – её потом не упустить, так как она захлопнется, и всё придётся начинать сначала. Хотелось бы посмотреть в глаза тому, кто это придумал!<br /> <br /> Ну что же ты… Поехали! Ну, дык… ПОЕХАЛИ! Почему же он не заводится? <br /> <br />    Оказывается, нужно нажать кнопку «MEMORY» на тыльной стороне левого пульта, а также вытащить и вставить обратно «ПАМЯТКУ ДЛЯ ВОДИТЕЛЯ»!!! Тем самым мы подтверждаем, что мы её изучили, нас предупредили, и мы согласны со всем там изложенным. Вчитываться в эту самую памятку не было времени, но в общих чертах: используйте шлем, не забудьте носовой платок, а если пойдёт дождь – надевайте галоши. Расположена она на куске гибкого пластика, аккурат над приборкой и, если её вытащить, она свешивается и перекрывает приборы. В разрезе всеобщего веселья было найдено и практическое применение этой памятке! Если вы разогнались настолько, что вам стало страшно смотреть на спидометр – вытаскивайте памятку – приборы будут не видны! После того, как датчик опознал момент окончания процесса «ознакомление водителя с памяткой», двигатель можно заводить! Басовитый породистый рык приятно растекается по асфальту… Первый ознакомительный круг расставил все точки над «i». Всё же, это не мотоцикл! Это снегоход или «квадрик».<br /> <br />     И как я рад, что не написал эту статью сразу после покатушек! Разнёс бы в пух и прах его устойчивость! А когда «переварил» впечатления, стало ясно – сам Spyder реально избыточно устойчив, и перевернуть его на асфальте совершенно невозможно. И кто тогда виноват, что водитель на поворотах всё время пытается «сойти»?<br />    Если «райдер» имеет опыт вождения снегохода или квадроцикла – он чувствует себя как дома. А вот «академическим» мотоциклистам придётся ко многому привыкать. <br />    В «мануале» написано: разгон за 4,5 секунды до сотни – это сложно себе представить. Нет, на стенде он, может быть, сможет и 3,5… Но вот на асфальте – основной вес идёт на передок, и заднее колесо легко срывается в пробуксовку одним газом, вплоть до третьей передачи. Очень эффектно, но не эффективно. Если не давать ему буксовать – разгонная динамика будет на уровне дорожной 600-ки. Радиус разворота достаточно приличный, но наличие реверса делает аппарат весьма маневренным. Только не по пробкам, конечно. Сам владелец сетовал на подвеску: мол, хороша только по хорошим дорогам… Не заметил. Придавив Spyder своими 100 кг живого веса (+ экип), я ощутил себя практически на эндурике. Передняя подвеска отрабатывает идеально, а задней я помогал, привставая. Даже «лежачие полицейские» практически не замечались. К его своенравию быстро привыкаешь и буквально через полчасика можно смело «врубаться» в трафик. Но нужно быть готовым, что вокруг вас будет постоянная пробка. Все хотят посмотреть и снять это чудо на мобильный телефон. Особенно опасно, когда едущий за вами водитель здоровенного джипа смотрит на дорогу через объектив мобильника… К сожалению, от этого не уйти. Такая компоновка появилась не так давно, и до тех пор, пока в каждом дворе не будет припарковано хотя бы по одному Spyder’у, он всегда будет вызывать интерес окружающих. Но я отвлёкся. Описать словами эмоции от вождения Spyder’а крайне сложно: это коктейль из удовольствия и адреналина. Эргономика на высоте, сидение большое и удобное, коробка работает четко. Что ещё надо для покатушек выходного дня или загородных прогулок с хорошенькой спутницей? Для ежедневной езды, да ещё и по городу, он вообще не подходит. Всех преимуществ мотоцикла Spyder лишён, но, тем не менее, кое-какие достоинства также присутствуют. Отношение к нему, как к игрушке, проходит после первого же ознакомительного круга. Он серьёзен и влюбляет в себя. Диапазон его применения весьма широк. От «статусного» аксессуара – до предмета первой необходимости, когда по каким либо внутренним причинам человек не готов сесть на два колеса.</p>\r\n<p> </p>\r\n<p style=\"text-align: left;\"><strong>Мнение владельца: Николай Петров</strong><br /> <br /> К сожалению (или к счастью), я не являюсь мастером литературного жанра, и поэтому «задвину» основные тезисы без последующей аргументации. <br /> <br /> 1. Если кто-то страдает от недостатка внимания к своей персоне – Spyder отличное решение данной проблемы. Бороться с этим бесполезно. Нужно быть готовым, что «скики жрэ» и «скики прэ» вы будете слышать в 20 раз чаще, чем за рулём самого навороченного мотоцикла.<br /> <br /> 2. Далеко не у всех, кто на него сядет, с ним сложится «любовь с первого взгляда». Но, накатав на нём пару тысяч, вам будет сложно его не полюбить! Это действительно удовольствие, пусть даже и в развлекательных целях.<br /> <br /> 3. Видимо, на родине Spyder’а асфальтное покрытие совершенно другого качества… Потому что ощутить всю прелесть скоростной езды на нём можно разве что на бориспольской и новообуховской трассе, ну и на одесской, после Жашкова. На утыканых колдобинами обычных дорогах «ловить нечего» уже после 100 км/ч…</p>\r\n<p> </p>\r\n<p style=\"text-align: left;\"><strong>Мнение:  Владимир Дорда</strong><br /> <br />    Первое впечатление получилось какое-то двойственное. Взгляд, безусловно, притягивает, да и эмоции вызывает только положительные. Но все же немного смущает устойчивая ассоциация со снегоходом на колесиках. <br /> <br />    Итак, первый пробный заезд. Посадка удобная и привычная, фактически, старая добрая «классика». Сидеть действительно очень удобно. Ноги сами находят подножки в самых удобных для физиологии человека местах, рычаг коробки и педаль тормозов тоже на привычных местах, а вот правая рука постоянно хватает воздух, не находя ручного тормоза. Первые пару секунд по этому поводу возникает паника, но потом быстро вспоминаешь о ножном тормозе, и успокаиваешься. Сцепление в меру мягкое и приятное, никакого дискомфорта. Коробка четкая, что тоже очень порадовало. <br />    Мотор работает достаточно ровно, на ручку отзывается замечательно, никаких провалов. Трогается с места легко и без рывков, газ крутить не обязательно, опять же – кубатура и запас мощности. И вот – первый поворот: что-то не так… Инстинктивно хочется наклониться в сторону поворота, а «непривычная» для мотоциклиста сила буквально пытается выдернуть тебя в противоположную. Поначалу жутковато, но уже во второй раз проходится гораздо легче – просто чуть-чуть смещаешься в сторону поворота и как-то чувствуешь себя спокойней, хотя мозгами и понимаешь, что это не обязательно – такая куча электроники просто не даст Спайдеру перевернуться! Устойчивость у него действительно потрясающая! <br /> <br />    По прямой разгоняется как мощнейший спорткар. Никаких отрываний передних колес – только свист и дым из-под заднего колеса, и очень приятное ускорение! Никак рывков – идет ровно и даже несколько расслабляет. Тормоза отличные: при желании можно остановиться, как вкопанному, но опять же, как и с поворотами – главное удержаться в седле, так как перегрузки действительно ощутимые. Хотя, уверен, что все дело в привычке.<br />    Подвеска тоже порадовала: передней вообще не чувствуется, все отлично отрабатывает, задняя, конечно, немного ей уступает, но особого дискомфорта тоже не заметил. Еще один немаловажный плюс – присутствие заднего хода, так как толкать его одному очень неудобно. В целом аппарат понравился, что-то в нем есть необычное, и своих ценителей он точно найдет, но это все же в большей степени развлекательный вид транспорта, как дорогая и красивая игрушка не на каждый день.<br />  </p>\r\n<p> </p>\r\n<p style=\"text-align: right;\"><em>Текст: Андрей Блинов<br /> Фото: Влад Лиховидов</em><br />  </p>\r\n<p><strong style=\"color: #000000; font-family: Arial, Verdana, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; letter-spacing: normal; line-height: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; background-color: #ffffff;\">Полное или частичное копирование статьи возможно только с активной ссылкой на<a href=\"http://www.motodrive.com.ua/\" rel=\"nofollow\"><span class=\"Apple-converted-space\"> </span>http://motodrive.com.ua</a></strong></p>',1,0,0,8,'2013-10-22 11:14:19',282,'','2013-10-22 12:14:09',282,0,'0000-00-00 00:00:00','2013-10-22 11:14:19','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"0\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',6,0,0,'','',1,1,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',1,'*',''),(5,42,'В Subaru недовольны проектом седана на базе Toyota GT 86','subaru-toyota-gt-86','','<h1>В Subaru недовольны проектом седана на базе Toyota GT 86</h1>\r\n<p> </p>\r\n<div class=\"post-content\">\r\n<div style=\"text-align: justify;\">Разработке седана на платформе Toyota GT 86 и Subaru BRZ воспротивился один из участников проекта. Японцы планировали показать четырехдверную версию модели уже в марте, но сейчас, судя по всему, реализация проекта будет отложена на неопределенный срок.</div>\r\n<div style=\"text-align: center;\"><img src=\"http://img.huyandex.com/FilesPics/huyandex/1803/001/180.jpg\" border=\"0\" style=\"margin: 2px; max-width: 680px;\" />',' </div>\r\n<div style=\"text-align: justify;\">  В Северной Америке спорткар продается под \"молодежным\" брендом Scion, который входит в концерн Toyota. Руководство бренда уже успело оценить перспективы появления седана на рынке США и настаивает на том, чтобы активизировать его разработку. Американцы были бы готовы начать продажи новинки уже в 2016 году.</div>\r\n<div style=\"text-align: justify;\"> </div>\r\n<div style=\"text-align: justify;\">Однако, как заявил некий анонимный источник в компании агентству Edmunds, проекту \"ставят палки в колеса\" представители Subaru. Таким образом, будущее седана, который уже признали потенциально успешным, пока остается неопределенным.</div>\r\n<div style=\"text-align: justify;\"> </div>\r\n<div style=\"text-align: justify;\">  Ранее сообщалось, что седан должен стать более практичной моделью, чем купе. За счет удлиненной на 100 мм колесной базы задние пассажиры четырехдверной Toyota GT 86 получили бы больше свободного места. Под капот седана планировалось имплантировать, помимо традиционного двухлитрового \"атмосферника\", еще и гибридную силовую установку мощностью около 270 лошадиных сил.</div>\r\n<div style=\"text-align: justify;\"> </div>\r\n<div style=\"text-align: justify;\">  Стоит отметить, что ранее в отношениях партнеров по проекту уже возникали трения. В частности, представители Subaru назвали открытый вариант Toyota GT 86, показанный японцами весной, \"неприятным сюрпризом\". Оказалось, что, создавая кабриолет, инженеры Toyota не сочли нужным оповестить партнеров о своей разработке.</div>\r\n</div>\r\n<p> </p>',1,0,0,2,'2013-10-22 11:17:45',282,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','2013-10-22 11:17:45','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',1,0,2,'','',1,3,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(6,43,'Электромобиль BMW грозит превратиться в дефицитный товар','bmw','','<h1>Электромобиль BMW грозит превратиться в дефицитный товар</h1>\r\n<p> </p>\r\n<div class=\"post-content\">\r\n<div style=\"text-align: justify;\">Производство BMW i3 - первого серийного электромобиля баварской марки - не успело стартовать, как на повестку дня уже поставлено увеличение объемов выпуска. Ведь дилеры уже распродали почти все 10 тысяч машин, которые еще только предстоит собрать до сентября следующего года.</div>\r\n<div style=\"text-align: center;\"><img src=\"http://img.huyandex.com/FilesPics/huyandex/1802/001/117.jpg\" border=\"0\" style=\"margin: 2px; max-width: 680px;\" /></div>\r\n<div style=\"text-align: justify;\">','Первоначально в BMW за первый год производства своего первого серийного электромобиля планировали собрать лишь 10 тысяч машин. Однако, по словам финансового директора концерна Фридриха Айхнера, которого цитирует The Detroit News, количество предварительных заказов на i3 уже достигло 8 тысяч. “Мы не исключаем, что спрос будет расти и дальше. В этом случае потребуются дополнительные инвестиции в производство”, - заявил Айхнер на пресс-конференции в Амстердаме, – “Мы будем регулировать производственные мощности в зависимости от спроса”.</div>\r\n<div style=\"text-align: justify;\"> </div>\r\n<div style=\"text-align: justify;\">Эксперты уже назвали повышенный интерес к BMW i3 свидетельством позитивных тенденций в отрасли. О намерении увеличить количество производимых электромобилей и гибридных моделей заявляли в разное время многие производители, включая Volkswagen, Renault и Nissan. Популярность BMW i3 тем более удивляет, что серийный электромобиль стал значительно дороже своих конкурентов. Производитель собирается продавать его в Европе по цене от 34 950 евро - в то время как Nissan Leaf стоит на 11 тысяч дешевле.</div>\r\n<div style=\"text-align: justify;\"> </div>\r\n<div style=\"text-align: justify;\">Производство BMW i3 на заводе в Лейпциге стартовало в середине сентября. Концерн инвестировал в модернизацию предприятия около 400 миллионов евро. У европейских дилеров модель должна появиться уже 16 ноября этого года, до России хэтчбек доберется в 2014 году. </div>\r\n</div>\r\n<p> </p>',1,0,0,2,'2013-10-22 11:20:36',282,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','2013-10-22 11:20:36','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',1,0,1,'','',1,0,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',1,'*',''),(7,44,'Новейший Bentley GT V8 S будет стоить в России от 10 млн рублей','bentley-gt-v8-s-10','','<h1>Новейший Bentley GT V8 S будет стоить в России от 10 млн рублей</h1>\r\n<p> </p>\r\n<div class=\"post-content\">\r\n<div style=\"text-align: justify;\">Франкфуртская премьера компании Bentley – новый GT V8 S – добрался до России. Британский автопроизводитель объявил о начале приема заказов на модель, которая представлена в кузовах купе и кабриолет.   </div>\r\n<div style=\"text-align: center;\"> <img src=\"http://img.huyandex.com/FilesPics/huyandex/1779/001/198.jpg\" border=\"0\" style=\"margin: 2px; max-width: 680px;\" /></div>\r\n<div style=\"text-align: justify;\">','Появление новейшей модели в России, спустя всего пару недель после мировой премьеры, свидетельствует о том, насколько важным является российский рынок для британской компании. Об этом говорит и расширение географии дилерских центров марки, а также приоритетные поставки новых моделей в нашу страну. По заявлениям самой компании, Россия является ключевым развивающимся рынком для Bentley.</div>\r\n<div style=\"text-align: justify;\"> </div>\r\n<div style=\"text-align: justify;\">По словам главы Bentley в России Гюнтера Берингера, семейство Continental - и в частности модели GT W12 и GT V8 – пользуется невероятным успехом у россиян, а названные автомобили стали самыми продаваемыми за всю историю марки в нашей стране.</div>\r\n<div style=\"text-align: justify;\"> </div>\r\n<div style=\"text-align: justify;\">  Напомним, мировая премьера Bentley GT V8 S – нового члена семейства Continental – прошла на автосалоне во Франкфурте 10 сентября. Автомобиль представлен в варианте купе и кабриолет и оснащается улучшенной версией 4-литрового двигателя с двумя турбокомпрессорами, имеющего теперь 528 л.с. мощности и пиковый крутящий момент в 680 Нм. Кроме того машина дополнена модифицированной подвеской и новыми элементами экстерьера и интерьера.</div>\r\n<div style=\"text-align: justify;\"> </div>\r\n<div style=\"text-align: justify;\">  Заказы на новинку уже принимаются, а первые поставки ожидаются в середине следующего года. В России базовый вариант Bentley GT V8 S обойдется в 9 917 000 рублей. Версия GTC V8 S будет стоить от 10 909 000 рублей.</div>\r\n<div style=\"text-align: justify;\"> </div>\r\n<div style=\"text-align: justify;\">  \"Пополнение модельного ряда Continental, несомненно, будет оценено российскими клиентами, которые отдают предпочтение мощным и быстрым автомобилям. Результаты продаж показывают, что спортивные купе являются одним из наиболее востребованных форматов в люксовом сегменте, и новинка Bentley как нельзя лучше отвечает запросам и потребностям своих клиентов\", - отметил Гюнтер Берингер.</div>\r\n</div>\r\n<p> </p>',1,0,0,2,'2013-10-22 11:22:45',282,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','2013-10-22 11:22:45','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',1,0,0,'','',1,1,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(8,45,'Российский гонщик Д.Квят подписал контракт с командой \"Формулы-1\"','1','','<h1>Российский гонщик Д.Квят подписал контракт с командой \"Формулы-1\"</h1>\r\n<p> </p>\r\n<div class=\"post-content\">\r\n<div align=\"justify\">Российский гонщик Даниил Квят станет вторым пилотом команды Toro Rosso в новом сезоне \"Формулы-1\". Об этом накануне официально сообщила пресс-служба итальянской \"конюшни\".<br />\r\n<div align=\"center\"><img src=\"http://img.huyandex.com/FilesPics/huyandex/1803/001/167.jpg\" border=\"0\" width=\"700\" height=\"466\" style=\"margin: 2px; max-width: 680px;\" /></div>\r\n','Данное изменение стало возможным лишь после того, как австралиец Даниэль Риккардо перебрался в команду Red Bull, а на его место пришел 19-летний россиянин. В свою очередь, Риккардо в Red Bull заменит другого австралийца Марка Уэббера, который покидает гоночную серию.<br /><br />Между тем, россиянин теперь будет партнером первого пилота команды Жана-Эрика Верня, который недавно продлил контракт с Toro Rosso.<br /><br />\"Это фантастические новости. Мечты сбываются. Я хотел бы поблагодарить Red Bull и Toro Rosso за то, что мне предоставлен этот бесценный шанс! Я хотел попасть в Формулу, как только начал заниматься картингом, а в следующем сезоне эта мечта станет реальностью. Мне удалось почувствовать вкус работы с Toro Rosso на тестах в Сильверстоуне, и этот опыт доставил огромное удовольствие.<br /><br />Безусловно, тот факт, что я живу в Италии и говорю по-итальянски, поможет мне быстро войти в коллектив этой команды\", – передает слова Квята пресс-служба команды.<br /><br />Отметим, что российский гонщик летом нынешнего года принимал участие в молодежных тестах за рулем болида \"Торо Россо\". Он также является участником совместной программы для молодых пилотов, реализуемой вместе с \"Ред Булл\".<br /><br />Выходцем из этой же программы является и нынешний чемпион мира Себастьян Феттель. Немец, напомним, до своего перехода в Red Bull выступал именно в Toro Rosso и в 2008 году принес команде поул и победу в гонке на трассе в Монце, которая до сих пор является для команды единственной.<br /><br />Ранее еще один российский гонщик Сергей Сироткин заключил контракт с командой Sauber и должен стать ее основным пилотом в будущем году.<br /><br />Вместе с тем, Квят станет третьим российским пилотом после выступления в серии Виталия Петрова, который ныне также мечтает найти себе место в одной из команд.<br /><br />\"Формула-1\", кроме прочего, сейчас также представлена российской командой \"Маруся\", за которую выступают Макс Чилтон и Жюль Бьянки. На последнем этапе чемпионата мира в Японии Чилтон показал 19-й результат. Бьянки не финишировал, поскольку угодил в аварию.</div>\r\n</div>\r\n<p> </p>\r\n<table style=\"text-align: center; margin-bottom: 20px;\">\r\n<tbody>\r\n<tr>\r\n<td> </td>\r\n<td> </td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p> </p>\r\n<div class=\"rating-holder\"><a id=\"button_negative\" class=\"button negative\"></a>   <span class=\"text\"> Впесду <sub class=\"count\">2</sub> </span>  <a id=\"button_positive\" class=\"button positive\"></a>   <span class=\"text\"> Охуенно <sub class=\"count\">3</sub> </span> </div>\r\n<p> </p>',1,0,0,10,'2013-10-22 11:24:53',282,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','2013-10-22 11:24:53','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',1,0,2,'','',1,1,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',1,'*',''),(9,46,'ФСБ добивается полного доступа к данным интернет-пользователей','2013-10-22-11-26-32','','<h1>ФСБ добивается полного доступа к данным интернет-пользователей</h1>\r\n<p> </p>\r\n<div class=\"post-content\">\r\n<div align=\"justify\">Федеральная служба безопасности РФ добивается максимального контроля информации в интернете.</div>\r\n<div align=\"center\"><img src=\"http://img.huyandex.com/FilesPics/huyandex/1802/001/118.jpg\" border=\"0\" width=\"700\" height=\"559\" style=\"margin: 2px; max-width: 680px;\" /> </div>\r\n<div align=\"justify\">','Спецслужбы согласовали проект приказа Министерства связи и массовых коммуникаций, в соответствии с которым к 1 июля 2014г. все провайдеры обязаны установить на свои сети оборудование для записи и хранения интернет-трафика на срок не менее 12 часов, причем спецслужбы получат прямой доступ к этим записям.<br /><br />Речь идет о проекте приказа Минкомсвязи, согласованном с ФСБ, рассказали газете \"Коммерсантъ\" два источника на телекоммуникационном рынке. Документ должен пройти регистрацию в Минюсте и вступить в силу до конца года.<br /><br />Проект приказа обязывает интернет-провайдера подключить свою сеть к спецоборудованию, которым будут управлять спецслужбы. Через это оборудование будет проходить весь интернет-трафик, причем спецслужбы получат техническую возможность записывать все поступающие пакеты данных и хранить их не менее 12 часов.<br /><br />Документ детализирует, какая информация о пользователях будет передаваться провайдером спецслужбам. В частности, это телефонный номер, IP-адрес, имя учетной записи пользователя, адреса электронной почты в сервисах mail.ru, yandex.ru, rambler.ru, gmail.com, yahoo.com и др.; уникальный идентификационный номер пользователя интернет-чата ICQ, международный идентификатор мобильного оборудования (IMEI), идентификаторы вызываемого и вызывающего абонентов интернет-телефонии.<br /><br />В проекте приказа также говорится, что провайдеры должны передавать в спецслужбы информацию о местоположении абонентских терминалов пользователей сервисов интернет-телефонии (Google Talk, Skype и др.).<br /><br />Как рассказал источник в одном из министерств, операторы традиционно оплачивали установку и эксплуатацию оборудования СОРМ (система оперативно-разыскных мероприятий), хотя по закону за СОРМ должно платить государство.</div>\r\n</div>\r\n<p> </p>',1,0,0,10,'2013-10-22 11:26:32',282,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','2013-10-22 11:26:32','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',1,0,1,'','',1,0,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(10,47,'Мексиканский наркобарон был застрелен клоуном-убийцей','2013-10-22-11-28-30','','<h1>Мексиканский наркобарон был застрелен клоуном-убийцей</h1>\r\n<p> </p>\r\n<div class=\"post-content\">\r\n<div align=\"justify\">Один из основателей мексиканского наркокартеля в Тихуане, 63-летний Франсиско Арельяно Феликс был застрелен на вечеринке в популярном среди мексиканских туристов районе Кабо. Его убийцей стал человек в костюме клоуна.<br />\r\n<div align=\"center\"><img src=\"http://img.huyandex.com/FilesPics/huyandex/1801/001/122.jpg\" border=\"0\" width=\"700\" height=\"393\" style=\"margin: 2px; max-width: 680px;\" /></div>\r\n','Правоохранители сообщают, что среди нападавших, помимо клоуна, был еще один мужчина.<br /><br />Ф.Арельяно Феликс несколько раз сидел в тюрьмах Мексики и США. В 2008 году он вышел из американской тюрьмы, где отбывал срок за торговлю кокаином. На момент убийства у мексиканской полиции не было претензий к Ф.Арельяно Феликсу.<br /><br />По информации правоохранителей из США, Тихуанский картель был замешан в ряде похищений и убийств. Его основала семья Ф.Арельяно Феликса. Трое из братьев убитого сейчас находятся в американских тюрьмах. Брат Ф. Арельяно.Феликса Рамон погиб в перестрелке с полицией в 2002 году.<br /><br />Отметим, что Тихуанский картель некогда обеспечивал основную часть наркотрафика между Мексикой и Калифорнией. Сейчас влияние картеля существенно ослабло.<br /><br />Полиция попыталась поймать убийцу Ф. Арельяно Феликса по горячим следам, однако сделать этого не удалось.<br /><br />Отметим, что члены семьи Арельяно Феликс являлись прототипами героев фильма Стивена Содерберга \"Траффик\", который в 2000 году получил 4 кинопремии \"Оскар\".<br /><br />Мексика является одним из ключевых звеньев мирового наркотрафика. В частности, через эту страну в США попадает до 90% кокаина. Наркокартели являются главной проблемой и внутри страны - с 2007 года в ходе вооруженной борьбы с ними погибли около 70 тыс.человек.</div>\r\n</div>\r\n<p> </p>',1,0,0,10,'2013-10-22 11:28:30',282,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','2013-10-22 11:28:30','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',1,0,0,'','',1,0,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*','');
/*!40000 ALTER TABLE `xofti_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xofti_content_frontpage`
--

DROP TABLE IF EXISTS `xofti_content_frontpage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xofti_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xofti_content_frontpage`
--

LOCK TABLES `xofti_content_frontpage` WRITE;
/*!40000 ALTER TABLE `xofti_content_frontpage` DISABLE KEYS */;
INSERT INTO `xofti_content_frontpage` VALUES (4,3),(6,2),(8,1);
/*!40000 ALTER TABLE `xofti_content_frontpage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xofti_content_rating`
--

DROP TABLE IF EXISTS `xofti_content_rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xofti_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xofti_content_rating`
--

LOCK TABLES `xofti_content_rating` WRITE;
/*!40000 ALTER TABLE `xofti_content_rating` DISABLE KEYS */;
/*!40000 ALTER TABLE `xofti_content_rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xofti_core_log_searches`
--

DROP TABLE IF EXISTS `xofti_core_log_searches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xofti_core_log_searches` (
  `search_term` varchar(128) NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xofti_core_log_searches`
--

LOCK TABLES `xofti_core_log_searches` WRITE;
/*!40000 ALTER TABLE `xofti_core_log_searches` DISABLE KEYS */;
/*!40000 ALTER TABLE `xofti_core_log_searches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xofti_demotivator_img`
--

DROP TABLE IF EXISTS `xofti_demotivator_img`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xofti_demotivator_img` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `ordering` int(11) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `checked_out` int(11) NOT NULL,
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `alias` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xofti_demotivator_img`
--

LOCK TABLES `xofti_demotivator_img` WRITE;
/*!40000 ALTER TABLE `xofti_demotivator_img` DISABLE KEYS */;
INSERT INTO `xofti_demotivator_img` VALUES (1,'1',1,1,0,'0000-00-00 00:00:00',282,'','2013-10-22 17:26:27','1','images/com_demotivator/180.jpg');
/*!40000 ALTER TABLE `xofti_demotivator_img` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xofti_extensions`
--

DROP TABLE IF EXISTS `xofti_extensions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xofti_extensions` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `element` varchar(100) NOT NULL,
  `folder` varchar(100) NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  `access` int(10) unsigned NOT NULL DEFAULT '1',
  `protected` tinyint(3) NOT NULL DEFAULT '0',
  `manifest_cache` text NOT NULL,
  `params` text NOT NULL,
  `custom_data` text NOT NULL,
  `system_data` text NOT NULL,
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0',
  PRIMARY KEY (`extension_id`),
  KEY `element_clientid` (`element`,`client_id`),
  KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  KEY `extension` (`type`,`element`,`folder`,`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=819 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xofti_extensions`
--

LOCK TABLES `xofti_extensions` WRITE;
/*!40000 ALTER TABLE `xofti_extensions` DISABLE KEYS */;
INSERT INTO `xofti_extensions` VALUES (1,'com_mailto','component','com_mailto','',0,1,1,1,'{\"legacy\":false,\"name\":\"com_mailto\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_MAILTO_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(2,'com_wrapper','component','com_wrapper','',0,1,1,1,'{\"legacy\":false,\"name\":\"com_wrapper\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_WRAPPER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(3,'com_admin','component','com_admin','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_admin\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_ADMIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(4,'com_banners','component','com_banners','',1,1,1,0,'{\"legacy\":false,\"name\":\"com_banners\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_BANNERS_XML_DESCRIPTION\",\"group\":\"\"}','{\"purchase_type\":\"3\",\"track_impressions\":\"0\",\"track_clicks\":\"0\",\"metakey_prefix\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(5,'com_cache','component','com_cache','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_cache\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_CACHE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(6,'com_categories','component','com_categories','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_categories\",\"type\":\"component\",\"creationDate\":\"December 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(7,'com_checkin','component','com_checkin','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_checkin\",\"type\":\"component\",\"creationDate\":\"Unknown\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2008 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_CHECKIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(8,'com_contact','component','com_contact','',1,1,1,0,'{\"legacy\":false,\"name\":\"com_contact\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_CONTACT_XML_DESCRIPTION\",\"group\":\"\"}','{\"show_contact_category\":\"hide\",\"show_contact_list\":\"0\",\"presentation_style\":\"sliders\",\"show_name\":\"1\",\"show_position\":\"1\",\"show_email\":\"0\",\"show_street_address\":\"1\",\"show_suburb\":\"1\",\"show_state\":\"1\",\"show_postcode\":\"1\",\"show_country\":\"1\",\"show_telephone\":\"1\",\"show_mobile\":\"1\",\"show_fax\":\"1\",\"show_webpage\":\"1\",\"show_misc\":\"1\",\"show_image\":\"1\",\"image\":\"\",\"allow_vcard\":\"0\",\"show_articles\":\"0\",\"show_profile\":\"0\",\"show_links\":\"0\",\"linka_name\":\"\",\"linkb_name\":\"\",\"linkc_name\":\"\",\"linkd_name\":\"\",\"linke_name\":\"\",\"contact_icons\":\"0\",\"icon_address\":\"\",\"icon_email\":\"\",\"icon_telephone\":\"\",\"icon_mobile\":\"\",\"icon_fax\":\"\",\"icon_misc\":\"\",\"show_headings\":\"1\",\"show_position_headings\":\"1\",\"show_email_headings\":\"0\",\"show_telephone_headings\":\"1\",\"show_mobile_headings\":\"0\",\"show_fax_headings\":\"0\",\"allow_vcard_headings\":\"0\",\"show_suburb_headings\":\"1\",\"show_state_headings\":\"1\",\"show_country_headings\":\"1\",\"show_email_form\":\"1\",\"show_email_copy\":\"1\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"1\",\"custom_reply\":\"0\",\"redirect\":\"\",\"show_category_crumb\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(9,'com_cpanel','component','com_cpanel','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_cpanel\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_CPANEL_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(10,'com_installer','component','com_installer','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_installer\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_INSTALLER_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(11,'com_languages','component','com_languages','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_languages\",\"type\":\"component\",\"creationDate\":\"2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\"}','{\"administrator\":\"en-GB\",\"site\":\"en-GB\"}','','',0,'0000-00-00 00:00:00',0,0),(12,'com_login','component','com_login','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_login\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_LOGIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(13,'com_media','component','com_media','',1,1,0,1,'{\"legacy\":false,\"name\":\"com_media\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_MEDIA_XML_DESCRIPTION\",\"group\":\"\"}','{\"upload_extensions\":\"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS\",\"upload_maxsize\":\"10\",\"file_path\":\"images\",\"image_path\":\"images\",\"restrict_uploads\":\"1\",\"allowed_media_usergroup\":\"3\",\"check_mime\":\"1\",\"image_extensions\":\"bmp,gif,jpg,png\",\"ignore_extensions\":\"\",\"upload_mime\":\"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/x-shockwave-flash,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip\",\"upload_mime_illegal\":\"text\\/html\"}','','',0,'0000-00-00 00:00:00',0,0),(14,'com_menus','component','com_menus','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_menus\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_MENUS_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(15,'com_messages','component','com_messages','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_messages\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_MESSAGES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(16,'com_modules','component','com_modules','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_modules\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_MODULES_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(17,'com_newsfeeds','component','com_newsfeeds','',1,1,1,0,'{\"legacy\":false,\"name\":\"com_newsfeeds\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\"}','{\"show_feed_image\":\"1\",\"show_feed_description\":\"1\",\"show_item_description\":\"1\",\"feed_word_count\":\"0\",\"show_headings\":\"1\",\"show_name\":\"1\",\"show_articles\":\"0\",\"show_link\":\"1\",\"show_description\":\"1\",\"show_description_image\":\"1\",\"display_num\":\"\",\"show_pagination_limit\":\"1\",\"show_pagination\":\"1\",\"show_pagination_results\":\"1\",\"show_cat_items\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(18,'com_plugins','component','com_plugins','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_plugins\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_PLUGINS_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(19,'com_search','component','com_search','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_search\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_SEARCH_XML_DESCRIPTION\",\"group\":\"\"}','{\"enabled\":\"0\",\"show_date\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(20,'com_templates','component','com_templates','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_templates\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_TEMPLATES_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(21,'com_weblinks','component','com_weblinks','',1,1,1,0,'{\"legacy\":false,\"name\":\"com_weblinks\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_WEBLINKS_XML_DESCRIPTION\",\"group\":\"\"}','{\"show_comp_description\":\"1\",\"comp_description\":\"\",\"show_link_hits\":\"1\",\"show_link_description\":\"1\",\"show_other_cats\":\"0\",\"show_headings\":\"0\",\"show_numbers\":\"0\",\"show_report\":\"1\",\"count_clicks\":\"1\",\"target\":\"0\",\"link_icons\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(22,'com_content','component','com_content','',1,1,0,1,'{\"legacy\":false,\"name\":\"com_content\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_CONTENT_XML_DESCRIPTION\",\"group\":\"\"}','{\"article_layout\":\"_:default\",\"show_title\":\"1\",\"link_titles\":\"1\",\"show_intro\":\"1\",\"show_category\":\"1\",\"link_category\":\"1\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_author\":\"1\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"1\",\"show_item_navigation\":\"1\",\"show_vote\":\"0\",\"show_readmore\":\"1\",\"show_readmore_title\":\"1\",\"readmore_limit\":\"100\",\"show_icons\":\"1\",\"show_print_icon\":\"1\",\"show_email_icon\":\"1\",\"show_hits\":\"1\",\"show_noauth\":\"0\",\"show_publishing_options\":\"1\",\"show_article_options\":\"1\",\"show_urls_images_frontend\":\"0\",\"show_urls_images_backend\":\"1\",\"targeta\":0,\"targetb\":0,\"targetc\":0,\"float_intro\":\"left\",\"float_fulltext\":\"left\",\"category_layout\":\"_:blog\",\"show_category_title\":\"0\",\"show_description\":\"0\",\"show_description_image\":\"0\",\"maxLevel\":\"1\",\"show_empty_categories\":\"0\",\"show_no_articles\":\"1\",\"show_subcat_desc\":\"1\",\"show_cat_num_articles\":\"0\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_num_articles_cat\":\"1\",\"num_leading_articles\":\"1\",\"num_intro_articles\":\"4\",\"num_columns\":\"2\",\"num_links\":\"4\",\"multi_column_order\":\"0\",\"show_subcategory_content\":\"0\",\"show_pagination_limit\":\"1\",\"filter_field\":\"hide\",\"show_headings\":\"1\",\"list_show_date\":\"0\",\"date_format\":\"\",\"list_show_hits\":\"1\",\"list_show_author\":\"1\",\"orderby_pri\":\"order\",\"orderby_sec\":\"rdate\",\"order_date\":\"published\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"show_feed_link\":\"1\",\"feed_summary\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(23,'com_config','component','com_config','',1,1,0,1,'{\"legacy\":false,\"name\":\"com_config\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_CONFIG_XML_DESCRIPTION\",\"group\":\"\"}','{\"filters\":{\"1\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"6\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"7\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"2\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"3\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"4\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"5\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"8\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"}}}','','',0,'0000-00-00 00:00:00',0,0),(24,'com_redirect','component','com_redirect','',1,1,0,1,'{\"legacy\":false,\"name\":\"com_redirect\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_REDIRECT_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(25,'com_users','component','com_users','',1,1,0,1,'{\"legacy\":false,\"name\":\"com_users\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_USERS_XML_DESCRIPTION\",\"group\":\"\"}','{\"allowUserRegistration\":\"1\",\"new_usertype\":\"2\",\"guest_usergroup\":\"1\",\"sendpassword\":\"1\",\"useractivation\":\"2\",\"mail_to_admin\":\"1\",\"captcha\":\"\",\"frontend_userparams\":\"1\",\"site_language\":\"0\",\"change_login_name\":\"0\",\"reset_count\":\"10\",\"reset_time\":\"1\",\"mailSubjectPrefix\":\"\",\"mailBodySuffix\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(27,'com_finder','component','com_finder','',1,1,0,0,'{\"legacy\":false,\"name\":\"com_finder\",\"type\":\"component\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_FINDER_XML_DESCRIPTION\",\"group\":\"\"}','{\"show_description\":\"1\",\"description_length\":255,\"allow_empty_query\":\"0\",\"show_url\":\"1\",\"show_advanced\":\"1\",\"expand_advanced\":\"0\",\"show_date_filters\":\"0\",\"highlight_terms\":\"1\",\"opensearch_name\":\"\",\"opensearch_description\":\"\",\"batch_size\":\"50\",\"memory_table_limit\":30000,\"title_multiplier\":\"1.7\",\"text_multiplier\":\"0.7\",\"meta_multiplier\":\"1.2\",\"path_multiplier\":\"2.0\",\"misc_multiplier\":\"0.3\",\"stemmer\":\"snowball\"}','','',0,'0000-00-00 00:00:00',0,0),(28,'com_joomlaupdate','component','com_joomlaupdate','',1,1,0,1,'{\"legacy\":false,\"name\":\"com_joomlaupdate\",\"type\":\"component\",\"creationDate\":\"February 2012\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(100,'PHPMailer','library','phpmailer','',0,1,1,1,'{\"legacy\":false,\"name\":\"PHPMailer\",\"type\":\"library\",\"creationDate\":\"2001\",\"author\":\"PHPMailer\",\"copyright\":\"(c) 2001-2003, Brent R. Matzelle, (c) 2004-2009, Andy Prevost. All Rights Reserved., (c) 2010-2011, Jim Jagielski. All Rights Reserved.\",\"authorEmail\":\"jimjag@gmail.com\",\"authorUrl\":\"https:\\/\\/code.google.com\\/a\\/apache-extras.org\\/p\\/phpmailer\\/\",\"version\":\"5.2\",\"description\":\"LIB_PHPMAILER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(101,'SimplePie','library','simplepie','',0,1,1,1,'{\"legacy\":false,\"name\":\"SimplePie\",\"type\":\"library\",\"creationDate\":\"2004\",\"author\":\"SimplePie\",\"copyright\":\"Copyright (c) 2004-2009, Ryan Parman and Geoffrey Sneddon\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/simplepie.org\\/\",\"version\":\"1.2\",\"description\":\"LIB_SIMPLEPIE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(102,'phputf8','library','phputf8','',0,1,1,1,'{\"legacy\":false,\"name\":\"phputf8\",\"type\":\"library\",\"creationDate\":\"2006\",\"author\":\"Harry Fuecks\",\"copyright\":\"Copyright various authors\",\"authorEmail\":\"hfuecks@gmail.com\",\"authorUrl\":\"http:\\/\\/sourceforge.net\\/projects\\/phputf8\",\"version\":\"0.5\",\"description\":\"LIB_PHPUTF8_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(103,'Joomla! Platform','library','joomla','',0,1,1,1,'{\"legacy\":false,\"name\":\"Joomla! Platform\",\"type\":\"library\",\"creationDate\":\"2008\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"http:\\/\\/www.joomla.org\",\"version\":\"11.4\",\"description\":\"LIB_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(200,'mod_articles_archive','module','mod_articles_archive','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_articles_archive\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters.\\n\\t\\tAll rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(201,'mod_articles_latest','module','mod_articles_latest','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_articles_latest\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_LATEST_NEWS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(202,'mod_articles_popular','module','mod_articles_popular','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_articles_popular\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(203,'mod_banners','module','mod_banners','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_banners\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_BANNERS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(204,'mod_breadcrumbs','module','mod_breadcrumbs','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_breadcrumbs\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_BREADCRUMBS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(205,'mod_custom','module','mod_custom','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(206,'mod_feed','module','mod_feed','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"July 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(207,'mod_footer','module','mod_footer','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_footer\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_FOOTER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(208,'mod_login','module','mod_login','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(209,'mod_menu','module','mod_menu','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(210,'mod_articles_news','module','mod_articles_news','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_articles_news\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_ARTICLES_NEWS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(211,'mod_random_image','module','mod_random_image','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_random_image\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_RANDOM_IMAGE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(212,'mod_related_items','module','mod_related_items','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_related_items\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_RELATED_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(213,'mod_search','module','mod_search','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_search\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_SEARCH_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(214,'mod_stats','module','mod_stats','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_stats\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(215,'mod_syndicate','module','mod_syndicate','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_syndicate\",\"type\":\"module\",\"creationDate\":\"May 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_SYNDICATE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(216,'mod_users_latest','module','mod_users_latest','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_users_latest\",\"type\":\"module\",\"creationDate\":\"December 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_USERS_LATEST_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(217,'mod_weblinks','module','mod_weblinks','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_weblinks\",\"type\":\"module\",\"creationDate\":\"July 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_WEBLINKS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(218,'mod_whosonline','module','mod_whosonline','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_whosonline\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_WHOSONLINE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(219,'mod_wrapper','module','mod_wrapper','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_wrapper\",\"type\":\"module\",\"creationDate\":\"October 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_WRAPPER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(220,'mod_articles_category','module','mod_articles_category','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_articles_category\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(221,'mod_articles_categories','module','mod_articles_categories','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_articles_categories\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(222,'mod_languages','module','mod_languages','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_languages\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(223,'mod_finder','module','mod_finder','',0,1,0,0,'{\"legacy\":false,\"name\":\"mod_finder\",\"type\":\"module\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_FINDER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(300,'mod_custom','module','mod_custom','',1,1,1,1,'{\"legacy\":false,\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(301,'mod_feed','module','mod_feed','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"July 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(302,'mod_latest','module','mod_latest','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_latest\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_LATEST_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(303,'mod_logged','module','mod_logged','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_logged\",\"type\":\"module\",\"creationDate\":\"January 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_LOGGED_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(304,'mod_login','module','mod_login','',1,1,1,1,'{\"legacy\":false,\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"March 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(305,'mod_menu','module','mod_menu','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"March 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(307,'mod_popular','module','mod_popular','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_popular\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(308,'mod_quickicon','module','mod_quickicon','',1,1,1,1,'{\"legacy\":false,\"name\":\"mod_quickicon\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_QUICKICON_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(309,'mod_status','module','mod_status','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_status\",\"type\":\"module\",\"creationDate\":\"Feb 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_STATUS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(310,'mod_submenu','module','mod_submenu','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_submenu\",\"type\":\"module\",\"creationDate\":\"Feb 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_SUBMENU_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(311,'mod_title','module','mod_title','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_title\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_TITLE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(312,'mod_toolbar','module','mod_toolbar','',1,1,1,1,'{\"legacy\":false,\"name\":\"mod_toolbar\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_TOOLBAR_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(313,'mod_multilangstatus','module','mod_multilangstatus','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_multilangstatus\",\"type\":\"module\",\"creationDate\":\"September 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_MULTILANGSTATUS_XML_DESCRIPTION\",\"group\":\"\"}','{\"cache\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(314,'mod_version','module','mod_version','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_version\",\"type\":\"module\",\"creationDate\":\"January 2012\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_VERSION_XML_DESCRIPTION\",\"group\":\"\"}','{\"format\":\"short\",\"product\":\"1\",\"cache\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(400,'plg_authentication_gmail','plugin','gmail','authentication',0,0,1,0,'{\"legacy\":false,\"name\":\"plg_authentication_gmail\",\"type\":\"plugin\",\"creationDate\":\"February 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_GMAIL_XML_DESCRIPTION\",\"group\":\"\"}','{\"applysuffix\":\"0\",\"suffix\":\"\",\"verifypeer\":\"1\",\"user_blacklist\":\"\"}','','',0,'0000-00-00 00:00:00',1,0),(401,'plg_authentication_joomla','plugin','joomla','authentication',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_authentication_joomla\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_AUTH_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(402,'plg_authentication_ldap','plugin','ldap','authentication',0,0,1,0,'{\"legacy\":false,\"name\":\"plg_authentication_ldap\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_LDAP_XML_DESCRIPTION\",\"group\":\"\"}','{\"host\":\"\",\"port\":\"389\",\"use_ldapV3\":\"0\",\"negotiate_tls\":\"0\",\"no_referrals\":\"0\",\"auth_method\":\"bind\",\"base_dn\":\"\",\"search_string\":\"\",\"users_dn\":\"\",\"username\":\"admin\",\"password\":\"bobby7\",\"ldap_fullname\":\"fullName\",\"ldap_email\":\"mail\",\"ldap_uid\":\"uid\"}','','',0,'0000-00-00 00:00:00',3,0),(404,'plg_content_emailcloak','plugin','emailcloak','content',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_content_emailcloak\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION\",\"group\":\"\"}','{\"mode\":\"1\"}','','',0,'0000-00-00 00:00:00',1,0),(405,'plg_content_geshi','plugin','geshi','content',0,0,1,0,'{\"legacy\":false,\"name\":\"plg_content_geshi\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"qbnz.com\\/highlighter\",\"version\":\"2.5.0\",\"description\":\"PLG_CONTENT_GESHI_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',2,0),(406,'plg_content_loadmodule','plugin','loadmodule','content',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_content_loadmodule\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_LOADMODULE_XML_DESCRIPTION\",\"group\":\"\"}','{\"style\":\"xhtml\"}','','',0,'2011-09-18 15:22:50',0,0),(407,'plg_content_pagebreak','plugin','pagebreak','content',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_content_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\"}','{\"title\":\"1\",\"multipage_toc\":\"1\",\"showall\":\"1\"}','','',0,'0000-00-00 00:00:00',4,0),(408,'plg_content_pagenavigation','plugin','pagenavigation','content',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_content_pagenavigation\",\"type\":\"plugin\",\"creationDate\":\"January 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_PAGENAVIGATION_XML_DESCRIPTION\",\"group\":\"\"}','{\"position\":\"1\"}','','',0,'0000-00-00 00:00:00',5,0),(409,'plg_content_vote','plugin','vote','content',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_content_vote\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_VOTE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',6,0),(410,'plg_editors_codemirror','plugin','codemirror','editors',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_editors_codemirror\",\"type\":\"plugin\",\"creationDate\":\"28 March 2011\",\"author\":\"Marijn Haverbeke\",\"copyright\":\"\",\"authorEmail\":\"N\\/A\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"PLG_CODEMIRROR_XML_DESCRIPTION\",\"group\":\"\"}','{\"linenumbers\":\"0\",\"tabmode\":\"indent\"}','','',0,'0000-00-00 00:00:00',1,0),(411,'plg_editors_none','plugin','none','editors',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_editors_none\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Unknown\",\"copyright\":\"\",\"authorEmail\":\"N\\/A\",\"authorUrl\":\"\",\"version\":\"2.5.0\",\"description\":\"PLG_NONE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',2,0),(412,'plg_editors_tinymce','plugin','tinymce','editors',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_editors_tinymce\",\"type\":\"plugin\",\"creationDate\":\"2005-2013\",\"author\":\"Moxiecode Systems AB\",\"copyright\":\"Moxiecode Systems AB\",\"authorEmail\":\"N\\/A\",\"authorUrl\":\"tinymce.moxiecode.com\\/\",\"version\":\"3.5.4.1\",\"description\":\"PLG_TINY_XML_DESCRIPTION\",\"group\":\"\"}','{\"mode\":\"1\",\"skin\":\"0\",\"entity_encoding\":\"raw\",\"lang_mode\":\"0\",\"lang_code\":\"en\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"extended_elements\":\"\",\"toolbar\":\"top\",\"toolbar_align\":\"left\",\"html_height\":\"550\",\"html_width\":\"750\",\"resizing\":\"true\",\"resize_horizontal\":\"false\",\"element_path\":\"1\",\"fonts\":\"1\",\"paste\":\"1\",\"searchreplace\":\"1\",\"insertdate\":\"1\",\"format_date\":\"%Y-%m-%d\",\"inserttime\":\"1\",\"format_time\":\"%H:%M:%S\",\"colors\":\"1\",\"table\":\"1\",\"smilies\":\"1\",\"media\":\"1\",\"hr\":\"1\",\"directionality\":\"1\",\"fullscreen\":\"1\",\"style\":\"1\",\"layer\":\"1\",\"xhtmlxtras\":\"1\",\"visualchars\":\"1\",\"nonbreaking\":\"1\",\"template\":\"1\",\"blockquote\":\"1\",\"wordcount\":\"1\",\"advimage\":\"1\",\"advlink\":\"1\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"inlinepopups\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"}','','',0,'0000-00-00 00:00:00',3,0),(413,'plg_editors-xtd_article','plugin','article','editors-xtd',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_editors-xtd_article\",\"type\":\"plugin\",\"creationDate\":\"October 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_ARTICLE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',1,0),(414,'plg_editors-xtd_image','plugin','image','editors-xtd',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_editors-xtd_image\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_IMAGE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',2,0),(415,'plg_editors-xtd_pagebreak','plugin','pagebreak','editors-xtd',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_editors-xtd_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',3,0),(416,'plg_editors-xtd_readmore','plugin','readmore','editors-xtd',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_editors-xtd_readmore\",\"type\":\"plugin\",\"creationDate\":\"March 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_READMORE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',4,0),(417,'plg_search_categories','plugin','categories','search',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_search_categories\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(418,'plg_search_contacts','plugin','contacts','search',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_search_contacts\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SEARCH_CONTACTS_XML_DESCRIPTION\",\"group\":\"\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(419,'plg_search_content','plugin','content','search',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_search_content\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SEARCH_CONTENT_XML_DESCRIPTION\",\"group\":\"\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(420,'plg_search_newsfeeds','plugin','newsfeeds','search',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_search_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(421,'plg_search_weblinks','plugin','weblinks','search',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_search_weblinks\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SEARCH_WEBLINKS_XML_DESCRIPTION\",\"group\":\"\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(422,'plg_system_languagefilter','plugin','languagefilter','system',0,0,1,1,'{\"legacy\":false,\"name\":\"plg_system_languagefilter\",\"type\":\"plugin\",\"creationDate\":\"July 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',1,0),(423,'plg_system_p3p','plugin','p3p','system',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_system_p3p\",\"type\":\"plugin\",\"creationDate\":\"September 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_P3P_XML_DESCRIPTION\",\"group\":\"\"}','{\"headers\":\"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM\"}','','',0,'0000-00-00 00:00:00',2,0),(424,'plg_system_cache','plugin','cache','system',0,0,1,1,'{\"legacy\":false,\"name\":\"plg_system_cache\",\"type\":\"plugin\",\"creationDate\":\"February 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_CACHE_XML_DESCRIPTION\",\"group\":\"\"}','{\"browsercache\":\"0\",\"cachetime\":\"15\"}','','',0,'0000-00-00 00:00:00',9,0),(425,'plg_system_debug','plugin','debug','system',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_system_debug\",\"type\":\"plugin\",\"creationDate\":\"December 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_DEBUG_XML_DESCRIPTION\",\"group\":\"\"}','{\"profile\":\"1\",\"queries\":\"1\",\"memory\":\"1\",\"language_files\":\"1\",\"language_strings\":\"1\",\"strip-first\":\"1\",\"strip-prefix\":\"\",\"strip-suffix\":\"\"}','','',0,'0000-00-00 00:00:00',4,0),(426,'plg_system_log','plugin','log','system',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_system_log\",\"type\":\"plugin\",\"creationDate\":\"April 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_LOG_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',5,0),(427,'plg_system_redirect','plugin','redirect','system',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_system_redirect\",\"type\":\"plugin\",\"creationDate\":\"April 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_REDIRECT_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',6,0),(428,'plg_system_remember','plugin','remember','system',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_system_remember\",\"type\":\"plugin\",\"creationDate\":\"April 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_REMEMBER_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',7,0),(429,'plg_system_sef','plugin','sef','system',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_system_sef\",\"type\":\"plugin\",\"creationDate\":\"December 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SEF_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',8,0),(430,'plg_system_logout','plugin','logout','system',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_system_logout\",\"type\":\"plugin\",\"creationDate\":\"April 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',3,0),(431,'plg_user_contactcreator','plugin','contactcreator','user',0,0,1,1,'{\"legacy\":false,\"name\":\"plg_user_contactcreator\",\"type\":\"plugin\",\"creationDate\":\"August 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_CONTACTCREATOR_XML_DESCRIPTION\",\"group\":\"\"}','{\"autowebpage\":\"\",\"category\":\"34\",\"autopublish\":\"0\"}','','',0,'0000-00-00 00:00:00',1,0),(432,'plg_user_joomla','plugin','joomla','user',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_user_joomla\",\"type\":\"plugin\",\"creationDate\":\"December 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2009 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_USER_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','{\"autoregister\":\"1\"}','','',0,'0000-00-00 00:00:00',2,0),(433,'plg_user_profile','plugin','profile','user',0,0,1,1,'{\"legacy\":false,\"name\":\"plg_user_profile\",\"type\":\"plugin\",\"creationDate\":\"January 2008\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_USER_PROFILE_XML_DESCRIPTION\",\"group\":\"\"}','{\"register-require_address1\":\"1\",\"register-require_address2\":\"1\",\"register-require_city\":\"1\",\"register-require_region\":\"1\",\"register-require_country\":\"1\",\"register-require_postal_code\":\"1\",\"register-require_phone\":\"1\",\"register-require_website\":\"1\",\"register-require_favoritebook\":\"1\",\"register-require_aboutme\":\"1\",\"register-require_tos\":\"1\",\"register-require_dob\":\"1\",\"profile-require_address1\":\"1\",\"profile-require_address2\":\"1\",\"profile-require_city\":\"1\",\"profile-require_region\":\"1\",\"profile-require_country\":\"1\",\"profile-require_postal_code\":\"1\",\"profile-require_phone\":\"1\",\"profile-require_website\":\"1\",\"profile-require_favoritebook\":\"1\",\"profile-require_aboutme\":\"1\",\"profile-require_tos\":\"1\",\"profile-require_dob\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(434,'plg_extension_joomla','plugin','joomla','extension',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_extension_joomla\",\"type\":\"plugin\",\"creationDate\":\"May 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',1,0),(435,'plg_content_joomla','plugin','joomla','content',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_content_joomla\",\"type\":\"plugin\",\"creationDate\":\"November 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_CONTENT_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(436,'plg_system_languagecode','plugin','languagecode','system',0,0,1,0,'{\"legacy\":false,\"name\":\"plg_system_languagecode\",\"type\":\"plugin\",\"creationDate\":\"November 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',10,0),(437,'plg_quickicon_joomlaupdate','plugin','joomlaupdate','quickicon',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_quickicon_joomlaupdate\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(438,'plg_quickicon_extensionupdate','plugin','extensionupdate','quickicon',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_quickicon_extensionupdate\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(439,'plg_captcha_recaptcha','plugin','recaptcha','captcha',0,0,1,0,'{\"legacy\":false,\"name\":\"plg_captcha_recaptcha\",\"type\":\"plugin\",\"creationDate\":\"December 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION\",\"group\":\"\"}','{\"public_key\":\"\",\"private_key\":\"\",\"theme\":\"clean\"}','','',0,'0000-00-00 00:00:00',0,0),(440,'plg_system_highlight','plugin','highlight','system',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_system_highlight\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',7,0),(441,'plg_content_finder','plugin','finder','content',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_content_finder\",\"type\":\"plugin\",\"creationDate\":\"December 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_CONTENT_FINDER_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(442,'plg_finder_categories','plugin','categories','finder',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_finder_categories\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_FINDER_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',1,0),(443,'plg_finder_contacts','plugin','contacts','finder',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_finder_contacts\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_FINDER_CONTACTS_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',2,0),(444,'plg_finder_content','plugin','content','finder',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_finder_content\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_FINDER_CONTENT_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',3,0),(445,'plg_finder_newsfeeds','plugin','newsfeeds','finder',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_finder_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',4,0),(446,'plg_finder_weblinks','plugin','weblinks','finder',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_finder_weblinks\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_FINDER_WEBLINKS_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',5,0),(500,'atomic','template','atomic','',0,1,1,0,'{\"legacy\":false,\"name\":\"atomic\",\"type\":\"template\",\"creationDate\":\"10\\/10\\/09\",\"author\":\"Ron Severdia\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"contact@kontentdesign.com\",\"authorUrl\":\"http:\\/\\/www.kontentdesign.com\",\"version\":\"2.5.0\",\"description\":\"TPL_ATOMIC_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(502,'bluestork','template','bluestork','',1,1,1,0,'{\"legacy\":false,\"name\":\"bluestork\",\"type\":\"template\",\"creationDate\":\"07\\/02\\/09\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"TPL_BLUESTORK_XML_DESCRIPTION\",\"group\":\"\"}','{\"useRoundedCorners\":\"1\",\"showSiteName\":\"0\",\"textBig\":\"0\",\"highContrast\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(503,'beez_20','template','beez_20','',0,1,1,0,'{\"legacy\":false,\"name\":\"beez_20\",\"type\":\"template\",\"creationDate\":\"25 November 2009\",\"author\":\"Angie Radtke\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"a.radtke@derauftritt.de\",\"authorUrl\":\"http:\\/\\/www.der-auftritt.de\",\"version\":\"2.5.0\",\"description\":\"TPL_BEEZ2_XML_DESCRIPTION\",\"group\":\"\"}','{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"sitetitle\":\"\",\"sitedescription\":\"\",\"navposition\":\"center\",\"templatecolor\":\"nature\"}','','',0,'0000-00-00 00:00:00',0,0),(504,'hathor','template','hathor','',1,1,1,0,'{\"legacy\":false,\"name\":\"hathor\",\"type\":\"template\",\"creationDate\":\"May 2010\",\"author\":\"Andrea Tarr\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"hathor@tarrconsulting.com\",\"authorUrl\":\"http:\\/\\/www.tarrconsulting.com\",\"version\":\"2.5.0\",\"description\":\"TPL_HATHOR_XML_DESCRIPTION\",\"group\":\"\"}','{\"showSiteName\":\"0\",\"colourChoice\":\"0\",\"boldText\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(505,'beez5','template','beez5','',0,1,1,0,'{\"legacy\":false,\"name\":\"beez5\",\"type\":\"template\",\"creationDate\":\"21 May 2010\",\"author\":\"Angie Radtke\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"a.radtke@derauftritt.de\",\"authorUrl\":\"http:\\/\\/www.der-auftritt.de\",\"version\":\"2.5.0\",\"description\":\"TPL_BEEZ5_XML_DESCRIPTION\",\"group\":\"\"}','{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"sitetitle\":\"\",\"sitedescription\":\"\",\"navposition\":\"center\",\"html5\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(600,'English (United Kingdom)','language','en-GB','',0,1,1,1,'{\"legacy\":false,\"name\":\"English (United Kingdom)\",\"type\":\"language\",\"creationDate\":\"2008-03-15\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.10\",\"description\":\"en-GB site language\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(601,'English (United Kingdom)','language','en-GB','',1,1,1,1,'{\"legacy\":false,\"name\":\"English (United Kingdom)\",\"type\":\"language\",\"creationDate\":\"2008-03-15\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.10\",\"description\":\"en-GB administrator language\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(700,'files_joomla','file','joomla','',0,1,1,1,'{\"legacy\":false,\"name\":\"files_joomla\",\"type\":\"file\",\"creationDate\":\"August 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.14\",\"description\":\"FILES_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(800,'PKG_JOOMLA','package','pkg_joomla','',0,1,1,1,'{\"legacy\":false,\"name\":\"PKG_JOOMLA\",\"type\":\"package\",\"creationDate\":\"2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"http:\\/\\/www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PKG_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(801,'com_demotivator','component','com_demotivator','',1,1,0,0,'{\"legacy\":false,\"name\":\"com_demotivator\",\"type\":\"component\",\"creationDate\":\"13.02.2013\",\"author\":\"Fonclub\",\"copyright\":\"Copyright (C) 2012. All rights reserved.\",\"authorEmail\":\"sfonclub@gmail.com\",\"authorUrl\":\"http:\\/\\/fonclub-blog.ru\",\"version\":\"0.9.1\",\"description\":\"Component to create demotivators and motivators online - JDemotivator (light version) http:\\/\\/fonclub-blog.ru\\/com_demotivator.html\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(802,'com_slogin','component','com_slogin','',1,1,0,0,'{\"legacy\":false,\"name\":\"com_slogin\",\"type\":\"component\",\"creationDate\":\"14.05.2013\",\"author\":\"SmokerMan, Arkadiy, Joomline\",\"copyright\":\"\\u00a9 2012. All rights reserved.\",\"authorEmail\":\"sale@joomline.ru\",\"authorUrl\":\"\",\"version\":\"1.7.2\",\"description\":\"COM_SLOGIN_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(803,'mod_slogin','module','mod_slogin','',0,1,0,0,'{\"legacy\":false,\"name\":\"mod_slogin\",\"type\":\"module\",\"creationDate\":\"06.10.2012\",\"author\":\"SmokerMan, Arkadiy, Joomline\",\"copyright\":\"\\u00a9 2012. All rights reserved.\",\"authorEmail\":\"kolyamba831@inbox.ru\",\"authorUrl\":\"http:\\/\\/joomline.ru\",\"version\":\"1.6\",\"description\":\"MOD_SLOGIN_XML_DESCRIPTION\",\"group\":\"\"}','{\"cache\":\"0\",\"load_css\":\"0\",\"load_js\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(804,'slogin','library','slogin_oauth','',0,1,1,0,'{\"legacy\":false,\"name\":\"slogin\",\"type\":\"library\",\"creationDate\":\"2013-04-28\",\"author\":\"Arkadiy\",\"copyright\":\"\",\"authorEmail\":\"a.sedelnikov@gmail.com\",\"authorUrl\":\"argens.ru\",\"version\":\"1.0\",\"description\":\"\\n  \\n  \\u0411\\u0438\\u0431\\u043b\\u0438\\u043e\\u0442\\u0435\\u043a\\u0430 \\u0430\\u0432\\u0442\\u043e\\u0440\\u0438\\u0437\\u0430\\u0446\\u0438\\u0438 OAuth \\u0441 \\u0438\\u0437\\u043c\\u0435\\u043d\\u0435\\u043d\\u043d\\u044b\\u043c\\u0438 \\u043d\\u0430\\u0437\\u0432\\u0430\\u043d\\u0438\\u044f\\u043c\\u0438 \\u043a\\u043b\\u0430\\u0441\\u0441\\u043e\\u0432 \\u0434\\u043b\\u044f \\u0438\\u0441\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u0438\\u044f \\u043a\\u043e\\u043d\\u0444\\u043b\\u0438\\u043a\\u0442\\u043e\\u0432 \\u0438\\u043c\\u0435\\u043d.\\n  \\n  \",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(805,'Social Login','plugin','slogin','user',0,0,1,0,'{\"legacy\":false,\"name\":\"Social Login\",\"type\":\"plugin\",\"creationDate\":\"21.09.2012\",\"author\":\"Arkadiy, Joomline\",\"copyright\":\"(C) 2012. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/joomline.ru\",\"version\":\"1.0\",\"description\":\"Delete User info from slogin table\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(806,'PLG_SLOGIN_PROFILE','plugin','profile','slogin_integration',0,1,1,0,'{\"legacy\":false,\"name\":\"PLG_SLOGIN_PROFILE\",\"type\":\"plugin\",\"creationDate\":\"29.08.2013\",\"author\":\"Arkadiy Sedelnikov\",\"copyright\":\"(C) 2012. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/argens.ru\",\"version\":\"1.0.1\",\"description\":\"PLG_SLOGIN_PROFILE_DESC\",\"group\":\"\"}','{\"rootfolder\":\"images\\/avatar\",\"img_quality\":\"80\",\"imgparam\":\"50\",\"updatetime\":\"86400\",\"enable_geo\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(807,'JComments - Social Login','plugin','slogin','jcomments',0,1,1,0,'{\"legacy\":false,\"name\":\"JComments - Social Login\",\"type\":\"plugin\",\"creationDate\":\"09\\/09\\/2013\",\"author\":\"smart\",\"copyright\":\"(c) 2012-2013 JoomlaTune.ru\",\"authorEmail\":\"smart@joomlatune.ru\",\"authorUrl\":\"http:\\/\\/www.joomlatune.ru\",\"version\":\"1.0.8\",\"description\":\"PLG_JCOMMENTS_SLOGIN_XML_DESCRIPTION\",\"group\":\"\"}','{\"pretext\":\"\",\"css\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(808,'Social Login Facebook auth','plugin','facebook','slogin_auth',0,0,1,0,'{\"legacy\":false,\"name\":\"Social Login Facebook auth\",\"type\":\"plugin\",\"creationDate\":\"21.09.2012\",\"author\":\"Arkadiy, Joomline\",\"copyright\":\"(C) 2012. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/joomline.ru\",\"version\":\"1.0\",\"description\":\"Facebook auth\",\"group\":\"\"}','{\"id\":\"\",\"password\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(809,'Social Login Google auth','plugin','google','slogin_auth',0,0,1,0,'{\"legacy\":false,\"name\":\"Social Login Google auth\",\"type\":\"plugin\",\"creationDate\":\"21.09.2012\",\"author\":\"Arkadiy, Joomline\",\"copyright\":\"(C) 2012. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/joomline.ru\",\"version\":\"1.0\",\"description\":\"Google auth\",\"group\":\"\"}','{\"id\":\"\",\"password\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(810,'Social Login mail.ru auth','plugin','mail','slogin_auth',0,0,1,0,'{\"legacy\":false,\"name\":\"Social Login mail.ru auth\",\"type\":\"plugin\",\"creationDate\":\"21.09.2012\",\"author\":\"Arkadiy, Joomline\",\"copyright\":\"(C) 2012. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/joomline.ru\",\"version\":\"1.0\",\"description\":\"mail.ru auth\",\"group\":\"\"}','{\"id\":\"\",\"password\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(811,'Social Login Odnoklassniki auth','plugin','odnoklassniki','slogin_auth',0,0,1,0,'{\"legacy\":false,\"name\":\"Social Login Odnoklassniki auth\",\"type\":\"plugin\",\"creationDate\":\"21.09.2012\",\"author\":\"Arkadiy, Joomline\",\"copyright\":\"(C) 2012. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/joomline.ru\",\"version\":\"1.0\",\"description\":\"Odnoklassniki auth\",\"group\":\"\"}','{\"id\":\"\",\"password\":\"\",\"public_key\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(812,'Social Login Twitter auth','plugin','twitter','slogin_auth',0,0,1,0,'{\"legacy\":false,\"name\":\"Social Login Twitter auth\",\"type\":\"plugin\",\"creationDate\":\"21.09.2012\",\"author\":\"Arkadiy, Joomline\",\"copyright\":\"(C) 2012. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/joomline.ru\",\"version\":\"1.0\",\"description\":\"Twitter auth\",\"group\":\"\"}','{\"id\":\"\",\"password\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(813,'Social Login Vkontakte auth','plugin','vkontakte','slogin_auth',0,1,1,0,'{\"legacy\":false,\"name\":\"Social Login Vkontakte auth\",\"type\":\"plugin\",\"creationDate\":\"21.09.2012\",\"author\":\"Arkadiy, Joomline\",\"copyright\":\"(C) 2012. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/joomline.ru\",\"version\":\"1.0\",\"description\":\"Vkontakte auth\",\"group\":\"\"}','{\"id\":\"3949139\",\"password\":\"X1d0fn9KfqpXFB563m8V\",\"callback_url\":null}','','',0,'0000-00-00 00:00:00',0,0),(814,'Social Login Yandex auth','plugin','yandex','slogin_auth',0,0,1,0,'{\"legacy\":false,\"name\":\"Social Login Yandex auth\",\"type\":\"plugin\",\"creationDate\":\"21.09.2012\",\"author\":\"Arkadiy, Joomline\",\"copyright\":\"(C) 2012. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/joomline.ru\",\"version\":\"1.0\",\"description\":\"Yandex auth. Instructions for setting up the plugin: http:\\/\\/joomline.ru\\/stati\\/53-komponenty\\/306-sozdanie-prilozhenij-dlja-socialnoj-avtoriziacii.html\",\"group\":\"\"}','{\"id\":\"\",\"password\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(815,'Social Login LinkedIn auth','plugin','linkedin','slogin_auth',0,0,1,0,'{\"legacy\":false,\"name\":\"Social Login LinkedIn auth\",\"type\":\"plugin\",\"creationDate\":\"21.09.2012\",\"author\":\"Arkadiy, Joomline\",\"copyright\":\"(C) 2012. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/joomline.ru\",\"version\":\"1.0\",\"description\":\"LinkedIn auth\",\"group\":\"\"}','{\"api_key\":\"\",\"secret_key\":\"\",\"oauth_token\":\"\",\"oauth_secret\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(816,'Social Login Ulogin auth','plugin','ulogin','slogin_auth',0,0,1,0,'{\"legacy\":false,\"name\":\"Social Login Ulogin auth\",\"type\":\"plugin\",\"creationDate\":\"21.09.2012\",\"author\":\"Arkadiy, Joomline\",\"copyright\":\"(C) 2012. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/joomline.ru\",\"version\":\"1.0\",\"description\":\"Ulogin auth. Instructions for setting up the plugin: http:\\/\\/joomline.ru\\/stati\\/53-komponenty\\/306-sozdanie-prilozhenij-dlja-socialnoj-avtoriziacii.html\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(817,'Social Login Live.com auth','plugin','live','slogin_auth',0,0,1,0,'{\"legacy\":false,\"name\":\"Social Login Live.com auth\",\"type\":\"plugin\",\"creationDate\":\"21.09.2012\",\"author\":\"Arkadiy, Joomline\",\"copyright\":\"(C) 2012. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/joomline.ru\",\"version\":\"1.0\",\"description\":\"Live.com auth\",\"group\":\"\"}','{\"id\":\"\",\"password\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(818,'slogin','package','pkg_slogin','',0,1,1,0,'{\"legacy\":false,\"name\":\"com_slogin\",\"type\":\"package\",\"creationDate\":\"06.10.2012\",\"author\":\"SmokerMan, Arkadiy, Joomline\",\"copyright\":\"\\u00a9 2012. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"\",\"version\":\"1.7.2\",\"description\":\"Packet authentication via social networking joomla. The package: plugin, module, component. After installing the plugin activate Social Login.\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0);
/*!40000 ALTER TABLE `xofti_extensions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xofti_finder_filters`
--

DROP TABLE IF EXISTS `xofti_finder_filters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xofti_finder_filters` (
  `filter_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `params` mediumtext,
  PRIMARY KEY (`filter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xofti_finder_filters`
--

LOCK TABLES `xofti_finder_filters` WRITE;
/*!40000 ALTER TABLE `xofti_finder_filters` DISABLE KEYS */;
/*!40000 ALTER TABLE `xofti_finder_filters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xofti_finder_links`
--

DROP TABLE IF EXISTS `xofti_finder_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xofti_finder_links` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `indexdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `state` int(5) DEFAULT '1',
  `access` int(5) DEFAULT '0',
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `list_price` double unsigned NOT NULL DEFAULT '0',
  `sale_price` double unsigned NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL,
  PRIMARY KEY (`link_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_title` (`title`),
  KEY `idx_md5` (`md5sum`),
  KEY `idx_url` (`url`(75)),
  KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xofti_finder_links`
--

LOCK TABLES `xofti_finder_links` WRITE;
/*!40000 ALTER TABLE `xofti_finder_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `xofti_finder_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xofti_finder_links_terms0`
--

DROP TABLE IF EXISTS `xofti_finder_links_terms0`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xofti_finder_links_terms0` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xofti_finder_links_terms0`
--

LOCK TABLES `xofti_finder_links_terms0` WRITE;
/*!40000 ALTER TABLE `xofti_finder_links_terms0` DISABLE KEYS */;
/*!40000 ALTER TABLE `xofti_finder_links_terms0` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xofti_finder_links_terms1`
--

DROP TABLE IF EXISTS `xofti_finder_links_terms1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xofti_finder_links_terms1` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xofti_finder_links_terms1`
--

LOCK TABLES `xofti_finder_links_terms1` WRITE;
/*!40000 ALTER TABLE `xofti_finder_links_terms1` DISABLE KEYS */;
/*!40000 ALTER TABLE `xofti_finder_links_terms1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xofti_finder_links_terms2`
--

DROP TABLE IF EXISTS `xofti_finder_links_terms2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xofti_finder_links_terms2` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xofti_finder_links_terms2`
--

LOCK TABLES `xofti_finder_links_terms2` WRITE;
/*!40000 ALTER TABLE `xofti_finder_links_terms2` DISABLE KEYS */;
/*!40000 ALTER TABLE `xofti_finder_links_terms2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xofti_finder_links_terms3`
--

DROP TABLE IF EXISTS `xofti_finder_links_terms3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xofti_finder_links_terms3` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xofti_finder_links_terms3`
--

LOCK TABLES `xofti_finder_links_terms3` WRITE;
/*!40000 ALTER TABLE `xofti_finder_links_terms3` DISABLE KEYS */;
/*!40000 ALTER TABLE `xofti_finder_links_terms3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xofti_finder_links_terms4`
--

DROP TABLE IF EXISTS `xofti_finder_links_terms4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xofti_finder_links_terms4` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xofti_finder_links_terms4`
--

LOCK TABLES `xofti_finder_links_terms4` WRITE;
/*!40000 ALTER TABLE `xofti_finder_links_terms4` DISABLE KEYS */;
/*!40000 ALTER TABLE `xofti_finder_links_terms4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xofti_finder_links_terms5`
--

DROP TABLE IF EXISTS `xofti_finder_links_terms5`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xofti_finder_links_terms5` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xofti_finder_links_terms5`
--

LOCK TABLES `xofti_finder_links_terms5` WRITE;
/*!40000 ALTER TABLE `xofti_finder_links_terms5` DISABLE KEYS */;
/*!40000 ALTER TABLE `xofti_finder_links_terms5` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xofti_finder_links_terms6`
--

DROP TABLE IF EXISTS `xofti_finder_links_terms6`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xofti_finder_links_terms6` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xofti_finder_links_terms6`
--

LOCK TABLES `xofti_finder_links_terms6` WRITE;
/*!40000 ALTER TABLE `xofti_finder_links_terms6` DISABLE KEYS */;
/*!40000 ALTER TABLE `xofti_finder_links_terms6` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xofti_finder_links_terms7`
--

DROP TABLE IF EXISTS `xofti_finder_links_terms7`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xofti_finder_links_terms7` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xofti_finder_links_terms7`
--

LOCK TABLES `xofti_finder_links_terms7` WRITE;
/*!40000 ALTER TABLE `xofti_finder_links_terms7` DISABLE KEYS */;
/*!40000 ALTER TABLE `xofti_finder_links_terms7` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xofti_finder_links_terms8`
--

DROP TABLE IF EXISTS `xofti_finder_links_terms8`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xofti_finder_links_terms8` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xofti_finder_links_terms8`
--

LOCK TABLES `xofti_finder_links_terms8` WRITE;
/*!40000 ALTER TABLE `xofti_finder_links_terms8` DISABLE KEYS */;
/*!40000 ALTER TABLE `xofti_finder_links_terms8` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xofti_finder_links_terms9`
--

DROP TABLE IF EXISTS `xofti_finder_links_terms9`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xofti_finder_links_terms9` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xofti_finder_links_terms9`
--

LOCK TABLES `xofti_finder_links_terms9` WRITE;
/*!40000 ALTER TABLE `xofti_finder_links_terms9` DISABLE KEYS */;
/*!40000 ALTER TABLE `xofti_finder_links_terms9` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xofti_finder_links_termsa`
--

DROP TABLE IF EXISTS `xofti_finder_links_termsa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xofti_finder_links_termsa` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xofti_finder_links_termsa`
--

LOCK TABLES `xofti_finder_links_termsa` WRITE;
/*!40000 ALTER TABLE `xofti_finder_links_termsa` DISABLE KEYS */;
/*!40000 ALTER TABLE `xofti_finder_links_termsa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xofti_finder_links_termsb`
--

DROP TABLE IF EXISTS `xofti_finder_links_termsb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xofti_finder_links_termsb` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xofti_finder_links_termsb`
--

LOCK TABLES `xofti_finder_links_termsb` WRITE;
/*!40000 ALTER TABLE `xofti_finder_links_termsb` DISABLE KEYS */;
/*!40000 ALTER TABLE `xofti_finder_links_termsb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xofti_finder_links_termsc`
--

DROP TABLE IF EXISTS `xofti_finder_links_termsc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xofti_finder_links_termsc` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xofti_finder_links_termsc`
--

LOCK TABLES `xofti_finder_links_termsc` WRITE;
/*!40000 ALTER TABLE `xofti_finder_links_termsc` DISABLE KEYS */;
/*!40000 ALTER TABLE `xofti_finder_links_termsc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xofti_finder_links_termsd`
--

DROP TABLE IF EXISTS `xofti_finder_links_termsd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xofti_finder_links_termsd` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xofti_finder_links_termsd`
--

LOCK TABLES `xofti_finder_links_termsd` WRITE;
/*!40000 ALTER TABLE `xofti_finder_links_termsd` DISABLE KEYS */;
/*!40000 ALTER TABLE `xofti_finder_links_termsd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xofti_finder_links_termse`
--

DROP TABLE IF EXISTS `xofti_finder_links_termse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xofti_finder_links_termse` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xofti_finder_links_termse`
--

LOCK TABLES `xofti_finder_links_termse` WRITE;
/*!40000 ALTER TABLE `xofti_finder_links_termse` DISABLE KEYS */;
/*!40000 ALTER TABLE `xofti_finder_links_termse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xofti_finder_links_termsf`
--

DROP TABLE IF EXISTS `xofti_finder_links_termsf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xofti_finder_links_termsf` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xofti_finder_links_termsf`
--

LOCK TABLES `xofti_finder_links_termsf` WRITE;
/*!40000 ALTER TABLE `xofti_finder_links_termsf` DISABLE KEYS */;
/*!40000 ALTER TABLE `xofti_finder_links_termsf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xofti_finder_taxonomy`
--

DROP TABLE IF EXISTS `xofti_finder_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xofti_finder_taxonomy` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `access` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `state` (`state`),
  KEY `ordering` (`ordering`),
  KEY `access` (`access`),
  KEY `idx_parent_published` (`parent_id`,`state`,`access`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xofti_finder_taxonomy`
--

LOCK TABLES `xofti_finder_taxonomy` WRITE;
/*!40000 ALTER TABLE `xofti_finder_taxonomy` DISABLE KEYS */;
INSERT INTO `xofti_finder_taxonomy` VALUES (1,0,'ROOT',0,0,0);
/*!40000 ALTER TABLE `xofti_finder_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xofti_finder_taxonomy_map`
--

DROP TABLE IF EXISTS `xofti_finder_taxonomy_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xofti_finder_taxonomy_map` (
  `link_id` int(10) unsigned NOT NULL,
  `node_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`node_id`),
  KEY `link_id` (`link_id`),
  KEY `node_id` (`node_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xofti_finder_taxonomy_map`
--

LOCK TABLES `xofti_finder_taxonomy_map` WRITE;
/*!40000 ALTER TABLE `xofti_finder_taxonomy_map` DISABLE KEYS */;
/*!40000 ALTER TABLE `xofti_finder_taxonomy_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xofti_finder_terms`
--

DROP TABLE IF EXISTS `xofti_finder_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xofti_finder_terms` (
  `term_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `idx_term` (`term`),
  KEY `idx_term_phrase` (`term`,`phrase`),
  KEY `idx_stem_phrase` (`stem`,`phrase`),
  KEY `idx_soundex_phrase` (`soundex`,`phrase`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xofti_finder_terms`
--

LOCK TABLES `xofti_finder_terms` WRITE;
/*!40000 ALTER TABLE `xofti_finder_terms` DISABLE KEYS */;
/*!40000 ALTER TABLE `xofti_finder_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xofti_finder_terms_common`
--

DROP TABLE IF EXISTS `xofti_finder_terms_common`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xofti_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL,
  KEY `idx_word_lang` (`term`,`language`),
  KEY `idx_lang` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xofti_finder_terms_common`
--

LOCK TABLES `xofti_finder_terms_common` WRITE;
/*!40000 ALTER TABLE `xofti_finder_terms_common` DISABLE KEYS */;
INSERT INTO `xofti_finder_terms_common` VALUES ('a','en'),('about','en'),('after','en'),('ago','en'),('all','en'),('am','en'),('an','en'),('and','en'),('ani','en'),('any','en'),('are','en'),('aren\'t','en'),('as','en'),('at','en'),('be','en'),('but','en'),('by','en'),('for','en'),('from','en'),('get','en'),('go','en'),('how','en'),('if','en'),('in','en'),('into','en'),('is','en'),('isn\'t','en'),('it','en'),('its','en'),('me','en'),('more','en'),('most','en'),('must','en'),('my','en'),('new','en'),('no','en'),('none','en'),('not','en'),('noth','en'),('nothing','en'),('of','en'),('off','en'),('often','en'),('old','en'),('on','en'),('onc','en'),('once','en'),('onli','en'),('only','en'),('or','en'),('other','en'),('our','en'),('ours','en'),('out','en'),('over','en'),('page','en'),('she','en'),('should','en'),('small','en'),('so','en'),('some','en'),('than','en'),('thank','en'),('that','en'),('the','en'),('their','en'),('theirs','en'),('them','en'),('then','en'),('there','en'),('these','en'),('they','en'),('this','en'),('those','en'),('thus','en'),('time','en'),('times','en'),('to','en'),('too','en'),('true','en'),('under','en'),('until','en'),('up','en'),('upon','en'),('use','en'),('user','en'),('users','en'),('veri','en'),('version','en'),('very','en'),('via','en'),('want','en'),('was','en'),('way','en'),('were','en'),('what','en'),('when','en'),('where','en'),('whi','en'),('which','en'),('who','en'),('whom','en'),('whose','en'),('why','en'),('wide','en'),('will','en'),('with','en'),('within','en'),('without','en'),('would','en'),('yes','en'),('yet','en'),('you','en'),('your','en'),('yours','en');
/*!40000 ALTER TABLE `xofti_finder_terms_common` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xofti_finder_tokens`
--

DROP TABLE IF EXISTS `xofti_finder_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xofti_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '1',
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  KEY `idx_word` (`term`),
  KEY `idx_context` (`context`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xofti_finder_tokens`
--

LOCK TABLES `xofti_finder_tokens` WRITE;
/*!40000 ALTER TABLE `xofti_finder_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `xofti_finder_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xofti_finder_tokens_aggregate`
--

DROP TABLE IF EXISTS `xofti_finder_tokens_aggregate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xofti_finder_tokens_aggregate` (
  `term_id` int(10) unsigned NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `term_weight` float unsigned NOT NULL,
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `context_weight` float unsigned NOT NULL,
  `total_weight` float unsigned NOT NULL,
  KEY `token` (`term`),
  KEY `keyword_id` (`term_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xofti_finder_tokens_aggregate`
--

LOCK TABLES `xofti_finder_tokens_aggregate` WRITE;
/*!40000 ALTER TABLE `xofti_finder_tokens_aggregate` DISABLE KEYS */;
/*!40000 ALTER TABLE `xofti_finder_tokens_aggregate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xofti_finder_types`
--

DROP TABLE IF EXISTS `xofti_finder_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xofti_finder_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xofti_finder_types`
--

LOCK TABLES `xofti_finder_types` WRITE;
/*!40000 ALTER TABLE `xofti_finder_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `xofti_finder_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xofti_languages`
--

DROP TABLE IF EXISTS `xofti_languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xofti_languages` (
  `lang_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `lang_code` char(7) NOT NULL,
  `title` varchar(50) NOT NULL,
  `title_native` varchar(50) NOT NULL,
  `sef` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `description` varchar(512) NOT NULL,
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `sitename` varchar(1024) NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  UNIQUE KEY `idx_sef` (`sef`),
  UNIQUE KEY `idx_image` (`image`),
  UNIQUE KEY `idx_langcode` (`lang_code`),
  KEY `idx_access` (`access`),
  KEY `idx_ordering` (`ordering`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xofti_languages`
--

LOCK TABLES `xofti_languages` WRITE;
/*!40000 ALTER TABLE `xofti_languages` DISABLE KEYS */;
INSERT INTO `xofti_languages` VALUES (1,'en-GB','English (UK)','English (UK)','en','en','','','','',1,0,1);
/*!40000 ALTER TABLE `xofti_languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xofti_menu`
--

DROP TABLE IF EXISTS `xofti_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xofti_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(1024) NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `ordering` int(11) NOT NULL DEFAULT '0' COMMENT 'The relative ordering of the menu item in the tree.',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__users.id',
  `checked_out_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`,`language`),
  KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  KEY `idx_menutype` (`menutype`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_path` (`path`(255)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xofti_menu`
--

LOCK TABLES `xofti_menu` WRITE;
/*!40000 ALTER TABLE `xofti_menu` DISABLE KEYS */;
INSERT INTO `xofti_menu` VALUES (1,'','Menu_Item_Root','root','','','','',1,0,0,0,0,0,'0000-00-00 00:00:00',0,0,'',0,'',0,59,0,'*',0),(2,'menu','com_banners','Banners','','Banners','index.php?option=com_banners','component',0,1,1,4,0,0,'0000-00-00 00:00:00',0,0,'class:banners',0,'',1,10,0,'*',1),(3,'menu','com_banners','Banners','','Banners/Banners','index.php?option=com_banners','component',0,2,2,4,0,0,'0000-00-00 00:00:00',0,0,'class:banners',0,'',2,3,0,'*',1),(4,'menu','com_banners_categories','Categories','','Banners/Categories','index.php?option=com_categories&extension=com_banners','component',0,2,2,6,0,0,'0000-00-00 00:00:00',0,0,'class:banners-cat',0,'',4,5,0,'*',1),(5,'menu','com_banners_clients','Clients','','Banners/Clients','index.php?option=com_banners&view=clients','component',0,2,2,4,0,0,'0000-00-00 00:00:00',0,0,'class:banners-clients',0,'',6,7,0,'*',1),(6,'menu','com_banners_tracks','Tracks','','Banners/Tracks','index.php?option=com_banners&view=tracks','component',0,2,2,4,0,0,'0000-00-00 00:00:00',0,0,'class:banners-tracks',0,'',8,9,0,'*',1),(7,'menu','com_contact','Contacts','','Contacts','index.php?option=com_contact','component',0,1,1,8,0,0,'0000-00-00 00:00:00',0,0,'class:contact',0,'',11,16,0,'*',1),(8,'menu','com_contact','Contacts','','Contacts/Contacts','index.php?option=com_contact','component',0,7,2,8,0,0,'0000-00-00 00:00:00',0,0,'class:contact',0,'',12,13,0,'*',1),(9,'menu','com_contact_categories','Categories','','Contacts/Categories','index.php?option=com_categories&extension=com_contact','component',0,7,2,6,0,0,'0000-00-00 00:00:00',0,0,'class:contact-cat',0,'',14,15,0,'*',1),(10,'menu','com_messages','Messaging','','Messaging','index.php?option=com_messages','component',0,1,1,15,0,0,'0000-00-00 00:00:00',0,0,'class:messages',0,'',17,22,0,'*',1),(11,'menu','com_messages_add','New Private Message','','Messaging/New Private Message','index.php?option=com_messages&task=message.add','component',0,10,2,15,0,0,'0000-00-00 00:00:00',0,0,'class:messages-add',0,'',18,19,0,'*',1),(12,'menu','com_messages_read','Read Private Message','','Messaging/Read Private Message','index.php?option=com_messages','component',0,10,2,15,0,0,'0000-00-00 00:00:00',0,0,'class:messages-read',0,'',20,21,0,'*',1),(13,'menu','com_newsfeeds','News Feeds','','News Feeds','index.php?option=com_newsfeeds','component',0,1,1,17,0,0,'0000-00-00 00:00:00',0,0,'class:newsfeeds',0,'',23,28,0,'*',1),(14,'menu','com_newsfeeds_feeds','Feeds','','News Feeds/Feeds','index.php?option=com_newsfeeds','component',0,13,2,17,0,0,'0000-00-00 00:00:00',0,0,'class:newsfeeds',0,'',24,25,0,'*',1),(15,'menu','com_newsfeeds_categories','Categories','','News Feeds/Categories','index.php?option=com_categories&extension=com_newsfeeds','component',0,13,2,6,0,0,'0000-00-00 00:00:00',0,0,'class:newsfeeds-cat',0,'',26,27,0,'*',1),(16,'menu','com_redirect','Redirect','','Redirect','index.php?option=com_redirect','component',0,1,1,24,0,0,'0000-00-00 00:00:00',0,0,'class:redirect',0,'',41,42,0,'*',1),(17,'menu','com_search','Basic Search','','Basic Search','index.php?option=com_search','component',0,1,1,19,0,0,'0000-00-00 00:00:00',0,0,'class:search',0,'',33,34,0,'*',1),(18,'menu','com_weblinks','Weblinks','','Weblinks','index.php?option=com_weblinks','component',0,1,1,21,0,0,'0000-00-00 00:00:00',0,0,'class:weblinks',0,'',35,40,0,'*',1),(19,'menu','com_weblinks_links','Links','','Weblinks/Links','index.php?option=com_weblinks','component',0,18,2,21,0,0,'0000-00-00 00:00:00',0,0,'class:weblinks',0,'',36,37,0,'*',1),(20,'menu','com_weblinks_categories','Categories','','Weblinks/Categories','index.php?option=com_categories&extension=com_weblinks','component',0,18,2,6,0,0,'0000-00-00 00:00:00',0,0,'class:weblinks-cat',0,'',38,39,0,'*',1),(21,'menu','com_finder','Smart Search','','Smart Search','index.php?option=com_finder','component',0,1,1,27,0,0,'0000-00-00 00:00:00',0,0,'class:finder',0,'',31,32,0,'*',1),(22,'menu','com_joomlaupdate','Joomla! Update','','Joomla! Update','index.php?option=com_joomlaupdate','component',0,1,1,28,0,0,'0000-00-00 00:00:00',0,0,'class:joomlaupdate',0,'',41,42,0,'*',1),(101,'mainmenu','Home','home','','home','index.php?option=com_content&view=featured','component',1,1,1,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"featured_categories\":[\"\"],\"layout_type\":\"blog\",\"num_leading_articles\":\"5\",\"num_intro_articles\":\"3\",\"num_columns\":\"3\",\"num_links\":\"0\",\"multi_column_order\":\"1\",\"orderby_pri\":\"\",\"orderby_sec\":\"front\",\"order_date\":\"\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_readmore\":\"\",\"show_readmore_title\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"show_feed_link\":\"1\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":1,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',29,30,1,'*',0),(102,'mainmenu','Avto','avto','','avto','index.php?option=com_content&view=category&id=2','component',1,1,1,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_category_heading_title_text\":\"\",\"show_category_title\":\"\",\"show_description\":\"\",\"show_description_image\":\"\",\"maxLevel\":\"\",\"show_empty_categories\":\"\",\"show_no_articles\":\"\",\"show_subcat_desc\":\"\",\"show_cat_num_articles\":\"\",\"page_subheading\":\"\",\"show_pagination_limit\":\"\",\"filter_field\":\"\",\"show_headings\":\"\",\"list_show_date\":\"\",\"date_format\":\"\",\"list_show_hits\":\"\",\"list_show_author\":\"\",\"orderby_pri\":\"\",\"orderby_sec\":\"\",\"order_date\":\"\",\"show_pagination\":\"\",\"show_pagination_results\":\"\",\"display_num\":\"10\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_readmore\":\"\",\"show_readmore_title\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"show_feed_link\":\"\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',43,44,0,'*',0),(103,'mainmenu','Moto','moto','','moto','index.php?option=com_content&view=category&id=8','component',1,1,1,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_category_heading_title_text\":\"\",\"show_category_title\":\"\",\"show_description\":\"\",\"show_description_image\":\"\",\"maxLevel\":\"\",\"show_empty_categories\":\"\",\"show_no_articles\":\"\",\"show_subcat_desc\":\"\",\"show_cat_num_articles\":\"\",\"page_subheading\":\"\",\"show_pagination_limit\":\"\",\"filter_field\":\"\",\"show_headings\":\"\",\"list_show_date\":\"\",\"date_format\":\"\",\"list_show_hits\":\"\",\"list_show_author\":\"\",\"orderby_pri\":\"\",\"orderby_sec\":\"\",\"order_date\":\"\",\"show_pagination\":\"\",\"show_pagination_results\":\"\",\"display_num\":\"10\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_readmore\":\"\",\"show_readmore_title\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"show_feed_link\":\"\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',45,46,0,'*',0),(104,'mainmenu','Top Avto','top-avto','','top-avto','index.php?option=com_content&view=article&id=5','component',1,1,1,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',47,48,0,'*',0),(105,'mainmenu','Top Moto','top-moto','','top-moto','index.php?option=com_content&view=article&id=4','component',1,1,1,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',49,50,0,'*',0),(106,'mainmenu','Top News','top-news','','top-news','index.php?option=com_content&view=article&id=8','component',1,1,1,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',51,52,0,'*',0),(107,'main','COM_DEMOTIVATOR','com-demotivator','','com-demotivator','index.php?option=com_demotivator','component',0,1,1,801,0,0,'0000-00-00 00:00:00',0,1,'components/com_demotivator/assets/images/s_com_demotivator.png',0,'',53,56,0,'',1),(108,'main','COM_DEMOTIVATOR_TITLE_IMGS','com-demotivator-title-imgs','','com-demotivator/com-demotivator-title-imgs','index.php?option=com_demotivator&view=imgs','component',0,107,2,801,0,0,'0000-00-00 00:00:00',0,1,'components/com_demotivator/assets/images/s_imgs.png',0,'',54,55,0,'',1),(109,'main','COM_SLOGIN_MAIN_MENU','com-slogin-main-menu','','com-slogin-main-menu','index.php?option=com_slogin','component',0,1,1,802,0,0,'0000-00-00 00:00:00',0,1,'../media/com_slogin/icon_16x16.png',0,'',57,58,0,'',1);
/*!40000 ALTER TABLE `xofti_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xofti_menu_types`
--

DROP TABLE IF EXISTS `xofti_menu_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xofti_menu_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL,
  `title` varchar(48) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_menutype` (`menutype`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xofti_menu_types`
--

LOCK TABLES `xofti_menu_types` WRITE;
/*!40000 ALTER TABLE `xofti_menu_types` DISABLE KEYS */;
INSERT INTO `xofti_menu_types` VALUES (1,'mainmenu','Main Menu','The main menu for the site');
/*!40000 ALTER TABLE `xofti_menu_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xofti_messages`
--

DROP TABLE IF EXISTS `xofti_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xofti_messages` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id_from` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id_to` int(10) unsigned NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xofti_messages`
--

LOCK TABLES `xofti_messages` WRITE;
/*!40000 ALTER TABLE `xofti_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `xofti_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xofti_messages_cfg`
--

DROP TABLE IF EXISTS `xofti_messages_cfg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xofti_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) NOT NULL DEFAULT '',
  `cfg_value` varchar(255) NOT NULL DEFAULT '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xofti_messages_cfg`
--

LOCK TABLES `xofti_messages_cfg` WRITE;
/*!40000 ALTER TABLE `xofti_messages_cfg` DISABLE KEYS */;
/*!40000 ALTER TABLE `xofti_messages_cfg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xofti_modules`
--

DROP TABLE IF EXISTS `xofti_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xofti_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) NOT NULL DEFAULT '',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) DEFAULT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xofti_modules`
--

LOCK TABLES `xofti_modules` WRITE;
/*!40000 ALTER TABLE `xofti_modules` DISABLE KEYS */;
INSERT INTO `xofti_modules` VALUES (1,'Main Menu','','',1,'position-7',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_menu',1,1,'{\"menutype\":\"mainmenu\",\"startLevel\":\"0\",\"endLevel\":\"0\",\"showAllChildren\":\"0\",\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"\",\"moduleclass_sfx\":\"_menu\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}',0,'*'),(2,'Login','','',1,'login',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_login',1,1,'',1,'*'),(3,'Popular Articles','','',3,'cpanel',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_popular',3,1,'{\"count\":\"5\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"automatic_title\":\"1\"}',1,'*'),(4,'Recently Added Articles','','',4,'cpanel',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_latest',3,1,'{\"count\":\"5\",\"ordering\":\"c_dsc\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"automatic_title\":\"1\"}',1,'*'),(8,'Toolbar','','',1,'toolbar',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_toolbar',3,1,'',1,'*'),(9,'Quick Icons','','',1,'icon',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_quickicon',3,1,'',1,'*'),(10,'Logged-in Users','','',2,'cpanel',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_logged',3,1,'{\"count\":\"5\",\"name\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"automatic_title\":\"1\"}',1,'*'),(12,'Admin Menu','','',1,'menu',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_menu',3,1,'{\"layout\":\"\",\"moduleclass_sfx\":\"\",\"shownew\":\"1\",\"showhelp\":\"1\",\"cache\":\"0\"}',1,'*'),(13,'Admin Submenu','','',1,'submenu',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_submenu',3,1,'',1,'*'),(14,'User Status','','',2,'status',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_status',3,1,'',1,'*'),(15,'Title','','',1,'title',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_title',3,1,'',1,'*'),(16,'Login Form','','',7,'position-7',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_login',1,1,'{\"greeting\":\"1\",\"name\":\"0\"}',0,'*'),(17,'Breadcrumbs','','',1,'position-2',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_breadcrumbs',1,1,'{\"showHere\":\"1\",\"showHome\":\"1\",\"homeText\":\"Home\",\"showLast\":\"1\",\"separator\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}',0,'*'),(79,'Multilanguage status','','',1,'status',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_multilangstatus',3,1,'{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}',1,'*'),(86,'Joomla Version','','',1,'footer',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_version',3,1,'{\"format\":\"short\",\"product\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}',1,'*'),(87,'users','','',1,'position-0',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_whosonline',1,1,'{\"showmode\":\"2\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"filter_groups\":\"0\"}',0,'*'),(88,'SLogin','','',1,'position-1',0,'0000-00-00 00:00:00','2013-10-22 18:35:15','0000-00-00 00:00:00',1,'mod_slogin',1,1,'{\"load_after\":1,\"show_login_form\":1,\"inittext\":\"\",\"pretext\":\"\",\"posttext\":\"\",\"login\":\"101\",\"logout\":\"101\",\"secretkey\":\"\",\"layout\":\"_:compact\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"load_css\":\"0\",\"load_js\":\"0\"}',0,'*'),(89,'Search','','',1,'position-0',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_search',1,1,'{\"label\":\"\",\"width\":\"20\",\"text\":\"\",\"button\":\"\",\"button_pos\":\"right\",\"imagebutton\":\"\",\"button_text\":\"\",\"opensearch\":\"1\",\"opensearch_title\":\"\",\"set_itemid\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}',0,'*');
/*!40000 ALTER TABLE `xofti_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xofti_modules_menu`
--

DROP TABLE IF EXISTS `xofti_modules_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xofti_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`moduleid`,`menuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xofti_modules_menu`
--

LOCK TABLES `xofti_modules_menu` WRITE;
/*!40000 ALTER TABLE `xofti_modules_menu` DISABLE KEYS */;
INSERT INTO `xofti_modules_menu` VALUES (1,0),(2,0),(3,0),(4,0),(6,0),(7,0),(8,0),(9,0),(10,0),(12,0),(13,0),(14,0),(15,0),(16,0),(17,0),(79,0),(86,0),(87,0),(88,0),(89,0);
/*!40000 ALTER TABLE `xofti_modules_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xofti_newsfeeds`
--

DROP TABLE IF EXISTS `xofti_newsfeeds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xofti_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `link` varchar(200) NOT NULL DEFAULT '',
  `filename` varchar(200) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(10) unsigned NOT NULL DEFAULT '1',
  `cache_time` int(10) unsigned NOT NULL DEFAULT '3600',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xofti_newsfeeds`
--

LOCK TABLES `xofti_newsfeeds` WRITE;
/*!40000 ALTER TABLE `xofti_newsfeeds` DISABLE KEYS */;
/*!40000 ALTER TABLE `xofti_newsfeeds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xofti_overrider`
--

DROP TABLE IF EXISTS `xofti_overrider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xofti_overrider` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `constant` varchar(255) NOT NULL,
  `string` text NOT NULL,
  `file` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xofti_overrider`
--

LOCK TABLES `xofti_overrider` WRITE;
/*!40000 ALTER TABLE `xofti_overrider` DISABLE KEYS */;
/*!40000 ALTER TABLE `xofti_overrider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xofti_plg_slogin_profile`
--

DROP TABLE IF EXISTS `xofti_plg_slogin_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xofti_plg_slogin_profile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `slogin_id` varchar(150) NOT NULL,
  `provider` varchar(100) NOT NULL,
  `gender` int(1) NOT NULL DEFAULT '0',
  `f_name` varchar(100) NOT NULL,
  `l_name` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `mobil_phone` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `social_profile_link` varchar(250) NOT NULL,
  `country` varchar(5) NOT NULL,
  `region` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `lat` varchar(50) NOT NULL,
  `lng` varchar(50) NOT NULL,
  `avatar` varchar(100) NOT NULL,
  `current_profile` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `user_prov` (`user_id`,`provider`),
  KEY `user_curr` (`user_id`,`current_profile`),
  KEY `user` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xofti_plg_slogin_profile`
--

LOCK TABLES `xofti_plg_slogin_profile` WRITE;
/*!40000 ALTER TABLE `xofti_plg_slogin_profile` DISABLE KEYS */;
/*!40000 ALTER TABLE `xofti_plg_slogin_profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xofti_redirect_links`
--

DROP TABLE IF EXISTS `xofti_redirect_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xofti_redirect_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `old_url` varchar(255) NOT NULL,
  `new_url` varchar(255) NOT NULL,
  `referer` varchar(150) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_link_old` (`old_url`),
  KEY `idx_link_modifed` (`modified_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xofti_redirect_links`
--

LOCK TABLES `xofti_redirect_links` WRITE;
/*!40000 ALTER TABLE `xofti_redirect_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `xofti_redirect_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xofti_schemas`
--

DROP TABLE IF EXISTS `xofti_schemas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xofti_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) NOT NULL,
  PRIMARY KEY (`extension_id`,`version_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xofti_schemas`
--

LOCK TABLES `xofti_schemas` WRITE;
/*!40000 ALTER TABLE `xofti_schemas` DISABLE KEYS */;
INSERT INTO `xofti_schemas` VALUES (700,'2.5.14'),(806,'1.0');
/*!40000 ALTER TABLE `xofti_schemas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xofti_session`
--

DROP TABLE IF EXISTS `xofti_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xofti_session` (
  `session_id` varchar(200) NOT NULL DEFAULT '',
  `client_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `guest` tinyint(4) unsigned DEFAULT '1',
  `time` varchar(14) DEFAULT '',
  `data` mediumtext,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) DEFAULT '',
  `usertype` varchar(50) DEFAULT '',
  PRIMARY KEY (`session_id`),
  KEY `whosonline` (`guest`,`usertype`),
  KEY `userid` (`userid`),
  KEY `time` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xofti_session`
--

LOCK TABLES `xofti_session` WRITE;
/*!40000 ALTER TABLE `xofti_session` DISABLE KEYS */;
INSERT INTO `xofti_session` VALUES ('3465ae6eb358d24368f919e42eb17d3a',1,0,'1382509069','__default|a:8:{s:15:\"session.counter\";i:4;s:19:\"session.timer.start\";i:1382509058;s:18:\"session.timer.last\";i:1382509063;s:17:\"session.timer.now\";i:1382509069;s:22:\"session.client.browser\";s:74:\"Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:24.0) Gecko/20100101 Firefox/24.0\";s:8:\"registry\";O:9:\"JRegistry\":1:{s:7:\"\0*\0data\";O:8:\"stdClass\":2:{s:11:\"application\";O:8:\"stdClass\":1:{s:4:\"lang\";s:0:\"\";}s:11:\"com_modules\";O:8:\"stdClass\":1:{s:7:\"modules\";O:8:\"stdClass\":1:{s:6:\"filter\";O:8:\"stdClass\":1:{s:18:\"client_id_previous\";i:0;}}}}}s:4:\"user\";O:5:\"JUser\":25:{s:9:\"\0*\0isRoot\";b:1;s:2:\"id\";s:3:\"282\";s:4:\"name\";s:10:\"Super User\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:19:\"j.jaguar@rambler.ru\";s:8:\"password\";s:65:\"29d33641266042e3b2decb931ed038e1:6bPhO6pVXn4BSEkvLlIuyRwBTYl3E7U0\";s:14:\"password_clear\";s:0:\"\";s:8:\"usertype\";s:10:\"deprecated\";s:5:\"block\";s:1:\"0\";s:9:\"sendEmail\";s:1:\"1\";s:12:\"registerDate\";s:19:\"2013-10-10 15:42:49\";s:13:\"lastvisitDate\";s:19:\"2013-10-22 16:25:33\";s:10:\"activation\";s:1:\"0\";s:6:\"params\";s:0:\"\";s:6:\"groups\";a:1:{i:8;s:1:\"8\";}s:5:\"guest\";i:0;s:13:\"lastResetTime\";s:19:\"0000-00-00 00:00:00\";s:10:\"resetCount\";s:1:\"0\";s:10:\"\0*\0_params\";O:9:\"JRegistry\":1:{s:7:\"\0*\0data\";O:8:\"stdClass\":0:{}}s:14:\"\0*\0_authGroups\";a:2:{i:0;i:1;i:1;i:8;}s:14:\"\0*\0_authLevels\";a:4:{i:0;i:1;i:1;i:1;i:2;i:2;i:3;i:3;}s:15:\"\0*\0_authActions\";N;s:12:\"\0*\0_errorMsg\";N;s:10:\"\0*\0_errors\";a:0:{}s:3:\"aid\";i:0;}s:13:\"session.token\";s:32:\"989b690cfc1472d4631e7adad9b23a2a\";}',282,'admin','');
/*!40000 ALTER TABLE `xofti_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xofti_slogin_users`
--

DROP TABLE IF EXISTS `xofti_slogin_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xofti_slogin_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `slogin_id` varchar(150) NOT NULL,
  `provider` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `slogin_id` (`slogin_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xofti_slogin_users`
--

LOCK TABLES `xofti_slogin_users` WRITE;
/*!40000 ALTER TABLE `xofti_slogin_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `xofti_slogin_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xofti_template_styles`
--

DROP TABLE IF EXISTS `xofti_template_styles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xofti_template_styles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template` varchar(50) NOT NULL DEFAULT '',
  `client_id` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `home` char(7) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_template` (`template`),
  KEY `idx_home` (`home`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xofti_template_styles`
--

LOCK TABLES `xofti_template_styles` WRITE;
/*!40000 ALTER TABLE `xofti_template_styles` DISABLE KEYS */;
INSERT INTO `xofti_template_styles` VALUES (2,'bluestork',1,'1','Bluestork - Default','{\"useRoundedCorners\":\"1\",\"showSiteName\":\"0\"}'),(3,'atomic',0,'0','Atomic - Default','{}'),(4,'beez_20',0,'1','Beez2 - Default','{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"logo\":\"images\\/joomla_black.gif\",\"sitetitle\":\"Joomla!\",\"sitedescription\":\"Open Source Content Management\",\"navposition\":\"left\",\"templatecolor\":\"personal\",\"html5\":\"0\"}'),(5,'hathor',1,'0','Hathor - Default','{\"showSiteName\":\"0\",\"colourChoice\":\"\",\"boldText\":\"0\"}'),(6,'beez5',0,'0','Beez5 - Default','{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"logo\":\"images\\/sampledata\\/fruitshop\\/fruits.gif\",\"sitetitle\":\"Joomla!\",\"sitedescription\":\"Open Source Content Management\",\"navposition\":\"left\",\"html5\":\"0\"}');
/*!40000 ALTER TABLE `xofti_template_styles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xofti_update_categories`
--

DROP TABLE IF EXISTS `xofti_update_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xofti_update_categories` (
  `categoryid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT '',
  `description` text NOT NULL,
  `parent` int(11) DEFAULT '0',
  `updatesite` int(11) DEFAULT '0',
  PRIMARY KEY (`categoryid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Update Categories';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xofti_update_categories`
--

LOCK TABLES `xofti_update_categories` WRITE;
/*!40000 ALTER TABLE `xofti_update_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `xofti_update_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xofti_update_sites`
--

DROP TABLE IF EXISTS `xofti_update_sites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xofti_update_sites` (
  `update_site_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `location` text NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  PRIMARY KEY (`update_site_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='Update Sites';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xofti_update_sites`
--

LOCK TABLES `xofti_update_sites` WRITE;
/*!40000 ALTER TABLE `xofti_update_sites` DISABLE KEYS */;
INSERT INTO `xofti_update_sites` VALUES (1,'Joomla Core','collection','http://update.joomla.org/core/list.xml',0,1381938633),(2,'Joomla Extension Directory','collection','http://update.joomla.org/jed/list.xml',0,1381938633),(3,'Accredited Joomla! Translations','collection','http://update.joomla.org/language/translationlist.xml',0,1381938633),(4,'Joomline','extension','http://joomline.net/index.php?option=com_ars&view=update&task=stream&format=xml&id=5&dummy=extension.xml',1,0),(5,'JComments Social Login','extension','http://www.joomlatune.ru/updates/plg-jcomments-slogin.xml',1,0);
/*!40000 ALTER TABLE `xofti_update_sites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xofti_update_sites_extensions`
--

DROP TABLE IF EXISTS `xofti_update_sites_extensions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xofti_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`update_site_id`,`extension_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Links extensions to update sites';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xofti_update_sites_extensions`
--

LOCK TABLES `xofti_update_sites_extensions` WRITE;
/*!40000 ALTER TABLE `xofti_update_sites_extensions` DISABLE KEYS */;
INSERT INTO `xofti_update_sites_extensions` VALUES (1,700),(2,700),(3,600),(4,802),(5,807);
/*!40000 ALTER TABLE `xofti_update_sites_extensions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xofti_updates`
--

DROP TABLE IF EXISTS `xofti_updates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xofti_updates` (
  `update_id` int(11) NOT NULL AUTO_INCREMENT,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `categoryid` int(11) DEFAULT '0',
  `name` varchar(100) DEFAULT '',
  `description` text NOT NULL,
  `element` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `folder` varchar(20) DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(10) DEFAULT '',
  `data` text NOT NULL,
  `detailsurl` text NOT NULL,
  `infourl` text NOT NULL,
  PRIMARY KEY (`update_id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8 COMMENT='Available Updates';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xofti_updates`
--

LOCK TABLES `xofti_updates` WRITE;
/*!40000 ALTER TABLE `xofti_updates` DISABLE KEYS */;
INSERT INTO `xofti_updates` VALUES (1,3,0,0,'Armenian','','pkg_hy-AM','package','',0,'2.5.8.1','','http://update.joomla.org/language/details/hy-AM_details.xml',''),(2,3,0,0,'Bahasa Indonesia','','pkg_id-ID','package','',0,'2.5.13.1','','http://update.joomla.org/language/details/id-ID_details.xml',''),(3,3,0,0,'Danish','','pkg_da-DK','package','',0,'2.5.14.1','','http://update.joomla.org/language/details/da-DK_details.xml',''),(4,3,0,0,'Khmer','','pkg_km-KH','package','',0,'2.5.7.1','','http://update.joomla.org/language/details/km-KH_details.xml',''),(5,3,0,0,'Swedish','','pkg_sv-SE','package','',0,'2.5.10.1','','http://update.joomla.org/language/details/sv-SE_details.xml',''),(6,3,0,0,'Hungarian','','pkg_hu-HU','package','',0,'2.5.8.1','','http://update.joomla.org/language/details/hu-HU_details.xml',''),(7,3,0,0,'Bulgarian','','pkg_bg-BG','package','',0,'2.5.7.1','','http://update.joomla.org/language/details/bg-BG_details.xml',''),(8,3,0,0,'French','','pkg_fr-FR','package','',0,'2.5.13.1','','http://update.joomla.org/language/details/fr-FR_details.xml',''),(9,3,0,0,'Italian','','pkg_it-IT','package','',0,'2.5.14.1','','http://update.joomla.org/language/details/it-IT_details.xml',''),(10,3,0,0,'Spanish','','pkg_es-ES','package','',0,'2.5.14.1','','http://update.joomla.org/language/details/es-ES_details.xml',''),(11,3,0,0,'Dutch','','pkg_nl-NL','package','',0,'2.5.14.1','','http://update.joomla.org/language/details/nl-NL_details.xml',''),(12,3,0,0,'Turkish','','pkg_tr-TR','package','',0,'2.5.13.1','','http://update.joomla.org/language/details/tr-TR_details.xml',''),(13,3,0,0,'Ukrainian','','pkg_uk-UA','package','',0,'2.5.13.11','','http://update.joomla.org/language/details/uk-UA_details.xml',''),(14,3,0,0,'Slovak','','pkg_sk-SK','package','',0,'2.5.14.2','','http://update.joomla.org/language/details/sk-SK_details.xml',''),(15,3,0,0,'Belarusian','','pkg_be-BY','package','',0,'2.5.8.1','','http://update.joomla.org/language/details/be-BY_details.xml',''),(16,3,0,0,'Latvian','','pkg_lv-LV','package','',0,'2.5.13.1','','http://update.joomla.org/language/details/lv-LV_details.xml',''),(17,3,0,0,'Estonian','','pkg_et-EE','package','',0,'2.5.7.1','','http://update.joomla.org/language/details/et-EE_details.xml',''),(18,3,0,0,'Romanian','','pkg_ro-RO','package','',0,'2.5.11.1','','http://update.joomla.org/language/details/ro-RO_details.xml',''),(19,3,0,0,'Flemish','','pkg_nl-BE','package','',0,'2.5.14.1','','http://update.joomla.org/language/details/nl-BE_details.xml',''),(20,3,0,0,'Macedonian','','pkg_mk-MK','package','',0,'2.5.13.1','','http://update.joomla.org/language/details/mk-MK_details.xml',''),(21,3,0,0,'Japanese','','pkg_ja-JP','package','',0,'2.5.14.1','','http://update.joomla.org/language/details/ja-JP_details.xml',''),(22,3,0,0,'Serbian Latin','','pkg_sr-YU','package','',0,'2.5.13.1','','http://update.joomla.org/language/details/sr-YU_details.xml',''),(23,3,0,0,'Arabic Unitag','','pkg_ar-AA','package','',0,'2.5.13.1','','http://update.joomla.org/language/details/ar-AA_details.xml',''),(24,3,0,0,'German','','pkg_de-DE','package','',0,'2.5.14.1','','http://update.joomla.org/language/details/de-DE_details.xml',''),(25,3,0,0,'Norwegian Bokmal','','pkg_nb-NO','package','',0,'2.5.11.1','','http://update.joomla.org/language/details/nb-NO_details.xml',''),(26,3,0,0,'English AU','','pkg_en-AU','package','',0,'2.5.10.1','','http://update.joomla.org/language/details/en-AU_details.xml',''),(27,3,0,0,'English US','','pkg_en-US','package','',0,'2.5.10.1','','http://update.joomla.org/language/details/en-US_details.xml',''),(28,3,0,0,'Serbian Cyrillic','','pkg_sr-RS','package','',0,'2.5.13.1','','http://update.joomla.org/language/details/sr-RS_details.xml',''),(29,3,0,0,'Lithuanian','','pkg_lt-LT','package','',0,'2.5.7.1','','http://update.joomla.org/language/details/lt-LT_details.xml',''),(30,3,0,0,'Albanian','','pkg_sq-AL','package','',0,'2.5.1.5','','http://update.joomla.org/language/details/sq-AL_details.xml',''),(31,3,0,0,'Czech','','pkg_cs-CZ','package','',0,'2.5.13.1','','http://update.joomla.org/language/details/cs-CZ_details.xml',''),(32,3,0,0,'Persian','','pkg_fa-IR','package','',0,'2.5.13.1','','http://update.joomla.org/language/details/fa-IR_details.xml',''),(33,3,0,0,'Galician','','pkg_gl-ES','package','',0,'2.5.7.4','','http://update.joomla.org/language/details/gl-ES_details.xml',''),(34,3,0,0,'Polish','','pkg_pl-PL','package','',0,'2.5.14.1','','http://update.joomla.org/language/details/pl-PL_details.xml',''),(35,3,0,0,'Syriac','','pkg_sy-IQ','package','',0,'2.5.10.1','','http://update.joomla.org/language/details/sy-IQ_details.xml',''),(36,3,0,0,'Portuguese','','pkg_pt-PT','package','',0,'2.5.8.1','','http://update.joomla.org/language/details/pt-PT_details.xml',''),(37,3,0,0,'Russian','','pkg_ru-RU','package','',0,'2.5.13.1','','http://update.joomla.org/language/details/ru-RU_details.xml',''),(38,3,0,0,'Hebrew','','pkg_he-IL','package','',0,'2.5.7.1','','http://update.joomla.org/language/details/he-IL_details.xml',''),(39,3,0,0,'Catalan','','pkg_ca-ES','package','',0,'2.5.13.1','','http://update.joomla.org/language/details/ca-ES_details.xml',''),(40,3,0,0,'Laotian','','pkg_lo-LA','package','',0,'2.5.6.1','','http://update.joomla.org/language/details/lo-LA_details.xml',''),(41,3,0,0,'Afrikaans','','pkg_af-ZA','package','',0,'2.5.14.1','','http://update.joomla.org/language/details/af-ZA_details.xml',''),(42,3,0,0,'Chinese Simplified','','pkg_zh-CN','package','',0,'2.5.14.1','','http://update.joomla.org/language/details/zh-CN_details.xml',''),(43,3,0,0,'Greek','','pkg_el-GR','package','',0,'2.5.6.1','','http://update.joomla.org/language/details/el-GR_details.xml',''),(44,3,0,0,'Esperanto','','pkg_eo-XX','package','',0,'2.5.6.1','','http://update.joomla.org/language/details/eo-XX_details.xml',''),(45,3,0,0,'Finnish','','pkg_fi-FI','package','',0,'2.5.13.1','','http://update.joomla.org/language/details/fi-FI_details.xml',''),(46,3,0,0,'Portuguese Brazil','','pkg_pt-BR','package','',0,'2.5.9.1','','http://update.joomla.org/language/details/pt-BR_details.xml',''),(47,3,0,0,'Chinese Traditional','','pkg_zh-TW','package','',0,'2.5.13.1','','http://update.joomla.org/language/details/zh-TW_details.xml',''),(48,3,0,0,'Vietnamese','','pkg_vi-VN','package','',0,'2.5.8.1','','http://update.joomla.org/language/details/vi-VN_details.xml',''),(49,3,0,0,'Kurdish Sorani','','pkg_ckb-IQ','package','',0,'2.5.9.1','','http://update.joomla.org/language/details/ckb-IQ_details.xml',''),(50,3,0,0,'Bosnian','','pkg_bs-BA','package','',0,'2.5.11.1','','http://update.joomla.org/language/details/bs-BA_details.xml',''),(51,3,0,0,'Croatian','','pkg_hr-HR','package','',0,'2.5.13.1','','http://update.joomla.org/language/details/hr-HR_details.xml',''),(52,3,0,0,'Azeri','','pkg_az-AZ','package','',0,'2.5.7.1','','http://update.joomla.org/language/details/az-AZ_details.xml',''),(53,3,0,0,'Norwegian Nynorsk','','pkg_nn-NO','package','',0,'2.5.8.1','','http://update.joomla.org/language/details/nn-NO_details.xml',''),(54,3,0,0,'Tamil India','','pkg_ta-IN','package','',0,'2.5.14.2','','http://update.joomla.org/language/details/ta-IN_details.xml',''),(55,3,0,0,'Scottish Gaelic','','pkg_gd-GB','package','',0,'2.5.7.1','','http://update.joomla.org/language/details/gd-GB_details.xml',''),(56,3,0,0,'Thai','','pkg_th-TH','package','',0,'2.5.13.1','','http://update.joomla.org/language/details/th-TH_details.xml',''),(57,3,0,0,'Basque','','pkg_eu-ES','package','',0,'1.7.0.1','','http://update.joomla.org/language/details/eu-ES_details.xml',''),(58,3,0,0,'Uyghur','','pkg_ug-CN','package','',0,'2.5.7.2','','http://update.joomla.org/language/details/ug-CN_details.xml',''),(59,3,0,0,'Korean','','pkg_ko-KR','package','',0,'2.5.11.1','','http://update.joomla.org/language/details/ko-KR_details.xml',''),(60,3,0,0,'Hindi','','pkg_hi-IN','package','',0,'2.5.6.1','','http://update.joomla.org/language/details/hi-IN_details.xml',''),(61,3,0,0,'Welsh','','pkg_cy-GB','package','',0,'2.5.6.1','','http://update.joomla.org/language/details/cy-GB_details.xml',''),(62,3,0,0,'Swahili','','pkg_sw-KE','package','',0,'2.5.14.1','','http://update.joomla.org/language/details/sw-KE_details.xml','');
/*!40000 ALTER TABLE `xofti_updates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xofti_user_notes`
--

DROP TABLE IF EXISTS `xofti_user_notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xofti_user_notes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(100) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_category_id` (`catid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xofti_user_notes`
--

LOCK TABLES `xofti_user_notes` WRITE;
/*!40000 ALTER TABLE `xofti_user_notes` DISABLE KEYS */;
/*!40000 ALTER TABLE `xofti_user_notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xofti_user_profiles`
--

DROP TABLE IF EXISTS `xofti_user_profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xofti_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) NOT NULL,
  `profile_value` varchar(255) NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Simple user profile storage table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xofti_user_profiles`
--

LOCK TABLES `xofti_user_profiles` WRITE;
/*!40000 ALTER TABLE `xofti_user_profiles` DISABLE KEYS */;
/*!40000 ALTER TABLE `xofti_user_profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xofti_user_usergroup_map`
--

DROP TABLE IF EXISTS `xofti_user_usergroup_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xofti_user_usergroup_map` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id',
  PRIMARY KEY (`user_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xofti_user_usergroup_map`
--

LOCK TABLES `xofti_user_usergroup_map` WRITE;
/*!40000 ALTER TABLE `xofti_user_usergroup_map` DISABLE KEYS */;
INSERT INTO `xofti_user_usergroup_map` VALUES (282,8);
/*!40000 ALTER TABLE `xofti_user_usergroup_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xofti_usergroups`
--

DROP TABLE IF EXISTS `xofti_usergroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xofti_usergroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  KEY `idx_usergroup_title_lookup` (`title`),
  KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xofti_usergroups`
--

LOCK TABLES `xofti_usergroups` WRITE;
/*!40000 ALTER TABLE `xofti_usergroups` DISABLE KEYS */;
INSERT INTO `xofti_usergroups` VALUES (1,0,1,20,'Public'),(2,1,6,17,'Registered'),(3,2,7,14,'Author'),(4,3,8,11,'Editor'),(5,4,9,10,'Publisher'),(6,1,2,5,'Manager'),(7,6,3,4,'Administrator'),(8,1,18,19,'Super Users');
/*!40000 ALTER TABLE `xofti_usergroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xofti_users`
--

DROP TABLE IF EXISTS `xofti_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xofti_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(150) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `usertype` varchar(25) NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  PRIMARY KEY (`id`),
  KEY `usertype` (`usertype`),
  KEY `idx_name` (`name`),
  KEY `idx_block` (`block`),
  KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=283 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xofti_users`
--

LOCK TABLES `xofti_users` WRITE;
/*!40000 ALTER TABLE `xofti_users` DISABLE KEYS */;
INSERT INTO `xofti_users` VALUES (282,'Super User','admin','j.jaguar@rambler.ru','29d33641266042e3b2decb931ed038e1:6bPhO6pVXn4BSEkvLlIuyRwBTYl3E7U0','deprecated',0,1,'2013-10-10 15:42:49','2013-10-23 06:17:43','0','','0000-00-00 00:00:00',0);
/*!40000 ALTER TABLE `xofti_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xofti_viewlevels`
--

DROP TABLE IF EXISTS `xofti_viewlevels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xofti_viewlevels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `title` varchar(100) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_assetgroup_title_lookup` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xofti_viewlevels`
--

LOCK TABLES `xofti_viewlevels` WRITE;
/*!40000 ALTER TABLE `xofti_viewlevels` DISABLE KEYS */;
INSERT INTO `xofti_viewlevels` VALUES (1,'Public',0,'[1]'),(2,'Registered',1,'[6,2,8]'),(3,'Special',2,'[6,3,8]');
/*!40000 ALTER TABLE `xofti_viewlevels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xofti_weblinks`
--

DROP TABLE IF EXISTS `xofti_weblinks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xofti_weblinks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL DEFAULT '0',
  `sid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(250) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `url` varchar(250) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(11) NOT NULL DEFAULT '0',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `archived` tinyint(1) NOT NULL DEFAULT '0',
  `approved` tinyint(1) NOT NULL DEFAULT '1',
  `access` int(11) NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `language` char(7) NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if link is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xofti_weblinks`
--

LOCK TABLES `xofti_weblinks` WRITE;
/*!40000 ALTER TABLE `xofti_weblinks` DISABLE KEYS */;
/*!40000 ALTER TABLE `xofti_weblinks` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-10-23  9:29:24
