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

-- Backported data, scripts and movement for quest 1064 (Forsaken Aid) from TBC-DB v1.3

/*!40000 ALTER TABLE `dbscripts_on_creature_movement` DISABLE KEYS */;
-- DB script for creature 4068 (Serpent Messenger)
DELETE FROM `dbscripts_on_creature_movement` WHERE `id`=406801;
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
 (406801, 8, 0, 2, 10, 0, 3419, 4, 2000000095, 0, 0, 0, 0, 0, 0, 0, 'Serpent Messenger: Force NPC to text emote'),
 (406801, 2, 0, 2, 0, 0, 0, 0, 2000000094, 0, 0, 0, 0, 0, 0, 0, 'Serpent Messenger - text emote');
/*!40000 ALTER TABLE `dbscripts_on_creature_movement` ENABLE KEYS */;

/*!40000 ALTER TABLE `dbscripts_on_quest_start` DISABLE KEYS */;
-- DB script for quest start
DELETE FROM `dbscripts_on_quest_start` WHERE `id` = 1064;
INSERT INTO `dbscripts_on_quest_start` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
 (1064, 2, 0, 2, 0, 0, 0, 0, 2000000092, 0, 0, 0, 0, 0, 0, 0, ''),
 (1064, 4, 10, 4068, 433000, 0, 0, 0, 0, 0, 0, 0, -1067.22, -213.737, 160.473, 5.25037, 'Summon Serpent Messenger'),
 (1064, 8, 0, 0, 0, 0, 0, 0, 2000000093, 0, 0, 0, 0, 0, 0, 0, ''),
 (1064, 8, 1, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
/*!40000 ALTER TABLE `dbscripts_on_quest_start` ENABLE KEYS */;


/*!40000 ALTER TABLE `creature_movement_template` DISABLE KEYS */;
-- Movement waypoints in Thunder Bluff for creature 4068 (Serpent Messenger) 
DELETE FROM `creature_movement_template` WHERE `entry` = 4068;
INSERT INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES
 (4068, 1, -1067.22, -213.737, 160.473, 5000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.25037, 0, 0),
 (4068, 2, -1062.56, -221.981, 160.294, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.24127, 0, 0),
 (4068, 3, -1054.61, -221.248, 161.894, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6.14101, 0, 0),
 (4068, 4, -1054.61, -221.248, 161.894, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.03232, 0, 0),
 (4068, 5, -1037.05, -191.12, 158.949, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.35008, 0, 0),
 (4068, 6, -1053.12, -173.969, 163.214, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.49931, 0, 0),
 (4068, 7, -1064.46, -140.953, 161.368, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.91164, 0, 0),
 (4068, 8, -1079.25, -97.1617, 156.371, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.84488, 0, 0),
 (4068, 9, -1085.39, -64.6974, 164.416, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.55429, 0, 0),
 (4068, 10, -1083.91, -26.7695, 159.369, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.52287, 0, 0),
 (4068, 11, -1084.44, -9.29896, 158.034, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.38288, 0, 0),
 (4068, 12, -1109.66, 7.02863, 154.732, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.15904, 0, 0),
 (4068, 13, -1132.07, 31.5715, 158.157, 3000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.24798, 0, 0),
 (4068, 14, -1129.02, 47.1316, 154.19, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.784595, 0, 0),
 (4068, 15, -1095.17, 63.5461, 150.752, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.812084, 0, 0),
 (4068, 16, -1086.83, 113.827, 144.557, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.47645, 0, 0),
 (4068, 17, -1113.2, 129.364, 140.268, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.88486, 0, 0),
 (4068, 18, -1146.35, 119.028, 141.776, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.5014, 0, 0),
 (4068, 19, -1169.85, 118.638, 141.101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.04979, 0, 0),
 (4068, 20, -1206.75, 117.618, 139.861, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.53928, 0, 0),
 (4068, 21, -1211.53, 129.623, 135.559, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.585213, 0, 0),
 (4068, 22, -1192.52, 144.921, 136.995, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.699096, 0, 0),
 (4068, 23, -1175.37, 157.22, 146.484, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.530235, 0, 0),
 (4068, 24, -1155.67, 169.875, 146.074, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.553796, 0, 0),
 (4068, 25, -1127.05, 179.696, 131.79, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.318177, 0, 0),
 (4068, 26, -1096.04, 189.663, 118.055, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.312577, 0, 0),
 (4068, 27, -1061.46, 191.502, 109.917, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.3493, 0, 0),
 (4068, 28, -1056.64, 215.227, 113.473, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.03671, 0, 0),
 (4068, 29, -1046.91, 223.356, 114.831, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.553694, 0, 0),
 (4068, 30, -1035.35, 218.46, 112.371, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.64308, 0, 0),
 (4068, 31, -1027.93, 217.483, 114.236, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.514424, 0, 0),
 (4068, 32, -1023.41, 229.152, 108.92, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.07991, 0, 0),
 (4068, 33, -1016.34, 236.136, 109.243, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.962101, 0, 0),
 (4068, 34, -1013.08, 246.142, 108.77, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.33124, 0, 0),
 (4068, 35, -1006.87, 255.833, 113.284, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.966027, 0, 0),
 (4068, 36, -997.047, 275.161, 112.343, 20000, 406801, 0, 0, 0, 0, 0, 0, 0, 0, 1.13882, 0, 0);
/*!40000 ALTER TABLE `creature_movement_template` ENABLE KEYS */;

/*!40000 ALTER TABLE `creature_template` DISABLE KEYS */;
-- Allows creature 4068 (Serpent Messenger) to follow waypoint (MovementType=2)
UPDATE `creature_template` SET `MovementType` = 2 WHERE `entry` = 4068;
/*!40000 ALTER TABLE `creature_template` ENABLE KEYS */;

/*!40000 ALTER TABLE `db_script_string` DISABLE KEYS */;
-- Missing text string (two were already present in classic DB)
DELETE from `db_script_string` WHERE `entry` IN (2000000092, 2000000093, 2000000094, 2000000095);
INSERT INTO `db_script_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`) VALUES
 (2000000092, '%s summons a messenger...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
 (2000000093, 'Go, my servant. Send word of Stonetalon to Apothecary Zamah.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
 (2000000094, '%s gives message to Apothecary Zamah.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
 (2000000095, 'Apothecary Zamah smiles.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE `db_script_string` ENABLE KEYS */;
 
/*!40000 ALTER TABLE `quest_template` DISABLE KEYS */;
-- Adds the created start script above to the quest
UPDATE `quest_template` SET `StartScript` = 1064 WHERE `entry` = 1064;
/*!40000 ALTER TABLE `quest_template` ENABLE KEYS */;

/*!40014 SET FOREIGN_KEY_CHECKS=1 */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;