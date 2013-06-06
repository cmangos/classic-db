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
-- Removes complete script for quest 986 (A Lost Master) as there was none. Script with Grimclaw
-- is already done at completion of quest 985 (How Big A Threat) where it must take place
UPDATE `quest_template` SET `CompleteScript` = 0 WHERE `entry` = 986;
-- Removes outdated script for quest 945 (Therylune Escape) will be handled by SD2
UPDATE `quest_template` SET `StartScript` = 0 WHERE `entry` = 945;
/*!40000 ALTER TABLE `quest_template` ENABLE KEYS */;

/*!40000 ALTER TABLE `dbscripts_on_quest_end` DISABLE KEYS */;
-- Removes script 993 that is wrong (former placeholder?)
DELETE FROM `dbscripts_on_quest_end` WHERE `id` = 993;
/*!40000 ALTER TABLE `dbscripts_on_quest_end` ENABLE KEYS */;

/*!40000 ALTER TABLE `dbscripts_on_quest_start` DISABLE KEYS */;
-- Removes outdated script for quest 945 (Therylune Escape) will be handled by SD2
DELETE FROM `dbscripts_on_quest_start` WHERE `id` = 945;
/*!40000 ALTER TABLE `dbscripts_on_quest_start` ENABLE KEYS */;

/*!40000 ALTER TABLE `db_script_string` DISABLE KEYS */;
-- Removes string previously used by above scripts
DELETE FROM `db_script_string` WHERE `entry` BETWEEN 2000000050 AND 2000000054;
DELETE FROM `db_script_string` WHERE `entry` BETWEEN 2000000017 AND 2000000018;
/*!40000 ALTER TABLE `db_script_string` ENABLE KEYS */;


/*!40014 SET FOREIGN_KEY_CHECKS=1 */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;