-- Add your query below.
-- https://github.com/vmangos/core/commit/b0658631eb8bba2335d4052ae0a18bbd7cd76bb2

-- These spawn points Strahbrad should be shared.
UPDATE `creature` SET `id`=0, `spawndist`=1.5, `MovementType`=1 WHERE `guid`=17004;
UPDATE `creature` SET `id`=0, `spawndist`=1.5, `MovementType`=1 WHERE `guid`=17005;
UPDATE `creature` SET `id`=0, `spawndist`=1.5, `MovementType`=1 WHERE `guid`=17006;
UPDATE `creature` SET `id`=0, `spawndist`=1.5, `MovementType`=1 WHERE `guid`=17007;
UPDATE `creature` SET `id`=0, `spawndist`=1.5, `MovementType`=1 WHERE `guid`=17010;
UPDATE `creature` SET `id`=0, `spawndist`=1.5, `MovementType`=1 WHERE `guid`=17011;
UPDATE `creature` SET `id`=0, `spawndist`=1.5, `MovementType`=1 WHERE `guid`=17012;
UPDATE `creature` SET `id`=0, `spawndist`=1.5, `MovementType`=1 WHERE `guid`=17013;
UPDATE `creature` SET `id`=0, `spawndist`=1.5, `MovementType`=1 WHERE `guid`=17015;
UPDATE `creature` SET `id`=0, `spawndist`=1.5, `MovementType`=1 WHERE `guid`=17016;
UPDATE `creature` SET `id`=0, `spawndist`=1.5, `MovementType`=1 WHERE `guid`=17017;
UPDATE `creature` SET `id`=0, `spawndist`=1.5, `MovementType`=1 WHERE `guid`=17018;
UPDATE `creature` SET `id`=0, `spawndist`=1.5, `MovementType`=1 WHERE `guid`=17021;
UPDATE `creature` SET `id`=0, `spawndist`=1.5, `MovementType`=1 WHERE `guid`=17022;
UPDATE `creature` SET `id`=0, `spawndist`=1.5, `MovementType`=1, `position_x` = 732.375, `position_y` = -948.316, `position_z` = 165.409, `orientation` = 5.06921 WHERE `guid`=17023; -- stuck in wall
UPDATE `creature` SET `id`=0, `spawndist`=1.5, `MovementType`=1 WHERE `guid`=17024;
UPDATE `creature` SET `id`=0, `spawndist`=1.5, `MovementType`=1 WHERE `guid`=17025;
UPDATE `creature` SET `id`=0, `spawndist`=1.5, `MovementType`=1 WHERE `guid`=17027;
UPDATE `creature` SET `id`=0, `spawndist`=1.5, `MovementType`=1 WHERE `guid`=16756;

-- Assign random movement to spawns in Strahnbrad.
UPDATE `creature` SET `spawndist`=1.5, `MovementType`=1 WHERE `guid`=17026;
UPDATE `creature` SET `spawndist`=1.5, `MovementType`=1 WHERE `guid`=17019;
UPDATE `creature` SET `spawndist`=1.5, `MovementType`=1 WHERE `guid`=17014;
UPDATE `creature` SET `spawndist`=1.5, `MovementType`=1 WHERE `guid`=17008;
UPDATE `creature` SET `spawndist`=1.5, `MovementType`=1 WHERE `guid`=17001;
UPDATE `creature` SET `spawndist`=1.5, `MovementType`=1 WHERE `guid`=16892;
UPDATE `creature` SET `spawndist`=1.5, `MovementType`=1 WHERE `guid`=16908;
UPDATE `creature` SET `spawndist`=1.5, `MovementType`=1 WHERE `guid`=16927;
UPDATE `creature` SET `spawndist`=1.5, `MovementType`=1 WHERE `guid`=16930;

-- Add missing spawns in Strahnbrad.
DELETE FROM `creature` WHERE `guid` BETWEEN 17172 AND 17175;
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawndist`, `MovementType`, `spawntimesecsmin`, `spawntimesecsmax`) VALUES
(17172, 0, 0, 686.508, -913.333, 165.031, 5.46288, 2, 1, 300, 300),
(17173, 0, 0, 743.018, -947.871, 166.228, 0.218435, 2, 1, 300, 300),
(17174, 0, 0, 749.019, -953.928, 166.228, 3.34455, 1, 1, 300, 300),
(17175, 2242, 0, 658.819, -860.63, 158.498, 0.430102, 5, 1, 300, 300);

REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES
(17004, 2242),(17004, 2319),
(17005, 2242),(17005, 2319),
(17006, 2242),(17006, 2319),
(17007, 2242),(17007, 2319),
(17010, 2242),(17010, 2319),
(17011, 2242),(17011, 2319),
(17012, 2242),(17012, 2319),
(17013, 2242),(17013, 2319),
(17015, 2242),(17015, 2319),
(17016, 2242),(17016, 2319),
(17017, 2242),(17017, 2319),
(17018, 2242),(17018, 2319),
(17021, 2242),(17021, 2319),
(17022, 2242),(17022, 2319),
(17023, 2242),(17023, 2319),
(17024, 2242),(17024, 2319),
(17025, 2242),(17025, 2319),
(17027, 2242),(17027, 2319),
(16756, 2241),(16756, 2319),
-- NEW
(17172, 2242),(17172, 2319),
(17173, 2242),(17173, 2319),
(17174, 2242),(17174, 2319);

UPDATE `creature` SET `position_x` = 664.315,  `position_y` = -1027.59,  `position_z` = 160.39 WHERE `guid` = 63913 AND `id` = 2258; -- https://www.wowhead.com/wotlk/npc=2258/stone-fury
DELETE FROM `creature_movement` WHERE `Id` = 63913; -- creature_movement_template 2258

-- End of migration.

