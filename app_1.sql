-- MySQL dump 10.13  Distrib 5.7.33, for Linux (x86_64)
--
-- Host: localhost    Database: sharetribe_production
-- ------------------------------------------------------
-- Server version	5.7.33-0ubuntu0.18.04.1

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
-- Table structure for table `active_sessions`
--

DROP TABLE IF EXISTS `active_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `active_sessions` (
  `id` binary(16) NOT NULL,
  `person_id` varchar(22) COLLATE utf8_unicode_ci NOT NULL,
  `community_id` int(11) NOT NULL,
  `refreshed_at` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_active_sessions_on_person_id` (`person_id`),
  KEY `index_active_sessions_on_community_id` (`community_id`),
  KEY `index_active_sessions_on_refreshed_at` (`refreshed_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `active_sessions`
--

LOCK TABLES `active_sessions` WRITE;
/*!40000 ALTER TABLE `active_sessions` DISABLE KEYS */;
INSERT INTO `active_sessions` VALUES (_binary 'ÎÖÑ´[Ü&•\Ë∞6Ä\0t','2rzRC_0EtrSL-95zeDPXUQ',1,'2021-03-15 11:50:42','2021-03-15 11:50:42','2021-03-15 11:50:42'),(_binary '\Îì<nq¨Ñ≠\∆∞6Ä\0t','J_vj4wGUENGTsl5t9eYqaw',1,'2021-04-01 22:48:52','2021-04-01 22:48:52','2021-04-01 22:48:52'),(_binary '\ÎùJ\ﬂ{∂é∫∞6Ä\0t','peTqPPRnB9W-q5FnvE6JiA',1,'2021-04-14 17:57:26','2021-04-14 17:57:26','2021-04-14 17:57:26'),(_binary '\Î£w\–i∞⁄á∞6Ä\0t','J_vj4wGUENGTsl5t9eYqaw',1,'2021-04-22 14:34:15','2021-04-22 14:34:15','2021-04-22 14:34:15'),(_binary '\Î•¿e\·jñîD∞6Ä\0t','J_vj4wGUENGTsl5t9eYqaw',1,'2021-04-25 12:18:52','2021-04-25 12:18:52','2021-04-25 12:18:52'),(_binary '\Î¶n¡\nòäÆ ∞6Ä\0t','ZbiAdyZSEdNbyTvTAmwZeQ',1,'2021-04-26 09:06:58','2021-04-26 09:06:58','2021-04-26 09:06:58'),(_binary 'Î¶Å_H\‰|≠∞6Ä\0t','ZbiAdyZSEdNbyTvTAmwZeQ',1,'2021-04-26 11:20:14','2021-04-26 11:20:14','2021-04-26 11:20:14');
/*!40000 ALTER TABLE `active_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `active_storage_attachments`
--

DROP TABLE IF EXISTS `active_storage_attachments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `active_storage_attachments` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `record_type` varchar(255) NOT NULL,
  `record_id` bigint(20) NOT NULL,
  `blob_id` bigint(20) NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_active_storage_attachments_uniqueness` (`record_type`,`record_id`,`name`,`blob_id`),
  KEY `index_active_storage_attachments_on_blob_id` (`blob_id`),
  CONSTRAINT `fk_rails_c3b3935057` FOREIGN KEY (`blob_id`) REFERENCES `active_storage_blobs` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `active_storage_attachments`
--

LOCK TABLES `active_storage_attachments` WRITE;
/*!40000 ALTER TABLE `active_storage_attachments` DISABLE KEYS */;
/*!40000 ALTER TABLE `active_storage_attachments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `active_storage_blobs`
--

DROP TABLE IF EXISTS `active_storage_blobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `active_storage_blobs` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `key` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `content_type` varchar(255) DEFAULT NULL,
  `metadata` text,
  `byte_size` bigint(20) NOT NULL,
  `checksum` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_active_storage_blobs_on_key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `active_storage_blobs`
--

LOCK TABLES `active_storage_blobs` WRITE;
/*!40000 ALTER TABLE `active_storage_blobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `active_storage_blobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ar_internal_metadata`
--

DROP TABLE IF EXISTS `ar_internal_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ar_internal_metadata` (
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ar_internal_metadata`
--

LOCK TABLES `ar_internal_metadata` WRITE;
/*!40000 ALTER TABLE `ar_internal_metadata` DISABLE KEYS */;
INSERT INTO `ar_internal_metadata` VALUES ('environment','production','2021-03-10 10:00:42','2021-03-10 10:00:42');
/*!40000 ALTER TABLE `ar_internal_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_tokens`
--

DROP TABLE IF EXISTS `auth_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_tokens` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(255) DEFAULT NULL,
  `token_type` varchar(255) DEFAULT 'unsubscribe',
  `person_id` varchar(255) DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  `usages_left` int(11) DEFAULT NULL,
  `last_use_attempt` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_auth_tokens_on_token` (`token`) USING BTREE,
  KEY `index_on_person_id` (`person_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_tokens`
--

LOCK TABLES `auth_tokens` WRITE;
/*!40000 ALTER TABLE `auth_tokens` DISABLE KEYS */;
INSERT INTO `auth_tokens` VALUES (1,'WpMR6wzDvT8','login','J_vj4wGUENGTsl5t9eYqaw','2021-03-11 11:19:19',1,NULL,'2021-03-11 11:09:19','2021-03-11 11:09:19'),(2,'cqTc0-Gi6AI','unsubscribe','J_vj4wGUENGTsl5t9eYqaw','2021-04-12 11:51:12',1,NULL,'2021-03-15 11:51:12','2021-03-15 11:51:12'),(3,'PTV6QLR1DGE','unsubscribe','J_vj4wGUENGTsl5t9eYqaw','2021-04-12 11:51:38',1,NULL,'2021-03-15 11:51:38','2021-03-15 11:51:38'),(4,'Nzk_hRrr2jQ','unsubscribe','QqHfk2xJmsrEgr15rJEtag','2021-04-12 11:51:38',1,NULL,'2021-03-15 11:51:38','2021-03-15 11:51:38'),(5,'E5G1k_sfrAI','unsubscribe','QqHfk2xJmsrEgr15rJEtag','2021-04-12 11:57:24',1,NULL,'2021-03-15 11:57:24','2021-03-15 11:57:24'),(6,'kazokKUK3jU','unsubscribe','J_vj4wGUENGTsl5t9eYqaw','2021-04-12 12:01:52',1,NULL,'2021-03-15 12:01:52','2021-03-15 12:01:52'),(7,'X7Nx_0OxvTA','unsubscribe','ZbiAdyZSEdNbyTvTAmwZeQ','2021-04-12 12:05:32',1,NULL,'2021-03-15 12:05:32','2021-03-15 12:05:32'),(8,'85DBxYjFOiA','unsubscribe','QqHfk2xJmsrEgr15rJEtag','2021-04-28 17:55:26',1,NULL,'2021-03-31 17:55:26','2021-03-31 17:55:26'),(9,'rSv8xhGTdBk','unsubscribe','J_vj4wGUENGTsl5t9eYqaw','2021-04-29 15:42:36',1,NULL,'2021-04-01 15:42:36','2021-04-01 15:42:36'),(10,'Xg7BEuT318M','unsubscribe','ZbiAdyZSEdNbyTvTAmwZeQ','2021-04-29 15:43:02',1,NULL,'2021-04-01 15:43:02','2021-04-01 15:43:02'),(11,'xnTMM6C1prI','unsubscribe','J_vj4wGUENGTsl5t9eYqaw','2021-04-29 16:01:57',1,NULL,'2021-04-01 16:01:57','2021-04-01 16:01:57'),(12,'SYddcpxmuzI','unsubscribe','J_vj4wGUENGTsl5t9eYqaw','2021-04-29 16:01:57',1,NULL,'2021-04-01 16:01:57','2021-04-01 16:01:57'),(13,'yL_z0EVlZhQ','unsubscribe','J_vj4wGUENGTsl5t9eYqaw','2021-04-29 16:02:13',1,NULL,'2021-04-01 16:02:13','2021-04-01 16:02:13'),(14,'0kLtCwhSlzY','unsubscribe','J_vj4wGUENGTsl5t9eYqaw','2021-05-04 11:53:48',1,NULL,'2021-04-06 11:53:48','2021-04-06 11:53:48'),(15,'D37_8TsHG6o','unsubscribe','J_vj4wGUENGTsl5t9eYqaw','2021-05-04 11:54:20',1,NULL,'2021-04-06 11:54:20','2021-04-06 11:54:20'),(16,'c985AmaSUZg','unsubscribe','J_vj4wGUENGTsl5t9eYqaw','2021-05-07 11:53:45',1,NULL,'2021-04-09 11:53:45','2021-04-09 11:53:45'),(17,'hubFDlf35kc','unsubscribe','ZbiAdyZSEdNbyTvTAmwZeQ','2021-05-11 15:06:44',1,NULL,'2021-04-13 15:06:44','2021-04-13 15:06:44');
/*!40000 ALTER TABLE `auth_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `billing_agreements`
--

DROP TABLE IF EXISTS `billing_agreements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `billing_agreements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `paypal_account_id` int(11) NOT NULL,
  `billing_agreement_id` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `paypal_username_to` varchar(255) NOT NULL,
  `request_token` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_billing_agreements_on_paypal_account_id` (`paypal_account_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `billing_agreements`
--

LOCK TABLES `billing_agreements` WRITE;
/*!40000 ALTER TABLE `billing_agreements` DISABLE KEYS */;
/*!40000 ALTER TABLE `billing_agreements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bookings`
--

DROP TABLE IF EXISTS `bookings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bookings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `transaction_id` int(11) DEFAULT NULL,
  `start_on` date DEFAULT NULL,
  `end_on` date DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `per_hour` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `index_bookings_on_transaction_id` (`transaction_id`) USING BTREE,
  KEY `index_bookings_on_per_hour` (`per_hour`),
  KEY `index_bookings_on_start_time` (`start_time`),
  KEY `index_bookings_on_end_time` (`end_time`),
  KEY `index_bookings_on_transaction_start_on_end_on_per_hour` (`transaction_id`,`start_on`,`end_on`,`per_hour`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookings`
--

LOCK TABLES `bookings` WRITE;
/*!40000 ALTER TABLE `bookings` DISABLE KEYS */;
INSERT INTO `bookings` VALUES (1,1,'2021-03-15','2021-03-17','2021-03-15 11:51:35','2021-03-15 11:51:35',NULL,NULL,0);
/*!40000 ALTER TABLE `bookings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `community_id` int(11) DEFAULT NULL,
  `sort_priority` int(11) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_categories_on_community_id` (`community_id`) USING BTREE,
  KEY `index_categories_on_parent_id` (`parent_id`) USING BTREE,
  KEY `index_categories_on_url` (`url`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,NULL,NULL,'2021-03-11 11:09:18','2021-03-11 11:09:18',1,NULL,'default-category');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_custom_fields`
--

DROP TABLE IF EXISTS `category_custom_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category_custom_fields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) DEFAULT NULL,
  `custom_field_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_category_custom_fields_on_category_id_and_custom_field_id` (`category_id`,`custom_field_id`) USING BTREE,
  KEY `index_category_custom_fields_on_custom_field_id` (`custom_field_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_custom_fields`
--

LOCK TABLES `category_custom_fields` WRITE;
/*!40000 ALTER TABLE `category_custom_fields` DISABLE KEYS */;
INSERT INTO `category_custom_fields` VALUES (5,1,1,'2021-03-14 16:24:00','2021-03-14 16:24:00'),(6,1,3,'2021-03-14 16:27:01','2021-03-14 16:27:01'),(7,1,2,'2021-03-14 16:27:11','2021-03-14 16:27:11'),(8,1,4,'2021-04-19 19:05:16','2021-04-19 19:05:16');
/*!40000 ALTER TABLE `category_custom_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_listing_shapes`
--

DROP TABLE IF EXISTS `category_listing_shapes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category_listing_shapes` (
  `category_id` int(11) NOT NULL,
  `listing_shape_id` int(11) NOT NULL,
  UNIQUE KEY `unique_listing_shape_category_joins` (`listing_shape_id`,`category_id`) USING BTREE,
  KEY `index_category_listing_shapes_on_category_id` (`category_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_listing_shapes`
--

LOCK TABLES `category_listing_shapes` WRITE;
/*!40000 ALTER TABLE `category_listing_shapes` DISABLE KEYS */;
INSERT INTO `category_listing_shapes` VALUES (1,2);
/*!40000 ALTER TABLE `category_listing_shapes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_translations`
--

DROP TABLE IF EXISTS `category_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category_translations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `category_id_with_locale` (`category_id`,`locale`) USING BTREE,
  KEY `index_category_translations_on_category_id` (`category_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_translations`
--

LOCK TABLES `category_translations` WRITE;
/*!40000 ALTER TABLE `category_translations` DISABLE KEYS */;
INSERT INTO `category_translations` VALUES (1,1,'en','Default category','2021-03-11 11:09:18','2021-03-11 11:09:18',NULL);
/*!40000 ALTER TABLE `category_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `checkout_accounts`
--

DROP TABLE IF EXISTS `checkout_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `checkout_accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id_or_personal_id` varchar(255) DEFAULT NULL,
  `merchant_id` varchar(255) NOT NULL,
  `merchant_key` varchar(255) NOT NULL,
  `person_id` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `checkout_accounts`
--

LOCK TABLES `checkout_accounts` WRITE;
/*!40000 ALTER TABLE `checkout_accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `checkout_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `author_id` varchar(255) DEFAULT NULL,
  `listing_id` int(11) DEFAULT NULL,
  `content` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `community_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_comments_on_listing_id` (`listing_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `communities`
--

DROP TABLE IF EXISTS `communities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `communities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uuid` binary(16) NOT NULL,
  `ident` varchar(255) DEFAULT NULL,
  `domain` varchar(255) DEFAULT NULL,
  `use_domain` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `settings` text,
  `consent` varchar(255) DEFAULT NULL,
  `transaction_agreement_in_use` tinyint(1) DEFAULT '0',
  `email_admins_about_new_members` tinyint(1) DEFAULT '0',
  `use_fb_like` tinyint(1) DEFAULT '0',
  `real_name_required` tinyint(1) DEFAULT '1',
  `automatic_newsletters` tinyint(1) DEFAULT '1',
  `join_with_invite_only` tinyint(1) DEFAULT '0',
  `allowed_emails` mediumtext,
  `users_can_invite_new_users` tinyint(1) DEFAULT '1',
  `private` tinyint(1) DEFAULT '0',
  `label` varchar(255) DEFAULT NULL,
  `show_date_in_listings_list` tinyint(1) DEFAULT '0',
  `all_users_can_add_news` tinyint(1) DEFAULT '1',
  `custom_frontpage_sidebar` tinyint(1) DEFAULT '0',
  `event_feed_enabled` tinyint(1) DEFAULT '1',
  `slogan` varchar(255) DEFAULT NULL,
  `description` text,
  `country` varchar(255) DEFAULT NULL,
  `members_count` int(11) DEFAULT '0',
  `user_limit` int(11) DEFAULT NULL,
  `monthly_price_in_euros` float DEFAULT NULL,
  `logo_file_name` varchar(255) DEFAULT NULL,
  `logo_content_type` varchar(255) DEFAULT NULL,
  `logo_file_size` int(11) DEFAULT NULL,
  `logo_updated_at` datetime DEFAULT NULL,
  `cover_photo_file_name` varchar(255) DEFAULT NULL,
  `cover_photo_content_type` varchar(255) DEFAULT NULL,
  `cover_photo_file_size` int(11) DEFAULT NULL,
  `cover_photo_updated_at` datetime DEFAULT NULL,
  `small_cover_photo_file_name` varchar(255) DEFAULT NULL,
  `small_cover_photo_content_type` varchar(255) DEFAULT NULL,
  `small_cover_photo_file_size` int(11) DEFAULT NULL,
  `small_cover_photo_updated_at` datetime DEFAULT NULL,
  `custom_color1` varchar(255) DEFAULT NULL,
  `custom_color2` varchar(255) DEFAULT NULL,
  `slogan_color` varchar(6) DEFAULT NULL,
  `description_color` varchar(6) DEFAULT NULL,
  `stylesheet_url` varchar(255) DEFAULT NULL,
  `stylesheet_needs_recompile` tinyint(1) DEFAULT '0',
  `service_logo_style` varchar(255) DEFAULT 'full-logo',
  `currency` varchar(3) NOT NULL,
  `facebook_connect_enabled` tinyint(1) DEFAULT '1',
  `minimum_price_cents` int(11) DEFAULT NULL,
  `hide_expiration_date` tinyint(1) DEFAULT '1',
  `facebook_connect_id` varchar(255) DEFAULT NULL,
  `facebook_connect_secret` varchar(255) DEFAULT NULL,
  `google_analytics_key` varchar(255) DEFAULT NULL,
  `google_maps_key` varchar(64) DEFAULT NULL,
  `name_display_type` varchar(255) DEFAULT 'first_name_with_initial',
  `twitter_handle` varchar(255) DEFAULT NULL,
  `use_community_location_as_default` tinyint(1) DEFAULT '0',
  `preproduction_stylesheet_url` varchar(255) DEFAULT NULL,
  `show_category_in_listing_list` tinyint(1) DEFAULT '0',
  `default_browse_view` varchar(255) DEFAULT 'grid',
  `wide_logo_file_name` varchar(255) DEFAULT NULL,
  `wide_logo_content_type` varchar(255) DEFAULT NULL,
  `wide_logo_file_size` int(11) DEFAULT NULL,
  `wide_logo_updated_at` datetime DEFAULT NULL,
  `listing_comments_in_use` tinyint(1) DEFAULT '0',
  `show_listing_publishing_date` tinyint(1) DEFAULT '0',
  `require_verification_to_post_listings` tinyint(1) DEFAULT '0',
  `show_price_filter` tinyint(1) DEFAULT '0',
  `price_filter_min` int(11) DEFAULT '0',
  `price_filter_max` int(11) DEFAULT '100000',
  `automatic_confirmation_after_days` int(11) DEFAULT '14',
  `favicon_file_name` varchar(255) DEFAULT NULL,
  `favicon_content_type` varchar(255) DEFAULT NULL,
  `favicon_file_size` int(11) DEFAULT NULL,
  `favicon_updated_at` datetime DEFAULT NULL,
  `default_min_days_between_community_updates` int(11) DEFAULT '7',
  `listing_location_required` tinyint(1) DEFAULT '0',
  `custom_head_script` text,
  `follow_in_use` tinyint(1) NOT NULL DEFAULT '1',
  `logo_processing` tinyint(1) DEFAULT NULL,
  `wide_logo_processing` tinyint(1) DEFAULT NULL,
  `cover_photo_processing` tinyint(1) DEFAULT NULL,
  `small_cover_photo_processing` tinyint(1) DEFAULT NULL,
  `favicon_processing` tinyint(1) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `end_user_analytics` tinyint(1) DEFAULT '1',
  `show_slogan` tinyint(1) DEFAULT '1',
  `show_description` tinyint(1) DEFAULT '1',
  `hsts_max_age` int(11) DEFAULT NULL,
  `footer_theme` int(11) DEFAULT '0',
  `footer_copyright` text,
  `footer_enabled` tinyint(1) DEFAULT '0',
  `logo_link` varchar(255) DEFAULT NULL,
  `google_connect_enabled` tinyint(1) DEFAULT NULL,
  `google_connect_id` varchar(255) DEFAULT NULL,
  `google_connect_secret` varchar(255) DEFAULT NULL,
  `linkedin_connect_enabled` tinyint(1) DEFAULT NULL,
  `linkedin_connect_id` varchar(255) DEFAULT NULL,
  `linkedin_connect_secret` varchar(255) DEFAULT NULL,
  `pre_approved_listings` tinyint(1) DEFAULT '0',
  `allow_free_conversations` tinyint(1) DEFAULT '1',
  `email_admins_about_new_transactions` tinyint(1) DEFAULT '0',
  `show_location` tinyint(1) DEFAULT '1',
  `fuzzy_location` tinyint(1) DEFAULT '0',
  `recaptcha_site_key` varchar(255) DEFAULT NULL,
  `recaptcha_secret_key` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_communities_on_uuid` (`uuid`),
  KEY `index_communities_on_domain` (`domain`) USING BTREE,
  KEY `index_communities_on_ident` (`ident`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `communities`
--

LOCK TABLES `communities` WRITE;
/*!40000 ALTER TABLE `communities` DISABLE KEYS */;
INSERT INTO `communities` VALUES (1,_binary '\ÎÇZ9väà§µ∞6Ä\0t','allotme','app.allotme.co.uk',1,'2021-03-11 11:09:18','2021-04-14 11:46:31','---\nlocales:\n- en\n','SHARETRIBE1.0',0,0,0,1,1,0,NULL,1,0,NULL,0,1,0,1,NULL,NULL,'GB',8,NULL,NULL,'small_sq_logo.jpg','image/jpeg',29022,'2021-03-14 16:43:04','large_cover_image_photo_laptop2-min.jpg','image/jpeg',568032,'2021-03-16 15:17:50','small_cover_image(white).jpg','image/jpeg',664110,'2021-03-14 16:09:46','96c445',NULL,'8a8888','96c445',NULL,0,'full-logo','GBP',0,NULL,1,'841521186405387','93b05a9760acc08b84f6a3bb65aa74e5',NULL,NULL,'first_name_with_initial','AllotMe_UK',0,NULL,0,'map','logo__text_3.0_marketplace_test.jpg','image/jpeg',607029,'2021-03-11 13:06:10',0,0,0,1,500,15000,14,'New_Favicon_Icon.png','image/png',11270,'2021-03-11 12:54:14',7,1,NULL,1,0,0,0,0,0,NULL,1,0,0,NULL,1,'¬© 2018  AllotMe Ltd. ',1,'https://www.allotme.co.uk/',0,'206046470050-13nsk95j4517jv43nl27vrag14qa9tck.apps.googleusercontent.com','jebwpDle3eXwzpHZeA5svHZt',0,NULL,NULL,0,1,1,1,0,NULL,NULL);
/*!40000 ALTER TABLE `communities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `community_customizations`
--

DROP TABLE IF EXISTS `community_customizations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `community_customizations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `community_id` int(11) DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slogan` varchar(255) DEFAULT NULL,
  `description` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `blank_slate` text,
  `welcome_email_content` text,
  `how_to_use_page_content` mediumtext,
  `about_page_content` mediumtext,
  `terms_page_content` mediumtext,
  `privacy_page_content` mediumtext,
  `signup_info_content` text,
  `private_community_homepage_content` mediumtext,
  `verification_to_post_listings_info_content` mediumtext,
  `search_placeholder` varchar(255) DEFAULT NULL,
  `transaction_agreement_label` varchar(255) DEFAULT NULL,
  `transaction_agreement_content` mediumtext,
  `social_media_title` varchar(255) DEFAULT NULL,
  `social_media_description` text,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` text,
  `search_meta_title` varchar(255) DEFAULT NULL,
  `search_meta_description` text,
  `listing_meta_title` varchar(255) DEFAULT NULL,
  `listing_meta_description` text,
  `category_meta_title` varchar(255) DEFAULT NULL,
  `category_meta_description` text,
  `profile_meta_title` varchar(255) DEFAULT NULL,
  `profile_meta_description` text,
  PRIMARY KEY (`id`),
  KEY `index_community_customizations_on_community_id` (`community_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `community_customizations`
--

LOCK TABLES `community_customizations` WRITE;
/*!40000 ALTER TABLE `community_customizations` DISABLE KEYS */;
INSERT INTO `community_customizations` VALUES (1,1,'en','AllotMe','Helping the city to Grow','The home of Urban Agriculture. Rent out your garden to become a Host to local Greenfinger, or find a plot near you to start your own vegetable plot.','2021-03-11 11:09:18','2021-04-01 17:02:25',NULL,'<p>\nWelcome to AllotMe.&nbsp;We\'re excited for you to be a part of the food growing revolution!</p><p><span style=\"font-size: 1rem;\">Best,</span><br></p><p><i>AllotMe team</i></p><p><i><font color=\"#999999\"></font><a href=\"app.allotme.co.uk\" target=\"_blank\"><font color=\"#999999\">Back to the site</font></a></i></p>','<h1>How it works</h1><div>Here you can find information about how AllotMe works.</div>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `community_customizations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `community_memberships`
--

DROP TABLE IF EXISTS `community_memberships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `community_memberships` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `person_id` varchar(255) NOT NULL,
  `community_id` int(11) NOT NULL,
  `admin` tinyint(1) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `consent` varchar(255) DEFAULT NULL,
  `invitation_id` int(11) DEFAULT NULL,
  `last_page_load_date` datetime DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'accepted',
  `can_post_listings` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_community_memberships_on_person_id` (`person_id`) USING BTREE,
  KEY `index_community_memberships_on_community_id` (`community_id`) USING BTREE,
  KEY `community_person_status` (`community_id`,`person_id`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `community_memberships`
--

LOCK TABLES `community_memberships` WRITE;
/*!40000 ALTER TABLE `community_memberships` DISABLE KEYS */;
INSERT INTO `community_memberships` VALUES (1,'J_vj4wGUENGTsl5t9eYqaw',1,1,'2021-03-11 11:09:19','2021-03-11 12:51:16','SHARETRIBE1.0',NULL,'2021-03-11 11:09:19','accepted',0),(2,'QqHfk2xJmsrEgr15rJEtag',1,0,'2021-03-11 12:06:47','2021-03-11 12:07:08','SHARETRIBE1.0',NULL,'2021-03-11 12:06:47','accepted',0),(3,'2rzRC_0EtrSL-95zeDPXUQ',1,0,'2021-03-15 11:50:42','2021-03-15 11:51:04','SHARETRIBE1.0',NULL,'2021-03-15 11:50:42','accepted',0),(4,'ZbiAdyZSEdNbyTvTAmwZeQ',1,0,'2021-03-15 11:59:30','2021-03-15 12:01:25','SHARETRIBE1.0',NULL,'2021-03-15 11:59:30','accepted',0),(5,'sbsCuLs1tNTd39ZS4wj8oA',1,0,'2021-04-07 13:46:30','2021-04-07 13:46:30','SHARETRIBE1.0',NULL,'2021-04-07 13:46:30','pending_email_confirmation',0),(6,'ZYz_0fcKaEOo-jvYDBdvzg',1,0,'2021-04-07 14:54:03','2021-04-07 14:54:03','SHARETRIBE1.0',NULL,'2021-04-07 14:54:03','pending_email_confirmation',0),(7,'Nr-eWZ9Hp6hGnGe5wwEPVA',1,0,'2021-04-08 06:57:02','2021-04-09 06:04:50','SHARETRIBE1.0',NULL,'2021-04-08 06:57:02','accepted',0),(8,'peTqPPRnB9W-q5FnvE6JiA',1,0,'2021-04-14 17:57:26','2021-04-14 17:57:42','SHARETRIBE1.0',NULL,'2021-04-14 17:57:26','accepted',0);
/*!40000 ALTER TABLE `community_memberships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `community_social_logos`
--

DROP TABLE IF EXISTS `community_social_logos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `community_social_logos` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `community_id` bigint(20) DEFAULT NULL,
  `image_file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_file_size` int(11) DEFAULT NULL,
  `image_updated_at` datetime DEFAULT NULL,
  `image_processing` tinyint(1) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_community_social_logos_on_community_id` (`community_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `community_social_logos`
--

LOCK TABLES `community_social_logos` WRITE;
/*!40000 ALTER TABLE `community_social_logos` DISABLE KEYS */;
/*!40000 ALTER TABLE `community_social_logos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `community_translations`
--

DROP TABLE IF EXISTS `community_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `community_translations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `community_id` int(11) NOT NULL,
  `locale` varchar(16) NOT NULL,
  `translation_key` varchar(255) NOT NULL,
  `translation` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_community_translations_on_community_id` (`community_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `community_translations`
--

LOCK TABLES `community_translations` WRITE;
/*!40000 ALTER TABLE `community_translations` DISABLE KEYS */;
INSERT INTO `community_translations` VALUES (1,1,'en','2260fffd-ec84-4d31-9181-fd5d25c31bd5','Renting out without online payment','2021-03-11 11:09:18','2021-03-11 11:09:18'),(2,1,'en','9407f5d6-d991-41e5-b807-c7415c15aec1','Rent','2021-03-11 11:09:18','2021-03-11 11:09:18'),(3,1,'en','2724e034-80a4-4e2e-be80-2dc9574a7cab','Renting out with online payment','2021-03-11 11:09:19','2021-03-11 11:09:19'),(4,1,'en','3e41c184-d61a-4897-bb37-b546454e13d8','Rent','2021-03-11 11:09:19','2021-03-11 11:09:19'),(5,1,'en','homepage.index.post_new_listing','list your own space','2021-03-11 12:58:32','2021-03-11 12:58:32');
/*!40000 ALTER TABLE `community_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_requests`
--

DROP TABLE IF EXISTS `contact_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact_requests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `plan_type` varchar(255) DEFAULT NULL,
  `marketplace_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_requests`
--

LOCK TABLES `contact_requests` WRITE;
/*!40000 ALTER TABLE `contact_requests` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conversations`
--

DROP TABLE IF EXISTS `conversations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `conversations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `listing_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `last_message_at` datetime DEFAULT NULL,
  `community_id` int(11) DEFAULT NULL,
  `starting_page` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_conversations_on_community_id` (`community_id`) USING BTREE,
  KEY `index_conversations_on_last_message_at` (`last_message_at`) USING BTREE,
  KEY `index_conversations_on_listing_id` (`listing_id`) USING BTREE,
  KEY `index_conversations_on_starting_page` (`starting_page`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conversations`
--

LOCK TABLES `conversations` WRITE;
/*!40000 ALTER TABLE `conversations` DISABLE KEYS */;
INSERT INTO `conversations` VALUES (1,NULL,1,'2021-03-15 11:51:35','2021-03-15 11:57:19','2021-03-15 11:57:19',1,'payment'),(2,NULL,2,'2021-03-15 12:01:50','2021-03-15 12:05:30','2021-03-15 12:05:29',1,'listing'),(3,NULL,6,'2021-04-01 15:42:32','2021-04-01 15:43:01','2021-04-01 15:43:01',1,'listing'),(4,NULL,6,'2021-04-01 16:01:50','2021-04-01 16:02:11','2021-04-01 16:02:11',1,NULL);
/*!40000 ALTER TABLE `conversations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_field_names`
--

DROP TABLE IF EXISTS `custom_field_names`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_field_names` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(255) DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  `custom_field_id` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `locale_index` (`custom_field_id`,`locale`) USING BTREE,
  KEY `index_custom_field_names_on_custom_field_id` (`custom_field_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_field_names`
--

LOCK TABLES `custom_field_names` WRITE;
/*!40000 ALTER TABLE `custom_field_names` DISABLE KEYS */;
INSERT INTO `custom_field_names` VALUES (1,'Facilities','en','1','2021-03-11 13:18:07','2021-03-14 16:24:00'),(2,'How it\'s accessed','en','2','2021-03-14 16:19:13','2021-03-14 16:19:13'),(3,'Type of Space','en','3','2021-03-14 16:27:01','2021-03-14 16:27:01'),(4,'Promo Code','en','4','2021-04-19 19:05:16','2021-04-19 19:05:16');
/*!40000 ALTER TABLE `custom_field_names` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_field_option_selections`
--

DROP TABLE IF EXISTS `custom_field_option_selections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_field_option_selections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `custom_field_value_id` int(11) DEFAULT NULL,
  `custom_field_option_id` int(11) DEFAULT NULL,
  `listing_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_custom_field_option_selections_on_custom_field_option_id` (`custom_field_option_id`) USING BTREE,
  KEY `index_selected_options_on_custom_field_value_id` (`custom_field_value_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_field_option_selections`
--

LOCK TABLES `custom_field_option_selections` WRITE;
/*!40000 ALTER TABLE `custom_field_option_selections` DISABLE KEYS */;
INSERT INTO `custom_field_option_selections` VALUES (1,1,1,2,'2021-03-15 11:51:09','2021-03-15 11:51:09'),(2,1,2,2,'2021-03-15 11:51:09','2021-03-15 11:51:09'),(3,1,3,2,'2021-03-15 11:51:09','2021-03-15 11:51:09'),(4,1,4,2,'2021-03-15 11:51:09','2021-03-15 11:51:09'),(5,1,5,2,'2021-03-15 11:51:09','2021-03-15 11:51:09'),(6,2,13,2,'2021-03-15 11:51:09','2021-03-15 11:51:09'),(7,3,8,2,'2021-03-15 11:51:09','2021-03-15 11:51:09'),(8,4,1,3,'2021-03-31 17:46:43','2021-03-31 17:46:43'),(9,4,3,3,'2021-03-31 17:46:43','2021-03-31 17:46:43'),(10,4,4,3,'2021-03-31 17:46:43','2021-03-31 17:46:43'),(11,4,7,3,'2021-03-31 17:46:43','2021-03-31 17:46:43'),(12,5,13,3,'2021-03-31 17:46:43','2021-03-31 17:46:43'),(13,6,8,3,'2021-03-31 17:46:43','2021-03-31 17:46:43'),(14,7,1,4,'2021-03-31 17:54:53','2021-03-31 17:54:53'),(15,7,2,4,'2021-03-31 17:54:53','2021-03-31 17:54:53'),(16,7,3,4,'2021-03-31 17:54:53','2021-03-31 17:54:53'),(17,8,13,4,'2021-03-31 17:54:53','2021-03-31 17:54:53'),(18,9,8,4,'2021-03-31 17:54:53','2021-03-31 17:54:53'),(19,10,3,5,'2021-03-31 17:55:24','2021-03-31 17:55:24'),(20,10,4,5,'2021-03-31 17:55:24','2021-03-31 17:55:24'),(21,11,12,5,'2021-03-31 17:55:24','2021-03-31 17:55:24'),(22,12,8,5,'2021-03-31 17:55:24','2021-03-31 17:55:24'),(23,13,1,6,'2021-04-01 15:41:35','2021-04-01 15:41:35'),(24,13,6,6,'2021-04-01 15:41:35','2021-04-01 15:41:35'),(25,13,7,6,'2021-04-01 15:41:35','2021-04-01 15:41:35'),(26,14,13,6,'2021-04-01 15:41:35','2021-04-01 15:41:35'),(27,15,8,6,'2021-04-01 15:41:35','2021-04-01 15:41:35');
/*!40000 ALTER TABLE `custom_field_option_selections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_field_option_titles`
--

DROP TABLE IF EXISTS `custom_field_option_titles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_field_option_titles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(255) DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  `custom_field_option_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `locale_index` (`custom_field_option_id`,`locale`) USING BTREE,
  KEY `index_custom_field_option_titles_on_custom_field_option_id` (`custom_field_option_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_field_option_titles`
--

LOCK TABLES `custom_field_option_titles` WRITE;
/*!40000 ALTER TABLE `custom_field_option_titles` DISABLE KEYS */;
INSERT INTO `custom_field_option_titles` VALUES (1,'Hose / Water Source','en',1,'2021-03-11 13:18:07','2021-03-11 13:18:07'),(2,'Shed / Storage','en',2,'2021-03-11 13:18:07','2021-03-11 13:18:07'),(3,'Watering Can','en',3,'2021-03-11 13:18:07','2021-03-11 13:18:07'),(4,'Shovel','en',4,'2021-03-11 13:18:07','2021-03-11 13:18:07'),(5,'Rake','en',5,'2021-03-11 13:18:07','2021-03-11 13:18:07'),(6,'Weeding Hoe','en',6,'2021-03-11 13:18:07','2021-03-11 13:18:07'),(7,'Trowel','en',7,'2021-03-11 13:18:07','2021-03-11 13:18:07'),(8,'Private gate','en',8,'2021-03-14 16:19:13','2021-03-14 16:19:13'),(9,'Street access (front gardens)','en',9,'2021-03-14 16:19:13','2021-03-14 16:19:13'),(10,'Host will be present','en',10,'2021-03-14 16:19:13','2021-03-14 16:19:13'),(11,'Lockbox','en',11,'2021-03-14 16:19:13','2021-03-14 16:19:13'),(12,'Front Garden','en',12,'2021-03-14 16:27:01','2021-03-14 16:27:01'),(13,'Back Garden','en',13,'2021-03-14 16:27:01','2021-03-14 16:27:01'),(14,'Commercial Space','en',14,'2021-03-14 16:27:01','2021-03-14 16:27:01'),(15,'Other','en',15,'2021-03-14 16:27:01','2021-03-14 16:27:01');
/*!40000 ALTER TABLE `custom_field_option_titles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_field_options`
--

DROP TABLE IF EXISTS `custom_field_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_field_options` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `custom_field_id` int(11) DEFAULT NULL,
  `sort_priority` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_custom_field_options_on_custom_field_id` (`custom_field_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_field_options`
--

LOCK TABLES `custom_field_options` WRITE;
/*!40000 ALTER TABLE `custom_field_options` DISABLE KEYS */;
INSERT INTO `custom_field_options` VALUES (1,1,0,'2021-03-11 13:18:07','2021-03-11 13:18:07'),(2,1,1,'2021-03-11 13:18:07','2021-03-11 13:18:07'),(3,1,2,'2021-03-11 13:18:07','2021-03-11 13:18:07'),(4,1,3,'2021-03-11 13:18:07','2021-03-11 13:18:07'),(5,1,4,'2021-03-11 13:18:07','2021-03-11 13:18:07'),(6,1,5,'2021-03-11 13:18:07','2021-03-11 13:18:07'),(7,1,6,'2021-03-11 13:18:07','2021-03-11 13:18:07'),(8,2,0,'2021-03-14 16:19:13','2021-03-14 16:19:13'),(9,2,1,'2021-03-14 16:19:13','2021-03-14 16:19:13'),(10,2,2,'2021-03-14 16:19:13','2021-03-14 16:19:13'),(11,2,3,'2021-03-14 16:19:13','2021-03-14 16:19:13'),(12,3,0,'2021-03-14 16:27:01','2021-03-14 16:27:01'),(13,3,1,'2021-03-14 16:27:01','2021-03-14 16:27:01'),(14,3,2,'2021-03-14 16:27:01','2021-03-14 16:27:01'),(15,3,3,'2021-03-14 16:27:01','2021-03-14 16:27:01');
/*!40000 ALTER TABLE `custom_field_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_field_values`
--

DROP TABLE IF EXISTS `custom_field_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_field_values` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `custom_field_id` int(11) DEFAULT NULL,
  `listing_id` int(11) DEFAULT NULL,
  `text_value` text,
  `numeric_value` float DEFAULT NULL,
  `date_value` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `delta` tinyint(1) NOT NULL DEFAULT '1',
  `person_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_custom_field_values_on_listing_id` (`listing_id`) USING BTREE,
  KEY `index_custom_field_values_on_type` (`type`) USING BTREE,
  KEY `index_custom_field_values_on_person_id` (`person_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_field_values`
--

LOCK TABLES `custom_field_values` WRITE;
/*!40000 ALTER TABLE `custom_field_values` DISABLE KEYS */;
INSERT INTO `custom_field_values` VALUES (1,1,2,NULL,NULL,NULL,'2021-03-15 11:51:09','2021-03-15 11:51:09','CheckboxFieldValue',0,NULL),(2,3,2,NULL,NULL,NULL,'2021-03-15 11:51:09','2021-03-15 11:51:09','DropdownFieldValue',0,NULL),(3,2,2,NULL,NULL,NULL,'2021-03-15 11:51:09','2021-03-15 11:51:09','DropdownFieldValue',0,NULL),(4,1,3,NULL,NULL,NULL,'2021-03-31 17:46:43','2021-03-31 17:46:43','CheckboxFieldValue',0,NULL),(5,3,3,NULL,NULL,NULL,'2021-03-31 17:46:43','2021-03-31 17:46:43','DropdownFieldValue',0,NULL),(6,2,3,NULL,NULL,NULL,'2021-03-31 17:46:43','2021-03-31 17:46:43','DropdownFieldValue',0,NULL),(7,1,4,NULL,NULL,NULL,'2021-03-31 17:54:53','2021-03-31 17:54:53','CheckboxFieldValue',0,NULL),(8,3,4,NULL,NULL,NULL,'2021-03-31 17:54:53','2021-03-31 17:54:53','DropdownFieldValue',0,NULL),(9,2,4,NULL,NULL,NULL,'2021-03-31 17:54:53','2021-03-31 17:54:53','DropdownFieldValue',0,NULL),(10,1,5,NULL,NULL,NULL,'2021-03-31 17:55:24','2021-03-31 17:55:24','CheckboxFieldValue',0,NULL),(11,3,5,NULL,NULL,NULL,'2021-03-31 17:55:24','2021-03-31 17:55:24','DropdownFieldValue',0,NULL),(12,2,5,NULL,NULL,NULL,'2021-03-31 17:55:24','2021-03-31 17:55:24','DropdownFieldValue',0,NULL),(13,1,6,NULL,NULL,NULL,'2021-04-01 15:41:35','2021-04-01 15:41:35','CheckboxFieldValue',0,NULL),(14,3,6,NULL,NULL,NULL,'2021-04-01 15:41:35','2021-04-01 15:41:35','DropdownFieldValue',0,NULL),(15,2,6,NULL,NULL,NULL,'2021-04-01 15:41:35','2021-04-01 15:41:35','DropdownFieldValue',0,NULL);
/*!40000 ALTER TABLE `custom_field_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_fields`
--

DROP TABLE IF EXISTS `custom_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_fields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  `sort_priority` int(11) DEFAULT NULL,
  `search_filter` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `community_id` int(11) DEFAULT NULL,
  `required` tinyint(1) DEFAULT '1',
  `min` float DEFAULT NULL,
  `max` float DEFAULT NULL,
  `allow_decimals` tinyint(1) DEFAULT '0',
  `entity_type` int(11) DEFAULT '0',
  `public` tinyint(1) DEFAULT '0',
  `assignment` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `index_custom_fields_on_community_id` (`community_id`) USING BTREE,
  KEY `index_custom_fields_on_search_filter` (`search_filter`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_fields`
--

LOCK TABLES `custom_fields` WRITE;
/*!40000 ALTER TABLE `custom_fields` DISABLE KEYS */;
INSERT INTO `custom_fields` VALUES (1,'CheckboxField',0,1,'2021-03-11 13:18:07','2021-03-14 16:27:06',1,1,NULL,NULL,0,0,0,0),(2,'DropdownField',2,0,'2021-03-14 16:19:13','2021-03-14 16:27:11',1,1,NULL,NULL,0,0,0,0),(3,'DropdownField',1,1,'2021-03-14 16:27:01','2021-03-14 16:27:06',1,1,NULL,NULL,0,0,0,0),(4,'TextField',3,0,'2021-04-19 19:05:16','2021-04-19 19:05:27',1,0,NULL,NULL,0,0,0,0);
/*!40000 ALTER TABLE `custom_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delayed_jobs`
--

DROP TABLE IF EXISTS `delayed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delayed_jobs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `priority` int(11) DEFAULT '0',
  `attempts` int(11) DEFAULT '0',
  `handler` text,
  `last_error` text,
  `run_at` datetime DEFAULT NULL,
  `locked_at` datetime DEFAULT NULL,
  `failed_at` datetime DEFAULT NULL,
  `locked_by` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `queue` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_delayed_jobs_on_attempts_and_run_at_and_priority` (`attempts`,`run_at`,`priority`) USING BTREE,
  KEY `index_delayed_jobs_on_locked_created` (`locked_at`,`created_at`) USING BTREE,
  KEY `delayed_jobs_priority` (`priority`,`run_at`) USING BTREE,
  KEY `delayed_jobs_pending_polling` (`failed_at`,`priority`,`run_at`,`queue`,`locked_at`,`locked_by`)
) ENGINE=InnoDB AUTO_INCREMENT=140 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delayed_jobs`
--

LOCK TABLES `delayed_jobs` WRITE;
/*!40000 ALTER TABLE `delayed_jobs` DISABLE KEYS */;
INSERT INTO `delayed_jobs` VALUES (123,2,3,'--- !ruby/struct:EmailConfirmationJob\nemail_id: 5\ncommunity_id: 1\n','undefined local variable or method `community_name\' for #<#<Class:0x000055965ddca8e0>:0x0000559662be85b8>\nDid you mean?  community\n/home/ubuntu/var/www/marketplace/releases/20210407140026/app/views/layouts/email.html.haml:19:in `_app_views_layouts_email_html_haml___3551636339307992427_47052154112000\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/actionview-5.2.4.4/lib/action_view/template.rb:159:in `block in render\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/activesupport-5.2.4.4/lib/active_support/notifications.rb:168:in `block in instrument\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/activesupport-5.2.4.4/lib/active_support/notifications/instrumenter.rb:23:in `instrument\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/activesupport-5.2.4.4/lib/active_support/notifications.rb:168:in `instrument\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/actionview-5.2.4.4/lib/action_view/template.rb:354:in `instrument_render_template\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/actionview-5.2.4.4/lib/action_view/template.rb:157:in `render\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/actionview-5.2.4.4/lib/action_view/renderer/template_renderer.rb:66:in `render_with_layout\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/actionview-5.2.4.4/lib/action_view/renderer/template_renderer.rb:52:in `render_template\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/actionview-5.2.4.4/lib/action_view/renderer/template_renderer.rb:16:in `render\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/actionview-5.2.4.4/lib/action_view/renderer/renderer.rb:44:in `render_template\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/actionview-5.2.4.4/lib/action_view/renderer/renderer.rb:25:in `render\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/actionview-5.2.4.4/lib/action_view/rendering.rb:103:in `_render_template\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/actionview-5.2.4.4/lib/action_view/rendering.rb:84:in `render_to_body\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/actionpack-5.2.4.4/lib/abstract_controller/rendering.rb:25:in `render\'\n/home/ubuntu/var/www/marketplace/releases/20210407140026/app/mailers/person_mailer.rb:365:in `block (3 levels) in email_confirmation\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/actionmailer-5.2.4.4/lib/action_mailer/collector.rb:28:in `custom\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/actionpack-5.2.4.4/lib/abstract_controller/collector.rb:11:in `html\'\n/home/ubuntu/var/www/marketplace/releases/20210407140026/app/mailers/person_mailer.rb:365:in `block (2 levels) in email_confirmation\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/actionmailer-5.2.4.4/lib/action_mailer/base.rb:920:in `collect_responses\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/actionmailer-5.2.4.4/lib/action_mailer/base.rb:828:in `mail\'\n/home/ubuntu/var/www/marketplace/releases/20210407140026/app/mailers/person_mailer.rb:361:in `block in email_confirmation\'\n/home/ubuntu/var/www/marketplace/releases/20210407140026/app/utils/mail_utils.rb:23:in `block (2 levels) in with_locale\'\n/home/ubuntu/var/www/marketplace/releases/20210407140026/app/utils/mail_utils.rb:70:in `set_community\'\n/home/ubuntu/var/www/marketplace/releases/20210407140026/app/utils/mail_utils.rb:22:in `block in with_locale\'\n/home/ubuntu/var/www/marketplace/releases/20210407140026/app/utils/mail_utils.rb:50:in `set_locale\'\n/home/ubuntu/var/www/marketplace/releases/20210407140026/app/utils/mail_utils.rb:21:in `with_locale\'\n/home/ubuntu/var/www/marketplace/releases/20210407140026/app/mailers/person_mailer.rb:359:in `email_confirmation\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/actionpack-5.2.4.4/lib/abstract_controller/base.rb:194:in `process_action\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/actionpack-5.2.4.4/lib/abstract_controller/callbacks.rb:42:in `block in process_action\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/activesupport-5.2.4.4/lib/active_support/callbacks.rb:98:in `run_callbacks\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/actionpack-5.2.4.4/lib/abstract_controller/callbacks.rb:41:in `process_action\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/actionpack-5.2.4.4/lib/abstract_controller/base.rb:134:in `process\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/actionmailer-5.2.4.4/lib/action_mailer/rescuable.rb:25:in `block in process\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/actionmailer-5.2.4.4/lib/action_mailer/rescuable.rb:17:in `handle_exceptions\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/actionmailer-5.2.4.4/lib/action_mailer/rescuable.rb:24:in `process\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/actionview-5.2.4.4/lib/action_view/rendering.rb:32:in `process\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/actionmailer-5.2.4.4/lib/action_mailer/base.rb:607:in `block in process\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/activesupport-5.2.4.4/lib/active_support/notifications.rb:168:in `block in instrument\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/activesupport-5.2.4.4/lib/active_support/notifications/instrumenter.rb:23:in `instrument\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/activesupport-5.2.4.4/lib/active_support/notifications.rb:168:in `instrument\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/actionmailer-5.2.4.4/lib/action_mailer/base.rb:606:in `process\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/actionmailer-5.2.4.4/lib/action_mailer/message_delivery.rb:123:in `block in processed_mailer\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/actionmailer-5.2.4.4/lib/action_mailer/message_delivery.rb:122:in `tap\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/actionmailer-5.2.4.4/lib/action_mailer/message_delivery.rb:122:in `processed_mailer\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/actionmailer-5.2.4.4/lib/action_mailer/message_delivery.rb:113:in `deliver_now\'\n/home/ubuntu/var/www/marketplace/releases/20210407140026/app/utils/mail_carrier.rb:12:in `deliver_now\'\n/home/ubuntu/var/www/marketplace/releases/20210407140026/app/jobs/email_confirmation_job.rb:16:in `perform\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/backend/base.rb:81:in `block in invoke_job\'\n/home/ubuntu/var/www/marketplace/releases/20210407140026/config/initializers/delayed_job.rb:10:in `block (2 levels) in <class:DelayedJobLoggerPlugin>\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/lifecycle.rb:79:in `block (2 levels) in add\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/airbrake-10.0.4/lib/airbrake/delayed_job.rb:13:in `block (3 levels) in <class:Airbrake>\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/airbrake-ruby-4.14.1/lib/airbrake-ruby/benchmark.rb:13:in `measure\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/airbrake-10.0.4/lib/airbrake/delayed_job.rb:11:in `block (2 levels) in <class:Airbrake>\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/lifecycle.rb:79:in `block (2 levels) in add\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/lifecycle.rb:61:in `block in initialize\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/lifecycle.rb:79:in `block in add\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/lifecycle.rb:79:in `block in add\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/lifecycle.rb:66:in `execute\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/lifecycle.rb:40:in `run_callbacks\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/backend/base.rb:78:in `invoke_job\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/newrelic_rpm-6.11.0.365/lib/new_relic/agent/instrumentation/delayed_job_instrumentation.rb:129:in `block in invoke_job\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/newrelic_rpm-6.11.0.365/lib/new_relic/agent/instrumentation/controller_instrumentation.rb:376:in `perform_action_with_newrelic_trace\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/newrelic_rpm-6.11.0.365/lib/new_relic/agent/instrumentation/delayed_job_instrumentation.rb:128:in `invoke_job\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/worker.rb:230:in `block (2 levels) in run\'\n/home/ubuntu/.rvm/rubies/ruby-2.6.5/lib/ruby/2.6.0/timeout.rb:93:in `block in timeout\'\n/home/ubuntu/.rvm/rubies/ruby-2.6.5/lib/ruby/2.6.0/timeout.rb:103:in `timeout\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/worker.rb:230:in `block in run\'\n/home/ubuntu/.rvm/rubies/ruby-2.6.5/lib/ruby/2.6.0/benchmark.rb:308:in `realtime\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/worker.rb:229:in `run\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/worker.rb:312:in `block in reserve_and_run_one_job\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/lifecycle.rb:61:in `block in initialize\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/lifecycle.rb:66:in `execute\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/lifecycle.rb:40:in `run_callbacks\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/worker.rb:312:in `reserve_and_run_one_job\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/worker.rb:213:in `block in work_off\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/worker.rb:212:in `times\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/worker.rb:212:in `work_off\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/worker.rb:175:in `block (4 levels) in start\'\n/home/ubuntu/.rvm/rubies/ruby-2.6.5/lib/ruby/2.6.0/benchmark.rb:308:in `realtime\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/worker.rb:174:in `block (3 levels) in start\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/lifecycle.rb:61:in `block in initialize\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/lifecycle.rb:66:in `execute\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/lifecycle.rb:40:in `run_callbacks\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/worker.rb:173:in `block (2 levels) in start\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/worker.rb:172:in `loop\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/worker.rb:172:in `block in start\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/plugins/clear_locks.rb:7:in `block (2 levels) in <class:ClearLocks>\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/lifecycle.rb:79:in `block (2 levels) in add\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/lifecycle.rb:61:in `block in initialize\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/lifecycle.rb:79:in `block in add\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/lifecycle.rb:66:in `execute\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/lifecycle.rb:40:in `run_callbacks\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/worker.rb:171:in `start\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/command.rb:137:in `run\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/command.rb:125:in `block in run_process\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/daemons-1.3.1/lib/daemons/application.rb:275:in `block in start_proc\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/daemons-1.3.1/lib/daemons/daemonize.rb:84:in `call_as_daemon\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/daemons-1.3.1/lib/daemons/application.rb:279:in `start_proc\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/daemons-1.3.1/lib/daemons/application.rb:305:in `start\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/daemons-1.3.1/lib/daemons/application_group.rb:164:in `block (2 levels) in start_all\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/daemons-1.3.1/lib/daemons/application_group.rb:163:in `fork\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/daemons-1.3.1/lib/daemons/application_group.rb:163:in `block in start_all\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/daemons-1.3.1/lib/daemons/application_group.rb:162:in `each\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/daemons-1.3.1/lib/daemons/application_group.rb:162:in `start_all\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/daemons-1.3.1/lib/daemons/controller.rb:66:in `run\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/daemons-1.3.1/lib/daemons.rb:199:in `block in run_proc\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/daemons-1.3.1/lib/daemons/cmdline.rb:121:in `catch_exceptions\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/daemons-1.3.1/lib/daemons.rb:198:in `run_proc\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/command.rb:123:in `run_process\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/command.rb:104:in `block in daemonize\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/command.rb:102:in `times\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/command.rb:102:in `daemonize\'\nscript/delayed_job:5:in `<main>\'','2021-04-07 14:39:15',NULL,'2021-04-07 14:39:19',NULL,'2021-04-07 14:38:42','2021-04-07 14:39:19','default'),(124,2,3,'--- !ruby/struct:EmailConfirmationJob\nemail_id: 5\ncommunity_id: 1\n','undefined local variable or method `community_name\' for #<#<Class:0x000055965ddca8e0>:0x000055965de04b80>\nDid you mean?  community\n/home/ubuntu/var/www/marketplace/releases/20210407140026/app/views/layouts/email.html.haml:19:in `_app_views_layouts_email_html_haml___3551636339307992427_47052154112000\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/actionview-5.2.4.4/lib/action_view/template.rb:159:in `block in render\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/activesupport-5.2.4.4/lib/active_support/notifications.rb:168:in `block in instrument\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/activesupport-5.2.4.4/lib/active_support/notifications/instrumenter.rb:23:in `instrument\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/activesupport-5.2.4.4/lib/active_support/notifications.rb:168:in `instrument\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/actionview-5.2.4.4/lib/action_view/template.rb:354:in `instrument_render_template\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/actionview-5.2.4.4/lib/action_view/template.rb:157:in `render\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/actionview-5.2.4.4/lib/action_view/renderer/template_renderer.rb:66:in `render_with_layout\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/actionview-5.2.4.4/lib/action_view/renderer/template_renderer.rb:52:in `render_template\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/actionview-5.2.4.4/lib/action_view/renderer/template_renderer.rb:16:in `render\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/actionview-5.2.4.4/lib/action_view/renderer/renderer.rb:44:in `render_template\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/actionview-5.2.4.4/lib/action_view/renderer/renderer.rb:25:in `render\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/actionview-5.2.4.4/lib/action_view/rendering.rb:103:in `_render_template\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/actionview-5.2.4.4/lib/action_view/rendering.rb:84:in `render_to_body\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/actionpack-5.2.4.4/lib/abstract_controller/rendering.rb:25:in `render\'\n/home/ubuntu/var/www/marketplace/releases/20210407140026/app/mailers/person_mailer.rb:365:in `block (3 levels) in email_confirmation\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/actionmailer-5.2.4.4/lib/action_mailer/collector.rb:28:in `custom\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/actionpack-5.2.4.4/lib/abstract_controller/collector.rb:11:in `html\'\n/home/ubuntu/var/www/marketplace/releases/20210407140026/app/mailers/person_mailer.rb:365:in `block (2 levels) in email_confirmation\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/actionmailer-5.2.4.4/lib/action_mailer/base.rb:920:in `collect_responses\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/actionmailer-5.2.4.4/lib/action_mailer/base.rb:828:in `mail\'\n/home/ubuntu/var/www/marketplace/releases/20210407140026/app/mailers/person_mailer.rb:361:in `block in email_confirmation\'\n/home/ubuntu/var/www/marketplace/releases/20210407140026/app/utils/mail_utils.rb:23:in `block (2 levels) in with_locale\'\n/home/ubuntu/var/www/marketplace/releases/20210407140026/app/utils/mail_utils.rb:70:in `set_community\'\n/home/ubuntu/var/www/marketplace/releases/20210407140026/app/utils/mail_utils.rb:22:in `block in with_locale\'\n/home/ubuntu/var/www/marketplace/releases/20210407140026/app/utils/mail_utils.rb:50:in `set_locale\'\n/home/ubuntu/var/www/marketplace/releases/20210407140026/app/utils/mail_utils.rb:21:in `with_locale\'\n/home/ubuntu/var/www/marketplace/releases/20210407140026/app/mailers/person_mailer.rb:359:in `email_confirmation\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/actionpack-5.2.4.4/lib/abstract_controller/base.rb:194:in `process_action\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/actionpack-5.2.4.4/lib/abstract_controller/callbacks.rb:42:in `block in process_action\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/activesupport-5.2.4.4/lib/active_support/callbacks.rb:98:in `run_callbacks\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/actionpack-5.2.4.4/lib/abstract_controller/callbacks.rb:41:in `process_action\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/actionpack-5.2.4.4/lib/abstract_controller/base.rb:134:in `process\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/actionmailer-5.2.4.4/lib/action_mailer/rescuable.rb:25:in `block in process\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/actionmailer-5.2.4.4/lib/action_mailer/rescuable.rb:17:in `handle_exceptions\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/actionmailer-5.2.4.4/lib/action_mailer/rescuable.rb:24:in `process\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/actionview-5.2.4.4/lib/action_view/rendering.rb:32:in `process\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/actionmailer-5.2.4.4/lib/action_mailer/base.rb:607:in `block in process\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/activesupport-5.2.4.4/lib/active_support/notifications.rb:168:in `block in instrument\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/activesupport-5.2.4.4/lib/active_support/notifications/instrumenter.rb:23:in `instrument\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/activesupport-5.2.4.4/lib/active_support/notifications.rb:168:in `instrument\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/actionmailer-5.2.4.4/lib/action_mailer/base.rb:606:in `process\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/actionmailer-5.2.4.4/lib/action_mailer/message_delivery.rb:123:in `block in processed_mailer\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/actionmailer-5.2.4.4/lib/action_mailer/message_delivery.rb:122:in `tap\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/actionmailer-5.2.4.4/lib/action_mailer/message_delivery.rb:122:in `processed_mailer\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/actionmailer-5.2.4.4/lib/action_mailer/message_delivery.rb:113:in `deliver_now\'\n/home/ubuntu/var/www/marketplace/releases/20210407140026/app/utils/mail_carrier.rb:12:in `deliver_now\'\n/home/ubuntu/var/www/marketplace/releases/20210407140026/app/jobs/email_confirmation_job.rb:16:in `perform\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/backend/base.rb:81:in `block in invoke_job\'\n/home/ubuntu/var/www/marketplace/releases/20210407140026/config/initializers/delayed_job.rb:10:in `block (2 levels) in <class:DelayedJobLoggerPlugin>\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/lifecycle.rb:79:in `block (2 levels) in add\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/airbrake-10.0.4/lib/airbrake/delayed_job.rb:13:in `block (3 levels) in <class:Airbrake>\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/airbrake-ruby-4.14.1/lib/airbrake-ruby/benchmark.rb:13:in `measure\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/airbrake-10.0.4/lib/airbrake/delayed_job.rb:11:in `block (2 levels) in <class:Airbrake>\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/lifecycle.rb:79:in `block (2 levels) in add\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/lifecycle.rb:61:in `block in initialize\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/lifecycle.rb:79:in `block in add\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/lifecycle.rb:79:in `block in add\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/lifecycle.rb:66:in `execute\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/lifecycle.rb:40:in `run_callbacks\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/backend/base.rb:78:in `invoke_job\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/newrelic_rpm-6.11.0.365/lib/new_relic/agent/instrumentation/delayed_job_instrumentation.rb:129:in `block in invoke_job\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/newrelic_rpm-6.11.0.365/lib/new_relic/agent/instrumentation/controller_instrumentation.rb:376:in `perform_action_with_newrelic_trace\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/newrelic_rpm-6.11.0.365/lib/new_relic/agent/instrumentation/delayed_job_instrumentation.rb:128:in `invoke_job\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/worker.rb:230:in `block (2 levels) in run\'\n/home/ubuntu/.rvm/rubies/ruby-2.6.5/lib/ruby/2.6.0/timeout.rb:93:in `block in timeout\'\n/home/ubuntu/.rvm/rubies/ruby-2.6.5/lib/ruby/2.6.0/timeout.rb:103:in `timeout\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/worker.rb:230:in `block in run\'\n/home/ubuntu/.rvm/rubies/ruby-2.6.5/lib/ruby/2.6.0/benchmark.rb:308:in `realtime\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/worker.rb:229:in `run\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/worker.rb:312:in `block in reserve_and_run_one_job\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/lifecycle.rb:61:in `block in initialize\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/lifecycle.rb:66:in `execute\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/lifecycle.rb:40:in `run_callbacks\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/worker.rb:312:in `reserve_and_run_one_job\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/worker.rb:213:in `block in work_off\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/worker.rb:212:in `times\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/worker.rb:212:in `work_off\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/worker.rb:175:in `block (4 levels) in start\'\n/home/ubuntu/.rvm/rubies/ruby-2.6.5/lib/ruby/2.6.0/benchmark.rb:308:in `realtime\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/worker.rb:174:in `block (3 levels) in start\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/lifecycle.rb:61:in `block in initialize\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/lifecycle.rb:66:in `execute\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/lifecycle.rb:40:in `run_callbacks\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/worker.rb:173:in `block (2 levels) in start\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/worker.rb:172:in `loop\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/worker.rb:172:in `block in start\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/plugins/clear_locks.rb:7:in `block (2 levels) in <class:ClearLocks>\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/lifecycle.rb:79:in `block (2 levels) in add\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/lifecycle.rb:61:in `block in initialize\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/lifecycle.rb:79:in `block in add\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/lifecycle.rb:66:in `execute\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/lifecycle.rb:40:in `run_callbacks\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/worker.rb:171:in `start\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/command.rb:137:in `run\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/command.rb:125:in `block in run_process\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/daemons-1.3.1/lib/daemons/application.rb:275:in `block in start_proc\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/daemons-1.3.1/lib/daemons/daemonize.rb:84:in `call_as_daemon\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/daemons-1.3.1/lib/daemons/application.rb:279:in `start_proc\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/daemons-1.3.1/lib/daemons/application.rb:305:in `start\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/daemons-1.3.1/lib/daemons/application_group.rb:164:in `block (2 levels) in start_all\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/daemons-1.3.1/lib/daemons/application_group.rb:163:in `fork\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/daemons-1.3.1/lib/daemons/application_group.rb:163:in `block in start_all\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/daemons-1.3.1/lib/daemons/application_group.rb:162:in `each\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/daemons-1.3.1/lib/daemons/application_group.rb:162:in `start_all\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/daemons-1.3.1/lib/daemons/controller.rb:66:in `run\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/daemons-1.3.1/lib/daemons.rb:199:in `block in run_proc\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/daemons-1.3.1/lib/daemons/cmdline.rb:121:in `catch_exceptions\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/daemons-1.3.1/lib/daemons.rb:198:in `run_proc\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/command.rb:123:in `run_process\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/command.rb:104:in `block in daemonize\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/command.rb:102:in `times\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/command.rb:102:in `daemonize\'\nscript/delayed_job:5:in `<main>\'','2021-04-07 14:40:55',NULL,'2021-04-07 14:41:00',NULL,'2021-04-07 14:40:22','2021-04-07 14:41:00','default'),(125,2,3,'--- !ruby/struct:EmailConfirmationJob\nemail_id: 5\ncommunity_id: 1\n','undefined local variable or method `community_name\' for #<#<Class:0x000055aa8121d9b0>:0x000055aa860260d0>\nDid you mean?  community\n/home/ubuntu/var/www/marketplace/releases/20210407140026/app/views/layouts/email.html.haml:19:in `_app_views_layouts_email_html_haml___4602294872696055943_47095399645560\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/actionview-5.2.4.4/lib/action_view/template.rb:159:in `block in render\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/activesupport-5.2.4.4/lib/active_support/notifications.rb:168:in `block in instrument\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/activesupport-5.2.4.4/lib/active_support/notifications/instrumenter.rb:23:in `instrument\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/activesupport-5.2.4.4/lib/active_support/notifications.rb:168:in `instrument\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/actionview-5.2.4.4/lib/action_view/template.rb:354:in `instrument_render_template\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/actionview-5.2.4.4/lib/action_view/template.rb:157:in `render\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/actionview-5.2.4.4/lib/action_view/renderer/template_renderer.rb:66:in `render_with_layout\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/actionview-5.2.4.4/lib/action_view/renderer/template_renderer.rb:52:in `render_template\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/actionview-5.2.4.4/lib/action_view/renderer/template_renderer.rb:16:in `render\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/actionview-5.2.4.4/lib/action_view/renderer/renderer.rb:44:in `render_template\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/actionview-5.2.4.4/lib/action_view/renderer/renderer.rb:25:in `render\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/actionview-5.2.4.4/lib/action_view/rendering.rb:103:in `_render_template\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/actionview-5.2.4.4/lib/action_view/rendering.rb:84:in `render_to_body\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/actionpack-5.2.4.4/lib/abstract_controller/rendering.rb:25:in `render\'\n/home/ubuntu/var/www/marketplace/releases/20210407140026/app/mailers/person_mailer.rb:365:in `block (3 levels) in email_confirmation\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/actionmailer-5.2.4.4/lib/action_mailer/collector.rb:28:in `custom\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/actionpack-5.2.4.4/lib/abstract_controller/collector.rb:11:in `html\'\n/home/ubuntu/var/www/marketplace/releases/20210407140026/app/mailers/person_mailer.rb:365:in `block (2 levels) in email_confirmation\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/actionmailer-5.2.4.4/lib/action_mailer/base.rb:920:in `collect_responses\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/actionmailer-5.2.4.4/lib/action_mailer/base.rb:828:in `mail\'\n/home/ubuntu/var/www/marketplace/releases/20210407140026/app/mailers/person_mailer.rb:361:in `block in email_confirmation\'\n/home/ubuntu/var/www/marketplace/releases/20210407140026/app/utils/mail_utils.rb:23:in `block (2 levels) in with_locale\'\n/home/ubuntu/var/www/marketplace/releases/20210407140026/app/utils/mail_utils.rb:70:in `set_community\'\n/home/ubuntu/var/www/marketplace/releases/20210407140026/app/utils/mail_utils.rb:22:in `block in with_locale\'\n/home/ubuntu/var/www/marketplace/releases/20210407140026/app/utils/mail_utils.rb:50:in `set_locale\'\n/home/ubuntu/var/www/marketplace/releases/20210407140026/app/utils/mail_utils.rb:21:in `with_locale\'\n/home/ubuntu/var/www/marketplace/releases/20210407140026/app/mailers/person_mailer.rb:359:in `email_confirmation\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/actionpack-5.2.4.4/lib/abstract_controller/base.rb:194:in `process_action\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/actionpack-5.2.4.4/lib/abstract_controller/callbacks.rb:42:in `block in process_action\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/activesupport-5.2.4.4/lib/active_support/callbacks.rb:98:in `run_callbacks\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/actionpack-5.2.4.4/lib/abstract_controller/callbacks.rb:41:in `process_action\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/actionpack-5.2.4.4/lib/abstract_controller/base.rb:134:in `process\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/actionmailer-5.2.4.4/lib/action_mailer/rescuable.rb:25:in `block in process\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/actionmailer-5.2.4.4/lib/action_mailer/rescuable.rb:17:in `handle_exceptions\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/actionmailer-5.2.4.4/lib/action_mailer/rescuable.rb:24:in `process\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/actionview-5.2.4.4/lib/action_view/rendering.rb:32:in `process\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/actionmailer-5.2.4.4/lib/action_mailer/base.rb:607:in `block in process\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/activesupport-5.2.4.4/lib/active_support/notifications.rb:168:in `block in instrument\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/activesupport-5.2.4.4/lib/active_support/notifications/instrumenter.rb:23:in `instrument\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/activesupport-5.2.4.4/lib/active_support/notifications.rb:168:in `instrument\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/actionmailer-5.2.4.4/lib/action_mailer/base.rb:606:in `process\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/actionmailer-5.2.4.4/lib/action_mailer/message_delivery.rb:123:in `block in processed_mailer\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/actionmailer-5.2.4.4/lib/action_mailer/message_delivery.rb:122:in `tap\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/actionmailer-5.2.4.4/lib/action_mailer/message_delivery.rb:122:in `processed_mailer\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/actionmailer-5.2.4.4/lib/action_mailer/message_delivery.rb:113:in `deliver_now\'\n/home/ubuntu/var/www/marketplace/releases/20210407140026/app/utils/mail_carrier.rb:12:in `deliver_now\'\n/home/ubuntu/var/www/marketplace/releases/20210407140026/app/jobs/email_confirmation_job.rb:16:in `perform\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/backend/base.rb:81:in `block in invoke_job\'\n/home/ubuntu/var/www/marketplace/releases/20210407140026/config/initializers/delayed_job.rb:10:in `block (2 levels) in <class:DelayedJobLoggerPlugin>\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/lifecycle.rb:79:in `block (2 levels) in add\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/airbrake-10.0.4/lib/airbrake/delayed_job.rb:13:in `block (3 levels) in <class:Airbrake>\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/airbrake-ruby-4.14.1/lib/airbrake-ruby/benchmark.rb:13:in `measure\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/airbrake-10.0.4/lib/airbrake/delayed_job.rb:11:in `block (2 levels) in <class:Airbrake>\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/lifecycle.rb:79:in `block (2 levels) in add\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/lifecycle.rb:61:in `block in initialize\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/lifecycle.rb:79:in `block in add\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/lifecycle.rb:79:in `block in add\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/lifecycle.rb:66:in `execute\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/lifecycle.rb:40:in `run_callbacks\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/backend/base.rb:78:in `invoke_job\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/newrelic_rpm-6.11.0.365/lib/new_relic/agent/instrumentation/delayed_job_instrumentation.rb:129:in `block in invoke_job\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/newrelic_rpm-6.11.0.365/lib/new_relic/agent/instrumentation/controller_instrumentation.rb:376:in `perform_action_with_newrelic_trace\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/newrelic_rpm-6.11.0.365/lib/new_relic/agent/instrumentation/delayed_job_instrumentation.rb:128:in `invoke_job\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/worker.rb:230:in `block (2 levels) in run\'\n/home/ubuntu/.rvm/rubies/ruby-2.6.5/lib/ruby/2.6.0/timeout.rb:93:in `block in timeout\'\n/home/ubuntu/.rvm/rubies/ruby-2.6.5/lib/ruby/2.6.0/timeout.rb:103:in `timeout\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/worker.rb:230:in `block in run\'\n/home/ubuntu/.rvm/rubies/ruby-2.6.5/lib/ruby/2.6.0/benchmark.rb:308:in `realtime\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/worker.rb:229:in `run\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/worker.rb:312:in `block in reserve_and_run_one_job\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/lifecycle.rb:61:in `block in initialize\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/lifecycle.rb:66:in `execute\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/lifecycle.rb:40:in `run_callbacks\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/worker.rb:312:in `reserve_and_run_one_job\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/worker.rb:213:in `block in work_off\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/worker.rb:212:in `times\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/worker.rb:212:in `work_off\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/worker.rb:175:in `block (4 levels) in start\'\n/home/ubuntu/.rvm/rubies/ruby-2.6.5/lib/ruby/2.6.0/benchmark.rb:308:in `realtime\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/worker.rb:174:in `block (3 levels) in start\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/lifecycle.rb:61:in `block in initialize\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/lifecycle.rb:66:in `execute\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/lifecycle.rb:40:in `run_callbacks\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/worker.rb:173:in `block (2 levels) in start\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/worker.rb:172:in `loop\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/worker.rb:172:in `block in start\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/plugins/clear_locks.rb:7:in `block (2 levels) in <class:ClearLocks>\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/lifecycle.rb:79:in `block (2 levels) in add\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/lifecycle.rb:61:in `block in initialize\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/lifecycle.rb:79:in `block in add\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/lifecycle.rb:66:in `execute\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/lifecycle.rb:40:in `run_callbacks\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/worker.rb:171:in `start\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/command.rb:137:in `run\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/command.rb:125:in `block in run_process\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/daemons-1.3.1/lib/daemons/application.rb:275:in `block in start_proc\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/daemons-1.3.1/lib/daemons/daemonize.rb:84:in `call_as_daemon\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/daemons-1.3.1/lib/daemons/application.rb:279:in `start_proc\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/daemons-1.3.1/lib/daemons/application.rb:305:in `start\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/daemons-1.3.1/lib/daemons/application_group.rb:164:in `block (2 levels) in start_all\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/daemons-1.3.1/lib/daemons/application_group.rb:163:in `fork\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/daemons-1.3.1/lib/daemons/application_group.rb:163:in `block in start_all\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/daemons-1.3.1/lib/daemons/application_group.rb:162:in `each\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/daemons-1.3.1/lib/daemons/application_group.rb:162:in `start_all\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/daemons-1.3.1/lib/daemons/controller.rb:66:in `run\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/daemons-1.3.1/lib/daemons.rb:199:in `block in run_proc\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/daemons-1.3.1/lib/daemons/cmdline.rb:121:in `catch_exceptions\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/daemons-1.3.1/lib/daemons.rb:198:in `run_proc\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/command.rb:123:in `run_process\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/command.rb:104:in `block in daemonize\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/command.rb:102:in `times\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/command.rb:102:in `daemonize\'\nscript/delayed_job:5:in `<main>\'','2021-04-07 14:50:19',NULL,'2021-04-07 14:50:23',NULL,'2021-04-07 14:49:43','2021-04-07 14:50:23','default'),(126,2,3,'--- !ruby/struct:EmailConfirmationJob\nemail_id: 5\ncommunity_id: 1\n','undefined local variable or method `community_name\' for #<#<Class:0x000055aa8121d9b0>:0x000055aa8127ec38>\nDid you mean?  community\n/home/ubuntu/var/www/marketplace/releases/20210407140026/app/views/layouts/email.html.haml:19:in `_app_views_layouts_email_html_haml___4602294872696055943_47095399645560\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/actionview-5.2.4.4/lib/action_view/template.rb:159:in `block in render\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/activesupport-5.2.4.4/lib/active_support/notifications.rb:168:in `block in instrument\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/activesupport-5.2.4.4/lib/active_support/notifications/instrumenter.rb:23:in `instrument\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/activesupport-5.2.4.4/lib/active_support/notifications.rb:168:in `instrument\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/actionview-5.2.4.4/lib/action_view/template.rb:354:in `instrument_render_template\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/actionview-5.2.4.4/lib/action_view/template.rb:157:in `render\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/actionview-5.2.4.4/lib/action_view/renderer/template_renderer.rb:66:in `render_with_layout\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/actionview-5.2.4.4/lib/action_view/renderer/template_renderer.rb:52:in `render_template\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/actionview-5.2.4.4/lib/action_view/renderer/template_renderer.rb:16:in `render\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/actionview-5.2.4.4/lib/action_view/renderer/renderer.rb:44:in `render_template\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/actionview-5.2.4.4/lib/action_view/renderer/renderer.rb:25:in `render\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/actionview-5.2.4.4/lib/action_view/rendering.rb:103:in `_render_template\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/actionview-5.2.4.4/lib/action_view/rendering.rb:84:in `render_to_body\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/actionpack-5.2.4.4/lib/abstract_controller/rendering.rb:25:in `render\'\n/home/ubuntu/var/www/marketplace/releases/20210407140026/app/mailers/person_mailer.rb:365:in `block (3 levels) in email_confirmation\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/actionmailer-5.2.4.4/lib/action_mailer/collector.rb:28:in `custom\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/actionpack-5.2.4.4/lib/abstract_controller/collector.rb:11:in `html\'\n/home/ubuntu/var/www/marketplace/releases/20210407140026/app/mailers/person_mailer.rb:365:in `block (2 levels) in email_confirmation\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/actionmailer-5.2.4.4/lib/action_mailer/base.rb:920:in `collect_responses\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/actionmailer-5.2.4.4/lib/action_mailer/base.rb:828:in `mail\'\n/home/ubuntu/var/www/marketplace/releases/20210407140026/app/mailers/person_mailer.rb:361:in `block in email_confirmation\'\n/home/ubuntu/var/www/marketplace/releases/20210407140026/app/utils/mail_utils.rb:23:in `block (2 levels) in with_locale\'\n/home/ubuntu/var/www/marketplace/releases/20210407140026/app/utils/mail_utils.rb:70:in `set_community\'\n/home/ubuntu/var/www/marketplace/releases/20210407140026/app/utils/mail_utils.rb:22:in `block in with_locale\'\n/home/ubuntu/var/www/marketplace/releases/20210407140026/app/utils/mail_utils.rb:50:in `set_locale\'\n/home/ubuntu/var/www/marketplace/releases/20210407140026/app/utils/mail_utils.rb:21:in `with_locale\'\n/home/ubuntu/var/www/marketplace/releases/20210407140026/app/mailers/person_mailer.rb:359:in `email_confirmation\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/actionpack-5.2.4.4/lib/abstract_controller/base.rb:194:in `process_action\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/actionpack-5.2.4.4/lib/abstract_controller/callbacks.rb:42:in `block in process_action\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/activesupport-5.2.4.4/lib/active_support/callbacks.rb:98:in `run_callbacks\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/actionpack-5.2.4.4/lib/abstract_controller/callbacks.rb:41:in `process_action\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/actionpack-5.2.4.4/lib/abstract_controller/base.rb:134:in `process\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/actionmailer-5.2.4.4/lib/action_mailer/rescuable.rb:25:in `block in process\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/actionmailer-5.2.4.4/lib/action_mailer/rescuable.rb:17:in `handle_exceptions\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/actionmailer-5.2.4.4/lib/action_mailer/rescuable.rb:24:in `process\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/actionview-5.2.4.4/lib/action_view/rendering.rb:32:in `process\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/actionmailer-5.2.4.4/lib/action_mailer/base.rb:607:in `block in process\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/activesupport-5.2.4.4/lib/active_support/notifications.rb:168:in `block in instrument\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/activesupport-5.2.4.4/lib/active_support/notifications/instrumenter.rb:23:in `instrument\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/activesupport-5.2.4.4/lib/active_support/notifications.rb:168:in `instrument\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/actionmailer-5.2.4.4/lib/action_mailer/base.rb:606:in `process\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/actionmailer-5.2.4.4/lib/action_mailer/message_delivery.rb:123:in `block in processed_mailer\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/actionmailer-5.2.4.4/lib/action_mailer/message_delivery.rb:122:in `tap\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/actionmailer-5.2.4.4/lib/action_mailer/message_delivery.rb:122:in `processed_mailer\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/actionmailer-5.2.4.4/lib/action_mailer/message_delivery.rb:113:in `deliver_now\'\n/home/ubuntu/var/www/marketplace/releases/20210407140026/app/utils/mail_carrier.rb:12:in `deliver_now\'\n/home/ubuntu/var/www/marketplace/releases/20210407140026/app/jobs/email_confirmation_job.rb:16:in `perform\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/backend/base.rb:81:in `block in invoke_job\'\n/home/ubuntu/var/www/marketplace/releases/20210407140026/config/initializers/delayed_job.rb:10:in `block (2 levels) in <class:DelayedJobLoggerPlugin>\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/lifecycle.rb:79:in `block (2 levels) in add\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/airbrake-10.0.4/lib/airbrake/delayed_job.rb:13:in `block (3 levels) in <class:Airbrake>\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/airbrake-ruby-4.14.1/lib/airbrake-ruby/benchmark.rb:13:in `measure\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/airbrake-10.0.4/lib/airbrake/delayed_job.rb:11:in `block (2 levels) in <class:Airbrake>\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/lifecycle.rb:79:in `block (2 levels) in add\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/lifecycle.rb:61:in `block in initialize\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/lifecycle.rb:79:in `block in add\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/lifecycle.rb:79:in `block in add\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/lifecycle.rb:66:in `execute\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/lifecycle.rb:40:in `run_callbacks\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/backend/base.rb:78:in `invoke_job\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/newrelic_rpm-6.11.0.365/lib/new_relic/agent/instrumentation/delayed_job_instrumentation.rb:129:in `block in invoke_job\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/newrelic_rpm-6.11.0.365/lib/new_relic/agent/instrumentation/controller_instrumentation.rb:376:in `perform_action_with_newrelic_trace\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/newrelic_rpm-6.11.0.365/lib/new_relic/agent/instrumentation/delayed_job_instrumentation.rb:128:in `invoke_job\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/worker.rb:230:in `block (2 levels) in run\'\n/home/ubuntu/.rvm/rubies/ruby-2.6.5/lib/ruby/2.6.0/timeout.rb:93:in `block in timeout\'\n/home/ubuntu/.rvm/rubies/ruby-2.6.5/lib/ruby/2.6.0/timeout.rb:103:in `timeout\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/worker.rb:230:in `block in run\'\n/home/ubuntu/.rvm/rubies/ruby-2.6.5/lib/ruby/2.6.0/benchmark.rb:308:in `realtime\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/worker.rb:229:in `run\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/worker.rb:312:in `block in reserve_and_run_one_job\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/lifecycle.rb:61:in `block in initialize\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/lifecycle.rb:66:in `execute\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/lifecycle.rb:40:in `run_callbacks\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/worker.rb:312:in `reserve_and_run_one_job\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/worker.rb:213:in `block in work_off\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/worker.rb:212:in `times\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/worker.rb:212:in `work_off\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/worker.rb:175:in `block (4 levels) in start\'\n/home/ubuntu/.rvm/rubies/ruby-2.6.5/lib/ruby/2.6.0/benchmark.rb:308:in `realtime\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/worker.rb:174:in `block (3 levels) in start\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/lifecycle.rb:61:in `block in initialize\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/lifecycle.rb:66:in `execute\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/lifecycle.rb:40:in `run_callbacks\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/worker.rb:173:in `block (2 levels) in start\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/worker.rb:172:in `loop\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/worker.rb:172:in `block in start\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/plugins/clear_locks.rb:7:in `block (2 levels) in <class:ClearLocks>\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/lifecycle.rb:79:in `block (2 levels) in add\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/lifecycle.rb:61:in `block in initialize\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/lifecycle.rb:79:in `block in add\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/lifecycle.rb:66:in `execute\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/lifecycle.rb:40:in `run_callbacks\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/worker.rb:171:in `start\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/command.rb:137:in `run\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/command.rb:125:in `block in run_process\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/daemons-1.3.1/lib/daemons/application.rb:275:in `block in start_proc\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/daemons-1.3.1/lib/daemons/daemonize.rb:84:in `call_as_daemon\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/daemons-1.3.1/lib/daemons/application.rb:279:in `start_proc\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/daemons-1.3.1/lib/daemons/application.rb:305:in `start\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/daemons-1.3.1/lib/daemons/application_group.rb:164:in `block (2 levels) in start_all\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/daemons-1.3.1/lib/daemons/application_group.rb:163:in `fork\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/daemons-1.3.1/lib/daemons/application_group.rb:163:in `block in start_all\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/daemons-1.3.1/lib/daemons/application_group.rb:162:in `each\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/daemons-1.3.1/lib/daemons/application_group.rb:162:in `start_all\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/daemons-1.3.1/lib/daemons/controller.rb:66:in `run\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/daemons-1.3.1/lib/daemons.rb:199:in `block in run_proc\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/daemons-1.3.1/lib/daemons/cmdline.rb:121:in `catch_exceptions\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/daemons-1.3.1/lib/daemons.rb:198:in `run_proc\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/command.rb:123:in `run_process\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/command.rb:104:in `block in daemonize\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/command.rb:102:in `times\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/command.rb:102:in `daemonize\'\nscript/delayed_job:5:in `<main>\'','2021-04-07 14:52:00',NULL,'2021-04-07 14:52:04',NULL,'2021-04-07 14:51:27','2021-04-07 14:52:04','default'),(128,2,3,'--- !ruby/struct:EmailConfirmationJob\nemail_id: 6\ncommunity_id: 1\n','undefined local variable or method `community_name\' for #<#<Class:0x000055aa8121d9b0>:0x000055aa832e6458>\nDid you mean?  community\n/home/ubuntu/var/www/marketplace/releases/20210407140026/app/views/layouts/email.html.haml:19:in `_app_views_layouts_email_html_haml___4602294872696055943_47095399645560\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/actionview-5.2.4.4/lib/action_view/template.rb:159:in `block in render\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/activesupport-5.2.4.4/lib/active_support/notifications.rb:168:in `block in instrument\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/activesupport-5.2.4.4/lib/active_support/notifications/instrumenter.rb:23:in `instrument\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/activesupport-5.2.4.4/lib/active_support/notifications.rb:168:in `instrument\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/actionview-5.2.4.4/lib/action_view/template.rb:354:in `instrument_render_template\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/actionview-5.2.4.4/lib/action_view/template.rb:157:in `render\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/actionview-5.2.4.4/lib/action_view/renderer/template_renderer.rb:66:in `render_with_layout\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/actionview-5.2.4.4/lib/action_view/renderer/template_renderer.rb:52:in `render_template\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/actionview-5.2.4.4/lib/action_view/renderer/template_renderer.rb:16:in `render\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/actionview-5.2.4.4/lib/action_view/renderer/renderer.rb:44:in `render_template\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/actionview-5.2.4.4/lib/action_view/renderer/renderer.rb:25:in `render\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/actionview-5.2.4.4/lib/action_view/rendering.rb:103:in `_render_template\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/actionview-5.2.4.4/lib/action_view/rendering.rb:84:in `render_to_body\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/actionpack-5.2.4.4/lib/abstract_controller/rendering.rb:25:in `render\'\n/home/ubuntu/var/www/marketplace/releases/20210407140026/app/mailers/person_mailer.rb:365:in `block (3 levels) in email_confirmation\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/actionmailer-5.2.4.4/lib/action_mailer/collector.rb:28:in `custom\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/actionpack-5.2.4.4/lib/abstract_controller/collector.rb:11:in `html\'\n/home/ubuntu/var/www/marketplace/releases/20210407140026/app/mailers/person_mailer.rb:365:in `block (2 levels) in email_confirmation\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/actionmailer-5.2.4.4/lib/action_mailer/base.rb:920:in `collect_responses\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/actionmailer-5.2.4.4/lib/action_mailer/base.rb:828:in `mail\'\n/home/ubuntu/var/www/marketplace/releases/20210407140026/app/mailers/person_mailer.rb:361:in `block in email_confirmation\'\n/home/ubuntu/var/www/marketplace/releases/20210407140026/app/utils/mail_utils.rb:23:in `block (2 levels) in with_locale\'\n/home/ubuntu/var/www/marketplace/releases/20210407140026/app/utils/mail_utils.rb:70:in `set_community\'\n/home/ubuntu/var/www/marketplace/releases/20210407140026/app/utils/mail_utils.rb:22:in `block in with_locale\'\n/home/ubuntu/var/www/marketplace/releases/20210407140026/app/utils/mail_utils.rb:50:in `set_locale\'\n/home/ubuntu/var/www/marketplace/releases/20210407140026/app/utils/mail_utils.rb:21:in `with_locale\'\n/home/ubuntu/var/www/marketplace/releases/20210407140026/app/mailers/person_mailer.rb:359:in `email_confirmation\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/actionpack-5.2.4.4/lib/abstract_controller/base.rb:194:in `process_action\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/actionpack-5.2.4.4/lib/abstract_controller/callbacks.rb:42:in `block in process_action\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/activesupport-5.2.4.4/lib/active_support/callbacks.rb:98:in `run_callbacks\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/actionpack-5.2.4.4/lib/abstract_controller/callbacks.rb:41:in `process_action\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/actionpack-5.2.4.4/lib/abstract_controller/base.rb:134:in `process\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/actionmailer-5.2.4.4/lib/action_mailer/rescuable.rb:25:in `block in process\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/actionmailer-5.2.4.4/lib/action_mailer/rescuable.rb:17:in `handle_exceptions\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/actionmailer-5.2.4.4/lib/action_mailer/rescuable.rb:24:in `process\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/actionview-5.2.4.4/lib/action_view/rendering.rb:32:in `process\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/actionmailer-5.2.4.4/lib/action_mailer/base.rb:607:in `block in process\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/activesupport-5.2.4.4/lib/active_support/notifications.rb:168:in `block in instrument\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/activesupport-5.2.4.4/lib/active_support/notifications/instrumenter.rb:23:in `instrument\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/activesupport-5.2.4.4/lib/active_support/notifications.rb:168:in `instrument\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/actionmailer-5.2.4.4/lib/action_mailer/base.rb:606:in `process\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/actionmailer-5.2.4.4/lib/action_mailer/message_delivery.rb:123:in `block in processed_mailer\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/actionmailer-5.2.4.4/lib/action_mailer/message_delivery.rb:122:in `tap\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/actionmailer-5.2.4.4/lib/action_mailer/message_delivery.rb:122:in `processed_mailer\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/actionmailer-5.2.4.4/lib/action_mailer/message_delivery.rb:113:in `deliver_now\'\n/home/ubuntu/var/www/marketplace/releases/20210407140026/app/utils/mail_carrier.rb:12:in `deliver_now\'\n/home/ubuntu/var/www/marketplace/releases/20210407140026/app/jobs/email_confirmation_job.rb:16:in `perform\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/backend/base.rb:81:in `block in invoke_job\'\n/home/ubuntu/var/www/marketplace/releases/20210407140026/config/initializers/delayed_job.rb:10:in `block (2 levels) in <class:DelayedJobLoggerPlugin>\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/lifecycle.rb:79:in `block (2 levels) in add\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/airbrake-10.0.4/lib/airbrake/delayed_job.rb:13:in `block (3 levels) in <class:Airbrake>\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/airbrake-ruby-4.14.1/lib/airbrake-ruby/benchmark.rb:13:in `measure\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/airbrake-10.0.4/lib/airbrake/delayed_job.rb:11:in `block (2 levels) in <class:Airbrake>\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/lifecycle.rb:79:in `block (2 levels) in add\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/lifecycle.rb:61:in `block in initialize\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/lifecycle.rb:79:in `block in add\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/lifecycle.rb:79:in `block in add\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/lifecycle.rb:66:in `execute\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/lifecycle.rb:40:in `run_callbacks\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/backend/base.rb:78:in `invoke_job\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/newrelic_rpm-6.11.0.365/lib/new_relic/agent/instrumentation/delayed_job_instrumentation.rb:129:in `block in invoke_job\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/newrelic_rpm-6.11.0.365/lib/new_relic/agent/instrumentation/controller_instrumentation.rb:376:in `perform_action_with_newrelic_trace\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/newrelic_rpm-6.11.0.365/lib/new_relic/agent/instrumentation/delayed_job_instrumentation.rb:128:in `invoke_job\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/worker.rb:230:in `block (2 levels) in run\'\n/home/ubuntu/.rvm/rubies/ruby-2.6.5/lib/ruby/2.6.0/timeout.rb:93:in `block in timeout\'\n/home/ubuntu/.rvm/rubies/ruby-2.6.5/lib/ruby/2.6.0/timeout.rb:103:in `timeout\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/worker.rb:230:in `block in run\'\n/home/ubuntu/.rvm/rubies/ruby-2.6.5/lib/ruby/2.6.0/benchmark.rb:308:in `realtime\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/worker.rb:229:in `run\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/worker.rb:312:in `block in reserve_and_run_one_job\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/lifecycle.rb:61:in `block in initialize\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/lifecycle.rb:66:in `execute\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/lifecycle.rb:40:in `run_callbacks\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/worker.rb:312:in `reserve_and_run_one_job\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/worker.rb:213:in `block in work_off\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/worker.rb:212:in `times\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/worker.rb:212:in `work_off\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/worker.rb:175:in `block (4 levels) in start\'\n/home/ubuntu/.rvm/rubies/ruby-2.6.5/lib/ruby/2.6.0/benchmark.rb:308:in `realtime\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/worker.rb:174:in `block (3 levels) in start\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/lifecycle.rb:61:in `block in initialize\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/lifecycle.rb:66:in `execute\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/lifecycle.rb:40:in `run_callbacks\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/worker.rb:173:in `block (2 levels) in start\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/worker.rb:172:in `loop\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/worker.rb:172:in `block in start\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/plugins/clear_locks.rb:7:in `block (2 levels) in <class:ClearLocks>\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/lifecycle.rb:79:in `block (2 levels) in add\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/lifecycle.rb:61:in `block in initialize\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/lifecycle.rb:79:in `block in add\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/lifecycle.rb:66:in `execute\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/lifecycle.rb:40:in `run_callbacks\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/worker.rb:171:in `start\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/command.rb:137:in `run\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/command.rb:125:in `block in run_process\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/daemons-1.3.1/lib/daemons/application.rb:275:in `block in start_proc\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/daemons-1.3.1/lib/daemons/daemonize.rb:84:in `call_as_daemon\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/daemons-1.3.1/lib/daemons/application.rb:279:in `start_proc\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/daemons-1.3.1/lib/daemons/application.rb:305:in `start\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/daemons-1.3.1/lib/daemons/application_group.rb:164:in `block (2 levels) in start_all\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/daemons-1.3.1/lib/daemons/application_group.rb:163:in `fork\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/daemons-1.3.1/lib/daemons/application_group.rb:163:in `block in start_all\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/daemons-1.3.1/lib/daemons/application_group.rb:162:in `each\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/daemons-1.3.1/lib/daemons/application_group.rb:162:in `start_all\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/daemons-1.3.1/lib/daemons/controller.rb:66:in `run\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/daemons-1.3.1/lib/daemons.rb:199:in `block in run_proc\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/daemons-1.3.1/lib/daemons/cmdline.rb:121:in `catch_exceptions\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/daemons-1.3.1/lib/daemons.rb:198:in `run_proc\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/command.rb:123:in `run_process\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/command.rb:104:in `block in daemonize\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/command.rb:102:in `times\'\n/home/ubuntu/var/www/marketplace/shared/bundle/ruby/2.6.0/gems/delayed_job-4.1.5/lib/delayed/command.rb:102:in `daemonize\'\nscript/delayed_job:5:in `<main>\'','2021-04-07 14:54:35',NULL,'2021-04-07 14:54:39',NULL,'2021-04-07 14:54:03','2021-04-07 14:54:39','default');
/*!40000 ALTER TABLE `delayed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `domain_setups`
--

DROP TABLE IF EXISTS `domain_setups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `domain_setups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `community_id` bigint(20) DEFAULT NULL,
  `domain` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `error` text,
  `critical_error` tinyint(1) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_domain_setups_on_domain` (`domain`),
  UNIQUE KEY `index_domain_setups_on_community_id` (`community_id`),
  KEY `index_domain_setups_on_state_and_updated_at` (`state`,`updated_at`),
  KEY `index_domain_setups_on_critical_error` (`critical_error`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `domain_setups`
--

LOCK TABLES `domain_setups` WRITE;
/*!40000 ALTER TABLE `domain_setups` DISABLE KEYS */;
/*!40000 ALTER TABLE `domain_setups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emails`
--

DROP TABLE IF EXISTS `emails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `person_id` varchar(255) DEFAULT NULL,
  `community_id` int(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `confirmation_sent_at` datetime DEFAULT NULL,
  `confirmation_token` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `send_notifications` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_emails_on_address_and_community_id` (`address`,`community_id`) USING BTREE,
  KEY `index_emails_on_person_id` (`person_id`) USING BTREE,
  KEY `index_emails_on_address` (`address`) USING BTREE,
  KEY `index_emails_on_community_id` (`community_id`) USING BTREE,
  KEY `index_emails_on_confirmation_token` (`confirmation_token`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emails`
--

LOCK TABLES `emails` WRITE;
/*!40000 ALTER TABLE `emails` DISABLE KEYS */;
INSERT INTO `emails` VALUES (1,'J_vj4wGUENGTsl5t9eYqaw',1,'conor@allotme.co.uk','2021-03-11 12:08:08','2021-03-11 11:12:10','3GeOmwWrEKJCv9Ld','2021-03-11 11:09:19','2021-03-11 12:08:08',1),(2,'QqHfk2xJmsrEgr15rJEtag',1,'ali.hassan.mirzaa@gmail.com','2021-03-11 12:07:08','2021-03-11 12:06:48',NULL,'2021-03-11 12:06:47','2021-03-11 12:07:08',1),(3,'2rzRC_0EtrSL-95zeDPXUQ',1,'ali.hassan.mirzaa+1@gmail.com','2021-03-15 11:51:04','2021-03-15 11:50:43',NULL,'2021-03-15 11:50:42','2021-03-15 11:51:04',1),(4,'ZbiAdyZSEdNbyTvTAmwZeQ',1,'cgallagher@me.com','2021-03-15 12:01:25','2021-03-15 11:59:34',NULL,'2021-03-15 11:59:30','2021-03-15 12:01:25',1),(5,'sbsCuLs1tNTd39ZS4wj8oA',1,'ali.hassan.mirzaa+2@gmail.com',NULL,'2021-04-07 14:52:04','EfpFyp83TSbiV2BA','2021-04-07 13:46:30','2021-04-07 14:52:04',1),(6,'ZYz_0fcKaEOo-jvYDBdvzg',1,'ali.hassan.mirzaa+3@gmail.com',NULL,'2021-04-08 06:53:55','SWwuruHtMqc191/m','2021-04-07 14:54:03','2021-04-08 06:53:55',1),(7,'Nr-eWZ9Hp6hGnGe5wwEPVA',1,'ali.hassan.mirzaa+4@gmail.com','2021-04-09 06:04:50','2021-04-08 06:57:07',NULL,'2021-04-08 06:57:02','2021-04-09 06:04:50',1),(8,'peTqPPRnB9W-q5FnvE6JiA',1,'1.abhishekshelke@gmail.com','2021-04-14 17:57:42','2021-04-14 17:57:29',NULL,'2021-04-14 17:57:26','2021-04-14 17:57:42',1);
/*!40000 ALTER TABLE `emails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `export_task_results`
--

DROP TABLE IF EXISTS `export_task_results`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `export_task_results` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_file_size` int(11) DEFAULT NULL,
  `file_updated_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `export_task_results`
--

LOCK TABLES `export_task_results` WRITE;
/*!40000 ALTER TABLE `export_task_results` DISABLE KEYS */;
/*!40000 ALTER TABLE `export_task_results` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feature_flags`
--

DROP TABLE IF EXISTS `feature_flags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feature_flags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `community_id` int(11) NOT NULL,
  `person_id` varchar(255) DEFAULT NULL,
  `feature` varchar(255) NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_feature_flags_on_community_id_and_person_id` (`community_id`,`person_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feature_flags`
--

LOCK TABLES `feature_flags` WRITE;
/*!40000 ALTER TABLE `feature_flags` DISABLE KEYS */;
/*!40000 ALTER TABLE `feature_flags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedbacks`
--

DROP TABLE IF EXISTS `feedbacks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feedbacks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text,
  `author_id` varchar(255) DEFAULT NULL,
  `url` varchar(2048) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `is_handled` int(11) DEFAULT '0',
  `email` varchar(255) DEFAULT NULL,
  `community_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedbacks`
--

LOCK TABLES `feedbacks` WRITE;
/*!40000 ALTER TABLE `feedbacks` DISABLE KEYS */;
/*!40000 ALTER TABLE `feedbacks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `follower_relationships`
--

DROP TABLE IF EXISTS `follower_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `follower_relationships` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `person_id` varchar(255) NOT NULL,
  `follower_id` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_follower_relationships_on_person_id_and_follower_id` (`person_id`,`follower_id`) USING BTREE,
  KEY `index_follower_relationships_on_follower_id` (`follower_id`) USING BTREE,
  KEY `index_follower_relationships_on_person_id` (`person_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `follower_relationships`
--

LOCK TABLES `follower_relationships` WRITE;
/*!40000 ALTER TABLE `follower_relationships` DISABLE KEYS */;
/*!40000 ALTER TABLE `follower_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invitation_unsubscribes`
--

DROP TABLE IF EXISTS `invitation_unsubscribes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `invitation_unsubscribes` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `community_id` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_invitation_unsubscribes_on_community_id` (`community_id`),
  KEY `index_invitation_unsubscribes_on_email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invitation_unsubscribes`
--

LOCK TABLES `invitation_unsubscribes` WRITE;
/*!40000 ALTER TABLE `invitation_unsubscribes` DISABLE KEYS */;
/*!40000 ALTER TABLE `invitation_unsubscribes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invitations`
--

DROP TABLE IF EXISTS `invitations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `invitations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL,
  `community_id` int(11) DEFAULT NULL,
  `usages_left` int(11) DEFAULT NULL,
  `valid_until` datetime DEFAULT NULL,
  `information` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `inviter_id` varchar(255) DEFAULT NULL,
  `message` text,
  `email` varchar(255) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `index_invitations_on_code` (`code`) USING BTREE,
  KEY `index_invitations_on_inviter_id` (`inviter_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invitations`
--

LOCK TABLES `invitations` WRITE;
/*!40000 ALTER TABLE `invitations` DISABLE KEYS */;
/*!40000 ALTER TABLE `invitations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `landing_page_versions`
--

DROP TABLE IF EXISTS `landing_page_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `landing_page_versions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `community_id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `released` datetime DEFAULT NULL,
  `content` mediumtext NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_landing_page_versions_on_community_id_and_version` (`community_id`,`version`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `landing_page_versions`
--

LOCK TABLES `landing_page_versions` WRITE;
/*!40000 ALTER TABLE `landing_page_versions` DISABLE KEYS */;
INSERT INTO `landing_page_versions` VALUES (1,1,1,NULL,'{\"settings\":{\"marketplace_id\":1,\"locale\":\"en\",\"sitename\":\"allotme\"},\"page\":{\"twitter_handle\":{\"type\":\"marketplace_data\",\"id\":\"twitter_handle\"},\"twitter_image\":{\"type\":\"assets\",\"id\":\"default_hero_background\"},\"facebook_image\":{\"type\":\"assets\",\"id\":\"default_hero_background\"},\"title\":{\"type\":\"marketplace_data\",\"id\":\"page_title\"},\"description\":{\"type\":\"marketplace_data\",\"id\":\"description\"},\"publisher\":{\"type\":\"marketplace_data\",\"id\":\"name\"},\"copyright\":{\"type\":\"marketplace_data\",\"id\":\"name\"},\"facebook_site_name\":{\"type\":\"marketplace_data\",\"id\":\"name\"},\"google_site_verification\":{\"value\":\"CHANGEME\"}},\"sections\":[{\"id\":\"hero\",\"kind\":\"hero\",\"variation\":{\"type\":\"marketplace_data\",\"id\":\"search_type\"},\"title\":{\"type\":\"marketplace_data\",\"id\":\"slogan\"},\"subtitle\":{\"type\":\"marketplace_data\",\"id\":\"description\"},\"background_image\":{\"type\":\"assets\",\"id\":\"default_hero_background\"},\"background_image_variation\":\"dark\",\"search_button\":{\"type\":\"translation\",\"id\":\"search_button\"},\"search_path\":{\"type\":\"path\",\"id\":\"search\"},\"search_placeholder\":{\"type\":\"marketplace_data\",\"id\":\"search_placeholder\"},\"search_location_with_keyword_placeholder\":{\"type\":\"marketplace_data\",\"id\":\"search_location_with_keyword_placeholder\"},\"signup_path\":{\"type\":\"path\",\"id\":\"signup\"},\"signup_button\":{\"type\":\"translation\",\"id\":\"signup_button\"},\"search_button_color\":{\"type\":\"marketplace_data\",\"id\":\"primary_color\"},\"search_button_color_hover\":{\"type\":\"marketplace_data\",\"id\":\"primary_color_darken\"},\"signup_button_color\":{\"type\":\"marketplace_data\",\"id\":\"primary_color\"},\"signup_button_color_hover\":{\"type\":\"marketplace_data\",\"id\":\"primary_color_darken\"},\"cta_button_type\":\"default\",\"button_title\":null,\"button_path\":null},{\"id\":\"footer\",\"kind\":\"footer\",\"theme\":\"logo\",\"social_media_icon_color\":{\"type\":\"marketplace_data\",\"id\":\"primary_color\"},\"social_media_icon_color_hover\":{\"type\":\"marketplace_data\",\"id\":\"primary_color_darken\"},\"links\":[],\"social\":[{\"service\":\"facebook\",\"url\":\"\"},{\"service\":\"twitter\",\"url\":\"\"},{\"service\":\"instagram\",\"url\":\"\"},{\"service\":\"youtube\",\"url\":\"\"},{\"service\":\"googleplus\",\"url\":\"\"},{\"service\":\"linkedin\",\"url\":\"\"},{\"service\":\"pinterest\",\"url\":\"\"},{\"service\":\"soundcloud\",\"url\":\"\"}],\"copyright\":\"\",\"logo\":{\"type\":\"marketplace_data\",\"id\":\"logo\"}}],\"composition\":[{\"section\":{\"type\":\"sections\",\"id\":\"hero\"}},{\"section\":{\"type\":\"sections\",\"id\":\"footer\"}}],\"assets\":[{\"id\":\"default_hero_background\",\"src\":\"default_hero_background.jpg\",\"content_type\":\"image/jpeg\"}]}','2021-03-11 12:14:28','2021-03-11 12:14:28');
/*!40000 ALTER TABLE `landing_page_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `landing_pages`
--

DROP TABLE IF EXISTS `landing_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `landing_pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `community_id` int(11) NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '0',
  `released_version` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_landing_pages_on_community_id` (`community_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `landing_pages`
--

LOCK TABLES `landing_pages` WRITE;
/*!40000 ALTER TABLE `landing_pages` DISABLE KEYS */;
INSERT INTO `landing_pages` VALUES (1,1,0,NULL,'2021-03-11 12:14:28');
/*!40000 ALTER TABLE `landing_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `listing_blocked_dates`
--

DROP TABLE IF EXISTS `listing_blocked_dates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `listing_blocked_dates` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `listing_id` bigint(20) DEFAULT NULL,
  `blocked_at` date DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_listing_blocked_dates_on_listing_id_and_blocked_at` (`listing_id`,`blocked_at`),
  KEY `index_listing_blocked_dates_on_listing_id` (`listing_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `listing_blocked_dates`
--

LOCK TABLES `listing_blocked_dates` WRITE;
/*!40000 ALTER TABLE `listing_blocked_dates` DISABLE KEYS */;
INSERT INTO `listing_blocked_dates` VALUES (1,2,'2021-03-21','2021-03-15 11:51:33','2021-03-15 11:51:33'),(2,2,'2021-03-24','2021-03-15 11:51:33','2021-03-15 11:51:33'),(3,2,'2021-03-25','2021-03-15 11:51:33','2021-03-15 11:51:33'),(4,3,'2021-03-31','2021-03-31 17:47:19','2021-03-31 17:47:19'),(5,3,'2021-04-01','2021-03-31 17:47:19','2021-03-31 17:47:19');
/*!40000 ALTER TABLE `listing_blocked_dates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `listing_followers`
--

DROP TABLE IF EXISTS `listing_followers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `listing_followers` (
  `person_id` varchar(255) DEFAULT NULL,
  `listing_id` int(11) DEFAULT NULL,
  KEY `index_listing_followers_on_listing_id` (`listing_id`) USING BTREE,
  KEY `index_listing_followers_on_person_id` (`person_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `listing_followers`
--

LOCK TABLES `listing_followers` WRITE;
/*!40000 ALTER TABLE `listing_followers` DISABLE KEYS */;
/*!40000 ALTER TABLE `listing_followers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `listing_images`
--

DROP TABLE IF EXISTS `listing_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `listing_images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `listing_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `image_file_name` varchar(255) DEFAULT NULL,
  `image_content_type` varchar(255) DEFAULT NULL,
  `image_file_size` int(11) DEFAULT NULL,
  `image_updated_at` datetime DEFAULT NULL,
  `image_processing` tinyint(1) DEFAULT NULL,
  `image_downloaded` tinyint(1) DEFAULT '0',
  `error` varchar(255) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `author_id` varchar(255) DEFAULT NULL,
  `position` int(11) DEFAULT '0',
  `email_image_file_name` varchar(255) DEFAULT NULL,
  `email_image_content_type` varchar(255) DEFAULT NULL,
  `email_image_file_size` int(11) DEFAULT NULL,
  `email_image_updated_at` datetime DEFAULT NULL,
  `email_hash` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_listing_images_on_listing_id` (`listing_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `listing_images`
--

LOCK TABLES `listing_images` WRITE;
/*!40000 ALTER TABLE `listing_images` DISABLE KEYS */;
INSERT INTO `listing_images` VALUES (1,1,'2021-03-11 12:11:22','2021-03-11 12:11:25','ruby.png','image/png',4866,'2021-03-11 12:11:25',0,1,NULL,300,168,'QqHfk2xJmsrEgr15rJEtag',1,NULL,NULL,NULL,NULL,NULL),(2,2,'2021-03-15 11:50:25','2021-03-15 11:50:27','Messy-Overgrown_Garden.jpg','image/jpeg',702358,'2021-03-15 11:50:26',0,1,NULL,1600,801,'J_vj4wGUENGTsl5t9eYqaw',1,NULL,NULL,NULL,NULL,NULL),(3,2,'2021-03-15 11:50:44','2021-03-15 11:50:50','shutterstock_782776702.jpg','image/jpeg',948430,'2021-03-15 11:50:49',0,1,NULL,1600,1066,'J_vj4wGUENGTsl5t9eYqaw',2,NULL,NULL,NULL,NULL,NULL),(4,2,'2021-03-15 11:51:04','2021-03-15 11:51:06','shutterstock_1098496040.jpg','image/jpeg',835051,'2021-03-15 11:51:05',0,1,NULL,1600,983,'J_vj4wGUENGTsl5t9eYqaw',3,NULL,NULL,NULL,NULL,NULL),(5,3,'2021-03-31 17:46:37','2021-03-31 17:46:38','shutterstock_604906682.jpg','image/jpeg',478305,'2021-03-31 17:46:37',0,1,NULL,1600,1066,'J_vj4wGUENGTsl5t9eYqaw',1,NULL,NULL,NULL,NULL,NULL),(6,4,'2021-03-31 17:54:46','2021-03-31 17:54:50','lawn_mower_edited.jpg','image/jpeg',456209,'2021-03-31 17:54:49',0,1,NULL,1600,1066,'J_vj4wGUENGTsl5t9eYqaw',1,NULL,NULL,NULL,NULL,NULL),(7,5,'2021-03-31 17:55:17','2021-03-31 17:55:21','ruby.png','image/png',4866,'2021-03-31 17:55:21',0,1,NULL,300,168,'QqHfk2xJmsrEgr15rJEtag',1,NULL,NULL,NULL,NULL,NULL),(8,6,'2021-04-01 15:41:27','2021-04-01 15:41:30','stockwell_gp_lawn.jpg','image/jpeg',937841,'2021-04-01 15:41:29',0,1,NULL,1200,1600,'J_vj4wGUENGTsl5t9eYqaw',1,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `listing_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `listing_shapes`
--

DROP TABLE IF EXISTS `listing_shapes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `listing_shapes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `community_id` int(11) NOT NULL,
  `transaction_process_id` int(11) NOT NULL,
  `price_enabled` tinyint(1) NOT NULL,
  `shipping_enabled` tinyint(1) NOT NULL,
  `availability` varchar(32) DEFAULT 'none',
  `name` varchar(255) NOT NULL,
  `name_tr_key` varchar(255) NOT NULL,
  `action_button_tr_key` varchar(255) NOT NULL,
  `sort_priority` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `multicol_index` (`community_id`,`deleted`,`sort_priority`) USING BTREE,
  KEY `index_listing_shapes_on_community_id` (`community_id`) USING BTREE,
  KEY `index_listing_shapes_on_name` (`name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `listing_shapes`
--

LOCK TABLES `listing_shapes` WRITE;
/*!40000 ALTER TABLE `listing_shapes` DISABLE KEYS */;
INSERT INTO `listing_shapes` VALUES (1,1,1,1,0,'none','renting-out-without-online-payment','2260fffd-ec84-4d31-9181-fd5d25c31bd5','9407f5d6-d991-41e5-b807-c7415c15aec1',0,'2021-03-11 11:09:18','2021-03-16 14:40:00',1),(2,1,3,1,0,'none','renting-out-with-online-payment','2724e034-80a4-4e2e-be80-2dc9574a7cab','3e41c184-d61a-4897-bb37-b546454e13d8',0,'2021-03-11 11:09:19','2021-03-31 17:52:36',0);
/*!40000 ALTER TABLE `listing_shapes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `listing_units`
--

DROP TABLE IF EXISTS `listing_units`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `listing_units` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `unit_type` varchar(32) NOT NULL,
  `quantity_selector` varchar(32) NOT NULL,
  `kind` varchar(32) NOT NULL,
  `name_tr_key` varchar(64) DEFAULT NULL,
  `selector_tr_key` varchar(64) DEFAULT NULL,
  `listing_shape_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_listing_units_on_listing_shape_id` (`listing_shape_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `listing_units`
--

LOCK TABLES `listing_units` WRITE;
/*!40000 ALTER TABLE `listing_units` DISABLE KEYS */;
INSERT INTO `listing_units` VALUES (1,'day','day','time',NULL,NULL,1,'2021-03-11 11:09:18','2021-03-11 11:09:18'),(3,'month','number','time',NULL,NULL,2,'2021-03-31 17:52:36','2021-03-31 17:52:36');
/*!40000 ALTER TABLE `listing_units` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `listing_working_time_slots`
--

DROP TABLE IF EXISTS `listing_working_time_slots`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `listing_working_time_slots` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `listing_id` int(11) DEFAULT NULL,
  `week_day` int(11) DEFAULT NULL,
  `from` varchar(255) DEFAULT NULL,
  `till` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_listing_working_time_slots_on_listing_id` (`listing_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `listing_working_time_slots`
--

LOCK TABLES `listing_working_time_slots` WRITE;
/*!40000 ALTER TABLE `listing_working_time_slots` DISABLE KEYS */;
/*!40000 ALTER TABLE `listing_working_time_slots` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `listings`
--

DROP TABLE IF EXISTS `listings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `listings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uuid` binary(16) NOT NULL,
  `community_id` int(11) NOT NULL,
  `author_id` varchar(255) DEFAULT NULL,
  `category_old` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `times_viewed` int(11) DEFAULT '0',
  `language` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updates_email_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `sort_date` datetime DEFAULT NULL,
  `listing_type_old` varchar(255) DEFAULT NULL,
  `description` text,
  `origin` varchar(255) DEFAULT NULL,
  `destination` varchar(255) DEFAULT NULL,
  `valid_until` datetime DEFAULT NULL,
  `delta` tinyint(1) NOT NULL DEFAULT '1',
  `open` tinyint(1) DEFAULT '1',
  `share_type_old` varchar(255) DEFAULT NULL,
  `privacy` varchar(255) DEFAULT 'private',
  `comments_count` int(11) DEFAULT '0',
  `subcategory_old` varchar(255) DEFAULT NULL,
  `old_category_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `share_type_id` int(11) DEFAULT NULL,
  `listing_shape_id` int(11) DEFAULT NULL,
  `transaction_process_id` int(11) DEFAULT NULL,
  `shape_name_tr_key` varchar(255) DEFAULT NULL,
  `action_button_tr_key` varchar(255) DEFAULT NULL,
  `price_cents` int(11) DEFAULT NULL,
  `currency` varchar(255) DEFAULT NULL,
  `quantity` varchar(255) DEFAULT NULL,
  `unit_type` varchar(32) DEFAULT NULL,
  `quantity_selector` varchar(32) DEFAULT NULL,
  `unit_tr_key` varchar(64) DEFAULT NULL,
  `unit_selector_tr_key` varchar(64) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `require_shipping_address` tinyint(1) DEFAULT '0',
  `pickup_enabled` tinyint(1) DEFAULT '0',
  `shipping_price_cents` int(11) DEFAULT NULL,
  `shipping_price_additional_cents` int(11) DEFAULT NULL,
  `availability` varchar(32) DEFAULT 'none',
  `per_hour_ready` tinyint(1) DEFAULT '0',
  `state` varchar(255) DEFAULT 'approved',
  `approval_count` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_listings_on_uuid` (`uuid`),
  KEY `index_listings_on_new_category_id` (`category_id`) USING BTREE,
  KEY `person_listings` (`community_id`,`author_id`) USING BTREE,
  KEY `index_listings_on_community_id` (`community_id`) USING BTREE,
  KEY `index_listings_on_listing_shape_id` (`listing_shape_id`) USING BTREE,
  KEY `index_listings_on_category_id` (`old_category_id`) USING BTREE,
  KEY `index_listings_on_open` (`open`) USING BTREE,
  KEY `index_on_author_id_and_deleted` (`author_id`,`deleted`),
  KEY `community_author_deleted` (`community_id`,`author_id`,`deleted`),
  KEY `index_listings_on_state` (`state`),
  KEY `listings_homepage_query` (`community_id`,`open`,`state`,`deleted`,`valid_until`,`sort_date`),
  KEY `listings_updates_email` (`community_id`,`open`,`state`,`deleted`,`valid_until`,`updates_email_at`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `listings`
--

LOCK TABLES `listings` WRITE;
/*!40000 ALTER TABLE `listings` DISABLE KEYS */;
INSERT INTO `listings` VALUES (1,_binary '\ÎÇb\ÎÄY÷Ç8∞6Ä\0t',1,'QqHfk2xJmsrEgr15rJEtag',NULL,'test',0,NULL,'2021-03-11 12:11:33','2021-03-11 12:11:33','2021-03-11 12:11:33',NULL,'2021-03-11 12:11:33',NULL,'testing','lahore',NULL,NULL,0,0,NULL,'private',0,NULL,NULL,1,NULL,NULL,1,'2260fffd-ec84-4d31-9181-fd5d25c31bd5','9407f5d6-d991-41e5-b807-c7415c15aec1',1000,'GBP',NULL,'day','day',NULL,NULL,0,0,0,NULL,NULL,'none',0,'approved',0),(2,_binary 'ÎÖÑªì®*òÆ∞6Ä\0t',1,'J_vj4wGUENGTsl5t9eYqaw',NULL,'Stockwell Garden',0,NULL,'2021-03-15 11:51:09','2021-03-15 12:13:18','2021-03-15 12:13:18',NULL,'2021-03-15 11:51:09',NULL,'Back garden with lots of space, needs weeding.','SW9 9QB',NULL,NULL,0,1,NULL,'private',0,NULL,NULL,1,NULL,2,3,'2724e034-80a4-4e2e-be80-2dc9574a7cab','3e41c184-d61a-4897-bb37-b546454e13d8',2500,'GBP',NULL,'night','night',NULL,NULL,0,0,0,NULL,NULL,'booking',0,'approved',0),(3,_binary '\ÎíI\rˇ≤TÜ^∞6Ä\0t',1,'J_vj4wGUENGTsl5t9eYqaw',NULL,'Example Garden',0,NULL,'2021-03-31 17:46:43','2021-03-31 17:46:43','2021-03-31 17:53:54',NULL,'2021-03-31 17:46:43',NULL,'Example information goes here','SW4 6LD',NULL,NULL,0,1,NULL,'private',0,NULL,NULL,1,NULL,2,3,'2724e034-80a4-4e2e-be80-2dc9574a7cab','3e41c184-d61a-4897-bb37-b546454e13d8',1000,'GBP',NULL,'night','night',NULL,NULL,1,0,0,NULL,NULL,'booking',0,'approved',0),(4,_binary '\ÎíJ25\…í∞6Ä\0t',1,'J_vj4wGUENGTsl5t9eYqaw',NULL,'Test Garden',0,NULL,'2021-03-31 17:54:53','2021-03-31 17:54:53','2021-03-31 17:54:53',NULL,'2021-03-31 17:54:53',NULL,'Example info','SW4 6DL',NULL,NULL,0,1,NULL,'private',0,NULL,NULL,1,NULL,2,3,'2724e034-80a4-4e2e-be80-2dc9574a7cab','3e41c184-d61a-4897-bb37-b546454e13d8',500,'GBP',NULL,'month','number',NULL,NULL,0,0,0,NULL,NULL,'none',0,'approved',0),(5,_binary '\ÎíJD\ÌˆÜ^∞6Ä\0t',1,'QqHfk2xJmsrEgr15rJEtag',NULL,'Porter-Cable 6-Gallon Air Compressor',0,NULL,'2021-03-31 17:55:24','2021-03-31 17:55:24','2021-04-26 09:00:55',NULL,'2021-03-31 17:55:24',NULL,'testing','lahore',NULL,NULL,0,0,NULL,'private',0,NULL,NULL,1,NULL,2,3,'2724e034-80a4-4e2e-be80-2dc9574a7cab','3e41c184-d61a-4897-bb37-b546454e13d8',10000,'GBP',NULL,'month','number',NULL,NULL,0,0,0,NULL,NULL,'none',0,'approved',0),(6,_binary '\Îì\0ΩttLÆ\‰∞6Ä\0t',1,'J_vj4wGUENGTsl5t9eYqaw',NULL,'Testing Garden',0,NULL,'2021-04-01 15:41:35','2021-04-01 15:41:35','2021-04-01 16:04:29',NULL,'2021-04-01 15:41:35',NULL,'Example testing information','Sw2 0al',NULL,NULL,0,0,NULL,'private',0,NULL,NULL,1,NULL,2,3,'2724e034-80a4-4e2e-be80-2dc9574a7cab','3e41c184-d61a-4897-bb37-b546454e13d8',1500,'GBP',NULL,'month','number',NULL,NULL,0,0,0,NULL,NULL,'none',0,'approved',0);
/*!40000 ALTER TABLE `listings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locations`
--

DROP TABLE IF EXISTS `locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `locations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `latitude` float DEFAULT NULL,
  `longitude` float DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `google_address` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `listing_id` int(11) DEFAULT NULL,
  `person_id` varchar(255) DEFAULT NULL,
  `location_type` varchar(255) DEFAULT NULL,
  `community_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_locations_on_community_id` (`community_id`) USING BTREE,
  KEY `index_locations_on_listing_id` (`listing_id`) USING BTREE,
  KEY `index_locations_on_person_id` (`person_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locations`
--

LOCK TABLES `locations` WRITE;
/*!40000 ALTER TABLE `locations` DISABLE KEYS */;
INSERT INTO `locations` VALUES (1,31.5204,74.3587,'Lahore, Punjab, Pakistan','Lahore, Punjab, Pakistan','2021-03-11 12:11:33','2021-03-11 12:11:33',1,NULL,'origin_loc',NULL),(2,51.4707,-0.120651,'Stockwell Rd, London SW9 9QB, UK','Stockwell Rd, London SW9 9QB, UK','2021-03-15 11:51:09','2021-03-15 11:51:09',2,NULL,'origin_loc',NULL),(3,51.4683,-0.139164,'Larkhall Rise, Clapham Town, London SW4 6LD, UK','Larkhall Rise, Clapham Town, London SW4 6LD, UK','2021-03-31 17:46:43','2021-03-31 17:46:43',3,NULL,'origin_loc',NULL),(4,51.4648,-0.134137,'Voltaire Rd, Clapham Town, London SW4 6DL, UK','Voltaire Rd, Clapham Town, London SW4 6DL, UK','2021-03-31 17:54:53','2021-03-31 17:54:53',4,NULL,'origin_loc',NULL),(5,31.5204,74.3587,'Lahore, Punjab, Pakistan','Lahore, Punjab, Pakistan','2021-03-31 17:55:24','2021-03-31 17:55:24',5,NULL,'origin_loc',NULL),(6,51.4493,-0.1201,'London SW2, UK','London SW2, UK','2021-04-01 15:41:35','2021-04-01 15:41:35',6,NULL,'origin_loc',NULL);
/*!40000 ALTER TABLE `locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marketplace_configurations`
--

DROP TABLE IF EXISTS `marketplace_configurations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `marketplace_configurations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `community_id` int(11) NOT NULL,
  `main_search` varchar(255) NOT NULL DEFAULT 'keyword',
  `distance_unit` varchar(255) NOT NULL DEFAULT 'metric',
  `limit_priority_links` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `limit_search_distance` tinyint(1) NOT NULL DEFAULT '1',
  `display_about_menu` tinyint(1) NOT NULL DEFAULT '1',
  `display_contact_menu` tinyint(1) NOT NULL DEFAULT '1',
  `display_invite_menu` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `index_marketplace_configurations_on_community_id` (`community_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marketplace_configurations`
--

LOCK TABLES `marketplace_configurations` WRITE;
/*!40000 ALTER TABLE `marketplace_configurations` DISABLE KEYS */;
INSERT INTO `marketplace_configurations` VALUES (1,1,'keyword','metric',NULL,'2021-03-11 11:09:19','2021-03-11 11:09:19',0,1,1,1);
/*!40000 ALTER TABLE `marketplace_configurations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marketplace_plans`
--

DROP TABLE IF EXISTS `marketplace_plans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `marketplace_plans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `community_id` int(11) NOT NULL,
  `status` varchar(22) DEFAULT NULL,
  `features` text,
  `member_limit` int(11) DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_marketplace_plans_on_community_id` (`community_id`) USING BTREE,
  KEY `index_marketplace_plans_on_created_at` (`created_at`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marketplace_plans`
--

LOCK TABLES `marketplace_plans` WRITE;
/*!40000 ALTER TABLE `marketplace_plans` DISABLE KEYS */;
/*!40000 ALTER TABLE `marketplace_plans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marketplace_sender_emails`
--

DROP TABLE IF EXISTS `marketplace_sender_emails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `marketplace_sender_emails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `community_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `verification_status` varchar(32) NOT NULL,
  `verification_requested_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_marketplace_sender_emails_on_community_id` (`community_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marketplace_sender_emails`
--

LOCK TABLES `marketplace_sender_emails` WRITE;
/*!40000 ALTER TABLE `marketplace_sender_emails` DISABLE KEYS */;
INSERT INTO `marketplace_sender_emails` VALUES (1,1,'AllotMe','info@allotme.co.uk','verified',NULL,'2021-03-14 16:32:51','2021-03-14 16:32:51');
/*!40000 ALTER TABLE `marketplace_sender_emails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marketplace_setup_steps`
--

DROP TABLE IF EXISTS `marketplace_setup_steps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `marketplace_setup_steps` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `community_id` int(11) NOT NULL,
  `slogan_and_description` tinyint(1) NOT NULL DEFAULT '0',
  `cover_photo` tinyint(1) NOT NULL DEFAULT '0',
  `filter` tinyint(1) NOT NULL DEFAULT '0',
  `paypal` tinyint(1) NOT NULL DEFAULT '0',
  `listing` tinyint(1) NOT NULL DEFAULT '0',
  `invitation` tinyint(1) NOT NULL DEFAULT '0',
  `stripe` tinyint(1) DEFAULT '0',
  `payment` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_marketplace_setup_steps_on_community_id` (`community_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marketplace_setup_steps`
--

LOCK TABLES `marketplace_setup_steps` WRITE;
/*!40000 ALTER TABLE `marketplace_setup_steps` DISABLE KEYS */;
INSERT INTO `marketplace_setup_steps` VALUES (1,1,0,0,0,0,1,0,0,1);
/*!40000 ALTER TABLE `marketplace_setup_steps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marketplace_trials`
--

DROP TABLE IF EXISTS `marketplace_trials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `marketplace_trials` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `community_id` int(11) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_marketplace_trials_on_community_id` (`community_id`) USING BTREE,
  KEY `index_marketplace_trials_on_created_at` (`created_at`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marketplace_trials`
--

LOCK TABLES `marketplace_trials` WRITE;
/*!40000 ALTER TABLE `marketplace_trials` DISABLE KEYS */;
/*!40000 ALTER TABLE `marketplace_trials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_link_translations`
--

DROP TABLE IF EXISTS `menu_link_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_link_translations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_link_id` int(11) DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_menu_link_translations_on_menu_link_id` (`menu_link_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_link_translations`
--

LOCK TABLES `menu_link_translations` WRITE;
/*!40000 ALTER TABLE `menu_link_translations` DISABLE KEYS */;
INSERT INTO `menu_link_translations` VALUES (1,1,'en','https://www.allotme.co.uk/new-greenfingers','i want a plot','2021-03-11 12:58:32','2021-03-11 12:58:32'),(2,2,'en','https://www.allotme.co.uk/growathome','GrowPod','2021-03-11 12:58:32','2021-03-11 12:58:32'),(3,3,'en','https://www.allotme.co.uk/growing','Growing','2021-04-16 14:30:38','2021-04-16 14:30:38');
/*!40000 ALTER TABLE `menu_link_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_links`
--

DROP TABLE IF EXISTS `menu_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_links` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `community_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `sort_priority` int(11) DEFAULT '0',
  `entity_type` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `index_menu_links_on_community_and_sort` (`community_id`,`sort_priority`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_links`
--

LOCK TABLES `menu_links` WRITE;
/*!40000 ALTER TABLE `menu_links` DISABLE KEYS */;
INSERT INTO `menu_links` VALUES (1,1,'2021-03-11 12:58:32','2021-03-11 12:58:32',0,0),(2,1,'2021-03-11 12:58:32','2021-03-11 12:58:32',1,0),(3,1,'2021-04-16 14:30:38','2021-04-16 14:30:38',2,0);
/*!40000 ALTER TABLE `menu_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mercury_images`
--

DROP TABLE IF EXISTS `mercury_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mercury_images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image_file_name` varchar(255) DEFAULT NULL,
  `image_content_type` varchar(255) DEFAULT NULL,
  `image_file_size` int(11) DEFAULT NULL,
  `image_updated_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mercury_images`
--

LOCK TABLES `mercury_images` WRITE;
/*!40000 ALTER TABLE `mercury_images` DISABLE KEYS */;
/*!40000 ALTER TABLE `mercury_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sender_id` varchar(255) DEFAULT NULL,
  `content` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `conversation_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_messages_on_conversation_id` (`conversation_id`) USING BTREE,
  KEY `index_messages_on_sender_id` (`sender_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (1,'2rzRC_0EtrSL-95zeDPXUQ','Hello','2021-03-15 11:51:35','2021-03-15 11:51:35',1),(2,'2rzRC_0EtrSL-95zeDPXUQ','hello I am here','2021-03-15 11:57:19','2021-03-15 11:57:19',1),(3,'ZbiAdyZSEdNbyTvTAmwZeQ','Hello, what direction does your garden face?','2021-03-15 12:01:50','2021-03-15 12:01:50',2),(4,'J_vj4wGUENGTsl5t9eYqaw','Hello there, it is South East facing, and get\'s lots of sunlight in the afternoon.','2021-03-15 12:05:29','2021-03-15 12:05:29',2),(5,'ZbiAdyZSEdNbyTvTAmwZeQ','hello can i have your space\r\n','2021-04-01 15:42:32','2021-04-01 15:42:32',3),(6,'J_vj4wGUENGTsl5t9eYqaw','yes of course','2021-04-01 15:43:01','2021-04-01 15:43:01',3),(7,'ZbiAdyZSEdNbyTvTAmwZeQ','thanks','2021-04-01 16:02:11','2021-04-01 16:02:11',4);
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `monthly_subscriptions`
--

DROP TABLE IF EXISTS `monthly_subscriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `monthly_subscriptions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `listing_id` int(11) DEFAULT NULL,
  `listing_uuid` varchar(255) DEFAULT NULL,
  `person_id` varchar(255) DEFAULT NULL,
  `person_uuid` varchar(255) DEFAULT NULL,
  `transaction_opts` json DEFAULT NULL,
  `gateway_fields` json DEFAULT NULL,
  `invoice_date` date DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `host_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `monthly_subscriptions`
--

LOCK TABLES `monthly_subscriptions` WRITE;
/*!40000 ALTER TABLE `monthly_subscriptions` DISABLE KEYS */;
INSERT INTO `monthly_subscriptions` VALUES (1,6,'bd74744c-9300-11eb-aee4-06b036800074','ZbiAdyZSEdNbyTvTAmwZeQ','e6413dca-8585-11eb-98ae-06b036800074','{\"content\": \"\", \"unit_type\": \"month\", \"listing_id\": 6, \"starter_id\": \"ZbiAdyZSEdNbyTvTAmwZeQ\", \"unit_price\": {\"bank\": {\"store\": {\"index\": {}, \"mutex\": {}, \"options\": {}, \"in_transaction\": false}, \"rounding_method\": null}, \"currency\": {\"id\": \"gbp\", \"name\": \"British Pound\", \"symbol\": \"¬£\", \"subunit\": \"Penny\", \"iso_code\": \"GBP\", \"priority\": 3, \"html_entity\": \"&#x00A3;\", \"iso_numeric\": \"826\", \"decimal_mark\": \".\", \"symbol_first\": true, \"subunit_to_unit\": 100, \"alternate_symbols\": [], \"disambiguate_symbol\": null, \"thousands_separator\": \",\", \"smallest_denomination\": 1}, \"fractional\": \"1500.0\"}, \"unit_tr_key\": null, \"availability\": \"none\", \"community_id\": 1, \"listing_uuid\": {\"nodes\": [6, 176, 54, 128, 0, 116], \"string\": \"bd74744c-9300-11eb-aee4-06b036800074\", \"time_low\": 3178525772, \"time_mid\": 37632, \"clock_seq_low\": 228, \"time_hi_and_version\": 4587, \"clock_seq_hi_and_reserved\": 174}, \"starter_uuid\": {\"nodes\": [6, 176, 54, 128, 0, 116], \"time_low\": 3863035338, \"time_mid\": 34181, \"clock_seq_low\": 174, \"time_hi_and_version\": 4587, \"clock_seq_hi_and_reserved\": 152}, \"listing_title\": \"Testing Garden\", \"booking_fields\": {\"end_on\": null, \"end_time\": null, \"per_hour\": null, \"start_on\": null, \"start_time\": null}, \"community_uuid\": {\"nodes\": [6, 176, 54, 128, 0, 116], \"time_low\": 964070024, \"time_mid\": 33370, \"clock_seq_low\": 181, \"time_hi_and_version\": 4587, \"clock_seq_hi_and_reserved\": 164}, \"delivery_method\": \"none\", \"payment_gateway\": \"stripe\", \"payment_process\": \"preauthorize\", \"listing_quantity\": 1, \"listing_author_id\": \"J_vj4wGUENGTsl5t9eYqaw\", \"listing_author_uuid\": {\"nodes\": [6, 176, 54, 128, 0, 116], \"time_low\": 968359934, \"time_mid\": 33370, \"clock_seq_low\": 181, \"time_hi_and_version\": 4587, \"clock_seq_hi_and_reserved\": 164}, \"unit_selector_tr_key\": null}','{\"service_name\": \"AllotMe\", \"stripe_email\": \"cgallagher@me.com\", \"stripe_token\": null, \"shipping_address\": null, \"stripe_payment_method_id\": \"pm_1IbSxuFGPNuEjskLDmUyA90g\"}','2021-04-01','2021-04-01 16:01:50','2021-04-01 16:01:50',NULL);
/*!40000 ALTER TABLE `monthly_subscriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_permissions`
--

DROP TABLE IF EXISTS `order_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `paypal_account_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `request_token` varchar(255) DEFAULT NULL,
  `paypal_username_to` varchar(255) NOT NULL,
  `scope` varchar(255) DEFAULT NULL,
  `verification_code` varchar(255) DEFAULT NULL,
  `onboarding_id` varchar(36) DEFAULT NULL,
  `permissions_granted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_order_permissions_on_paypal_account_id` (`paypal_account_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_permissions`
--

LOCK TABLES `order_permissions` WRITE;
/*!40000 ALTER TABLE `order_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `participations`
--

DROP TABLE IF EXISTS `participations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `participations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `person_id` varchar(255) DEFAULT NULL,
  `conversation_id` int(11) DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT '0',
  `is_starter` tinyint(1) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `last_sent_at` datetime DEFAULT NULL,
  `last_received_at` datetime DEFAULT NULL,
  `feedback_skipped` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `index_participations_on_conversation_id` (`conversation_id`) USING BTREE,
  KEY `index_participations_on_person_id` (`person_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `participations`
--

LOCK TABLES `participations` WRITE;
/*!40000 ALTER TABLE `participations` DISABLE KEYS */;
INSERT INTO `participations` VALUES (1,'QqHfk2xJmsrEgr15rJEtag',1,1,0,'2021-03-15 11:51:35','2021-03-15 11:57:19',NULL,'2021-03-15 11:57:19',0),(2,'2rzRC_0EtrSL-95zeDPXUQ',1,1,1,'2021-03-15 11:51:35','2021-03-15 11:57:19','2021-03-15 11:57:19',NULL,0),(3,'J_vj4wGUENGTsl5t9eYqaw',2,1,0,'2021-03-15 12:01:50','2021-03-15 12:05:30','2021-03-15 12:05:29','2021-03-15 12:01:50',0),(4,'ZbiAdyZSEdNbyTvTAmwZeQ',2,1,1,'2021-03-15 12:01:50','2021-03-15 12:05:30','2021-03-15 12:01:50','2021-03-15 12:05:29',0),(5,'J_vj4wGUENGTsl5t9eYqaw',3,1,0,'2021-04-01 15:42:32','2021-04-01 15:43:01','2021-04-01 15:43:01','2021-04-01 15:42:32',0),(6,'ZbiAdyZSEdNbyTvTAmwZeQ',3,1,1,'2021-04-01 15:42:32','2021-04-01 15:43:01','2021-04-01 15:42:32','2021-04-01 15:43:01',0),(7,'J_vj4wGUENGTsl5t9eYqaw',4,1,0,'2021-04-01 16:01:50','2021-04-01 16:02:11',NULL,'2021-04-01 16:02:11',0),(8,'ZbiAdyZSEdNbyTvTAmwZeQ',4,1,1,'2021-04-01 16:01:50','2021-04-01 16:02:11','2021-04-01 16:02:11',NULL,0);
/*!40000 ALTER TABLE `participations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_settings`
--

DROP TABLE IF EXISTS `payment_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `active` tinyint(1) NOT NULL,
  `community_id` int(11) NOT NULL,
  `payment_gateway` varchar(64) DEFAULT NULL,
  `payment_process` varchar(64) DEFAULT NULL,
  `commission_from_seller` int(11) DEFAULT NULL,
  `minimum_price_cents` int(11) DEFAULT NULL,
  `minimum_price_currency` varchar(3) DEFAULT NULL,
  `minimum_transaction_fee_cents` int(11) DEFAULT NULL,
  `minimum_transaction_fee_currency` varchar(3) DEFAULT NULL,
  `confirmation_after_days` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `api_client_id` varchar(255) DEFAULT NULL,
  `api_private_key` varchar(255) DEFAULT NULL,
  `api_publishable_key` varchar(255) DEFAULT NULL,
  `api_verified` tinyint(1) DEFAULT NULL,
  `api_visible_private_key` varchar(255) DEFAULT NULL,
  `api_country` varchar(255) DEFAULT NULL,
  `commission_from_buyer` int(11) DEFAULT NULL,
  `minimum_buyer_transaction_fee_cents` int(11) DEFAULT NULL,
  `minimum_buyer_transaction_fee_currency` varchar(3) DEFAULT NULL,
  `key_encryption_padding` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `index_payment_settings_on_community_id` (`community_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_settings`
--

LOCK TABLES `payment_settings` WRITE;
/*!40000 ALTER TABLE `payment_settings` DISABLE KEYS */;
INSERT INTO `payment_settings` VALUES (1,1,1,'stripe','preauthorize',15,500,NULL,75,'GBP',14,'2021-03-15 10:43:36','2021-03-16 08:01:06',NULL,'ISZ1O02hBMOx+N/7NWD7w7TvucUx7KFHguiQacRdY2JTofi1TO9nmj3QvMIM5SUKwidXRWkF/bYDLjLhoQlY51HFeTXbQZIXYCQDkzbMo5b703UEmta+mvOScgVrtZkI7DehjLQQ41OGxS+p9h9sChGgWt+Y38PDcOJEC36cDzY=','pk_live_444VTRmfZNkrtjG71ZfORrop00BfPpHE4c',1,'sk_live*********************GxuS',NULL,NULL,0,'GBP',1);
/*!40000 ALTER TABLE `payment_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paypal_accounts`
--

DROP TABLE IF EXISTS `paypal_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paypal_accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `person_id` varchar(255) DEFAULT NULL,
  `community_id` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `payer_id` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `active` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `index_paypal_accounts_on_community_id` (`community_id`) USING BTREE,
  KEY `index_paypal_accounts_on_payer_id` (`payer_id`) USING BTREE,
  KEY `index_paypal_accounts_on_person_id` (`person_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paypal_accounts`
--

LOCK TABLES `paypal_accounts` WRITE;
/*!40000 ALTER TABLE `paypal_accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `paypal_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paypal_ipn_messages`
--

DROP TABLE IF EXISTS `paypal_ipn_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paypal_ipn_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `body` text,
  `status` varchar(64) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paypal_ipn_messages`
--

LOCK TABLES `paypal_ipn_messages` WRITE;
/*!40000 ALTER TABLE `paypal_ipn_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `paypal_ipn_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paypal_payments`
--

DROP TABLE IF EXISTS `paypal_payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paypal_payments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `community_id` int(11) NOT NULL,
  `transaction_id` int(11) NOT NULL,
  `payer_id` varchar(64) NOT NULL,
  `receiver_id` varchar(64) NOT NULL,
  `merchant_id` varchar(255) NOT NULL,
  `order_id` varchar(64) DEFAULT NULL,
  `order_date` datetime DEFAULT NULL,
  `currency` varchar(8) NOT NULL,
  `order_total_cents` int(11) DEFAULT NULL,
  `authorization_id` varchar(64) DEFAULT NULL,
  `authorization_date` datetime DEFAULT NULL,
  `authorization_expires_date` datetime DEFAULT NULL,
  `authorization_total_cents` int(11) DEFAULT NULL,
  `payment_id` varchar(64) DEFAULT NULL,
  `payment_date` datetime DEFAULT NULL,
  `payment_total_cents` int(11) DEFAULT NULL,
  `fee_total_cents` int(11) DEFAULT NULL,
  `payment_status` varchar(64) NOT NULL,
  `pending_reason` varchar(64) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `commission_payment_id` varchar(64) DEFAULT NULL,
  `commission_payment_date` datetime DEFAULT NULL,
  `commission_status` varchar(64) NOT NULL DEFAULT 'not_charged',
  `commission_pending_reason` varchar(64) DEFAULT NULL,
  `commission_total_cents` int(11) DEFAULT NULL,
  `commission_fee_total_cents` int(11) DEFAULT NULL,
  `commission_retry_count` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_paypal_payments_on_transaction_id` (`transaction_id`) USING BTREE,
  UNIQUE KEY `index_paypal_payments_on_authorization_id` (`authorization_id`) USING BTREE,
  UNIQUE KEY `index_paypal_payments_on_order_id` (`order_id`) USING BTREE,
  KEY `index_paypal_payments_on_community_id` (`community_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paypal_payments`
--

LOCK TABLES `paypal_payments` WRITE;
/*!40000 ALTER TABLE `paypal_payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `paypal_payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paypal_process_tokens`
--

DROP TABLE IF EXISTS `paypal_process_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paypal_process_tokens` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `process_token` varchar(64) NOT NULL,
  `community_id` int(11) NOT NULL,
  `transaction_id` int(11) NOT NULL,
  `op_completed` tinyint(1) NOT NULL DEFAULT '0',
  `op_name` varchar(64) NOT NULL,
  `op_input` text,
  `op_output` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_paypal_process_tokens_on_process_token` (`process_token`) USING BTREE,
  UNIQUE KEY `index_paypal_process_tokens_on_transaction` (`transaction_id`,`community_id`,`op_name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paypal_process_tokens`
--

LOCK TABLES `paypal_process_tokens` WRITE;
/*!40000 ALTER TABLE `paypal_process_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `paypal_process_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paypal_refunds`
--

DROP TABLE IF EXISTS `paypal_refunds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paypal_refunds` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `paypal_payment_id` int(11) DEFAULT NULL,
  `currency` varchar(8) DEFAULT NULL,
  `payment_total_cents` int(11) DEFAULT NULL,
  `fee_total_cents` int(11) DEFAULT NULL,
  `refunding_id` varchar(64) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_paypal_refunds_on_refunding_id` (`refunding_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paypal_refunds`
--

LOCK TABLES `paypal_refunds` WRITE;
/*!40000 ALTER TABLE `paypal_refunds` DISABLE KEYS */;
/*!40000 ALTER TABLE `paypal_refunds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paypal_tokens`
--

DROP TABLE IF EXISTS `paypal_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paypal_tokens` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `community_id` int(11) NOT NULL,
  `token` varchar(64) DEFAULT NULL,
  `transaction_id` int(11) DEFAULT NULL,
  `payment_action` varchar(32) DEFAULT NULL,
  `merchant_id` varchar(255) NOT NULL,
  `receiver_id` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `item_name` varchar(255) DEFAULT NULL,
  `item_quantity` int(11) DEFAULT NULL,
  `item_price_cents` int(11) DEFAULT NULL,
  `currency` varchar(8) DEFAULT NULL,
  `express_checkout_url` varchar(255) DEFAULT NULL,
  `shipping_total_cents` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_paypal_tokens_on_token` (`token`) USING BTREE,
  KEY `index_paypal_tokens_on_community_id` (`community_id`) USING BTREE,
  KEY `index_paypal_tokens_on_transaction_id` (`transaction_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paypal_tokens`
--

LOCK TABLES `paypal_tokens` WRITE;
/*!40000 ALTER TABLE `paypal_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `paypal_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `people`
--

DROP TABLE IF EXISTS `people`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `people` (
  `id` varchar(22) NOT NULL,
  `uuid` binary(16) NOT NULL,
  `community_id` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `is_admin` int(11) DEFAULT '0',
  `locale` varchar(255) DEFAULT 'fi',
  `preferences` text,
  `active_days_count` int(11) DEFAULT '0',
  `last_page_load_date` datetime DEFAULT NULL,
  `test_group_number` int(11) DEFAULT '1',
  `username` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `encrypted_password` varchar(255) NOT NULL DEFAULT '',
  `legacy_encrypted_password` varchar(255) DEFAULT NULL,
  `reset_password_token` varchar(255) DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) DEFAULT NULL,
  `last_sign_in_ip` varchar(255) DEFAULT NULL,
  `password_salt` varchar(255) DEFAULT NULL,
  `given_name` varchar(255) DEFAULT NULL,
  `family_name` varchar(255) DEFAULT NULL,
  `display_name` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `description` text,
  `image_file_name` varchar(255) DEFAULT NULL,
  `image_content_type` varchar(255) DEFAULT NULL,
  `image_file_size` int(11) DEFAULT NULL,
  `image_updated_at` datetime DEFAULT NULL,
  `image_processing` tinyint(1) DEFAULT NULL,
  `facebook_id` varchar(255) DEFAULT NULL,
  `authentication_token` varchar(255) DEFAULT NULL,
  `community_updates_last_sent_at` datetime DEFAULT NULL,
  `min_days_between_community_updates` int(11) DEFAULT '1',
  `deleted` tinyint(1) DEFAULT '0',
  `cloned_from` varchar(22) DEFAULT NULL,
  `google_oauth2_id` varchar(255) DEFAULT NULL,
  `linkedin_id` varchar(255) DEFAULT NULL,
  UNIQUE KEY `index_people_on_username_and_community_id` (`username`,`community_id`) USING BTREE,
  UNIQUE KEY `index_people_on_uuid` (`uuid`),
  UNIQUE KEY `index_people_on_email` (`email`) USING BTREE,
  UNIQUE KEY `index_people_on_facebook_id_and_community_id` (`facebook_id`,`community_id`) USING BTREE,
  UNIQUE KEY `index_people_on_reset_password_token` (`reset_password_token`) USING BTREE,
  KEY `index_people_on_authentication_token` (`authentication_token`) USING BTREE,
  KEY `index_people_on_community_id` (`community_id`) USING BTREE,
  KEY `index_people_on_facebook_id` (`facebook_id`) USING BTREE,
  KEY `index_people_on_id` (`id`) USING BTREE,
  KEY `index_people_on_username` (`username`) USING BTREE,
  KEY `index_people_on_google_oauth2_id` (`google_oauth2_id`),
  KEY `index_people_on_community_id_and_google_oauth2_id` (`community_id`,`google_oauth2_id`),
  KEY `index_people_on_linkedin_id` (`linkedin_id`),
  KEY `index_people_on_community_id_and_linkedin_id` (`community_id`,`linkedin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `people`
--

LOCK TABLES `people` WRITE;
/*!40000 ALTER TABLE `people` DISABLE KEYS */;
INSERT INTO `people` VALUES ('QqHfk2xJmsrEgr15rJEtag',_binary '\ÎÇb@˛Hà≠N∞6Ä\0t',1,'2021-03-11 12:06:47','2021-03-11 12:07:39',1,'en','---\nemail_about_new_messages: true\nemail_about_new_comments_to_own_listing: true\nemail_when_conversation_accepted: true\nemail_when_conversation_rejected: true\nemail_about_new_received_testimonials: true\nemail_about_confirm_reminders: true\nemail_about_testimonial_reminders: true\nemail_about_completed_transactions: true\nemail_about_new_payments: true\nemail_about_new_listings_by_followed_people: true\nemail_listing_new_comment: true\nemail_listing_updated: true\nemail_from_admins: true\n',0,NULL,4,'alih',NULL,'$2a$10$.iu53xtl1rsauS955QuV9.I1NBj9rXSha3gkZNpq630J.DKvSh4Ei',NULL,NULL,NULL,NULL,1,'2021-03-11 12:06:47','2021-03-11 12:06:47','198.16.66.100','198.16.66.100',NULL,'ali','hassan',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,7,0,NULL,NULL,NULL),('2rzRC_0EtrSL-95zeDPXUQ',_binary 'ÎÖÑ´Xê•\Ë∞6Ä\0t',1,'2021-03-15 11:50:42','2021-03-15 11:50:42',0,'en','---\nemail_about_new_messages: true\nemail_about_new_comments_to_own_listing: true\nemail_when_conversation_accepted: true\nemail_when_conversation_rejected: true\nemail_about_new_received_testimonials: true\nemail_about_confirm_reminders: true\nemail_about_testimonial_reminders: true\nemail_about_completed_transactions: true\nemail_about_new_payments: true\nemail_about_new_listings_by_followed_people: true\nemail_listing_new_comment: true\nemail_listing_updated: true\nemail_from_admins: true\n',0,NULL,4,'alih1',NULL,'$2a$10$M3sx1Kbfc8nq.KLxTjNmXeCcN11tt3HTf4ZLgbN37byTJC6TL67x2',NULL,NULL,NULL,NULL,1,'2021-03-15 11:50:42','2021-03-15 11:50:42','110.36.201.9','110.36.201.9',NULL,'ali','hassan',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,7,0,NULL,NULL,NULL),('sbsCuLs1tNTd39ZS4wj8oA',_binary 'Îóß®eëfã∞6Ä\0t',1,'2021-04-07 13:46:30','2021-04-07 13:46:30',0,'en','---\nemail_about_new_messages: true\nemail_about_new_comments_to_own_listing: true\nemail_when_conversation_accepted: true\nemail_when_conversation_rejected: true\nemail_about_new_received_testimonials: true\nemail_about_confirm_reminders: true\nemail_about_testimonial_reminders: true\nemail_about_completed_transactions: true\nemail_about_new_payments: true\nemail_about_new_listings_by_followed_people: true\nemail_listing_new_comment: true\nemail_listing_updated: true\nemail_from_admins: true\n',0,NULL,2,'alih2',NULL,'$2a$10$GUEK2tuG/a10M/82x.Dr8ulYkA8DhQcrZUF0wx8foC10kFdlTWvny',NULL,NULL,NULL,NULL,1,'2021-04-07 13:46:30','2021-04-07 13:46:30','198.16.76.69','198.16.76.69',NULL,'ali','hassan',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,7,0,NULL,NULL,NULL),('ZYz_0fcKaEOo-jvYDBdvzg',_binary 'Îó±NßÑµû∞6Ä\0t',1,'2021-04-07 14:54:03','2021-04-07 14:54:03',0,'en','---\nemail_about_new_messages: true\nemail_about_new_comments_to_own_listing: true\nemail_when_conversation_accepted: true\nemail_when_conversation_rejected: true\nemail_about_new_received_testimonials: true\nemail_about_confirm_reminders: true\nemail_about_testimonial_reminders: true\nemail_about_completed_transactions: true\nemail_about_new_payments: true\nemail_about_new_listings_by_followed_people: true\nemail_listing_new_comment: true\nemail_listing_updated: true\nemail_from_admins: true\n',0,NULL,3,'alih3',NULL,'$2a$10$glFUlvEZAa3096T9.kyNf.87wn/W4Oury8uGBPMunt2GWQYzGWpbq',NULL,NULL,NULL,NULL,1,'2021-04-07 14:54:03','2021-04-07 14:54:03','198.16.76.69','198.16.76.69',NULL,'ali','hassan',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,7,0,NULL,NULL,NULL),('Nr-eWZ9Hp6hGnGe5wwEPVA',_binary '\Îò7ü\“\Ëñ\Ÿ∞6Ä\0t',1,'2021-04-08 06:57:02','2021-04-08 06:57:02',0,'en','---\nemail_about_new_messages: true\nemail_about_new_comments_to_own_listing: true\nemail_when_conversation_accepted: true\nemail_when_conversation_rejected: true\nemail_about_new_received_testimonials: true\nemail_about_confirm_reminders: true\nemail_about_testimonial_reminders: true\nemail_about_completed_transactions: true\nemail_about_new_payments: true\nemail_about_new_listings_by_followed_people: true\nemail_listing_new_comment: true\nemail_listing_updated: true\nemail_from_admins: true\n',0,NULL,3,'alih4',NULL,'$2a$10$zBB2kjgt.2e2DHYTq4A5O.UZ3eVvj50vAU821ET0EG1RBjsmWoh0u',NULL,NULL,NULL,NULL,1,'2021-04-08 06:57:02','2021-04-08 06:57:02','198.16.66.99','198.16.66.99',NULL,'ali','hassaan',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,7,0,NULL,NULL,NULL),('J_vj4wGUENGTsl5t9eYqaw',_binary '\ÎÇZ9∑ˇ˛§µ∞6Ä\0t',1,'2021-03-11 11:09:19','2021-04-26 10:21:46',0,'en','---\nemail_about_new_messages: true\nemail_about_new_comments_to_own_listing: true\nemail_when_conversation_accepted: true\nemail_when_conversation_rejected: true\nemail_about_new_received_testimonials: true\nemail_about_confirm_reminders: true\nemail_about_testimonial_reminders: true\nemail_about_completed_transactions: true\nemail_about_new_payments: true\nemail_about_new_listings_by_followed_people: true\nemail_listing_new_comment: true\nemail_listing_updated: true\nemail_from_admins: true\n',0,NULL,3,'conorg',NULL,'$2a$10$eiZk6BbG3rfmZDXuG4Ktde4vL0Qncd6.G0fWbuxIfS5k2w9LPwK7u',NULL,NULL,NULL,NULL,29,'2021-04-26 10:21:46','2021-04-26 09:06:19','198.16.70.27','84.67.110.170',NULL,'Conor','Gallagher','','','','GettyImages-887815620.jpg','image/jpeg',63642,'2021-03-24 13:50:51',0,NULL,NULL,NULL,7,0,NULL,NULL,NULL),('ZbiAdyZSEdNbyTvTAmwZeQ',_binary 'ÎÖÖ\ÊA= òÆ∞6Ä\0t',1,'2021-03-15 11:59:30','2021-04-26 11:20:14',0,'en','---\nemail_about_new_messages: true\nemail_about_new_comments_to_own_listing: true\nemail_when_conversation_accepted: true\nemail_when_conversation_rejected: true\nemail_about_new_received_testimonials: true\nemail_about_confirm_reminders: true\nemail_about_testimonial_reminders: true\nemail_about_completed_transactions: true\nemail_about_new_payments: true\nemail_about_new_listings_by_followed_people: true\nemail_listing_new_comment: true\nemail_listing_updated: true\nemail_from_admins: true\n',0,NULL,3,'examplen',NULL,'$2a$10$loHrwpNQpjFZeW.I7TC7cu.QQUG7TT051eq5BKKD6wJZHBg/Qmu3a',NULL,NULL,NULL,NULL,13,'2021-04-26 11:20:14','2021-04-26 09:06:58','198.16.70.27','84.67.110.170',NULL,'Example','Name',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,7,0,NULL,NULL,NULL),('peTqPPRnB9W-q5FnvE6JiA',_binary '\ÎùJ\ﬂx[@é∫∞6Ä\0t',1,'2021-04-14 17:57:26','2021-04-14 17:57:26',0,'en','---\nemail_about_new_messages: true\nemail_about_new_comments_to_own_listing: true\nemail_when_conversation_accepted: true\nemail_when_conversation_rejected: true\nemail_about_new_received_testimonials: true\nemail_about_confirm_reminders: true\nemail_about_testimonial_reminders: true\nemail_about_completed_transactions: true\nemail_about_new_payments: true\nemail_about_new_listings_by_followed_people: true\nemail_listing_new_comment: true\nemail_listing_updated: true\nemail_from_admins: true\n',0,NULL,4,'nan',NULL,'$2a$10$D64oLdNz/obpEZosEBDLBubrgzE3.COzeiQhulFwUH/7rO0hDurn6',NULL,NULL,NULL,NULL,1,'2021-04-14 17:57:26','2021-04-14 17:57:26','182.70.45.144','182.70.45.144',NULL,'NA','NA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,7,0,NULL,NULL,NULL);
/*!40000 ALTER TABLE `people` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20080806070738'),('20080807071903'),('20080807080513'),('20080808095031'),('20080815075550'),('20080818091109'),('20080818092139'),('20080821103835'),('20080825064927'),('20080825114546'),('20080828104013'),('20080828104239'),('20080919122825'),('20080925100643'),('20080925100743'),('20080925103547'),('20080925103759'),('20080925112423'),('20080925114309'),('20080929102121'),('20081008115110'),('20081009160751'),('20081010114150'),('20081024154431'),('20081024182346'),('20081024183444'),('20081103092143'),('20081104070403'),('20081118145857'),('20081121084337'),('20081202140109'),('20081205142238'),('20081215145238'),('20081216060503'),('20090119114525'),('20090218112317'),('20090219094209'),('20090225073742'),('20090323121824'),('20090330064443'),('20090330070210'),('20090330072036'),('20090401181848'),('20090401184511'),('20090401185039'),('20090402144456'),('20090403093157'),('20090406081353'),('20090414142556'),('20090415085812'),('20090415130553'),('20090415131023'),('20090424093506'),('20090424100145'),('20090618112730'),('20090629113838'),('20090629131727'),('20090701065350'),('20090701110931'),('20090713130351'),('20090729124418'),('20090730093917'),('20090730094216'),('20090731134028'),('20090821075949'),('20090904120242'),('20090907155717'),('20091006112446'),('20091028095545'),('20091028131201'),('20091109161516'),('20100322132547'),('20100505110646'),('20100707105549'),('20100721120037'),('20100721123825'),('20100721124444'),('20100726071811'),('20100727102551'),('20100727103659'),('20100729112458'),('20100729124210'),('20100729141955'),('20100729142416'),('20100730120601'),('20100730132825'),('20100809090550'),('20100809120502'),('20100813161213'),('20100817115816'),('20100818102743'),('20100819114104'),('20100820122449'),('20100902135234'),('20100902142325'),('20100908112841'),('20100909105810'),('20100909114132'),('20100920075651'),('20100921155612'),('20100922081110'),('20100922102321'),('20100922122740'),('20100923074241'),('20100927150547'),('20101007131610'),('20101007131827'),('20101013115208'),('20101013124056'),('20101026082126'),('20101027103753'),('20101028151541'),('20101103154108'),('20101103161641'),('20101103163019'),('20101109131431'),('20101116105410'),('20101124104905'),('20101125150638'),('20101126093026'),('20101201105920'),('20101201133429'),('20101203115308'),('20101203115634'),('20101213152125'),('20101216150725'),('20101216151447'),('20101216152952'),('20110308172759'),('20110308192757'),('20110321103604'),('20110322141439'),('20110322151957'),('20110325120932'),('20110412075940'),('20110414105702'),('20110414124938'),('20110421075758'),('20110428134543'),('20110529110417'),('20110629135331'),('20110704123058'),('20110704144650'),('20110707163036'),('20110728110124'),('20110808110217'),('20110808161514'),('20110817123457'),('20110819111416'),('20110819123636'),('20110909072646'),('20110912061834'),('20110912064526'),('20110912065222'),('20110913080622'),('20110914080549'),('20110914115824'),('20110915084232'),('20110915101535'),('20111111140246'),('20111111154416'),('20111111162432'),('20111114122125'),('20111114122315'),('20111116144337'),('20111116164728'),('20111116182825'),('20111123071116'),('20111123071850'),('20111124174508'),('20111210165312'),('20111210165854'),('20111210170231'),('20111211175403'),('20111228153911'),('20120104224115'),('20120105162140'),('20120113091548'),('20120121091558'),('20120206052931'),('20120208145336'),('20120210171827'),('20120303113202'),('20120303125412'),('20120303152837'),('20120303172713'),('20120510094327'),('20120510175152'),('20120514001557'),('20120514050302'),('20120516204538'),('20120518203511'),('20120522162329'),('20120522183329'),('20120526021050'),('20120614052244'),('20120625211426'),('20120628121713'),('20120704072606'),('20120705135703'),('20120705140109'),('20120710084323'),('20120711140918'),('20120718031225'),('20120730024756'),('20120907010347'),('20120907023525'),('20120908052908'),('20120909143322'),('20120929084903'),('20120929091629'),('20121023050946'),('20121105115053'),('20121203142830'),('20121212145626'),('20121214083430'),('20121218125831'),('20121220133808'),('20121229224803'),('20130103081705'),('20130103125240'),('20130103145816'),('20130104071929'),('20130104122958'),('20130105153450'),('20130107095027'),('20130110222425'),('20130123163722'),('20130123164653'),('20130124150000'),('20130208085827'),('20130212104852'),('20130213150133'),('20130213160145'),('20130217121320'),('20130218070405'),('20130305095824'),('20130306172327'),('20130309142322'),('20130317162509'),('20130318083721'),('20130318084043'),('20130318085152'),('20130319162158'),('20130319163113'),('20130320093549'),('20130322171458'),('20130323143126'),('20130325143038'),('20130325153817'),('20130325161150'),('20130325165508'),('20130325174608'),('20130325181741'),('20130326160252'),('20130328124654'),('20130328155825'),('20130329080756'),('20130329081612'),('20130331095134'),('20130331144047'),('20130331200801'),('20130405114540'),('20130418172231'),('20130418173835'),('20130423173017'),('20130424180017'),('20130424183653'),('20130425140120'),('20130514214222'),('20130517133311'),('20130520092054'),('20130520092357'),('20130520103753'),('20130520125924'),('20130520140756'),('20130520172713'),('20130521122031'),('20130521124342'),('20130521171401'),('20130521225614'),('20130531072349'),('20130605074725'),('20130607165451'),('20130710084408'),('20130718104939'),('20130719093816'),('20130719113330'),('20130724065048'),('20130724070139'),('20130729081847'),('20130807083847'),('20130815072527'),('20130815073546'),('20130815075659'),('20130815101112'),('20130823110113'),('20130902140027'),('20130910133213'),('20130917094727'),('20130920121927'),('20130925071631'),('20130925081815'),('20130926070322'),('20130926121237'),('20130930080143'),('20131024081428'),('20131028110133'),('20131028154626'),('20131028183014'),('20131030130320'),('20131031072301'),('20131031093809'),('20131101183938'),('20131104090808'),('20131107124835'),('20131107125413'),('20131108091824'),('20131108113632'),('20131108113650'),('20131111140902'),('20131112115307'),('20131112115308'),('20131112115435'),('20131114112955'),('20131119085439'),('20131119085625'),('20131122175753'),('20131126113141'),('20131126131750'),('20131126134024'),('20131126184439'),('20131128074254'),('20131128074910'),('20131128094614'),('20131128094758'),('20131128094839'),('20131128103251'),('20131128143205'),('20131129095727'),('20131202140547'),('20131203072124'),('20131204091623'),('20131204103910'),('20131206163837'),('20131209073416'),('20131209133946'),('20131210155502'),('20131212065037'),('20131214142413'),('20131214143004'),('20131214143005'),('20131220084742'),('20131220104804'),('20131220104805'),('20131227080454'),('20131227081256'),('20140102125702'),('20140102141643'),('20140102144755'),('20140102145633'),('20140102150134'),('20140102153949'),('20140103084331'),('20140103131350'),('20140106114557'),('20140109091819'),('20140109093432'),('20140109143257'),('20140109190928'),('20140116131654'),('20140123141906'),('20140124095930'),('20140124141214'),('20140128094422'),('20140128094642'),('20140128095047'),('20140129081030'),('20140204082210'),('20140205092212'),('20140205101011'),('20140205121010'),('20140206103152'),('20140207133412'),('20140219160247'),('20140219162023'),('20140222080916'),('20140223190922'),('20140223202734'),('20140223210213'),('20140224150322'),('20140224151953'),('20140225143012'),('20140226074348'),('20140226074445'),('20140226074710'),('20140226074751'),('20140226121423'),('20140227102627'),('20140228164206'),('20140228164428'),('20140228165024'),('20140301074143'),('20140303131213'),('20140304135448'),('20140306083247'),('20140312145533'),('20140312150455'),('20140314132659'),('20140318131351'),('20140319182117'),('20140324073247'),('20140328124957'),('20140328133415'),('20140402070713'),('20140402070714'),('20140411121926'),('20140415092507'),('20140415093234'),('20140417084647'),('20140417085905'),('20140417162548'),('20140417235732'),('20140422120515'),('20140425080207'),('20140425080603'),('20140425080731'),('20140425081001'),('20140425111235'),('20140428132517'),('20140428134415'),('20140507104933'),('20140507105154'),('20140509115747'),('20140512062911'),('20140516095154'),('20140519102507'),('20140519123344'),('20140519132638'),('20140519164823'),('20140523082452'),('20140526064017'),('20140530105841'),('20140530115044'),('20140530115433'),('20140604075725'),('20140604135743'),('20140610115132'),('20140610115217'),('20140611094552'),('20140611094703'),('20140612084036'),('20140613132734'),('20140623112935'),('20140701081453'),('20140701135724'),('20140701140655'),('20140703074142'),('20140703075424'),('20140710125950'),('20140710131146'),('20140711094414'),('20140724084559'),('20140724093459'),('20140724123125'),('20140805102757'),('20140811133602'),('20140811133603'),('20140811133605'),('20140811133606'),('20140811144528'),('20140812065415'),('20140815055023'),('20140815085018'),('20140819054528'),('20140819134039'),('20140819134055'),('20140820132249'),('20140829075839'),('20140829113807'),('20140901082541'),('20140901130206'),('20140902095905'),('20140903111344'),('20140903112203'),('20140903120109'),('20140909074331'),('20140912084032'),('20140912115758'),('20140925093828'),('20140925095608'),('20140925111706'),('20140925112419'),('20140929090537'),('20140930064120'),('20140930064130'),('20140930064140'),('20140930064150'),('20140930064160'),('20140930064170'),('20140930064180'),('20140930064185'),('20140930064190'),('20140930064200'),('20140930074731'),('20140930083026'),('20141001065955'),('20141001070716'),('20141001113744'),('20141003113756'),('20141006100239'),('20141006114330'),('20141007144442'),('20141009083833'),('20141015062240'),('20141015071419'),('20141015080454'),('20141015135248'),('20141015135601'),('20141015150328'),('20141017080930'),('20141020113323'),('20141020225349'),('20141022084419'),('20141022190428'),('20141023120743'),('20141023141235'),('20141023150700'),('20141028080346'),('20141028104522'),('20141028104537'),('20141029090632'),('20141029121848'),('20141029121945'),('20141030140809'),('20141102192640'),('20141104213501'),('20141111183125'),('20141112131736'),('20141113204444'),('20141117165348'),('20141203095726'),('20141204084648'),('20141205094929'),('20141216132850'),('20141216132851'),('20141217152335'),('20141218082446'),('20141219205556'),('20141222130455'),('20150103143459'),('20150107155205'),('20150116125629'),('20150121124432'),('20150121130521'),('20150128113129'),('20150202112254'),('20150204124735'),('20150204124802'),('20150205155400'),('20150205155519'),('20150206125017'),('20150206151234'),('20150212125111'),('20150213091223'),('20150213092629'),('20150213094110'),('20150224140913'),('20150225081656'),('20150225082144'),('20150225122608'),('20150226124214'),('20150226130928'),('20150226131628'),('20150303134630'),('20150303140556'),('20150304074313'),('20150304084451'),('20150311073502'),('20150311100232'),('20150311111824'),('20150311113118'),('20150316084339'),('20150316135852'),('20150316140016'),('20150316140637'),('20150316151552'),('20150316173800'),('20150317080017'),('20150317122824'),('20150317142931'),('20150319121616'),('20150320091305'),('20150320144657'),('20150323085034'),('20150323152147'),('20150324072928'),('20150324112018'),('20150324112042'),('20150324112053'),('20150324112658'),('20150324114726'),('20150325164209'),('20150327075649'),('20150330072934'),('20150330093441'),('20150330094735'),('20150331103317'),('20150331105616'),('20150331112417'),('20150401071256'),('20150401072129'),('20150401140830'),('20150402090934'),('20150402111115'),('20150403101215'),('20150407123639'),('20150407124816'),('20150407130810'),('20150407131139'),('20150413104519'),('20150413134627'),('20150415092447'),('20150416112541'),('20150416134422'),('20150420072530'),('20150420083201'),('20150426113955'),('20150429155804'),('20150507082447'),('20150507084754'),('20150507165715'),('20150508141500'),('20150512082544'),('20150512083212'),('20150512083411'),('20150512083842'),('20150518120830'),('20150518123758'),('20150519124846'),('20150520104604'),('20150520130243'),('20150520131057'),('20150527091815'),('20150527133928'),('20150528120338'),('20150528120717'),('20150608135024'),('20150608140024'),('20150608144130'),('20150609084012'),('20150612104320'),('20150622080657'),('20150630082932'),('20150630122552'),('20150729062045'),('20150729062215'),('20150731115141'),('20150731115426'),('20150731115742'),('20150804113139'),('20150804114651'),('20150805084232'),('20150806114405'),('20150806114717'),('20150807141947'),('20150821131310'),('20150821131616'),('20150825120916'),('20150825121715'),('20150825122606'),('20150828094836'),('20150902090425'),('20150902103231'),('20151008090106'),('20151008130725'),('20151022180225'),('20151022180242'),('20151022183133'),('20151102084029'),('20151202062609'),('20151204083028'),('20151209102951'),('20151215071150'),('20151230071554'),('20151230095128'),('20151231083524'),('20160119092239'),('20160119092534'),('20160120112839'),('20160126134509'),('20160126141249'),('20160209172619'),('20160209183917'),('20160216084624'),('20160223083004'),('20160223084741'),('20160229114242'),('20160311070106'),('20160322103154'),('20160322103155'),('20160322103156'),('20160407103437'),('20160407132641'),('20160408061218'),('20160408070000'),('20160408070005'),('20160420100304'),('20160420200020'),('20160420200030'),('20160420200040'),('20160420200050'),('20160420200060'),('20160420200065'),('20160420200066'),('20160420200080'),('20160420200090'),('20160420200100'),('20160420200110'),('20160422074608'),('20160422075215'),('20160422094212'),('20160422094431'),('20160422094536'),('20160422114240'),('20160422114747'),('20160422123125'),('20160422123211'),('20160425144703'),('20160427113446'),('20160509111922'),('20160511130006'),('20160518060235'),('20160608130531'),('20160609070256'),('20160609080700'),('20160609081158'),('20160614071055'),('20160615145518'),('20160627063918'),('20160708084933'),('20160728102918'),('20160728130503'),('20160816083020'),('20160816083028'),('20160816083349'),('20160816083607'),('20160816123633'),('20160817130729'),('20160817140558'),('20160818090814'),('20160818110351'),('20160818111044'),('20160818111724'),('20160823073938'),('20160823115429'),('20160823120425'),('20160823120704'),('20160823120845'),('20160831054404'),('20160831054544'),('20160831054909'),('20160831054910'),('20160902103712'),('20160902104733'),('20160907095103'),('20160908091353'),('20160913110411'),('20160913112734'),('20160914070509'),('20160914071634'),('20160914072428'),('20160914072601'),('20160920081409'),('20160920102506'),('20160920102507'),('20160920103321'),('20160921130544'),('20160926111847'),('20160928080048'),('20160928080819'),('20160929114326'),('20160929124124'),('20160930070122'),('20161004141208'),('20161006074506'),('20161012132850'),('20161018090313'),('20161018090314'),('20161018090517'),('20161018093208'),('20161018100657'),('20161018105036'),('20161018105521'),('20161019125057'),('20161023074355'),('20161101104218'),('20161101124317'),('20161101124829'),('20161102101418'),('20161102101419'),('20161102193340'),('20161103063652'),('20161107092030'),('20161107105050'),('20161107112025'),('20161107131859'),('20161107132513'),('20161107141257'),('20161109094513'),('20170216134444'),('20170220123526'),('20170309104456'),('20170313201104'),('20170314075755'),('20170613153959'),('20170613153960'),('20170613153961'),('20170613153965'),('20170616114938'),('20170626065542'),('20170629113013'),('20170630085303'),('20170703123959'),('20170704120024'),('20170704121638'),('20170705132856'),('20170706020608'),('20170707053914'),('20170707053915'),('20170707104010'),('20170707130931'),('20170710081759'),('20170711064018'),('20170728065012'),('20170801125553'),('20170814125622'),('20170817035830'),('20171023070523'),('20171107063241'),('20171117062422'),('20171128122539'),('20171129152027'),('20171207073027'),('20171207075640'),('20180108061342'),('20180108093607'),('20180514083133'),('20180518073348'),('20180523121344'),('20180524075239'),('20180524081429'),('20180717122957'),('20180720044534'),('20180720065907'),('20180723115548'),('20180904075653'),('20181012065625'),('20181024094615'),('20181029064728'),('20181029132748'),('20181031072643'),('20181106212306'),('20181211094456'),('20181211125306'),('20181219090801'),('20181221120927'),('20190104083132'),('20190108075512'),('20190111072711'),('20190111122204'),('20190114141250'),('20190115083941'),('20190121064002'),('20190208032229'),('20190213073532'),('20190213082646'),('20190227111355'),('20190228084827'),('20190305112030'),('20190319114719'),('20190319122745'),('20190627055931'),('20190705083608'),('20190705100256'),('20190717105844'),('20190718081745'),('20190904115045'),('20190920113245'),('20191016061908'),('20191016064022'),('20200109145736'),('20200127120611'),('20200131111643'),('20200213130051'),('20200224080321'),('20200303075727'),('20200312062151'),('20200312112018'),('20201012091009'),('20201218151444'),('20201221132459'),('20210108111345'),('20210129114823'),('20210325073153'),('20210425135627');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sessions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `session_id` varchar(255) NOT NULL,
  `data` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_sessions_on_session_id` (`session_id`) USING BTREE,
  KEY `index_sessions_on_updated_at` (`updated_at`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shipping_addresses`
--

DROP TABLE IF EXISTS `shipping_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shipping_addresses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `transaction_id` int(11) NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `postal_code` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `state_or_province` varchar(255) DEFAULT NULL,
  `street1` varchar(255) DEFAULT NULL,
  `street2` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `country_code` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_shipping_addresses_on_transaction_id` (`transaction_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipping_addresses`
--

LOCK TABLES `shipping_addresses` WRITE;
/*!40000 ALTER TABLE `shipping_addresses` DISABLE KEYS */;
/*!40000 ALTER TABLE `shipping_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_links`
--

DROP TABLE IF EXISTS `social_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `social_links` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `community_id` int(11) DEFAULT NULL,
  `provider` int(11) DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort_priority` int(11) DEFAULT '0',
  `enabled` tinyint(1) DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_social_links_on_community_id` (`community_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_links`
--

LOCK TABLES `social_links` WRITE;
/*!40000 ALTER TABLE `social_links` DISABLE KEYS */;
INSERT INTO `social_links` VALUES (1,1,0,'https://facebook.com/Allotme',0,1,'2021-03-12 07:36:25','2021-03-12 13:38:41'),(2,1,1,'https://twitter.com/allotme',1,1,'2021-03-12 07:36:25','2021-03-12 13:38:41'),(3,1,2,'https://instagram.com/allotme_uk',2,1,'2021-03-12 07:36:25','2021-03-12 13:38:41'),(4,1,3,'https://youtube.com/AllotMe',3,1,'2021-03-12 07:36:25','2021-03-12 13:38:41'),(5,1,4,'',5,0,'2021-03-12 07:36:25','2021-03-12 13:38:41'),(6,1,5,'https://www.linkedin.com/company/19137546/admin/',4,1,'2021-03-12 07:36:25','2021-04-13 15:09:15'),(7,1,6,'',6,0,'2021-03-12 07:36:25','2021-03-12 13:38:41'),(8,1,7,'',7,0,'2021-03-12 07:36:25','2021-03-12 13:38:41');
/*!40000 ALTER TABLE `social_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stripe_accounts`
--

DROP TABLE IF EXISTS `stripe_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stripe_accounts` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `person_id` varchar(255) DEFAULT NULL,
  `community_id` int(11) DEFAULT NULL,
  `stripe_seller_id` varchar(255) DEFAULT NULL,
  `stripe_bank_id` varchar(255) DEFAULT NULL,
  `stripe_customer_id` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `api_version` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_stripe_accounts_on_community_id` (`community_id`),
  KEY `index_stripe_accounts_on_person_id` (`person_id`),
  KEY `index_stripe_accounts_on_api_version` (`api_version`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stripe_accounts`
--

LOCK TABLES `stripe_accounts` WRITE;
/*!40000 ALTER TABLE `stripe_accounts` DISABLE KEYS */;
INSERT INTO `stripe_accounts` VALUES (2,'J_vj4wGUENGTsl5t9eYqaw',1,'acct_1IVFGm2VYbpgKF9V','ba_1IVFGr2VYbpgKF9Ve32Hy3WI',NULL,'2021-03-15 12:11:38','2021-03-15 12:11:42','2019-02-19');
/*!40000 ALTER TABLE `stripe_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stripe_payments`
--

DROP TABLE IF EXISTS `stripe_payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stripe_payments` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `community_id` int(11) DEFAULT NULL,
  `transaction_id` int(11) DEFAULT NULL,
  `payer_id` varchar(255) DEFAULT NULL,
  `receiver_id` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `sum_cents` int(11) DEFAULT NULL,
  `commission_cents` int(11) DEFAULT NULL,
  `currency` varchar(255) DEFAULT NULL,
  `stripe_charge_id` varchar(255) DEFAULT NULL,
  `stripe_transfer_id` varchar(255) DEFAULT NULL,
  `fee_cents` int(11) DEFAULT NULL,
  `real_fee_cents` int(11) DEFAULT NULL,
  `subtotal_cents` int(11) DEFAULT NULL,
  `transfered_at` datetime DEFAULT NULL,
  `available_on` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `buyer_commission_cents` int(11) DEFAULT '0',
  `stripe_payment_intent_id` varchar(255) DEFAULT NULL,
  `stripe_payment_intent_status` varchar(255) DEFAULT NULL,
  `stripe_payment_intent_client_secret` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stripe_payments`
--

LOCK TABLES `stripe_payments` WRITE;
/*!40000 ALTER TABLE `stripe_payments` DISABLE KEYS */;
INSERT INTO `stripe_payments` VALUES (1,1,4,'ZbiAdyZSEdNbyTvTAmwZeQ','J_vj4wGUENGTsl5t9eYqaw','transfered',1500,225,'GBP','ch_1IbSxvFGPNuEjskLM3rEV6LO','po_1Ie7lZ2VYbpgKF9V2lmbZxFT',0,41,1500,'2021-04-09 00:00:05','2021-04-08 00:00:00','2021-04-01 16:01:53','2021-04-09 00:00:05',0,'pi_1IbSxvFGPNuEjskLaRBDsOLT','success',NULL);
/*!40000 ALTER TABLE `stripe_payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testimonials`
--

DROP TABLE IF EXISTS `testimonials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `testimonials` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `grade` float DEFAULT NULL,
  `text` text,
  `author_id` varchar(255) DEFAULT NULL,
  `participation_id` int(11) DEFAULT NULL,
  `transaction_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `receiver_id` varchar(255) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `index_testimonials_on_author_id` (`author_id`) USING BTREE,
  KEY `index_testimonials_on_receiver_id` (`receiver_id`) USING BTREE,
  KEY `index_testimonials_on_transaction_id` (`transaction_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testimonials`
--

LOCK TABLES `testimonials` WRITE;
/*!40000 ALTER TABLE `testimonials` DISABLE KEYS */;
INSERT INTO `testimonials` VALUES (1,1,'Very friendly and easy to book - look froward to getting started on the plot.','ZbiAdyZSEdNbyTvTAmwZeQ',NULL,4,'2021-04-06 11:54:19','2021-04-06 11:54:19','J_vj4wGUENGTsl5t9eYqaw',0),(2,1,'Great!','J_vj4wGUENGTsl5t9eYqaw',NULL,4,'2021-04-13 15:06:40','2021-04-13 15:06:40','ZbiAdyZSEdNbyTvTAmwZeQ',0);
/*!40000 ALTER TABLE `testimonials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaction_process_tokens`
--

DROP TABLE IF EXISTS `transaction_process_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transaction_process_tokens` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `process_token` binary(16) DEFAULT NULL,
  `community_id` int(11) NOT NULL,
  `transaction_id` int(11) NOT NULL,
  `op_completed` tinyint(1) NOT NULL DEFAULT '0',
  `op_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `op_input` text COLLATE utf8_unicode_ci,
  `op_output` text COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_paypal_process_tokens_on_transaction` (`transaction_id`,`community_id`,`op_name`),
  UNIQUE KEY `index_transaction_process_tokens_on_process_token` (`process_token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction_process_tokens`
--

LOCK TABLES `transaction_process_tokens` WRITE;
/*!40000 ALTER TABLE `transaction_process_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `transaction_process_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaction_processes`
--

DROP TABLE IF EXISTS `transaction_processes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transaction_processes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `community_id` int(11) DEFAULT NULL,
  `process` varchar(32) NOT NULL,
  `author_is_seller` tinyint(1) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_transaction_process_on_community_id` (`community_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction_processes`
--

LOCK TABLES `transaction_processes` WRITE;
/*!40000 ALTER TABLE `transaction_processes` DISABLE KEYS */;
INSERT INTO `transaction_processes` VALUES (1,1,'none',1,'2021-03-11 11:09:18','2021-03-11 11:09:18'),(2,1,'none',0,'2021-03-11 11:09:18','2021-03-11 11:09:18'),(3,1,'preauthorize',1,'2021-03-11 11:09:18','2021-03-11 11:09:18'),(4,1,'preauthorize',1,'2021-03-15 10:41:54','2021-03-15 10:41:54');
/*!40000 ALTER TABLE `transaction_processes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaction_transitions`
--

DROP TABLE IF EXISTS `transaction_transitions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transaction_transitions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `to_state` varchar(255) DEFAULT NULL,
  `metadata` text,
  `sort_key` int(11) DEFAULT '0',
  `transaction_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `most_recent` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_transaction_transitions_on_sort_key_and_conversation_id` (`sort_key`,`transaction_id`) USING BTREE,
  KEY `index_transaction_transitions_on_conversation_id` (`transaction_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction_transitions`
--

LOCK TABLES `transaction_transitions` WRITE;
/*!40000 ALTER TABLE `transaction_transitions` DISABLE KEYS */;
INSERT INTO `transaction_transitions` VALUES (1,'free',NULL,10,1,'2021-03-15 11:51:35','2021-03-15 11:51:35',1),(2,'free',NULL,10,2,'2021-03-15 12:01:50','2021-03-15 12:01:50',1),(3,'free',NULL,10,3,'2021-04-01 15:42:32','2021-04-01 15:42:32',1),(4,'initiated',NULL,10,4,'2021-04-01 16:01:50','2021-04-01 16:01:53',NULL),(5,'preauthorized',NULL,20,4,'2021-04-01 16:01:53','2021-04-01 16:04:29',NULL),(6,'paid',NULL,30,4,'2021-04-01 16:04:29','2021-04-06 11:53:45',NULL),(7,'confirmed','{\"user_id\":\"ZbiAdyZSEdNbyTvTAmwZeQ\"}',40,4,'2021-04-06 11:53:45','2021-04-06 11:53:45',1);
/*!40000 ALTER TABLE `transaction_transitions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `starter_id` varchar(255) NOT NULL,
  `starter_uuid` binary(16) NOT NULL,
  `listing_id` int(11) NOT NULL,
  `listing_uuid` binary(16) NOT NULL,
  `conversation_id` int(11) DEFAULT NULL,
  `automatic_confirmation_after_days` int(11) NOT NULL,
  `community_id` int(11) NOT NULL,
  `community_uuid` binary(16) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `starter_skipped_feedback` tinyint(1) DEFAULT '0',
  `author_skipped_feedback` tinyint(1) DEFAULT '0',
  `last_transition_at` datetime DEFAULT NULL,
  `current_state` varchar(255) DEFAULT NULL,
  `commission_from_seller` int(11) DEFAULT NULL,
  `minimum_commission_cents` int(11) DEFAULT '0',
  `minimum_commission_currency` varchar(255) DEFAULT NULL,
  `payment_gateway` varchar(255) NOT NULL DEFAULT 'none',
  `listing_quantity` int(11) DEFAULT '1',
  `listing_author_id` varchar(255) NOT NULL,
  `listing_author_uuid` binary(16) NOT NULL,
  `listing_title` varchar(255) DEFAULT NULL,
  `unit_type` varchar(32) DEFAULT NULL,
  `unit_price_cents` int(11) DEFAULT NULL,
  `unit_price_currency` varchar(8) DEFAULT NULL,
  `unit_tr_key` varchar(64) DEFAULT NULL,
  `unit_selector_tr_key` varchar(64) DEFAULT NULL,
  `payment_process` varchar(31) DEFAULT 'none',
  `delivery_method` varchar(31) DEFAULT 'none',
  `shipping_price_cents` int(11) DEFAULT NULL,
  `availability` varchar(32) DEFAULT 'none',
  `booking_uuid` binary(16) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `commission_from_buyer` int(11) DEFAULT NULL,
  `minimum_buyer_fee_cents` int(11) DEFAULT '0',
  `minimum_buyer_fee_currency` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_transactions_on_listing_id` (`listing_id`) USING BTREE,
  KEY `index_transactions_on_conversation_id` (`conversation_id`) USING BTREE,
  KEY `index_transactions_on_community_id` (`community_id`) USING BTREE,
  KEY `index_transactions_on_last_transition_at` (`last_transition_at`) USING BTREE,
  KEY `transactions_on_cid_and_deleted` (`community_id`,`deleted`) USING BTREE,
  KEY `index_transactions_on_deleted` (`deleted`) USING BTREE,
  KEY `index_transactions_on_starter_id` (`starter_id`) USING BTREE,
  KEY `index_transactions_on_listing_author_id` (`listing_author_id`) USING BTREE,
  KEY `community_starter_state` (`community_id`,`starter_id`,`current_state`),
  KEY `index_transactions_on_listing_id_and_current_state` (`listing_id`,`current_state`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions`
--

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
INSERT INTO `transactions` VALUES (1,'2rzRC_0EtrSL-95zeDPXUQ',_binary 'ÎÖÑ´Xê•\Ë∞6Ä\0t',1,_binary '\ÎÇb\ÎÄY÷Ç8∞6Ä\0t',1,0,1,_binary '\ÎÇZ9väà§µ∞6Ä\0t','2021-03-15 11:51:35','2021-03-15 11:51:35',0,0,'2021-03-15 11:51:35','free',0,0,'GBP','none',2,'QqHfk2xJmsrEgr15rJEtag',_binary '\ÎÇb@˛Hà≠N∞6Ä\0t','test','day',1000,'GBP',NULL,NULL,'none','none',NULL,'none',NULL,0,NULL,0,NULL),(2,'ZbiAdyZSEdNbyTvTAmwZeQ',_binary 'ÎÖÖ\ÊA= òÆ∞6Ä\0t',2,_binary 'ÎÖÑªì®*òÆ∞6Ä\0t',2,0,1,_binary '\ÎÇZ9väà§µ∞6Ä\0t','2021-03-15 12:01:50','2021-03-15 12:01:50',0,0,'2021-03-15 12:01:50','free',0,0,'GBP','none',1,'J_vj4wGUENGTsl5t9eYqaw',_binary '\ÎÇZ9∑ˇ˛§µ∞6Ä\0t','Stockwell Garden','night',2500,'GBP',NULL,NULL,'none','none',NULL,'none',NULL,0,NULL,0,NULL),(3,'ZbiAdyZSEdNbyTvTAmwZeQ',_binary 'ÎÖÖ\ÊA= òÆ∞6Ä\0t',6,_binary '\Îì\0ΩttLÆ\‰∞6Ä\0t',3,0,1,_binary '\ÎÇZ9väà§µ∞6Ä\0t','2021-04-01 15:42:32','2021-04-01 15:42:32',0,0,'2021-04-01 15:42:32','free',0,0,'GBP','none',1,'J_vj4wGUENGTsl5t9eYqaw',_binary '\ÎÇZ9∑ˇ˛§µ∞6Ä\0t','Testing Garden','month',1500,'GBP',NULL,NULL,'none','none',NULL,'none',NULL,0,NULL,0,NULL),(4,'ZbiAdyZSEdNbyTvTAmwZeQ',_binary 'ÎÖÖ\ÊA= òÆ∞6Ä\0t',6,_binary '\Îì\0ΩttLÆ\‰∞6Ä\0t',4,14,1,_binary '\ÎÇZ9väà§µ∞6Ä\0t','2021-04-01 16:01:50','2021-04-06 11:53:45',0,0,'2021-04-06 11:53:45','confirmed',15,75,'GBP','stripe',1,'J_vj4wGUENGTsl5t9eYqaw',_binary '\ÎÇZ9∑ˇ˛§µ∞6Ä\0t','Testing Garden','month',1500,'GBP',NULL,NULL,'preauthorize','none',NULL,'none',NULL,0,NULL,0,'GBP');
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-26 11:33:06
