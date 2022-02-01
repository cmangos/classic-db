
SET @PATH_ID := 5310011;
SET @PATH_TYPE := 4;

SET @CREATURE_ID := 5310050;
SET @GROUP_ID := 5310011;

DELETE FROM `creature` WHERE (`guid` IN ('87939', '87940'));
DELETE FROM `creature_movement` WHERE (`Id` = '87939');

INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(@PATH_ID, '01', '-8169.1269531250', '1230.1358642578125', '-92.4485168457031250', '100', '0', '0'),
(@PATH_ID, '02', '-8192.8349609375', '1226.3389892578125', '-91.9450988769531250', '100', '0', '0'),
(@PATH_ID, '03', '-8202.3828125000', '1264.1734619140625', '-92.1549835205078125', '100', '0', '0'),
(@PATH_ID, '04', '-8238.9277343750', '1292.9935302734375', '-87.6650848388671875', '100', '0', '0'),
(@PATH_ID, '05', '-8248.0986328125', '1339.0043945312500', '-85.2191772460937500', '100', '0', '0'),
(@PATH_ID, '06', '-8290.7392578125', '1337.2712402343750', '-79.7229461669921875', '100', '0', '0');

INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@CREATURE_ID + 0, '0', '531', '1', '0', '0', '-8169.1269531250', '1230.1358642578125', '-92.4485168457031250', '0.0', '3600', '3600', '0', '0', '1', '0', '0', '0'),
(@CREATURE_ID + 1, '0', '531', '1', '0', '0', '-8159.1269531250', '1220.1358642578125', '-92.4485168457031250', '0.0', '3600', '3600', '0', '0', '1', '0', '0', '0');

INSERT INTO `creature_spawn_entry` (`guid`, `entry`) VALUES
(@CREATURE_ID + 0, '15240'),
(@CREATURE_ID + 1, '15240');

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Temple of Ahn\'Qiraj - Vekniss Hive Crawler (2) Patrol 000', '0', '0', '0', '1');

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @CREATURE_ID + 0, '0'),
(@GROUP_ID, @CREATURE_ID + 1, '1');

INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(@GROUP_ID, '2', '10', '0', @PATH_ID, @PATH_TYPE, 'Temple of Ahn\'Qiraj - Vekniss Hive Crawler (2) Patrol 000');
