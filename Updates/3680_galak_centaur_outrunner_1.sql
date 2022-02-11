
SET @PATH_ID := 10001;
SET @PATH_TYPE := 4;

SET @GROUP_ID := 10001;

SET @CREATURE_0 := 25998;
SET @CREATURE_1 := 26001;

DELETE FROM `creature` WHERE (`guid` IN (@CREATURE_0, @CREATURE_1));

INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(@PATH_ID, '01', '-2227.053466796875', '-1386.4667968750000', '43.97423171997070312', '100', '0', '0'),
(@PATH_ID, '02', '-2245.915039062500', '-1344.8148193359375', '30.14173507690429687', '100', '0', '0'),
(@PATH_ID, '03', '-2268.830810546875', '-1314.0554199218750', '20.29230117797851562', '100', '0', '0'),
(@PATH_ID, '04', '-2279.645019531250', '-1271.4801025390625', '16.38397598266601562', '100', '0', '0'),
(@PATH_ID, '05', '-2282.102539062500', '-1241.2604980468750', '13.29562664031982421', '100', '0', '0'),
(@PATH_ID, '06', '-2260.679199218750', '-1207.3371582031250', '9.328395843505859375', '100', '0', '0'),
(@PATH_ID, '07', '-2226.927490234375', '-1181.6134033203125', '10.37219715118408203', '100', '0', '0'),
(@PATH_ID, '08', '-2219.546386718750', '-1141.5689697265625', '5.103100776672363281', '100', '0', '0'),
(@PATH_ID, '09', '-2213.303710937500', '-1122.7198486328125', '3.597398996353149414', '100', '0', '0'),
(@PATH_ID, '10', '-2183.893310546875', '-1115.6446533203125', '9.905197143554687500', '100', '0', '0'),
(@PATH_ID, '11', '-2152.304199218750', '-1119.8013916015625', '21.30877304077148437', '100', '0', '0'),
(@PATH_ID, '12', '-2134.706298828125', '-1147.1497802734375', '26.62783241271972656', '100', '0', '0');

INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@CREATURE_0, '0', '1', '1', '0', '0', '-2225.28076171875', '-1386.2265625000000', '44.92912292480468750', '0.0', '300', '300', '0', '0', '1', '0', '0', '0'),
(@CREATURE_1, '0', '1', '1', '0', '0', '-2227.42187500000', '-1393.3824462890625', '44.85366058349609375', '0.0', '300', '300', '0', '0', '1', '0', '0', '0');

INSERT INTO `creature_spawn_entry` (`guid`, `entry`) VALUES
(@CREATURE_0, '2967'), (@CREATURE_0, '2968'),
(@CREATURE_1, '2967'), (@CREATURE_1, '2968');

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Kalimdor - Mulgore - Galak Centaur | Galak Outrunner (2) Patrol 001', '0', '0', '0', '0');

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @CREATURE_0, '0'),
(@GROUP_ID, @CREATURE_1, '1');

INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(@GROUP_ID, '2', '2', '0', @PATH_ID, @PATH_TYPE, 'Kalimdor - Mulgore - Galak Centaur | Galak Outrunner (2) Patrol 001');
