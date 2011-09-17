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
-- Table structure for table `pool_template`
--

DROP TABLE IF EXISTS `pool_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pool_template` (
  `entry` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'Pool entry',
  `max_limit` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Max number of objects (0) is no limit',
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pool_template`
--

LOCK TABLES `pool_template` WRITE;
/*!40000 ALTER TABLE `pool_template` DISABLE KEYS */;
INSERT INTO `pool_template` VALUES
(1000,1,'RARE Fedfennel - 472'),
(1001,1,'RARE Gruff Swiftbite - 100'),
(1002,1,'RARE Thuros Lightfingers - 61'),
(1003,1,'RARE Or\'Kalar - 2773'),
(1004,1,'RARE Leprithus - 572'),
(1005,1,'RARE Vultros - 462'),
(1006,1,'RARE Foe Reaper 4000 - 573'),
(1007,1,'RARE Commander Felstrom - 771'),
(1008,1,'RARE Fenros - 507'),
(1009,1,'RARE Lord Malathrom - 503'),
(1010,1,'RARE Lupos - 521'),
(1011,1,'RARE Nefaru - 534'),
(1012,1,'RARE Chatter - 616'),
(1013,1,'RARE Kazon - 584'),
(1014,1,'RARE Ribchaser - 14271'),
(1015,1,'RARE Rohh the Silent - 947'),
(1016,1,'RARE Seeker Aqualon - 14269'),
(1017,1,'RARE Snarlflare - 14272'),
(1018,1,'RARE Squiddic - 14270'),
(1019,1,'RARE Gluggle - 14487'),
(1020,1,'RARE High Priestess Hai\'watna - 11383'),
(1021,1,'RARE Kurmokk - 14491'),
(1022,1,'RARE Lord Sakrasis - 2541'),
(1023,1,'RARE Rippa - 14490'),
(1024,1,'RARE Roloch - 14488'),
(1025,1,'RARE Scale Belly - 1552'),
(1026,1,'RARE Verifonix - 14492'),
(1027,1,'RARE Fingat - 14446'),
(1028,1,'RARE Gilmorian - 14447'),
(1029,1,'RARE Jade - 1063'),
(1030,1,'RARE Lord Captain Wyrmak - 14445'),
(1031,1,'RARE Lost One Chieftain - 763'),
(1032,1,'RARE Lost One Cook - 1106'),
(1033,1,'RARE Molt Thorn - 14448'),
(1034,1,'RARE Akubar the Seer - 8298'),
(1035,1,'RARE Clack the Reaver - 8301'),
(1036,1,'RARE Deatheye - 8302'),
(1037,1,'RARE Grunter - 8303'),
(1038,1,'RARE Magronos the Unyielding - 8297'),
(1039,1,'RARE Mojo the Twisted - 8296'),
(1040,1,'RARE Ravage - 8300'),
(1041,1,'RARE Spiteflayer - 8299'),
(1042,1,'RARE Teremus the Devourer - 7846'),
(1043,1,'RARE Deathmaw - 10077'),
(1044,1,'RARE Gorgon\'och - 9604'),
(1045,1,'RARE Gruklash - 8979'),
(1046,1,'RARE Hahk\'Zor - 9602'),
(1048,1,'RARE Malfunctioning Reaver - 8981'),
(1049,1,'RARE Terrorspark - 10078'),
(1050,1,'RARE Thauris Balgarr - 8978'),
(1051,1,'RARE Faulty War Golem - 8279'),
(1052,1,'RARE Highlord Mastrogonde - 8282'),
(1053,1,'RARE Rekk\'tilac - 8277'),
(1054,1,'RARE Scald - 8281'),
(1055,1,'RARE Slave Master Blackheart - 8283'),
(1056,1,'RARE 7:XT - 14224'),
(1057,1,'RARE Barnabus - 2753'),
(1058,1,'RARE Broken Tooth - 2850'),
(1059,1,'RARE Rumbler - 2752'),
(1060,1,'RARE Shadowforge Commander - 2744'),
(1061,1,'RARE Siege Golem - 2749'),
(1062,1,'RARE War Golem - 2751'),
(1063,1,'RARE Zaricotl - 2931'),
(1064,1,'RARE Bjarn - 1130'),
(1065,1,'RARE Edan the Howler - 1137'),
(1066,1,'RARE Gibblewilt - 8503'),
(1067,1,'RARE Great Father Arctikus - 1260'),
(1068,1,'RARE Timber - 1132'),
(1069,1,'RARE Large Loch Crocolisk - 2476'),
(1070,1,'RARE Lord Condar - 14268'),
(1071,1,'RARE Gnawbone - 14425'),
(1072,1,'RARE Mirelow - 14424');
/*!40000 ALTER TABLE `pool_template` ENABLE KEYS */;
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
