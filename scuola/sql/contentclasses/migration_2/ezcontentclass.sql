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
-- Table structure for table `ezcontentclass`
--

DROP TABLE IF EXISTS `ezcontentclass`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `ezcontentclass` (
  `always_available` int(11) NOT NULL default '0',
  `contentobject_name` varchar(255) default NULL,
  `created` int(11) NOT NULL default '0',
  `creator_id` int(11) NOT NULL default '0',
  `id` int(11) NOT NULL auto_increment,
  `identifier` varchar(50) NOT NULL default '',
  `initial_language_id` int(11) NOT NULL default '0',
  `is_container` int(11) NOT NULL default '0',
  `language_mask` int(11) NOT NULL default '0',
  `modified` int(11) NOT NULL default '0',
  `modifier_id` int(11) NOT NULL default '0',
  `remote_id` varchar(100) NOT NULL default '',
  `serialized_name_list` longtext,
  `sort_field` int(11) NOT NULL default '1',
  `sort_order` int(11) NOT NULL default '1',
  `url_alias_name` varchar(255) default NULL,
  `version` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`,`version`),
  KEY `ezcontentclass_version` (`version`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `ezcontentclass`
--

LOCK TABLES `ezcontentclass` WRITE;
/*!40000 ALTER TABLE `ezcontentclass` DISABLE KEYS */;
INSERT INTO `ezcontentclass` VALUES (1,'<short_name|name>',1024392098,14,1,'folder',2,1,3,1245588688,14,'a3d405b81be900468eb153d774f4f0d2','a:2:{s:16:\"always-available\";s:6:\"ita-IT\";s:6:\"ita-IT\";s:6:\"Folder\";}',1,1,'',0),(1,'<name>',1024392098,14,3,'user_group',2,1,3,1048494743,14,'25b4268cdcd01921b808a0d854b877ef','a:2:{s:16:\"always-available\";s:6:\"ita-IT\";s:6:\"ita-IT\";s:10:\"User group\";}',1,1,'',0),(1,'<first_name> <last_name>',1024392098,14,4,'user',2,0,3,1230541693,14,'40faa822edc579b02c25f6bb7beec3ad','a:2:{s:16:\"always-available\";s:6:\"ita-IT\";s:6:\"ita-IT\";s:4:\"User\";}',1,1,'',0),(0,'<name>',1052385361,14,11,'link',2,0,3,1082455072,14,'74ec6507063150bc813549b22534ad48','a:2:{s:16:\"always-available\";s:6:\"ita-IT\";s:6:\"ita-IT\";s:4:\"Link\";}',1,1,'',0),(0,'<subject>',1052385685,14,13,'comment',2,0,3,1082455144,14,'000c14f4f475e9f2955dedab72799941','a:2:{s:16:\"always-available\";s:6:\"ita-IT\";s:6:\"ita-IT\";s:7:\"Comment\";}',1,1,'',0),(1,'<name>',1081858024,14,14,'common_ini_settings',2,0,3,1081858024,14,'ffedf2e73b1ea0c3e630e42e2db9c900','a:2:{s:16:\"always-available\";s:6:\"ita-IT\";s:6:\"ita-IT\";s:19:\"Common ini settings\";}',1,1,'',0),(1,'<title>',1081858045,14,15,'template_look',2,0,7,1228318764,14,'59b43cd9feaaf0e45ac974fb4bbd3f92','a:3:{s:16:\"always-available\";s:6:\"ita-IT\";s:6:\"ita-IT\";s:13:\"Template look\";s:6:\"eng-GB\";s:13:\"Template Look\";}',1,1,'',0),(0,'<short_title|title>',1227478632,14,16,'article',4,1,5,1247564070,14,'c15b600eb9198b1924063b5a68758232','a:2:{s:6:\"eng-GB\";s:8:\"Articolo\";s:16:\"always-available\";s:6:\"eng-GB\";}',1,1,'',0),(0,'<short_title|title>',1227478632,14,17,'article_mainpage',4,1,5,1227478632,14,'feaf24c0edae665e7ddaae1bc2b3fe5b','a:2:{s:6:\"eng-GB\";s:19:\"Article (main-page)\";s:16:\"always-available\";s:6:\"eng-GB\";}',1,1,'',0),(0,'<title|index_title>',1227478632,14,18,'article_subpage',4,0,5,1227478632,14,'68f305a18c76d9d03df36b810f290732','a:2:{s:6:\"eng-GB\";s:18:\"Article (sub-page)\";s:16:\"always-available\";s:6:\"eng-GB\";}',1,1,'',0),(0,'<name>',1227478632,14,19,'blog',4,1,5,1247564209,14,'3a6f9c1f075b3bf49d7345576b196fe8','a:2:{s:6:\"eng-GB\";s:13:\"Blog (diario)\";s:16:\"always-available\";s:6:\"eng-GB\";}',1,1,'',0),(0,'<title>',1227478632,14,20,'blog_post',4,1,5,1227478632,14,'7ecb961056b7cbb30f22a91357e0a007','a:2:{s:6:\"eng-GB\";s:9:\"Blog post\";s:16:\"always-available\";s:6:\"eng-GB\";}',1,1,'',0),(0,'<name>',1227478632,14,21,'product',4,0,5,1227478632,14,'77f3ede996a3a39c7159cc69189c5307','a:2:{s:6:\"eng-GB\";s:7:\"Product\";s:16:\"always-available\";s:6:\"eng-GB\";}',1,1,'',0),(0,'<name>',1227478632,14,22,'feedback_form',4,1,5,1227478632,14,'df0257b8fc55f6b8ab179d6fb915455e','a:2:{s:6:\"eng-GB\";s:13:\"Feedback form\";s:16:\"always-available\";s:6:\"eng-GB\";}',1,1,'',0),(0,'<name>',1227478632,14,23,'frontpage',4,1,5,1227478632,14,'e36c458e3e4a81298a0945f53a2c81f4','a:2:{s:6:\"eng-GB\";s:9:\"Frontpage\";s:16:\"always-available\";s:6:\"eng-GB\";}',1,1,'',0),(0,'<title>',1227478633,14,24,'documentation_page',4,1,5,1227478633,14,'d4a05eed0402e4d70fedfda2023f1aa2','a:2:{s:6:\"eng-GB\";s:18:\"Documentation page\";s:16:\"always-available\";s:6:\"eng-GB\";}',1,1,'',0),(0,'<name>',1227970430,14,45,'school_front',4,1,7,1247140877,14,'e36c458e3c4a01297a0945f53a2c81f4','a:3:{s:6:\"eng-GB\";s:30:\"Copia della classe <Frontpage>\";s:16:\"always-available\";s:6:\"eng-GB\";s:6:\"ita-IT\";s:16:\"frontpage scuola\";}',1,1,'',0),(1,'<first_name> <last_name>',1230478027,14,47,'professore',2,0,3,1246992112,14,'40faa822edc579b02c25f6bb7bffc9ad','a:2:{s:16:\"always-available\";s:6:\"ita-IT\";s:6:\"ita-IT\";s:10:\"professore\";}',1,1,'',0),(0,'<scuola>',1230916544,14,70,'infoprof',2,0,3,1246697436,14,'3f78d8885edb26240b5aa6724e980d1f','a:2:{s:6:\"ita-IT\";s:8:\"infoProf\";s:16:\"always-available\";s:6:\"ita-IT\";}',1,1,'',0),(1,'<short_name|name>',1230992912,14,73,'classgroup',2,1,3,1246457697,14,'a3d405b81be9994686c153d794f4ffc2','a:2:{s:16:\"always-available\";s:6:\"ita-IT\";s:6:\"ita-IT\";s:12:\"gruppoClassi\";}',1,1,'',0),(1,'<short_name|name>',1230993034,14,74,'classe',2,1,3,1246733248,14,'a3d495b910fc00468eb153d774f4f0d2','a:2:{s:16:\"always-available\";s:6:\"ita-IT\";s:6:\"ita-IT\";s:6:\"Classe\";}',1,1,'',0),(1,'<short_name|name>',1234546821,14,76,'proffolder',2,1,3,1247485530,14,'a3d605b81be990468eb153d774fff0d2','a:2:{s:16:\"always-available\";s:6:\"ita-IT\";s:6:\"ita-IT\";s:29:\"Professore (spazio personale)\";}',1,1,'',0),(1,'<short_name|name>',1234638163,14,77,'profgroup',2,1,3,1234638243,14,'a3f495b81be900468eb153d774f4f0d2','a:2:{s:16:\"always-available\";s:6:\"ita-IT\";s:6:\"ita-IT\";s:13:\"gruppoDocenti\";}',1,1,'',0),(1,'<first_name> <last_name>',1235896565,14,78,'alunno',2,0,3,1235896692,14,'40ffa822edc689b02c25f6bb7beec3ad','a:2:{s:16:\"always-available\";s:6:\"ita-IT\";s:6:\"ita-IT\";s:6:\"alunno\";}',1,1,'',0),(1,'<first_name> <last_name>',1235897014,14,79,'ata',2,0,3,1236539924,14,'40faa822edc479bc2c2ff6bb7beec3ad','a:2:{s:16:\"always-available\";s:6:\"ita-IT\";s:6:\"ita-IT\";s:3:\"ata\";}',1,1,'',0),(1,'<first_name> <last_name>',1235897048,14,80,'genitore',2,0,3,1236540648,14,'40faa822edc579b02c25f6bc7772c3ca','a:2:{s:16:\"always-available\";s:6:\"ita-IT\";s:6:\"ita-IT\";s:8:\"genitore\";}',1,1,'',0),(0,'<header>',1239294059,14,82,'infobox',4,0,5,1239294059,14,'0b4e8accad5bec5ba2d430acb25c1ff6','a:2:{s:6:\"eng-GB\";s:7:\"Infobox\";s:16:\"always-available\";s:6:\"eng-GB\";}',1,1,'',0),(0,'<name>',1239294061,14,83,'multicalendar',4,0,5,1239294061,14,'99aec4e5682414517ed929ecd969439f','a:2:{s:6:\"eng-GB\";s:13:\"Multicalendar\";s:16:\"always-available\";s:6:\"eng-GB\";}',1,1,'',0),(0,'<name>',1239294062,14,84,'poll',4,0,5,1239294062,14,'232937a3a2eacbbf24e2601aebe16522','a:2:{s:6:\"eng-GB\";s:4:\"Poll\";s:16:\"always-available\";s:6:\"eng-GB\";}',1,1,'',0),(0,'<name>',1239294064,14,85,'file',4,0,5,1245571832,14,'637d58bfddf164627bdfd265733280a0','a:2:{s:6:\"eng-GB\";s:4:\"File\";s:16:\"always-available\";s:6:\"eng-GB\";}',1,1,'',0),(0,'<name>',1239294065,14,86,'flash',4,0,5,1247834654,14,'6cd17b98a41ee9355371a376e8868ee0','a:2:{s:6:\"eng-GB\";s:5:\"Flash\";s:16:\"always-available\";s:6:\"eng-GB\";}',1,1,'',0),(0,'<name>',1239294066,14,87,'flash_recorder',4,0,5,1239294066,14,'e349c947fd306299418be35b07b9a940','a:2:{s:6:\"eng-GB\";s:14:\"Flash recorder\";s:16:\"always-available\";s:6:\"eng-GB\";}',1,1,'',0),(0,'<name>',1239294067,14,88,'flash_player',4,0,5,1239294067,14,'20b2ed0982343e6e0a550f7f0c137e06','a:2:{s:6:\"eng-GB\";s:18:\"Video/Flash Player\";s:16:\"always-available\";s:6:\"eng-GB\";}',1,1,'',0),(0,'<name>',1239294071,14,89,'global_layout',2,0,7,1247564834,14,'f0271811b913befa8f062527e909f15e','a:3:{s:6:\"eng-GB\";s:13:\"Global layout\";s:16:\"always-available\";s:6:\"ita-IT\";s:6:\"ita-IT\";s:14:\"Layout globale\";}',1,1,'',0),(0,'<name>',1239294073,14,90,'image',4,0,5,1239294073,14,'f6df12aa74e36230eb675f364fccd25a','a:2:{s:6:\"eng-GB\";s:5:\"Image\";s:16:\"always-available\";s:6:\"eng-GB\";}',1,1,'',0),(0,'<name>',1239294075,14,91,'quicktime',4,0,5,1239294075,14,'16d7b371979d6ba37894cc8dc306f38f','a:2:{s:6:\"eng-GB\";s:9:\"Quicktime\";s:16:\"always-available\";s:6:\"eng-GB\";}',1,1,'',0),(0,'<name>',1239294076,14,92,'windows_media',4,0,5,1239294076,14,'223dd2551e85b63b55a72d02363faab6','a:2:{s:6:\"eng-GB\";s:13:\"Windows media\";s:16:\"always-available\";s:6:\"eng-GB\";}',1,1,'',0),(0,'<name>',1239294077,14,93,'real_video',4,0,5,1239294077,14,'dba67bc20a4301aa04cc74e411310dfc','a:2:{s:6:\"eng-GB\";s:10:\"Real video\";s:16:\"always-available\";s:6:\"eng-GB\";}',1,1,'',0),(0,'<name>',1239294079,14,94,'gallery',2,1,7,1247564717,14,'6a320cdc3e274841b82fcd63a86f80d1','a:3:{s:6:\"eng-GB\";s:8:\"Galleria\";s:16:\"always-available\";s:6:\"ita-IT\";s:6:\"ita-IT\";s:8:\"Galleria\";}',1,1,'',0),(0,'<name>',1239294081,14,95,'forum',4,1,5,1239294081,14,'b241f924b96b267153f5f55904e0675a','a:2:{s:6:\"eng-GB\";s:5:\"Forum\";s:16:\"always-available\";s:6:\"eng-GB\";}',1,1,'',0),(0,'<subject>',1239294083,14,96,'forum_topic',4,1,5,1239294083,14,'71f99c516743a33562c3893ef98c9b60','a:2:{s:6:\"eng-GB\";s:11:\"Forum topic\";s:16:\"always-available\";s:6:\"eng-GB\";}',1,1,'',0),(0,'<subject>',1239294084,14,97,'forum_reply',4,0,5,1239294084,14,'80ee42a66b2b8b6ee15f5c5f4b361562','a:2:{s:6:\"eng-GB\";s:11:\"Forum reply\";s:16:\"always-available\";s:6:\"eng-GB\";}',1,1,'',0),(0,'<short_title|title>',1239294087,14,98,'event',4,0,5,1239294087,14,'563cb5edc2adfd2b240efa456c81525f','a:2:{s:6:\"eng-GB\";s:5:\"Event\";s:16:\"always-available\";s:6:\"eng-GB\";}',1,1,'',0),(0,'<short_title|title>',1239294087,14,99,'event_calendar',4,1,5,1247564396,14,'020cbeb6382c8c89dcec2cd406fb47a8','a:2:{s:6:\"eng-GB\";s:10:\"Calendario\";s:16:\"always-available\";s:6:\"eng-GB\";}',1,1,'',0),(0,'<name>',1239294087,14,100,'banner',4,0,5,1239294087,14,'9cb558e25fd946246bbb32950c00228e','a:2:{s:6:\"eng-GB\";s:6:\"Banner\";s:16:\"always-available\";s:6:\"eng-GB\";}',1,1,'',0),(0,'<title>',1239294087,14,101,'forums',4,1,5,1239294087,14,'60a921e54c1efbb9456bd2283d9e66cb','a:2:{s:6:\"eng-GB\";s:6:\"Forums\";s:16:\"always-available\";s:6:\"eng-GB\";}',1,1,'',0),(0,'<name>',1239294087,14,102,'silverlight',4,0,5,1239294087,14,'8ab17aae77dd4f24b5a8e835784e96e7','a:2:{s:6:\"eng-GB\";s:11:\"Silverlight\";s:16:\"always-available\";s:6:\"eng-GB\";}',1,1,'',0),(0,'<name>',1245253928,14,103,'macroarea',2,1,7,1247564948,14,'da584032603690cdbd1aabc9a65699b5','a:3:{s:6:\"eng-GB\";s:30:\"Copia della classe <Frontpage>\";s:16:\"always-available\";s:6:\"ita-IT\";s:6:\"ita-IT\";s:9:\"Macroarea\";}',1,1,'',0),(0,'<name>',1245485476,14,104,'m2000_front',4,1,5,1245871422,14,'d132026642c63fb2e8a7feb9ab4bc4a6','a:2:{s:6:\"eng-GB\";s:15:\"Frontpage m2000\";s:16:\"always-available\";s:6:\"eng-GB\";}',1,1,'',0),(1,'<short_name|name>',1245524970,14,105,'folder_circolari',2,1,3,1246375823,14,'f9fd11674e4be2b264af608f3a0b99c8','a:2:{s:16:\"always-available\";s:6:\"ita-IT\";s:6:\"ita-IT\";s:16:\"Folder Circolari\";}',1,1,'',0),(1,'<short_name|name>',1245678069,14,106,'ufficio',2,1,3,1245699767,14,'6cbb1070bbfb679dfde52650cd3b3cec','a:2:{s:16:\"always-available\";s:6:\"ita-IT\";s:6:\"ita-IT\";s:7:\"Ufficio\";}',1,1,'',0),(1,'<short_name|name>',1246371000,14,107,'dir_circolari',2,1,3,1246375993,14,'3b8dd7d9c93cafcead462ef5904247e3','a:2:{s:16:\"always-available\";s:6:\"ita-IT\";s:6:\"ita-IT\";s:22:\"Raccoglitore circolari\";}',1,1,'',0),(1,'<nome-corto|nome>',1247468829,14,108,'contatti',2,1,3,1247485997,14,'51c5725b2b601602d90e813f2f11d3b2','a:2:{s:6:\"ita-IT\";s:8:\"Contatti\";s:16:\"always-available\";s:6:\"ita-IT\";}',1,1,'',0);
/*!40000 ALTER TABLE `ezcontentclass` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2009-07-17 12:46:32
