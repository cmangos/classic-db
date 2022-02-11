
SET @PATH_ID := 10002;
SET @PATH_TYPE := 4;

SET @GROUP_ID := 10002;

SET @CREATURE_0 := 25999;
SET @CREATURE_1 := 26002;

DELETE FROM `creature` WHERE (`guid` IN (@CREATURE_0, @CREATURE_1));

INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(@PATH_ID, '01', '-2407.222656250000', '-1479.5722656250000', '33.05950164794921875', '100', '0', '0'),
(@PATH_ID, '02', '-2415.050781250000', '-1452.6914062500000', '26.85837745666503906', '100', '0', '0'),
(@PATH_ID, '03', '-2444.765625000000', '-1435.3220214843750', '20.92482948303222656', '100', '0', '0'),
(@PATH_ID, '04', '-2450.515625000000', '-1413.0410156250000', '12.66809272766113281', '100', '0', '0'),
(@PATH_ID, '05', '-2458.226806640625', '-1396.3651123046875', '7.196881771087646484', '100', '0', '0'),
(@PATH_ID, '06', '-2472.930175781250', '-1386.0676269531250', '6.301160335540771484', '100', '0', '0'),
(@PATH_ID, '07', '-2489.449462890625', '-1352.6268310546875', '0.586614131927490234', '100', '0', '0'),
(@PATH_ID, '08', '-2490.702636718750', '-1323.0804443359375', '-5.60819864273071289', '100', '0', '0'),
(@PATH_ID, '09', '-2505.409667968750', '-1293.5949707031250', '-5.59694290161132812', '100', '0', '0'),
(@PATH_ID, '10', '-2526.140136718750', '-1257.8902587890625', '-6.33397769927978515', '100', '0', '0'),
(@PATH_ID, '11', '-2525.910644531250', '-1234.6562500000000', '-6.50463199615478515', '100', '0', '0'),
(@PATH_ID, '12', '-2524.524169921875', '-1210.5882568359375', '-6.29260587692260742', '100', '0', '0'),
(@PATH_ID, '13', '-2530.701660156250', '-1183.5764160156250', '-4.12831878662109375', '100', '0', '0'),
(@PATH_ID, '14', '-2548.856445312500', '-1165.3353271484375', '-4.94732379913330078', '100', '0', '0'),
(@PATH_ID, '15', '-2553.756347656250', '-1156.0465087890625', '-6.98687458038330078', '100', '0', '0');

INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@CREATURE_0, '0', '1', '1', '0', '0', '-2415.07275390625', '-1480.5194091796875', '33.02446365356445312', '0.0', '300', '300', '0', '0', '1', '0', '0', '0'),
(@CREATURE_1, '0', '1', '1', '0', '0', '-2406.61816406250', '-1485.7286376953125', '34.27843856811523437', '0.0', '300', '300', '0', '0', '1', '0', '0', '0');

INSERT INTO `creature_spawn_entry` (`guid`, `entry`) VALUES
(@CREATURE_0, '2967'), (@CREATURE_0, '2968'),
(@CREATURE_1, '2967'), (@CREATURE_1, '2968');

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Kalimdor - Mulgore - Galak Centaur | Galak Outrunner (2) Patrol 002', '0', '0', '0', '0');

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @CREATURE_0, '0'),
(@GROUP_ID, @CREATURE_1, '1');

INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(@GROUP_ID, '2', '2', '0', @PATH_ID, @PATH_TYPE, 'Kalimdor - Mulgore - Galak Centaur | Galak Outrunner (2) Patrol 002');
