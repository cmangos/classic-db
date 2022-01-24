
SET @PATH_ID := 531 * 10000 + 3;
SET @PATH_TYPE := 4;

SET @CREATURE_ID := 531 * 10000 + 3 * 5;
SET @GROUP_ID := 531 * 10000 + 3;

DELETE FROM `creature_movement` WHERE (`Id` = '88036'); -- Qiraji Champion
DELETE FROM `creature` WHERE (`guid` IN ('88036', '93798', '93799', '93800', '93801'));

INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(@PATH_ID, '01', '-9146.9130859375', '1513.6383056640625', '-95.4997253417968750', '100', '0', '0'),
(@PATH_ID, '02', '-9154.6074218750', '1528.3338623046875', '-92.5103683471679687', '100', '0', '0'),
(@PATH_ID, '03', '-9163.4658203125', '1546.0941162109375', '-88.6937942504882812', '100', '0', '0'),
(@PATH_ID, '04', '-9180.5683593750', '1553.9805908203125', '-82.7134857177734375', '100', '0', '0'),
(@PATH_ID, '05', '-9207.5546875000', '1555.0427246093750', '-80.2188034057617187', '100', '0', '0'),
(@PATH_ID, '06', '-9226.7158203125', '1588.6461181640625', '-74.2768478393554687', '100', '0', '0');

INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@CREATURE_ID + 0, '0', '531', '1', '0', '0', '-9146.1845703125', '1511.3677978515625', '-96.0422744750976562', '0.0', '604800', '604800', '0', '0', '1', '0', '0', '0'), -- 15252
(@CREATURE_ID + 1, '0', '531', '1', '0', '0', '-9150.7451171875', '1516.9583740234375', '-94.5417327880859375', '0.0', '604800', '604800', '0', '0', '1', '0', '0', '0'), -- 15250, 15246
(@CREATURE_ID + 2, '0', '531', '1', '0', '0', '-9151.3857421875', '1506.5079345703125', '-96.5796051025390625', '0.0', '604800', '604800', '0', '0', '1', '0', '0', '0'), -- 15250, 15246
(@CREATURE_ID + 3, '0', '531', '1', '0', '0', '-9141.0722656250', '1500.0097656250000', '-99.1170578002929687', '0.0', '604800', '604800', '0', '0', '1', '0', '0', '0'), -- 15250, 15246
(@CREATURE_ID + 4, '0', '531', '1', '0', '0', '-9140.9150390625', '1513.5092773437500', '-95.9734039306640625', '0.0', '604800', '604800', '0', '0', '1', '0', '0', '0'); -- 15250, 15246

INSERT INTO `creature_spawn_entry` (`guid`, `entry`) VALUES
(@CREATURE_ID + 0, '15252'), -- Qiraji Champion
(@CREATURE_ID + 1, '15250'), (@CREATURE_ID + 1, '15246'), -- Qiraji Slayer / Qiraji Mindslayer
(@CREATURE_ID + 2, '15250'), (@CREATURE_ID + 2, '15246'), -- Qiraji Slayer / Qiraji Mindslayer
(@CREATURE_ID + 3, '15250'), (@CREATURE_ID + 3, '15246'), -- Qiraji Slayer / Qiraji Mindslayer
(@CREATURE_ID + 4, '15250'), (@CREATURE_ID + 4, '15246'); -- Qiraji Slayer / Qiraji Mindslayer

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Temple of Ahn\'Qiraj - Qiraji Champion Patrol 003', '0', '0', '0', '3');

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @CREATURE_ID + 0, '0'),
(@GROUP_ID, @CREATURE_ID + 1, '1'),
(@GROUP_ID, @CREATURE_ID + 2, '2'),
(@GROUP_ID, @CREATURE_ID + 3, '3'),
(@GROUP_ID, @CREATURE_ID + 4, '4');

INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(@GROUP_ID, '6', '6', '0', @PATH_ID, @PATH_TYPE, 'Temple of Ahn\'Qiraj - Qiraji Champion Patrol 003');
