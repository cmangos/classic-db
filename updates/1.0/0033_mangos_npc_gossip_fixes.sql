-- ************************************************************
-- Sequel Pro SQL dump
-- Version 3408
--
-- http://www.sequelpro.com/
-- http://code.google.com/p/sequel-pro/
--
-- Host: 127.0.0.1 (MySQL 5.5.17)
-- Database: mangos
-- ************************************************************

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET FOREIGN_KEY_CHECKS=0 */;

/*!40000 ALTER TABLE `gossip_menu` DISABLE KEYS */;
-- Adds missing text to creature 13278 (Duke Hydraxis, guid 36098)
INSERT INTO npc_gossip VALUES (36098, 6108);
-- Adds correct text to creature 10304 (Aurora Skycaller, guid 53739)
INSERT INTO npc_gossip VALUES (53739, 5795);
-- Added text to creature 2858 (Gringer <Wind Rider Master>, guid 641)
INSERT INTO npc_gossip VALUES (641, 5454);
/*!40000 ALTER TABLE `gossip_menu` ENABLE KEYS */;

/*!40014 SET FOREIGN_KEY_CHECKS=1 */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;