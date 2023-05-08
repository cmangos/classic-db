
DELETE FROM `gameobject` WHERE (`id`= 1723);
DELETE FROM `pool_gameobject` WHERE (`pool_entry` IN(29653, 29654, 29655, 29656, 29657));
DELETE FROM `pool_template` WHERE (`entry` IN (29657, 29656, 29655, 29654, 29653));

-- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SET @OBJECT_1 = 140930;
SET @OBJECT_2 = 140931;
SET @OBJECT_3 = 140932;
SET @OBJECT_4 = 140933;
SET @OBJECT_5 = 140934;

SET @GROUP_ID = 121;

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`) VALUES
(@OBJECT_1, 0, 0, -874.06140136718750, -979.789611816406250, 30.34769630432128906, 0.890116631984710693, 0, 0, 0.430510520935058593, 0.902585566043853759, 2, 5),
(@OBJECT_2, 0, 0, -904.67266845703125, -973.270629882812500, 30.34785270690917968, 3.700104713439941406, 0, 0, -0.96126079559326171, 0.275640487670898437, 2, 5),
(@OBJECT_3, 0, 0, -942.49981689453125, -1009.06530761718750, 30.34785652160644531, 3.612837791442871093, 0, 0, -0.97236919403076171, 0.233448356389999389, 2, 5),
(@OBJECT_4, 0, 0, -922.70379638671875, -1002.16040039062500, 30.34785652160644531, 5.201082706451416015, 0, 0, -0.51503753662109375, 0.857167601585388183, 2, 5),
(@OBJECT_5, 0, 0, -895.92462158203125, -1028.62084960937500, 30.34785652160644531, 3.735006093978881835, 0, 0, -0.95630455017089843, 0.292372345924377441, 2, 5);

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @OBJECT_1, '-1'),
(@GROUP_ID, @OBJECT_2, '-1'),
(@GROUP_ID, @OBJECT_3, '-1'),
(@GROUP_ID, @OBJECT_4, '-1'),
(@GROUP_ID, @OBJECT_5, '-1');

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Hillsbrad Foothills  - Mudsnout Blossom (1) Chest 000', '1', '1', '0', '0');

INSERT INTO `spawn_group_entry` (`Id`, `Entry`, `MinCount`, `MaxCount`, `Chance`) VALUES
(@GROUP_ID, '1723', '0', '0', '0');

-- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SET @OBJECT_1 = 140940;
SET @OBJECT_2 = 140941;
SET @OBJECT_3 = 140942;
SET @OBJECT_4 = 140943;

SET @GROUP_ID = 122;

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`) VALUES
(@OBJECT_1, 0, 0, -912.22930908203125, -1042.35546875000000, 30.34785652160644531, 2.303830623626708984, 0, 0, 0.913544654846191406, 0.406738430261611938, 2, 5),
(@OBJECT_2, 0, 0, -879.27056884765625, -1003.03491210937500, 30.34785270690917968, 1.780233979225158691, 0, 0, 0.777145385742187500, 0.629321098327636718, 2, 5),
(@OBJECT_3, 0, 0, -897.23870849609375, -961.191955566406250, 30.34606933593750000, 1.466075778007507324, 0, 0, 0.669130325317382812, 0.743145048618316650, 2, 5),
(@OBJECT_4, 0, 0, -906.83514404296875, -1006.82489013671875, 30.34785270690917968, 1.989672422409057617, 0, 0, 0.838669776916503906, 0.544640243053436279, 2, 5);

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @OBJECT_1, '-1'),
(@GROUP_ID, @OBJECT_2, '-1'),
(@GROUP_ID, @OBJECT_3, '-1'),
(@GROUP_ID, @OBJECT_4, '-1');

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Hillsbrad Foothills  - Mudsnout Blossom (1) Chest 001', '1', '1', '0', '0');

INSERT INTO `spawn_group_entry` (`Id`, `Entry`, `MinCount`, `MaxCount`, `Chance`) VALUES
(@GROUP_ID, '1723', '0', '0', '0');

-- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SET @OBJECT_1 = 140950;
SET @OBJECT_2 = 140951;
SET @OBJECT_3 = 140952;
SET @OBJECT_4 = 140953;

SET @GROUP_ID = 123;

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`) VALUES
(@OBJECT_1, 0, 0, -935.59399414062500, -985.061645507812500, 30.34785652160644531, 2.844882726669311523, 0, 0, 0.989015579223632812, 0.147811368107795715, 2, 5),
(@OBJECT_2, 0, 0, -916.09692382812500, -974.294799804687500, 30.34785270690917968, 5.742135047912597656, 0, 0, -0.26723766326904296, 0.963630676269531250, 2, 5),
(@OBJECT_3, 0, 0, -904.90454101562500, -950.066284179687500, 30.79017066955566406, 4.921829223632812500, 0, 0, -0.62932014465332031, 0.777146160602569580, 2, 5),
(@OBJECT_4, 0, 0, -910.73925781250000, -1026.55957031250000, 30.34785652160644531, 3.246347188949584960, 0, 0, -0.99862861633300781, 0.052353221923112869, 2, 5);

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @OBJECT_1, '-1'),
(@GROUP_ID, @OBJECT_2, '-1'),
(@GROUP_ID, @OBJECT_3, '-1'),
(@GROUP_ID, @OBJECT_4, '-1');

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Hillsbrad Foothills  - Mudsnout Blossom (1) Chest 002', '1', '1', '0', '0');

INSERT INTO `spawn_group_entry` (`Id`, `Entry`, `MinCount`, `MaxCount`, `Chance`) VALUES
(@GROUP_ID, '1723', '0', '0', '0');

-- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SET @OBJECT_1 = 140960;
SET @OBJECT_2 = 140961;
SET @OBJECT_3 = 140962;
SET @OBJECT_4 = 140963;

SET @GROUP_ID = 124;

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`) VALUES
(@OBJECT_1, 0, 0, -881.29785156250000, -985.348449707031250, 30.34785270690917968, 0.750490784645080566, 0, 0, 0.366500854492187500, 0.930417716503143310, 2, 5),
(@OBJECT_2, 0, 0, -925.70550537109375, -944.539855957031250, 31.26860618591308593, 2.391098499298095703, 0, 0, 0.930417060852050781, 0.366502493619918823, 2, 5),
(@OBJECT_3, 0, 0, -895.21905517578125, -1006.31372070312500, 30.34785270690917968, 2.391098499298095703, 0, 0, 0.930417060852050781, 0.366502493619918823, 2, 5),
(@OBJECT_4, 0, 0, -914.48492431640625, -987.067687988281250, 30.34785270690917968, 0.017452461645007133, 0, 0, 0.008726119995117187, 0.999961912631988525, 2, 5);

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @OBJECT_1, '-1'),
(@GROUP_ID, @OBJECT_2, '-1'),
(@GROUP_ID, @OBJECT_3, '-1'),
(@GROUP_ID, @OBJECT_4, '-1');

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Hillsbrad Foothills  - Mudsnout Blossom (1) Chest 003', '1', '1', '0', '0');

INSERT INTO `spawn_group_entry` (`Id`, `Entry`, `MinCount`, `MaxCount`, `Chance`) VALUES
(@GROUP_ID, '1723', '0', '0', '0');

-- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SET @OBJECT_1 = 140970;
SET @OBJECT_2 = 140971;
SET @OBJECT_3 = 140972;
SET @OBJECT_4 = 140973;

SET @GROUP_ID = 125;

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`) VALUES
(@OBJECT_1, 0, 0, -933.91448974609375, -1017.13909912109375, 30.34785652160644531, 4.485496520996093750, 0, 0, -0.78260803222656250, 0.622514784336090087, 2, 5),
(@OBJECT_2, 0, 0, -906.77130126953125, -999.292114257812500, 30.34785270690917968, 3.839725255966186523, 0, 0, -0.93969249725341796, 0.342020452022552490, 2, 5),
(@OBJECT_3, 0, 0, -883.67126464843750, -1021.39190673828125, 30.34785270690917968, 1.588248729705810546, 0, 0, 0.713250160217285156, 0.700909554958343505, 2, 5),
(@OBJECT_4, 0, 0, -933.45550537109375, -964.129699707031250, 30.34785652160644531, 3.595378875732421875, 0, 0, -0.97437000274658203, 0.224951311945915222, 2, 5);

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @OBJECT_1, '-1'),
(@GROUP_ID, @OBJECT_2, '-1'),
(@GROUP_ID, @OBJECT_3, '-1'),
(@GROUP_ID, @OBJECT_4, '-1');

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Hillsbrad Foothills  - Mudsnout Blossom (1) Chest 004', '1', '1', '0', '0');

INSERT INTO `spawn_group_entry` (`Id`, `Entry`, `MinCount`, `MaxCount`, `Chance`) VALUES
(@GROUP_ID, '1723', '0', '0', '0');
