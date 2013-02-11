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

/*!40000 ALTER TABLE `game_graveyard_zone` DISABLE KEYS */;
-- Fixes graveyard for horde in Dun Morogh and Ironforge
-- Horde will now spawn at Kharanos instead of Wetlands when they die in Dun Morogh and Ironforge.
UPDATE game_graveyard_zone SET faction=0 WHERE id=100 AND ghost_zone=1;
/*!40000 ALTER TABLE `game_graveyard_zone` ENABLE KEYS */;

/*!40014 SET FOREIGN_KEY_CHECKS=1 */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;