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

/*!40000 ALTER TABLE `quest_template` DISABLE KEYS */;
-- Fixes Minimum Level for a quest chain Goblin Sponsorship (1183), The Eighteenth Pilot (1186), Razzeric's
-- Tweaking (1187), Safety First (1188), Safety First (1189)
UPDATE quest_template SET MinLevel=29 WHERE entry IN (1183, 1186, 1187, 1188, 1189);
/*!40000 ALTER TABLE `quest_template` ENABLE KEYS */;

/*!40014 SET FOREIGN_KEY_CHECKS=1 */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;