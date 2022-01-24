
SET @PATH_ID := 531 * 10000 + 0;
SET @PATH_TYPE := 4;

SET @CREATURE_ID := 531 * 10000 + 0 * 5;
SET @GROUP_ID := 531 * 10000 + 0;

DELETE FROM `creature_movement` WHERE (`Id` = '88039'); -- Qiraji Champion
DELETE FROM `creature` WHERE (`guid` IN ('88039', '93782', '93783', '93784', '93785'));

DELETE FROM `creature_linking_template` WHERE (`entry` = '15246') and (`map` = '531');
DELETE FROM `creature_linking_template` WHERE (`entry` = '15250') and (`map` = '531');

INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(@PATH_ID, '01', '-9093.3457031250', '1349.2265625000000', '-105.672706604003906', '100', '0', '0'),
(@PATH_ID, '02', '-9109.5126953125', '1368.4327392578125', '-106.071228027343750', '100', '0', '0'),
(@PATH_ID, '03', '-9113.7900390625', '1379.4674072265625', '-106.010437011718750', '100', '0', '0'),
(@PATH_ID, '04', '-9109.2500000000', '1389.2318115234375', '-105.200683593750000', '100', '0', '0'),
(@PATH_ID, '05', '-9088.7939453125', '1402.9420166015625', '-107.196853637695312', '100', '0', '0'),
(@PATH_ID, '06', '-9090.3417968750', '1424.4956054687500', '-106.906196594238281', '100', '0', '0'),
(@PATH_ID, '07', '-9100.2822265625', '1443.9431152343750', '-105.774887084960937', '100', '0', '0'),
(@PATH_ID, '08', '-9112.7968750000', '1462.5339355468750', '-104.294570922851562', '100', '0', '0'),
(@PATH_ID, '09', '-9122.7578125000', '1479.1680908203125', '-102.829360961914062', '100', '0', '0'),
(@PATH_ID, '10', '-9104.0830078125', '1500.9687500000000', '-100.994880676269531', '100', '0', '0');

INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@CREATURE_ID + 0, '0', '531', '1', '0', '0', '-9092.5517578125', '1348.8146972656250', '-105.581581115722656', '0.0', '604800', '604800', '0', '0', '1', '0', '0', '0'), -- 15252
(@CREATURE_ID + 1, '0', '531', '1', '0', '0', '-9088.5517578125', '1352.8146972656250', '-105.581581115722656', '0.0', '604800', '604800', '0', '0', '1', '0', '0', '0'), -- 15250, 15246
(@CREATURE_ID + 2, '0', '531', '1', '0', '0', '-9095.1708984375', '1343.4462890625000', '-105.668014526367187', '0.0', '604800', '604800', '0', '0', '1', '0', '0', '0'), -- 15250, 15246
(@CREATURE_ID + 3, '0', '531', '1', '0', '0', '-9082.8642578125', '1344.3712158203125', '-104.919570922851562', '0.0', '604800', '604800', '0', '0', '1', '0', '0', '0'), -- 15250, 15246
(@CREATURE_ID + 4, '0', '531', '1', '0', '0', '-9087.4013671875', '1354.6965332031250', '-104.628120422363281', '0.0', '604800', '604800', '0', '0', '1', '0', '0', '0'); -- 15250, 15246

INSERT INTO `creature_spawn_entry` (`guid`, `entry`) VALUES
(@CREATURE_ID + 0, '15252'), -- Qiraji Champion
(@CREATURE_ID + 1, '15250'), (@CREATURE_ID + 1, '15246'), -- Qiraji Slayer / Qiraji Mindslayer
(@CREATURE_ID + 2, '15250'), (@CREATURE_ID + 2, '15246'), -- Qiraji Slayer / Qiraji Mindslayer
(@CREATURE_ID + 3, '15250'), (@CREATURE_ID + 3, '15246'), -- Qiraji Slayer / Qiraji Mindslayer
(@CREATURE_ID + 4, '15250'), (@CREATURE_ID + 4, '15246'); -- Qiraji Slayer / Qiraji Mindslayer

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Temple of Ahn\'Qiraj - Qiraji Champion Patrol 000', '0', '0', '0', '3');

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @CREATURE_ID + 0, '0'),
(@GROUP_ID, @CREATURE_ID + 1, '1'),
(@GROUP_ID, @CREATURE_ID + 2, '2'),
(@GROUP_ID, @CREATURE_ID + 3, '3'),
(@GROUP_ID, @CREATURE_ID + 4, '4');

INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(@GROUP_ID, '6', '6', '0', @PATH_ID, @PATH_TYPE, 'Temple of Ahn\'Qiraj - Qiraji Champion Patrol 000');
