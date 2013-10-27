/* Spawn Fizzles creature (1419)
   Source: The data is taken from UDB and http://www.wowpedia.org/File:Charys_Yserian.jpg?c=1 (you can see Fizzles, post date is 2006)
*/
DELETE FROM `creature` WHERE `guid` = 90184;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(90184, 1419, 0, 0, 0, -8994.19, 947.069, 118.348, 4.29351, 180, 0, 0, 8, 0, 0, 0);
-- Updated health in template (source: UDB)
UPDATE `creature_template` SET `minhealth` = 8, `maxhealth` = 8 WHERE `entry` = 1419;

-- Add quest start script to Vyletongue Corruption (7029 & 7041)
UPDATE `quest_template` SET `StartScript` = 7029 WHERE `StartScript` = 7029;
UPDATE `quest_template` SET `StartScript` = 7041 WHERE `StartScript` = 7041;

DELETE FROM `dbscripts_on_quest_start` WHERE `id` IN (7029, 7041);
INSERT INTO `dbscripts_on_quest_start` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(7029, 0, 0, 0, 0, 0, 0, 0, 2000005465, 0, 0, 0, 0, 0, 0, 0, 'Vark Battlescar - Talk'),
(7041, 0, 0, 0, 0, 0, 0, 0, 2000005465, 0, 0, 0, 0, 0, 0, 0, 'Talendria - Talk');

DELETE FROM `db_script_string` WHERE `entry` = 2000005465;
INSERT INTO `db_script_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) VALUES
(2000005465, '$N, please take a look at the sample of the Vylestem vine that I took from the caverns, so that you know what to look for...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL);


-- Add class trainer Points of Interest to Bluffwatcher (3084) gossip options.
UPDATE `gossip_menu_option` SET `action_poi_id`=316 WHERE `menu_id`=740 AND `id`=0;
UPDATE `gossip_menu_option` SET `action_poi_id`=313 WHERE `menu_id`=740 AND `id`=1;
UPDATE `gossip_menu_option` SET `action_poi_id`=315 WHERE `menu_id`=740 AND `id`=2;
UPDATE `gossip_menu_option` SET `action_poi_id`=315 WHERE `menu_id`=740 AND `id`=3;
UPDATE `gossip_menu_option` SET `action_poi_id`=314 WHERE `menu_id`=740 AND `id`=4;
UPDATE `gossip_menu_option` SET `action_poi_id`=313 WHERE `menu_id`=740 AND `id`=5;


-- Add pathing to creature Seeker Thompson (14404) in Undercity.
UPDATE `creature` SET `position_x`=1727, `position_y`=203.614, `position_z`=-61.62, `orientation`=1.30443, `MovementType`=2 WHERE `id`=14404;
UPDATE `creature_template` SET `MovementType` = 2 WHERE `entry` = 14404;

DELETE FROM `creature_movement_template` WHERE `entry` = 14404;
INSERT INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES
(14404, 1, 1732.3, 222.523, -62.1776, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.3006, 0, 0),
(14404, 2, 1731.57, 233.338, -62.1776, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.63832, 0, 0),
(14404, 3, 1723.39, 239.127, -62.1776, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.52582, 0, 0),
(14404, 4, 1677.05, 240.163, -62.1776, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.1188, 0, 0),
(14404, 5, 1665.3, 249.331, -62.1776, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.4787, 0, 0),
(14404, 6, 1663.02, 266.851, -62.1776, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.68937, 0, 0),
(14404, 7, 1657.06, 279.867, -62.1776, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.99961, 0, 0),
(14404, 8, 1651.19, 287.107, -62.1805, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.26271, 0, 0),
(14404, 9, 1643.75, 287.384, -62.1834, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.19341, 0, 0),
(14404, 10, 1625.17, 269.373, -60.6917, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.92383, 0, 0),
(14404, 11, 1619.45, 263.685, -58.8606, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.92383, 0, 0),
(14404, 12, 1612.25, 256.534, -61.9081, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.92383, 0, 0),
(14404, 13, 1610.43, 254.719, -62.0773, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.92383, 0, 0),
(14404, 14, 1605.25, 252.56, -62.0936, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.5272, 0, 0),
(14404, 15, 1586.61, 252.471, -62.0946, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.14629, 0, 0),
(14404, 16, 1582.39, 248.038, -62.079, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.95132, 0, 0),
(14404, 17, 1582.81, 227.101, -62.079, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.73671, 0, 0),
(14404, 18, 1584.94, 223.331, -62.1522, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.23544, 0, 0),
(14404, 19, 1591.79, 220.867, -57.1859, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.96193, 0, 0),
(14404, 20, 1599.01, 220.875, -57.1616, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.000752, 0, 0),
(14404, 21, 1607.25, 223.58, -62.1374, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.346328, 0, 0),
(14404, 22, 1611.69, 223.622, -61.9065, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.004679, 0, 0),
(14404, 23, 1617.71, 217.89, -59.0818, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.49069, 0, 0),
(14404, 24, 1624.78, 210.724, -60.6919, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.49069, 0, 0),
(14404, 25, 1642.25, 193.005, -62.1838, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.49069, 0, 0),
(14404, 26, 1650.23, 193.472, -62.1814, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.059658, 0, 0),
(14404, 27, 1662.77, 214.051, -62.1787, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.0257, 0, 0),
(14404, 28, 1663.87, 229.842, -62.1787, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.52443, 0, 0),
(14404, 29, 1671.56, 235.312, -62.1787, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.61729, 0, 0),
(14404, 30, 1681.28, 239.637, -62.1787, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.405233, 0, 0),
(14404, 31, 1723.1, 238.522, -62.1787, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6.25645, 0, 0),
(14404, 32, 1729.79, 228.355, -62.1787, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.29434, 0, 0),
(14404, 33, 1731.34, 217.821, -62.1787, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.85845, 0, 0),
(14404, 34, 1724.98, 195.701, -62.1671, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.43041, 0, 0),
(14404, 35, 1713.35, 179.375, -60.7483, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.09269, 0, 0),
(14404, 36, 1698.91, 182.183, -62.1728, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.94208, 0, 0),
(14404, 37, 1692.82, 179.199, -62.1728, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.59789, 0, 0),
(14404, 38, 1677.57, 161.509, -62.1572, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.01022, 0, 0),
(14404, 39, 1654.14, 142.97, -62.1517, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.80995, 0, 0),
(14404, 40, 1652.96, 135.5, -62.165, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.56, 0, 0),
(14404, 41, 1659.56, 124.273, -61.4918, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.25507, 0, 0),
(14404, 42, 1668.15, 122.337, -61.4785, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6.07581, 0, 0),
(14404, 43, 1679.69, 127.941, -60.399, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.452356, 0, 0),
(14404, 44, 1690.99, 138.584, -55.2144, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.758661, 0, 0),
(14404, 45, 1694.65, 138.741, -55.1205, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.036095, 0, 0),
(14404, 46, 1700.56, 132.965, -51.1889, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.51032, 0, 0),
(14404, 47, 1706.48, 127.192, -48.9843, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.51032, 0, 0),
(14404, 48, 1710.44, 123.259, -50.5277, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.48676, 0, 0),
(14404, 49, 1715.23, 118.353, -54.0606, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.48676, 0, 0),
(14404, 50, 1717.61, 115.928, -55.2149, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.48676, 0, 0),
(14404, 51, 1716.88, 112.975, -55.2149, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.46968, 0, 0),
(14404, 52, 1695.71, 91.8981, -62.2246, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.92776, 0, 0),
(14404, 53, 1693.73, 79.1823, -62.2891, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.56393, 0, 0),
(14404, 54, 1702.2, 70.9584, -62.2891, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.48284, 0, 0),
(14404, 55, 1738.34, 59.7895, -59.7713, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6.25645, 0, 0),
(14404, 56, 1750.16, 47.7324, -52.817, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.49069, 0, 0),
(14404, 57, 1754.99, 47.2671, -52.817, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6.19754, 0, 0),
(14404, 58, 1759.38, 51.5006, -50.2111, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.790076, 0, 0),
(14404, 59, 1763.55, 55.7116, -46.3169, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.790076, 0, 0),
(14404, 60, 1778.34, 70.5382, -46.3188, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.778295, 0, 0),
(14404, 61, 1781.78, 73.9327, -49.3515, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.778295, 0, 0),
(14404, 62, 1787.11, 79.1894, -52.8169, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.778295, 0, 0),
(14404, 63, 1786.87, 83.4353, -52.8169, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.62653, 0, 0),
(14404, 64, 1779.14, 91.4176, -56.1755, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.34124, 0, 0),
(14404, 65, 1775.15, 95.5312, -59.6657, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.34124, 0, 0),
(14404, 66, 1760.93, 133.892, -62.2949, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.94068, 0, 0),
(14404, 67, 1748.07, 140.085, -62.2585, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.70252, 0, 0),
(14404, 68, 1737.57, 133.233, -62.1182, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.72747, 0, 0),
(14404, 69, 1727.58, 123.542, -60.1819, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.89633, 0, 0),
(14404, 70, 1720.53, 116.855, -55.2148, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.90419, 0, 0),
(14404, 71, 1717.04, 116.903, -55.0754, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.06774, 0, 0),
(14404, 72, 1712.63, 121.317, -52.3247, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.35302, 0, 0),
(14404, 73, 1707.51, 126.463, -49.0926, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.35302, 0, 0),
(14404, 74, 1701.38, 132.564, -50.6214, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.35302, 0, 0),
(14404, 75, 1695.16, 138.816, -54.9837, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.35302, 0, 0),
(14404, 76, 1695.02, 142.361, -55.2144, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.61082, 0, 0),
(14404, 77, 1702.29, 149.973, -60.4682, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.805789, 0, 0),
(14404, 78, 1701.05, 158.937, -60.5802, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.71685, 0, 0),
(14404, 79, 1718.89, 186.261, -60.7598, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.04141, 0, 0),
(14404, 80, 1724.63, 195.081, -62.1654, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.982504, 0, 0);


-- Add Points of Interest to Undercity Guardian (5624) gossip options.
UPDATE `gossip_menu_option` SET `action_poi_id`=283 WHERE `menu_id`=2849 AND `id`=0;
UPDATE `gossip_menu_option` SET `action_poi_id`=281 WHERE `menu_id`=2849 AND `id`=1;
UPDATE `gossip_menu_option` SET `action_poi_id`=279 WHERE `menu_id`=2849 AND `id`=2;
UPDATE `gossip_menu_option` SET `action_poi_id`=278 WHERE `menu_id`=2849 AND `id`=3;
UPDATE `gossip_menu_option` SET `action_poi_id`=276 WHERE `menu_id`=2849 AND `id`=4;
UPDATE `gossip_menu_option` SET `action_poi_id`=284 WHERE `menu_id`=2849 AND `id`=5;
UPDATE `gossip_menu_option` SET `action_poi_id`=273 WHERE `menu_id`=2849 AND `id`=6;
UPDATE `gossip_menu_option` SET `action_poi_id`=274 WHERE `menu_id`=2849 AND `id`=7;
UPDATE `gossip_menu_option` SET `action_poi_id`=275 WHERE `menu_id`=2849 AND `id`=8;
UPDATE `gossip_menu_option` SET `action_poi_id`=280 WHERE `menu_id`=2849 AND `id`=9;

UPDATE `gossip_menu_option` SET `action_poi_id`=272 WHERE `menu_id`=2848 AND `id`=0;
UPDATE `gossip_menu_option` SET `action_poi_id`=270 WHERE `menu_id`=2848 AND `id`=2;
UPDATE `gossip_menu_option` SET `action_poi_id`=269 WHERE `menu_id`=2848 AND `id`=3;
UPDATE `gossip_menu_option` SET `action_poi_id`=268 WHERE `menu_id`=2848 AND `id`=4;
UPDATE `gossip_menu_option` SET `action_poi_id`=267 WHERE `menu_id`=2848 AND `id`=5;

UPDATE `gossip_menu_option` SET `action_poi_id`=266 WHERE `menu_id`=2847 AND `id`=0;
UPDATE `gossip_menu_option` SET `action_poi_id`=265 WHERE `menu_id`=2847 AND `id`=1;
UPDATE `gossip_menu_option` SET `action_poi_id`=264 WHERE `menu_id`=2847 AND `id`=2;
UPDATE `gossip_menu_option` SET `action_poi_id`=263 WHERE `menu_id`=2847 AND `id`=3;
UPDATE `gossip_menu_option` SET `action_poi_id`=262 WHERE `menu_id`=2847 AND `id`=4;
UPDATE `gossip_menu_option` SET `action_poi_id`=261 WHERE `menu_id`=2847 AND `id`=5;
UPDATE `gossip_menu_option` SET `action_poi_id`=260 WHERE `menu_id`=2847 AND `id`=6;
UPDATE `gossip_menu_option` SET `action_poi_id`=259 WHERE `menu_id`=2847 AND `id`=7;
UPDATE `gossip_menu_option` SET `action_poi_id`=257 WHERE `menu_id`=2847 AND `id`=8;
UPDATE `gossip_menu_option` SET `action_poi_id`=256 WHERE `menu_id`=2847 AND `id`=9;
UPDATE `gossip_menu_option` SET `action_poi_id`=255 WHERE `menu_id`=2847 AND `id`=10;
UPDATE `gossip_menu_option` SET `action_poi_id`=254 WHERE `menu_id`=2847 AND `id`=11;

-- Spawn all static Emissary NPCs and banners in Orgrimmar.
SET @GUID_OBJ = 101000;
SET @GUID_OBJ2 = 31675;
SET @GUID_OBJ3 = 31676;

SET @GUID_NPC = 100000;

-- Usual cleanups
DELETE FROM `game_event_gameobject` WHERE `guid` IN (@GUID_OBJ2, @GUID_OBJ3) OR `guid` BETWEEN @GUID_OBJ AND @GUID_OBJ + 9;
DELETE FROM `gameobject` WHERE `guid` IN (@GUID_OBJ2, @GUID_OBJ3) OR `guid` BETWEEN @GUID_OBJ AND @GUID_OBJ + 9;
DELETE FROM `game_event_creature` WHERE `guid` BETWEEN @GUID_NPC AND @GUID_NPC + 23;
DELETE FROM `creature` WHERE `guid` BETWEEN @GUID_NPC AND @GUID_NPC + 23;

-- Event 18: Call to Arms: Alterac Valley!
-- PvP AV Flags
-- Spot 1
INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES
(@GUID_OBJ + 2, 18);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES 
(@GUID_OBJ + 2, 180395, 1, 1933.43, -4708.58, 36.4638, 1.3304, 0, 0, 0, 0, 180, 100, 1);
-- Spot 2
INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES
(@GUID_OBJ + 11, 18);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(@GUID_OBJ + 11, 180395, 1, 1749.75, -3963.67, 50.4844, 3.50363, 0, 0, 0, 0, 180, 100, 1);
-- Spot 3
INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES
(@GUID_OBJ + 8, 18);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(@GUID_OBJ + 8, 180395, 1, 1663.59, -4343.19, 61.2462, 0.750492, 0, 0, 0.366501, 0.930418, 180, 100, 1);
-- Spot 4
INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES
(@GUID_OBJ + 5, 18);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(@GUID_OBJ + 5, 180395, 1, 1657.46, -4385.4, 23.5797, 5.41287, 0, 0, 0, 0, 180, 100, 1);

-- AV Emissaries
-- Spot 1
INSERT INTO `game_event_creature` (`guid`, `event`) VALUES
(@GUID_NPC + 4, 18),
(@GUID_NPC + 5, 18);
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@GUID_NPC + 4, 15106, 1, 0, 0, 1937.07, -4707.49, 35.4933, 4.4123, 370, 0, 0, 4108, 0, 0, 0),
(@GUID_NPC + 5, 15106, 1, 0, 0, 1936.4, -4710.2, 36.4882, 1.29584, 370, 0, 0, 4108, 0, 0, 0);
-- Spot 2
INSERT INTO `game_event_creature` (`guid`, `event`) VALUES
(@GUID_NPC + 22, 18),
(@GUID_NPC + 23, 18);
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@GUID_NPC + 22, 15106, 1, 0, 0, 1743.72, -3967.15, 49.1537, 0.42906, 370, 0, 0, 4108, 0, 0, 0),
(@GUID_NPC + 23, 15106, 1, 0, 0, 1747.21, -3965.75, 49.6639, 3.57536, 370, 0, 0, 4108, 0, 0, 0);
-- Spot 3
INSERT INTO `game_event_creature` (`guid`, `event`) VALUES
(@GUID_NPC + 16, 18),
(@GUID_NPC + 17, 18);
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@GUID_NPC + 16, 15106, 1, 0, 0, 1665.79, -4344.94, 61.2469, 5.42626, 370, 0, 0, 4108, 0, 0, 0),
(@GUID_NPC + 17, 15106, 1, 0, 0, 1667.51, -4347, 61.2465, 2.33336, 370, 0, 0, 4108, 0, 0, 0);
-- Spot 4
INSERT INTO `game_event_creature` (`guid`, `event`) VALUES
(@GUID_NPC + 10, 18),
(@GUID_NPC + 11, 18);
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@GUID_NPC + 10, 15106, 1, 0, 0, 1660.82, -4385.81, 23.9178, 4.17041, 370, 0, 0, 4108, 0, 0, 0),
(@GUID_NPC + 11, 15106, 1, 0, 0, 1658.83, -4388.91, 23.681, 1.01544, 370, 0, 0, 4108, 0, 0, 0);

-- Event 19: Call to Arms: Warsong Gulch!
-- PvP AG Flags
-- Spot 1
INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES
(@GUID_OBJ + 1, 19);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(@GUID_OBJ + 1, 180394, 1, 1933.43, -4708.58, 36.4638, 1.3304, 0, 0, 0, 0, 180, 100, 1);
-- Spot 2
INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES
(@GUID_OBJ + 10, 19);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES (@GUID_OBJ + 10, 180394, 1, 1749.75, -3963.67, 50.4844, 3.50363, 0, 0, 0, 0, 180, 100, 1);
-- Spot 3
INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES
(@GUID_OBJ3, 19);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(@GUID_OBJ3, 180394, 1, 1663.59, -4343.19, 61.2462, 0.750492, 0, 0, 0.366501, 0.930418, 180, 100, 1);
-- Spot 4
INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES
(@GUID_OBJ2, 19);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(@GUID_OBJ2, 180394, 1, 1657.46, -4385.4, 23.5797, 5.41287, 0, 0, 0, 0, 180, 100, 1);

-- AG Emissaries
-- Spot 1
INSERT INTO `game_event_creature` (`guid`, `event`) VALUES
(@GUID_NPC + 2, 19),
(@GUID_NPC + 3, 19);
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@GUID_NPC + 2, 15105, 1, 0, 0, 1937.07, -4707.49, 35.4933, 4.4123, 370, 0, 0, 1605, 852, 0, 0),
(@GUID_NPC + 3, 15105, 1, 0, 0, 1936.4, -4710.2, 36.4882, 1.29584, 370, 0, 0, 1605, 852, 0, 0);
-- Spot 2
INSERT INTO `game_event_creature` (`guid`, `event`) VALUES
(@GUID_NPC + 20, 19),
(@GUID_NPC + 21, 19);
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@GUID_NPC + 20, 15105, 1, 0, 0, 1743.72, -3967.15, 49.1537, 0.42906, 370, 0, 0, 1605, 852, 0, 0),
(@GUID_NPC + 21, 15105, 1, 0, 0, 1747.21, -3965.75, 49.6639, 3.57536, 370, 0, 0, 1605, 852, 0, 0);
-- Spot 3
INSERT INTO `game_event_creature` (`guid`, `event`) VALUES
(@GUID_NPC + 14, 19),
(@GUID_NPC + 15, 19);
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@GUID_NPC + 14, 15105, 1, 0, 0, 1665.79, -4344.94, 61.2469, 5.42626, 370, 0, 0, 1605, 852, 0, 0),
(@GUID_NPC + 15, 15105, 1, 0, 0, 1667.51, -4347, 61.2465, 2.33336, 370, 0, 0, 1605, 852, 0, 0);
-- Spot 4
INSERT INTO `game_event_creature` (`guid`, `event`) VALUES
(@GUID_NPC + 8, 19),
(@GUID_NPC + 9, 19);
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@GUID_NPC + 8, 15105, 1, 0, 0, 1660.82, -4385.81, 23.9178, 4.17041, 370, 0, 0, 1605, 852, 0, 0),
(@GUID_NPC + 9, 15105, 1, 0, 0, 1658.83, -4388.91, 23.681, 1.01544, 370, 0, 0, 1605, 852, 0, 0);


-- Event 20: Call to Arms: Arathi Basin!
-- PvP AB Flags
-- Spot 1
INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES
(@GUID_OBJ, 20);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(@GUID_OBJ, 180396, 1, 1933.43, -4708.58, 36.4638, 1.3304, 0, 0, 0, 0, 180, 100, 1);
-- Spot 2
INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES
(@GUID_OBJ + 9, 20);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(@GUID_OBJ + 9, 180396, 1, 1749.75, -3963.67, 50.4844, 3.50363, 0, 0, 0, 0, 180, 100, 1);
-- Spot 3
INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (@GUID_OBJ + 6, 20);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(@GUID_OBJ + 6, 180396, 1, 1663.59, -4343.19, 61.2462, 0.750492, 0, 0, 0.366501, 0.930418, 180, 100, 1);
-- Spot 4
INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES
(@GUID_OBJ + 3, 20);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(@GUID_OBJ + 3, 180396, 1, 1657.46, -4385.4, 23.5797, 5.41287, 0, 0, 0, 0, 180, 100, 1);

-- AB Emissaries
-- Spot 1
INSERT INTO `game_event_creature` (`guid`, `event`) VALUES
(@GUID_NPC, 20),
(@GUID_NPC + 1, 20);
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@GUID_NPC, 14990, 1, 0, 0, 1936.4, -4710.2, 36.4882, 1.29584, 370, 0, 0, 2471, 0, 0, 0),
(@GUID_NPC + 1, 14990, 1, 0, 0, 1937.07, -4707.49, 35.4933, 4.4123, 370, 0, 0, 2471, 0, 0, 0);
-- Spot 2
INSERT INTO `game_event_creature` (`guid`, `event`) VALUES
(@GUID_NPC + 18, 20),
(@GUID_NPC + 19, 20);
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@GUID_NPC + 18, 14990, 1, 0, 0, 1743.72, -3967.15, 49.1537, 0.42906, 370, 0, 0, 2471, 0, 0, 0),
(@GUID_NPC + 19, 14990, 1, 0, 0, 1747.21, -3965.75, 49.6639, 3.57536, 370, 0, 0, 2471, 0, 0, 0);
-- Spot 3
INSERT INTO `game_event_creature` (`guid`, `event`) VALUES
(@GUID_NPC + 12, 20),
(@GUID_NPC + 13, 20);
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@GUID_NPC + 12, 14990, 1, 0, 0, 1665.79, -4344.94, 61.2469, 5.42626, 370, 0, 0, 2471, 0, 0, 0),
(@GUID_NPC + 13, 14990, 1, 0, 0, 1667.51, -4347, 61.2465, 2.33336, 370, 0, 0, 2471, 0, 0, 0);
-- Spot 4
INSERT INTO `game_event_creature` (`guid`, `event`) VALUES
(@GUID_NPC + 6, 20),
(@GUID_NPC + 7, 20);
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@GUID_NPC + 6, 14990, 1, 0, 0, 1660.82, -4385.81, 23.9178, 4.17041, 370, 0, 0, 2471, 0, 0, 0),
(@GUID_NPC + 7, 14990, 1, 0, 0, 1658.83, -4388.91, 23.681, 1.01544, 370, 0, 0, 2471, 0, 0, 0);