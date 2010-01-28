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
(1,'2007-06-20 20:00:00','2020-12-31 22:59:59',525600,20160,'Midsummer Fire Festival'),
(2,'2006-12-14 23:00:00','2020-12-31 22:59:59',525600,27360,'Feast of Winter Veil'),
(4,'2006-02-08 23:00:00','2020-12-31 22:59:59',96480,10080,'Darkmoon Faire (Elwynn)'),
(5,'2006-01-07 23:00:00','2020-12-31 22:59:59',96480,10080,'Darkmoon Faire (Mulgore)'),
(6,'2007-12-31 21:00:00','2020-12-31 22:59:59',525600,120,'New Year\'s Eve'),
(7,'2006-02-12 22:00:00','2020-12-31 22:59:59',525600,28800,'Lunar Festival'),
(8,'2006-02-10 22:00:00','2020-12-31 22:59:59',525600,5760,'Love is in the Air'),
(9,'2006-04-16 20:00:00','2020-12-31 22:59:59',524160,7200,'Noblegarden'),
(10,'2007-05-01 20:00:00','2020-12-31 22:59:59',525600,11520,'Children\'s Week '),
(12,'2006-10-18 20:00:00','2020-12-31 22:59:59',525600,21600,'Hallow\'s End'),
(13,'0000-00-00 00:00:00','2020-12-31 22:59:59',525600,1,'Elemental Invasions'),
(14,'2006-01-02 05:00:00','2020-12-31 22:59:59',10080,300,'Fishing Extravaganza Announce'),
(15,'2006-01-01 11:00:00','2020-12-31 22:59:59',10080,120,'Fishing Extravaganza'),
(16,'2005-12-31 23:00:00','2020-12-31 22:59:59',180,120,'Gurubashi Arena Booty Run'),
(17,'0000-00-00 00:00:00','0000-00-00 00:00:00',525600,1,'Scourge Invasion'),
(18,'2006-01-19 23:00:00','2020-12-31 22:59:59',40320,6240,'Call to Arms: Alterac Valley!'),
(19,'2006-01-26 23:00:00','2020-12-31 22:59:59',40320,6240,'Call to Arms: Warsong Gulch!'),
(20,'2006-01-05 23:00:00','2020-12-31 22:59:59',40320,6240,'Call to Arms: Arathi Basin!'),
(22,'0000-00-00 00:00:00','0000-00-00 00:00:00',525600,1,'AQ War Effort'),
(23,'2006-02-05 23:00:00','2020-12-31 22:59:59',131040,4320,'Darkmoon Faire Building (Elwynn)'),
(27,'2008-01-01 19:00:00','2020-12-31 22:59:59',1440,720,'Nights'),
(28,'2006-04-21 22:00:00','2020-12-31 22:59:59',525600,50400,'Noblegarden'),
(29,'2006-01-23 23:00:00','2020-12-31 22:59:59',86400,21600,'Edge of Madness, Gri\'lek'),
(30,'2006-01-06 23:00:00','2020-12-31 22:59:59',86400,21600,'Edge of Madness, Hazza\'rah'),
(31,'2006-01-20 23:00:00','2020-12-31 22:59:59',86400,21600,'Edge of Madness, Renataki'),
(32,'2006-01-04 23:00:00','2020-12-31 22:59:59',86400,21600,'Edge of Madness, Wushoolay');
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
