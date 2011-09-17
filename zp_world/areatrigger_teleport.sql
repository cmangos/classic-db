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
-- Table structure for table `areatrigger_teleport`
--

DROP TABLE IF EXISTS `areatrigger_teleport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `areatrigger_teleport` (
  `id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'Identifier',
  `name` text,
  `required_level` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `required_item` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `required_item2` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `required_quest_done` int(11) unsigned NOT NULL DEFAULT '0',
  `required_failed_text` text,
  `target_map` smallint(5) unsigned NOT NULL DEFAULT '0',
  `target_position_x` float NOT NULL DEFAULT '0',
  `target_position_y` float NOT NULL DEFAULT '0',
  `target_position_z` float NOT NULL DEFAULT '0',
  `target_orientation` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Trigger System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `areatrigger_teleport`
--

LOCK TABLES `areatrigger_teleport` WRITE;
/*!40000 ALTER TABLE `areatrigger_teleport` DISABLE KEYS */;
INSERT INTO `areatrigger_teleport` VALUES
(45,'Scarlet Monastery - Graveyard (Entrance)',29,0,0,0,NULL,189,1688.99,1053.48,18.6775,0.00117),
(78,'DeadMines Entrance',15,0,0,0,NULL,36,-16.4,-383.07,61.78,1.86),
(101,'Stormwind Stockades Entrance',22,0,0,0,NULL,34,54.23,0.28,-18.34,6.26),
(107,'Stormwind Vault Entrance',0,0,0,0,NULL,35,-0.91,40.57,-24.23,0),
(109,'Stormwind Vault Instance',0,0,0,0,NULL,0,-8653.45,606.19,91.16,0),
(119,'DeadMines Instance Start',0,0,0,0,NULL,0,-11208.3,1672.52,24.66,4.55217),
(121,'Deadmines Instance End',0,0,0,0,NULL,0,-11339.4,1571.16,100.56,0),
(145,'Shadowfang Keep Entrance',18,0,0,0,NULL,33,-229.135,2109.18,76.8898,1.267),
(194,'Shadowfang keep - Entrance',0,0,0,0,NULL,0,-232.796,1568.28,76.8909,4.398),
(226,'The Barrens - Wailing Caverns',0,0,0,0,NULL,1,-740.059,-2214.23,16.1374,5.68),
(228,'The Barrens - Wailing Caverns',15,0,0,0,NULL,43,-163.49,132.9,-73.66,5.83),
(242,'Razorfen Kraul Instance Start',0,0,0,0,NULL,1,-4464.92,-1666.24,90,0),
(244,'Razorfen Kraul Entrance',24,0,0,0,NULL,47,1943,1544.63,82,1.38),
(257,'Blackphantom Deeps Entrance',20,0,0,0,NULL,48,-151.89,106.96,-39.87,4.53),
(259,'Blackphantom Deeps Instance Start',0,0,0,0,NULL,1,4247.74,745.879,-24.5299,4.5828),
(286,'Uldaman Entrance',38,0,0,0,NULL,70,-226.8,49.09,-46.03,1.39),
(288,'Uldaman Instance Start',0,0,0,0,NULL,0,-6066.73,-2955.63,209.776,3.20443),
(322,'Gnomeregan Instance Start',0,0,0,0,NULL,0,-5163.33,927.623,257.188,0),
(324,'Gnomeregan Entrance',24,0,0,0,NULL,90,-332.22,-2.28,-150.86,2.77),
(442,'Razorfen Downs Entrance',33,0,0,0,NULL,129,2592.55,1107.5,51.29,4.74),
(444,'Razorfen Downs Instance Start',0,0,0,0,NULL,1,-4658.12,-2526.35,81.492,1.25978),
(446,'Altar of Atal\'Hakkar Entrance',44,0,0,0,NULL,109,-319.24,99.9,-131.85,3.19),
(448,'Altar Of Atal\'Hakkar Instance Start',0,0,0,0,NULL,0,-10175.1,-3995.15,-112.9,2.95938),
(503,'Stockades Instance',0,0,0,0,NULL,0,-8764.83,846.075,87.4842,3.77934),
(523,'Gnomeregan Train Depot Entrance',20,0,0,0,NULL,90,-736.51,2.71,-249.99,3.14),
(525,'Gnomeregan Train Depot Instance',0,0,0,0,NULL,0,-4858.27,756.435,244.923,0),
(527,'Teddrassil - Ruth Theran',0,0,0,0,NULL,1,8786.36,967.445,30.197,3.39632),
(542,'Teddrassil - Darnassus',0,0,0,0,NULL,1,9945.13,2616.89,1316.46,4.61446),
(602,'Scarlet Monastery - Graveyard (Exit)',0,0,0,0,NULL,0,2913.92,-802.404,160.333,3.50405),
(604,'Scarlet Monastery - Cathedral (Exit)',0,0,0,0,NULL,0,2906.14,-813.772,160.333,1.95739),
(606,'Scarlet Monastery - Armory (Exit)',0,0,0,0,NULL,0,2884.45,-822.01,160.333,1.95268),
(608,'Scarlet Monastery - Library (Exit)',0,0,0,0,NULL,0,2870.9,-820.164,160.333,0.387856),
(610,'Scarlet Monastery - Cathedral (Entrance)',35,0,0,0,NULL,189,855.683,1321.5,18.6709,0.001747),
(612,'Scarlet Monastery - Armory (Entrance)',33,0,0,0,NULL,189,1610.83,-323.433,18.6738,6.28022),
(614,'Scarlet Monastery - Library (Entrance)',31,0,0,0,NULL,189,255.346,-209.09,18.6773,6.26656),
(702,'Stormwind - Wizard Sanctum Room',0,0,0,0,NULL,0,-9015.97,875.318,148.617,0),
(704,'Stormwind - Wizard Sanctum Tower Portal',0,0,0,0,NULL,0,-9019.16,887.596,29.6206,0),
(882,'Uldaman Instance End',0,0,0,0,NULL,0,-6620.48,-3765.19,266.226,3.13531),
(902,'Uldaman Exit',38,0,0,0,NULL,70,-214.02,383.607,-38.7687,0.5),
(922,'Zul\'Farrak Instance Start',0,0,0,0,NULL,1,-6796.49,-2890.77,8.88063,3.30496),
(924,'Zul\'Farrak Entrance',43,0,0,0,NULL,209,1213.52,841.59,8.93,6.09),
(943,'Leap of Faith - End of fall',0,0,0,0,NULL,1,-5187.47,-2804.32,-8.375,5.76),
(1064,'Onyxia\'s Lair - Dustwallow Instance',0,0,0,0,NULL,1,-4747.17,-3753.27,49.8122,0.713271),
(1466,'Blackrock Mountain - Searing Gorge Instance?',48,0,0,0,NULL,230,458.32,26.52,-70.67,4.95),
(1468,'Blackrock Spire - Searing Gorge Instance (Inside)',52,0,0,0,NULL,229,78.5083,-225.044,49.839,5.1),
(1470,'Blackrock Spire - Searing Gorge Instance',0,0,0,0,NULL,0,-7524.19,-1230.13,285.743,2.09544),
(1472,'Blackrock Dephts - Searing Gorge Instance',0,0,0,0,NULL,0,-7179.63,-923.667,166.416,1.84097),
(2166,'Deeprun Tram - Ironforge Instance (Inside)',0,0,0,0,NULL,0,-4838.95,-1318.46,501.868,1.42372),
(2171,'Deeprun Tram - Stormwind Instance (Inside)',0,0,0,0,NULL,0,-8364.57,535.981,91.7969,2.24619),
(2173,'Deeprun Tram - Stormwind Instance',0,0,0,0,NULL,369,68.3006,2490.91,-4.29647,3.12192),
(2175,'Deeprun Tram - Ironforge Instance',0,0,0,0,NULL,369,69.2542,10.257,-4.29664,3.09832),
(2214,'Stratholme - Eastern Plaguelands Instance',56,0,0,0,NULL,329,3593.15,-3646.56,138.5,5.33),
(2216,'Stratholme - Eastern Plaguelands Instance',56,0,0,0,NULL,329,3395.09,-3380.25,142.702,0.1),
(2217,'Stratholme - Eastern Plaguelands Instance',56,0,0,0,NULL,329,3395.09,-3380.25,142.702,0.1),
(2221,'Stratholme - Eastern Plaguelands Instance (Inside)',0,0,0,0,NULL,0,3235.46,-4050.6,108.45,1.93522),
(2226,'Ragefire Chasm - Ogrimmar Instance (Inside)',0,0,0,0,NULL,1,1813.49,-4418.58,-18.57,1.78),
(2230,'Ragefire Chasm - Ogrimmar Instance',13,0,0,0,NULL,389,3.81,-14.82,-17.84,4.39),
(2527,'Hall of Legends - Ogrimmar',0,0,0,0,NULL,450,221.322,74.4933,25.7195,0.484836),
(2530,'Hall of Legends - Ogrimmar (Inside)',0,0,0,0,NULL,1,1637.32,-4242.7,56.1827,4.1927),
(2532,'Stormwind - Champions Hall',0,0,0,0,NULL,449,-0.299116,4.39156,-0.255884,1.54805),
(2534,'Stormwind (Inside) - Champions Hall',0,0,0,0,NULL,0,-8762.45,403.062,103.902,5.34463),
(2567,'Scholomance Entrance',56,0,0,0,NULL,289,196.37,127.05,134.91,6.09),
(2568,'Scholomance Instance',0,0,0,0,NULL,0,1275.05,-2552.03,90.3994,3.6631),
(2606,'Alterac Valley - Horde Exit',0,0,0,0,NULL,0,534.868,-1087.68,106.119,3.35758),
(2608,'Alterac Valley - Alliance Exit',0,0,0,0,NULL,0,98.432,-182.274,127.52,5.02654),
(2848,'Onyxia\'s Lair Entrance',60,16309,0,0,NULL,249,29.1607,-71.3372,-8.18032,4.58),
(2886,'The Molten Bridge',60,0,0,0,NULL,409,1096,-467,-104.6,3.64),
(2890,'Molten Core Entrance, Inside',60,0,0,0,NULL,230,1115.35,-457.35,-102.7,0.5),
(3126,'Maraudon',0,0,0,0,NULL,1,-1186.98,2875.95,85.7258,1.78443),
(3131,'Maraudon',0,0,0,0,NULL,1,-1471.07,2618.57,76.1944,0),
(3133,'Maraudon',40,0,0,0,NULL,349,1019.69,-458.31,-43.43,0.31),
(3134,'Maraudon',40,0,0,0,NULL,349,752.91,-616.53,-33.11,1.37),
(3183,'Dire Maul',56,0,0,0,NULL,429,44.4499,-154.822,-2.71201,0),
(3184,'Dire Maul',56,0,0,0,NULL,429,-201.11,-328.66,-2.72,5.22),
(3185,'Dire Maul',56,0,0,0,NULL,429,9.31119,-837.085,-32.5305,0),
(3186,'Dire Maul',56,0,0,0,NULL,429,-62.9658,159.867,-3.46206,3.14788),
(3187,'Dire Maul',56,0,0,0,NULL,429,31.5609,159.45,-3.4777,0.01),
(3189,'Dire Maul',56,0,0,0,NULL,429,255.249,-16.0561,-2.58737,4.7),
(3190,'Dire Maul',0,0,0,0,NULL,1,-3831.79,1250.23,160.223,0),
(3191,'Dire Maul',0,0,0,0,NULL,1,-3747.96,1249.18,160.217,3.15827),
(3193,'Dire Maul',0,0,0,0,NULL,1,-3520.65,1077.72,161.138,1.5009),
(3194,'Dire Maul',0,0,0,0,NULL,1,-3737.48,934.975,160.973,3.13864),
(3195,'Dire Maul',0,0,0,0,NULL,1,-3980.58,776.193,161.006,0),
(3196,'Dire Maul',0,0,0,0,NULL,1,-4030.21,127.966,26.8109,0),
(3197,'Dire Maul',0,0,0,0,NULL,1,-3577.67,841.859,134.594,0),
(3528,'The Molten Core Window Entrance',60,0,0,7487,'',409,1096,-467,-104.6,3.64),
(3529,'The Molten Core Window(Lava) Entrance',60,0,0,7487,'',409,1096,-467,-104.6,3.64),
(3726,'Blackwing Lair - Blackrock Mountain - Eastern Kingdoms',60,0,0,7761,NULL,469,-7673.03,-1106.08,396.651,0.703353),
(3728,'Blackrock Spire, Unknown',55,0,0,0,NULL,229,174.74,-474.77,116.84,3.2),
(3928,'Zul\'Gurub Entrance',60,0,0,0,NULL,309,-11916.1,-1230.53,92.5334,4.71867),
(3930,'Zul\'Gurub Exit',0,0,0,0,NULL,0,-11916.3,-1208.37,92.2868,1.61792),
(3948,'Arathi Basin Alliance Out',0,0,0,0,NULL,0,-1198,-2533,22,0),
(3949,'Arathi Basin Horde Out',0,0,0,0,NULL,0,-817,-3509,73,0),
(4006,'Ruins Of Ahn\'Qiraj (Inside)',0,0,0,0,NULL,1,-8418.5,1505.94,31.8232,0),
(4008,'Ruins Of Ahn\'Qiraj (Outside)',60,0,0,0,NULL,509,-8429.74,1512.14,31.9074,2.58),
(4010,'Ahn\'Qiraj Temple (Outside)',60,0,0,0,NULL,531,-8231.33,2010.6,129.861,0),
(4012,'Ahn\'Qiraj Temple (Inside)',0,0,0,0,NULL,1,-8242.67,1992.06,129.072,0),
(4055,'Naxxramas (Exit)',60,0,0,9122,NULL,533,3005.87,-3435.01,293.882,0),
(4156,'Naxxramas (Entrance)',60,0,0,0,NULL,533,3498.28,-5349.9,144.968,1.31324);
/*!40000 ALTER TABLE `areatrigger_teleport` ENABLE KEYS */;
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
