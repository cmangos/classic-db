
SET @PATH_ID := 531 * 10000 + 6;
SET @PATH_TYPE := 4;

SET @CREATURE_ID := 531 * 10000 + 6 * 5;
SET @GROUP_ID := 531 * 10000 + 6;

DELETE FROM `creature_movement` WHERE (`Id` = '88030'); -- Qiraji Champion
DELETE FROM `creature` WHERE (`guid` IN ('88030', '93822', '93823', '93824', '93825'));

INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(@PATH_ID, '01', '-9020.9218750000', '1856.5653076171875', '-44.1737098693847656', '100', '0', '0'),
(@PATH_ID, '02', '-8999.2861328125', '1868.4244384765625', '-42.0378952026367187', '100', '0', '0'),
(@PATH_ID, '03', '-8979.0107421875', '1871.0108642578125', '-38.3182678222656250', '100', '0', '0'),
(@PATH_ID, '04', '-8955.8242187500', '1867.7888183593750', '-28.1178550720214843', '100', '0', '0'),
(@PATH_ID, '05', '-8941.5205078125', '1865.6835937500000', '-23.8075237274169921', '100', '0', '0'),
(@PATH_ID, '06', '-8925.3281250000', '1863.9913330078125', '-23.1596584320068359', '100', '0', '0');

-- SPAWN POSITON NOT KNOWN, GROUP DOES NOT REFILL AFTER COMBAT
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@CREATURE_ID + 0, '0', '531', '1', '0', '0', '-9020.9218750000', '1856.5653076171875', '-44.1737098693847656', '0.0', '604800', '604800', '0', '0', '1', '0', '0', '0'), -- 15252
(@CREATURE_ID + 1, '0', '531', '1', '0', '0', '-9016.9218750000', '1860.5653076171875', '-44.1737098693847656', '0.0', '604800', '604800', '0', '0', '1', '0', '0', '0'), -- 15250, 15246
(@CREATURE_ID + 2, '0', '531', '1', '0', '0', '-9016.9218750000', '1852.5653076171875', '-44.1737098693847656', '0.0', '604800', '604800', '0', '0', '1', '0', '0', '0'), -- 15250, 15246
(@CREATURE_ID + 3, '0', '531', '1', '0', '0', '-9024.9218750000', '1852.5653076171875', '-44.1737098693847656', '0.0', '604800', '604800', '0', '0', '1', '0', '0', '0'), -- 15250, 15246
(@CREATURE_ID + 4, '0', '531', '1', '0', '0', '-9024.9218750000', '1860.5653076171875', '-44.1737098693847656', '0.0', '604800', '604800', '0', '0', '1', '0', '0', '0'); -- 15250, 15246

INSERT INTO `creature_spawn_entry` (`guid`, `entry`) VALUES
(@CREATURE_ID + 0, '15252'), -- Qiraji Champion
(@CREATURE_ID + 1, '15250'), (@CREATURE_ID + 1, '15246'), -- Qiraji Slayer / Qiraji Mindslayer
(@CREATURE_ID + 2, '15250'), (@CREATURE_ID + 2, '15246'), -- Qiraji Slayer / Qiraji Mindslayer
(@CREATURE_ID + 3, '15250'), (@CREATURE_ID + 3, '15246'), -- Qiraji Slayer / Qiraji Mindslayer
(@CREATURE_ID + 4, '15250'), (@CREATURE_ID + 4, '15246'); -- Qiraji Slayer / Qiraji Mindslayer

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Temple of Ahn\'Qiraj - Qiraji Champion Patrol 006', '0', '0', '0', '1');

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @CREATURE_ID + 0, '0'),
(@GROUP_ID, @CREATURE_ID + 1, '1'),
(@GROUP_ID, @CREATURE_ID + 2, '2'),
(@GROUP_ID, @CREATURE_ID + 3, '3'),
(@GROUP_ID, @CREATURE_ID + 4, '4');

INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(@GROUP_ID, '6', '6', '0', @PATH_ID, @PATH_TYPE, 'Temple of Ahn\'Qiraj - Qiraji Champion Patrol 006');
