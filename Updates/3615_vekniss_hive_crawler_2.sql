
SET @PATH_ID := 5310013;
SET @PATH_TYPE := 2;

SET @CREATURE_ID := 5310054;
SET @GROUP_ID := 5310013;

DELETE FROM `creature` WHERE (`guid` IN ('87943', '87944'));
DELETE FROM `creature_movement` WHERE (`Id` = '87943');

INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(@PATH_ID, '01', '-8514.6552734375', '1377.6085205078125', '-59.2344360351562500', '100', '0', '0'),
(@PATH_ID, '02', '-8489.9941406250', '1376.6693115234375', '-59.1318092346191406', '100', '0', '0'),
(@PATH_ID, '03', '-8465.5048828125', '1376.5633544921875', '-58.3909873962402343', '100', '0', '0'),
(@PATH_ID, '04', '-8458.9023437500', '1363.8769531250000', '-59.9796943664550781', '100', '0', '0'),
(@PATH_ID, '05', '-8473.6806640625', '1356.5004882812500', '-58.9508132934570312', '100', '0', '0'),
(@PATH_ID, '06', '-8498.5283203125', '1361.1031494140625', '-60.2328681945800781', '100', '0', '0'),
(@PATH_ID, '07', '-8519.7382812500', '1370.1785888671875', '-61.1108322143554687', '100', '0', '0'),
(@PATH_ID, '08', '-8546.0146484375', '1380.1450195312500', '-60.8494110107421875', '100', '0', '0'),
(@PATH_ID, '09', '-8558.5087890625', '1386.0772705078125', '-62.2414627075195312', '100', '0', '0'),
(@PATH_ID, '10', '-8573.1240234375', '1395.7513427734375', '-63.7966880798339843', '100', '0', '0'),
(@PATH_ID, '11', '-8568.9365234375', '1404.8011474609375', '-61.8523483276367187', '100', '0', '0'),
(@PATH_ID, '12', '-8557.2070312500', '1408.6376953125000', '-58.6142005920410156', '100', '0', '0'),
(@PATH_ID, '13', '-8541.9501953125', '1393.2868652343750', '-59.2116508483886718', '100', '0', '0'),
(@PATH_ID, '14', '-8526.7001953125', '1385.1582031250000', '-58.8444023132324218', '100', '0', '0');

INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@CREATURE_ID + 0, '0', '531', '1', '0', '0', '-8514.6552734375', '1377.6085205078125', '-59.2344360351562500', '0.0', '3600', '3600', '0', '0', '1', '0', '0', '0'),
(@CREATURE_ID + 1, '0', '531', '1', '0', '0', '-8504.6552734375', '1367.6085205078125', '-59.2344360351562500', '0.0', '3600', '3600', '0', '0', '1', '0', '0', '0');

INSERT INTO `creature_spawn_entry` (`guid`, `entry`) VALUES
(@CREATURE_ID + 0, '15240'),
(@CREATURE_ID + 1, '15240');

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Temple of Ahn\'Qiraj - Vekniss Hive Crawler (2) Patrol 002', '0', '0', '0', '1');

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @CREATURE_ID + 0, '0'),
(@GROUP_ID, @CREATURE_ID + 1, '1');

INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(@GROUP_ID, '2', '10', '0', @PATH_ID, @PATH_TYPE, 'Temple of Ahn\'Qiraj - Vekniss Hive Crawler (2) Patrol 002');
