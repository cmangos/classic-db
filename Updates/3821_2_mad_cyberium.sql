
SET @PATH_ID := 3090005;
SET @PATH_TYPE := 2;

SET @GROUP_ID := 3090006;

SET @CREATURE_0 := 49062;
SET @CREATURE_1 := 49063;
SET @CREATURE_2 := 49064;

DELETE FROM `creature` WHERE (`guid` IN (@CREATURE_0, @CREATURE_1, @CREATURE_2));

INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(@PATH_ID, '01', '-11879.2148437500', '-1887.6453857421875', '63.60831832885742187', '100', '0', '0'),
(@PATH_ID, '02', '-11880.9931640625', '-1892.7508544921875', '63.60831832885742187', '100', '0', '0'),
(@PATH_ID, '03', '-11877.7763671875', '-1896.8364257812500', '63.60831832885742187', '100', '0', '0'),
(@PATH_ID, '04', '-11872.0585937500', '-1895.8775634765625', '63.89884567260742187', '100', '0', '0'),
(@PATH_ID, '05', '-11870.7783203125', '-1890.4826660156250', '64.42716979980468750', '100', '0', '0'),
(@PATH_ID, '06', '-11874.4931640625', '-1886.7122802734375', '64.23136901855468750', '100', '0', '0');

INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@CREATURE_0, '0', '309', '1', '0', '0', '-11872.7783203125', '-1888.9879150390625', '64.28685760498046875', '0.855211317539215087', '21600', '21600', '0', '0', '1', '0', '0', '0'),
(@CREATURE_1, '0', '309', '1', '0', '0', '-11871.7783203125', '-1887.9879150390625', '64.28685760498046875', '0.000000000000000000', '21600', '21600', '0', '0', '1', '0', '0', '0'),
(@CREATURE_2, '0', '309', '1', '0', '0', '-11870.7783203125', '-1886.9879150390625', '64.28685760498046875', '0.000000000000000000', '21600', '21600', '0', '0', '1', '0', '0', '0');

INSERT INTO `creature_spawn_entry` (`guid`, `entry`) VALUES
(@CREATURE_0, '15111'),
(@CREATURE_1, '15111'),
(@CREATURE_2, '15111');

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Zul\'Gurub - Mad Servant (3) Patrol 001', '0', '0', '0', '1');

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @CREATURE_0, '0'),
(@GROUP_ID, @CREATURE_1, '1'),
(@GROUP_ID, @CREATURE_2, '2');

INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(@GROUP_ID, '1', '3', '0', @PATH_ID, @PATH_TYPE, 'Zul\'Gurub - Mad Servant (3) Patrol 001');
