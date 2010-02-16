-- MySQL dump 10.13  Distrib 5.1.42, for redhat-linux-gnu (x86_64)
--
-- Host: localhost    Database: zp_world
-- ------------------------------------------------------
-- Server version	5.1.42

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
-- Table structure for table `instance_template`
--

DROP TABLE IF EXISTS `instance_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `instance_template` (
  `map` smallint(5) unsigned NOT NULL,
  `parent` int(10) unsigned NOT NULL,
  `levelMin` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `levelMax` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `maxPlayers` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `reset_delay` int(10) unsigned NOT NULL DEFAULT '0',
  `startLocX` float DEFAULT NULL,
  `startLocY` float DEFAULT NULL,
  `startLocZ` float DEFAULT NULL,
  `startLocO` float DEFAULT NULL,
  `script` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`map`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `instance_template`
--

LOCK TABLES `instance_template` WRITE;
/*!40000 ALTER TABLE `instance_template` DISABLE KEYS */;
INSERT INTO `instance_template` VALUES (33,0,22,30,10,0,NULL,NULL,NULL,NULL,'instance_shadowfang_keep'),(34,0,24,32,10,0,NULL,NULL,NULL,NULL,''),(36,0,15,20,10,0,NULL,NULL,NULL,NULL,'instance_deadmines'),(43,0,15,21,10,0,NULL,NULL,NULL,NULL,'instance_wailing_caverns'),(47,0,29,38,10,0,NULL,NULL,NULL,NULL,''),(48,0,24,32,10,0,NULL,NULL,NULL,NULL,'instance_blackfathom_deeps'),(70,0,35,47,10,0,NULL,NULL,NULL,NULL,''),(90,0,29,38,10,0,NULL,NULL,NULL,NULL,''),(109,0,45,55,10,0,NULL,NULL,NULL,NULL,'instance_sunken_temple'),(129,0,37,46,10,0,NULL,NULL,NULL,NULL,''),(189,0,34,45,10,0,NULL,NULL,NULL,NULL,'instance_scarlet_monastery'),(209,0,44,54,10,0,NULL,NULL,NULL,NULL,''),(229,0,58,0,10,1,78.5083,-225.044,49.839,5.1,''),(230,0,52,0,5,0,NULL,NULL,NULL,NULL,'instance_blackrock_depths'),(249,0,60,0,40,5,NULL,NULL,NULL,NULL,''),(289,0,57,0,5,0,NULL,NULL,NULL,NULL,'instance_scholomance'),(309,0,60,0,20,3,NULL,NULL,NULL,NULL,'instance_zulgurub'),(329,0,58,60,5,0,NULL,NULL,NULL,NULL,'instance_stratholme'),(349,0,46,55,10,0,NULL,NULL,NULL,NULL,''),(389,0,13,18,10,0,NULL,NULL,NULL,NULL,''),(409,0,60,0,40,7,NULL,NULL,NULL,NULL,'instance_molten_core'),(429,0,55,60,5,0,NULL,NULL,NULL,NULL,''),(469,0,60,0,40,7,NULL,NULL,NULL,NULL,''),(509,0,60,0,20,3,NULL,NULL,NULL,NULL,'instance_ruins_of_ahnqiraj'),(531,0,60,0,40,7,NULL,NULL,NULL,NULL,'instance_temple_of_ahnqiraj'),(533,0,60,0,40,7,NULL,NULL,NULL,NULL,'instance_naxxramas');
/*!40000 ALTER TABLE `instance_template` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed
