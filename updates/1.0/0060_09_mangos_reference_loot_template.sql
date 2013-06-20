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

-- We still keep track of the update progress with a temporary column in db_version table
ALTER TABLE db_version CHANGE COLUMN condition_update_08 condition_update_09 bit;

/*!40000 ALTER TABLE `reference_loot_template` DISABLE KEYS */;
-- Update reference_loot_template table to add correct condition_id based on previous SQL update file
-- conditions and condition_id converted by evil.at.wow, based on TBC-DB by X-Savior

SET @ENTRY := 1;
-- -------------------------------------------
-- Set condition id for reference_loot_template
-- -------------------------------------------

UPDATE reference_loot_template SET condition_id=@ENTRY+196 WHERE entry=12010 AND item=11514;
UPDATE reference_loot_template SET condition_id=@ENTRY+196 WHERE entry=12012 AND item=11514;
UPDATE reference_loot_template SET condition_id=@ENTRY+196 WHERE entry=12013 AND item=11514;
UPDATE reference_loot_template SET condition_id=@ENTRY+196 WHERE entry=12014 AND item=11514;

-- Update condition_id for the two classic DB only entries that have conditions
UPDATE reference_loot_template SET condition_id=@ENTRY+321 WHERE entry=13755 AND item=13755;
UPDATE reference_loot_template SET condition_id=@ENTRY+322 WHERE entry=13755 AND item=13756;
/*!40000 ALTER TABLE `reference_loot_template` ENABLE KEYS */;

/*!40014 SET FOREIGN_KEY_CHECKS=1 */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;