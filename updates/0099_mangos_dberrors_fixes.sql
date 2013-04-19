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

-- Fixes various DB errors after previous revisions

-- Removes creature movement for NPC 18731 (Ambassador Hellmaw)
-- This is a TBC creature
DELETE FROM `creature_movement_template` WHERE `entry` = 18731;

-- Removes spell target position for spell 25649 (Translocate)
-- Not existing in DBC, was probably added in TBC
DELETE FROM `spell_target_position` WHERE `id` = 25649;

-- Removes script for GO 181956 (Gilded Brazier)
-- This object was added in TBC
DELETE FROM `dbscripts_on_go_template_use` WHERE `id` = 181956;

-- Updates spawn data for creature 15590 (Ossirian Crystal Trigger) from template
UPDATE `creature` SET `spawndist` = 0, `curhealth` = 4120 WHERE `id` = 15590;

-- Updates spawn data for creature 14494 (Eris Havenfire) from template
UPDATE `creature` SET `curhealth` = 9298 WHERE `id` = 14494;

-- Removes no longer used db_script_strings, replaced by SD2 scripts
DELETE FROM `db_script_string` WHERE `entry` IN (2000000016, 2000005313);

-- Reapplies db script from update 0067 erroneously removed by revision 0068 and thus correctly applies 0068
-- Adds quest end script for quest 502 (Elixir of Pain part. 2)
-- Where dog Stanley turns to hostile NPC 2275
DELETE FROM `dbscripts_on_quest_end` WHERE `id` = 502;
INSERT INTO `dbscripts_on_quest_end` VALUES
(502, 2, 0, 2, 0, 0, 0, 4, 2000000008, 0, 0, 0, 0, 0, 0, 0, 'Sniff and drink elixir'),	-- Beginning emotes
(502, 10, 18, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, ''),								-- Self despawn
(502, 10, 10, 2275, 300000, 0, 0, 0, 0, 0, 0, 0, -353.534, 21.4088, 54.6594, 3.68102, 'Enraged Stanley appears'),
(502, 11, 22, 44, 1, 2275, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');							-- Turns hostile
-- Adds quest end script for quest 411 (The Prodigal Lich Returns)
-- Where NPC Bethor summons image of Gunther (NPC 5666)
-- Source: TBC-DB v1.3 (incomplete in TBC-DB)
DELETE FROM `dbscripts_on_quest_end` WHERE `id` = 411;
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

/*!40014 SET FOREIGN_KEY_CHECKS=1 */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;