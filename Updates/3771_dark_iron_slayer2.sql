
SET @PATH_ID := 6;
SET @PATH_TYPE := 4;

SET @GROUP_ID := 18;

SET @CREATURE_0 := 6226;
SET @CREATURE_1 := 6227;

DELETE FROM `creature` WHERE (`guid` IN (@CREATURE_0, @CREATURE_1));

INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(@PATH_ID, '01', '-6832.77783203125', '-1364.0415039062500', '169.3916015625000000', '100', '0', '0'),
(@PATH_ID, '02', '-6838.95263671875', '-1373.0416259765625', '169.4327850341796875', '100', '0', '0'),
(@PATH_ID, '03', '-6846.06640625000', '-1382.5578613281250', '168.5883026123046875', '100', '0', '0'),
(@PATH_ID, '04', '-6858.46093750000', '-1393.6273193359375', '167.8077850341796875', '100', '0', '0'),
(@PATH_ID, '05', '-6864.72460937500', '-1396.9213867187500', '167.8077850341796875', '100', '0', '0'),
(@PATH_ID, '06', '-6860.73681640625', '-1398.8800048828125', '167.8077850341796875', '100', '0', '0'),
(@PATH_ID, '07', '-6852.96191406250', '-1400.8114013671875', '167.8007354736328125', '100', '0', '0'),
(@PATH_ID, '08', '-6845.40527343750', '-1404.3270263671875', '167.8007354736328125', '100', '0', '0'),
(@PATH_ID, '09', '-6838.50683593750', '-1416.4206542968750', '165.8598175048828125', '100', '0', '0'),
(@PATH_ID, '10', '-6834.23388671875', '-1424.0594482421875', '162.2746124267578125', '100', '0', '0'),
(@PATH_ID, '11', '-6822.19384765625', '-1437.9088134765625', '164.0865325927734375', '100', '0', '0'),
(@PATH_ID, '12', '-6809.95898437500', '-1457.3189697265625', '169.6004486083984375', '100', '0', '0');

INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@CREATURE_0, '0', '0', '1', '0', '0', '-6827.51855468750', '-1356.5922851562500', '169.4420471191406250', '0.0', '300', '300', '0', '0', '1', '0', '0', '0'),
(@CREATURE_1, '0', '0', '1', '0', '0', '-6831.35839843750', '-1355.3375244140625', '169.4420471191406250', '0.0', '300', '300', '0', '0', '1', '0', '0', '0');

INSERT INTO `creature_spawn_entry` (`guid`, `entry`) VALUES
(@CREATURE_0, '5844'),
(@CREATURE_1, '5844');

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Searing Gorge - Dark Iron Slayer (2) Patrol 002', '0', '0', '0', '0');

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @CREATURE_0, '0'),
(@GROUP_ID, @CREATURE_1, '1');

INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(@GROUP_ID, '2', '3', '0', @PATH_ID, @PATH_TYPE, 'Searing Gorge - Dark Iron Slayer (2) Patrol 002');
