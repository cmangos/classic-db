
DELETE FROM `creature` WHERE (`guid` = 3902);
DELETE FROM `creature_movement` WHERE (`id` = 3902);
DELETE FROM `pool_template` WHERE (`entry` = 1037);
DELETE FROM `pool_creature_template` WHERE (`id` = 8304);

SET @CGUID := 140323;
SET @SGUID := 267; -- exists

UPDATE `creature_template` SET `SpeedWalk` = 1 WHERE (`Entry` = 8304);

INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
(@CGUID + 000, 0, 0, 1, -11317.439453125, -2551.75537109375, 95.79638671875, 5.12041473388671875, 18000, 28800, 0, 4);

UPDATE `spawn_group` SET `Name` = 'Blasted Lands - Dreadscorn (1) Rare 000' WHERE (`Id` = @SGUID + 000);

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`, `Chance`) VALUES
(@SGUID + 000, @CGUID + 000, 0, 0);

INSERT INTO `spawn_group_entry` (`Id`, `Entry`, `MinCount`, `MaxCount`, `Chance`) VALUES
(@SGUID + 000, 8304, 0, 0, 0);

INSERT INTO `creature_movement` (`Id`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(@CGUID + 000, 01, -11316.9726562500, -2552.835205078125, 95.96501922607421875, 100, 0, 0),
(@CGUID + 000, 02, -11335.3662109375, -2554.865478515625, 88.24490356445312500, 100, 0, 0),
(@CGUID + 000, 03, -11365.7783203125, -2561.935791015625, 79.45071411132812500, 100, 0, 0),
(@CGUID + 000, 04, -11399.0673828125, -2588.916259765625, 63.19728088378906250, 100, 0, 0),
(@CGUID + 000, 05, -11409.6298828125, -2600.824218750000, 56.29764938354492187, 100, 0, 0),
(@CGUID + 000, 06, -11437.6845703125, -2633.046142578125, 33.58943176269531250, 100, 0, 0),
(@CGUID + 000, 07, -11459.0673828125, -2666.559814453125, 12.92333030700683593, 100, 0, 0),
(@CGUID + 000, 08, -11461.7363281250, -2699.542236328125, 6.892065048217773437, 100, 0, 0);
