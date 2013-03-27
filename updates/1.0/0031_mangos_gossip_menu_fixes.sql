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
-- Adds missing text to book gameobject 176192 (Catalogue of the Wayward).
INSERT INTO gossip_menu VALUES (3083, 3815, 0, 0);
-- Adds text to object 142715 (Tablet of Theka)
-- Links it to the correct ID in npc_text.
INSERT INTO gossip_menu VALUES (1053, 1653, 0, 0);
/*!40000 ALTER TABLE `gossip_menu` ENABLE KEYS */;

/*!40014 SET FOREIGN_KEY_CHECKS=1 */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;