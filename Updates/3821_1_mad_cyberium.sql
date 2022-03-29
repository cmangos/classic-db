
SET @PATH_ID := 3090004;
SET @PATH_TYPE := 2;

SET @GROUP_ID := 3090005;

SET @CREATURE_0 := 49065;
SET @CREATURE_1 := 49066;
SET @CREATURE_2 := 49067;

DELETE FROM `creature` WHERE (`guid` IN (@CREATURE_0, @CREATURE_1, @CREATURE_2));

INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(@PATH_ID, '01', '-11893.7041015625', '-1880.7554931640625', '63.60831832885742187', '100', '0', '0'),
(@PATH_ID, '02', '-11891.0302734375', '-1885.1721191406250', '63.60831832885742187', '100', '0', '0'),
(@PATH_ID, '03', '-11885.8535156250', '-1884.8515625000000', '63.60831832885742187', '100', '0', '0'),
(@PATH_ID, '04', '-11883.8828125000', '-1881.4486083984375', '63.60831832885742187', '100', '0', '0'),
(@PATH_ID, '05', '-11885.8173828125', '-1877.1693115234375', '63.60831832885742187', '100', '0', '0'),
(@PATH_ID, '06', '-11891.1093750000', '-1875.8903808593750', '63.60831832885742187', '100', '0', '0');

INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@CREATURE_0, '0', '309', '1', '0', '0', '-11885.8408203125', '-1877.8155517578125', '63.5870208740234375', '2.809980154037475585', '21600', '21600', '0', '0', '1', '0', '0', '0'),
(@CREATURE_1, '0', '309', '1', '0', '0', '-11884.8408203125', '-1876.8155517578125', '63.5870208740234375', '0.000000000000000000', '21600', '21600', '0', '0', '1', '0', '0', '0'),
(@CREATURE_2, '0', '309', '1', '0', '0', '-11883.8408203125', '-1875.8155517578125', '63.5870208740234375', '0.000000000000000000', '21600', '21600', '0', '0', '1', '0', '0', '0');

INSERT INTO `creature_spawn_entry` (`guid`, `entry`) VALUES
(@CREATURE_0, '15111'),
(@CREATURE_1, '15111'),
(@CREATURE_2, '15111');

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Zul\'Gurub - Mad Servant (3) Patrol 000', '0', '0', '0', '1');

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @CREATURE_0, '0'),
(@GROUP_ID, @CREATURE_1, '1'),
(@GROUP_ID, @CREATURE_2, '2');

INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(@GROUP_ID, '1', '3', '0', @PATH_ID, @PATH_TYPE, 'Zul\'Gurub - Mad Servant (3) Patrol 000');
