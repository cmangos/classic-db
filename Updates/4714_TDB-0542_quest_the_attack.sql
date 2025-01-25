-- ----------------
-- Stormwind
-- Quest - The Attack (id 434) new script 
-- ---------------

-- Tyrion's Spybot
-- Correct spawn points to sniffed ones. Always spawning in the back and running to Tyrion
DELETE FROM creature WHERE guid = 45707;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
(45707, 8856, 0, 1, -8430.7021484375, 442.3575439453125, 122.3577651977539062, 0.856539845466613769, 120, 120, 0, 2);

-- Also set him as active object all the time, to make sure he stays next to tyrion after respawn
-- ExtraFlags before change: 65538 (CREATURE_EXTRA_FLAG_NO_AGGRO_ON_SIGHT, CREATURE_EXTRA_FLAG_CIVILIAN)
UPDATE creature_template SET ExtraFlags = 69634 WHERE entry = 8856;

DELETE FROM `creature_movement_template` WHERE `entry` IN (1754, 1755, 8856);
INSERT INTO `creature_movement_template` (`entry`, `pathId`, `point`, `PositionX`, `PositionY`, `PositionZ`, `orientation`, `WaitTime`, `ScriptId`) VALUES
-- Lord Gregor Lescovar waypoints
(1754, 0, 1, -8332.951172, 394.819672, 122.457764, 100, 0, 0),
(1754, 0, 2, -8336.935,402.70227,122.39286, 100, 0, 0),
(1754, 0, 3, -8347.601,416.2128,122.39287, 100, 0, 0),
(1754, 0, 4, -8356.598,408.69412,122.407906, 100, 0, 0),
(1754, 0, 5, -8379.602,436.49112,122.39286, 100, 0, 0),
(1754, 0, 6, -8392.416,452.59528,123.783485, 100, 5000, 175401), -- rp 1
(1754, 0, 7, -8402.577,465.652,123.78349, 100, 58000, 175402),
(1754, 0, 8, -8402.577,465.652,123.78349, 100, 100, 175403),
(1754, 0, 9, -8389.848,449.34464,124.39286, 100, 0, 0),
(1754, 0, 10, -8374.16,429.65875,122.39287, 100, 0, 0),
(1754, 0, 11, -8356.638,407.27484,122.40027, 100, 0, 0),
(1754, 0, 12, -8364.035,397.6849,122.39286, 100, 0, 0),
(1754, 0, 13, -8361.392,393.67535,122.39286, 100, 0, 0),
(1754, 0, 14, -8352.217,382.51736,122.39285, 100, 0, 0),
(1754, 0, 15, -8339.809,391.12012,122.45438, 100, 0, 0),
(1754, 0, 16, -8332.951,394.81967,122.39287,2.251474618911743164, 1000, 175404),
-- Marzon the Silent Blade
(1755, 0, 1, -8401.236, 491.13336, 123.84314, 100, 0, 0),
(1755, 0, 2, -8405.023,470.18002,123.78349, 100, 20000, 175501), -- RP 1
(1755, 0, 3, -8417.703,482.35666,123.78349, 100, 0, 0),
(1755, 0, 4, -8421.793,488.08002,122.39285, 100, 0, 0),
(1755, 0, 5, -8429.174,482.75412,122.39285, 100, 0, 0),
(1755, 0, 6, -8442.866,471.5549,122.39286, 100, 0, 0),
(1755, 0, 7, -8439.279,465.37152,122.392876, 100, 1000, 1),
-- Tyrion's Spybot Waypoints after spawn
(8856, 0, 1, -8430.70, 442.358, 122.35777, 100, 0, 0), 
(8856, 0, 2, -8425.42,450.03125,122.39285, 100, 0, 0),
(8856, 0, 3, -8411.389,454.83572,123.78348, 100, 0, 0),
(8856, 0, 4, -8408.254,451.89584,123.783485, 100, 1000, 885601),
-- Tyrion's Spybot Waypoints at event
(8856, 1, 1, -8412.176,460.8763,123.783485, 100, 0, 0),
(8856, 1, 2, -8406.333,464.6441,123.78349, 100, 0, 0),
(8856, 1, 3, -8399.351,462.39334,123.783485, 100, 0, 0),
(8856, 1, 4, -8392.573,452.64474,123.783485, 100, 9000, 885602),
(8856, 1, 5, -8386.71,445.73547,122.39286, 100, 0, 0),
(8856, 1, 6, -8374.295,429.968,122.39287, 100, 0, 0),
(8856, 1, 7, -8358.038,410.0895,122.44067, 100, 0, 0),
(8856, 1, 8, -8358.805,403.92914,122.41772, 100, 0, 0),
(8856, 1, 9, -8365.185,399.00433,122.39286, 100, 0, 0),
(8856, 1, 10, -8363.312,393.71854,122.39286, 100, 0, 0),
(8856, 1, 11, -8354.072,382.36456,122.39285, 100, 0, 0),
(8856, 1, 12, -8349.102,382.11633,122.39285, 100, 0, 0),
(8856, 1, 13, -8335.313,393.4412,122.39286, 100, 15000, 885603),
(8856, 1, 14, -8349.13,384.37653,122.39285, 100, 0, 0),
(8856, 1, 15, -8353.647,383.87717,122.39285, 100, 0, 0),
(8856, 1, 16, -8358.619,389.25305,122.39287, 100, 0, 0),
(8856, 1, 17, -8364.875,397.16666,122.39286, 100, 0, 0),
(8856, 1, 18, -8363.694,402.10483,122.39286, 100, 0, 0),
(8856, 1, 19, -8358.419,406.0267,122.42341, 100, 0, 0),
(8856, 1, 20, -8364.902,417.56165,122.39287, 100, 0, 0),
(8856, 1, 21, -8374.261,429.31195,122.39287, 100, 0, 0),
(8856, 1, 22, -8383.889,442.11417,122.39285, 100, 0, 0),
(8856, 1, 23, -8388.459,441.51324,122.39286, 100, 0, 0),
(8856, 1, 24, -8395.419,435.65833,122.39287, 100, 0, 0),
(8856, 1, 25, -8407.389,424.5023,122.39286, 100, 0, 0),
(8856, 1, 26, -8411.205,425.02985,122.39286, 100, 0, 0),
(8856, 1, 27, -8414.286,429.88303,122.39285, 100, 0, 0),
(8856, 1, 28, -8424.685,444.273,122.39285, 100, 8500, 885604),
(8856, 1, 29, -8435.206055, 442.783142, 122.504227, 100, 0, 0),
(8856, 1, 30, -8445.728,433.7933,119.1284, 100, 1000, 1);

DELETE FROM creature_movement WHERE id IN (10523, 10524);
INSERT INTO `creature_movement` (`id`, `point`, `PositionX`, `PositionY`, `PositionZ`, `orientation`, `waittime`, `ScriptId`) VALUES
-- Stormwind Royal Guard right
(10523, 1, -8394.047, 449.45926, 123.783485, 100, 100, 9), -- Generic Set Active Object ON
(10523, 2, -8374.245,428.69986,122.39287, 100, 0, 0),
(10523, 3, -8356.376,404.74435,122.38098, 100, 0, 0),
(10523, 4, -8367.224,396.23242,122.39286,0.663225114345550537, 66000, 0),
(10523, 5, -8355.837,404.8713,122.37253, 100, 0, 0),
(10523, 6, -8376.084,430.53375,122.39286, 100, 0, 0),
(10523, 7, -8392.2,450.8392,123.783485, 100, 0, 0),
(10523, 8, -8394.047,449.45926,123.783485,0.645771801471710205, 1000, 175601), -- Spawn Point, change to idle and Active object off
-- Stormwind Royal Guard left
(10524, 1, -8388.917, 453.05283, 123.95904, 100, 100, 9), -- Generic Set Active Object ON
(10524, 2, -8389.245,452.9033,123.78451, 100, 0, 0),
(10524, 3, -8353.658,405.95135,122.34162, 100, 0, 0),
(10524, 4, -8342.475,414.8069,122.39287,3.769911050796508789, 66000, 0),
(10524, 5, -8347.915,417.63022,122.39287, 100, 0, 0),
(10524, 6, -8357.504,410.04797,122.4313, 100, 0, 0),
(10524, 7, -8382.867,441.968,122.39285, 100, 0, 0),
(10524, 8, -8357.7705,461.76053,122.39287, 100, 0, 0),
(10524, 9, -8360.926,465.30426,122.39287, 100, 0, 0),
(10524, 10, -8385.653,445.6149,122.39286, 100, 0, 0),
(10524, 11, -8388.917,453.05283,123.95904,3.804817676544189453, 1000, 175601); -- Spawn Point, change to idle and Active object off

DELETE FROM `dbscripts_on_creature_movement` WHERE `id` = 9;
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `datafloat`, `x`, `y`, `z`, `o`, `speed`, `condition_id`, `comments`) VALUES
(9, 0, 0, 21, 1, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'GENERIC - Set Active Object On');

-- Movement Script
DELETE FROM dbscripts_on_creature_movement WHERE id IN (175401, 175402, 175403, 175404, 175501, 175601, 885601, 885602, 885603, 885604); -- -41
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- Lord Gregor Lescovar RP 1
(175401, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Attack: Lord Gregor Lescovar - Emote OneShotTalk'),
(175401, 0, 1, 0, 0, 0, 0, 0, 0, 0, 322, 0, 0, 0, 0, 0, 0, 0, 'The Attack: Lord Gregor Lescovar - Say Text'),
(175401, 3000, 1, 36, 0, 0, 0, 1756, 10, 515, 0, 0, 0, 0, 0, 0, 0, 0, 'The Attack: Stormwind Royal Guard - Face Lord Gregor Lescovar'),
(175401, 5000, 0, 1, 66, 0, 0, 1756, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Attack: Stormwind Royal Guard - Emote OneShotSalut'),
(175401, 5000, 1, 0, 0, 0, 0, 1756, 10524, 16, 3690, 0, 0, 0, 0, 0, 0, 0, 'The Attack: Stormwind Royal Guard - Say Text'),
(175401, 8000, 0, 20, 2, 0, 0, 1756, 10, 512, 0, 0, 0, 0, 0, 0, 0, 0, 'The Attack: Stormwind Royal Guard - Start Waypoint'),
-- Lord Gregor Lescovar RP 2
(175402, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 3721, 0, 0, 0, 0, 0, 0, 0, 'The Attack: Lord Gregor Lescovar - Say Text'),
(175402, 23000, 0, 10, 1755, 60000, 0, 0, 0, 8, 0, 0, 0, 0, -8401.236, 491.13336, 123.84314, 3.9305, 'The Attack: Lord Gregor Lescovar - Summon Creature Marzon the Silent Blade'),
-- Lord Gregor Lescovar restore faction before moving back
(175403, 0, 0, 22, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Attack: Lord Gregor Lescovar - Restore Faction'),
-- Lord Gregor Lesovar Finish RP
(175404, 0, 0, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Attack: Lord Gregor Lescovar - Remove ActiveObject'),
(175404, 0, 1, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Attack: Lord Gregor Lescovar - Movement IDLE'),
-- Marzon the Silent Blade
(175501, 1000, 0, 1, 1, 0, 0, 1754, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Attack: Lord Gregor Lescovar - Emote OneShotTalk'),
(175501, 1000, 1, 0, 0, 0, 0, 1754, 10, 0, 323, 0, 0, 0, 0, 0, 0, 0, 'The Attack: Lord Gregor Lescovar - Say Text'),
(175501, 2000, 0, 14, 7104, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Attack: Marzon the Silent Blade - Remove Aura Sneak'),
(175501, 4000, 0, 0, 0, 0, 0, 0, 0, 0, 324, 0, 0, 0, 0, 0, 0, 0, 'The Attack: Marzon the Silent Blade - Say Text'),
(175501, 9000, 0, 1, 1, 0, 0, 1754, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Attack: Lord Gregor Lescovar - Emote OneShotTalk'),
(175501, 9000, 1, 0, 0, 0, 0, 1754, 10, 0, 326, 0, 0, 0, 0, 0, 0, 0, 'The Attack: Lord Gregor Lescovar - Say Text'),
(175501, 13000, 0, 22, 34, 0, 0, 1754, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Attack: Lord Gregor Lescovar - Set Faction to Defias Brotherhood'),
(175501, 14000, 0, 0, 0, 0, 0, 0, 0, 0, 325, 0, 0, 0, 0, 0, 0, 0, 'The Attack: Marzon the Silent Blade - Say Text'),
(175501, 14000, 1, 22, 34, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Attack: Marzon the Silent Blade - Set Faction to Defias Brotherhood'),
(175501, 15000, 0, 1, 23, 0, 0, 7766, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Attack: Tyrion - Emote OneShotFlex'),
(175501, 15000, 1, 0, 0, 0, 0, 7766, 30, 0, 4613, 0, 0, 0, 0, 0, 0, 0, 'The Attack: Tyrion - Say Text'),
-- Stormwind Royal Guard
(175601, 0, 3, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Attack: Stormwind Royal Guard - Remove ActiveObject'),
(175601, 0, 1, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Attack: Stormwind Royal Guard - Movement IDLE'),
-- Tyrion\'s Spybot after waypoints to Tyrion
(885601, 0, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Tyrion\'s Spybot -  Change Movement To 0 - Idle'),
(885601, 4000, 0, 36, 0, 0, 0, 7766, 10, 515, 0, 0, 0, 0, 0, 0, 0, 0, 'Tyrion - Face Tyrion\'s Spybot'),
(885601, 4000, 1, 1, 4, 0, 0, 7766, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Tyrion - Emote OneShotCheer'),
(885601, 4000, 2, 0, 0, 0, 0, 7766, 10, 0, 4612, 0, 0, 0, 0, 0, 0, 0, 'Tyrion - Say Text'),
(885601, 8000, 0, 36, 1, 0, 0, 7766, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Attack: Tyrion - Reset Orientation'),
(885601, 8000, 1, 29, 3, 1, 0, 7766, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Attack: Tyrion - Add QuestGiver Flag'),
(885601, 8000, 3, 21, 0, 0, 0, 7766, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Attack: Tyrion - Remove ActiveObject'),
-- Tyrion's Spybot RP 1 
(885602, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Attack: Tyrion\'s Spybot - Emote OneShotTalk'),
(885602, 0, 1, 36, 0, 0, 0, 1756, 10, 515, 0, 0, 0, 0, 0, 0, 0, 0, 'The Attack: Stormwind Royal Guard - Face Tyrion\'s Spybot'),
(885602, 0, 2, 0, 0, 0, 0, 0, 0, 0, 3781, 0, 0, 0, 0, 0, 0, 0, 'The Attack: Tyrion\'s Spybot - Say Text'),
(885602, 1000, 0, 1, 16, 0, 0, 1756, 10, 512, 0, 0, 0, 0, 0, 0, 0, 0, 'The Attack: Stormwind Royal Guard - Emote OneShotKneel'),
(885602, 4000, 0, 0, 0, 0, 0, 1756, 10524, 16, 3783, 0, 0, 0, 0, 0, 0, 0, 'The Attack: Stormwind Royal Guard - Say Text'),
(885602, 7000, 0, 36, 1, 0, 0, 1756, 10, 515, 0, 0, 0, 0, 0, 0, 0, 0, 'The Attack: Stormwind Royal Guard - Reset Orientation'),
(885602, 8000, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Attack: Tyrion\'s Spybot - Emote OneShotTalk'),
(885602, 8000, 1, 0, 0, 0, 0, 0, 0, 0, 3782, 0, 0, 0, 0, 0, 0, 0, 'The Attack: Tyrion\'s Spybot - Say Text'),
-- Tyrion'S Spybot RP 2
(885603, 1000, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Attack: Tyrion\'s Spybot - Emote OneShotTalk'),
(885603, 1000, 1, 0, 0, 0, 0, 0, 0, 0, 3762, 0, 0, 0, 0, 0, 0, 0, 'The Attack: Tyrion\'s Spybot - Say Text'),
(885603, 1000, 2, 36, 0, 0, 0, 1754, 10, 3, 0, 0, 0, 0, 0, 0, 0, 0, 'The Attack: Lord Gregor Lescovar - Face Tyrion\'s Spybot'),
(885603, 5000, 0, 1, 1, 0, 0, 1754, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Attack: Lord Gregor Lescovar - Emote OneShotTalk'),
(885603, 5000, 1, 0, 0, 0, 0, 1754, 10, 0, 3784, 0, 0, 0, 0, 0, 0, 0, 'The Attack: Lord Gregor Lescovar - Say Text'),
(885603, 11000, 0, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Attack: Tyrion\'s Spybot - Emote OneShotBow'),
(885603, 11000, 1, 0, 0, 0, 0, 0, 0, 0, 3791, 0, 0, 0, 0, 0, 0, 0, 'The Attack: Tyrion\'s Spybot - Say Text'),
(885603, 12000, 0, 20, 2, 0, 0, 1754, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Attack: Lord Gregor Lescovar - Start Waypoints'),
-- Tyrion's Spybot RP 3
(885604, 2000, 0, 15, 11067, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Attack: Tyrion\'s Spybot - Cast Spell Perm. Illusion Tyrion'),
(885604, 5000, 0, 23, 8856, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Attack: Tyrion\'s Spybot - Update Entry to Tyrion\'s Spybot'),
(885604, 6000, 0, 15, 11013, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Attack: Tyrion\'s Spybot - Cast Spell Sneak');

-- Remove emotes from quest
UPDATE quest_template SET CompleteEmote = 0, OfferRewardEmote1 = 0, OfferRewardEmote2 = 0, OfferRewardEmote3 = 0 WHERE entry = 434;

-- Start script for quest The Attack.
DELETE FROM dbscripts_on_quest_start WHERE id = 434; -- -14
INSERT INTO `dbscripts_on_quest_start` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- On Retail Tyrion only has the QuestGiver flag when the Spybot is staying next to him
(434, 0, 0, 31, 8856, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Attack: Tyrion - Terminate Script if Spybot is Dead'),
-- Make sure RP goes threw
(434, 1, 0, 21, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Attack: Tyrion - Set ActiveObject'),
(434, 1, 2, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.8326, 'The Attack: Tyrion - Set Orientation'),
(434, 1, 3, 1, 69, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Attack: Tyrion - Set Emote State to STATE_USESTANDING'),
(434, 1, 4, 29, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Attack: Tyrion - Remove NpcFlags'),
(434, 4000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Attack: Tyrion - Set Emote State to ONESHOT_NONE'),
(434, 4000, 1, 0, 0, 0, 0, 8856, 10, 0, 4593, 0, 0, 0, 0, 0, 0, 0, 'The Attack: Tyrion\'s Spybot - Say Text'),
(434, 7000, 0, 36, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Attack: Tyrion - Face Player'),
(434, 7000, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Attack: Tyrion - Emote OneShotTalk'),
(434, 7000, 2, 0, 0, 0, 0, 0, 0, 0, 3761, 0, 0, 0, 0, 0, 0, 0, 'The Attack: Tyrion - Say Text'),
(434, 7000, 3, 15, 11048, 0, 0, 8856, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Attack: Tyrion\'s Spybot - Add Aura Perm. Illusion Bishop Tyriona'),
(434, 9000, 2, 23, 7779, 0, 0, 8856, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Attack: Tyrion\'s Spybot - Update Entry to Priestess Tyriona'),
(434, 12000, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0523599, 'The Attack: Tyrion - Reset Orientation'),
(434, 14000, 0, 20, 2, 1, 0, 8856, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Attack: Tyrion\'s Spybot - Start Waypoints'),
-- Give quest explore credit, have to be in quest_start script to get correct player as target
(434, 191000, 0, 7, 434, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Attack: Tyrion - Quest Credit');

-- Add aura to Marzon the Silent Blade
DELETE FROM creature_template_addon WHERE entry = 1755;
INSERT INTO creature_template_addon (entry, auras) VALUES (1755, 7104);
UPDATE creature_template SET MovementType = 2 WHERE entry = 1755;

