
SET @PATH_ID := 300003;
SET @PATH_TYPE := 4;

SET @GROUP_ID := 300015;

SET @CREATURE_0 := 150083;
SET @CREATURE_1 := 53871;
SET @CREATURE_2 := 53872;

DELETE FROM `creature` WHERE (`guid` IN (@CREATURE_0, @CREATURE_1, @CREATURE_2));
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@CREATURE_0, '0', '30', '1', '0', '0', '-749.00964355468750', '-427.686187744140625', '66.5425262451171875', '0.0', '300', '300', '0', '0', '1', '0', '0', '0'), -- not the actual spawnpoint
(@CREATURE_1, '0', '30', '1', '0', '0', '-747.00964355468750', '-429.686187744140625', '66.5425262451171875', '0.0', '300', '300', '0', '0', '1', '0', '0', '0'), -- not the actual spawnpoint
(@CREATURE_2, '0', '30', '1', '0', '0', '-745.00964355468750', '-431.686187744140625', '66.5425262451171875', '0.0', '300', '300', '0', '0', '1', '0', '0', '0'); -- not the actual spawnpoint

INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(@PATH_ID, '01', '-749.00964355468750', '-427.686187744140625', '66.5425262451171875', '100', '0', '0'),
(@PATH_ID, '02', '-738.63140869140625', '-421.380523681640625', '67.3579559326171875', '100', '0', '0'),
(@PATH_ID, '03', '-721.63500976562500', '-406.322174072265625', '67.7239532470703125', '100', '0', '0'),
(@PATH_ID, '04', '-716.61816406250000', '-390.288970947265625', '67.7145080566406250', '100', '0', '0'),
(@PATH_ID, '05', '-713.53265380859375', '-367.938140869140625', '67.2191467285156250', '100', '0', '0'),
(@PATH_ID, '06', '-720.30621337890625', '-353.030609130859375', '66.9865875244140625', '100', '0', '0'),
(@PATH_ID, '07', '-731.67663574218750', '-343.282287597656250', '66.6787261962890625', '100', '0', '0'),
(@PATH_ID, '08', '-741.40808105468750', '-344.549591064453125', '66.6887817382812500', '100', '0', '0'),
(@PATH_ID, '09', '-731.53546142578125', '-343.368774414062500', '66.6684722900390625', '100', '0', '0'),
(@PATH_ID, '10', '-719.85864257812500', '-353.696716308593750', '66.9414215087890625', '100', '0', '0'),
(@PATH_ID, '11', '-707.65203857421875', '-364.708923339843750', '66.6379547119140625', '100', '0', '0'),
(@PATH_ID, '12', '-695.75152587890625', '-368.396484375000000', '66.2544250488281250', '100', '0', '0'),
(@PATH_ID, '13', '-673.94219970703125', '-377.505096435546875', '65.6372375488281250', '100', '0', '0'),
(@PATH_ID, '14', '-658.81726074218750', '-384.289398193359375', '63.2656250000000000', '100', '0', '0');

INSERT INTO `creature_spawn_entry` (`guid`, `entry`) VALUES
(@CREATURE_0, '12051'),
(@CREATURE_1, '14282'),
(@CREATURE_2, '14282');

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Alterac Valley - Frostwolf Legionnaire | Frostwolf Bloodhound (3) Patrol 001', '0', '0', '0', '0');

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @CREATURE_0, '0'),
(@GROUP_ID, @CREATURE_1, '1'),
(@GROUP_ID, @CREATURE_2, '2');

INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(@GROUP_ID, '2', '2', '0', @PATH_ID, @PATH_TYPE, 'Alterac Valley - Frostwolf Legionnaire | Frostwolf Bloodhound (3) Patrol 001');

INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(@PATH_ID, 'Alterac Valley - Frostwolf Legionnaire | Frostwolf Bloodhound (3) Patrol 001');


