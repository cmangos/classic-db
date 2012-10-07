-- MySQL dump 10.13  Distrib 5.5.28, for Linux (x86_64)
--
-- Host: localhost    Database: zp_world
-- ------------------------------------------------------
-- Server version	5.5.28-log

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
-- Table structure for table `spell_template`
--

DROP TABLE IF EXISTS `spell_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spell_template` (
  `id` int(11) unsigned NOT NULL DEFAULT '0',
  `proc_flags` int(11) unsigned NOT NULL DEFAULT '0',
  `proc_chance` int(11) unsigned NOT NULL DEFAULT '0',
  `duration_index` int(11) unsigned NOT NULL DEFAULT '0',
  `effect0` int(11) unsigned NOT NULL DEFAULT '0',
  `effect0_implicit_target_a` int(11) unsigned NOT NULL DEFAULT '0',
  `effect0_radius_idx` int(11) unsigned NOT NULL DEFAULT '0',
  `effect0_apply_aura_name` int(11) unsigned NOT NULL DEFAULT '0',
  `effect0_misc_value` int(11) unsigned NOT NULL DEFAULT '0',
  `effect0_trigger_spell` int(11) unsigned NOT NULL DEFAULT '0',
  `comments` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='MaNGOS server side spells';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spell_template`
--

LOCK TABLES `spell_template` WRITE;
/*!40000 ALTER TABLE `spell_template` DISABLE KEYS */;
INSERT INTO `spell_template` VALUES
(21387,40,15,21,6,1,0,42,0,21388,'Melt-Weapon trigger aura related used by Ragnaros'),
(23363,0,101,21,76,18,0,0,179804,0,'Summon Drakonid Corpse Trigger'),
(25192,0,101,21,76,18,0,0,180619,0,'Summon Ossirian Crystal'),
(26133,0,101,21,76,18,0,0,180795,0,'Summon Sandworm Base');
/*!40000 ALTER TABLE `spell_template` ENABLE KEYS */;
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
