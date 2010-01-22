-- MySQL dump 10.13  Distrib 5.1.36, for suse-linux-gnu (x86_64)
--
-- Host: localhost    Database: zp_world
-- ------------------------------------------------------
-- Server version	5.1.36-log

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
-- Table structure for table `game_event`
--

DROP TABLE IF EXISTS `game_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `game_event` (
  `entry` mediumint(8) unsigned NOT NULL COMMENT 'Entry of the game event',
  `start_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Absolute start date, the event will never start before',
  `end_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Absolute end date, the event will never start afler',
  `occurence` bigint(20) unsigned NOT NULL DEFAULT '5184000' COMMENT 'Delay in minutes between occurences of the event',
  `length` bigint(20) unsigned NOT NULL DEFAULT '2592000' COMMENT 'Length in minutes of the event',
  `holiday` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'Client side holiday id',
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Description of the event displayed in console',
  PRIMARY KEY (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `game_event`
--

LOCK TABLES `game_event` WRITE;
/*!40000 ALTER TABLE `game_event` DISABLE KEYS */;
INSERT INTO `game_event` VALUES
(1,'2007-06-20 20:00:00','2020-12-30 22:00:00',525600,20160,0,'Midsummer Fire Festival'),
(2,'2007-12-14 22:00:00','2020-12-30 22:00:00',525600,24480,0,'Winter Veil'),
(3,'2007-08-06 03:00:00','2020-12-30 22:00:00',131040,10020,0,'Darkmoon Faire (Terokkar Forest)'),
(4,'2007-09-04 03:00:00','2020-12-30 22:00:00',131040,10020,0,'Darkmoon Faire (Elwynn Forest)'),
(5,'2007-10-08 03:00:00','2020-12-30 22:00:00',131040,10020,0,'Darkmoon Faire (Mulgore)'),
(6,'2007-12-31 21:00:00','2020-12-30 22:00:00',525600,120,0,'New Year\'s Eve'),
(7,'2008-02-04 22:00:00','2020-12-30 22:00:00',525600,27360,0,'Lunar Festival'),
(8,'2008-02-09 22:00:00','2020-12-30 22:00:00',525600,7200,0,'Love is in the Air'),
(9,'2007-04-08 20:00:00','2020-12-30 22:00:00',524160,1440,0,'Noblegarden'),
(10,'2007-05-21 20:00:00','2020-12-30 22:00:00',525600,10080,0,'Children\'s Week '),
(11,'2007-09-23 20:00:00','2020-12-30 22:00:00',525600,10080,0,'Harvest Festival'),
(12,'2007-10-17 20:00:00','2020-12-30 22:00:00',525600,20160,0,'Hallow\'s End'),
(22,'0000-00-00 00:00:00','0000-00-00 00:00:00',525600,1,0,'AQ War Effort'),
(17,'0000-00-00 00:00:00','0000-00-00 00:00:00',525600,1,0,'Scourge Invasion'),
(13,'0000-00-00 00:00:00','0000-00-00 00:00:00',525600,1,0,'Elemental Invasions'),
(14,'2007-08-05 04:00:00','2020-12-30 22:00:00',10080,300,0,'Fishing Extravaganza Announce'),
(16,'2007-08-04 20:00:00','2020-12-30 22:00:00',180,120,0,'Gurubashi Arena Booty Run'),
(15,'2007-08-05 10:00:00','2020-12-30 22:00:00',10080,120,0,'Fishing Extravaganza'),
(18,'2007-08-02 19:00:00','2020-12-30 22:00:00',40320,6240,0,'Call to Arms: Alterac Valley!'),
(19,'2007-08-09 19:00:00','2020-12-30 22:00:00',40320,6240,0,'Call to Arms: Warsong Gulch!'),
(20,'2007-08-16 19:00:00','2020-12-30 22:00:00',40320,6240,0,'Call to Arms: Arathi Basin!'),
(21,'2007-08-23 19:00:00','2020-12-30 22:00:00',40320,6240,0,'Call to Arms: Eye of the Storm!'),
(23,'2007-09-01 03:00:00','2020-12-30 22:00:00',131040,4320,0,'Darkmoon Faire Building (Elwynn Forest)'),
(24,'0000-00-00 00:00:00','0000-00-00 00:00:00',525600,1,0,'Unknown Holiday PVP Event'),
(25,'0000-00-00 00:00:00','0000-00-00 00:00:00',525600,1,0,'Call to Arms: Unknown Event'),
(26,'2007-10-02 20:00:00','2020-12-30 22:00:00',525600,20160,0,'Brewfest'),
(27,'2008-01-01 19:00:00','2020-12-30 22:00:00',1440,720,0,'Nights'),
(29,'2008-03-23 23:00:00','2020-12-30 22:00:00',86400,21600,0,'Edge of Madness, Gri\'lek'),
(30,'2008-04-06 22:00:00','2020-12-30 22:00:00',86400,21600,0,'Edge of Madness, Hazza\'rah'),
(31,'2008-04-20 22:00:00','2020-12-30 22:00:00',86400,21600,0,'Edge of Madness, Renataki'),
(32,'2008-05-04 22:00:00','2020-12-30 22:00:00',86400,21600,0,'Edge of Madness, Wushoolay'),
(28,'0000-00-00 00:00:00','0000-00-00 00:00:00',525600,2880,0,'Noblegarden'),
(33,'0000-00-00 00:00:00','0000-00-00 00:00:00',5184000,2592000,0,'Arena Tournament'),
(34,'2008-05-15 12:00:00','2020-01-01 00:00:00',10080,5,0,'L70ETC Concert');
/*!40000 ALTER TABLE `game_event` ENABLE KEYS */;
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
