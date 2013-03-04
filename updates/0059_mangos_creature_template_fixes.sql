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
-- Updates max level for creature 3989 (Venture Co. Loger) min=18, max=16 instead of max=19 (source TBC-DB)
-- Updates max level for creature 14302 (Chromatic Drakonid) min=60, max=6 instead of max=60 (obviously a typo)
UPDATE creature_template SET maxlevel=19 WHERE entry=3989;
UPDATE creature_template SET maxlevel=60 WHERE entry=14302;
/*!40000 ALTER TABLE `creature_template` ENABLE KEYS */;

/*!40014 SET FOREIGN_KEY_CHECKS=1 */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;