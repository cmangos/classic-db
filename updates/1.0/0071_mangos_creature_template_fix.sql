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

/*!40000 ALTER TABLE `creature_template` DISABLE KEYS */;
-- Adds gossip menu for creature 197 (Marshal McBride). Source TBC-DB
UPDATE `creature_template` SET `gossip_menu_id` = 4048 WHERE `entry` = 197;
/*!40000 ALTER TABLE `creature_template` ENABLE KEYS */;  


/*!40014 SET FOREIGN_KEY_CHECKS=1 */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;