-- MySQL dump 10.16  Distrib 10.1.26-MariaDB, for Win32 (AMD64)
--
-- Host: localhost    Database: meshNetwork
-- ------------------------------------------------------
-- Server version	10.1.26-MariaDB

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
-- Table structure for table `appearances`
--

DROP TABLE IF EXISTS `appearances`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `appearances` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userID` int(11) NOT NULL,
  `spaceID` int(11) NOT NULL,
  `eventID` int(11) DEFAULT NULL,
  `occasion` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appearances`
--

LOCK TABLES `appearances` WRITE;
/*!40000 ALTER TABLE `appearances` DISABLE KEYS */;
/*!40000 ALTER TABLE `appearances` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bookables`
--

DROP TABLE IF EXISTS `bookables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bookables` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `spaceID` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'available',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookables`
--

LOCK TABLES `bookables` WRITE;
/*!40000 ALTER TABLE `bookables` DISABLE KEYS */;
/*!40000 ALTER TABLE `bookables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bookings`
--

DROP TABLE IF EXISTS `bookings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bookings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userID` int(11) NOT NULL,
  `spaceID` int(11) NOT NULL,
  `bookablesID` int(11) NOT NULL,
  `start` datetime NOT NULL,
  `end` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookings`
--

LOCK TABLES `bookings` WRITE;
/*!40000 ALTER TABLE `bookings` DISABLE KEYS */;
/*!40000 ALTER TABLE `bookings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calendars`
--

DROP TABLE IF EXISTS `calendars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `calendars` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userID` int(11) NOT NULL,
  `eventID` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calendars`
--

LOCK TABLES `calendars` WRITE;
/*!40000 ALTER TABLE `calendars` DISABLE KEYS */;
/*!40000 ALTER TABLE `calendars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `events` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userID` int(11) NOT NULL,
  `spaceID` int(11) NOT NULL,
  `start` datetime NOT NULL,
  `end` datetime NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'pending',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tags` longtext COLLATE utf8_unicode_ci NOT NULL,
  `local` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `events`
--

LOCK TABLES `events` WRITE;
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
INSERT INTO `events` VALUES (1,7,1,'2017-11-10 00:00:00','2017-11-10 00:00:00','pending','one','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce augue odio, tincidunt eget arcu et, euismod dictum mauris. Nulla facilisi. Etiam commodo est lacus, sed placerat lore mollis sit amet','type','html,css,javascript',1,'2017-11-09 11:29:36','2017-11-09 11:29:36'),(2,21,2,'2017-11-10 00:00:00','2017-11-10 00:00:00','pending','one','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce augue odio, tincidunt eget arcu et, euismod dictum mauris. Nulla facilisi. Etiam commodo est lacus, sed placerat lore mollis sit amet','type','html,css,javascript',1,'2017-11-09 11:29:42','2017-11-10 02:00:40'),(3,37,3,'2017-11-10 00:00:00','2017-11-10 00:00:00','pending','one','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce augue odio, tincidunt eget arcu et, euismod dictum mauris. Nulla facilisi. Etiam commodo est lacus, sed placerat lore mollis sit amet','type','html,css,javascript',1,'2017-11-09 11:29:44','2017-11-10 02:01:10'),(4,47,4,'2017-11-09 00:00:00','2017-11-09 00:00:00','pending','title','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce augue odio, tincidunt eget arcu et, euismod dictum mauris. Nulla facilisi. Etiam commodo est lacus, sed placerat lore mollis sit amet ','type','html,css,javaScript',0,'2017-11-09 20:48:22','2017-11-10 02:01:39'),(5,57,5,'2017-11-09 00:00:00','2017-11-09 00:00:00','pending','title','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce augue odio, tincidunt eget arcu et, euismod dictum mauris. Nulla facilisi. Etiam commodo est lacus, sed placerat lore mollis sit amet ','type','html,css,javaScript',0,'2017-11-09 21:21:18','2017-11-10 02:02:44'),(6,65,6,'2017-11-09 00:00:00','2017-11-09 00:00:00','approved','title','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce augue odio, tincidunt eget arcu et, euismod dictum mauris. Nulla facilisi. Etiam commodo est lacus, sed placerat lore mollis sit amet ','type','html,css,javaScript',0,'2017-11-09 21:25:45','2017-11-10 02:03:45'),(7,73,7,'2017-11-09 00:00:00','2017-11-09 00:00:00','pending','title','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce augue odio, tincidunt eget arcu et, euismod dictum mauris. Nulla facilisi. Etiam commodo est lacus, sed placerat lore mollis sit amet ','type','html,css,javaScript',0,'2017-11-10 01:59:43','2017-11-10 01:59:43');
/*!40000 ALTER TABLE `events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `files`
--

DROP TABLE IF EXISTS `files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `files` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userID` int(11) NOT NULL,
  `eventID` int(11) NOT NULL,
  `path` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `files`
--

LOCK TABLES `files` WRITE;
/*!40000 ALTER TABLE `files` DISABLE KEYS */;
/*!40000 ALTER TABLE `files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invites`
--

DROP TABLE IF EXISTS `invites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `invites` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userID` int(11) NOT NULL,
  `spaceID` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'sent',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invites`
--

LOCK TABLES `invites` WRITE;
/*!40000 ALTER TABLE `invites` DISABLE KEYS */;
/*!40000 ALTER TABLE `invites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000001_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2014_11_12_000000_create_roles_table',1),(4,'2017_09_26_193901_workspaces',1),(5,'2017_09_26_194036_events',1),(6,'2017_09_26_194130_calendars',1),(7,'2017_09_26_194217_appearances',1),(8,'2017_09_26_194310_invites',1),(9,'2017_09_26_194407_bookables',1),(10,'2017_09_26_194600_bookings',1),(11,'2017_09_26_200959_skills',1),(12,'2017_09_26_201337_userskills',1),(13,'2017_09_26_205823_notifications',1),(14,'2017_09_26_210059_files',1),(15,'2017_09_26_210224_opts',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notifications` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userID` int(11) NOT NULL,
  `body` longtext COLLATE utf8_unicode_ci NOT NULL,
  `read` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifications`
--

LOCK TABLES `notifications` WRITE;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `opts`
--

DROP TABLE IF EXISTS `opts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `opts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `spaceID` int(11) NOT NULL,
  `eventID` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opts`
--

LOCK TABLES `opts` WRITE;
/*!40000 ALTER TABLE `opts` DISABLE KEYS */;
/*!40000 ALTER TABLE `opts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin','2017-11-09 10:11:17','2017-11-09 10:11:17'),(2,'organizer','2017-11-09 10:11:41','2017-11-09 10:11:41'),(3,'researcher','2017-11-09 10:12:03','2017-11-09 10:12:03'),(4,'member','2017-11-09 10:12:20','2017-11-09 10:12:20');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skills`
--

DROP TABLE IF EXISTS `skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `skills` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skills`
--

LOCK TABLES `skills` WRITE;
/*!40000 ALTER TABLE `skills` DISABLE KEYS */;
INSERT INTO `skills` VALUES (1,'mentoring','2017-11-09 07:39:12','2017-11-09 07:39:12'),(2,'education','2017-11-09 07:39:12','2017-11-09 07:39:12'),(3,'regulation','2017-11-09 07:39:12','2017-11-09 07:39:12'),(4,'html','2017-11-09 07:40:22','2017-11-09 07:40:22'),(5,'css','2017-11-09 07:40:22','2017-11-09 07:40:22'),(6,'javascript','2017-11-09 07:40:22','2017-11-09 07:40:22');
/*!40000 ALTER TABLE `skills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `roleID` int(11) NOT NULL,
  `spaceID` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `searchOpt` tinyint(1) NOT NULL DEFAULT '0',
  `company` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phoneNumber` int(11) DEFAULT NULL,
  `bio` longtext COLLATE utf8_unicode_ci,
  `avatar` longtext COLLATE utf8_unicode_ci,
  `ban` tinyint(1) NOT NULL DEFAULT '0',
  `verified` tinyint(1) NOT NULL DEFAULT '0',
  `subscriber` tinyint(1) NOT NULL DEFAULT '0',
  `score` int(11) NOT NULL DEFAULT '100',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,1,1,'admin@mail.com','$2y$10$f3ESZM7dP.incPXnVgp.GuMBoMdnymtxLztk3lXNiREe4g/DJpHJW','john doe',1,'company','http://domain.com',1231234123,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce augue odio, tincidunt eget arcu et, euismod dictum mauris. Nulla facilisi. Etiam commodo est lacus, sed placerat lore mollis sit amet.','http://127.0.0.1:8000/storage/avatar/austin.jpg',0,0,0,100,NULL,'2017-11-09 07:39:12','2017-11-15 00:26:58'),(2,2,1,'org@mail.com','$2y$10$OIOlyH0I8.3Fkhj0ebYzUu5hSyOo5WsRGhF.SOQRlaRPv.s5lCh9G','john doe',1,'company','http://domain.com',1231234123,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce augue odio, tincidunt eget arcu et, euismod dictum mauris. Nulla facilisi. Etiam commodo est lacus, sed placerat lore mollis sit amet.','http://127.0.0.1:8000/storage/avatar/austin.jpg',0,0,0,100,NULL,'2017-11-09 07:40:22','2017-11-15 00:27:13'),(3,2,1,'org1@mail.com','$2y$10$oswtGyXWaRsqcnmHGWiLcudzHRa0GhQbQgKpQGkinv9GRu8b/joxy','john doe',0,'company','http://domain.com',1231234123,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce augue odio, tincidunt eget arcu et, euismod dictum mauris. Nulla facilisi. Etiam commodo est lacus, sed placerat lore mollis sit amet.','http://127.0.0.1:8000/storage/avatar/austin.jpg',0,0,0,100,NULL,'2017-11-09 07:40:33','2017-11-10 21:04:51'),(4,3,1,'res@mail.com','$2y$10$JxEfLYy1ZFqBxTamOSykD.kISjvQzD2rko9GtusF0DsSqZu90KSX2','john doe',0,'company','http://domain.com',1231234123,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce augue odio, tincidunt eget arcu et, euismod dictum mauris. Nulla facilisi. Etiam commodo est lacus, sed placerat lore mollis sit amet.','http://127.0.0.1:8000/storage/avatar/austin.jpg',0,0,0,100,NULL,'2017-11-09 07:41:00','2017-11-10 21:04:54'),(5,3,1,'res1@mail.com','$2y$10$J6tjpPX66E3tnXwsOToUNOW3mX1ouqDvVL81kfGLTSKBNXrHnbqy6','john doe',0,'company','http://domain.com',1231234123,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce augue odio, tincidunt eget arcu et, euismod dictum mauris. Nulla facilisi. Etiam commodo est lacus, sed placerat lore mollis sit amet.','http://127.0.0.1:8000/storage/avatar/austin.jpg',0,0,0,100,NULL,'2017-11-09 07:41:05','2017-11-10 21:04:59'),(6,3,1,'res2@mail.com','$2y$10$/M.3OKJXzvqpsA4E//aZdeXsa7mWvoIzX1MzyOZgj2QrgjKo0LgCO','john doe',0,'company','http://domain.com',1231234123,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce augue odio, tincidunt eget arcu et, euismod dictum mauris. Nulla facilisi. Etiam commodo est lacus, sed placerat lore mollis sit amet.','http://127.0.0.1:8000/storage/avatar/austin.jpg',0,0,0,100,NULL,'2017-11-09 07:41:25','2017-11-10 21:05:03'),(7,4,1,'mem@mail.com','$2y$10$SHRfp3FJhfc0tkmwNqZdAuk2QdgcEjkWxjx6ILcLR7/PUNm7L5P3i','john doe',0,'company','http://domain.com',1231234123,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce augue odio, tincidunt eget arcu et, euismod dictum mauris. Nulla facilisi. Etiam commodo est lacus, sed placerat lore mollis sit amet.','http://127.0.0.1:8000/storage/avatar/austin.jpg',0,0,0,100,NULL,'2017-11-09 07:41:40','2017-11-10 21:05:22'),(8,4,1,'mem1@mail.com','$2y$10$N5ymJfNbzlt2EL3GKU7JX.8S9bpMY3MdT/vNBHFIGM6/Ut5.PxX2u','john doe',0,'company','http://domain.com',1231234123,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce augue odio, tincidunt eget arcu et, euismod dictum mauris. Nulla facilisi. Etiam commodo est lacus, sed placerat lore mollis sit amet.','http://127.0.0.1:8000/storage/avatar/austin.jpg',0,0,0,100,NULL,'2017-11-09 07:42:21','2017-11-10 21:05:26'),(9,4,1,'mem2@mail.com','$2y$10$FXKEAVNXJT6Jy7pQHbRAL.5SVdEAlvjN5ovv6YzEbr4lJRNAkJkhe','john doe',0,'company','http://domain.com',1231234123,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce augue odio, tincidunt eget arcu et, euismod dictum mauris. Nulla facilisi. Etiam commodo est lacus, sed placerat lore mollis sit amet.','http://127.0.0.1:8000/storage/avatar/austin.jpg',0,0,0,100,NULL,'2017-11-09 07:42:36','2017-11-10 21:05:29'),(10,4,1,'mem3@mail.com','$2y$10$XflBTBaBo6sQZX.LeFk8OeK5hwidQTPaLUxfe13HvVR.08Gfedlge','john doe',0,'company','http://domain.com',1231234123,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce augue odio, tincidunt eget arcu et, euismod dictum mauris. Nulla facilisi. Etiam commodo est lacus, sed placerat lore mollis sit amet.','http://127.0.0.1:8000/storage/avatar/austin.jpg',0,0,0,100,NULL,'2017-11-09 07:42:45','2017-11-10 21:05:33'),(11,4,1,'mem4@mail.com','$2y$10$mq7DiyxCCGtPHFeybUSHzOLNpYjAh0hMltWMpyyYy1JFlLAgJ2.H.','john doe',0,'company','http://domain.com',1231234123,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce augue odio, tincidunt eget arcu et, euismod dictum mauris. Nulla facilisi. Etiam commodo est lacus, sed placerat lore mollis sit amet.','http://127.0.0.1:8000/storage/avatar/austin.jpg',0,0,0,100,NULL,'2017-11-09 07:42:51','2017-11-10 21:05:55'),(12,4,1,'mem5@mail.com','$2y$10$ZO8Ru5bcLjJlOXquR0ddQeortpuHDP7piEzd9hsMRI3s2UHiKP2ZS','john doe',0,'company','http://domain.com',1231234123,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce augue odio, tincidunt eget arcu et, euismod dictum mauris. Nulla facilisi. Etiam commodo est lacus, sed placerat lore mollis sit amet.','http://127.0.0.1:8000/storage/avatar/austin.jpg',0,0,0,100,NULL,'2017-11-09 07:42:56','2017-11-10 21:05:58'),(13,4,1,'mem6@mail.com','$2y$10$4S80BA0iWhk10QewqjEotOL27t.3xf/kxLSkaWnn3U.TpSgLQh1Oa','john doe',0,'company','http://domain.com',1231234123,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce augue odio, tincidunt eget arcu et, euismod dictum mauris. Nulla facilisi. Etiam commodo est lacus, sed placerat lore mollis sit amet.','http://127.0.0.1:8000/storage/avatar/austin.jpg',0,0,0,100,NULL,'2017-11-09 07:43:08','2017-11-10 21:06:05'),(14,4,1,'mem7@mail.com','$2y$10$VnnUWCbYNbto20oJBQLa1uqrTovmv5BXkTLsTo.8odh6j8MvTV4Vy','john doe',0,'company','http://domain.com',1231234123,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce augue odio, tincidunt eget arcu et, euismod dictum mauris. Nulla facilisi. Etiam commodo est lacus, sed placerat lore mollis sit amet.','http://127.0.0.1:8000/storage/avatar/austin.jpg',0,0,0,100,NULL,'2017-11-09 07:43:15','2017-11-10 21:06:09'),(15,4,1,'mem8@mail.com','$2y$10$eERavdQ0gOkVrdxf6T/vY.lwv9SNMdFSxgeZdFVHukTpNU0ArMu9O','john doe',0,'company','http://domain.com',1231234123,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce augue odio, tincidunt eget arcu et, euismod dictum mauris. Nulla facilisi. Etiam commodo est lacus, sed placerat lore mollis sit amet.','http://127.0.0.1:8000/storage/avatar/austin.jpg',0,0,0,100,NULL,'2017-11-09 07:43:21','2017-11-10 21:06:11'),(16,4,1,'mem9@mail.com','$2y$10$4.QSGbXjMrGVWT8/VnrhZuaEEIMRZsSvN6kC71QPuXjPvrAXNKra.','john doe',0,'company','http://domain.com',1231234123,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce augue odio, tincidunt eget arcu et, euismod dictum mauris. Nulla facilisi. Etiam commodo est lacus, sed placerat lore mollis sit amet.','http://127.0.0.1:8000/storage/avatar/austin.jpg',0,0,0,100,NULL,'2017-11-09 07:43:35','2017-11-10 21:06:17'),(17,2,2,'org12@mail.com','$2y$10$Pe.6jU4KKEpwR2pXbsKhDulj0SJgJ5M8MIcIuMu3jt5oz0xArnbYa','john doe',0,'company','http://domain.com',1231234123,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce augue odio, tincidunt eget arcu et, euismod dictum mauris. Nulla facilisi. Etiam commodo est lacus, sed placerat lore mollis sit amet.','http://127.0.0.1:8000/storage/avatar/austin.jpg',0,0,0,100,NULL,'2017-11-09 07:45:34','2017-11-10 21:06:45'),(18,3,2,'res22@mail.com','$2y$10$bcd6heYg3bH0HffjT5eoQeNwVLbN9tZAFuSJUn1E0kEcpG1BxUDPa','john doe',0,'company','http://domain.com',1231234123,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce augue odio, tincidunt eget arcu et, euismod dictum mauris. Nulla facilisi. Etiam commodo est lacus, sed placerat lore mollis sit amet.','http://127.0.0.1:8000/storage/avatar/austin.jpg',0,0,0,100,NULL,'2017-11-09 07:46:26','2017-11-10 21:08:41'),(19,3,2,'res21@mail.com','$2y$10$wLLIwQFen9GSAyIUKhMZLuwLuNq0C7MDc0rL.lu69usVypJlEdiZi','john doe',0,'company','http://domain.com',1231234123,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce augue odio, tincidunt eget arcu et, euismod dictum mauris. Nulla facilisi. Etiam commodo est lacus, sed placerat lore mollis sit amet.','http://127.0.0.1:8000/storage/avatar/austin.jpg',0,0,0,100,NULL,'2017-11-09 07:46:50','2017-11-10 21:08:45'),(20,3,2,'res211@mail.com','$2y$10$/Cj58YfJdv/TJZ10THCw2OidOyzCemeemJnKpbmYWYxjlKklnIXSS','john doe',0,'company','http://domain.com',1231234123,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce augue odio, tincidunt eget arcu et, euismod dictum mauris. Nulla facilisi. Etiam commodo est lacus, sed placerat lore mollis sit amet.','http://127.0.0.1:8000/storage/avatar/austin.jpg',0,0,0,100,NULL,'2017-11-09 07:46:55','2017-11-10 21:08:47'),(21,4,2,'mem21@mail.com','$2y$10$SmykN1HR.D8lfxfVy4J1AOAPx9wMlbVs93erIFMuWweZCC7UTl6F.','john doe',0,'company','http://domain.com',1231234123,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce augue odio, tincidunt eget arcu et, euismod dictum mauris. Nulla facilisi. Etiam commodo est lacus, sed placerat lore mollis sit amet.','http://127.0.0.1:8000/storage/avatar/austin.jpg',0,0,0,100,NULL,'2017-11-09 07:47:16','2017-11-10 21:08:49'),(22,4,2,'mem22@mail.com','$2y$10$gHnr3Ia.pi.Kt4s6rswA3uqdKK/igmDCLUH/AaBCdIdxicJVNn1IW','john doe',0,'company','http://domain.com',1231234123,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce augue odio, tincidunt eget arcu et, euismod dictum mauris. Nulla facilisi. Etiam commodo est lacus, sed placerat lore mollis sit amet.','http://127.0.0.1:8000/storage/avatar/austin.jpg',0,0,0,100,NULL,'2017-11-09 07:47:21','2017-11-10 21:08:52'),(23,4,2,'mem23@mail.com','$2y$10$WtV.3LQ1XdQUlATDZb3OeO4TeschWCLSjvMkRCsdsOTdb8VNeGRh2','john doe',0,'company','http://domain.com',1231234123,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce augue odio, tincidunt eget arcu et, euismod dictum mauris. Nulla facilisi. Etiam commodo est lacus, sed placerat lore mollis sit amet.','http://127.0.0.1:8000/storage/avatar/austin.jpg',0,0,0,100,NULL,'2017-11-09 07:47:27','2017-11-10 21:08:54'),(24,4,2,'mem24@mail.com','$2y$10$kk1j3U1JTAeHohTage2LbugxdAoOWzILITsp5hnuaUfdU2nOOO1Kq','john doe',0,'company','http://domain.com',1231234123,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce augue odio, tincidunt eget arcu et, euismod dictum mauris. Nulla facilisi. Etiam commodo est lacus, sed placerat lore mollis sit amet.','http://127.0.0.1:8000/storage/avatar/austin.jpg',0,0,0,100,NULL,'2017-11-09 07:47:33','2017-11-10 21:09:21'),(25,4,2,'mem25@mail.com','$2y$10$nvD.PlEUnwmD7pEPlkcttOuMjFqLc.T9.1UcAaRMDvdTWVKFw5ZCa','john doe',0,'company','http://domain.com',1231234123,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce augue odio, tincidunt eget arcu et, euismod dictum mauris. Nulla facilisi. Etiam commodo est lacus, sed placerat lore mollis sit amet.','http://127.0.0.1:8000/storage/avatar/austin.jpg',0,0,0,100,NULL,'2017-11-09 07:47:38','2017-11-10 21:09:24'),(26,4,2,'mem26@mail.com','$2y$10$wXSQ/XJhY345mS0G7LDu0exsYJI7MLAdGrUnhEg16Ovr/djGpbEve','john doe',0,'company','http://domain.com',1231234123,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce augue odio, tincidunt eget arcu et, euismod dictum mauris. Nulla facilisi. Etiam commodo est lacus, sed placerat lore mollis sit amet.','http://127.0.0.1:8000/storage/avatar/austin.jpg',0,0,0,100,NULL,'2017-11-09 07:47:53','2017-11-10 21:09:28'),(27,4,2,'mem27@mail.com','$2y$10$/HOxucW2lV/.060yLIHPPuUwNwTiempk/xyYJ5sBG6tqRATPflKDC','john doe',0,'company','http://domain.com',1231234123,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce augue odio, tincidunt eget arcu et, euismod dictum mauris. Nulla facilisi. Etiam commodo est lacus, sed placerat lore mollis sit amet.','http://127.0.0.1:8000/storage/avatar/austin.jpg',0,0,0,100,NULL,'2017-11-09 07:48:00','2017-11-10 21:09:31'),(28,4,2,'mem28@mail.com','$2y$10$NcfSFbvsS.AOd1EICFkKnOP3D9I4FuIGvpKFebNKyvSvFfMSkFhq2','john doe',0,'company','http://domain.com',1231234123,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce augue odio, tincidunt eget arcu et, euismod dictum mauris. Nulla facilisi. Etiam commodo est lacus, sed placerat lore mollis sit amet.','http://127.0.0.1:8000/storage/avatar/austin.jpg',0,0,0,100,NULL,'2017-11-09 07:48:05','2017-11-10 21:09:36'),(29,4,2,'mem29@mail.com','$2y$10$8VCahkcqwlOthlzaows5nudxfa/4zBXy9oyBNXyccL3qmikQzYqni','john doe',0,'company','http://domain.com',1231234123,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce augue odio, tincidunt eget arcu et, euismod dictum mauris. Nulla facilisi. Etiam commodo est lacus, sed placerat lore mollis sit amet.','http://127.0.0.1:8000/storage/avatar/austin.jpg',0,0,0,100,NULL,'2017-11-09 07:48:14','2017-11-10 21:09:41'),(30,4,2,'mem210@mail.com','$2y$10$c1CvgSmT.DOTJBxfQh5LgeZmXhY.IU0glObRh1Xq3bvk2Yi33XOQW','john doe',0,'company','http://domain.com',1231234123,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce augue odio, tincidunt eget arcu et, euismod dictum mauris. Nulla facilisi. Etiam commodo est lacus, sed placerat lore mollis sit amet.','http://127.0.0.1:8000/storage/avatar/austin.jpg',0,0,0,100,NULL,'2017-11-09 07:48:21','2017-11-10 21:19:31'),(31,2,3,'org31@mail.com','$2y$10$NQG/W2HdtoUAe1biBJCb5ufbYC52v6XZSfYG6lSxsBzeDxITKZfyi','john doe',0,'company','http://domain.com',1231234123,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce augue odio, tincidunt eget arcu et, euismod dictum mauris. Nulla facilisi. Etiam commodo est lacus, sed placerat lore mollis sit amet.','http://127.0.0.1:8000/storage/avatar/austin.jpg',0,0,0,100,NULL,'2017-11-09 07:49:43','2017-11-10 21:19:45'),(32,2,3,'org32@mail.com','$2y$10$yCYLgf2YMDR7Rb8949vX1uwhp5Td2r8EMJtfsM.cPCw9bPn1ae/pm','john doe',0,'company','http://domain.com',1231234123,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce augue odio, tincidunt eget arcu et, euismod dictum mauris. Nulla facilisi. Etiam commodo est lacus, sed placerat lore mollis sit amet.','http://127.0.0.1:8000/storage/avatar/austin.jpg',0,0,0,100,NULL,'2017-11-09 07:49:50','2017-11-10 21:19:48'),(33,2,3,'res31@mail.com','$2y$10$/flkNKWJudChv2FFnTlSBeQzf2qx5PGCkOZyhfie5lZWQJjYsIi6u','john doe',0,'company','http://domain.com',1231234123,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce augue odio, tincidunt eget arcu et, euismod dictum mauris. Nulla facilisi. Etiam commodo est lacus, sed placerat lore mollis sit amet.','http://127.0.0.1:8000/storage/avatar/austin.jpg',0,0,0,100,NULL,'2017-11-09 07:50:08','2017-11-10 21:19:50'),(34,2,3,'res32@mail.com','$2y$10$xIyNiEWRF4UI4ykGjqN2Vu/XEdPmrgynICDsxYqLkcKx3mMdIdhCq','john doe',0,'company','http://domain.com',1231234123,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce augue odio, tincidunt eget arcu et, euismod dictum mauris. Nulla facilisi. Etiam commodo est lacus, sed placerat lore mollis sit amet.','http://127.0.0.1:8000/storage/avatar/austin.jpg',0,0,0,100,NULL,'2017-11-09 07:50:14','2017-11-10 21:19:54'),(35,3,3,'res33@mail.com','$2y$10$n.nIz9Zz5uWe7WBH5ZMUJu1Tf2jKY7hspwBpX1gD7pqzhuhrA9k6K','john doe',0,'company','http://domain.com',1231234123,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce augue odio, tincidunt eget arcu et, euismod dictum mauris. Nulla facilisi. Etiam commodo est lacus, sed placerat lore mollis sit amet.','http://127.0.0.1:8000/storage/avatar/austin.jpg',0,0,0,100,NULL,'2017-11-09 07:50:18','2017-11-10 21:19:56'),(36,4,3,'mem31@mail.com','$2y$10$WAsS8XRRxDE2oXJthx4J.emoS60jOv9EpLl108J2ZPrPSGVznF9Ga','john doe',0,'company','http://domain.com',1231234123,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce augue odio, tincidunt eget arcu et, euismod dictum mauris. Nulla facilisi. Etiam commodo est lacus, sed placerat lore mollis sit amet','http://127.0.0.1:8000/storage/avatar/austin.jpg',0,0,0,100,NULL,'2017-11-09 08:00:15','2017-11-10 21:19:59'),(37,4,3,'mem32@mail.com','$2y$10$QsXFjCnXCziHcvpy3WG3k.qRtMZo6YNdkGXYTgGJw0RgjUPZAxfJC','john doe',0,'company','http://domain.com',1231234123,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce augue odio, tincidunt eget arcu et, euismod dictum mauris. Nulla facilisi. Etiam commodo est lacus, sed placerat lore mollis sit amet','http://127.0.0.1:8000/storage/avatar/austin.jpg',0,0,0,100,NULL,'2017-11-09 08:00:51','2017-11-10 21:20:02'),(38,4,3,'mem33@mail.com','$2y$10$WDuRRgqu0j3sUg0of/9nEOmDokgmtxDyVvoWSH78iOiEjAl4Lg9Hu','john doe',0,'company','http://domain.com',1231234123,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce augue odio, tincidunt eget arcu et, euismod dictum mauris. Nulla facilisi. Etiam commodo est lacus, sed placerat lore mollis sit amet','http://127.0.0.1:8000/storage/avatar/austin.jpg',0,0,0,100,NULL,'2017-11-09 08:00:55','2017-11-10 21:20:06'),(39,4,3,'mem34@mail.com','$2y$10$pc3B0hduLmRWFDePzeWGD.uQnYxG8QRBL5isms7AsiFjgbX8j3jlC','john doe',0,'company','http://domain.com',1231234123,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce augue odio, tincidunt eget arcu et, euismod dictum mauris. Nulla facilisi. Etiam commodo est lacus, sed placerat lore mollis sit amet','http://127.0.0.1:8000/storage/avatar/austin.jpg',0,0,0,100,NULL,'2017-11-09 08:01:02','2017-11-10 21:20:11'),(40,4,3,'mem35@mail.com','$2y$10$Q2YWYO0u5VlzA5bzzz6XnOzdj6VPw3LW4bL47cbm4uykclZ1fvK3.','john doe',0,'company','http://domain.com',1231234123,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce augue odio, tincidunt eget arcu et, euismod dictum mauris. Nulla facilisi. Etiam commodo est lacus, sed placerat lore mollis sit amet','http://127.0.0.1:8000/storage/avatar/austin.jpg',0,0,0,100,NULL,'2017-11-09 08:01:08','2017-11-10 21:20:14'),(41,4,3,'mem36@mail.com','$2y$10$m4V4aLBZj6Pjlp4iFOTd8.ZeBmJM..8.9pNs2a1iRFivuVK4iBeSm','john doe',0,'company','http://domain.com',1231234123,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce augue odio, tincidunt eget arcu et, euismod dictum mauris. Nulla facilisi. Etiam commodo est lacus, sed placerat lore mollis sit amet','http://127.0.0.1:8000/storage/avatar/austin.jpg',0,0,0,100,NULL,'2017-11-09 08:01:12','2017-11-10 21:20:17'),(42,2,4,'org41@mail.com','$2y$10$vNGqgdIgqWCfJjNjcDFcKep.BXrcrLX35QXSii4/8nfmzpgfZmOce','john doe',0,'company','http://domain.com',1231234123,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce augue odio, tincidunt eget arcu et, euismod dictum mauris. Nulla facilisi. Etiam commodo est lacus, sed placerat lore mollis sit amet','http://127.0.0.1:8000/storage/avatar/austin.jpg',0,0,0,100,NULL,'2017-11-09 08:03:52','2017-11-10 21:20:20'),(43,2,4,'org42@mail.com','$2y$10$rwsVSt24wNqiNuXDEYZOmeqUb8ZHdWT7ejfv.5fEDUV451JsflNsm','john doe',0,'company','http://domain.com',1231234123,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce augue odio, tincidunt eget arcu et, euismod dictum mauris. Nulla facilisi. Etiam commodo est lacus, sed placerat lore mollis sit amet','http://127.0.0.1:8000/storage/avatar/austin.jpg',0,0,0,100,NULL,'2017-11-09 08:04:01','2017-11-10 21:20:22'),(44,3,4,'res41@mail.com','$2y$10$H5/whWiLxuOPfql4aMAHZeXW4E/w6SMiZU9IhvPnv3YW.FSycjPfq','john doe',0,'company','http://domain.com',1231234123,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce augue odio, tincidunt eget arcu et, euismod dictum mauris. Nulla facilisi. Etiam commodo est lacus, sed placerat lore mollis sit amet','http://127.0.0.1:8000/storage/avatar/austin.jpg',0,0,0,100,NULL,'2017-11-09 08:04:18','2017-11-10 21:20:25'),(45,3,4,'res432@mail.com','$2y$10$RFpZqE8XqSgiBMky25LBzOr2FVKt3jpvhqRa/L5j9IZ1i4hjLX4.W','john doe',0,'company','http://domain.com',1231234123,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce augue odio, tincidunt eget arcu et, euismod dictum mauris. Nulla facilisi. Etiam commodo est lacus, sed placerat lore mollis sit amet','http://127.0.0.1:8000/storage/avatar/austin.jpg',0,0,0,100,NULL,'2017-11-09 08:04:26','2017-11-10 21:20:27'),(46,4,4,'mem41@mail.com','$2y$10$J7ZUD6bpxnSj2ln4vkR.cO8TCAMQDiP9PzC54eZw019ktDecf/ZTK','john doe',0,'company','http://domain.com',1231234123,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce augue odio, tincidunt eget arcu et, euismod dictum mauris. Nulla facilisi. Etiam commodo est lacus, sed placerat lore mollis sit amet','http://127.0.0.1:8000/storage/avatar/austin.jpg',0,0,0,100,NULL,'2017-11-09 08:04:47','2017-11-10 21:20:31'),(47,4,4,'mem42@mail.com','$2y$10$A4CymcBDK.ziSyhLDdZfQ.ik53Hx.UMnTTQsXUwYl0i7HqeNKE/Mq','john doe',0,'company','http://domain.com',1231234123,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce augue odio, tincidunt eget arcu et, euismod dictum mauris. Nulla facilisi. Etiam commodo est lacus, sed placerat lore mollis sit amet','http://127.0.0.1:8000/storage/avatar/austin.jpg',0,0,0,100,NULL,'2017-11-09 08:05:02','2017-11-10 21:20:33'),(48,4,4,'mem43@mail.com','$2y$10$IscC9/LC.SS8UDlwxAbJDeeo5lPF7lT.JU260NA3O.UX9k75rcNBC','john doe',0,'company','http://domain.com',1231234123,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce augue odio, tincidunt eget arcu et, euismod dictum mauris. Nulla facilisi. Etiam commodo est lacus, sed placerat lore mollis sit amet','http://127.0.0.1:8000/storage/avatar/austin.jpg',0,0,0,100,NULL,'2017-11-09 08:05:12','2017-11-10 21:20:36'),(49,4,4,'mem44@mail.com','$2y$10$zWTbj4f1cXsCdgWyR4dLQeYOXrg.LCwtQlBWQ8Fy2cn3ycpENHCwa','john doe',0,'company','http://domain.com',1231234123,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce augue odio, tincidunt eget arcu et, euismod dictum mauris. Nulla facilisi. Etiam commodo est lacus, sed placerat lore mollis sit amet','http://127.0.0.1:8000/storage/avatar/austin.jpg',0,0,0,100,NULL,'2017-11-09 08:05:19','2017-11-10 21:20:38'),(50,2,5,'org51@mail.com','$2y$10$nAvJuDwj6LKr17QTOVTskeRsr.sRnkvgZ4QJda0sdpqtMoAyqngVu','john doe',0,'company','http://domain.com',1231234123,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce augue odio, tincidunt eget arcu et, euismod dictum mauris. Nulla facilisi. Etiam commodo est lacus, sed placerat lore mollis sit amet','http://127.0.0.1:8000/storage/avatar/austin.jpg',0,0,0,100,NULL,'2017-11-09 08:06:06','2017-11-10 21:20:42'),(51,2,5,'org52@mail.com','$2y$10$BvKdYZvwc5SIMVY9U5nTA.j2dLdS.YQWIb23yFTKipql4eHVrgbkq','john doe',0,'company','http://domain.com',1231234123,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce augue odio, tincidunt eget arcu et, euismod dictum mauris. Nulla facilisi. Etiam commodo est lacus, sed placerat lore mollis sit amet','http://127.0.0.1:8000/storage/avatar/austin.jpg',0,0,0,100,NULL,'2017-11-09 08:06:20','2017-11-10 21:20:46'),(52,3,5,'res51@mail.com','$2y$10$a52WdizAmg92OlcP03Rh/e8.S1XfTJrS2Iu6FrigPvDJ/JceNiKC6','john doe',0,'company','http://domain.com',1231234123,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce augue odio, tincidunt eget arcu et, euismod dictum mauris. Nulla facilisi. Etiam commodo est lacus, sed placerat lore mollis sit amet','http://127.0.0.1:8000/storage/avatar/austin.jpg',0,0,0,100,NULL,'2017-11-09 08:08:00','2017-11-10 21:20:49'),(53,3,5,'res52@mail.com','$2y$10$THu14.oq406aKFEgIYCCme8OEb.QcumqzJeSKPLROkqf415QXR8F.','john doe',0,'company','http://domain.com',1231234123,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce augue odio, tincidunt eget arcu et, euismod dictum mauris. Nulla facilisi. Etiam commodo est lacus, sed placerat lore mollis sit amet','http://127.0.0.1:8000/storage/avatar/austin.jpg',0,0,0,100,NULL,'2017-11-09 08:08:07','2017-11-10 21:20:52'),(54,4,5,'res53@mail.com','$2y$10$sEPupumVIzWq3rQUQVsmvetbwqGMQSY3B/DXSwuOdWRlRteR9RzTi','john doe',0,'company','http://domain.com',1231234123,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce augue odio, tincidunt eget arcu et, euismod dictum mauris. Nulla facilisi. Etiam commodo est lacus, sed placerat lore mollis sit amet','http://127.0.0.1:8000/storage/avatar/austin.jpg',0,0,0,100,NULL,'2017-11-09 08:11:01','2017-11-10 21:20:54'),(55,4,5,'res54@mail.com','$2y$10$qF3YMYz/Csjjk3NP4OFsguINpyGbCVerCUJIobt6MzT2vm2TxSjNO','john doe',0,'company','http://domain.com',1231234123,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce augue odio, tincidunt eget arcu et, euismod dictum mauris. Nulla facilisi. Etiam commodo est lacus, sed placerat lore mollis sit amet','http://127.0.0.1:8000/storage/avatar/austin.jpg',0,0,0,100,NULL,'2017-11-09 08:11:07','2017-11-10 21:20:57'),(56,4,5,'res55@mail.com','$2y$10$qkABoY8bT16pQE8iPp00.OE.apIMsSiMp8PZS0oy0jJ2ngoaTVMra','john doe',0,'company','http://domain.com',1231234123,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce augue odio, tincidunt eget arcu et, euismod dictum mauris. Nulla facilisi. Etiam commodo est lacus, sed placerat lore mollis sit amet','http://127.0.0.1:8000/storage/avatar/austin.jpg',0,0,0,100,NULL,'2017-11-09 08:11:15','2017-11-10 21:21:00'),(57,4,5,'mem56@mail.com','$2y$10$XKhqnsHE402/YLu1XRU2teHXt9dfnCwa1hr9Lm8rSrg.23h3PRGEi','john doe',0,'company','http://domain.com',1231234123,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce augue odio, tincidunt eget arcu et, euismod dictum mauris. Nulla facilisi. Etiam commodo est lacus, sed placerat lore mollis sit amet','http://127.0.0.1:8000/storage/avatar/austin.jpg',0,0,0,100,NULL,'2017-11-09 08:17:07','2017-11-10 21:21:04'),(58,2,5,'org61@mail.com','$2y$10$.0ntIziDdeQMYD22gPSmZOy9RpwPulvsZyHroXDov1wEha343nU4.','john doe',0,'company','http://domain.com',1231234123,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce augue odio, tincidunt eget arcu et, euismod dictum mauris. Nulla facilisi. Etiam commodo est lacus, sed placerat lore mollis sit amet','http://127.0.0.1:8000/storage/avatar/austin.jpg',0,0,0,100,NULL,'2017-11-09 08:18:14','2017-11-10 21:21:10'),(59,2,5,'org62@mail.com','$2y$10$3ZMdpjCvl0mQIePVH.ffI.ZYUuwBiz2GJF89Bl4L1HNCZZYWw5EZm','john doe',0,'company','http://domain.com',1231234123,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce augue odio, tincidunt eget arcu et, euismod dictum mauris. Nulla facilisi. Etiam commodo est lacus, sed placerat lore mollis sit amet','http://127.0.0.1:8000/storage/avatar/austin.jpg',0,0,0,100,NULL,'2017-11-09 08:18:18','2017-11-10 21:21:07'),(60,3,5,'res61@mail.com','$2y$10$hT4nRgUdINxV0yMmz58HEO6diOXDG.5qTR/ATntX9B2iLVc.asyxq','john doe',0,'company','http://domain.com',1231234123,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce augue odio, tincidunt eget arcu et, euismod dictum mauris. Nulla facilisi. Etiam commodo est lacus, sed placerat lore mollis sit amet','http://127.0.0.1:8000/storage/avatar/austin.jpg',0,0,0,100,NULL,'2017-11-09 08:23:30','2017-11-10 21:21:13'),(61,2,6,'res621@mail.com','$2y$10$I9CkYZAvkzh6TEcCWOj0quwH2W4V/MmdVBBtbqC8EnRwuvJL168PO','john doe',0,'company','http://domain.com',1231234123,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce augue odio, tincidunt eget arcu et, euismod dictum mauris. Nulla facilisi. Etiam commodo est lacus, sed placerat lore mollis sit amet','http://127.0.0.1:8000/storage/avatar/austin.jpg',0,0,0,100,NULL,'2017-11-09 08:28:14','2017-11-10 21:21:17'),(62,2,6,'res62w@mail.com','$2y$10$Qg3lhTWU4YDVbSdcLtJ/ueScrdHBP/HrBel39eAJJHYSRD2eGHYiS','john doe',0,'company','http://domain.com',1231234123,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce augue odio, tincidunt eget arcu et, euismod dictum mauris. Nulla facilisi. Etiam commodo est lacus, sed placerat lore mollis sit amet','http://127.0.0.1:8000/storage/avatar/austin.jpg',0,0,0,100,NULL,'2017-11-09 08:28:24','2017-11-10 21:21:20'),(63,3,6,'org266@mail.com','$2y$10$7DVuIWMPXRFj5EAfmesz4.x2C3g3VIVkQg2/JX/Yw.pNRfiXgPwTm','john doe',0,'company','http://domain.com',1231234123,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce augue odio, tincidunt eget arcu et, euismod dictum mauris. Nulla facilisi. Etiam commodo est lacus, sed placerat lore mollis sit amet','http://127.0.0.1:8000/storage/avatar/austin.jpg',0,0,0,100,NULL,'2017-11-09 08:29:27','2017-11-10 21:21:23'),(64,3,6,'org2266@mail.com','$2y$10$tui7Ark4Mlcz75GGWXWNqOp0W3FvOpsmYoP.5dAHPv2Jzc1X5QZBi','john doe',0,'company','http://domain.com',1231234123,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce augue odio, tincidunt eget arcu et, euismod dictum mauris. Nulla facilisi. Etiam commodo est lacus, sed placerat lore mollis sit amet','http://127.0.0.1:8000/storage/avatar/austin.jpg',0,0,0,100,NULL,'2017-11-09 08:29:37','2017-11-10 21:21:31'),(65,4,6,'mem61@mail.com','$2y$10$7HT9H16289njoOlZp4v.r.JkcwIokCxickb8mhYjsexAb/swhvAX6','john doe',0,'company','http://domain.com',1231234123,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce augue odio, tincidunt eget arcu et, euismod dictum mauris. Nulla facilisi. Etiam commodo est lacus, sed placerat lore mollis sit amet','http://127.0.0.1:8000/storage/avatar/austin.jpg',0,0,0,100,NULL,'2017-11-09 08:30:41','2017-11-10 21:21:36'),(66,4,6,'mem62@mail.com','$2y$10$FjOn6sS9mt45vmM668a2/uyssTdU9C4Q9owLxgVGp7sV2PcUTmRqO','john doe',0,'company','http://domain.com',1231234123,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce augue odio, tincidunt eget arcu et, euismod dictum mauris. Nulla facilisi. Etiam commodo est lacus, sed placerat lore mollis sit amet','http://127.0.0.1:8000/storage/avatar/austin.jpg',0,0,0,100,NULL,'2017-11-09 08:30:47','2017-11-10 21:21:39'),(67,4,6,'mem63@mail.com','$2y$10$I/RL/gBYX2O.3iUcGJ6xkuj41u5fFocHxYxfRbkABKMDx.xYgXwOW','john doe',0,'company','http://domain.com',1231234123,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce augue odio, tincidunt eget arcu et, euismod dictum mauris. Nulla facilisi. Etiam commodo est lacus, sed placerat lore mollis sit amet','http://127.0.0.1:8000/storage/avatar/austin.jpg',0,0,0,100,NULL,'2017-11-09 08:30:58','2017-11-10 21:21:42'),(68,4,6,'mem64@mail.com','$2y$10$Ef5TSMOtg.vhrUKa8NlEbulGgG/TUZQnuz0FqRLYrvSARVopbZLzS','john doe',0,'company','http://domain.com',1231234123,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce augue odio, tincidunt eget arcu et, euismod dictum mauris. Nulla facilisi. Etiam commodo est lacus, sed placerat lore mollis sit amet','http://127.0.0.1:8000/storage/avatar/austin.jpg',0,0,0,100,NULL,'2017-11-09 08:31:04','2017-11-10 21:21:44'),(69,2,7,'org71@mail.com','$2y$10$h/P0eaQ2lCWGiJOm./e3FOvz578vXgImG4q5kf3gz.Wb.WFGQWwV2','john doe',0,'company','http://domain.com',1231234123,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce augue odio, tincidunt eget arcu et, euismod dictum mauris. Nulla facilisi. Etiam commodo est lacus, sed placerat lore mollis sit amet','http://127.0.0.1:8000/storage/avatar/austin.jpg',0,0,0,100,NULL,'2017-11-09 08:39:37','2017-11-10 21:21:47'),(70,2,7,'org72@mail.com','$2y$10$i1/ZWhIXRQFIn6J7HUUj1.oLDPw6qmBOa0F0vxq3DKIHk8c/XcBv2','john doe',0,'company','http://domain.com',1231234123,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce augue odio, tincidunt eget arcu et, euismod dictum mauris. Nulla facilisi. Etiam commodo est lacus, sed placerat lore mollis sit amet','http://127.0.0.1:8000/storage/avatar/austin.jpg',0,0,0,100,NULL,'2017-11-09 08:39:43','2017-11-10 21:21:59'),(71,3,7,'res72@mail.com','$2y$10$sFLmuGAIRm40tehObOg64e5aR5uUKsZYsKC4cPqR9gdjyTjG1pXD2','john doe',0,'company','http://domain.com',1231234123,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce augue odio, tincidunt eget arcu et, euismod dictum mauris. Nulla facilisi. Etiam commodo est lacus, sed placerat lore mollis sit amet','http://127.0.0.1:8000/storage/avatar/austin.jpg',0,0,0,100,NULL,'2017-11-09 08:39:55','2017-11-10 21:22:23'),(72,3,7,'res71@mail.com','$2y$10$sbhgnvcn50HPTwJfliRkaehBfmt/a1Yk4pLADX3FOBo0EarC1flpi','john doe',0,'company','http://domain.com',1231234123,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce augue odio, tincidunt eget arcu et, euismod dictum mauris. Nulla facilisi. Etiam commodo est lacus, sed placerat lore mollis sit amet','http://127.0.0.1:8000/storage/avatar/austin.jpg',0,0,0,100,NULL,'2017-11-09 08:40:01','2017-11-10 21:22:26'),(73,4,7,'mem71@mail.com','$2y$10$ahGrXd1X8Z8NA2NRG.m30.oTvLxDpyPDnIm4GXwoc3JyyCaA8nVaO','john doe',0,'company','http://domain.com',1231234123,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce augue odio, tincidunt eget arcu et, euismod dictum mauris. Nulla facilisi. Etiam commodo est lacus, sed placerat lore mollis sit amet','http://127.0.0.1:8000/storage/avatar/austin.jpg',0,0,0,100,NULL,'2017-11-09 08:42:19','2017-11-10 21:22:36'),(74,4,7,'mem72@mail.com','$2y$10$XlOE7CBgavIcepiDq3v3uebH5m95.PbtlRlXKrgLsMnXuImDD6DtO','john doe',0,'company','http://domain.com',1231234123,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce augue odio, tincidunt eget arcu et, euismod dictum mauris. Nulla facilisi. Etiam commodo est lacus, sed placerat lore mollis sit amet','http://127.0.0.1:8000/storage/avatar/austin.jpg',0,0,0,100,NULL,'2017-11-09 08:42:25','2017-11-10 21:22:39'),(75,4,7,'mem73@mail.com','$2y$10$sE3bL8/f4UxobQNC8A3Cb.OKVPvmg1UPjAGZ2YZ9aUpDin3uKciou','john doe',0,'company','http://domain.com',1231234123,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce augue odio, tincidunt eget arcu et, euismod dictum mauris. Nulla facilisi. Etiam commodo est lacus, sed placerat lore mollis sit amet','http://127.0.0.1:8000/storage/avatar/austin.jpg',0,0,0,100,NULL,'2017-11-09 08:42:29','2017-11-10 21:22:41'),(76,4,7,'mem74@mail.com','$2y$10$miZDKJQnCff3VW4MY5qGkOoqTVMX07ktSKzi5gmR4oQvJ8qRuHsWi','john doe',0,'company','http://domain.com',1231234123,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce augue odio, tincidunt eget arcu et, euismod dictum mauris. Nulla facilisi. Etiam commodo est lacus, sed placerat lore mollis sit amet','http://127.0.0.1:8000/storage/avatar/austin.jpg',0,0,0,100,NULL,'2017-11-09 08:42:34','2017-11-10 21:22:44');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userskills`
--

DROP TABLE IF EXISTS `userskills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userskills` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userID` int(11) NOT NULL,
  `skillID` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=229 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userskills`
--

LOCK TABLES `userskills` WRITE;
/*!40000 ALTER TABLE `userskills` DISABLE KEYS */;
INSERT INTO `userskills` VALUES (1,1,1,'mentoring','2017-11-09 07:39:12','2017-11-09 07:39:12'),(2,1,2,'education','2017-11-09 07:39:12','2017-11-09 07:39:12'),(3,1,3,'regulation','2017-11-09 07:39:12','2017-11-09 07:39:12'),(4,2,4,'html','2017-11-09 07:40:22','2017-11-09 07:40:22'),(5,2,5,'css','2017-11-09 07:40:22','2017-11-09 07:40:22'),(6,2,6,'javascript','2017-11-09 07:40:22','2017-11-09 07:40:22'),(7,3,4,'html','2017-11-09 07:40:33','2017-11-09 07:40:33'),(8,3,5,'css','2017-11-09 07:40:33','2017-11-09 07:40:33'),(9,3,6,'javascript','2017-11-09 07:40:33','2017-11-09 07:40:33'),(10,4,4,'html','2017-11-09 07:41:00','2017-11-09 07:41:00'),(11,4,5,'css','2017-11-09 07:41:00','2017-11-09 07:41:00'),(12,4,6,'javascript','2017-11-09 07:41:00','2017-11-09 07:41:00'),(13,5,4,'html','2017-11-09 07:41:05','2017-11-09 07:41:05'),(14,5,5,'css','2017-11-09 07:41:05','2017-11-09 07:41:05'),(15,5,6,'javascript','2017-11-09 07:41:05','2017-11-09 07:41:05'),(16,6,4,'html','2017-11-09 07:41:25','2017-11-09 07:41:25'),(17,6,5,'css','2017-11-09 07:41:25','2017-11-09 07:41:25'),(18,6,6,'javascript','2017-11-09 07:41:25','2017-11-09 07:41:25'),(19,7,4,'html','2017-11-09 07:41:40','2017-11-09 07:41:40'),(20,7,5,'css','2017-11-09 07:41:40','2017-11-09 07:41:40'),(21,7,6,'javascript','2017-11-09 07:41:40','2017-11-09 07:41:40'),(22,8,4,'html','2017-11-09 07:42:21','2017-11-09 07:42:21'),(23,8,5,'css','2017-11-09 07:42:21','2017-11-09 07:42:21'),(24,8,6,'javascript','2017-11-09 07:42:21','2017-11-09 07:42:21'),(25,9,4,'html','2017-11-09 07:42:36','2017-11-09 07:42:36'),(26,9,5,'css','2017-11-09 07:42:36','2017-11-09 07:42:36'),(27,9,6,'javascript','2017-11-09 07:42:36','2017-11-09 07:42:36'),(28,10,4,'html','2017-11-09 07:42:45','2017-11-09 07:42:45'),(29,10,5,'css','2017-11-09 07:42:45','2017-11-09 07:42:45'),(30,10,6,'javascript','2017-11-09 07:42:45','2017-11-09 07:42:45'),(31,11,4,'html','2017-11-09 07:42:51','2017-11-09 07:42:51'),(32,11,5,'css','2017-11-09 07:42:51','2017-11-09 07:42:51'),(33,11,6,'javascript','2017-11-09 07:42:51','2017-11-09 07:42:51'),(34,12,4,'html','2017-11-09 07:42:56','2017-11-09 07:42:56'),(35,12,5,'css','2017-11-09 07:42:56','2017-11-09 07:42:56'),(36,12,6,'javascript','2017-11-09 07:42:56','2017-11-09 07:42:56'),(37,13,4,'html','2017-11-09 07:43:08','2017-11-09 07:43:08'),(38,13,5,'css','2017-11-09 07:43:08','2017-11-09 07:43:08'),(39,13,6,'javascript','2017-11-09 07:43:08','2017-11-09 07:43:08'),(40,14,4,'html','2017-11-09 07:43:15','2017-11-09 07:43:15'),(41,14,5,'css','2017-11-09 07:43:15','2017-11-09 07:43:15'),(42,14,6,'javascript','2017-11-09 07:43:15','2017-11-09 07:43:15'),(43,15,4,'html','2017-11-09 07:43:21','2017-11-09 07:43:21'),(44,15,5,'css','2017-11-09 07:43:21','2017-11-09 07:43:21'),(45,15,6,'javascript','2017-11-09 07:43:21','2017-11-09 07:43:21'),(46,16,4,'html','2017-11-09 07:43:35','2017-11-09 07:43:35'),(47,16,5,'css','2017-11-09 07:43:35','2017-11-09 07:43:35'),(48,16,6,'javascript','2017-11-09 07:43:35','2017-11-09 07:43:35'),(49,17,4,'html','2017-11-09 07:45:34','2017-11-09 07:45:34'),(50,17,5,'css','2017-11-09 07:45:34','2017-11-09 07:45:34'),(51,17,6,'javascript','2017-11-09 07:45:34','2017-11-09 07:45:34'),(52,18,4,'html','2017-11-09 07:46:26','2017-11-09 07:46:26'),(53,18,5,'css','2017-11-09 07:46:26','2017-11-09 07:46:26'),(54,18,6,'javascript','2017-11-09 07:46:26','2017-11-09 07:46:26'),(55,19,4,'html','2017-11-09 07:46:50','2017-11-09 07:46:50'),(56,19,5,'css','2017-11-09 07:46:50','2017-11-09 07:46:50'),(57,19,6,'javascript','2017-11-09 07:46:50','2017-11-09 07:46:50'),(58,20,4,'html','2017-11-09 07:46:55','2017-11-09 07:46:55'),(59,20,5,'css','2017-11-09 07:46:55','2017-11-09 07:46:55'),(60,20,6,'javascript','2017-11-09 07:46:55','2017-11-09 07:46:55'),(61,21,4,'html','2017-11-09 07:47:16','2017-11-09 07:47:16'),(62,21,5,'css','2017-11-09 07:47:16','2017-11-09 07:47:16'),(63,21,6,'javascript','2017-11-09 07:47:16','2017-11-09 07:47:16'),(64,22,4,'html','2017-11-09 07:47:21','2017-11-09 07:47:21'),(65,22,5,'css','2017-11-09 07:47:21','2017-11-09 07:47:21'),(66,22,6,'javascript','2017-11-09 07:47:21','2017-11-09 07:47:21'),(67,23,4,'html','2017-11-09 07:47:27','2017-11-09 07:47:27'),(68,23,5,'css','2017-11-09 07:47:27','2017-11-09 07:47:27'),(69,23,6,'javascript','2017-11-09 07:47:27','2017-11-09 07:47:27'),(70,24,4,'html','2017-11-09 07:47:33','2017-11-09 07:47:33'),(71,24,5,'css','2017-11-09 07:47:33','2017-11-09 07:47:33'),(72,24,6,'javascript','2017-11-09 07:47:33','2017-11-09 07:47:33'),(73,25,4,'html','2017-11-09 07:47:38','2017-11-09 07:47:38'),(74,25,5,'css','2017-11-09 07:47:38','2017-11-09 07:47:38'),(75,25,6,'javascript','2017-11-09 07:47:38','2017-11-09 07:47:38'),(76,26,4,'html','2017-11-09 07:47:53','2017-11-09 07:47:53'),(77,26,5,'css','2017-11-09 07:47:53','2017-11-09 07:47:53'),(78,26,6,'javascript','2017-11-09 07:47:53','2017-11-09 07:47:53'),(79,27,4,'html','2017-11-09 07:48:00','2017-11-09 07:48:00'),(80,27,5,'css','2017-11-09 07:48:00','2017-11-09 07:48:00'),(81,27,6,'javascript','2017-11-09 07:48:00','2017-11-09 07:48:00'),(82,28,4,'html','2017-11-09 07:48:05','2017-11-09 07:48:05'),(83,28,5,'css','2017-11-09 07:48:05','2017-11-09 07:48:05'),(84,28,6,'javascript','2017-11-09 07:48:05','2017-11-09 07:48:05'),(85,29,4,'html','2017-11-09 07:48:14','2017-11-09 07:48:14'),(86,29,5,'css','2017-11-09 07:48:14','2017-11-09 07:48:14'),(87,29,6,'javascript','2017-11-09 07:48:14','2017-11-09 07:48:14'),(88,30,4,'html','2017-11-09 07:48:21','2017-11-09 07:48:21'),(89,30,5,'css','2017-11-09 07:48:21','2017-11-09 07:48:21'),(90,30,6,'javascript','2017-11-09 07:48:21','2017-11-09 07:48:21'),(91,31,4,'html','2017-11-09 07:49:43','2017-11-09 07:49:43'),(92,31,5,'css','2017-11-09 07:49:43','2017-11-09 07:49:43'),(93,31,6,'javascript','2017-11-09 07:49:43','2017-11-09 07:49:43'),(94,32,4,'html','2017-11-09 07:49:50','2017-11-09 07:49:50'),(95,32,5,'css','2017-11-09 07:49:50','2017-11-09 07:49:50'),(96,32,6,'javascript','2017-11-09 07:49:50','2017-11-09 07:49:50'),(97,33,4,'html','2017-11-09 07:50:08','2017-11-09 07:50:08'),(98,33,5,'css','2017-11-09 07:50:08','2017-11-09 07:50:08'),(99,33,6,'javascript','2017-11-09 07:50:08','2017-11-09 07:50:08'),(100,34,4,'html','2017-11-09 07:50:14','2017-11-09 07:50:14'),(101,34,5,'css','2017-11-09 07:50:14','2017-11-09 07:50:14'),(102,34,6,'javascript','2017-11-09 07:50:14','2017-11-09 07:50:14'),(103,35,4,'html','2017-11-09 07:50:18','2017-11-09 07:50:18'),(104,35,5,'css','2017-11-09 07:50:18','2017-11-09 07:50:18'),(105,35,6,'javascript','2017-11-09 07:50:18','2017-11-09 07:50:18'),(106,36,4,'html','2017-11-09 08:00:15','2017-11-09 08:00:15'),(107,36,5,'css','2017-11-09 08:00:15','2017-11-09 08:00:15'),(108,36,6,'javascript','2017-11-09 08:00:15','2017-11-09 08:00:15'),(109,37,4,'html','2017-11-09 08:00:51','2017-11-09 08:00:51'),(110,37,5,'css','2017-11-09 08:00:51','2017-11-09 08:00:51'),(111,37,6,'javascript','2017-11-09 08:00:51','2017-11-09 08:00:51'),(112,38,4,'html','2017-11-09 08:00:55','2017-11-09 08:00:55'),(113,38,5,'css','2017-11-09 08:00:55','2017-11-09 08:00:55'),(114,38,6,'javascript','2017-11-09 08:00:55','2017-11-09 08:00:55'),(115,39,4,'html','2017-11-09 08:01:02','2017-11-09 08:01:02'),(116,39,5,'css','2017-11-09 08:01:02','2017-11-09 08:01:02'),(117,39,6,'javascript','2017-11-09 08:01:02','2017-11-09 08:01:02'),(118,40,4,'html','2017-11-09 08:01:08','2017-11-09 08:01:08'),(119,40,5,'css','2017-11-09 08:01:08','2017-11-09 08:01:08'),(120,40,6,'javascript','2017-11-09 08:01:08','2017-11-09 08:01:08'),(121,41,4,'html','2017-11-09 08:01:12','2017-11-09 08:01:12'),(122,41,5,'css','2017-11-09 08:01:12','2017-11-09 08:01:12'),(123,41,6,'javascript','2017-11-09 08:01:12','2017-11-09 08:01:12'),(124,42,4,'html','2017-11-09 08:03:52','2017-11-09 08:03:52'),(125,42,5,'css','2017-11-09 08:03:52','2017-11-09 08:03:52'),(126,42,6,'javascript','2017-11-09 08:03:52','2017-11-09 08:03:52'),(127,43,4,'html','2017-11-09 08:04:01','2017-11-09 08:04:01'),(128,43,5,'css','2017-11-09 08:04:01','2017-11-09 08:04:01'),(129,43,6,'javascript','2017-11-09 08:04:01','2017-11-09 08:04:01'),(130,44,4,'html','2017-11-09 08:04:18','2017-11-09 08:04:18'),(131,44,5,'css','2017-11-09 08:04:18','2017-11-09 08:04:18'),(132,44,6,'javascript','2017-11-09 08:04:18','2017-11-09 08:04:18'),(133,45,4,'html','2017-11-09 08:04:26','2017-11-09 08:04:26'),(134,45,5,'css','2017-11-09 08:04:26','2017-11-09 08:04:26'),(135,45,6,'javascript','2017-11-09 08:04:26','2017-11-09 08:04:26'),(136,46,4,'html','2017-11-09 08:04:47','2017-11-09 08:04:47'),(137,46,5,'css','2017-11-09 08:04:47','2017-11-09 08:04:47'),(138,46,6,'javascript','2017-11-09 08:04:47','2017-11-09 08:04:47'),(139,47,4,'html','2017-11-09 08:05:02','2017-11-09 08:05:02'),(140,47,5,'css','2017-11-09 08:05:02','2017-11-09 08:05:02'),(141,47,6,'javascript','2017-11-09 08:05:02','2017-11-09 08:05:02'),(142,48,4,'html','2017-11-09 08:05:12','2017-11-09 08:05:12'),(143,48,5,'css','2017-11-09 08:05:12','2017-11-09 08:05:12'),(144,48,6,'javascript','2017-11-09 08:05:12','2017-11-09 08:05:12'),(145,49,4,'html','2017-11-09 08:05:19','2017-11-09 08:05:19'),(146,49,5,'css','2017-11-09 08:05:19','2017-11-09 08:05:19'),(147,49,6,'javascript','2017-11-09 08:05:19','2017-11-09 08:05:19'),(148,50,4,'html','2017-11-09 08:06:06','2017-11-09 08:06:06'),(149,50,5,'css','2017-11-09 08:06:06','2017-11-09 08:06:06'),(150,50,6,'javascript','2017-11-09 08:06:06','2017-11-09 08:06:06'),(151,51,4,'html','2017-11-09 08:06:20','2017-11-09 08:06:20'),(152,51,5,'css','2017-11-09 08:06:20','2017-11-09 08:06:20'),(153,51,6,'javascript','2017-11-09 08:06:20','2017-11-09 08:06:20'),(154,52,4,'html','2017-11-09 08:08:00','2017-11-09 08:08:00'),(155,52,5,'css','2017-11-09 08:08:00','2017-11-09 08:08:00'),(156,52,6,'javascript','2017-11-09 08:08:00','2017-11-09 08:08:00'),(157,53,4,'html','2017-11-09 08:08:07','2017-11-09 08:08:07'),(158,53,5,'css','2017-11-09 08:08:07','2017-11-09 08:08:07'),(159,53,6,'javascript','2017-11-09 08:08:07','2017-11-09 08:08:07'),(160,54,4,'html','2017-11-09 08:11:01','2017-11-09 08:11:01'),(161,54,5,'css','2017-11-09 08:11:01','2017-11-09 08:11:01'),(162,54,6,'javascript','2017-11-09 08:11:01','2017-11-09 08:11:01'),(163,55,4,'html','2017-11-09 08:11:07','2017-11-09 08:11:07'),(164,55,5,'css','2017-11-09 08:11:07','2017-11-09 08:11:07'),(165,55,6,'javascript','2017-11-09 08:11:07','2017-11-09 08:11:07'),(166,56,4,'html','2017-11-09 08:11:15','2017-11-09 08:11:15'),(167,56,5,'css','2017-11-09 08:11:15','2017-11-09 08:11:15'),(168,56,6,'javascript','2017-11-09 08:11:15','2017-11-09 08:11:15'),(169,57,4,'html','2017-11-09 08:17:07','2017-11-09 08:17:07'),(170,57,5,'css','2017-11-09 08:17:07','2017-11-09 08:17:07'),(171,57,6,'javascript','2017-11-09 08:17:07','2017-11-09 08:17:07'),(172,58,4,'html','2017-11-09 08:18:14','2017-11-09 08:18:14'),(173,58,5,'css','2017-11-09 08:18:14','2017-11-09 08:18:14'),(174,58,6,'javascript','2017-11-09 08:18:14','2017-11-09 08:18:14'),(175,59,4,'html','2017-11-09 08:18:18','2017-11-09 08:18:18'),(176,59,5,'css','2017-11-09 08:18:18','2017-11-09 08:18:18'),(177,59,6,'javascript','2017-11-09 08:18:18','2017-11-09 08:18:18'),(178,60,4,'html','2017-11-09 08:23:30','2017-11-09 08:23:30'),(179,60,5,'css','2017-11-09 08:23:30','2017-11-09 08:23:30'),(180,60,6,'javascript','2017-11-09 08:23:30','2017-11-09 08:23:30'),(181,61,4,'html','2017-11-09 08:28:14','2017-11-09 08:28:14'),(182,61,5,'css','2017-11-09 08:28:14','2017-11-09 08:28:14'),(183,61,6,'javascript','2017-11-09 08:28:14','2017-11-09 08:28:14'),(184,62,4,'html','2017-11-09 08:28:24','2017-11-09 08:28:24'),(185,62,5,'css','2017-11-09 08:28:24','2017-11-09 08:28:24'),(186,62,6,'javascript','2017-11-09 08:28:24','2017-11-09 08:28:24'),(187,63,4,'html','2017-11-09 08:29:27','2017-11-09 08:29:27'),(188,63,5,'css','2017-11-09 08:29:27','2017-11-09 08:29:27'),(189,63,6,'javascript','2017-11-09 08:29:27','2017-11-09 08:29:27'),(190,64,4,'html','2017-11-09 08:29:37','2017-11-09 08:29:37'),(191,64,5,'css','2017-11-09 08:29:37','2017-11-09 08:29:37'),(192,64,6,'javascript','2017-11-09 08:29:37','2017-11-09 08:29:37'),(193,65,4,'html','2017-11-09 08:30:41','2017-11-09 08:30:41'),(194,65,5,'css','2017-11-09 08:30:41','2017-11-09 08:30:41'),(195,65,6,'javascript','2017-11-09 08:30:41','2017-11-09 08:30:41'),(196,66,4,'html','2017-11-09 08:30:47','2017-11-09 08:30:47'),(197,66,5,'css','2017-11-09 08:30:47','2017-11-09 08:30:47'),(198,66,6,'javascript','2017-11-09 08:30:47','2017-11-09 08:30:47'),(199,67,4,'html','2017-11-09 08:30:58','2017-11-09 08:30:58'),(200,67,5,'css','2017-11-09 08:30:58','2017-11-09 08:30:58'),(201,67,6,'javascript','2017-11-09 08:30:58','2017-11-09 08:30:58'),(202,68,4,'html','2017-11-09 08:31:04','2017-11-09 08:31:04'),(203,68,5,'css','2017-11-09 08:31:04','2017-11-09 08:31:04'),(204,68,6,'javascript','2017-11-09 08:31:04','2017-11-09 08:31:04'),(205,69,4,'html','2017-11-09 08:39:37','2017-11-09 08:39:37'),(206,69,5,'css','2017-11-09 08:39:37','2017-11-09 08:39:37'),(207,69,6,'javascript','2017-11-09 08:39:37','2017-11-09 08:39:37'),(208,70,4,'html','2017-11-09 08:39:43','2017-11-09 08:39:43'),(209,70,5,'css','2017-11-09 08:39:43','2017-11-09 08:39:43'),(210,70,6,'javascript','2017-11-09 08:39:43','2017-11-09 08:39:43'),(211,71,4,'html','2017-11-09 08:39:55','2017-11-09 08:39:55'),(212,71,5,'css','2017-11-09 08:39:55','2017-11-09 08:39:55'),(213,71,6,'javascript','2017-11-09 08:39:55','2017-11-09 08:39:55'),(214,72,4,'html','2017-11-09 08:40:01','2017-11-09 08:40:01'),(215,72,5,'css','2017-11-09 08:40:01','2017-11-09 08:40:01'),(216,72,6,'javascript','2017-11-09 08:40:01','2017-11-09 08:40:01'),(217,73,4,'html','2017-11-09 08:42:19','2017-11-09 08:42:19'),(218,73,5,'css','2017-11-09 08:42:19','2017-11-09 08:42:19'),(219,73,6,'javascript','2017-11-09 08:42:19','2017-11-09 08:42:19'),(220,74,4,'html','2017-11-09 08:42:25','2017-11-09 08:42:25'),(221,74,5,'css','2017-11-09 08:42:25','2017-11-09 08:42:25'),(222,74,6,'javascript','2017-11-09 08:42:25','2017-11-09 08:42:25'),(223,75,4,'html','2017-11-09 08:42:29','2017-11-09 08:42:29'),(224,75,5,'css','2017-11-09 08:42:29','2017-11-09 08:42:29'),(225,75,6,'javascript','2017-11-09 08:42:29','2017-11-09 08:42:29'),(226,76,4,'html','2017-11-09 08:42:34','2017-11-09 08:42:34'),(227,76,5,'css','2017-11-09 08:42:34','2017-11-09 08:42:34'),(228,76,6,'javascript','2017-11-09 08:42:34','2017-11-09 08:42:34');
/*!40000 ALTER TABLE `userskills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workspaces`
--

DROP TABLE IF EXISTS `workspaces`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workspaces` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userID` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `zipcode` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone_number` int(11) NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `logo` longtext COLLATE utf8_unicode_ci,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'pending',
  `organizers` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `workspaces_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workspaces`
--

LOCK TABLES `workspaces` WRITE;
/*!40000 ALTER TABLE `workspaces` DISABLE KEYS */;
INSERT INTO `workspaces` VALUES (1,2,'one','rome','222 rome','Ga',111111,'one@mail.com','one.com',1231231234,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer non quam placerat, molestie augue ac, pharetra nulla. Etiam dapibus massa velit, ut varius eros dictum sed. Duis dui velit, faucibus.','http://127.0.0.1:8000/storage/logo/logo.png','pending','edit','2017-11-09 09:54:47','2017-11-09 09:54:47'),(2,17,'two','athens','222 athens','Ga',111111,'two@mail.com','two.com',1231231234,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer non quam placerat, molestie augue ac, pharetra nulla. Etiam dapibus massa velit, ut varius eros dictum sed. Duis dui velit, faucibus.','http://127.0.0.1:8000/storage/logo/logo.png','pending','edit','2017-11-09 09:55:25','2017-11-09 09:58:25'),(3,31,'three','sparta','222 sparta','Ga',111111,'three@mail.com','three.com',1231231234,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer non quam placerat, molestie augue ac, pharetra nulla. Etiam dapibus massa velit, ut varius eros dictum sed. Duis dui velit, faucibus.','http://127.0.0.1:8000/storage/logo/logo.png','pending','edit','2017-11-09 09:59:57','2017-11-09 09:59:57'),(4,42,'four','carthage','222 carthage','Ga',111111,'four@mail.com','four.com',1231231234,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer non quam placerat, molestie augue ac, pharetra nulla. Etiam dapibus massa velit, ut varius eros dictum sed. Duis dui velit, faucibus.','http://127.0.0.1:8000/storage/logo/logo.png','pending','edit','2017-11-09 10:02:10','2017-11-09 10:02:10'),(5,50,'five','thermopylae','222 thermopylae','Ga',111111,'five@mail.com','five.com',1231231234,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer non quam placerat, molestie augue ac, pharetra nulla. Etiam dapibus massa velit, ut varius eros dictum sed. Duis dui velit, faucibus.','http://127.0.0.1:8000/storage/logo/logo.png','pending','edit','2017-11-09 10:03:21','2017-11-09 10:03:21'),(6,61,'six','thermopylae','222 thermopylae','Ga',111111,'six@mail.com','six.com',1231231234,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer non quam placerat, molestie augue ac, pharetra nulla. Etiam dapibus massa velit, ut varius eros dictum sed. Duis dui velit, faucibus.','http://127.0.0.1:8000/storage/logo/logo.png','pending','edit','2017-11-09 10:06:54','2017-11-09 10:06:54'),(7,69,'seven','thebes','222 thebes','Ga',111111,'seven@mail.com','seven.com',1231231234,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer non quam placerat, molestie augue ac, pharetra nulla. Etiam dapibus massa velit, ut varius eros dictum sed. Duis dui velit, faucibus.','http://127.0.0.1:8000/storage/logo/logo.png','pending','edit','2017-11-09 10:07:51','2017-11-09 10:07:51');
/*!40000 ALTER TABLE `workspaces` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-11-15  1:54:52
