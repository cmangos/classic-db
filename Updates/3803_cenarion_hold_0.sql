
SET @PATH_ID := 10008;
SET @PATH_TYPE := 4;

SET @GROUP_ID := 10008;

SET @CREATURE_0 := 42895;
SET @CREATURE_1 := 42896;

DELETE FROM `creature` WHERE (`guid` IN (@CREATURE_0, @CREATURE_1));
DELETE FROM `creature_movement` WHERE (`id` = @CREATURE_0);
DELETE FROM `creature_linking` WHERE (`guid` = @CREATURE_1);

INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(@PATH_ID, '01', '-6886.19433593750', '893.58953857421875', '29.85743141174316406', '100', '0', '0'),
(@PATH_ID, '02', '-6885.69628906250', '875.66674804687500', '33.88318634033203125', '100', '0', '0'),
(@PATH_ID, '03', '-6875.41162109375', '856.72509765625000', '36.65996551513671875', '100', '0', '0'),
(@PATH_ID, '04', '-6865.23291015625', '835.85430908203125', '40.14589691162109375', '100', '0', '0'),
(@PATH_ID, '05', '-6853.87207031250', '808.16729736328125', '42.77117919921875000', '100', '0', '0'),
(@PATH_ID, '06', '-6842.17333984375', '789.61029052734375', '42.80141830444335937', '100', '0', '0'),
(@PATH_ID, '07', '-6833.73046875000', '771.60076904296875', '43.68960189819335937', '100', '0', '0'),
(@PATH_ID, '08', '-6827.97119140625', '750.58386230468750', '42.77940750122070312', '100', '0', '0'),
(@PATH_ID, '09', '-6816.82275390625', '733.69891357421875', '41.72349929809570312', '100', '0', '0'),
(@PATH_ID, '10', '-6808.96582031250', '716.48217773437500', '39.17466735839843750', '100', '0', '0'),
(@PATH_ID, '11', '-6803.82812500000', '699.70977783203125', '34.71686935424804687', '100', '0', '0'),
(@PATH_ID, '12', '-6802.73144531250', '671.53961181640625', '23.50117111206054687', '100', '0', '0');

INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@CREATURE_0, '0', '1', '1', '0', '0', '-6870.93603515625', '897.3962402343750', '30.20238304138183593', '3.490658521652221679', '300', '300', '0', '0', '1', '0', '0', '0'),
(@CREATURE_1, '0', '1', '1', '0', '0', '-6866.91259765625', '899.2886962890625', '31.40401268005371093', '3.560471534729003906', '300', '300', '0', '0', '1', '0', '0', '0');

INSERT INTO `creature_spawn_entry` (`guid`, `entry`) VALUES
(@CREATURE_0, '15184'),
(@CREATURE_1, '15184');

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Silithus - Cenarion Hold - Cenarion Hold Infantry (2) Patrol 000', '0', '0', '0', '0');

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @CREATURE_0, '0'),
(@GROUP_ID, @CREATURE_1, '1');

INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(@GROUP_ID, '1', '6', '0', @PATH_ID, @PATH_TYPE, 'Silithus - Cenarion Hold - Cenarion Hold Infantry (2) Patrol 000');
