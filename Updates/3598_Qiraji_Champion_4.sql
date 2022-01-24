
SET @PATH_ID := 531 * 10000 + 4;
SET @PATH_TYPE := 4;

SET @CREATURE_ID := 531 * 10000 + 4 * 5;
SET @GROUP_ID := 531 * 10000 + 4;

DELETE FROM `creature_movement` WHERE (`Id` = '88058'); -- Qiraji Champion
DELETE FROM `creature` WHERE (`guid` IN ('88058', '93790', '93791', '93792', '93793'));

INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(@PATH_ID, '01', '-9175.2724609375', '1573.6724853515625', '-81.4005126953125000', '100', '0', '0'),
(@PATH_ID, '02', '-9180.0117187500', '1602.1628417968750', '-75.3506164550781250', '100', '0', '0'),
(@PATH_ID, '03', '-9183.8681640625', '1634.6425781250000', '-68.7780532836914062', '100', '0', '0'),
(@PATH_ID, '04', '-9187.7207031250', '1675.7581787109375', '-59.3742790222167968', '100', '0', '0'),
(@PATH_ID, '05', '-9176.2167968750', '1702.2349853515625', '-48.0883789062500000', '100', '0', '0'),
(@PATH_ID, '06', '-9156.1708984375', '1732.5007324218750', '-41.3034172058105468', '100', '0', '0');

INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@CREATURE_ID + 0, '0', '531', '1', '0', '0', '-9173.8173828125', '1571.8300781250000', '-81.9779510498046875', '0.0', '604800', '604800', '0', '0', '1', '0', '0', '0'), -- 15252
(@CREATURE_ID + 1, '0', '531', '1', '0', '0', '-9174.7460937500', '1577.8453369140625', '-80.7737960815429687', '0.0', '604800', '604800', '0', '0', '1', '0', '0', '0'), -- 15250, 15246
(@CREATURE_ID + 2, '0', '531', '1', '0', '0', '-9183.3349609375', '1571.0091552734375', '-79.6732940673828125', '0.0', '604800', '604800', '0', '0', '1', '0', '0', '0'), -- 15250, 15246
(@CREATURE_ID + 3, '0', '531', '1', '0', '0', '-9170.6181640625', '1561.8321533203125', '-84.2863159179687500', '0.0', '604800', '604800', '0', '0', '1', '0', '0', '0'), -- 15250, 15246
(@CREATURE_ID + 4, '0', '531', '1', '0', '0', '-9166.6425781250', '1574.4926757812500', '-81.4460601806640625', '0.0', '604800', '604800', '0', '0', '1', '0', '0', '0'); -- 15250, 15246

INSERT INTO `creature_spawn_entry` (`guid`, `entry`) VALUES
(@CREATURE_ID + 0, '15252'), -- Qiraji Champion
(@CREATURE_ID + 1, '15250'), (@CREATURE_ID + 1, '15246'), -- Qiraji Slayer / Qiraji Mindslayer
(@CREATURE_ID + 2, '15250'), (@CREATURE_ID + 2, '15246'), -- Qiraji Slayer / Qiraji Mindslayer
(@CREATURE_ID + 3, '15250'), (@CREATURE_ID + 3, '15246'), -- Qiraji Slayer / Qiraji Mindslayer
(@CREATURE_ID + 4, '15250'), (@CREATURE_ID + 4, '15246'); -- Qiraji Slayer / Qiraji Mindslayer

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Temple of Ahn\'Qiraj - Qiraji Champion Patrol 004', '0', '0', '0', '3');

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @CREATURE_ID + 0, '0'),
(@GROUP_ID, @CREATURE_ID + 1, '1'),
(@GROUP_ID, @CREATURE_ID + 2, '2'),
(@GROUP_ID, @CREATURE_ID + 3, '3'),
(@GROUP_ID, @CREATURE_ID + 4, '4');

INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(@GROUP_ID, '6', '6', '0', @PATH_ID, @PATH_TYPE, 'Temple of Ahn\'Qiraj - Qiraji Champion Patrol 004');
