-- MySQL dump 10.16  Distrib 10.1.37-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: rmp_demo
-- ------------------------------------------------------
-- Server version	10.1.37-MariaDB-0+deb9u1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(1000) NOT NULL,
  `job_title` varchar(2500) NOT NULL,
  `street` varchar(5500) NOT NULL,
  `suburb` varchar(6000) NOT NULL,
  `state` varchar(1000) NOT NULL,
  `postcode` int(11) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `website` varchar(200) NOT NULL,
  `comment` text NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` VALUES (27,'Tom Teunissen','','Level 27, 101 Collins St','Melbourne','VIC ',3000,'','+61 410 624 604','tom@rmpsystems.com.au','www.rmpsystems.com','','2020-09-03 06:52:51','2020-09-03 06:40:53'),(25,'Disha Pishavadia','Test Manager1','Elite Busoiness Park','Ahmedabad','Gujrat',360080,'+61 3 9561 4343','+61 488 674 053','disha123.vrinsofts@gmail.com','www.google.com','djsbcjhcjhcjsh','2020-09-02 13:34:57','2020-09-02 05:20:12'),(28,'Test Supplier','Supplier','Elite Busoiness Park','Ahmedabad','Gujrat',360080,'+61 3 9561 4343','+61 488 674 052','disha45332.vrinsofts@gmail.com','www.google.com','Comment','2020-09-04 04:37:26','2020-09-04 04:37:26'),(21,'Test Disha Call','Programmer','Street','Ahmedabad','Gujrat',0,'927655777','','disha.vrinsofts@gmail.com','www.google.com','Commnt','2020-08-28 05:00:38','2020-08-28 04:59:35'),(15,'Inge Pullar','','Level 27, 101 Collins St','Melbourne','VIC 3000',0,'','+61 488 674 052','support@cleancloudsystems.com.au','https://cleancloudsystems.com/','','2020-09-03 06:31:17','2020-08-27 07:59:09'),(16,'Nathanial Brooks','Facilities Manager – Workplace & Logistics','Level 36, South Tower, Rialto, 525 Collins Street','Melbourne','VIC',3000,'+61 3 9095 5115','+61 439 718 751','Nathanial.Brooks@stockland.com.au','www.stockland.com.au','','2020-09-03 06:33:54','2020-08-27 08:31:40'),(17,'Test Disha Contact 1','Test Manager','Elite Busoiness Park','Ahmedabad','Gujrat',0,'01111111111','','kinnal.098vrinsofts@gmail.com','','','2020-08-27 09:57:12','2020-08-27 09:57:12'),(18,'Ashan Fernando','Facilities Manager','737 Bourke Street','Docklands','VIC',3008,'','0448176764','Ashan.Fernando@charterhallaccess.com.au','www.cbre.com.au','','2020-09-02 01:15:31','2020-08-27 09:57:48'),(19,'test 2 ','','Elite Busoiness Park','Ahmedabad','Gujrat',0,'133456789','','kinnal.vrinsofts@gmail.com','','','2020-08-27 13:54:55','2020-08-27 13:54:55'),(20,'Kinnal Panchal','Test Manager','Elite Busoiness Park','Ahmedabad','Gujrat',0,'133456789','','kinna444444.vrinsofts@gmail.com','','','2020-08-27 13:56:43','2020-08-27 13:56:07');
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client_contact`
--

DROP TABLE IF EXISTS `client_contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `client_contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contact_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `sequence_no` int(11) NOT NULL,
  `display_dashboard` enum('1','0') NOT NULL DEFAULT '0',
  `display_pdf` enum('1','0') NOT NULL DEFAULT '0',
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=192 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client_contact`
--

LOCK TABLES `client_contact` WRITE;
/*!40000 ALTER TABLE `client_contact` DISABLE KEYS */;
INSERT INTO `client_contact` VALUES (41,18,115,0,'1','1','2020-08-27 09:57:55','2020-08-27 09:57:48'),(40,17,154,0,'0','0','2020-08-27 09:57:12','2020-08-27 09:57:12'),(44,21,154,0,'1','1','2020-08-28 05:00:06','2020-08-28 04:59:35'),(39,16,95,0,'1','1','2020-08-27 08:35:36','2020-08-27 08:31:40'),(43,20,154,0,'0','0','2020-08-27 13:56:43','2020-08-27 13:56:43'),(42,19,154,0,'1','0','2020-08-27 13:55:00','2020-08-27 13:54:55'),(38,15,118,0,'1','1','2020-08-27 07:59:19','2020-08-27 07:59:09'),(50,25,21,0,'1','0','2020-09-02 11:20:52','2020-09-02 05:20:12'),(51,25,61,0,'0','1','2020-09-02 11:20:55','2020-09-02 05:20:12'),(45,21,21,0,'1','0','2020-08-28 05:00:52','2020-08-28 05:00:38'),(191,28,115,0,'1','0','2020-09-04 04:37:48','2020-09-04 04:37:26'),(190,28,25,0,'0','1','2020-09-04 04:37:49','2020-09-04 04:37:26'),(189,28,61,0,'1','0','2020-09-04 04:37:51','2020-09-04 04:37:26'),(188,28,21,0,'0','0','2020-09-04 04:37:26','2020-09-04 04:37:26');
/*!40000 ALTER TABLE `client_contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplier_contact`
--

DROP TABLE IF EXISTS `supplier_contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `supplier_contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contact_id` int(11) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `sequence_no` int(11) NOT NULL,
  `display_dashboard` enum('1','0') NOT NULL DEFAULT '0',
  `display_pdf` enum('1','0') NOT NULL DEFAULT '0',
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier_contact`
--

LOCK TABLES `supplier_contact` WRITE;
/*!40000 ALTER TABLE `supplier_contact` DISABLE KEYS */;
INSERT INTO `supplier_contact` VALUES (1,25,27,0,'1','0','2020-09-02 11:23:00','2020-09-02 10:52:59'),(2,25,28,0,'0','1','2020-09-02 11:26:00','2020-09-02 10:52:59'),(3,25,29,0,'1','0','2020-09-02 11:24:04','2020-09-02 10:52:59'),(4,25,30,0,'0','1','2020-09-02 11:25:47','2020-09-02 10:52:59'),(5,25,31,0,'1','0','2020-09-02 11:25:49','2020-09-02 10:52:59'),(6,25,32,0,'0','1','2020-09-02 11:25:52','2020-09-02 10:52:59'),(7,25,33,0,'1','0','2020-09-02 11:25:54','2020-09-02 10:52:59'),(15,28,1,0,'1','0','2020-09-04 04:37:54','2020-09-04 04:37:26'),(14,27,34,0,'1','1','2020-09-03 06:41:22','2020-09-03 06:40:53'),(13,25,7,0,'0','0','2020-09-02 13:38:54','2020-09-02 13:34:57'),(16,28,2,0,'1','0','2020-09-04 04:37:57','2020-09-04 04:37:26'),(17,28,7,0,'1','0','2020-09-04 04:37:56','2020-09-04 04:37:26');
/*!40000 ALTER TABLE `supplier_contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site_contact`
--

DROP TABLE IF EXISTS `site_contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `site_contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contact_id` int(11) NOT NULL,
  `site_id` int(11) NOT NULL,
  `sequence_no` int(11) NOT NULL,
  `display_dashboard` enum('1','0') NOT NULL DEFAULT '0',
  `display_pdf` enum('1','0') NOT NULL DEFAULT '0',
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=200 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site_contact`
--

LOCK TABLES `site_contact` WRITE;
/*!40000 ALTER TABLE `site_contact` DISABLE KEYS */;
INSERT INTO `site_contact` VALUES (23,20,190,0,'0','0','2020-08-27 13:56:43','2020-08-27 13:56:43'),(20,17,190,0,'0','0','2020-08-27 09:57:12','2020-08-27 09:57:12'),(21,18,30,0,'1','1','2020-08-27 09:57:57','2020-08-27 09:57:48'),(19,16,166,0,'1','1','2020-08-27 08:35:40','2020-08-27 08:31:40'),(22,19,190,0,'1','0','2020-08-27 13:55:01','2020-08-27 13:54:55'),(24,21,190,0,'1','0','2020-08-28 05:00:09','2020-08-28 04:59:35'),(25,21,38,0,'0','1','2020-08-28 05:00:54','2020-08-28 05:00:38'),(30,25,38,0,'1','0','2020-09-02 11:19:24','2020-09-02 05:20:12'),(31,25,95,0,'0','0','2020-09-02 11:23:39','2020-09-02 05:20:12'),(199,28,30,0,'0','0','2020-09-04 04:37:26','2020-09-04 04:37:26'),(198,28,95,0,'0','0','2020-09-04 04:37:26','2020-09-04 04:37:26'),(197,28,42,0,'0','0','2020-09-04 04:37:26','2020-09-04 04:37:26'),(196,28,38,0,'0','0','2020-09-04 04:37:26','2020-09-04 04:37:26');
/*!40000 ALTER TABLE `site_contact` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-09-07  5:41:25
