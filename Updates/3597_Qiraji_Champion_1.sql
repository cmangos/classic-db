
SET @PATH_ID := 531 * 10000 + 1;
SET @PATH_TYPE := 4;

SET @CREATURE_ID := 531 * 10000 + 1 * 5;
SET @GROUP_ID := 531 * 10000 + 1;

DELETE FROM `creature_movement` WHERE (`Id` = '88035'); -- Qiraji Champion
DELETE FROM `creature` WHERE (`guid` IN ('88035', '93766', '93767', '93768', '93769'));

INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(@PATH_ID, '01', '-9078.6738281250', '1389.3668212890625', '-107.068115234375000', '100', '0', '0'),
(@PATH_ID, '02', '-9085.1748046875', '1408.8228759765625', '-107.013092041015625', '100', '0', '0'),
(@PATH_ID, '03', '-9079.1240234375', '1418.1312255859375', '-105.842971801757812', '100', '0', '0'),
(@PATH_ID, '04', '-9068.4384765625', '1426.9383544921875', '-105.977264404296875', '100', '0', '0'),
(@PATH_ID, '05', '-9071.8417968750', '1448.6152343750000', '-107.070594787597656', '100', '0', '0'),
(@PATH_ID, '06', '-9079.5488281250', '1463.0495605468750', '-106.396667480468750', '100', '0', '0'),
(@PATH_ID, '07', '-9095.0576171875', '1480.6287841796875', '-104.341926574707031', '100', '0', '0');

INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@CREATURE_ID + 0, '0', '531', '1', '0', '0', '-9074.1845703125', '1385.9174804687500', '-107.318367004394531', '0.0', '604800', '604800', '0', '0', '1', '0', '0', '0'), -- 15252
(@CREATURE_ID + 1, '0', '531', '1', '0', '0', '-9078.2783203125', '1393.5119628906250', '-107.160614013671875', '0.0', '604800', '604800', '0', '0', '1', '0', '0', '0'), -- 15250, 15246
(@CREATURE_ID + 2, '0', '531', '1', '0', '0', '-9080.9550781250', '1388.0480957031250', '-106.888137817382812', '0.0', '604800', '604800', '0', '0', '1', '0', '0', '0'), -- 15250, 15246
(@CREATURE_ID + 3, '0', '531', '1', '0', '0', '-9070.1845703125', '1389.9174804687500', '-107.318367004394531', '0.0', '604800', '604800', '0', '0', '1', '0', '0', '0'), -- 15250, 15246
(@CREATURE_ID + 4, '0', '531', '1', '0', '0', '-9072.4101562500', '1391.7066650390625', '-106.861732482910156', '0.0', '604800', '604800', '0', '0', '1', '0', '0', '0'); -- 15250, 15246

INSERT INTO `creature_spawn_entry` (`guid`, `entry`) VALUES
(@CREATURE_ID + 0, '15252'), -- Qiraji Champion
(@CREATURE_ID + 1, '15250'), (@CREATURE_ID + 1, '15246'), -- Qiraji Slayer / Qiraji Mindslayer
(@CREATURE_ID + 2, '15250'), (@CREATURE_ID + 2, '15246'), -- Qiraji Slayer / Qiraji Mindslayer
(@CREATURE_ID + 3, '15250'), (@CREATURE_ID + 3, '15246'), -- Qiraji Slayer / Qiraji Mindslayer
(@CREATURE_ID + 4, '15250'), (@CREATURE_ID + 4, '15246'); -- Qiraji Slayer / Qiraji Mindslayer

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Temple of Ahn\'Qiraj - Qiraji Champion Patrol 001', '0', '0', '0', '3');

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @CREATURE_ID + 0, '0'),
(@GROUP_ID, @CREATURE_ID + 1, '1'),
(@GROUP_ID, @CREATURE_ID + 2, '2'),
(@GROUP_ID, @CREATURE_ID + 3, '3'),
(@GROUP_ID, @CREATURE_ID + 4, '4');

INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(@GROUP_ID, '6', '6', '0', @PATH_ID, @PATH_TYPE, 'Temple of Ahn\'Qiraj - Qiraji Champion Patrol 001');
