
SET @PATH_ID := 3090000;
SET @PATH_TYPE := 2;

SET @GROUP_ID := 3090000;

SET @CREATURE_0 := 49090;
SET @CREATURE_1 := 49091;

DELETE FROM `creature` WHERE (`guid` IN (@CREATURE_0, @CREATURE_1));
DELETE FROM `creature_movement` WHERE (`id` IN ('49116', '49117', '49118', '49119')); -- other close-by group thats incorrectly patrolling

UPDATE `creature` SET `spawndist` = '3', `MovementType` = '1' WHERE (`guid` IN ('49116', '49117', '49118', '49119')); -- other close-by group thats incorrectly patrolling
UPDATE `creature_template` SET `SpeedWalk` = '1' WHERE (`Entry` IN ('11371', '11372'));

INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(@PATH_ID, '01', '-11874.8427734375', '-1325.8515625000000', '78.68711090087890625', '100', '0', '0'),
(@PATH_ID, '02', '-11888.3642578125', '-1338.8316650390625', '74.93051910400390625', '100', '0', '0'),
(@PATH_ID, '03', '-11904.7236328125', '-1344.1304931640625', '75.75994873046875000', '100', '0', '0'),
(@PATH_ID, '04', '-11905.3798828125', '-1360.0091552734375', '70.85076904296875000', '100', '0', '0'),
(@PATH_ID, '05', '-11901.8798828125', '-1377.7012939453125', '68.11927032470703125', '100', '0', '0'),
(@PATH_ID, '06', '-11884.8662109375', '-1380.3492431640625', '66.02857208251953125', '100', '0', '0'),
(@PATH_ID, '07', '-11880.4785156250', '-1399.4224853515625', '62.97412872314453125', '100', '0', '0'),
(@PATH_ID, '08', '-11878.0380859375', '-1407.8879394531250', '62.20181655883789062', '100', '0', '0'),
(@PATH_ID, '09', '-11894.9189453125', '-1416.4415283203125', '57.01041030883789062', '100', '0', '0'),
(@PATH_ID, '10', '-11921.1582031250', '-1428.7435302734375', '46.96670150756835937', '100', '0', '0'),
(@PATH_ID, '11', '-11894.9189453125', '-1416.4415283203125', '57.01041030883789062', '100', '0', '0'),
(@PATH_ID, '12', '-11878.0380859375', '-1407.8879394531250', '62.20181655883789062', '100', '0', '0'),
(@PATH_ID, '13', '-11880.4785156250', '-1399.4224853515625', '62.97412872314453125', '100', '0', '0'),
(@PATH_ID, '14', '-11884.8662109375', '-1380.3492431640625', '66.02857208251953125', '100', '0', '0'),
(@PATH_ID, '15', '-11901.8798828125', '-1377.7012939453125', '68.11927032470703125', '100', '0', '0'),
(@PATH_ID, '16', '-11905.3613281250', '-1360.0527343750000', '70.93377685546875000', '100', '0', '0'),
(@PATH_ID, '17', '-11904.7236328125', '-1344.1304931640625', '75.75994873046875000', '100', '0', '0'),
(@PATH_ID, '18', '-11888.3642578125', '-1338.8316650390625', '74.93051910400390625', '100', '0', '0'),
(@PATH_ID, '19', '-11874.8427734375', '-1325.8515625000000', '78.68711090087890625', '100', '0', '0'),
(@PATH_ID, '20', '-11863.7529296875', '-1313.4700927734375', '78.72680664062500000', '100', '0', '0');

INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@CREATURE_0, '0', '309', '1', '0', '0', '-11862.1572265625', '-1317.2054443359375', '79.0371551513671875', '4.153883457183837890', '21600', '21600', '0', '0', '1', '0', '0', '0'),
(@CREATURE_1, '0', '309', '1', '0', '0', '-11866.1230468750', '-1312.9659423828125', '78.2720336914062500', '4.363323211669921875', '21600', '21600', '0', '0', '1', '0', '0', '0');

INSERT INTO `creature_spawn_entry` (`guid`, `entry`) VALUES
(@CREATURE_0, '11371'), (@CREATURE_0, '11372'),
(@CREATURE_1, '11371'), (@CREATURE_1, '11372');

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Zul\'Gurub - Razzashi Serpent | Razzashi Adder (2) Patrol 000', '0', '0', '0', '1');

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @CREATURE_0, '0'),
(@GROUP_ID, @CREATURE_1, '1');

INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(@GROUP_ID, '2', '2', '0', @PATH_ID, @PATH_TYPE, 'Zul\'Gurub - Razzashi Serpent | Razzashi Adder (2) Patrol 000');
