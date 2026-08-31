-- Convert Hezrul Bloodmark & Kolkar Bloodcharger to spawn_group & creature_spell_list
-- https://www.youtube.com/watch?v=0AjG6dEnCUg
-- https://youtu.be/Kz-ZcOgpoO4?si=BlMiMuQdXmzhtHW8&t=157
-- https://youtu.be/9li73RaG9hc?si=ZNUyeeludwaPORtP&t=220
UPDATE `creature_template` SET `SpellList` = 339601 WHERE `entry` = 3396;
DELETE FROM `creature_template_spells` WHERE `entry` = 3396; -- 3396	0	6958	0	0	0	0	0	0	0	0	0
DELETE FROM `creature_spell_list_entry` WHERE `Id` = 339601;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES (339601, 'The Barrens - Hezrul Bloodmark', 0, 0);
DELETE FROM `creature_spell_list` WHERE `Id` = 339601;

UPDATE `creature_template` SET `SpellList` = 339701 WHERE `entry` = 3397;
DELETE FROM `creature_template_spells` WHERE `entry` = 3397; -- 3397	0	6742	172	0	0	0	0	0	0	0	0
DELETE FROM `creature_spell_list_entry` WHERE `Id` = 339701;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES (339701, 'The Barrens - Kolkar Bloodcharger', 75, 0);
DELETE FROM `creature_spell_list` WHERE `Id` = 339701;

INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
-- ('339601','3396','2','0','70','1025','60','0','7500','7500','0','0','11','6958','1','0','0','0','0','0','0','0','0','0','Hezrul Bloodmark - Cast Blood Leech When Below 60% HP'),
(339601, 1, 6958, 0, -1, 1, 0, 100, 0, 3000, 5000, 3000, 5000, 'Hezrul Bloodmark - Blood Leech on current'), -- everytime he throws his hands in the air xD
-- ('339702','3397','0','0','100','1025','15000','25000','15000','25000','0','0','11','6742','0','0','0','0','0','0','0','0','0','0','Kolkar Bloodcharger - Cast Bloodlust'),
-- ('339703','3397','0','0','70','1025','20000','20000','5000','5000','0','0','11','172','1','0','0','0','0','0','0','0','0','0','Kolkar Bloodcharger - Cast Corruption'),
(339701, 0, 6742, 0, -1, 5, 0, 100, 1, 4000, 12000, 20000, 40000, 'Kolkar Bloodcharger - Bloodlust - eligible friendly missing buff'), -- did not matter as they do not share faction
(339701, 1, 172, 0, -1, 1, 0, 100, 0, 0, 10000, 10000, 15000, 'Kolkar Bloodcharger - Corruption on current'); -- faster recast 0-10 with aura check?

-- spawn_group
DELETE FROM `creature_linking` WHERE `master_guid` = 13990; -- 13991,13992 flag 515
DELETE FROM `creature_movement_template` WHERE Entry = 3396; -- 31
UPDATE `creature` SET `MovementType` = 0, `Position_X` = -888.286, `Position_Y` = -2053.13, `Position_Z` = 81.0782, `Orientation` = 0 WHERE `guid` IN (13990,13991,13992); -- Handled by spawn_group

-- add spawn group and formation for oronok and sons. Creature ids 21685 21686 21687
DELETE FROM `spawn_group` WHERE `Id` = 19066;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `WorldStateExpression`, `Flags`, `StringId`) VALUES
('19066', 'The Barrens - Hezrul Bloodmark | Kolkar Bloodcharger (3)', '0', '0', '0', '0', '0', '0');

DELETE FROM `spawn_group_spawn` WHERE `Id` = 19066;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`, `Chance`) VALUES
('19066', '13990', '0', '0'),
('19066', '13991', '1', '0'),
('19066', '13992', '2', '0');

DELETE FROM `spawn_group_formation` WHERE `Id` = 19066;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
('19066', '3', '2', '0', '19066', '2', 'The Barrens - Hezrul Bloodmark | Kolkar Bloodcharger (3)');

DELETE FROM `waypoint_path_name` WHERE `PathId` = 19066;
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
('19066', 'The Barrens - Hezrul Bloodmark | Kolkar Bloodcharger (3)');

DELETE FROM `waypoint_path` WHERE `PathId` = 19066; -- vmangos has a longer path around the oasis, but seems incorrect looking at pov
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(19066, 1, -888.286, -2053.13, 81.0782, 100, 10000, 0),
(19066, 2, -881.169, -2066.39, 82.8913, 100, 0, 0),
(19066, 3, -896.265, -2085.67, 86.5982, 100, 0, 0),
(19066, 4, -919.527, -2102.03, 86.1471, 100, 0, 0),
(19066, 5, -938.943, -2103.84, 85.2055, 100, 0, 0),
(19066, 6, -977.091, -2112.99, 82.8457, 100, 0, 0),
(19066, 7, -996.166, -2129.23, 84.339, 100, 0, 0),
(19066, 8, -1028.04, -2167.41, 84.444, 100, 0, 0),
(19066, 9, -1052.2, -2223.07, 84.7852, 100, 0, 0),
(19066, 10, -1061.31, -2265.33, 88.5924, 100, 0, 0),
(19066, 11, -1079.04, -2292.94, 91.0261, 100, 0, 0),
(19066, 12, -1117.46, -2298.19, 90.3452, 100, 0, 0),
(19066, 13, -1137.66, -2278.07, 86.5678, 100, 0, 0),
(19066, 14, -1155.54, -2237.66, 85.6437, 100, 0, 0),
(19066, 15, -1191.45, -2177.87, 90.7451, 100, 0, 0),
(19066, 16, -1217.34, -2140.72, 92.6515, 100, 0, 0),
(19066, 17, -1228.96, -2114.76, 92.2165, 100, 0, 0),
(19066, 18, -1218.87, -2087.08, 91.4139, 100, 0, 0),
(19066, 19, -1202.37, -2062.52, 93.2409, 100, 0, 0),
(19066, 20, -1166.88, -2042.01, 92.1803, 100, 0, 0),
(19066, 21, -1145.94, -2025.81, 91.8127, 100, 0, 0),
(19066, 22, -1109.87, -1999.72, 86.8538, 100, 0, 0),
(19066, 23, -1068.51, -1962.03, 89.5984, 100, 0, 0),
(19066, 24, -1050.84, -1946.6, 92.1747, 100, 0, 0),
(19066, 25, -1028.03, -1936.14, 90.9833, 100, 0, 0),
(19066, 26, -1000.62, -1947.3, 91.8085, 100, 0, 0),
(19066, 27, -989.498, -1965.68, 91.4196, 100, 0, 0),
(19066, 28, -975.014, -1989.78, 90.3225, 100, 0, 0),
(19066, 29, -947.048, -2017.7, 85.9028, 100, 0, 0),
(19066, 30, -913.754, -2023.23, 84.7262, 100, 0, 0),
(19066, 31, -896.969, -2035.67, 81.834, 100, 0, 0);

