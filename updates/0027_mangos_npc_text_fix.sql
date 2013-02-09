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

/*!40000 ALTER TABLE `npc_gossip` DISABLE KEYS */;
-- Adds text to creature 11491 (Old Ironbark, guid 138118)
INSERT INTO npc_gossip VALUES (138118, 6694);
/*!40000 ALTER TABLE `npc_gossip` ENABLE KEYS */;

/*!40000 ALTER TABLE `creature_template` DISABLE KEYS */;
-- Adds correct text and changed npcflag to 1 (GOSSIP) for creature 11491 (Old Ironbark).
UPDATE creature_template SET npcflag=1 WHERE entry=12238;
/*!40000 ALTER TABLE `creature_template` ENABLE KEYS */;

/*!40014 SET FOREIGN_KEY_CHECKS=1 */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;