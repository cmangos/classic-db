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
-- Table structure for table `spell_elixir`
--

DROP TABLE IF EXISTS `spell_elixir`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spell_elixir` (
  `entry` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'SpellId of potion',
  `mask` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT 'Mask 0x1 battle 0x2 guardian 0x3 flask 0x7 unstable flasks 0xB shattrath flasks',
  PRIMARY KEY (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Spell System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spell_elixir`
--

LOCK TABLES `spell_elixir` WRITE;
/*!40000 ALTER TABLE `spell_elixir` DISABLE KEYS */;
INSERT INTO `spell_elixir` VALUES
(673,0),
(2367,0),
(2374,0),
(2378,0),
(2380,0),
(3160,0),
(3164,0),
(3166,0),
(3219,0),
(3220,0),
(3222,0),
(3223,0),
(3593,0),
(7844,0),
(8212,0),
(10667,0),
(10668,0),
(10669,0),
(10692,0),
(10693,0),
(11319,0),
(11328,0),
(11334,0),
(11348,0),
(11349,0),
(11364,0),
(11371,0),
(11390,0),
(11396,0),
(11405,0),
(11406,0),
(11474,0),
(15231,0),
(15233,0),
(16321,0),
(16322,0),
(16323,0),
(16325,0),
(16326,0),
(16327,0),
(16329,0),
(17038,0),
(17535,0),
(17537,0),
(17538,0),
(17539,0),
(17624,0),
(17626,0),
(17627,0),
(17628,0),
(17629,0),
(21920,0),
(24361,0),
(24363,0),
(24382,0),
(24383,0),
(24417,0),
(26276,0),
(27652,0),
(27653,0);
/*!40000 ALTER TABLE `spell_elixir` ENABLE KEYS */;
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
