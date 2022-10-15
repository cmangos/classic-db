REPLACE INTO `gameobject` (`guid`, `id`, `position_x`, `POSITION_y`, `position_z`, `orientation`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(191820, 0, -5975.29, -2786.09, 385.061, 5.74214, -0.267238, 0.963631, 180, 900, 100, 1), -- 191298 (Pool 21409), Entry 0 - [Random (gameobject_spawn_entry) X:-5795.830078, -2929.929932, 363.821014, 0
(191821, 0, -6835.26, -3643.86, 253.034, 4.01426, -0.906307, 0.422619, 180, 900, 100, 1), -- 191772 (Pool 21423), Entry 0 - [Random (gameobject_spawn_entry) X:-6606.040039, -3416.659912, 279.299988, 0
(300278, 106319, -6145.14, -2943.76, 397.839, 5.044, -0.580703, 0.814116, 300, 900, 100, 1), -- 12796 (Pool 31209), Entry 106319 - [Battered Chest X:-6162.259766, -2950.600098, 409.209015, 0
(300279, 106319, -5053.31, -2681.58, 320.147, 0.733038, 0.358368, 0.93358, 300, 900, 100, 1); -- 31210, 0, 'Loch Modan - Battered Chest

REPLACE INTO `gameobject_spawn_entry` (`guid`, `entry`) VALUES
(191820, 3662),(191820, 3705),
(191821, 3706),(191821, 3707);

REPLACE INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES
(191820, 21409, 0, 'Loch Modan - Food Crate (3662) & Barrel of Milk (3705)'),
(191821, 21423, 0, 'Badlands - Food Crate (3707) & Barrel of Sweet Nectar (3706)'),
(300278, 31209, 0, 'Loch Modan (Stonesplinter Valley) - Battered Chest (106319)'),
(300279, 31210, 0, 'Loch Modan - Battered Chest (106319)');

-- Misc
-- delete underground
-- X:-13433.000000, -300.000000, 15.024000 0
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 75185 AND 75189;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 75185 AND 75189;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 4082 AND 4082;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 4082 AND 4082;

-- https://web.archive.org/web/20080217014622/http://wow.allakhazam.com/db/mob.html?wmob=8283
-- https://github.com/cmangos/issues/issues/1858 - 2% befor
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 40 WHERE `entry` = 8283 AND `item` = 60184; -- NPC LOOT (Green World Drop) - (Item Levels: 49-53) - (NPC Levels: 50)

-- missing
DELETE FROM `creature` WHERE `guid` IN (61629,61630) AND `id` IN (2182,2183);
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
(61629, 2182, 1, 7518.44, -954.141, -9.75713, 1.49309, 275, 275, 5, 1),
(61630, 2183, 1, 7498.7, -959.536, -3.24485, 3.80301, 275, 275, 5, 1);

UPDATE `creature` SET `position_x` = 1928.7673,  `position_y` = -4518.778,  `position_z` = 29.363235,  `orientation` = 0.959931075572967529 WHERE `guid` = 4767 AND `id` = 6987; --  Malton Droffers
UPDATE `creature` SET `position_x` = 1932.3334,  `position_y` = -4516.3403,  `position_z` = 29.363235,  `orientation` = 3.40339207649230957 WHERE `guid` = 4766 AND `id` = 6986; -- Dran Droffers

UPDATE `creature` SET `position_x` = -5850.31, `position_y` = -463.224, `position_z` = 411.103 WHERE `guid` = 232 AND `id` = 1125; -- wotlkmangos

