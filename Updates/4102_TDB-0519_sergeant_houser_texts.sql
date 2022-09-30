-- Add missing texts to Sergeant Houser 5662
-- https://wowpedia.fandom.com/wiki/Sergeant_Houser
-- classicmangos is missing the last iteration of this script like it is in tbc/wotlk branch
-- Based on https://github.com/vmangos/core/commit/f6aabbc9d9665ef4e327fa10b95862ae92b45d5c
DELETE FROM `dbscripts_on_creature_movement` WHERE `id` = 566201;
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `datafloat`, `x`, `y`, `z`, `o`, `speed`, `condition_id`, `comments`) VALUES
(566201, 1000, 0, 0, 566201, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Sergeant Houser - Random RP Texts'),
(566201, 1000, 0, 1, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(566201, 6000, 0, 0, 0, 0, 0, 0, 0, 0, 1963, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(566201, 6000, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM `dbscript_random_templates` WHERE `id` = 566201;
INSERT INTO `dbscript_random_templates` (`id`, `type`, `target_id`, `chance`, `comments`) VALUES
(566201, 0, 1964, 0, 'Sergeant Houser - Random RP Texts'),
(566201, 0, 1965, 0, 'Sergeant Houser - Random RP Texts'),
(566201, 0, 1966, 0, 'Sergeant Houser - Random RP Texts'),
(566201, 0, 1967, 0, 'Sergeant Houser - Random RP Texts'),
(566201, 0, 1968, 0, 'Sergeant Houser - Random RP Texts'),
(566201, 0, 1969, 0, 'Sergeant Houser - Random RP Texts'),
(566201, 0, 1970, 0, 'Sergeant Houser - Random RP Texts'),
(566201, 0, 1971, 0, 'Sergeant Houser - Random RP Texts');

DELETE FROM `creature_movement` WHERE `id` = 38435; -- -4
DELETE FROM `creature_movement_template` WHERE `entry` = 5662;
INSERT INTO `creature_movement_template` (`Entry`, `PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`, `Comment`) VALUES
(5662, 0, 1, 1695.43, 418.496, -62.3025, 0.382597, 0, 0, NULL),
(5662, 0, 2, 1705.89, 423.176, -62.3639, 0.61586, 0, 0, NULL),
(5662, 0, 3, 1699.3, 419.845, -62.3268, 3.5988, 0, 0, NULL),
(5662, 0, 4, 1699.3, 419.845, -62.3268, 1.81752, 9000, 566201, NULL),
(5662, 0, 5, 1684.59, 417.202, -62.2996, 3.27679, 0, 0, NULL),
(5662, 0, 6, 1695.43, 418.496, -62.3025, 0.382597, 0, 0, NULL),
(5662, 0, 7, 1705.89, 423.176, -62.3639, 0.61586, 0, 0, NULL),
(5662, 0, 8, 1695.7, 418.917, -62.307, 3.54147, 0, 0, NULL),
(5662, 0, 9, 1684.06, 417.013, -62.2992, 3.0773, 0, 0, NULL),
(5662, 0, 10, 1694.52, 418.849, -62.2993, 0.439145, 0, 0, NULL),
(5662, 0, 11, 1706.86, 423.499, -62.3689, 0.705394, 0, 0, NULL),
(5662, 0, 12, 1695.7, 418.917, -62.307, 3.54147, 0, 0, NULL),
(5662, 0, 13, 1684.06, 417.013, -62.2992, 3.0773, 0, 0, NULL),
(5662, 0, 14, 1689.68, 418.061, -62.2992, 0.413227, 0, 0, NULL),
(5662, 0, 15, 1689.68, 418.061, -62.2992, 1.98402, 9000, 566201, NULL),
(5662, 0, 16, 1684.5, 417.68, -62.2992, 3.37418, 0, 0, NULL),
(5662, 0, 17, 1695.43, 418.496, -62.3025, 0.382597, 0, 0, NULL),
(5662, 0, 18, 1705.89, 423.176, -62.3639, 0.61586, 0, 0, NULL),
(5662, 0, 19, 1695.7, 418.917, -62.307, 3.54147, 0, 0, NULL),
(5662, 0, 20, 1684.06, 417.013, -62.2992, 3.0773, 0, 0, NULL),
(5662, 0, 21, 1695.43, 418.496, -62.3025, 0.382597, 0, 0, NULL),
(5662, 0, 22, 1705.89, 423.176, -62.3639, 0.61586, 0, 0, NULL),
(5662, 0, 23, 1695.7, 418.917, -62.307, 3.54147, 0, 0, NULL),
(5662, 0, 24, 1684.06, 417.013, -62.2992, 3.0773, 0, 0, NULL);

