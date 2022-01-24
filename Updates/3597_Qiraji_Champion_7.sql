
SET @PATH_ID := 531 * 10000 + 7;
SET @PATH_TYPE := 4;

SET @CREATURE_ID := 531 * 10000 + 7 * 5;
SET @GROUP_ID := 531 * 10000 + 7;

DELETE FROM `creature_movement` WHERE (`Id` = '88038'); -- Qiraji Champion
DELETE FROM `creature` WHERE (`guid` IN ('88038', '93814', '93815', '93816', '93817'));

INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(@PATH_ID, '01', '-9070.9531250000', '1977.7622070312500', '-53.0485153198242187', '100', '0', '0'),
(@PATH_ID, '02', '-9056.8251953125', '1945.5935058593750', '-50.7928009033203125', '100', '0', '0'),
(@PATH_ID, '03', '-9048.2822265625', '1925.1910400390625', '-50.7821922302246093', '100', '0', '0'),
(@PATH_ID, '04', '-9041.1435546875', '1908.4006347656250', '-47.9489364624023437', '100', '0', '0'),
(@PATH_ID, '05', '-9047.0205078125', '1886.4639892578125', '-45.3320121765136718', '100', '0', '0'),
(@PATH_ID, '06', '-9051.9111328125', '1860.0577392578125', '-44.3121871948242187', '100', '0', '0'),
(@PATH_ID, '07', '-9069.8320312500', '1836.4388427734375', '-44.2485198974609375', '100', '0', '0'),
(@PATH_ID, '08', '-9094.5771484375', '1803.9617919921875', '-43.6433906555175781', '100', '0', '0');

INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@CREATURE_ID + 0, '0', '531', '1', '0', '0', '-9071.6152343750', '1980.7689208984375', '-53.0564079284667968', '0.0', '604800', '604800', '0', '0', '1', '0', '0', '0'), -- 15252
(@CREATURE_ID + 1, '0', '531', '1', '0', '0', '-9070.7226562500', '1972.3378906250000', '-52.9168548583984375', '0.0', '604800', '604800', '0', '0', '1', '0', '0', '0'), -- 15250, 15246
(@CREATURE_ID + 2, '0', '531', '1', '0', '0', '-9064.3613281250', '1983.8914794921875', '-52.1888160705566406', '0.0', '604800', '604800', '0', '0', '1', '0', '0', '0'), -- 15250, 15246
(@CREATURE_ID + 3, '0', '531', '1', '0', '0', '-9074.1425781250', '1988.3170166015625', '-53.2059326171875000', '0.0', '604800', '604800', '0', '0', '1', '0', '0', '0'), -- 15250, 15246
(@CREATURE_ID + 4, '0', '531', '1', '0', '0', '-9080.6669921875', '1979.2271728515625', '-51.8933067321777343', '0.0', '604800', '604800', '0', '0', '1', '0', '0', '0'); -- 15250, 15246

INSERT INTO `creature_spawn_entry` (`guid`, `entry`) VALUES
(@CREATURE_ID + 0, '15252'), -- Qiraji Champion
(@CREATURE_ID + 1, '15250'), (@CREATURE_ID + 1, '15246'), -- Qiraji Slayer / Qiraji Mindslayer
(@CREATURE_ID + 2, '15250'), (@CREATURE_ID + 2, '15246'), -- Qiraji Slayer / Qiraji Mindslayer
(@CREATURE_ID + 3, '15250'), (@CREATURE_ID + 3, '15246'), -- Qiraji Slayer / Qiraji Mindslayer
(@CREATURE_ID + 4, '15250'), (@CREATURE_ID + 4, '15246'); -- Qiraji Slayer / Qiraji Mindslayer

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Temple of Ahn\'Qiraj - Qiraji Champion Patrol 007', '0', '0', '0', '3');

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @CREATURE_ID + 0, '0'),
(@GROUP_ID, @CREATURE_ID + 1, '1'),
(@GROUP_ID, @CREATURE_ID + 2, '2'),
(@GROUP_ID, @CREATURE_ID + 3, '3'),
(@GROUP_ID, @CREATURE_ID + 4, '4');

INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(@GROUP_ID, '6', '6', '0', @PATH_ID, @PATH_TYPE, 'Temple of Ahn\'Qiraj - Qiraji Champion Patrol 007');
