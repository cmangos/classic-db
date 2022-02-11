
SET @PATH_ID := 10000;
SET @PATH_TYPE := 4;

SET @GROUP_ID := 10000;

SET @CREATURE_0 := 26000;
SET @CREATURE_1 := 26019;

DELETE FROM `creature` WHERE (`guid` IN (@CREATURE_0, @CREATURE_1));

INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(@PATH_ID, '01', '-2261.411376953125', '-1456.5129394531250', '46.26078033447265625', '100', '0', '0'),
(@PATH_ID, '02', '-2277.622314453125', '-1422.9306640625000', '32.44640350341796875', '100', '0', '0'),
(@PATH_ID, '03', '-2302.182128906250', '-1411.6473388671875', '28.16486930847167968', '100', '0', '0'),
(@PATH_ID, '04', '-2322.678466796875', '-1384.6729736328125', '21.24376678466796875', '100', '0', '0'),
(@PATH_ID, '05', '-2324.527832031250', '-1341.7761230468750', '10.12503623962402343', '100', '0', '0'),
(@PATH_ID, '06', '-2332.664306640625', '-1306.9366455078125', '2.244270324707031250', '100', '0', '0'),
(@PATH_ID, '07', '-2344.877197265625', '-1270.5764160156250', '-3.62923288345336914', '100', '0', '0'),
(@PATH_ID, '08', '-2339.733642578125', '-1244.6018066406250', '-3.21247148513793945', '100', '0', '0'),
(@PATH_ID, '09', '-2325.123046875000', '-1210.8341064453125', '0.479225397109985351', '100', '0', '0'),
(@PATH_ID, '10', '-2314.431396484375', '-1186.4919433593750', '-5.11853551864624023', '100', '0', '0'),
(@PATH_ID, '11', '-2290.476318359375', '-1145.7753906250000', '-5.83722305297851562', '100', '0', '0'),
(@PATH_ID, '12', '-2306.632812500000', '-1123.4935302734375', '-6.99771499633789062', '100', '0', '0'),
(@PATH_ID, '13', '-2334.346923828125', '-1115.5435791015625', '-8.00800991058349609', '100', '0', '0'),
(@PATH_ID, '14', '-2357.482177734375', '-1119.4997558593750', '-7.95283412933349609', '100', '0', '0'),
(@PATH_ID, '15', '-2375.606445312500', '-1150.5356445312500', '-4.55892419815063476', '100', '0', '0');

INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@CREATURE_0, '0', '1', '1', '0', '0', '-2259.56152343750', '-1458.315185546875', '47.78318023681640625', '0.0', '300', '300', '0', '0', '1', '0', '0', '0'),
(@CREATURE_1, '0', '1', '1', '0', '0', '-2263.56689453125', '-1462.390625000000', '47.19444656372070312', '0.0', '300', '300', '0', '0', '1', '0', '0', '0');

INSERT INTO `creature_spawn_entry` (`guid`, `entry`) VALUES
(@CREATURE_0, '2967'), (@CREATURE_0, '2968'),
(@CREATURE_1, '2967'), (@CREATURE_1, '2968');

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Kalimdor - Mulgore - Galak Centaur | Galak Outrunner (2) Patrol 000', '0', '0', '0', '0');

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @CREATURE_0, '0'),
(@GROUP_ID, @CREATURE_1, '1');

INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(@GROUP_ID, '2', '2', '0', @PATH_ID, @PATH_TYPE, 'Kalimdor - Mulgore - Galak Centaur | Galak Outrunner (2) Patrol 000');
