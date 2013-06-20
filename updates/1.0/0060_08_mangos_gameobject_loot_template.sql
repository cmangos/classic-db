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
ALTER TABLE db_version CHANGE COLUMN condition_update_07 condition_update_08 bit;

/*!40000 ALTER TABLE `gameobject_loot_template` DISABLE KEYS */;
-- Update gameobject_loot_template table to add correct condition_id based on previous SQL update file
-- conditions and condition_id converted by evil.at.wow, based on TBC-DB by X-Savior

SET @ENTRY := 1;
-- -------------------------------------------
-- Set condition id for gameobject_loot_template
-- -------------------------------------------

UPDATE gameobject_loot_template SET condition_id=@ENTRY+196 WHERE entry=9597 AND item=11513;
UPDATE gameobject_loot_template SET condition_id=@ENTRY+196 WHERE entry=13948 AND item=11514;
UPDATE gameobject_loot_template SET condition_id=@ENTRY+196 WHERE entry=6313 AND item=11514;
UPDATE gameobject_loot_template SET condition_id=@ENTRY+196 WHERE entry=6150 AND item=11514;
UPDATE gameobject_loot_template SET condition_id=@ENTRY+196 WHERE entry=17939 AND item=11513;
UPDATE gameobject_loot_template SET condition_id=@ENTRY+196 WHERE entry=13966 AND item=11514;
UPDATE gameobject_loot_template SET condition_id=@ENTRY+196 WHERE entry=13971 AND item=11514;
UPDATE gameobject_loot_template SET condition_id=@ENTRY+196 WHERE entry=13970 AND item=11514;
UPDATE gameobject_loot_template SET condition_id=@ENTRY+196 WHERE entry=13960 AND item=11513;
UPDATE gameobject_loot_template SET condition_id=@ENTRY+196 WHERE entry=13961 AND item=11513;
UPDATE gameobject_loot_template SET condition_id=@ENTRY+196 WHERE entry=17938 AND item=11513;
UPDATE gameobject_loot_template SET condition_id=@ENTRY+196 WHERE entry=1506 AND item=11513;
UPDATE gameobject_loot_template SET condition_id=@ENTRY+196 WHERE entry=5045 AND item=11513;
UPDATE gameobject_loot_template SET condition_id=@ENTRY+196 WHERE entry=1742 AND item=11513;
UPDATE gameobject_loot_template SET condition_id=@ENTRY+238 WHERE entry=13576 AND item=12766; -- entry in TBC is 2774 instead of 13576
UPDATE gameobject_loot_template SET condition_id=@ENTRY+239 WHERE entry=13577 AND item=12768; -- entry in TBC is 2774 instead of 13577
UPDATE gameobject_loot_template SET condition_id=@ENTRY+240 WHERE entry=17203 AND item=19726;
UPDATE gameobject_loot_template SET condition_id=@ENTRY+240 WHERE entry=17201 AND item=19726;
UPDATE gameobject_loot_template SET condition_id=@ENTRY+240 WHERE entry=17200 AND item=19726;
UPDATE gameobject_loot_template SET condition_id=@ENTRY+240 WHERE entry=17204 AND item=19726;
UPDATE gameobject_loot_template SET condition_id=@ENTRY+240 WHERE entry=17202 AND item=19726;
UPDATE gameobject_loot_template SET condition_id=@ENTRY+2 WHERE entry=8409 AND item=9370;
UPDATE gameobject_loot_template SET condition_id=@ENTRY+2 WHERE entry=2483 AND item=4881;
UPDATE gameobject_loot_template SET condition_id=@ENTRY+2 WHERE entry=2494 AND item=4926;
UPDATE gameobject_loot_template SET condition_id=@ENTRY+2 WHERE entry=2420 AND item=4851;
UPDATE gameobject_loot_template SET condition_id=@ENTRY+3 WHERE entry=1570 AND item=3706;
UPDATE gameobject_loot_template SET condition_id=@ENTRY+3 WHERE entry=3597 AND item=6172;
UPDATE gameobject_loot_template SET condition_id=@ENTRY+3 WHERE entry=3214 AND item=5791;
UPDATE gameobject_loot_template SET condition_id=@ENTRY+3 WHERE entry=2117 AND item=4433;
/*!40000 ALTER TABLE `gameobject_loot_template` ENABLE KEYS */;

/*!40014 SET FOREIGN_KEY_CHECKS=1 */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;