
SET @PATH_ID := 531 * 10000 + 5;
SET @PATH_TYPE := 2;

SET @CREATURE_ID := 531 * 10000 + 5 * 5;
SET @GROUP_ID := 531 * 10000 + 5;

DELETE FROM `creature_movement` WHERE (`Id` = '88037'); -- Qiraji Champion
DELETE FROM `creature` WHERE (`guid` IN ('88037', '93806', '93807', '93808', '93809'));

INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(@PATH_ID, '01', '-9128.1435546875', '1795.0030517578125', '-42.7415428161621093', '100', '0', '0'),
(@PATH_ID, '02', '-9114.7529296875', '1797.1391601562500', '-42.0484771728515625', '100', '0', '0'),
(@PATH_ID, '03', '-9104.0947265625', '1792.2586669921875', '-42.8485107421875000', '100', '0', '0'),
(@PATH_ID, '04', '-9095.0703125000', '1780.6278076171875', '-42.5338859558105468', '100', '0', '0'),
(@PATH_ID, '05', '-9097.9179687500', '1764.9273681640625', '-42.2499351501464843', '100', '0', '0'),
(@PATH_ID, '06', '-9109.7851562500', '1750.1590576171875', '-42.8714485168457031', '100', '0', '0'),
(@PATH_ID, '07', '-9128.2705078125', '1748.0281982421875', '-42.3823966979980468', '100', '0', '0'),
(@PATH_ID, '08', '-9136.4150390625', '1759.8807373046875', '-42.3914413452148437', '100', '0', '0'),
(@PATH_ID, '09', '-9140.8212890625', '1771.0172119140625', '-42.4429283142089843', '100', '0', '0'),
(@PATH_ID, '10', '-9137.5917968750', '1785.7128906250000', '-42.2807350158691406', '100', '0', '0');

INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@CREATURE_ID + 0, '0', '531', '1', '0', '0', '-9135.3876953125', '1758.1640625000000', '-42.4714469909667968', '0.0', '604800', '604800', '0', '0', '1', '0', '0', '0'), -- 15252
(@CREATURE_ID + 1, '0', '531', '1', '0', '0', '-9138.7714843750', '1763.7926025390625', '-42.1051864624023437', '0.0', '604800', '604800', '0', '0', '1', '0', '0', '0'), -- 15250, 15246
(@CREATURE_ID + 2, '0', '531', '1', '0', '0', '-9140.8300781250', '1752.8560791015625', '-41.9106063842773437', '0.0', '604800', '604800', '0', '0', '1', '0', '0', '0'), -- 15250, 15246
(@CREATURE_ID + 3, '0', '531', '1', '0', '0', '-9130.9658203125', '1753.1555175781250', '-42.6866950988769531', '0.0', '604800', '604800', '0', '0', '1', '0', '0', '0'), -- 15250, 15246
(@CREATURE_ID + 4, '0', '531', '1', '0', '0', '-9131.6708984375', '1762.0242919921875', '-42.5225219726562500', '0.0', '604800', '604800', '0', '0', '1', '0', '0', '0'); -- 15250, 15246

INSERT INTO `creature_spawn_entry` (`guid`, `entry`) VALUES
(@CREATURE_ID + 0, '15252'), -- Qiraji Champion
(@CREATURE_ID + 1, '15250'), (@CREATURE_ID + 1, '15246'), -- Qiraji Slayer / Qiraji Mindslayer
(@CREATURE_ID + 2, '15250'), (@CREATURE_ID + 2, '15246'), -- Qiraji Slayer / Qiraji Mindslayer
(@CREATURE_ID + 3, '15250'), (@CREATURE_ID + 3, '15246'), -- Qiraji Slayer / Qiraji Mindslayer
(@CREATURE_ID + 4, '15250'), (@CREATURE_ID + 4, '15246'); -- Qiraji Slayer / Qiraji Mindslayer

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Temple of Ahn\'Qiraj - Qiraji Champion Patrol 005', '0', '0', '0', '3');

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @CREATURE_ID + 0, '0'),
(@GROUP_ID, @CREATURE_ID + 1, '1'),
(@GROUP_ID, @CREATURE_ID + 2, '2'),
(@GROUP_ID, @CREATURE_ID + 3, '3'),
(@GROUP_ID, @CREATURE_ID + 4, '4');

INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(@GROUP_ID, '6', '6', '0', @PATH_ID, @PATH_TYPE, 'Temple of Ahn\'Qiraj - Qiraji Champion Patrol 005');
