
SET @PATH_ID := 5310008;
SET @PATH_TYPE := 4;

SET @CREATURE_ID := 5310040;
SET @GROUP_ID := 5310008;

DELETE FROM `creature_movement` WHERE (`Id` = '87672'); -- Vekniss Warrior
DELETE FROM `creature` WHERE (`guid` IN ('87672', '87673', '87674'));

INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(@PATH_ID, '01', '-8592.8759765625', '2114.8293457031250', '-7.14986896514892578', '100', '0', '0'),
(@PATH_ID, '02', '-8594.9736328125', '2078.6813964843750', '-1.48920774459838867', '100', '0', '0'),
(@PATH_ID, '03', '-8580.0000000000', '2032.7731933593750', '-2.66590356826782226', '100', '0', '0'),
(@PATH_ID, '04', '-8581.2539062500', '1985.6977539062500', '-1.82993054389953613', '100', '0', '0'),
(@PATH_ID, '05', '-8578.0478515625', '1940.5390625000000', '-0.05542709305882453', '100', '0', '0'),
(@PATH_ID, '06', '-8549.4082031250', '1941.2994384765625', '5.889514923095703125', '100', '0', '0'),
(@PATH_ID, '07', '-8531.9404296875', '1962.4514160156250', '11.87915992736816406', '100', '0', '0'),
(@PATH_ID, '08', '-8536.5341796875', '1991.9782714843750', '20.75557708740234375', '100', '0', '0'),
(@PATH_ID, '09', '-8511.7460937500', '1997.7044677734375', '21.83114242553710937', '100', '0', '0'),
(@PATH_ID, '10', '-8469.1396484375', '2013.3811035156250', '16.31519508361816406', '100', '0', '0'),
(@PATH_ID, '11', '-8433.6113281250', '2039.5191650390625', '8.586797714233398437', '100', '0', '0'),
(@PATH_ID, '12', '-8401.6875000000', '2057.2651367187500', '9.628651618957519531', '100', '0', '0'),
(@PATH_ID, '13', '-8407.5048828125', '2014.4508056640625', '8.537125587463378906', '100', '0', '0'),
(@PATH_ID, '14', '-8405.5263671875', '1984.2806396484375', '2.675156116485595703', '100', '0', '0'),
(@PATH_ID, '15', '-8389.8339843750', '1963.3521728515625', '2.780949831008911132', '100', '0', '0');

INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@CREATURE_ID + 0, '0', '531', '1', '0', '0', '-8590.21', '2107.35', '-6.10023', '0.0', '21600', '21600', '0', '0', '1', '0', '0', '0'),
(@CREATURE_ID + 1, '0', '531', '1', '0', '0', '-8590.50', '2118.22', '-7.69795', '0.0', '21600', '21600', '0', '0', '1', '0', '0', '0'),
(@CREATURE_ID + 2, '0', '531', '1', '0', '0', '-8590.91', '2125.32', '-8.23708', '0.0', '21600', '21600', '0', '0', '1', '0', '0', '0');

INSERT INTO `creature_spawn_entry` (`guid`, `entry`) VALUES
(@CREATURE_ID + 0, '15230'),
(@CREATURE_ID + 1, '15230'),
(@CREATURE_ID + 2, '15230');

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Temple of Ahn\'Qiraj - Vekniss Warrior Patrol 000', '0', '0', '0', '1');

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @CREATURE_ID + 0, '0'),
(@GROUP_ID, @CREATURE_ID + 1, '1'),
(@GROUP_ID, @CREATURE_ID + 2, '2');

INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(@GROUP_ID, '1', '5', '0', @PATH_ID, @PATH_TYPE, 'Temple of Ahn\'Qiraj - Vekniss Warrior Patrol 000');
