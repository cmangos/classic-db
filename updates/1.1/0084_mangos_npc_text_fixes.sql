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

/*!40000 ALTER TABLE `npc_text` DISABLE KEYS */;
-- Updates NPC texts to set language to alliance common (7) and probability of displaying said texts to 100%
-- This mostly a fix to have proper SQL content after [0081]
UPDATE `npc_text` SET `prob0` = 1, `lang0` = 7 WHERE `id` IN (10753, 10763, 10764, 10765);
/*!40000 ALTER TABLE `npc_text` ENABLE KEYS */;

/*!40014 SET FOREIGN_KEY_CHECKS=1 */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;