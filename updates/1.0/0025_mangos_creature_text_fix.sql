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
-- Adds text to creature 5494 (Catherine Leland)
-- Uses a temporary gossip_menu id as it is impossible for me (Ghurok)
-- to find the correct one. The npc_text table has three duplicate (except id) rows
-- with the same values in the database so I (Ghurok) chose one of them at random.
INSERT INTO gossip_menu VALUES (50005, 1235, 0, 0);
/*!40000 ALTER TABLE `gossip_menu` ENABLE KEYS */;

/*!40000 ALTER TABLE `creature_template` DISABLE KEYS */;
-- Linking creature 5494 (Catherine Leland) to the gossip_menu
-- created above.
UPDATE creature_template SET gossip_menu_id=50005 WHERE entry=5494;
/*!40000 ALTER TABLE `creature_template` ENABLE KEYS */;

/*!40014 SET FOREIGN_KEY_CHECKS=1 */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;