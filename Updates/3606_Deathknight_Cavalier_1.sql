
SET @PATH_ID := 5330008;
SET @PATH_TYPE := 4;

SET @CREATURE_ID := 5330023;
SET @GROUP_ID := 5330008;

DELETE FROM `creature` WHERE (`guid` IN ('88473' ,'88474'));
DELETE FROM `creature_movement` WHERE (`Id` IN ('88473' ,'88474'));

INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(@PATH_ID, '01', '2787.387939453125', '-3287.190917968750', '267.757324218750000', '100', '0', '0'),
(@PATH_ID, '02', '2787.864257812500', '-3320.594970703125', '267.757293701171875', '100', '0', '0'),
(@PATH_ID, '03', '2787.930908203125', '-3363.628173828125', '267.757293701171875', '100', '0', '0');

INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@CREATURE_ID + 0, '0', '533', '1', '0', '0', '2787.387939453125', '-3287.190917968750', '267.757324218750000', '0.0', '3600', '3600', '0', '0', '1', '0', '0', '0'),
(@CREATURE_ID + 1, '0', '533', '1', '0', '0', '2783.387939453125', '-3283.190917968750', '267.757324218750000', '0.0', '3600', '3600', '0', '0', '1', '0', '0', '0');

INSERT INTO `creature_spawn_entry` (`guid`, `entry`) VALUES
(@CREATURE_ID + 0, '16163'),
(@CREATURE_ID + 1, '16163');

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Naxxramas - Deathknight Cavalier (2) Patrol 001', '0', '0', '0', '1');

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @CREATURE_ID + 0, '0'),
(@GROUP_ID, @CREATURE_ID + 1, '1');

INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(@GROUP_ID, '2', '4', '0', @PATH_ID, @PATH_TYPE, 'Naxxramas - Deathknight Cavalier (2) Patrol 001');
