/* Changing goblin male midsummer celebrant model from 29243 which didn't exist in vanilla to 15762 (same clothing as dwarf celebrant model) */

UPDATE `creature_template` SET `ModelId2`= 15762 WHERE `Entry`= 25872;

-- Updating Midsummer Bonfire (obj 181288) to Spellfocus

UPDATE `gameobject_template` SET `type`= 8, `displayId`= 0, `data0`= 1365, `data1`= 10, `data2`= 181431, `data10`= 0 WHERE `entry`= 181288;

-- Adding to Capital City Flames

-- IF

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55251, 181288, 0, -4700.28, -1224.34, 501.659, -2.14675, 0, 0, 0.878817, -0.477159, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55251, 1);

-- SW

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55252, 181288, 0, -8833.23, 859.132, 98.8978, -2.07694, 0, 0, 0, 0, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55252, 1);

-- Darnassus

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55253, 181288, 1, 8704.97, 932.636, 14.7263, 3.40724, 0, 0, 0, 0, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55253, 1);

-- Undercity

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55254, 181288, 0, 1642.06, 239.867, 62.5916, 0.0009408, 0, 0, 0, 0, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55254, 1);

-- Orgrimmar

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55255, 181288, 1, 1952.99, -4271.15, 30.5822, 4.16335, 0, 0, 0, 0, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55255, 1);

-- Thunderbluff

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55256, 181288, 1, -1036.25, 297.622, 135.536, 3.7342, 0, 0, 0, 0, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55256, 1);

-- Kalimdor Flames
-- Silithus

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55257, 181288, 1, -6395.72, -176.997, 7.62333, 6.27133, 0, 0, 0, 0, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55257, 1);

-- Winterspring

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55258, 181288, 1, 6493.44, -2497.71, 568.263, 3.07177, 0, 0, 0, 0, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55258, 1);

-- Azshara

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55259, 181288, 1, 3879.19, -5377.36, 141.002, 5.33246, 0, 0, 0, 0, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55259, 1);

-- Un'goro

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55260, 181288, 1, -7838, -2068.18, -271.779, 0.446949, 0, 0, 0, 0, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55260, 1);

-- The Barrens

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55261, 181288, 1, -1041.07, -3434.1, 70.3044, 0.883685, 0, 0, 0, 0, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55261, 1);

-- Ashenvale

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55262, 181288, 1, 1919.91, -2037.51, 103.607, 1.81061, 0, 0, 0, 0, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55262, 1);

-- Stonetalon

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55263, 181288, 1, 560.52, 342.829, 52.9046, 5.99805, 0, 0, 0, 0, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55263, 1);

-- Darkshore

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55264, 181288, 1, 4373.8, 222.264, 51.9646, 2.93812, 0, 0, 0, 0, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55264, 1);

-- Eastern Kingdoms
-- The Plaguelands

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55265, 181288, 0, 1930.94, -4411.57, 73.882, 4.3395, 0, 0, 0, 0, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55265, 1);

-- Searing Gorge

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55266, 181288, 0, -7186.47, -1055.66, 240.327, 4.48405, 0, 0, 0, 0, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55266, 1);

-- Blasted Lands

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55267, 181288, 0, -11261.9, -3053.91, -0.15634, 5.93953, 0, 0, 0, 0, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55267, 1);

-- Hinterlands

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55268, 181288, 0, 97.892, -3965.68, 138.777, 2.5887, 0, 0, 0, 0, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55268, 1);

-- Silverpine

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55269, 181288, 0, -278.222, 1171.19, 63.6597, 3.4908, 0, 0, 0, 0, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55269, 1);

-- Westfall

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55270, 181288, 0, -11276.1, 1826.11, 38.9136, 2.18846, 0, 0, 0, 0, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55270, 1);

-- Hillsbrad

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55271, 181288, 0, -325.53, -674.73, 54.6548, 5.56236, 0, 0, 0, 0, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55271, 1);

-- Wetlands

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55272, 181288, 0, -2624.47, -2508.33, 82.1387, 4.55157, 0, 0, 0, 0, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55272, 1);

-- Dungeon Flames

-- Dire Maul

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55273, 181288, 429, 536.586, 602.55, -4.75474, 5.74615, 0, 0, 0, 0, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55273, 1);

-- LBRS

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55274, 181288, 229, -15.5284, -364.131, 49.6099, 6.23491, 0, 0, 0, 0, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55274, 1);

-- Stratholme

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55275, 181288, 329, 3685.87, -3163.12, 126.721, 3.79137, 0, 0, 0, 0, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55275, 1);

-- Scholomance

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55276, 181288, 289, 95.8052, 65.1433, 97.7323, 0.462622, 0, 0, 0, 0, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55276, 1);

-- Adding missing trap for Westfall Flame

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55277, 181376, 0, -11276.1, 1826.11, 38.9136, 2.18846, 0, 0, 0, 0, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55277, 1);

/* Fixing up db warnings for low current health of some npcs. Setting current health to maximum health */

UPDATE `creature` SET `curhealth`= 42 WHERE `id`= 16781;

UPDATE `creature` SET `curhealth`= 1500 WHERE `id`= 17049;

UPDATE `creature` SET `curhealth`= 6800 WHERE `id`= 17041;

UPDATE `creature` SET `curhealth`= 6800 WHERE `id`= 17050;

UPDATE `creature` SET `curhealth`= 1500 WHERE `id`= 17048;

UPDATE `creature` SET `curhealth`= 6900 WHERE `id`= 16788;

UPDATE `creature` SET `curhealth`= 1500 WHERE `id`= 17038;

UPDATE `creature` SET `curhealth`= 6900 WHERE `id`= 16818;

/* Adding complete script entry for flame turn-in quests to quest id from npc id as is currently */

UPDATE `quest_template` SET `CompleteScript`= 9324 WHERE `entry`= 9324;
UPDATE `quest_template` SET `CompleteScript`= 9325 WHERE `entry`= 9325;
UPDATE `quest_template` SET `CompleteScript`= 9326 WHERE `entry`= 9326;
UPDATE `quest_template` SET `CompleteScript`= 9330 WHERE `entry`= 9330;
UPDATE `quest_template` SET `CompleteScript`= 9331 WHERE `entry`= 9331;
UPDATE `quest_template` SET `CompleteScript`= 9332 WHERE `entry`= 9332;

INSERT INTO `dbscripts_on_quest_end` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES (9324, 0, 15, 29235, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Loremaster cast Fire Festival Fortitude');

INSERT INTO `dbscripts_on_quest_end` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES (9325, 0, 15, 29235, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Loremaster cast Fire Festival Fortitude');

INSERT INTO `dbscripts_on_quest_end` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES (9326, 0, 15, 29235, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Loremaster cast Fire Festival Fortitude');

INSERT INTO `dbscripts_on_quest_end` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES (9330, 0, 15, 29235, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Talespinner cast Fire Festival Fortitude');

INSERT INTO `dbscripts_on_quest_end` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES (9331, 0, 15, 29235, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Talespinner cast Fire Festival Fortitude');

INSERT INTO `dbscripts_on_quest_end` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES (9332, 0, 15, 29235, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Talespinner cast Fire Festival Fortitude');

/* Removing incorrect entry */

DELETE FROM `dbscripts_on_quest_end` WHERE `id` IN (16817,16818);