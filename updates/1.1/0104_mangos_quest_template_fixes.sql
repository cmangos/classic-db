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

-- Fixes druid quests 6129 (Curing the Sick - Horde) and 6124 (Curing the Sick - Alliance)
-- Source: TBC-DB v1.3
UPDATE `quest_template` SET `ReqCreatureOrGOId1` = 12297 WHERE `entry` = 6129;
UPDATE `quest_template` SET `ReqCreatureOrGOId1` = 12299 WHERE `entry` = 6124;

-- Fixes quest 6981 (The Glowing Shard) by adding missing gossip script
-- Source: YTDB
DELETE FROM `dbscripts_on_gossip` WHERE `id` = 21;
INSERT INTO `dbscripts_on_gossip` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(21, 0, 7, 6981, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'quest complete 6981');

-- Fixes quest 5902 and 5904 (A Plague Upon Thee Horde/Alliance) by adding missing gossip script
-- Source: YTDB
-- Adds gossip script spawning the required GO
DELETE FROM `dbscripts_on_gossip` WHERE `id` = 4362;
INSERT INTO `dbscripts_on_gossip` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(4362, 0, 9, 0, 60, 177491, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Respawn Termite Barrel');
-- Updates gossip menu option for GO 177490 (Northridge Lumber Mill Crate)
UPDATE `gossip_menu_option` SET `action_script_id` = 4362, `condition_id` = 605 WHERE `menu_id` = 4362 AND `id` = 0;
-- Adds conditions for these quests 
DELETE FROM `conditions` WHERE `condition_entry` BETWEEN 601 AND 605;
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`) VALUES
(601, 2, 15044, 1),		-- Must have quest item
(602, 9, 5902, 0),		-- Must have quest horde
(603, 9, 5904, 0),		-- Must have quest alliance
(604, -2, 602, 603),	-- Must have one of the two quests above
(605, -1, 601, 604);	-- must have item and one of the quest
-- Spawn gameobject with negative spawn time, waiting for script to respawn it
DELETE FROM `gameobject` WHERE `guid` = 21615;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(21615, 177491, 0, 2449.53, -1662.01, 104.37, 5.48507, 0, 0, 0.38855, -0.921428, -120, 0, 1);

-- Adds start script to quest 74 (The Legend of Stalvan)
UPDATE `quest_template` SET `StartScript` = 74 WHERE `entry` = 74;
-- Spawns creature 2044 (Forlorn Spirit)
DELETE FROM `dbscripts_on_quest_start` WHERE `id` = 74;
INSERT INTO `dbscripts_on_quest_start` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(74, 2, 10, 2044, 300000, 0, 0, 0, 0, 0, 0, 0, -8842.5372, 983.3404, 98.5200, 5.9781, '');

-- Adds start script to quest 753 (A Humble Task)
-- Source: YTDB
UPDATE `quest_template` SET `StartScript` = 753 WHERE `entry` = 753;
-- Adds simple emote script
DELETE FROM `dbscripts_on_quest_start` WHERE `id` = 753;
INSERT INTO `dbscripts_on_quest_start` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(753, 0, 0, 2, 0, 0, 0, 0, 2000000003, 0, 0, 0, 0, 0, 0, 0, '');
-- Adds string associated with script
DELETE FROM `db_script_string` WHERE `entry` = 2000000003;
INSERT INTO `db_script_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`) VALUES
(2000000003, 'Greatmother Hawkwind gestures to the pitcher of water sitting on the edge of the well.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- Adds start script to quest 790 (Sarkoth)
-- Source: YTDB
UPDATE `quest_template` SET `StartScript` = 790 WHERE `entry` = 790;
-- Adds simple emote script
DELETE FROM `dbscripts_on_quest_start` WHERE `id` = 790;
INSERT INTO `dbscripts_on_quest_start` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(790, 1, 0, 0, 0, 0, 0, 0, 2000000002, 0, 0, 0, 0, 0, 0, 0, '');
-- Adds string associated with script
DELETE FROM `db_script_string` WHERE `entry` = 200000002;
INSERT INTO `db_script_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`) VALUES
(2000000002, 'Go swiftly $N. My fate is in your hands.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- Adds start script to quest 947 (Cave Mushrooms)
-- Source: YTDB
UPDATE `quest_template` SET `StartScript` = 947 WHERE `entry` = 947;
-- Adds simple say/emote script
DELETE FROM `dbscripts_on_quest_start` WHERE `id` = 947;
INSERT INTO `dbscripts_on_quest_start` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(947, 1, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''), 
(947, 1, 0, 0, 2, 0, 0, 0, 2000000000, 0, 0, 0, 0, 0, 0, 0, ''), 
(947, 5, 0, 0, 2, 0, 0, 0, 2000000001, 0, 0, 0, 0, 0, 0, 0, '');
-- Adds strings associated with script
DELETE FROM `db_script_string` WHERE `entry` IN (2000000000, 2000000001);
INSERT INTO `db_script_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`) VALUES
(2000000000, 'Thank you, $N. And luck to you.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL), 
(2000000001, 'Cliffspring Falls lies along the mountains to the east and north.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- Adds start script to quest 993 (A Lost Master)
-- Source: YTDB
UPDATE `quest_template` SET `StartScript` = 993 WHERE `entry` = 993;
-- Adds simple say/emote/spell script
DELETE FROM `dbscripts_on_quest_start` WHERE `id` = 993;
INSERT INTO `dbscripts_on_quest_start` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(993, 4, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''), 
(993, 4, 0, 0, 0, 0, 0, 0, 2000000022, 0, 0, 0, 0, 0, 0, 0, ''), 
(993, 1, 0, 2, 0, 0, 0, 0, 2000000023, 0, 0, 0, 0, 0, 0, 0, ''), 
(993, 1, 15, 10403, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, '');
-- Adds strings associated with script
DELETE FROM `db_script_string` WHERE `entry` IN (2000000022, 2000000023);
INSERT INTO `db_script_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`) VALUES
(2000000023, 'Terenthis begins to cast a spell as you take the cloak from him.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL), 
(2000000022, 'Go now, $N. Find Volcor... and remember, the magics protecting you will fail if you interact with anyone, save for talking.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- Adds start script to quest 1221 (Blueleaf Tubers)
-- Source: YTDB
UPDATE `quest_template` SET `StartScript` = 1221 WHERE `entry` = 1221;
-- Adds simple say/emote/move script
DELETE FROM `dbscripts_on_quest_start` WHERE `id` = 1221;
INSERT INTO `dbscripts_on_quest_start` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(1221, 0, 0, 0, 0, 0, 0, 0, 2000000107, 0, 0, 0, 0, 0, 0, 0, ''), 
(1221, 0, 1, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''), 
(1221, 2, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, -929.023, -3696.98, 7.97395, 1.7352, ''), 
(1221, 5, 1, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''), 
(1221, 8, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, -928.778, -3697.25, 7.99705, 6.17741, ''), 
(1221, 9, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, -928.982, -3697.23, 8.06642, 3.08923, '');
-- Adds strings associated with script
DELETE FROM `db_script_string` WHERE `entry` = 2000000107;
INSERT INTO `db_script_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`) VALUES
(2000000107, 'Hey $N! Don\'t forget to grab a crate, a manual and a command stick!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

/*!40014 SET FOREIGN_KEY_CHECKS=1 */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;