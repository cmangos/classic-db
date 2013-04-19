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

-- Fixes warlock quest 1716 (Devourer of Souls)
-- The quest was only available to gnomes (64) and humans (1) back in Classic
-- Quest 1717 (Gakin's Summons) is not a prerequisite of quest 1716
-- it is only an alternate startup quest for warlocks in Ironforge (mainly gnomes warlocks)
-- source: http://www.wowwiki.com/Warlock_quests#Summoning_Quests
UPDATE `quest_template` SET `RequiredRaces` = 65, `PrevQuestId` = 0 WHERE `entry` = 1716;


/*!40014 SET FOREIGN_KEY_CHECKS=1 */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;