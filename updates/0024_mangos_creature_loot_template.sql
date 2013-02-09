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

-- Fix drop chance of squealer's belt (item 4951) as it is a quest drop from
-- NPC 3229 ("Squealer" Thornmantle)
/*!40000 ALTER TABLE `creature_loot_template` DISABLE KEYS */;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`=100 WHERE  `entry`=3229 AND `item`=4951;
/*!40000 ALTER TABLE `creature_loot_template` ENABLE KEYS */;

/*!40014 SET FOREIGN_KEY_CHECKS=1 */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;