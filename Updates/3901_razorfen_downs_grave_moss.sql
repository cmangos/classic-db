
DELETE FROM `gameobject` WHERE (`guid` IN (1290001, 1290002, 1290003, 1290004, 1290005, 1290006, 1290007));
DELETE FROM `pool_gameobject` WHERE (`guid` IN (1290001, 1290002, 1290003, 1290004, 1290005, 1290006, 1290007));
DELETE FROM `pool_template` WHERE (`entry` = 45951);

-- --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SET @OBJECT_1 = 1290091;
SET @OBJECT_2 = 1290092;
SET @OBJECT_3 = 1290093;

SET @GROUP_ID = 1290005;

INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(@OBJECT_1, '0', '129', '1', '2340.314453125000', '968.29394531250000', '42.76864624023437500', '3.892086982727050781', '0', '0', '-0.93041706085205078', '0.366502493619918823', '604800', '604800', '100', '1'),
(@OBJECT_2, '0', '129', '1', '2421.997314453125', '982.55090332031250', '48.54520034790039062', '6.073746204376220703', '0', '0', '-0.10452842712402343', '0.994521915912628173', '604800', '604800', '100', '1'),
(@OBJECT_3, '0', '129', '1', '2378.140625000000', '980.01940917968750', '55.00445938110351562', '6.143560886383056640', '0', '0', '-0.06975555419921875', '0.997564136981964111', '604800', '604800', '100', '1');

INSERT INTO `gameobject_spawn_entry` (`guid`, `entry`) VALUES
(@OBJECT_1, '1628'),
(@OBJECT_2, '1628'),
(@OBJECT_3, '1628');

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @OBJECT_1, '-1'),
(@GROUP_ID, @OBJECT_2, '-1'),
(@GROUP_ID, @OBJECT_3, '-1');

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Razorfen Downs - Grave Moss (1) Herb 000', '1', '1', '0', '0');

-- --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SET @OBJECT_1 = 1290094;
SET @OBJECT_2 = 1290095;
SET @OBJECT_3 = 1290096;

SET @GROUP_ID = 1290006;

INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(@OBJECT_1, '0', '129', '1', '2501.062744140625', '666.09265136718750', '53.25121688842773437', '0.314158439636230468', '0', '0', '0.156434059143066406', '0.987688362598419189', '604800', '604800', '100', '1'),
(@OBJECT_2, '0', '129', '1', '2434.400878906250', '671.61999511718750', '54.84750366210937500', '3.926995515823364257', '0', '0', '-0.92387866973876953', '0.382685512304306030', '604800', '604800', '100', '1'),
(@OBJECT_3, '0', '129', '1', '2461.848144531250', '641.77343750000000', '54.53068923950195312', '2.548179388046264648', '0', '0', '0.956304550170898437', '0.292372345924377441', '604800', '604800', '100', '1');

INSERT INTO `gameobject_spawn_entry` (`guid`, `entry`) VALUES
(@OBJECT_1, '1628'),
(@OBJECT_2, '1628'),
(@OBJECT_3, '1628');

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @OBJECT_1, '-1'),
(@GROUP_ID, @OBJECT_2, '-1'),
(@GROUP_ID, @OBJECT_3, '-1');

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Razorfen Downs - Grave Moss (1) Herb 001', '1', '1', '0', '0');

-- --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SET @OBJECT_1 = 1290097;
SET @OBJECT_2 = 1290098;
SET @OBJECT_3 = 1290099;

SET @GROUP_ID = 1290007;

INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(@OBJECT_1, '0', '129', '1', '2565.246337890625', '770.48419189453125', '55.84431457519531250', '1.919861555099487304', '0', '0', '0.819151878356933593', '0.573576688766479492', '604800', '604800', '100', '1'),
(@OBJECT_2, '0', '129', '1', '2613.105468750000', '732.62554931640625', '54.46342849731445312', '1.413715124130249023', '0', '0', '0.649447441101074218', '0.760406434535980224', '604800', '604800', '100', '1'),
(@OBJECT_3, '0', '129', '1', '2599.421142578125', '701.17999267578125', '55.49686813354492187', '1.343901276588439941', '0', '0', '0.622513771057128906', '0.782608807086944580', '604800', '604800', '100', '1');

INSERT INTO `gameobject_spawn_entry` (`guid`, `entry`) VALUES
(@OBJECT_1, '1628'),
(@OBJECT_2, '1628'),
(@OBJECT_3, '1628');

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @OBJECT_1, '-1'),
(@GROUP_ID, @OBJECT_2, '-1'),
(@GROUP_ID, @OBJECT_3, '-1');

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Razorfen Downs - Grave Moss (1) Herb 002', '1', '1', '0', '0');

-- --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SET @OBJECT_1 = 1290100;
SET @OBJECT_2 = 1290101;

SET @GROUP_ID = 1290008;

INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(@OBJECT_1, '0', '129', '1', '2459.579101562500', '673.03179931640625', '63.72379684448242187', '0.349065244197845458', '0', '0', '0.173647880554199218', '0.984807789325714111', '604800', '604800', '100', '1'),
(@OBJECT_2, '0', '129', '1', '2464.407714843750', '674.25347900390625', '63.87917709350585937', '0.855210542678833007', '0', '0', '0.414692878723144531', '0.909961462020874023', '604800', '604800', '100', '1');

INSERT INTO `gameobject_spawn_entry` (`guid`, `entry`) VALUES
(@OBJECT_1, '1628'),
(@OBJECT_2, '1628');

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @OBJECT_1, '-1'),
(@GROUP_ID, @OBJECT_2, '-1');

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Razorfen Downs - Grave Moss (1) Herb 003', '1', '1', '0', '0');
