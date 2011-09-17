-- MySQL dump 10.13  Distrib 5.5.16, for Linux (x86_64)
--
-- Host: localhost    Database: zp_world
-- ------------------------------------------------------
-- Server version	5.5.16-log

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
-- Table structure for table `game_event_quest`
--

DROP TABLE IF EXISTS `game_event_quest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `game_event_quest` (
  `quest` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'entry from quest_template',
  `event` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'entry from game_event',
  PRIMARY KEY (`quest`,`event`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Game event system';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `game_event_quest`
--

LOCK TABLES `game_event_quest` WRITE;
/*!40000 ALTER TABLE `game_event_quest` DISABLE KEYS */;
INSERT INTO `game_event_quest` VALUES
(172,10),
(1468,10),
(6961,2),
(6962,2),
(6963,2),
(6964,2),
(6983,2),
(6984,2),
(7021,2),
(7022,2),
(7023,2),
(7024,2),
(7025,2),
(7042,2),
(7043,2),
(7045,2),
(7061,2),
(7062,2),
(7063,2),
(8149,33),
(8150,33),
(8356,12),
(8744,2),
(8746,2),
(8762,2),
(8763,2),
(8767,2),
(8768,2),
(8769,2),
(8788,2),
(8795,22),
(8799,2),
(8803,2),
(8827,2),
(8828,2),
(8980,8),
(8983,8),
(9025,8),
(9027,8),
(9319,1),
(9322,1),
(9323,1),
(9324,1),
(9325,1),
(9326,1),
(9330,1),
(9331,1),
(9332,1),
(9339,1),
(9365,1),
(9368,1),
(9386,1);
/*!40000 ALTER TABLE `game_event_quest` ENABLE KEYS */;
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
