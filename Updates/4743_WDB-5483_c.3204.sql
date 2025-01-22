-- Gazz'uz 3204
-- moved to spawn groups
DELETE FROM `pool_template` WHERE `entry` = 1202; -- 1202	1	Gazz'uz (3204)
DELETE FROM `pool_creature_template` WHERE `id` = 3204; -- 3204	1202	0	Gazz'uz (3204)
DELETE FROM `spawn_group` WHERE id = 19894;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(19894, 'Durotar - Skull Rock - Gazz\'uz 3204', 0, 1, 0, 0);
DELETE FROM `spawn_group_spawn` WHERE id = 19894;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(19894, 6456, -1),
(19894, 6501, -1),
(19894, 6502, -1),
(19894, 6503, -1);

