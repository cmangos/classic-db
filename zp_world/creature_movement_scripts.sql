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
-- Table structure for table `creature_movement_scripts`
--

DROP TABLE IF EXISTS `creature_movement_scripts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `creature_movement_scripts` (
  `id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `delay` int(10) unsigned NOT NULL DEFAULT '0',
  `command` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `datalong` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `datalong2` int(10) unsigned NOT NULL DEFAULT '0',
  `datalong3` int(10) unsigned NOT NULL DEFAULT '0',
  `datalong4` int(10) unsigned NOT NULL DEFAULT '0',
  `data_flags` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `dataint` int(11) NOT NULL DEFAULT '0',
  `dataint2` int(11) NOT NULL DEFAULT '0',
  `dataint3` int(11) NOT NULL DEFAULT '0',
  `dataint4` int(11) NOT NULL DEFAULT '0',
  `x` float NOT NULL DEFAULT '0',
  `y` float NOT NULL DEFAULT '0',
  `z` float NOT NULL DEFAULT '0',
  `o` float NOT NULL DEFAULT '0',
  `comments` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `creature_movement_scripts`
--

LOCK TABLES `creature_movement_scripts` WRITE;
/*!40000 ALTER TABLE `creature_movement_scripts` DISABLE KEYS */;
INSERT INTO `creature_movement_scripts` VALUES
(1,0,18,0,0,0,0,0,0,0,0,0,0,0,0,0,'despawn self, this script is used by many creatures'),
(41202,0,0,1,0,0,0,0,2000000161,2000000162,0,0,0,0,0,0,'stitchesyell'),
(41203,0,20,0,0,0,0,0,0,0,0,0,0,0,0,0,'stitchesidlemove'),
(143301,1,0,0,0,0,0,0,2000000141,2000000142,0,0,0,0,0,0,'corbettwp1'),
(143302,5,0,0,0,0,0,0,2000000143,2000000144,0,0,0,0,0,0,'corbettwp7'),
(143303,0,0,0,1427,10,0,4,2000000145,2000000146,0,0,0,0,0,0,'corbettatharlan'),
(143303,5,0,0,1427,10,0,2,2000000147,2000000148,0,0,0,0,0,0,'harlantalk'),
(143303,10,0,0,0,0,0,0,2000000149,2000000150,0,0,0,0,0,0,'corbettleave'),
(143303,40,0,0,0,0,0,0,2000000151,0,0,0,0,0,0,0,'corbetttocheese'),
(143304,0,0,0,0,0,0,0,2000000152,2000000153,0,0,0,0,0,0,'corbettatcheese'),
(143304,5,0,0,483,10,0,2,2000000154,2000000155,0,0,0,0,0,0,'cheeseladyreply'),
(143304,10,0,0,0,0,0,0,2000000156,0,0,0,0,0,0,0,'corbettreply'),
(143304,15,0,0,0,0,0,0,2000000157,0,0,0,0,0,0,0,'corbettthanks'),
(143304,40,0,0,0,0,0,0,2000000158,0,0,0,0,0,0,0,'corbettgoeshome'),
(143305,0,0,0,0,0,0,0,2000000159,0,0,0,0,0,0,0,'corbettisback'),
(504301,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,'DefiasRioter-SetRunModeOn'),
(504302,0,16,10836,0,0,0,0,0,0,0,0,0,0,0,0,'DefiasRioter-OpenCellDoorSound'),
(504303,0,16,10837,0,0,0,0,0,0,0,0,0,0,0,0,'DefiasRioter-CloseCellDoorSound'),
(590101,0,10,11256,30000,0,0,0,0,0,0,0,-1346.59,-4076.39,-1.23,1.6,'Islensummon'),
(590101,1,1,68,0,0,0,0,0,0,0,0,0,0,0,0,'Islenkneel'),
(590101,5,0,0,11256,10,0,4,2000000057,0,0,0,0,0,0,0,'Islengreet'),
(590101,10,0,0,11256,10,0,2,2000000160,0,0,0,0,0,0,0,'Manifestationreply'),
(590101,15,1,26,0,0,0,0,0,0,0,0,0,0,0,0,'Islenstand'),
(590101,15,0,0,11256,10,0,4,2000000058,0,0,0,0,0,0,0,'Islenthanks'),
(590102,0,20,0,0,0,0,0,0,0,0,0,0,0,0,0,'Islenidle'),
(1258101,4,18,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
/*!40000 ALTER TABLE `creature_movement_scripts` ENABLE KEYS */;
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
