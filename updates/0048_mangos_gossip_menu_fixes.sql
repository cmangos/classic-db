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
-- Adds gossip_menu to creature 14991 (League of Arathor Emissary)
-- The condition_id is determined on the basis of AUTO_INCREMENT value
-- for conditions table as of revision [0047] : value is 253
INSERT INTO gossip_menu VALUES (6504, 7699, 0, 253);
/*!40000 ALTER TABLE `gossip_menu` ENABLE KEYS */;

/*!40000 ALTER TABLE `conditions` DISABLE KEYS */;
-- Creates the condition entry for the previously added gossip_menu
-- Displays correct gossip for players under Level 20.
INSERT INTO conditions VALUES (253, 15, 19, 2);
/*!40000 ALTER TABLE `conditions` ENABLE KEYS */;

/*!40000 ALTER TABLE `creature_template` DISABLE KEYS */;
-- Adds the correct gossip_menu id to creature 14991 and increments npcflag to display gossip
-- npcflag_GOSSIP = 1
UPDATE creature_template SET gossip_menu_id=6504, npcflag=1048577 WHERE entry=14991;
/*!40000 ALTER TABLE `creature_template` ENABLE KEYS */;

/*!40014 SET FOREIGN_KEY_CHECKS=1 */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;