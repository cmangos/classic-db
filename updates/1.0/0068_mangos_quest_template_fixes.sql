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
-- Adds texts for quest end script quest 411 (The Prodigal Lich Returns)
-- Source: TBC-DB v1.3
DELETE FROM db_script_string WHERE entry IN (2000000004, 2000000005, 2000000006, 2000000007);
INSERT INTO `db_script_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`) VALUES
(2000000004,'It has been a long time, Bethor, my friend.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(2000000005,'When time permits, we must speak at length.  For we have much to discuss.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(2000000006,'And thank you, $N.  Without your aid I may never have found my way to the Forsaken.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(2000000007,'Farewell, my friend.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `db_script_string` ENABLE KEYS */;

/*!40000 ALTER TABLE `dbscripts_on_quest_end` DISABLE KEYS */;
-- Adds quest end script for quest 411 (The Prodigal Lich Returns)
-- Where NPC Bethor summons image of Gunther (NPC 5666)
-- Source: TBC-DB v1.3 (incomplete in TBC-DB)
DELETE FROM `dbscripts_on_quest_end` WHERE id=502;
INSERT INTO `dbscripts_on_quest_end` VALUES
(411, 2, 15, 7673, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 'Bethor uses Nether gem'),
(411, 7, 10, 5666, 21000, 0, 0, 0, 0, 0, 0, 0, 1766.82, 62.3951, -46.238, 1.8381, 'Summon Gunther'),
(411, 12, 0, 0, 0, 5666, 10, 0, 2000000004, 0, 0, 0, 0, 0, 0, 0, 'Gunther says'),			-- It has been a long...
(411, 12, 1, 1, 0, 5666, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(411, 17, 0, 0, 0, 0, 0, 0, 2000000005, 0, 0, 0, 0, 0, 0, 0, 'Bethor says'),				-- When time permits...
(411, 17, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(411, 22, 0, 0, 0, 5666, 10, 0, 2000000006, 0, 0, 0, 0, 0, 0, 0, 'Gunther says'),			-- And thank you...
(411, 22, 1, 2, 0, 5666, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(411, 28, 0, 0, 0, 0, 0, 0, 2000000007, 0, 0, 0, 0, 0, 0 , 0, 'Gunther disappears');		-- Farewell my friend...
/*!40000 ALTER TABLE `dbscripts_on_quest_end` ENABLE KEYS */;

/*!40000 ALTER TABLE `quest_template` DISABLE KEYS */;
-- Adds quest end script for quest 411 (The Prodigal Lich Returns)
UPDATE `quest_template` SET `CompleteScript`=411 WHERE entry=411;
/*!40000 ALTER TABLE `quest_template` ENABLE KEYS */;

/*!40014 SET FOREIGN_KEY_CHECKS=1 */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;