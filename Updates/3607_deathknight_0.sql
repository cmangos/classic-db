
SET @PATH_ID := 5330009;
SET @PATH_TYPE := 4;

SET @CREATURE_ID := 5330025;
SET @GROUP_ID := 5330009;

DELETE FROM `creature` WHERE (`guid` IN ('88440', '88441', '88442'));

INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(@PATH_ID, '01', '2886.359619140625', ' -3218.305419921875', '298.157318115234375', '100', '0', '0'),
(@PATH_ID, '02', '2871.514892578125', ' -3216.968994140625', '298.157318115234375', '100', '0', '0'),
(@PATH_ID, '03', '2860.459960937500', ' -3207.909912109375', '298.285980224609375', '100', '0', '0'),
(@PATH_ID, '04', '2848.306396484375', ' -3195.512207031250', '298.356781005859375', '100', '0', '0'),
(@PATH_ID, '05', '2839.447509765625', ' -3185.542236328125', '298.256744384765625', '100', '0', '0'),
(@PATH_ID, '06', '2828.432128906250', ' -3176.264648437500', '298.157318115234375', '100', '0', '0'),
(@PATH_ID, '07', '2813.295898437500', ' -3175.835205078125', '298.322174072265625', '100', '0', '0'),
(@PATH_ID, '08', '2790.895019531250', ' -3179.500488281250', '298.214019775390625', '100', '0', '0');

INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@CREATURE_ID + 0, '0', '533', '1', '0', '0', '2886.359619140625', ' -3218.305419921875', '298.157318115234375', '0.0', '3600', '3600', '0', '0', '1', '0', '0', '0'),
(@CREATURE_ID + 1, '0', '533', '1', '0', '0', '2889.359619140625', ' -3221.305419921875', '298.157318115234375', '0.0', '3600', '3600', '0', '0', '1', '0', '0', '0'),
(@CREATURE_ID + 2, '0', '533', '1', '0', '0', '2883.359619140625', ' -3215.305419921875', '298.157318115234375', '0.0', '3600', '3600', '0', '0', '1', '0', '0', '0');

INSERT INTO `creature_spawn_entry` (`guid`, `entry`) VALUES
(@CREATURE_ID + 0, '16146'),
(@CREATURE_ID + 1, '16158'),
(@CREATURE_ID + 2, '16158');

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Naxxramas - Deathknight (3) Patrol 000', '0', '0', '0', '1');

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @CREATURE_ID + 0, '0'),
(@GROUP_ID, @CREATURE_ID + 1, '1'),
(@GROUP_ID, @CREATURE_ID + 2, '2');

INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(@GROUP_ID, '3', '3', '0', @PATH_ID, @PATH_TYPE, 'Naxxramas - Deathknight (3) Patrol 000');
