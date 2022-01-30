
SET @PATH_ID := 5330007;
SET @PATH_TYPE := 2;

SET @CREATURE_ID := 5330021;
SET @GROUP_ID := 5330007;

DELETE FROM `creature` WHERE (`guid` IN ('88458' ,'88459'));
DELETE FROM `creature_movement` WHERE (`Id` = '88458');

INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(@PATH_ID, '01', '2804.359863281250', '-3190.487792968750', '273.943084716796875', '100', '0', '0'),
(@PATH_ID, '02', '2820.001708984375', '-3202.298828125000', '273.921356201171875', '100', '0', '0'),
(@PATH_ID, '03', '2844.853271484375', '-3200.757812500000', '273.994842529296875', '100', '0', '0'),
(@PATH_ID, '04', '2848.529541015625', '-3180.427001953125', '273.958709716796875', '100', '0', '0'),
(@PATH_ID, '05', '2846.159423828125', '-3156.340820312500', '273.908660888671875', '100', '0', '0'),
(@PATH_ID, '06', '2841.694580078125', '-3139.440429687500', '273.941894531250000', '100', '0', '0'),
(@PATH_ID, '07', '2832.740722656250', '-3133.464111328125', '273.927124023437500', '100', '0', '0'),
(@PATH_ID, '08', '2816.082519531250', '-3129.769042968750', '273.861236572265625', '100', '0', '0'),
(@PATH_ID, '09', '2805.257080078125', '-3146.218261718750', '273.855377197265625', '100', '0', '0'),
(@PATH_ID, '10', '2799.301757812500', '-3166.833740234375', '273.891754150390625', '100', '0', '0');

INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@CREATURE_ID + 0, '0', '533', '1', '0', '0', '2804.359863281250', '-3190.487792968750', '273.943084716796875', '0.0', '3600', '3600', '0', '0', '1', '0', '0', '0'),
(@CREATURE_ID + 1, '0', '533', '1', '0', '0', '2808.359863281250', '-3194.487792968750', '273.943084716796875', '0.0', '3600', '3600', '0', '0', '1', '0', '0', '0');

INSERT INTO `creature_spawn_entry` (`guid`, `entry`) VALUES
(@CREATURE_ID + 0, '16163'),
(@CREATURE_ID + 1, '16163');

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Naxxramas - Deathknight Cavalier (2) Patrol 000', '0', '0', '0', '1');

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @CREATURE_ID + 0, '0'),
(@GROUP_ID, @CREATURE_ID + 1, '1');

INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(@GROUP_ID, '2', '4', '0', @PATH_ID, @PATH_TYPE, 'Naxxramas - Deathknight Cavalier (2) Patrol 000');
