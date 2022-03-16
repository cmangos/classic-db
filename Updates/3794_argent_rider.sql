
SET @PATH_ID := 8;
SET @PATH_TYPE := 4;

SET @GROUP_ID := 20;

SET @CREATURE_0 := 68543;
SET @CREATURE_1 := 68922;

DELETE FROM `creature` WHERE (`guid` IN (@CREATURE_0, @CREATURE_1));
DELETE FROM `creature_movement` WHERE (`id` IN (@CREATURE_0, @CREATURE_1));

INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@CREATURE_0, '0', '0', '1', '0', '0', '2161.16552734375', '-5273.84228515625', '95.9596405029296875', '4.485496044158935546', '300', '300', '0', '0', '1', '0', '0', '0'),
(@CREATURE_1, '0', '0', '1', '0', '0', '2161.40234375000', '-5270.77636718750', '96.0015869140625000', '4.607669353485107421', '300', '300', '0', '0', '1', '0', '0', '0');

INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(@PATH_ID, '01', '2174.382812500000', '-5267.23925781250', '92.39779663085937500', '100', '0', '0'),
(@PATH_ID, '02', '2199.779052734375', '-5263.61572265625', '84.73688507080078125', '100', '0', '0'),
(@PATH_ID, '03', '2225.019775390625', '-5261.57666015625', '75.83567047119140625', '100', '0', '0'),
(@PATH_ID, '04', '2261.172363281250', '-5259.14208984375', '77.85931396484375000', '100', '0', '0'),
(@PATH_ID, '05', '2286.344482421875', '-5260.94921875000', '81.52421569824218750', '100', '0', '0'),
(@PATH_ID, '06', '2306.322509765625', '-5265.40722656250', '82.41838836669921875', '100', '0', '0'),
(@PATH_ID, '07', '2325.788818359375', '-5275.86962890625', '82.19671630859375000', '100', '0', '0'),
(@PATH_ID, '08', '2345.250488281250', '-5295.37353515625', '83.41072082519531250', '100', '0', '0');

INSERT INTO `creature_spawn_entry` (`guid`, `entry`) VALUES
(@CREATURE_0, '11102'),
(@CREATURE_1, '11102');

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Eastern Plaguelands - Light\'s Hope Chapel - Argent Rider (2) Patrol 000', '0', '0', '0', '0');

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @CREATURE_0, '0'),
(@GROUP_ID, @CREATURE_1, '1');

INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(@GROUP_ID, '2', '5', '0', @PATH_ID, @PATH_TYPE, 'Eastern Plaguelands - Light\'s Hope Chapel - Argent Rider (2) Patrol 000');
