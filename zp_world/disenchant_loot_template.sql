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
-- Table structure for table `disenchant_loot_template`
--

DROP TABLE IF EXISTS `disenchant_loot_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `disenchant_loot_template` (
  `entry` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'Recommended id selection: item_level*100 + item_quality',
  `item` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ChanceOrQuestChance` float NOT NULL DEFAULT '100',
  `groupid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `mincountOrRef` mediumint(9) NOT NULL DEFAULT '1',
  `maxcount` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `lootcondition` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `condition_value1` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `condition_value2` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`entry`,`item`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Loot System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `disenchant_loot_template`
--

LOCK TABLES `disenchant_loot_template` WRITE;
/*!40000 ALTER TABLE `disenchant_loot_template` DISABLE KEYS */;
INSERT INTO `disenchant_loot_template` VALUES
(1,10938,0,1,1,2,0,0,0),
(1,10940,80,1,1,2,0,0,0),
(2,10939,20,1,1,2,0,0,0),
(2,10940,75,1,2,3,0,0,0),
(2,10978,0,1,1,1,0,0,0),
(3,10940,75,1,4,6,0,0,0),
(3,10978,0,1,1,1,0,0,0),
(3,10998,15,1,1,2,0,0,0),
(4,11082,20,1,1,2,0,0,0),
(4,11083,75,1,1,2,0,0,0),
(4,11084,0,1,1,1,0,0,0),
(5,11083,75,1,2,5,0,0,0),
(5,11134,20,1,1,2,0,0,0),
(5,11138,0,1,1,1,0,0,0),
(6,11135,20,1,1,2,0,0,0),
(6,11137,75,1,1,2,0,0,0),
(6,11139,0,1,1,1,0,0,0),
(7,11137,75,1,2,5,0,0,0),
(7,11174,20,1,1,2,0,0,0),
(7,11177,0,1,1,1,0,0,0),
(8,11175,20,1,1,2,0,0,0),
(8,11176,75,1,1,2,0,0,0),
(8,11178,0,1,1,1,0,0,0),
(9,11176,75,1,2,5,0,0,0),
(9,14343,0,1,1,1,0,0,0),
(9,16202,20,1,1,2,0,0,0),
(10,14344,0,1,1,1,0,0,0),
(10,16203,20,1,1,2,0,0,0),
(10,16204,75,1,1,2,0,0,0),
(11,14344,0,1,1,1,0,0,0),
(11,16203,20,1,2,3,0,0,0),
(11,16204,75,1,2,5,0,0,0),
(21,10938,80,1,1,2,0,0,0),
(21,10940,0,1,1,2,0,0,0),
(22,10939,75,1,1,2,0,0,0),
(22,10940,20,1,2,3,0,0,0),
(22,10978,0,1,1,1,0,0,0),
(23,10940,15,1,4,6,0,0,0),
(23,10978,0,1,1,1,0,0,0),
(23,10998,75,1,1,2,0,0,0),
(24,11082,75,1,1,2,0,0,0),
(24,11083,20,1,1,2,0,0,0),
(24,11084,0,1,1,1,0,0,0),
(25,11083,20,1,2,5,0,0,0),
(25,11134,75,1,1,2,0,0,0),
(25,11138,0,1,1,1,0,0,0),
(26,11135,75,1,1,2,0,0,0),
(26,11137,20,1,1,2,0,0,0),
(26,11139,0,1,1,1,0,0,0),
(27,11137,20,1,2,5,0,0,0),
(27,11174,75,1,1,2,0,0,0),
(27,11177,0,1,1,1,0,0,0),
(28,11175,75,1,1,2,0,0,0),
(28,11176,20,1,1,2,0,0,0),
(28,11178,0,1,1,1,0,0,0),
(29,11176,22,1,2,5,0,0,0),
(29,14343,0,1,1,1,0,0,0),
(29,16202,75,1,1,2,0,0,0),
(30,14344,0,1,1,1,0,0,0),
(30,16203,75,1,1,2,0,0,0),
(30,16204,22,1,1,2,0,0,0),
(31,14344,0,1,1,1,0,0,0),
(31,16203,75,1,2,3,0,0,0),
(31,16204,22,1,2,5,0,0,0),
(41,10978,100,0,1,1,0,0,0),
(42,11084,100,0,1,1,0,0,0),
(43,11138,100,0,1,1,0,0,0),
(44,11139,100,0,1,1,0,0,0),
(45,11177,100,0,1,1,0,0,0),
(46,11178,100,0,1,1,0,0,0),
(47,14343,100,0,1,1,0,0,0),
(48,14344,100,1,1,1,0,0,0),
(49,14344,99.5,1,1,1,0,0,0),
(49,20725,0.5,1,1,1,0,0,0),
(50,20725,0.5,1,1,1,0,0,0),
(61,11177,100,0,2,4,0,0,0),
(62,11178,100,0,2,4,0,0,0),
(63,14343,100,0,2,4,0,0,0),
(64,20725,100,0,1,1,0,0,0),
(65,20725,100,0,1,2,0,0,0);
/*!40000 ALTER TABLE `disenchant_loot_template` ENABLE KEYS */;
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
