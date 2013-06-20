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
ALTER TABLE db_version CHANGE COLUMN condition_update_06 condition_update_07 bit;

/*!40000 ALTER TABLE `skinning_loot_template` DISABLE KEYS */;
-- Update skinning_loot_template table to add correct condition_id based on previous SQL update file
-- conditions and condition_id converted by evil.at.wow, based on TBC-DB by X-Savior

SET @ENTRY := 1;
-- -------------------------------------------
-- Set condition id for skinning_loot_template
-- -------------------------------------------

UPDATE skinning_loot_template SET condition_id=@ENTRY+196 WHERE entry=7125 AND item=11512;
UPDATE skinning_loot_template SET condition_id=@ENTRY+196 WHERE entry=7126 AND item=11512;
UPDATE skinning_loot_template SET condition_id=@ENTRY+196 WHERE entry=8956 AND item=11512;
UPDATE skinning_loot_template SET condition_id=@ENTRY+196 WHERE entry=8957 AND item=11512;
UPDATE skinning_loot_template SET condition_id=@ENTRY+196 WHERE entry=8958 AND item=11512;
UPDATE skinning_loot_template SET condition_id=@ENTRY+196 WHERE entry=8959 AND item=11512;
UPDATE skinning_loot_template SET condition_id=@ENTRY+196 WHERE entry=8960 AND item=11512;
UPDATE skinning_loot_template SET condition_id=@ENTRY+196 WHERE entry=8961 AND item=11512;
UPDATE skinning_loot_template SET condition_id=@ENTRY+196 WHERE entry=10147 AND item=11512;
/*!40000 ALTER TABLE `skinning_loot_template` ENABLE KEYS */;

/*!40014 SET FOREIGN_KEY_CHECKS=1 */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;