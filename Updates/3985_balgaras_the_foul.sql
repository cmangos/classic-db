
SET @GROUP_ID := 44;

SET @CREATURE_0 := 11000;
SET @CREATURE_1 := 11001;
SET @CREATURE_2 := 11002;
SET @CREATURE_3 := 11003;
SET @CREATURE_4 := 11004;
SET @CREATURE_5 := 11005;
SET @CREATURE_6 := 11006;

DELETE FROM `creature` WHERE `guid` = '10043';

INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@CREATURE_0, '0', '0', '1', '0', '0', '-2834.9870605469', '-2870.6940917969', '32.6675491333', '3.875704765319820', '300', '300', '2', '0', '1', '0', '0', '1'),
(@CREATURE_1, '0', '0', '1', '0', '0', '-2659.9709472656', '-2320.4445800781', '70.4773025513', '5.515240192413330', '300', '300', '2', '0', '1', '0', '0', '1'),
(@CREATURE_2, '0', '0', '1', '0', '0', '-2566.2189941406', '-2350.4428710938', '80.0179977417', '0.379844337701797', '300', '300', '2', '0', '1', '0', '0', '1'),
(@CREATURE_3, '0', '0', '1', '0', '0', '-2946.4973144531', '-2969.4484863281', '30.9222011566', '0.811208128929138', '300', '300', '2', '0', '1', '0', '0', '1'),
(@CREATURE_4, '0', '0', '1', '0', '0', '-2869.6140136719', '-2941.6936035156', '33.7879409790', '0.151147961616516', '300', '300', '2', '0', '1', '0', '0', '1'),
(@CREATURE_5, '0', '0', '1', '0', '0', -2931.105, -2973.809, 30.6708, 5.282537, '300', '300', '2', '0', '1', '0', '0', '1'),
(@CREATURE_6, '0', '0', '1', '0', '0', '-2927.9348144531', '-2959.5249023438', '31.4318408966', '4.272197723388670', '300', '300', '2', '0', '1', '0', '0', '1');

INSERT INTO `creature_spawn_entry` (`guid`, `entry`) VALUES
(@CREATURE_0, '1364'),
(@CREATURE_1, '1364'),
(@CREATURE_2, '1364'),
(@CREATURE_3, '1364'),
(@CREATURE_4, '1364'),
(@CREATURE_5, '1364'),
(@CREATURE_6, '1364');

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Wetlands - Balgaras the Foul (1) Wandering 000', '0', '1', '0', '0');

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @CREATURE_0, '0'),
(@GROUP_ID, @CREATURE_1, '1'),
(@GROUP_ID, @CREATURE_2, '2'),
(@GROUP_ID, @CREATURE_3, '3'),
(@GROUP_ID, @CREATURE_4, '4'),
(@GROUP_ID, @CREATURE_5, '5'),
(@GROUP_ID, @CREATURE_6, '6');
