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
-- Table structure for table `skill_fishing_base_level`
--

DROP TABLE IF EXISTS `skill_fishing_base_level`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `skill_fishing_base_level` (
  `entry` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'Area identifier',
  `skill` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Base skill level requirement',
  PRIMARY KEY (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Fishing system';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skill_fishing_base_level`
--

LOCK TABLES `skill_fishing_base_level` WRITE;
/*!40000 ALTER TABLE `skill_fishing_base_level` DISABLE KEYS */;
INSERT INTO `skill_fishing_base_level` VALUES
(1,-70),
(8,130),
(10,55),
(11,55),
(12,-70),
(14,-70),
(15,130),
(16,205),
(17,-20),
(28,205),
(33,130),
(36,130),
(38,-20),
(40,-20),
(41,330),
(44,55),
(45,130),
(46,330),
(47,205),
(85,-70),
(130,-20),
(139,330),
(141,-70),
(148,-20),
(215,-70),
(267,55),
(297,205),
(331,55),
(357,205),
(361,205),
(400,130),
(405,130),
(406,55),
(440,205),
(490,205),
(493,205),
(618,330),
(718,-20),
(719,-20),
(796,130),
(1112,330),
(1222,330),
(1227,330),
(1377,330),
(1417,205),
(1497,-20),
(1519,-20),
(1537,-20),
(1581,-20),
(1637,-20),
(1638,-20),
(1657,-20),
(1977,330),
(2017,330),
(2057,330),
(2100,205),
(3140,330);
/*!40000 ALTER TABLE `skill_fishing_base_level` ENABLE KEYS */;
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
