-- MySQL dump 10.11
--
-- Host: localhost    Database: eztest2
-- ------------------------------------------------------
-- Server version	5.0.77-1-log

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
-- Table structure for table `ezcourses_subscription`
--

DROP TABLE IF EXISTS `ezcourses_subscription`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `ezcourses_subscription` (
  `id` bigint(1) NOT NULL auto_increment,
  `email` char(100) NOT NULL,
  `user_id` bigint(20) default NULL,
  `course_id` bigint(20) NOT NULL,
  `name` char(50) default NULL,
  `surname` char(50) default NULL,
  `username` char(50) default NULL,
  `exams_list` longtext,
  PRIMARY KEY  (`id`,`email`,`course_id`),
  KEY `email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `ezcourses_subscription`
--

LOCK TABLES `ezcourses_subscription` WRITE;
/*!40000 ALTER TABLE `ezcourses_subscription` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcourses_subscription` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcourses_accounting_info`
--

DROP TABLE IF EXISTS `ezcourses_accounting_info`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `ezcourses_accounting_info` (
  `id` bigint(1) NOT NULL auto_increment,
  `user_id` bigint(20) NOT NULL,
  `accounting_code` char(100) default NULL,
  `accounting_information1` text,
  `accounting_information2` text,
  `accounting_structure` char(150) NOT NULL,
  `attachments` char(64) default NULL,
  PRIMARY KEY  (`id`,`user_id`),
  KEY `user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `ezcourses_accounting_info`
--

LOCK TABLES `ezcourses_accounting_info` WRITE;
/*!40000 ALTER TABLE `ezcourses_accounting_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcourses_accounting_info` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2009-12-18  7:29:09
