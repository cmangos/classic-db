
SET @PATH_ID := 5330010;
SET @PATH_TYPE := 2;

SET @CREATURE_ID := 5330028;
SET @GROUP_ID := 5330010;

DELETE FROM `creature` WHERE (`guid` IN ('88397', '88398', '88399'));
DELETE FROM `creature_movement` WHERE (`Id` = '88397');

INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(@PATH_ID, '01', '2948.145996093750', '-3374.96630859375', '298.157318115234375', '100', '0', '0'),
(@PATH_ID, '02', '2915.294189453125', '-3343.23437500000', '298.157318115234375', '100', '0', '0'),
(@PATH_ID, '03', '2898.638916015625', '-3327.00830078125', '298.157287597656250', '100', '0', '0');

INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@CREATURE_ID + 0, '0', '533', '1', '0', '0', '2948.145996093750', '-3374.96630859375', '298.157318115234375', '0.0', '3600', '3600', '0', '0', '1', '0', '0', '0'),
(@CREATURE_ID + 1, '0', '533', '1', '0', '0', '2951.145996093750', '-3377.96630859375', '298.157318115234375', '0.0', '3600', '3600', '0', '0', '1', '0', '0', '0'),
(@CREATURE_ID + 2, '0', '533', '1', '0', '0', '2945.145996093750', '-3371.96630859375', '298.157318115234375', '0.0', '3600', '3600', '0', '0', '1', '0', '0', '0');

INSERT INTO `creature_spawn_entry` (`guid`, `entry`) VALUES
(@CREATURE_ID + 0, '16164'),
(@CREATURE_ID + 1, '16165'),
(@CREATURE_ID + 2, '16165');

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Naxxramas - Shade of Naxxramas (3) Patrol 000', '0', '0', '0', '1');

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @CREATURE_ID + 0, '0'),
(@GROUP_ID, @CREATURE_ID + 1, '1'),
(@GROUP_ID, @CREATURE_ID + 2, '2');

INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(@GROUP_ID, '2', '3', '0', @PATH_ID, @PATH_TYPE, 'Naxxramas - Shade of Naxxramas (3) Patrol 000');
