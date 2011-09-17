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
-- Table structure for table `pool_creature_template`
--

DROP TABLE IF EXISTS `pool_creature_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pool_creature_template` (
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `pool_entry` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `chance` float unsigned NOT NULL DEFAULT '0',
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pool_idx` (`pool_entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pool_creature_template`
--

LOCK TABLES `pool_creature_template` WRITE;
/*!40000 ALTER TABLE `pool_creature_template` DISABLE KEYS */;
INSERT INTO `pool_creature_template` VALUES
(61,1002,0,'RARE Thuros Lightfingers - 61'),
(100,1001,0,'RARE Gruff Swiftbite - 100'),
(462,1005,0,'RARE Vultros - 462'),
(472,1000,0,'RARE Fedfennel - 472'),
(503,1009,0,'RARE Lord Malathrom - 503'),
(507,1008,0,'RARE Fenros - 507'),
(521,1010,0,'RARE Lupos - 521'),
(534,1011,0,'RARE Nefaru - 534'),
(572,1004,0,'RARE Leprithus - 572'),
(573,1006,0,'RARE Foe Reaper 4000 - 573'),
(584,1013,0,'RARE Kazon - 584'),
(616,1012,0,'RARE Chatter - 616'),
(763,1031,0,'RARE Lost One Chieftain - 763'),
(771,1007,0,'RARE  Lost One Chieftain - 771'),
(947,1015,0,'RARE Rohh the Silent - 947'),
(1063,1029,0,'RARE Jade - 1063'),
(1106,1032,0,'RARE Lost One Cook - 1106'),
(1130,1064,0,'RARE Bjarn - 1130'),
(1132,1068,0,'RARE Timber - 1132'),
(1137,1065,0,'RARE Edan the Howler - 1137'),
(1260,1067,0,'RARE Great Father Arctikus - 1260'),
(1552,1025,0,'RARE Scale Belly - 1552'),
(2476,1069,0,'RARE Large Loch Crocolisk - 2476'),
(2541,1022,0,'RARE Lord Sakrasis - 2541'),
(2744,1060,0,'RARE Shadowforge Commander - 2744'),
(2749,1061,0,'RARE Siege Golem - 2749'),
(2751,1062,0,'RARE War Golem - 2751'),
(2752,1059,0,'RARE Rumbler - 2752'),
(2753,1057,0,'RARE Barnabus - 2753'),
(2773,1003,0,'RARE Or\'Kalar - 2773'),
(2850,1058,0,'RARE Broken Tooth - 2850'),
(2931,1063,0,'RARE Zaricotl - 2931'),
(7846,1042,0,'RARE Teremus the Devourer - 7846'),
(8277,1053,0,'RARE Rekk\'tilac - 8277'),
(8279,1051,0,'RARE Faulty War Golem - 8279'),
(8281,1054,0,'RARE Scald - 8281'),
(8282,1052,0,'RARE Highlord Mastrogonde - 8282'),
(8283,1055,0,'RARE Slave Master Blackheart - 8283'),
(8296,1039,0,'RARE Mojo the Twisted - 8296'),
(8297,1038,0,'RARE Magronos the Unyielding - 8297'),
(8298,1034,0,'RARE Akubar the Seer - 8298'),
(8299,1041,0,'RARE Spiteflayer - 8299'),
(8300,1040,0,'RARE Ravage - 8300'),
(8301,1035,0,'RARE Clack the Reaver - 8301'),
(8302,1036,0,'RARE Deatheye - 8302'),
(8303,1037,0,'RARE Grunter - 8303'),
(8503,1066,0,'RARE Gibblewilt - 8503'),
(8978,1050,0,'RARE Thauris Balgarr - 8978'),
(8979,1045,0,'RARE Gruklash - 8979'),
(8981,1048,0,'RARE Malfunctioning Reaver - 8981'),
(9602,1046,0,'RARE Hahk\'Zor - 9602'),
(9604,1044,0,'RARE Gorgon\'och - 9604'),
(10077,1043,0,'RARE Deathmaw - 10077'),
(10078,1049,0,'RARE Terrorspark - 10078'),
(11383,1020,0,'RARE High Priestess Hai\'watna - 11383'),
(14224,1056,0,'RARE 7:XT - 14224'),
(14268,1070,0,'RARE Lord Condar - 14268'),
(14269,1016,0,'RARE Seeker Aqualon - 14269'),
(14270,1018,0,'RARE Squiddic - 14270'),
(14271,1014,0,'RARE Ribchaser - 14271'),
(14272,1017,0,'RARE Snarlflare - 14272'),
(14424,1072,0,'RARE Mirelow - 14424'),
(14425,1071,0,'RARE Gnawbone - 14425'),
(14445,1030,0,'RARE Lord Captain Wyrmak - 14445'),
(14446,1027,0,'RARE Fingat - 14446'),
(14447,1028,0,'RARE Gilmorian - 14447'),
(14448,1033,0,'RARE Molt Thorn - 14448'),
(14487,1019,0,'RARE Gluggle - 14487'),
(14488,1024,0,'RARE Roloch - 14488'),
(14490,1023,0,'RARE Rippa - 14490'),
(14491,1021,0,'RARE Kurmokk - 14491'),
(14492,1026,0,'RARE Verifonix - 14492');
/*!40000 ALTER TABLE `pool_creature_template` ENABLE KEYS */;
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
