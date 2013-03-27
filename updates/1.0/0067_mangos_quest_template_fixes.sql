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

/*!40000 ALTER TABLE `db_script_string` DISABLE KEYS */;
-- Adds emote text for quest end script quest 502 (Elixir of Pain part. 2)
DELETE FROM db_script_string WHERE entry IN (2000000008);
INSERT INTO `db_script_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`) VALUES
(2000000008, '%s sniffs the elixir then eagerly digs in!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE `db_script_string` ENABLE KEYS */;

/*!40000 ALTER TABLE `dbscripts_on_quest_end` DISABLE KEYS */;
-- Adds quest end script for quest 502 (Elixir of Pain part. 2)
-- Where dog Stanley turns to hostile NPC 2275
DELETE FROM `dbscripts_on_quest_end` WHERE id=502;
INSERT INTO `dbscripts_on_quest_end` VALUES
(502, 2, 0, 2, 0, 0, 0, 4, 2000000008, 0, 0, 0, 0, 0, 0, 0, 'Sniff and drink elixir'),	-- Beginning emotes
(502, 10, 18, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, ''),								-- Self despawn
(502, 10, 10, 2275, 300000, 0, 0, 0, 0, 0, 0, 0, -353.534, 21.4088, 54.6594, 3.68102, 'Enraged Stanley appears'),
(502, 11, 22, 44, 1, 2275, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');							-- Turns hostile
/*!40000 ALTER TABLE `dbscripts_on_quest_end` ENABLE KEYS */;

/*!40000 ALTER TABLE `quest_template` DISABLE KEYS */;
-- Adds quest end script for quest 502 (Elixir of Pain part. 2)
UPDATE `quest_template` SET `CompleteScript`=502 WHERE `entry`=502;
/*!40000 ALTER TABLE `quest_template` ENABLE KEYS */;

/*!40014 SET FOREIGN_KEY_CHECKS=1 */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;