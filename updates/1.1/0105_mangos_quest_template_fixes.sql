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

-- Removes end script for quest 67 (Legend of Stalvan) as it should occur
-- at the start of next quest in line
DELETE FROM `dbscripts_on_quest_end` WHERE `id` = 67;
UPDATE `quest_template` SET `CompleteScript` = 0 WHERE `entry` = 67;
-- Moves script to next quest in line : 68 (Legend of Stalvan)
-- Extends script to force spawned creature 2044 (Forlorn Spirit) to attack player
UPDATE `quest_template` SET `StartScript` = 68 WHERE `entry` = 68;
DELETE FROM `dbscripts_on_quest_start` WHERE `id` = 68;
INSERT INTO `dbscripts_on_quest_start` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(68, 0, 10, 2044, 300000, 0, 0, 0, 0, 0, 0, 0, -10953.3, 1568.47, 46.978, 3.392, 'spawns Forlorn Spirit'),
(68, 3, 26, 0, 0, 2044, 25, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'forces Forlorn Spirit to attack player');

DELETE FROM `dbscripts_on_quest_start` WHERE `id` = 74;
-- Extends script to force spawned creature 2044 (Forlorn Spirit) to attack player
INSERT INTO `dbscripts_on_quest_start` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(74, 0, 10, 2044, 300000, 0, 0, 0, 0, 0, 0, 0, -8842.5372, 983.3404, 98.5200, 5.9781, 'spawns Forlorn Spirit'),
(74, 3, 26, 0, 0, 2044, 25, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'forces Forlorn Spirit to attack player');

/*!40014 SET FOREIGN_KEY_CHECKS=1 */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;