
SET @PATH_ID := 533 * 10000 + 6;
SET @PATH_TYPE := 4;

SET @CREATURE_ID := 533 * 10000 + 6 * 3;
SET @GROUP_ID := 533 * 10000 + 6;

DELETE FROM `creature` WHERE (`guid` IN ('154229' ,'88465' ,'88466'));
DELETE FROM `creature_movement` WHERE (`Id` = '154229');

INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(@PATH_ID, '01', '2924.502929687500', '-3188.188964843750', '273.55731201171875', '100', '0', '0'),
(@PATH_ID, '02', '2876.385009765625', '-3190.184326171875', '273.55731201171875', '100', '0', '0');

INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@CREATURE_ID + 0, '0', '533', '1', '0', '0', '2924.502929687500', '-3188.188964843750', '273.55731201171875', '0.0', '3600', '3600', '0', '0', '1', '0', '0', '0'),
(@CREATURE_ID + 1, '0', '533', '1', '0', '0', '2931.502929687500', '-3195.188964843750', '273.55731201171875', '0.0', '3600', '3600', '0', '0', '1', '0', '0', '0'),
(@CREATURE_ID + 2, '0', '533', '1', '0', '0', '2917.502929687500', '-3181.188964843750', '273.55731201171875', '0.0', '3600', '3600', '0', '0', '1', '0', '0', '0');

INSERT INTO `creature_spawn_entry` (`guid`, `entry`) VALUES
(@CREATURE_ID + 0, '16861'),
(@CREATURE_ID + 1, '16163'),
(@CREATURE_ID + 2, '16163');

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Naxxramas - Death Lord (3) Patrol 000', '0', '0', '0', '1');

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @CREATURE_ID + 0, '0'),
(@GROUP_ID, @CREATURE_ID + 1, '1'),
(@GROUP_ID, @CREATURE_ID + 2, '2');

INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(@GROUP_ID, '2', '7', '0', @PATH_ID, @PATH_TYPE, 'Naxxramas - Death Lord (3) Patrol 000');
