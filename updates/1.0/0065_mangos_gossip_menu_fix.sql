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

/*!40000 ALTER TABLE `conditions` DISABLE KEYS */;
-- Creates condition specifically for druids with Aquatic Pendant quest (Water form)
-- Conditions 10 & 11 : Has quest (Alliance or Horde version) but not complete)
INSERT INTO conditions VALUES (357, -2, 10, 11);
/*!40000 ALTER TABLE `conditions` ENABLE KEYS */;

/*!40000 ALTER TABLE `gossip_menu_option` DISABLE KEYS */;
-- Adds the previously created condition ID to gossip menu options related to quests 30 and 272
UPDATE gossip_menu_option SET condition_id=357 WHERE menu_id IN (4041, 4042) AND id=1;
/*!40000 ALTER TABLE `gossip_menu_option` ENABLE KEYS */;

/*!40014 SET FOREIGN_KEY_CHECKS=1 */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;