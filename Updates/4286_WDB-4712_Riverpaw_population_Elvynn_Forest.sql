-- Elvynn Forest

-- Fedfennel 472 -- tbcmangos differges from classic/wotlk, align.
DELETE FROM `creature` WHERE `id` = 472; -- 98752,98751,81122,98750
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `movementtype`) VALUES
(81122, 472, 0, -8978.21, -829.324, 70.1883, 3.29867, 5400, 9000, 5, 1),
(134000, 472, 0, -8886.04, -771.985, 69.2205, 4.98213, 5400, 9000, 5, 1),
(134001, 472, 0, -8855.48, -822.622, 71.5874, 0.598824, 5400, 9000, 5, 1),
(134002, 472, 0, -8839.13, -863.772, 75.6382, 4.52817, 5400, 9000, 5, 1);

UPDATE creature SET spawndist = 0, MovementType = 0 WHERE id = 472;

UPDATE creature SET position_x = -8853.716, position_y = -822.9642, position_z = 71.87811, orientation = 3.927 WHERE guid = 134001;
-- moved to spawn GROUPS
DELETE FROM `pool_creature` WHERE `pool_entry` IN (1074);
DELETE FROM `pool_template` WHERE `entry` IN (1074); -- 1074	1	Fedfennel (472)
DELETE FROM `pool_creature_template` WHERE `pool_entry` IN (1074); -- 472	1074	0	Fedfennel (472)
DELETE FROM `spawn_group` WHERE id = 19985;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(19985, 'Elvynn Forest - Stone Cairn Lake - Fedfennel 472', 0, 1, 0, 0);
DELETE FROM `spawn_group_spawn` WHERE id = 19985;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(19985, 81122, -1),
(19985, 134000, -1),
(19985, 134001, -1),
(19985, 134002, -1);

-- Gruff Swiftbite 100
-- tbcmangos static positions at the tents are wrong, made up - use classic/wotlk mangos versions
DELETE FROM `creature` WHERE `id` = 100; -- 99701,99698,99702,99699,99700,99703
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `movementtype`) VALUES
(134003, 100, 0, -10067.1, 629.856, 39.2659, 0.67265, 5400, 9000, 10, 1),
(86154, 100, 0, -10017, 654.089, 37.149, 5.412, 5400, 9000, 10, 1),
(134004, 100, 0, -9981.18, 566.13, 37.6634, 1.37087, 5400, 9000, 10, 1),
(134005, 100, 0, -9945.86, 620.999, 37.2259, 4.03808, 5400, 9000, 10, 1),
(134006, 100, 0, -9930.88, 573.464, 37.0119, 2.35969, 5400, 9000, 10, 1);

UPDATE creature SET position_x = -10082.844727, position_y = 635.379395, position_z = 39.253815, spawndist = 15, MovementType = 1 WHERE guid = 134003;
UPDATE creature SET spawndist = 15, MovementType = 1 WHERE id = 100;
-- moved to spawn GROUPS
DELETE FROM `pool_creature` WHERE `pool_entry` IN (1072);
DELETE FROM `pool_template` WHERE `entry` IN (1072); -- 1072	1	Gruff Swiftbite (100)
DELETE FROM `pool_creature_template` WHERE `pool_entry` IN (1072); -- 100	1072	0	Gruff Swiftbite (100)
DELETE FROM `spawn_group` WHERE id = 19984;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(19984, 'Elvynn Forest - Forest\'s Edge - Gruff Swiftbite 100', 0, 1, 0, 0);
DELETE FROM `spawn_group_spawn` WHERE id = 19984;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(19984, 86154, -1),
(19984, 134003, -1),
(19984, 134004, -1),
(19984, 134005, -1),
(19984, 134006, -1);

-- Hogger 448
-- moved to spawn GROUPS (classic/tbc differ from wotlk, +1 spawn)
-- 448	1265	0	Elwynn Forest - Forest's Edge - Hogger (448)
DELETE FROM `pool_creature` WHERE `pool_entry` IN (1265);
DELETE FROM `pool_template` WHERE `entry` IN (1265); -- 1265	1	Elwynn Forest - Forest's Edge - Hogger (448)
DELETE FROM `pool_creature_template` WHERE `pool_entry` IN (1265); -- 448	1265	0	Elwynn Forest - Forest's Edge - Hogger (448)
DELETE FROM `spawn_group` WHERE id = 19983;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(19983, 'Elvynn Forest - Forest\'s Edge - Hogger 448', 0, 1, 0, 0);
DELETE FROM `spawn_group_spawn` WHERE id = 19983;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(19983, 80531, -1),
(19983, 81027, -1), -- 81016
(19983, 80731, -1),
(19983, 81028, -1),
(19983, 81029, -1),
(19983, 81064, -1);

DELETE FROM `creature` where `id` = 448 AND `guid` = 81064;
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `movementtype`) VALUES
(81064, 448, 0, -9947.88, 594.773, 39.608, 5.19393, 180, 180, 8, 1);

UPDATE `creature` SET `spawntimesecsmin` = 180, `spawntimesecsmax` = 180, `spawndist` = 8, `movementtype` = 1 WHERE `id` = 448 AND `guid` != 80731;
UPDATE `creature` SET `spawntimesecsmin` = 180, `spawntimesecsmax` = 180 WHERE `id` = 448 AND `guid` = 80731;

-- Riverpaw Runt 97 & Riverpaw Outrunner 478
-- packs North from `Stone Cairn Lake`
-- Updates
UPDATE creature SET spawndist = 0, MovementType = 0 WHERE guid IN (81152,81132,81143,81141,81120,81119,81151,81153,81133,81131,81144,81142,81118,81117);
UPDATE creature SET spawndist = 10, MovementType = 1 WHERE guid = 81149;
UPDATE creature SET spawndist = 15, MovementType = 1 WHERE guid IN (81111,81330);
UPDATE creature SET position_x = -8873.598633, position_y = -823.414246, position_z = 72.300377, spawndist = 7, MovementType = 1 WHERE guid = 81129; -- small area to cover
UPDATE creature SET position_x = -8835.293945, position_y = -853.991943, position_z = 74.286278, spawndist = 10, MovementType = 1 WHERE guid = 81148;
UPDATE creature SET position_x = -8852.494141, position_y = -924.767761, position_z = 75.609489, spawndist = 15, MovementType = 1 WHERE guid = 81146;
UPDATE creature SET position_x = -9010.752930, position_y = -810.284058, position_z = 68.867233, spawndist = 15, MovementType = 1 WHERE guid = 81115;
UPDATE creature SET position_x = -8983.671875, position_y = -859.671997, position_z = 68.817261, spawndist = 15, MovementType = 1 WHERE guid = 81121;
UPDATE creature SET position_x = -9111.220703, position_y = -822.764282, position_z = 70.639343, spawndist = 15, MovementType = 1 WHERE guid = 81112;
UPDATE creature SET position_x = -8936.508789, position_y = -857.085876, position_z = 69.104706, spawndist = 15, MovementType = 1 WHERE guid = 81124;
UPDATE creature SET position_x = -8818.851562, position_y = -855.922058, position_z = 74.332024, spawndist = 10, MovementType = 1 WHERE guid = 81154;
UPDATE creature SET position_x = -8851.617188, position_y = -850.918823, position_z = 73.574760, spawndist = 20, MovementType = 1 WHERE guid = 81134;
UPDATE creature SET position_x = -8846.536133, position_y = -785.257751, position_z = 70.646332, spawndist = 20, MovementType = 1 WHERE guid = 81139;
UPDATE creature SET position_x = -8854.874023, position_y = -752.945984, position_z = 70.090881, spawndist = 20, MovementType = 1 WHERE guid = 81136;
UPDATE creature SET position_x = -9013.491211, position_y = -853.273743, position_z = 69.480415, spawndist = 20, MovementType = 1 WHERE guid = 81114;
UPDATE creature SET position_x = -8835.158203, position_y = -990.737915, position_z = 74.202278, spawndist = 20, MovementType = 1 WHERE guid = 81338;
UPDATE creature SET position_x = -8888.418945, position_y = -854.928223, position_z = 73.087433, spawndist = 20, MovementType = 1 WHERE guid = 81128;
UPDATE creature SET position_x = -8918.245117, position_y = -815.591125, position_z = 68.922501, spawndist = 20, MovementType = 1 WHERE guid = 81125;
UPDATE creature SET position_x = -8962.441406, position_y = -778.068604, position_z = 70.829742, spawndist = 20, MovementType = 1 WHERE guid = 81126;
UPDATE creature SET position_x = -9065.135742, position_y = -835.249451, position_z = 69.747192, spawndist = 20, MovementType = 1 WHERE guid = 81113;

-- western part of Elvynn Forest
-- missing added - guids free in all 3 DBs
DELETE FROM creature_addon WHERE guid IN (11414);
DELETE FROM creature_movement WHERE id IN (11414);
DELETE FROM game_event_creature WHERE guid IN (11414);
DELETE FROM game_event_creature_data WHERE guid IN (11414);
DELETE FROM creature_battleground WHERE guid IN (11414);
DELETE FROM creature_linking WHERE guid IN (11414)
 OR master_guid IN (11414);
DELETE FROM creature WHERE guid IN (11414);
INSERT INTO creature (guid, id, map, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) values
(11414,97,0,-10045.1,575.56,35.1568,1.24577,180,180,15,1);
-- updates
UPDATE creature SET spawndist = 0, MovementType = 0 WHERE guid IN (80513,80523,80525,80526,80506,80508,80512,80513,80514,80519,80518,80520,80521,80501,80500,80499,80536,80534,80535);
UPDATE creature SET position_x = -9979.268555, position_y = 571.616882, position_z = 37.662552, orientation = 4.885448, spawndist = 0, MovementType = 0 WHERE guid = 80524;
UPDATE creature SET position_x = -9801.211914, position_y = 450.947693, position_z = 36.210129, spawndist = 15, MovementType = 1 WHERE guid = 80551;
UPDATE creature SET position_x = -9865.470703, position_y = 481.791443, position_z = 36.061237, spawndist = 15, MovementType = 1 WHERE guid = 80545;
UPDATE creature SET position_x = -9819.909180, position_y = 616.527954, position_z = 41.811504, spawndist = 15, MovementType = 1 WHERE guid = 80493;
UPDATE creature SET position_x = -9954.583008, position_y = 590.006592, position_z = 39.124107, spawndist = 15, MovementType = 1 WHERE guid = 80507;
UPDATE creature SET position_x = -9955.007812, position_y = 551.861206, position_z = 38.893646, spawndist = 15, MovementType = 1 WHERE guid = 80528;
UPDATE creature SET position_x = -9996.076172, position_y = 603.114319, position_z = 40.026615, spawndist = 15, MovementType = 1 WHERE guid = 80516; -- was inside tree
UPDATE creature SET position_x = -9984.117188, position_y = 638.761169, position_z = 37.906860, spawndist = 15, MovementType = 1 WHERE guid = 80503;
UPDATE creature SET position_x = -10041.0039, position_y = 663.382019, position_z = 37.741508, spawndist = 15, MovementType = 1 WHERE guid = 80511;
UPDATE creature SET position_x = -9982.490234, position_y = 541.011475, position_z = 36.716213, spawndist = 15, MovementType = 1 WHERE guid = 80527;
UPDATE creature SET position_x = -10095.650391, position_y = 621.112793, position_z = 38.581902, spawndist = 15, MovementType = 1 WHERE guid = 80532;
UPDATE creature SET position_x = -9947.733398, position_y = 654.047729, position_z = 34.258228, spawndist = 15, MovementType = 1 WHERE guid = 80509;
-- Riverpaw Runt 97 & Riverpaw Outrunner 478
-- share same spawn points
DELETE FROM creature_spawn_entry WHERE entry IN (97,478);
INSERT INTO creature_spawn_entry (guid,entry)
SELECT guid,id FROM creature
WHERE id in (97)
union
SELECT guid,478 FROM creature
WHERE id in (97)
union
SELECT guid,id FROM creature
WHERE id in (478)
union
SELECT guid,97 FROM creature
WHERE id in (478);
UPDATE creature SET id = 0 WHERE id IN (97,478);

