-- Westfall (Night Time) - Ghouls!

-- https://github.com/cmangos/classic-db/commit/abbebcc19815ac06d3f667a0843b1ea41d894146#diff-e35950feecb6563e3a0688eefe39308f1ec933ce96cd0eabd2c2c201d1b52834R13
-- classicmangos only!
DELETE FROM `creature` WHERE `id` = 9044 AND `guid` BETWEEN 160037 AND 160040; -- turned out these are wrong, udb also does not have them anymore

-- Night Time - Ghouls in Westfall
UPDATE `creature_template_addon` SET `auras` = '11959' WHERE `entry` = 846;
DELETE FROM `game_event_creature` WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id` IN (846,1109));
DELETE FROM `game_event_creature_data` WHERE `guid` IN (52595,90280,52596,52594,90279); -- spawns are converted at night, no need for duplicate spawns
INSERT INTO `game_event_creature_data` (`guid`, `entry_id`, `event`) VALUES
-- moonbrook graveyard
-- Creature (GUIDLow: 52594 Entry: 846) has spell 11959 in `auras` field, but aura is already applied. - cant use spell_start, but first time they swap template creature_template_addon should also be reloaded if entry changes
(52595, 846, 27),
(90280, 846, 27),
(52596, 846, 27),
(52594, 846, 27),
(90279, 846, 27);

DELETE FROM `creature` WHERE `id` = 846;
DELETE FROM `creature` WHERE `id` = 572; -- old spawns are on path of 134022 (leaving 3 nodes)
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
-- classicmangos (changed xyz to CCSDB confirmed spawns)
(160342, 846, 0, -10977.4, 730.727, 45.7861, 3.28073, 300, 300, 20, 1),
(160343, 846, 0, -10979.7, 732.818, 45.9694, 3.23738, 300, 300, 20, 1),
(160344, 846, 0, -10954.1, 758.635, 41.6749, 4.34059, 300, 300, 20, 1),
(160345, 846, 0, -10950.7, 756.028, 42.0347, 4.18839, 300, 300, 20, 1),
(160346, 846, 0, -10965.3, 769.783, 41.6912, 4.45959, 300, 300, 20, 1),
-- wotlkmangos
(160347, 846, 0, -10084.3, 1559.49, 40.8883, 3.00608, 300, 300, 2, 1),
(160348, 846, 0, -10082.4, 1556.31, 41.0149, 2.17749, 300, 300, 2, 1),
(160349, 846, 0, -11281.5, 1017.69, 94.4474, 5.30334, 300, 300, 5, 1),
(160350, 846, 0, -11275.7, 1022.68, 94.7905, 5.70782, 300, 300, 5, 1),
-- trinitycore
(160351, 846, 0, -10015.2, 1424.47, 40.94, 3.27601, 300, 300, 5, 1),
(160352, 846, 0, -10025.1, 1419.18, 41.218, 2.72701, 300, 300, 5, 1),
(160353, 846, 0, -10025, 1427.11, 41.107, 1.61175, 300, 300, 5, 1),
(160354, 572, 0, -10021, 1422.17, 41.042, 2.93907, 14400, 21600, 5, 1);

DELETE FROM `game_event_creature` WHERE `guid` IN (90018,89879,90128,90130,89875);
INSERT INTO `game_event_creature` (`guid`, `event`) VALUES
(90018, -27), -- despawn npcs during night with ghouls around
(89879, -27),
(90128, -27),
(90130, -27),
(89875, -27);

DELETE FROM `game_event_creature` WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id` = 846);
INSERT INTO `game_event_creature` (`guid`, `event`) SELECT `guid`, 27 FROM `creature` WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id` = 846);

-- wotlkmangos
DELETE FROM `creature` WHERE `guid` IN (134022,28458) AND `id` = 572; -- pool: 1163	1	Leprithus (572)
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
(134022, 572, 0, -11277.3, 1021.93, 94.7337, 5.18302, 14400, 21600, 0, 2), -- interesting, missing due to overlapping reworks! also present in trinitycore
(28458, 572, 0, -10084.3, 1558.13, 41.064, 3.65463, 14400, 21600, 2, 1); -- confirmed sniff, reduced spawndist
DELETE FROM `creature_movement` WHERE `id` = 134022;
INSERT INTO `creature_movement` (`Id`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`, `Comment`) VALUES
(134022, 1, -11257.1, 988.193, 83.3336, 5.69163, 0, 0, NULL),
(134022, 2, -11244.4, 962.304, 83.269, 5.05783, 0, 0, NULL),
(134022, 3, -11240.5, 948.932, 75.6219, 5.30995, 0, 0, NULL),
(134022, 4, -11212.6, 921.358, 54.3906, 5.10103, 0, 0, NULL),
(134022, 5, -11194.6, 895.302, 48.4349, 5.39948, 0, 0, NULL),
(134022, 6, -11172.6, 876.756, 41.3173, 6.03015, 0, 0, NULL),
(134022, 7, -11146.3, 866.02, 38.4824, 5.63196, 0, 0, NULL),
(134022, 8, -11126, 851.423, 40.3828, 5.64138, 0, 0, NULL),
(134022, 9, -11086.8, 834.864, 40.7715, 0.273191, 0, 0, NULL),
(134022, 10, -11059.5, 846.814, 38.6569, 6.25714, 0, 0, NULL),
(134022, 11, -11039.1, 843.255, 36.3932, 5.48039, 0, 0, NULL),
(134022, 12, -11012.4, 812.002, 37.4404, 5.31939, 0, 0, NULL),
(134022, 13, -11002.7, 788.433, 36.4366, 5.5715, 0, 0, NULL),
(134022, 14, -10982.7, 761.666, 43.9919, 5.11518, 0, 0, NULL),
(134022, 15, -10962.6, 736.809, 46.4806, 6.21378, 1, 57201, NULL);
-- (134022, 16, -10913.9, 722.066, 42.727, 5.94361, 600000, 0, NULL),
-- (134022, 17, -10913.9, 722.066, 42.727, 5.94361, 2, 57201, NULL);
DELETE FROM `dbscripts_on_creature_movement` WHERE `id` = 57201; -- makes no sense to forcedespawn him, handled by game_event
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `datafloat`, `x`, `y`, `z`, `o`, `speed`, `condition_id`, `comments`) VALUES
(57201, 2000, 0, 20, 1, 20, 0, 0, 0, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Leprithus - MovementType 1 and Spawndist 20');

-- Stats
UPDATE `creature_template` SET `SpeedWalk` = 0.777776, `DamageMultiplier` = 1 WHERE `entry` = 572; -- 26-34 dmg

DELETE FROM `game_event_creature` WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id` = 572); -- Leprithus also only spawns during night time!
INSERT INTO `game_event_creature` (`guid`, `event`) SELECT `guid`, 27 FROM `creature` WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id` = 572);

