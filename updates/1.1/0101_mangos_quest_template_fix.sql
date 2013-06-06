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

-- Updates level for quest 181 (Look to the Stars) to 30
-- It is currently level 25 while its completion involves killing a creature of level 30
-- Updates min level to 20 like previous quests in quest line.
-- source: http://www.wowhead.com/quest=181
UPDATE `quest_template` SET `MinLevel` = 20, `QuestLevel` = 30 WHERE `entry` = 181;

-- Updates hit points of creature 2462 (Flesh Eating Worm) as they have currently too much health
-- However, sources does not agree on correct value. Some say hp = 1, most say hp = 60
-- The later was chosen as they definitely did have more than 1 HP back in classic
UPDATE `creature_template` SET `minhealth` = 60, `maxhealth` = 60 WHERE `entry` = 2462;


/*!40014 SET FOREIGN_KEY_CHECKS=1 */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;