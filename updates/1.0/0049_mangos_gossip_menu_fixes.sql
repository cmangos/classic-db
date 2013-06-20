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
-- Added gossip to creature 1103 (Eldrin)
INSERT INTO gossip_menu VALUES (4261, 5413, 0, 0);
/*!40000 ALTER TABLE `gossip_menu` ENABLE KEYS */;

/*!40000 ALTER TABLE `creature_template` DISABLE KEYS */;
-- Adds the correct gossip_menu id to creature 1103
UPDATE creature_template SET gossip_menu_id=4261 WHERE entry=1103;
-- Adds the correct gossip_menu id to creature 1218 (Herbalist Pomeroy)
UPDATE creature_template SET gossip_menu_id=7691 WHERE entry=1218;
-- Adds the correct gossip_menu id to creature 1299 (Lisbeth Schneider) and change
-- npcflag to display gossip
UPDATE creature_template SET gossip_menu_id=685, npcflag=16389 WHERE entry=1299;
/*!40000 ALTER TABLE `creature_template` ENABLE KEYS */;

/*!40014 SET FOREIGN_KEY_CHECKS=1 */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;