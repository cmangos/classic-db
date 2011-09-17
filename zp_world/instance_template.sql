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
-- Table structure for table `instance_template`
--

DROP TABLE IF EXISTS `instance_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `instance_template` (
  `map` smallint(5) unsigned NOT NULL,
  `parent` smallint(5) unsigned NOT NULL DEFAULT '0',
  `levelMin` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `levelMax` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `maxPlayers` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `reset_delay` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Reset time in days',
  `ghostEntranceMap` smallint(5) unsigned NOT NULL,
  `ghostEntranceX` float NOT NULL,
  `ghostEntranceY` float NOT NULL,
  `ScriptName` varchar(128) NOT NULL DEFAULT '',
  PRIMARY KEY (`map`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `instance_template`
--

LOCK TABLES `instance_template` WRITE;
/*!40000 ALTER TABLE `instance_template` DISABLE KEYS */;
INSERT INTO `instance_template` VALUES
(33,0,20,26,10,0,0,-230.989,1571.57,'instance_shadowfang_keep'),
(34,0,22,34,10,0,0,-8762.38,848.01,''),
(36,0,17,26,10,0,0,-11207.8,1681.15,'instance_deadmines'),
(43,0,17,24,10,0,1,-751.131,-2209.24,'instance_wailing_caverns'),
(47,0,24,40,10,0,1,-4459.45,-1660.21,'instance_razorfen_kraul'),
(48,0,20,34,10,0,1,4249.12,748.387,'instance_blackfathom_deeps'),
(70,0,41,51,10,0,0,-6060.18,-2955,'instance_uldaman'),
(90,0,24,40,10,0,0,-5162.66,931.599,'instance_gnomeregan'),
(109,0,50,0,10,0,0,-10170.1,-3995.97,'instance_sunken_temple'),
(129,0,33,47,10,0,1,-4662.88,-2535.87,''),
(189,0,29,48,10,0,0,2892.24,-811.264,'instance_scarlet_monastery'),
(209,0,43,54,10,0,1,-6790.58,-2891.28,'instance_zulfarrak'),
(229,0,55,0,10,3,0,-7522.53,-1233.04,'instance_blackrock_spire'),
(230,0,48,60,5,0,0,-7178.1,-928.639,'instance_blackrock_depths'),
(249,0,60,60,40,5,1,-4753.31,-3752.42,'instance_onyxias_lair'),
(289,0,58,0,5,0,0,1274.78,-2552.56,'instance_scholomance'),
(309,0,60,60,20,3,0,-11916.1,-1224.58,'instance_zulgurub'),
(329,0,58,0,5,0,0,3392.32,-3378.48,'instance_stratholme'),
(349,0,40,58,10,0,1,-1432.7,2924.98,''),
(389,0,13,22,10,0,1,1816.76,-4423.37,''),
(409,0,60,60,40,7,0,-7510.56,-1036.7,'instance_molten_core'),
(429,0,55,0,5,0,1,-3908.03,1130,'instance_dire_maul'),
(469,0,60,60,40,7,0,-7663.41,-1218.67,'instance_blackwing_lair'),
(509,0,60,60,20,3,1,-8114.46,1526.37,'instance_ruins_of_ahnqiraj'),
(531,0,60,60,40,7,1,-8111.72,1526.79,'instance_temple_of_ahnqiraj'),
(533,0,60,60,40,7,0,0,0,'instance_naxxramas');
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
