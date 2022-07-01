
DELETE FROM `creature` WHERE (`guid` IN (53888, 53889, 53890, 53891, 53892));

-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SET @CREATURE_0 := 52066;
SET @CREATURE_1 := 52067;

SET @GROUP_ID := 300002;

INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@CREATURE_0, '0', '30', '1', '0', '0', '-724.37915039062500', '-700.21075439453125', '52.19295120239257812', '3.054326057434082031', '300', '300', '0', '0', '1', '0', '0', '0'),
(@CREATURE_1, '0', '30', '1', '0', '0', '-726.13659667968750', '-697.26086425781250', '51.48531341552734375', '3.682644605636596679', '300', '300', '0', '0', '1', '0', '0', '0');

INSERT INTO `creature_spawn_entry` (`guid`, `entry`) VALUES
(@CREATURE_0, '14285'),
(@CREATURE_1, '14285');

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Alterac Valley - Frostwolf Battleguard (2) Standing 000', '0', '0', '0', '0');

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @CREATURE_0, '0'),
(@GROUP_ID, @CREATURE_1, '1');

-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SET @CREATURE_0 := 52068;
SET @CREATURE_1 := 52069;

SET @GROUP_ID := 300003;

INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@CREATURE_0, '0', '30', '1', '0', '0', '-730.85919189453125', '-704.43371582031250', '52.08921813964843750', '1.815142393112182617', '300', '300', '0', '0', '1', '0', '0', '0'),
(@CREATURE_1, '0', '30', '1', '0', '0', '-733.18218994140625', '-701.71722412109375', '51.56636810302734375', '0.453785598278045654', '300', '300', '0', '0', '1', '0', '0', '0');

INSERT INTO `creature_spawn_entry` (`guid`, `entry`) VALUES
(@CREATURE_0, '14285'),
(@CREATURE_1, '14285');

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Alterac Valley - Frostwolf Battleguard (2) Standing 001', '0', '0', '0', '0');

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @CREATURE_0, '0'),
(@GROUP_ID, @CREATURE_1, '1');

-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SET @CREATURE_0 := 52070;
SET @CREATURE_1 := 52071;

SET @GROUP_ID := 300004;

INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@CREATURE_0, '0', '30', '1', '0', '0', '-750.26977539062500', '-682.46777343750000', '51.06615829467773437', '1.745329260826110839', '300', '300', '0', '0', '1', '0', '0', '0'),
(@CREATURE_1, '0', '30', '1', '0', '0', '-753.45629882812500', '-682.26141357421875', '51.38626098632812500', '1.658062815666198730', '300', '300', '0', '0', '1', '0', '0', '0');

INSERT INTO `creature_spawn_entry` (`guid`, `entry`) VALUES
(@CREATURE_0, '14285'),
(@CREATURE_1, '14285');

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Alterac Valley - Frostwolf Battleguard (2) Standing 002', '0', '0', '0', '0');

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @CREATURE_0, '0'),
(@GROUP_ID, @CREATURE_1, '1');

-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SET @CREATURE_0 := 52072;
SET @CREATURE_1 := 52073;

SET @GROUP_ID := 300005;

INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@CREATURE_0, '0', '30', '1', '0', '0', '-753.82446289062500', '-673.71429443359375', '51.85850906372070312', '5.113814830780029296', '300', '300', '0', '0', '1', '0', '0', '0'),
(@CREATURE_1, '0', '30', '1', '0', '0', '-757.16516113281250', '-675.38659667968750', '52.06695175170898437', '5.148721218109130859', '300', '300', '0', '0', '1', '0', '0', '0');

INSERT INTO `creature_spawn_entry` (`guid`, `entry`) VALUES
(@CREATURE_0, '14285'),
(@CREATURE_1, '14285');

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Alterac Valley - Frostwolf Battleguard (2) Standing 003', '0', '0', '0', '0');

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @CREATURE_0, '0'),
(@GROUP_ID, @CREATURE_1, '1');

-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SET @CREATURE_0 := 52074;
SET @CREATURE_1 := 52075;

SET @GROUP_ID := 300006;

INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@CREATURE_0, '0', '30', '1', '0', '0', '-784.32226562500000', '-677.31848144531250', '52.22661209106445312', '4.869468688964843750', '300', '300', '0', '0', '1', '0', '0', '0'),
(@CREATURE_1, '0', '30', '1', '0', '0', '-780.08465576171875', '-676.08911132812500', '52.46458053588867187', '4.276056766510009765', '300', '300', '0', '0', '1', '0', '0', '0');

INSERT INTO `creature_spawn_entry` (`guid`, `entry`) VALUES
(@CREATURE_0, '14285'),
(@CREATURE_1, '14285');

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Alterac Valley - Frostwolf Battleguard (2) Standing 004', '0', '0', '0', '0');

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @CREATURE_0, '0'),
(@GROUP_ID, @CREATURE_1, '1');

-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SET @CREATURE_0 := 52076;
SET @CREATURE_1 := 52077;

SET @GROUP_ID := 300007;

INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@CREATURE_0, '0', '30', '1', '0', '0', '-798.60870361328125', '-682.10449218750000', '51.33703613281250000', '1.326450228691101074', '300', '300', '0', '0', '1', '0', '0', '0'),
(@CREATURE_1, '0', '30', '1', '0', '0', '-802.93164062500000', '-679.85321044921875', '51.14188385009765625', '0.977384388446807861', '300', '300', '0', '0', '1', '0', '0', '0');

INSERT INTO `creature_spawn_entry` (`guid`, `entry`) VALUES
(@CREATURE_0, '14285'),
(@CREATURE_1, '14285');

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Alterac Valley - Frostwolf Battleguard (2) Standing 005', '0', '0', '0', '0');

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @CREATURE_0, '0'),
(@GROUP_ID, @CREATURE_1, '1');

-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SET @CREATURE_0 := 52078;
SET @CREATURE_1 := 52079;

SET @GROUP_ID := 300008;

INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@CREATURE_0, '0', '30', '1', '0', '0', '-826.89495849609375', '-629.26269531250000', '54.19227218627929687', '5.707226753234863281', '300', '300', '0', '0', '1', '0', '0', '0'),
(@CREATURE_1, '0', '30', '1', '0', '0', '-828.78387451171875', '-633.76257324218750', '54.29007339477539062', '0.209439516067504882', '300', '300', '0', '0', '1', '0', '0', '0');

INSERT INTO `creature_spawn_entry` (`guid`, `entry`) VALUES
(@CREATURE_0, '14285'),
(@CREATURE_1, '14285');

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Alterac Valley - Frostwolf Battleguard (2) Standing 006', '0', '0', '0', '0');

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @CREATURE_0, '0'),
(@GROUP_ID, @CREATURE_1, '1');

-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SET @CREATURE_0 := 52080;
SET @CREATURE_1 := 52081;

SET @GROUP_ID := 300009;

INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@CREATURE_0, '0', '30', '1', '0', '0', '-817.18402099609375', '-630.11816406250000', '54.35856246948242187', '1.884955525398254394', '300', '300', '0', '0', '1', '0', '0', '0'),
(@CREATURE_1, '0', '30', '1', '0', '0', '-820.43859863281250', '-631.77764892578125', '54.31755447387695312', '2.268928050994873046', '300', '300', '0', '0', '1', '0', '0', '0');

INSERT INTO `creature_spawn_entry` (`guid`, `entry`) VALUES
(@CREATURE_0, '14285'),
(@CREATURE_1, '14285');

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Alterac Valley - Frostwolf Battleguard (2) Standing 007', '0', '0', '0', '0');

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @CREATURE_0, '0'),
(@GROUP_ID, @CREATURE_1, '1');

-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SET @CREATURE_0 := 52082;
SET @CREATURE_1 := 52083;

SET @GROUP_ID := 300010;

INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@CREATURE_0, '0', '30', '1', '0', '0', '-835.49737548828125', '-604.79614257812500', '54.49388885498046875', '4.782202243804931640', '300', '300', '0', '0', '1', '0', '0', '0'),
(@CREATURE_1, '0', '30', '1', '0', '0', '-830.36395263671875', '-607.46759033203125', '54.36055374145507812', '4.363323211669921875', '300', '300', '0', '0', '1', '0', '0', '0');

INSERT INTO `creature_spawn_entry` (`guid`, `entry`) VALUES
(@CREATURE_0, '14285'),
(@CREATURE_1, '14285');

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Alterac Valley - Frostwolf Battleguard (2) Standing 008', '0', '0', '0', '0');

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @CREATURE_0, '0'),
(@GROUP_ID, @CREATURE_1, '1');

-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SET @CREATURE_0 := 52084;
SET @CREATURE_1 := 52085;

SET @GROUP_ID := 300011;

INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@CREATURE_0, '0', '30', '1', '0', '0', '-835.60351562500000', '-621.29864501953125', '53.95571517944335937', '1.221730470657348632', '300', '300', '0', '0', '1', '0', '0', '0'),
(@CREATURE_1, '0', '30', '1', '0', '0', '-839.33831787109375', '-620.15136718750000', '54.03830718994140625', '1.361356854438781738', '300', '300', '0', '0', '1', '0', '0', '0');

INSERT INTO `creature_spawn_entry` (`guid`, `entry`) VALUES
(@CREATURE_0, '14285'),
(@CREATURE_1, '14285');

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Alterac Valley - Frostwolf Battleguard (2) Standing 009', '0', '0', '0', '0');

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @CREATURE_0, '0'),
(@GROUP_ID, @CREATURE_1, '1');

-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SET @CREATURE_0 := 52086;
SET @CREATURE_1 := 52087;

SET @GROUP_ID := 300012;

INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@CREATURE_0, '0', '30', '1', '0', '0', '-877.55706787109375', '-541.96081542968750', '57.12834930419921875', '2.687807083129882812', '300', '300', '0', '0', '1', '0', '0', '0'),
(@CREATURE_1, '0', '30', '1', '0', '0', '-878.15020751953125', '-538.22656250000000', '56.12885284423828125', '3.298672199249267578', '300', '300', '0', '0', '1', '0', '0', '0');

INSERT INTO `creature_spawn_entry` (`guid`, `entry`) VALUES
(@CREATURE_0, '14285'),
(@CREATURE_1, '14285');

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Alterac Valley - Frostwolf Battleguard (2) Standing 010', '0', '0', '0', '0');

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @CREATURE_0, '0'),
(@GROUP_ID, @CREATURE_1, '1');

-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SET @CREATURE_0 := 52088;
SET @CREATURE_1 := 52089;

SET @GROUP_ID := 300013;

INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@CREATURE_0, '0', '30', '1', '0', '0', '-883.42816162109375', '-547.64044189453125', '57.52365493774414062', '1.570796370506286621', '300', '300', '0', '0', '1', '0', '0', '0'),
(@CREATURE_1, '0', '30', '1', '0', '0', '-886.26953125000000', '-544.83483886718750', '56.44618225097656250', '1.134464025497436523', '300', '300', '0', '0', '1', '0', '0', '0');

INSERT INTO `creature_spawn_entry` (`guid`, `entry`) VALUES
(@CREATURE_0, '14285'),
(@CREATURE_1, '14285');

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Alterac Valley - Frostwolf Battleguard (2) Standing 011', '0', '0', '0', '0');

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @CREATURE_0, '0'),
(@GROUP_ID, @CREATURE_1, '1');
