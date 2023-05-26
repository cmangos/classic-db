
UPDATE `creature_template` SET `Scale` = 0, `SpeedWalk` = 1 WHERE (`Entry` IN (5982, 8299, 8300)); -- Spiteflayer, Black Slayer & Ravage

DELETE FROM `creature` WHERE (`guid` IN (38089, 134366, 134367, 134368, 134369, 134370, 134371, 134372, 134373, 134374, 134375, 134376, 134377, 134378, 134379));
DELETE FROM `pool_creature_template` WHERE (`id` = 8299);
DELETE FROM `pool_template` WHERE (`entry` = 1032);

SET @CGUID := 140300;
SET @SGUID := 259;

INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
(@CGUID + 000, 0, 0, 1, -11613.4140625, -3246.4384765625, 9.895672798156738281, 4.661602020263671875, 43200, 86400, 0, 4);

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`, `StringId`) VALUES
(@SGUID + 000, 'Blasted Lands - Mojo the Twisted (1) Placeholder 000', 0, 1, 0, 0, 0),
(@SGUID + 001, 'Blasted Lands - Magronos the Unyielding (1) Placeholder 000', 0, 1, 0, 0, 0),
(@SGUID + 002, 'Blasted Lands - Akubar the Seer (1) Placeholder 000', 0, 1, 0, 0, 0),
(@SGUID + 003, 'Blasted Lands - Spiteflayer (1) Rare 000', 0, 1, 0, 0, 0),
(@SGUID + 004, 'Blasted Lands - Ravage (1) Placeholder 000', 0, 1, 0, 0, 0),
(@SGUID + 005, 'Blasted Lands - Clack the Reaver (1) Placeholder 000', 0, 1, 0, 0, 0),
(@SGUID + 006, 'Blasted Lands - Deatheye (1) Placeholder 000', 0, 1, 0, 0, 0),
(@SGUID + 007, 'Blasted Lands - Grunter (1) Placeholder 000', 0, 1, 0, 0, 0),
(@SGUID + 008, 'Blasted Lands - Dreadscorn (1) Placeholder 000', 0, 1, 0, 0, 0);

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`, `Chance`) VALUES
(@SGUID + 003, @CGUID + 000, 0, 0);

INSERT INTO `spawn_group_entry` (`Id`, `Entry`, `MinCount`, `MaxCount`, `Chance`) VALUES
(@SGUID + 003, 8299, 0, 0, 0);

INSERT INTO `creature_movement` (`Id`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(@CGUID + 000, 01, -11613.5673828125, -3249.457031250000, 10.52262496948242187, 100, 0, 0),
(@CGUID + 000, 02, -11586.6298828125, -3255.968261718750, 7.473718166351318359, 100, 0, 0),
(@CGUID + 000, 03, -11545.4394531250, -3232.966552734375, 6.822238445281982421, 100, 0, 0),
(@CGUID + 000, 04, -11515.6035156250, -3234.018798828125, 7.503141403198242187, 100, 0, 0),
(@CGUID + 000, 05, -11482.7412109375, -3234.609130859375, 15.56205844879150390, 100, 0, 0),
(@CGUID + 000, 06, -11448.4423828125, -3243.542968750000, 12.30460548400878906, 100, 0, 0),
(@CGUID + 000, 07, -11409.3671875000, -3257.221435546875, 8.255241394042968750, 100, 0, 0),
(@CGUID + 000, 08, -11381.3095703125, -3259.954101562500, 7.126345634460449218, 100, 0, 0),
(@CGUID + 000, 09, -11356.5566406250, -3287.013427734375, 8.758649826049804687, 100, 0, 0);
