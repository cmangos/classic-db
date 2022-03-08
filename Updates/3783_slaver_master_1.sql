
SET @CREATURE_0 := '6771';
SET @CREATURE_1 := '6836'; -- duplicate

DELETE FROM `creature` WHERE `guid` IN (@CREATURE_0, @CREATURE_1);
DELETE FROM `creature_movement` WHERE `id` IN (@CREATURE_0);

INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@CREATURE_0, '0', '0', '1', '0', '0', '-6906.8056640625', '-1215.2720947265625', '178.4346771240234375', '0.0', '300', '300', '0', '0', '1', '0', '0', '4');

INSERT INTO `creature_movement` (`Id`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(@CREATURE_0, '01', '-6906.47412109375', '-1214.7137451171875', '178.3810577392578125', '100', '0', '0'),
(@CREATURE_0, '02', '-6911.52636718750', '-1233.3146972656250', '178.3810577392578125', '100', '0', '0'),
(@CREATURE_0, '03', '-6911.12500000000', '-1262.9444580078125', '178.7266845703125000', '100', '0', '0'),
(@CREATURE_0, '04', '-6918.87890625000', '-1292.2712402343750', '182.9430389404296875', '100', '0', '0'),
(@CREATURE_0, '05', '-6908.81201171875', '-1315.1503906250000', '180.1653594970703125', '100', '0', '0'),
(@CREATURE_0, '06', '-6901.74560546875', '-1348.9106445312500', '173.6742401123046875', '100', '0', '0');

INSERT INTO `creature_spawn_entry` (`guid`, `entry`) VALUES
(@CREATURE_0, '5844'), (@CREATURE_0, '5846');
