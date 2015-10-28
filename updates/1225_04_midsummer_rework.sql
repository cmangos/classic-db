/* Updating Westfall station objects according to new screenshots */

UPDATE `gameobject` SET `position_x`= -11276.099609, `position_y`= 1826.109985, `position_z`= 38.913601 WHERE `guid`= 55077;

UPDATE `gameobject` SET `position_x`= -11276.099609, `position_y`= 1826.109985, `position_z`= 38.913601 WHERE `guid`= 55078;

UPDATE `gameobject` SET `id`= 181301, `position_x`= -11281.299805, `position_y`= 1811.530029, `position_z`= 39.698502 WHERE `guid`= 55079;

UPDATE `gameobject` SET `position_x`= -11277.5, `position_y`= 1812.910034, `position_z`= 43.152599 WHERE `guid`= 55080;

UPDATE `gameobject` SET `position_x`= -11285.0, `position_y`= 1810.089966, `position_z`= 43.152599 WHERE `guid`= 55081;

UPDATE `gameobject` SET `position_x`= -11285.700195, `position_y`= 1815.140015, `position_z`= 39.594299 WHERE `guid`= 55082;

UPDATE `gameobject` SET `position_x`= -11284.299805, `position_y`= 1815.119995, `position_z`= 39.602001 WHERE `guid`= 55083;

UPDATE `gameobject` SET `position_x`= -11284.799805, `position_y`= 1814.979980, `position_z`= 40.845001 WHERE `guid`= 55084;

UPDATE `gameobject` SET `position_x`= -11285.0, `position_y`= 1811.689941, `position_z`= 40.026001 WHERE `guid`= 55085;

/* Adding 2 Braziers, Table, decoration and Ribbon Pole */

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55199, 181305, 0, -11279.200195, 1809.140015, 39.544601, 1.871959, 0, 0, 0, 0, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55199, 1);

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55200, 181388, 0, -11280.099609, 1809.099976, 40.546700, 1.582934, 0, 0, 0, 0, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55200, 1);

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55201, 181605, 0, -11267.5, 1817.160034, 39.174301, 4.959472, 0, 0, 0, 0, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55201, 1);

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55202, 181355, 0, -11270.53125, 1816.706177, 39.551220, 3.84264, 0, 0, 0, 0, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55202, 1);

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55203, 181355, 0, -11286.0, 1805.979980, 39.745098, 3.84264, 0, 0, 0, 0, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55203, 1);

/* Adding 3 Midsummer Celebrants */

INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (95037, 16781, 0, 16442, 0, -11273.797852, 1818.903442, 39.669495, 2.012646, 180, 0, 0, 0, 0, 0, 0);

INSERT INTO `game_event_creature` (`guid`,`event`) VALUES (95037,1);

INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (95037, 0, 0, 1, 16, 0, 0, NULL);

INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (95038, 16781, 0, 16431, 0, -11282.905273, 1824.866699, 38.863388, 1.517845, 180, 0, 0, 0, 0, 0, 0);

INSERT INTO `game_event_creature` (`guid`,`event`) VALUES (95038,1);

INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (95038, 0, 0, 1, 16, 0, 0, NULL);

INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (95039, 16781, 0, 16442, 0, -11284.153320, 1828.104004, 38.743839, 5.904294, 180, 0, 0, 0, 0, 0, 0);

INSERT INTO `game_event_creature` (`guid`,`event`) VALUES (95039,1);

INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (95039, 0, 0, 1, 16, 0, 0, NULL);