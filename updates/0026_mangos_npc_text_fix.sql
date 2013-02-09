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
-- Uses a temporary gossip_menu ID because it is impossible for me (Ghurok) to know
-- the correct one.
INSERT INTO gossip_menu VALUES (50006, 6336, 0, 0);
/*!40000 ALTER TABLE `gossip_menu` ENABLE KEYS */;

/*!40000 ALTER TABLE `creature_template` DISABLE KEYS */;
-- Adds text and changes npcflag to display text for creature 12238 (Zaetar's Spirit)
UPDATE creature_template SET gossip_menu_id=50006, npcflag=3 WHERE entry=12238;
/*!40000 ALTER TABLE `creature_template` ENABLE KEYS */;

/*!40014 SET FOREIGN_KEY_CHECKS=1 */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;