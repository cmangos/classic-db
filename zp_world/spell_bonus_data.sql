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
-- Table structure for table `spell_bonus_data`
--

DROP TABLE IF EXISTS `spell_bonus_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spell_bonus_data` (
  `entry` smallint(5) unsigned NOT NULL,
  `direct_bonus` float NOT NULL DEFAULT '0',
  `dot_bonus` float NOT NULL DEFAULT '0',
  `ap_bonus` float NOT NULL DEFAULT '0',
  `ap_dot_bonus` float NOT NULL DEFAULT '0',
  `comments` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spell_bonus_data`
--

LOCK TABLES `spell_bonus_data` WRITE;
/*!40000 ALTER TABLE `spell_bonus_data` DISABLE KEYS */;
INSERT INTO `spell_bonus_data` VALUES
(116,0.8143,0,0,0,'Mage - Frost Bolt'),
(120,0.1357,0,0,0,'Mage - Cone of Cold'),
(133,1,0,0,0,'Mage - Fire Ball'),
(172,0,0.156,0,0,'Warlock - Corruption'),
(331,0.8571,0,0,0,'Shaman - Healing Wave'),
(339,0,0.1,0,0,'Druid - Entangling Roots'),
(348,0.2,0.2,0,0,'Warlock - Immolate'),
(379,0,0,0,0,'Shaman - Earth Shield Triggered'),
(403,0.7143,0,0,0,'Shaman - Lightning Bolt'),
(421,0.57,0,0,0,'Shaman - Chain Lightning'),
(585,0.714,0,0,0,'Priest - Smite'),
(603,0,2,0,0,'Warlock - Curse of Doom'),
(686,0.8571,0,0,0,'Warlock - Shadow Bolt'),
(703,0,0,0,0.03,'Rogue - Garrote'),
(755,0,0.4485,0,0,'Warlock - Health Funnel'),
(879,0.15,0,0.15,0,'Paladin - Exorcism'),
(974,0.2857,0,0,0,'Shaman - Earth Shield'),
(980,0,0.1,0,0,'Warlock - Curse of Agony'),
(1120,0,0.4286,0,0,'Warlock - Drain Soul'),
(1454,0.8,0,0,0,'Warlock - Life Tap'),
(1463,0.8053,0,0,0,'Mage - Mana Shield'),
(1949,0,0.0946,0,0,'Warlock - Hellfire'),
(2060,1.2353,0,0,0,'Priest - Greater Heal'),
(2061,0.6177,0,0,0,'Priest - Flash Heal'),
(2120,0.2357,0.122,0,0,'Mage - Flamestrike'),
(2812,0.07,0,0.07,0,'Paladin - Holy Wrath'),
(3606,0.1667,0,0,0,'Shaman - Searing Totem Attack Rank 1'),
(5138,0,0,0,0,'Warlock - Drain Mana'),
(5176,0.5714,0,0,0,'Druid - Wrath'),
(5185,1.6104,0,0,0,'Druid - Healing Touch'),
(5570,0,0.127,0,0,'Druid - Insect Swarm'),
(5672,0,0.045,0,0,'Shaman - Healing Stream Totem'),
(5707,0,0,0,0,'Item - Lifestone Regeneration'),
(5857,0.1428,0,0,0,'Warlock - Hellfire Effect on Enemy Rank 1'),
(6229,0.3,0,0,0,'Warlock - Shadow Ward'),
(6350,0.1667,0,0,0,'Shaman - Searing Totem Attack Rank 2'),
(6351,0.1667,0,0,0,'Shaman - Searing Totem Attack Rank 3'),
(6352,0.1667,0,0,0,'Shaman - Searing Totem Attack Rank 4'),
(6353,1.15,0,0,0,'Warlock - Soul Fire'),
(7268,0.2857,0,0,0,'Mage - Arcane Missiles Triggered Spell Rank 1'),
(7269,0.2857,0,0,0,'Mage - Arcane Missiles Triggered Spell Rank 2'),
(7270,0.2857,0,0,0,'Mage - Arcane Missiles Triggered Spell Rank 3'),
(8026,0.1,0,0,0,'Shaman - Flametongue Weapon Proc Rank 1'),
(8028,0.1,0,0,0,'Shaman - Flametongue Weapon Proc Rank 2'),
(8029,0.1,0,0,0,'Shaman - Flametongue Weapon Proc Rank 3'),
(8034,0.1,0,0,0,'Shaman - Frostbrand Attack Rank 1'),
(8042,0.3858,0,0,0,'Shaman - Earth Shock'),
(8050,0.2142,0.1,0,0,'Shaman - Flame Shock'),
(8056,0.3858,0,0,0,'Shaman - Frost Shock'),
(8129,0,0,0,0,'Priest - Mana Burn'),
(8188,0.1,0,0,0,'Shaman - Magma Totam Passive Rank 1'),
(8418,0.2857,0,0,0,'Mage - Arcane Missiles Triggered Spell Rank 5'),
(8419,0.2857,0,0,0,'Mage - Arcane Missiles Triggered Spell Rank 4'),
(8443,0.2142,0,0,0,'Shaman - Fire Nova Totem Casted by Totem Rank 1'),
(8504,0.2142,0,0,0,'Shaman - Fire Nova Totem Casted by Totem Rank 2'),
(8505,0.2142,0,0,0,'Shaman - Fire Nova Totem Casted by Totem Rank 3'),
(8921,0.1515,0.13,0,0,'Druid - Moonfire'),
(8936,0.3,0.1,0,0,'Druid - Regrowth'),
(10273,0.2857,0,0,0,'Mage - Arcane Missiles Triggered Spell Rank 6'),
(10274,0.2857,0,0,0,'Mage - Arcane Missiles Triggered Spell Rank 7'),
(10435,0.1667,0,0,0,'Shaman - Searing Totem Attack Rank 5'),
(10436,0.1667,0,0,0,'Shaman - Searing Totem Attack Rank 6'),
(10444,0,0,0,0,'Shaman - Flametongue Attack'),
(10445,0.1,0,0,0,'Shaman - Flametongue Weapon Proc Rank 4'),
(10582,0.1,0,0,0,'Shaman - Magma Totam Passive Rank 2'),
(10583,0.1,0,0,0,'Shaman - Magma Totam Passive Rank 3'),
(10584,0.1,0,0,0,'Shaman - Magma Totam Passive Rank 4'),
(11113,0.1357,0,0,0,'Mage - Blast Wave Rank'),
(11310,0.2142,0,0,0,'Shaman - Fire Nova Totem Casted by Totem Rank 4'),
(11311,0.2142,0,0,0,'Shaman - Fire Nova Totem Casted by Totem Rank 5'),
(11538,0,0,0,0,'Item - Six Demon Bag - Frostbolt'),
(11681,0.1428,0,0,0,'Warlock - Hellfire Effect on Enemy Rank 2'),
(11682,0.1428,0,0,0,'Warlock - Hellfire Effect on Enemy Rank 3'),
(14914,0.5711,0.024,0,0,'Priest - Holy Fire'),
(15237,0.1606,0,0,0,'Priest - Holy Nova Damage'),
(15407,0,0.19,0,0,'Priest - Mind Flay'),
(15662,0,0,0,0,'Item - Six Demon Bag - Fireball'),
(16343,0.1,0,0,0,'Shaman - Flametongue Weapon Proc Rank 5'),
(16344,0.1,0,0,0,'Shaman - Flametongue Weapon Proc Rank 6'),
(17712,0,0,0,0,'Item - Lifestone Healing'),
(18220,0.96,0,0,0,'Warlock - Dark Pact'),
(18562,0,0,0,0,'Druid - Swiftmend'),
(18764,0,0,0,0,'Item - Fungal Regrowth'),
(18790,0,0,0,0,'Warlock - Fel Stamina'),
(20167,0.25,0,0.16,0,'Paladin - Seal of Light Proc'),
(20424,0.25,0,0.16,0,'Paladin - Seal of Command Proc'),
(20925,0.09,0,0.056,0,'Paladin - Holy Shield'),
(21179,0,0,0,0,'Item - Six Demon Bag - Chain Lightning'),
(23455,0.3035,0,0,0,'Priest - Holy Nova Heal Rank 1'),
(23458,0.3035,0,0,0,'Priest - Holy Nova Heal Rank 2'),
(23459,0.3035,0,0,0,'Priest - Holy Nova Heal Rank 3'),
(24275,0.15,0,0.15,0,'Paladin - Hammer of Wrath'),
(25346,0.2857,0,0,0,'Mage - Arcane Missiles Triggered Spell Rank 8'),
(25742,0.07,0,0.039,0,'Paladin - Seal of Righteousness Dummy Proc'),
(26363,0.33,0,0,0,'Shaman - Lightning Shield Proc Rank 7'),
(26364,0.33,0,0,0,'Shaman - Lightning Shield Proc Rank 1'),
(26365,0.33,0,0,0,'Shaman - Lightning Shield Proc Rank 2'),
(26366,0.33,0,0,0,'Shaman - Lightning Shield Proc Rank 3'),
(26367,0.33,0,0,0,'Shaman - Lightning Shield Proc Rank 4'),
(26369,0.33,0,0,0,'Shaman - Lightning Shield Proc Rank 5'),
(26370,0.33,0,0,0,'Shaman - Lightning Shield Proc Rank 6'),
(26573,0,0.04,0,0.04,'Paladin - Consecration'),
(27803,0.3035,0,0,0,'Priest - Holy Nova Heal Rank 4'),
(27804,0.3035,0,0,0,'Priest - Holy Nova Heal Rank 5'),
(27805,0.3035,0,0,0,'Priest - Holy Nova Heal Rank 6');
/*!40000 ALTER TABLE `spell_bonus_data` ENABLE KEYS */;
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
