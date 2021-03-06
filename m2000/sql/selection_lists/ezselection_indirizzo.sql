-- MySQL dump 10.11
--
-- Host: localhost    Database: m2000
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
-- Table structure for table `ezselection_indirizzo`
--

DROP TABLE IF EXISTS `ezselection_indirizzo`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `ezselection_indirizzo` (
  `scuola` char(30) NOT NULL,
  `indirizzo` char(50) NOT NULL,
  `sezione` char(10) NOT NULL,
  `nome_indirizzo` char(50) default NULL,
  PRIMARY KEY  (`scuola`,`indirizzo`,`sezione`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `ezselection_indirizzo`
--

LOCK TABLES `ezselection_indirizzo` WRITE;
/*!40000 ALTER TABLE `ezselection_indirizzo` DISABLE KEYS */;
INSERT INTO `ezselection_indirizzo` VALUES ('liceo','pni','al','Pni'),('liceo','pni','bl','Pni'),('liceo','pni','cl','Pni'),('licea','ordinario','dl','Ordinario'),('ipsia','opmeccanico','om','Operatore meccanico'),('ipsia','tecmeccanico','tim','Tecnico delle industrie meccaniche'),('itc','igea','ai','Igea'),('itc','erica','ape','Erica'),('iti_cervignano','biennio','at','Biennio Iti'),('iti_cervignano','biennio','bt','Biennio Iti'),('iti_cervignano','biennio','ct','Biennio Iti'),('iti_cervignano','biennio','dt','Biennio Iti'),('iti_cervignano','chimica','ch','Chimica'),('iti_cervignano','elettronica','aeli','Elettronica e telecomunicazioni'),('iti_cervignano','elettronica','beli','Elettronica e telecomunicazioni'),('iti_cervignano','lst','alst','Liceo Scientifico e tecnologico'),('iti','','',NULL),('iti_san_giorgio','','',NULL),('iti_san_giorgio','bienniomeccanica','abm','Biennio meccanica'),('iti_san_giorgio','trienniomeccanica','atm','Triennio meccanica'),('ipssct','opgestaz','bpr','Operatore gestione aziendale'),('ipssct','tecgestaz','bpa','Tecnico della gestione aziendale'),('ipssct','opimptur','apr','Operatore impresa turistica'),('ipssct','tecimptur','apt','Tecnico dei servizi turistici');
/*!40000 ALTER TABLE `ezselection_indirizzo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2009-08-04 12:25:33
