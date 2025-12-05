-- Add your query below.
-- https://github.com/vmangos/core/commit/37783c8d86ef354aa0ae6a6b836cae631d21ca7b

-- Add missing spawn points for Baron Vardus.
UPDATE `creature` SET `spawndist`=1, `movementtype`=1 WHERE `guid`=16905;

DELETE FROM `creature` WHERE `guid` IN (16203,16204,16205,16206) AND `id` = 2306; -- https://www.wowhead.com/classic/npc=2306/baron-vardus
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawndist`, `movementtype`, `spawntimesecsmin`, `spawntimesecsmax`) VALUES
(16203, 2306, 0, 695.35, -905.476, 157.694, 0.174533, 1, 1, 300, 300),
(16204, 2306, 0, 942.297, -844.993, 114.726, 3.89484, 1, 1, 300, 300),
(16205, 2306, 0, 1000.85, -790.671, 108.668, 3.82933, 1, 1, 300, 300),
(16206, 2306, 0, 1119.68, -719.64, 71.119, 1.49368, 1, 1, 300, 300);

DELETE FROM `spawn_group` WHERE id = 19062;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(19062, 'Alterac Mountains (Strahnbrad & The Uplands) - Baron Vardus (2306)', 0, 1, 0, 0);
DELETE FROM `spawn_group_spawn` WHERE id = 19062;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(19062, 16905, 0),
(19062, 16203, 1),
(19062, 16204, 2),
(19062, 16205, 3),
(19062, 16206, 4);

-- End of migration.

