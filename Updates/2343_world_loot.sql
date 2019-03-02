-- Improve white world loot tables and adjust creature loot tables accordingly - reduces amount of white world loot drops for npcs level 5 - 25 due to uncomplete world loot
-- ToDo: Review creature_loot_template and add reference_loot_template to them in lower levels
-- ToDo: Remove Set Items "Soldier's / Cadet's / Disciple's / Journeyman's / Warrior's / Pioneer / Infantry / Hunting / Veteran / Burnt / Thick Cloth / Spellbinder" from creature_loot_template and port them to respective reference_loot_template

-- Add Bard's Cloak 6555 to related White World Drop RefLoots and Remove it from creature_loot_template
-- the refloot range maybe narrower, but going by item stats: (6555, 'Bard\'s Cloak', itemlevel 14, requiredlevel 9),
DELETE FROM `creature_loot_template` WHERE `item` = 6555; -- Remove from unique item list
DELETE FROM `reference_loot_template` WHERE `item` = 6555 AND `entry` BETWEEN 60411 AND 60421;
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(60411, 6555, 0, 1, 1, 1, 0, 'Bard\'s Cloak'), -- NPC LOOT (White World Drop) - (Item Levels: 9-14) - (NPC Levels: 10-11)
(60412, 6555, 0, 1, 1, 1, 0, 'Bard\'s Cloak'), -- NPC LOOT (White World Drop) - (Item Levels: 10-14) - (NPC Levels: 11)
(60413, 6555, 0, 1, 1, 1, 0, 'Bard\'s Cloak'), -- NPC LOOT (White World Drop) - (Item Levels: 10-14) - (NPC Levels: 11-12)
(60414, 6555, 0, 1, 1, 1, 0, 'Bard\'s Cloak'), -- NPC LOOT (White World Drop) - (Item Levels: 11-14) - (NPC Levels: 12)
(60415, 6555, 0, 1, 1, 1, 0, 'Bard\'s Cloak'), -- NPC LOOT (White World Drop) - (Item Levels: 11-14) - (NPC Levels: 12-13)
(60416, 6555, 0, 1, 1, 1, 0, 'Bard\'s Cloak'), -- NPC LOOT (White World Drop) - (Item Levels: 12-14) - (NPC Levels: 13)
(60417, 6555, 0, 1, 1, 1, 0, 'Bard\'s Cloak'), -- NPC LOOT (White World Drop) - (Item Levels: 12-14) - (NPC Levels: 13-14)
(60418, 6555, 0, 1, 1, 1, 0, 'Bard\'s Cloak'), -- NPC LOOT (White World Drop) - (Item Levels: 13-15) - (NPC Levels: 14)
(60419, 6555, 0, 1, 1, 1, 0, 'Bard\'s Cloak'), -- NPC LOOT (White World Drop) - (Item Levels: 13-18) - (NPC Levels: 14-15)
(60420, 6555, 0, 1, 1, 1, 0, 'Bard\'s Cloak'), -- NPC LOOT (White World Drop) - (Item Levels: 14-18) - (NPC Levels: 15)
(60421, 6555, 0, 1, 1, 1, 0, 'Bard\'s Cloak'); -- NPC LOOT (White World Drop) - (Item Levels: 14-19) - (NPC Levels: 15-16)

DELETE FROM `creature_loot_template` WHERE `entry` IN (119,454,830,831,1184,1186,1188,1190,1191,1193,1194,1195,1693,1765,1766,1780,1781,1797) AND `item` BETWEEN 60411 AND 60421;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(119, 60411, 5, 0, -60411, 1, 0, ''),
(454, 60415, 5, 0, -60415, 1, 0, ''),
(830, 60417, 5, 0, -60417, 1, 0, ''),
(831, 60421, 5, 0, -60421, 1, 0, ''),
(1184, 60417, 5, 0, -60417, 1, 0, ''),
(1186, 60413, 5, 0, -60413, 1, 0, ''),
(1188, 60417, 5, 0, -60417, 1, 0, ''),
(1190, 60411, 5, 0, -60411, 1, 0, ''),
(1191, 60419, 5, 0, -60419, 1, 0, ''),
(1193, 60415, 5, 0, -60415, 1, 0, ''),
(1194, 60421, 5, 0, -60421, 1, 0, ''),
(1195, 60411, 5, 0, -60411, 1, 0, ''),
(1693, 60419, 5, 0, -60419, 1, 0, ''),
(1765, 60411, 5, 0, -60411, 1, 0, ''),
(1766, 60413, 5, 0, -60413, 1, 0, ''),
(1780, 60415, 5, 0, -60415, 1, 0, ''),
(1781, 60417, 5, 0, -60417, 1, 0, ''),
(1797, 60415, 5, 0, -60415, 1, 0, '');

DELETE FROM `creature_loot_template` WHERE `item` = 6549; -- Soldier's Cloak
-- Included in 60411,60412,60413,60414,60415,60416,60417,60418,60419,60420,60421
DELETE FROM `creature_loot_template` WHERE `entry` = 3632 AND `item` = 60421;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(3632, 60421, 5, 0, -60421, 1, 0, '');

DELETE FROM `creature_loot_template` WHERE `item` = 6566; -- Shimmering Amice
-- Included in 60431,60432,60433,60434,60435,60436,60437,60438,60439,60440
DELETE FROM `creature_loot_template` WHERE `entry` IN (687,3774,4511) AND `item` BETWEEN 60401 AND 60440;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(687, 60440, 5, 0, -60440, 1, 0, ''),
(3774, 60435, 5, 0, -60435, 1, 0, ''),
(4511, 60439, 5, 0, -60439, 1, 0, '');

-- Add Defender Spaulders 6579 to related White World Drop RefLoots and Remove it from creature_loot_template
-- the refloot range maybe narrower, but going by item stats: (6579, 'Defender Spaulders', itemlevel 25, requiredlevel 19),
DELETE FROM `creature_loot_template` WHERE `item` = 6579; -- Remove from unique item list
DELETE FROM `reference_loot_template` WHERE `item` = 6579 AND `entry` BETWEEN 60431 AND 60440;
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(60431, 6579, 0, 1, 1, 1, 0, 'Defender Spaulders'), -- NPC LOOT (White World Drop) - (Item Levels: 21-24) - (NPC Levels: 20-21)
(60432, 6579, 0, 1, 1, 1, 0, 'Defender Spaulders'), -- NPC LOOT (White World Drop) - (Item Levels: 22-24) - (NPC Levels: 21)
(60433, 6579, 0, 1, 1, 1, 0, 'Defender Spaulders'), -- NPC LOOT (White World Drop) - (Item Levels: 22-24) - (NPC Levels: 21-22)
(60434, 6579, 0, 1, 1, 1, 0, 'Defender Spaulders'), -- NPC LOOT (White World Drop) - (Item Levels: 22-24) - (NPC Levels: 22)
(60435, 6579, 0, 1, 1, 1, 0, 'Defender Spaulders'), -- NPC LOOT (White World Drop) - (Item Levels: 22-24) - (NPC Levels: 22-23)
(60436, 6579, 0, 1, 1, 1, 0, 'Defender Spaulders'), -- NPC LOOT (White World Drop) - (Item Levels: 23-24) - (NPC Levels: 23)
(60437, 6579, 0, 1, 1, 1, 0, 'Defender Spaulders'), -- NPC LOOT (White World Drop) - (Item Levels: 23-24) - (NPC Levels: 23-24)
(60438, 6579, 0, 1, 1, 1, 0, 'Defender Spaulders'), -- NPC LOOT (White World Drop) - (Item Levels: 23-24) - (NPC Levels: 24)
(60439, 6579, 0, 1, 1, 1, 0, 'Defender Spaulders'), -- NPC LOOT (White World Drop) - (Item Levels: 23-24) - (NPC Levels: 24-25)
(60440, 6579, 0, 1, 1, 1, 0, 'Defender Spaulders'); -- NPC LOOT (White World Drop) - (Item Levels: 24) - (NPC Levels: 25)

DELETE FROM `creature_loot_template` WHERE `entry` IN (345,429,431,445,889,909,948,949,1016,1017,1020,1021,1022,1033,1041,1042,1043,1069,1157,1258,1400,1417,2089,2268,2349,2350,2351,2354,2356,2377,2384,2387,2408,2529,2850,3715,3855,3857,3859,3863,3866,3868,3875,4627,5828,5831,6206,6207,6208,6213,6329,11921,15807) AND `item` BETWEEN 60426 AND 60440;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(345, 60438, 5, 0, -60438, 1, 0, ''),
(429, 60440, 5, 0, -60440, 1, 0, ''),
(431, 60440, 5, 0, -60440, 1, 0, ''),
(445, 60429, 5, 0, -60429, 1, 0, ''),
(889, 60440, 5, 0, -60440, 1, 0, ''),
(909, 60440, 5, 0, -60440, 1, 0, ''),
(948, 60440, 5, 0, -60440, 1, 0, ''),
(949, 60440, 5, 0, -60440, 1, 0, ''),
(1016, 60439, 5, 0, -60439, 1, 0, ''),
(1017, 60440, 5, 0, -60440, 1, 0, ''),
(1020, 60435, 5, 0, -60435, 1, 0, ''),
(1021, 60439, 5, 0, -60439, 1, 0, ''),
(1022, 60440, 5, 0, -60440, 1, 0, ''),
(1033, 60440, 5, 0, -60440, 1, 0, ''),
(1041, 60440, 5, 0, -60440, 1, 0, ''),
(1042, 60437, 5, 0, -60437, 1, 0, ''),
(1043, 60439, 5, 0, -60439, 1, 0, ''),
(1069, 60440, 5, 0, -60440, 1, 0, ''),
(1157, 60440, 5, 0, -60440, 1, 0, ''),
(1258, 60440, 5, 0, -60440, 1, 0, ''),
(1400, 60437, 5, 0, -60437, 1, 0, ''),
(1417, 60433, 5, 0, -60433, 1, 0, ''),
(2089, 60440, 5, 0, -60440, 1, 0, ''),
(2268, 60440, 5, 0, -60440, 1, 0, ''),
(2349, 60439, 5, 0, -60439, 1, 0, ''),
(2350, 60431, 5, 0, -60431, 1, 0, ''),
(2351, 60433, 5, 0, -60433, 1, 0, ''),
(2354, 60435, 5, 0, -60435, 1, 0, ''),
(2356, 60440, 5, 0, -60440, 1, 0, ''),
(2377, 60440, 5, 0, -60440, 1, 0, ''),
(2384, 60437, 5, 0, -60437, 1, 0, ''),
(2387, 60440, 5, 0, -60440, 1, 0, ''),
(2408, 60440, 5, 0, -60440, 1, 0, ''),
(2529, 60430, 5, 0, -60430, 1, 0, ''),
(2850, 60440, 5, 0, -60440, 1, 0, ''),
(3715, 60429, 5, 0, -60429, 1, 0, ''),
(3855, 60428, 5, 0, -60428, 1, 0, ''),
(3857, 60428, 5, 0, -60428, 1, 0, ''),
(3859, 60430, 5, 0, -60430, 1, 0, ''),
(3863, 60430, 5, 0, -60430, 1, 0, ''),
(3866, 60430, 5, 0, -60430, 1, 0, ''),
(3868, 60430, 5, 0, -60430, 1, 0, ''),
(3875, 60427, 5, 0, -60427, 1, 0, ''),
(4627, 60430, 5, 0, -60430, 1, 0, ''),
(5828, 60436, 5, 0, -60436, 1, 0, ''),
(5831, 60432, 5, 0, -60432, 1, 0, ''),
(6206, 60440, 5, 0, -60440, 1, 0, ''),
(6207, 60440, 5, 0, -60440, 1, 0, ''),
(6208, 60440, 5, 0, -60440, 1, 0, ''),
(6213, 60440, 5, 0, -60440, 1, 0, ''),
(6329, 60440, 5, 0, -60440, 1, 0, ''),
(11921, 60432, 5, 0, -60432, 1, 0, ''),
(15807, 60440, 5, 0, -60440, 1, 0, '');

DELETE FROM `creature_loot_template` WHERE `item` = 14157; -- Pagan Mantle
-- Included in 60431,60432,60433,60434,60435,60436,60437,60438,60439,60440
DELETE FROM `creature_loot_template` WHERE `entry` IN (3235,3237,3238,3239,3249,3250,3252,3424,3466,3473,3774,3809,3810,3814,3817,3819,3820,3824,4015,4016,4018,4031,4034,4036,4044,4067,4117,4126,4128,4511,4514,4822,4824,5762,12678) AND `item` BETWEEN 60401 AND 60440;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(3235, 60439, 5, 0, -60439, 1, 0, ''),
(3237, 60440, 5, 0, -60440, 1, 0, ''),
(3238, 60435, 5, 0, -60435, 1, 0, ''),
(3239, 60431, 5, 0, -60431, 1, 0, ''),
(3249, 60437, 5, 0, -60437, 1, 0, ''),
(3250, 60431, 5, 0, -60431, 1, 0, ''),
(3252, 60433, 5, 0, -60433, 1, 0, ''),
(3424, 60433, 5, 0, -60433, 1, 0, ''),
(3466, 60431, 5, 0, -60431, 1, 0, ''),
(3473, 60438, 5, 0, -60438, 1, 0, ''),
(3774, 60435, 5, 0, -60435, 1, 0, ''),
(3809, 60433, 5, 0, -60433, 1, 0, ''),
(3810, 60440, 5, 0, -60440, 1, 0, ''),
(3814, 60431, 5, 0, -60431, 1, 0, ''),
(3817, 60435, 5, 0, -60435, 1, 0, ''),
(3819, 60431, 5, 0, -60431, 1, 0, ''),
(3820, 60439, 5, 0, -60439, 1, 0, ''),
(3824, 60437, 5, 0, -60437, 1, 0, ''),
(4015, 60440, 5, 0, -60440, 1, 0, ''),
(4016, 60439, 5, 0, -60439, 1, 0, ''),
(4018, 60435, 5, 0, -60435, 1, 0, ''),
(4031, 60440, 5, 0, -60440, 1, 0, ''),
(4034, 60439, 5, 0, -60439, 1, 0, ''),
(4036, 60437, 5, 0, -60437, 1, 0, ''),
(4044, 60437, 5, 0, -60437, 1, 0, ''),
(4067, 60437, 5, 0, -60437, 1, 0, ''),
(4117, 60440, 5, 0, -60440, 1, 0, ''),
(4126, 60440, 5, 0, -60440, 1, 0, ''),
(4128, 60435, 5, 0, -60435, 1, 0, ''),
(4511, 60439, 5, 0, -60439, 1, 0, ''),
(4514, 60440, 5, 0, -60440, 1, 0, ''),
(4822, 60435, 5, 0, -60435, 1, 0, ''),
(4824, 60435, 5, 0, -60435, 1, 0, ''),
(5762, 60428, 5, 0, -60428, 1, 0, ''),
(12678, 60440, 5, 0, -60440, 1, 0, '');

DELETE FROM `creature_loot_template` WHERE `item` = 15313; -- Feral Shoulder Pads
-- Included in 60431,60432,60433,60434,60435,60436,60437,60438,60439,60440
DELETE FROM `creature_loot_template` WHERE `entry` IN (3472,4019,4250) AND `item` BETWEEN 60401 AND 60440;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(3472, 60440, 5, 0, -60440, 1, 0, ''),
(4019, 60439, 5, 0, -60439, 1, 0, ''),
(4250, 60438, 5, 0, -60438, 1, 0, '');

-- Add Scouting Spaulders 6588 to related White World Drop RefLoots and Remove it from creature_loot_template (23)
DELETE FROM `creature_loot_template` WHERE `item` = 6588; -- Remove from unique item list
DELETE FROM `reference_loot_template` WHERE `item` = 6588 AND `entry` BETWEEN 60429 AND 60439;
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(60429, 6588, 0, 1, 1, 1, 0, 'Scouting Spaulders'), -- NPC LOOT (White World Drop) - (Item Levels: 20-23) - (NPC Levels: 19-20)
(60430, 6588, 0, 1, 1, 1, 0, 'Scouting Spaulders'), -- NPC LOOT (White World Drop) - (Item Levels: 21-23) - (NPC Levels: 20)
(60431, 6588, 0, 1, 1, 1, 0, 'Scouting Spaulders'), -- NPC LOOT (White World Drop) - (Item Levels: 21-24) - (NPC Levels: 20-21)
(60432, 6588, 0, 1, 1, 1, 0, 'Scouting Spaulders'), -- NPC LOOT (White World Drop) - (Item Levels: 22-24) - (NPC Levels: 21)
(60433, 6588, 0, 1, 1, 1, 0, 'Scouting Spaulders'), -- NPC LOOT (White World Drop) - (Item Levels: 22-24) - (NPC Levels: 21-22)
(60434, 6588, 0, 1, 1, 1, 0, 'Scouting Spaulders'), -- NPC LOOT (White World Drop) - (Item Levels: 22-24) - (NPC Levels: 22)
(60435, 6588, 0, 1, 1, 1, 0, 'Scouting Spaulders'), -- NPC LOOT (White World Drop) - (Item Levels: 22-24) - (NPC Levels: 22-23)
(60436, 6588, 0, 1, 1, 1, 0, 'Scouting Spaulders'), -- NPC LOOT (White World Drop) - (Item Levels: 23-24) - (NPC Levels: 23)
(60437, 6588, 0, 1, 1, 1, 0, 'Scouting Spaulders'), -- NPC LOOT (White World Drop) - (Item Levels: 23-24) - (NPC Levels: 23-24)
(60438, 6588, 0, 1, 1, 1, 0, 'Scouting Spaulders'), -- NPC LOOT (White World Drop) - (Item Levels: 23-24) - (NPC Levels: 24)
(60439, 6588, 0, 1, 1, 1, 0, 'Scouting Spaulders'); -- NPC LOOT (White World Drop) - (Item Levels: 23-24) - (NPC Levels: 24-25)

DELETE FROM `creature_loot_template` WHERE `entry` IN (1225,1666,2477,2478,3864) AND `item` BETWEEN 60426 AND 60440;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(1225, 60430, 5, 0, -60430, 1, 0, ''),
(1666, 60440, 5, 0, -60440, 1, 0, ''),
(2477, 60431, 5, 0, -60431, 1, 0, ''),
(2478, 60431, 5, 0, -60431, 1, 0, ''),
(3864, 60429, 5, 0, -60429, 1, 0, '');

DELETE FROM `creature_loot_template` WHERE `item` = 14126; -- Ritual Amice
-- Included in 60429,60430,60431,60432,60433,60434,60435,60436,60437,60438,60439
DELETE FROM `creature_loot_template` WHERE `entry` IN (2071,3247,3251,3398,3474,4006,4011,12940) AND `item` BETWEEN 60426 AND 60440;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(2071, 60429, 5, 0, -60429, 1, 0, ''),
(3247, 60429, 5, 0, -60429, 1, 0, ''),
(3251, 60430, 5, 0, -60430, 1, 0, ''),
(3398, 60430, 5, 0, -60430, 1, 0, ''),
(3474, 60434, 5, 0, -60434, 1, 0, ''),
(4006, 60429, 5, 0, -60429, 1, 0, ''),
(4011, 60429, 5, 0, -60429, 1, 0, ''),
(12940, 60434, 5, 0, -60434, 1, 0, '');

DELETE FROM `creature_loot_template` WHERE `item` = 15505; -- Outrunner's Pauldrons
-- Included in 60429,60430,60431,60432,60433,60434,60435,60436,60437,60438,60439

DELETE FROM `creature_loot_template` WHERE `item` = 4694; -- Burnished Pauldrons
-- Included in 60427,60428,60429,60430,60431,60432,60433,60434,60435
DELETE FROM `creature_loot_template` WHERE `entry` = 832 AND `item` = 60427;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(832, 60427, 5, 0, -60427, 1, 0, '');

-- Add Bandit Shoulders 10405 to related White World Drop RefLoots and Remove it from creature_loot_template (22)
DELETE FROM `creature_loot_template` WHERE `item` = 10405; -- Remove from unique item list
DELETE FROM `reference_loot_template` WHERE `item` = 10405 AND `entry` BETWEEN 60427 AND 60435;
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(60427, 10405, 0, 1, 1, 1, 0, 'Bandit Shoulders'),
(60428, 10405, 0, 1, 1, 1, 0, 'Bandit Shoulders'),
(60429, 10405, 0, 1, 1, 1, 0, 'Bandit Shoulders'),
(60430, 10405, 0, 1, 1, 1, 0, 'Bandit Shoulders'),
(60431, 10405, 0, 1, 1, 1, 0, 'Bandit Shoulders'),
(60432, 10405, 0, 1, 1, 1, 0, 'Bandit Shoulders'),
(60433, 10405, 0, 1, 1, 1, 0, 'Bandit Shoulders'),
(60434, 10405, 0, 1, 1, 1, 0, 'Bandit Shoulders'),
(60435, 10405, 0, 1, 1, 1, 0, 'Bandit Shoulders');

DELETE FROM `creature_loot_template` WHERE `entry` IN (2186,3861,5842,7017,15812,16346) AND `item` BETWEEN 60421 AND 60440;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(2186, 60422, 5, 0, -60422, 1, 0, ''),
(3861, 60427, 5, 0, -60427, 1, 0, ''),
(5842, 60428, 5, 0, -60428, 1, 0, ''),
(7017, 60421, 5, 0, -60421, 1, 0, ''),
(15812, 60429, 5, 0, -60429, 1, 0, '');

DELETE FROM `creature_loot_template` WHERE `item` = 14170; -- Buccaneer's Mantle
-- Included in 60427,60428,60429,60430,60431,60432,60433,60434,60435

DELETE FROM `creature_loot_template` WHERE `item` = 14368; -- Mystic's Shoulder Pads
-- Included in 60427,60428,60429,60430,60431,60432,60433,60434,60435
DELETE FROM `creature_loot_template` WHERE `entry` IN (2323,3236,3240,3257,3503,3636,3637,3812,3816,4009,4264,5053,6788,8886) AND `item` BETWEEN 60401 AND 60440;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(2323, 60427, 5, 0, -60427, 1, 0, ''),
(3236, 60429, 5, 0, -60429, 1, 0, ''),
(3240, 60427, 5, 0, -60427, 1, 0, ''),
(3257, 60428, 5, 0, -60428, 1, 0, ''),
(3503, 60427, 5, 0, -60427, 1, 0, ''),
(3636, 60427, 5, 0, -60427, 1, 0, ''),
(3637, 60427, 5, 0, -60427, 1, 0, ''),
(3812, 60429, 5, 0, -60429, 1, 0, ''),
(3816, 60427, 5, 0, -60427, 1, 0, ''),
(4009, 60427, 5, 0, -60427, 1, 0, ''),
(4264, 60434, 5, 0, -60434, 1, 0, ''),
(5053, 60427, 5, 0, -60427, 1, 0, ''),
(6788, 60427, 5, 0, -60427, 1, 0, ''),
(8886, 60427, 5, 0, -60427, 1, 0, '');

DELETE FROM `creature_loot_template` WHERE `item` = 14728; -- War Paint Shoulder Pads
-- Included in 60427,60428,60429,60430,60431,60432,60433,60434,60435
DELETE FROM `creature_loot_template` WHERE `entry` = 3463 AND `item` = 60427;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(3463, 60427, 5, 0, -60427, 1, 0, '');

DELETE FROM `creature_loot_template` WHERE `item` = 4698; -- Seer's Mantle
-- Included in 60424,60425,60426,60427,60428,60429,60430,60431
DELETE FROM `creature_loot_template` WHERE `entry` IN (441,1185,1216) AND `item` = 60425;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(441, 60425, 5, 0, -60425, 1, 0, ''),
(1185, 60425, 5, 0, -60425, 1, 0, ''),
(1216, 60425, 5, 0, -60425, 1, 0, '');

DELETE FROM `creature_loot_template` WHERE `item` = 4700; -- Inscribed Leather Spaulders

DELETE FROM `creature_loot_template` WHERE `item` = 10407; -- Raider's Shoulderpads
-- Included in 60423,60424,60425,60426,60427,60428,60429,60430,60431
DELETE FROM `creature_loot_template` WHERE `entry` IN (15810,15813,16355) AND `item` IN (60423,60425,60430);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(15810, 60423, 5, 0, -60423, 1, 0, ''),
(15813, 60430, 5, 0, -60430, 1, 0, '');

DELETE FROM `creature_loot_template` WHERE `item` = 14169; -- Aboriginal Shoulder Pads
-- Included in 60423,60424,60425,60426,60427,60428,60429,60430,60431
DELETE FROM `creature_loot_template` WHERE `entry` IN (2237,3256,3416,3426,3722,4007,15808,16352) AND `item` IN (60423,60425,60430,60431,60435);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(2237, 60425, 5, 0, -60425, 1, 0, ''),
(3256, 60425, 5, 0, -60425, 1, 0, ''),
(3416, 60425, 5, 0, -60425, 1, 0, ''),
(3426, 60425, 5, 0, -60425, 1, 0, ''),
(3722, 60431, 5, 0, -60431, 1, 0, ''),
(4007, 60425, 5, 0, -60425, 1, 0, ''),
(15808, 60435, 5, 0, -60435, 1, 0, '');

DELETE FROM `creature_loot_template` WHERE `item` = 15019; -- Lupine Mantle
-- Included in 60423,60424,60425,60426,60427,60428,60429,60430,60431

DELETE FROM `creature_loot_template` WHERE `item` = 15496; -- Bloodspattered Shoulder Pads
-- Included in 60423,60424,60425,60426,60427,60428,60429,60430,60431

-- Forgotten Sets: "Simple / Gypsy / Cadet Set" - White Items only!
DELETE FROM `creature_loot_template` WHERE `item` IN (9745,9754,9761); -- Remove from unique item list
DELETE FROM `reference_loot_template` WHERE `item` IN (9745,9754,9761) AND `entry` BETWEEN 60403 AND 60415;
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
-- itemlevel 11
(60403, 9745, 0, 1, 1, 1, 0, 'Simple Cape'), -- NPC LOOT (White World Drop) - (Item Levels: 7-11) - (NPC Levels: 6-7)
(60404, 9745, 0, 1, 1, 1, 0, 'Simple Cape'), -- NPC LOOT (White World Drop) - (Item Levels: 7-11) - (NPC Levels: 7)
(60405, 9745, 0, 1, 1, 1, 0, 'Simple Cape'), -- NPC LOOT (White World Drop) - (Item Levels: 7-12) - (NPC Levels: 7-8)
(60406, 9745, 0, 1, 1, 1, 0, 'Simple Cape'), -- NPC LOOT (White World Drop) - (Item Levels: 7-12) - (NPC Levels: 8)
(60407, 9745, 0, 1, 1, 1, 0, 'Simple Cape'), -- NPC LOOT (White World Drop) - (Item Levels: 7-12) - (NPC Levels: 8-9)
(60408, 9745, 0, 1, 1, 1, 0, 'Simple Cape'), -- NPC LOOT (White World Drop) - (Item Levels: 8-12) - (NPC Levels: 9)
(60409, 9745, 0, 1, 1, 1, 0, 'Simple Cape'), -- NPC LOOT (White World Drop) - (Item Levels: 8-13) - (NPC Levels: 9-10)
(60410, 9745, 0, 1, 1, 1, 0, 'Simple Cape'), -- NPC LOOT (White World Drop) - (Item Levels: 9-13) - (NPC Levels: 10)
(60411, 9745, 0, 1, 1, 1, 0, 'Simple Cape'), -- NPC LOOT (White World Drop) - (Item Levels: 9-14) - (NPC Levels: 10-11)
(60412, 9745, 0, 1, 1, 1, 0, 'Simple Cape'), -- NPC LOOT (White World Drop) - (Item Levels: 10-14) - (NPC Levels: 11)
(60413, 9745, 0, 1, 1, 1, 0, 'Simple Cape'), -- NPC LOOT (White World Drop) - (Item Levels: 10-14) - (NPC Levels: 11-12)
(60414, 9745, 0, 1, 1, 1, 0, 'Simple Cape'), -- NPC LOOT (White World Drop) - (Item Levels: 11-14) - (NPC Levels: 12)
(60415, 9745, 0, 1, 1, 1, 0, 'Simple Cape'), -- NPC LOOT (White World Drop) - (Item Levels: 11-14) - (NPC Levels: 12-13)

(60403, 9754, 0, 1, 1, 1, 0, 'Gypsy Cloak'), -- NPC LOOT (White World Drop) - (Item Levels: 7-11) - (NPC Levels: 6-7)
(60404, 9754, 0, 1, 1, 1, 0, 'Gypsy Cloak'), -- NPC LOOT (White World Drop) - (Item Levels: 7-11) - (NPC Levels: 7)
(60405, 9754, 0, 1, 1, 1, 0, 'Gypsy Cloak'), -- NPC LOOT (White World Drop) - (Item Levels: 7-12) - (NPC Levels: 7-8)
(60406, 9754, 0, 1, 1, 1, 0, 'Gypsy Cloak'), -- NPC LOOT (White World Drop) - (Item Levels: 7-12) - (NPC Levels: 8)
(60407, 9754, 0, 1, 1, 1, 0, 'Gypsy Cloak'), -- NPC LOOT (White World Drop) - (Item Levels: 7-12) - (NPC Levels: 8-9)
(60408, 9754, 0, 1, 1, 1, 0, 'Gypsy Cloak'), -- NPC LOOT (White World Drop) - (Item Levels: 8-12) - (NPC Levels: 9)
(60409, 9754, 0, 1, 1, 1, 0, 'Gypsy Cloak'), -- NPC LOOT (White World Drop) - (Item Levels: 8-13) - (NPC Levels: 9-10)
(60410, 9754, 0, 1, 1, 1, 0, 'Gypsy Cloak'), -- NPC LOOT (White World Drop) - (Item Levels: 9-13) - (NPC Levels: 10)
(60411, 9754, 0, 1, 1, 1, 0, 'Gypsy Cloak'), -- NPC LOOT (White World Drop) - (Item Levels: 9-14) - (NPC Levels: 10-11)
(60412, 9754, 0, 1, 1, 1, 0, 'Gypsy Cloak'), -- NPC LOOT (White World Drop) - (Item Levels: 10-14) - (NPC Levels: 11)
(60413, 9754, 0, 1, 1, 1, 0, 'Gypsy Cloak'), -- NPC LOOT (White World Drop) - (Item Levels: 10-14) - (NPC Levels: 11-12)
(60414, 9754, 0, 1, 1, 1, 0, 'Gypsy Cloak'), -- NPC LOOT (White World Drop) - (Item Levels: 11-14) - (NPC Levels: 12)
(60415, 9754, 0, 1, 1, 1, 0, 'Gypsy Cloak'), -- NPC LOOT (White World Drop) - (Item Levels: 11-14) - (NPC Levels: 12-13)

(60403, 9761, 0, 1, 1, 1, 0, 'Cadet Cloak'), -- NPC LOOT (White World Drop) - (Item Levels: 7-11) - (NPC Levels: 6-7)
(60404, 9761, 0, 1, 1, 1, 0, 'Cadet Cloak'), -- NPC LOOT (White World Drop) - (Item Levels: 7-11) - (NPC Levels: 7)
(60405, 9761, 0, 1, 1, 1, 0, 'Cadet Cloak'), -- NPC LOOT (White World Drop) - (Item Levels: 7-12) - (NPC Levels: 7-8)
(60406, 9761, 0, 1, 1, 1, 0, 'Cadet Cloak'), -- NPC LOOT (White World Drop) - (Item Levels: 7-12) - (NPC Levels: 8)
(60407, 9761, 0, 1, 1, 1, 0, 'Cadet Cloak'), -- NPC LOOT (White World Drop) - (Item Levels: 7-12) - (NPC Levels: 8-9)
(60408, 9761, 0, 1, 1, 1, 0, 'Cadet Cloak'), -- NPC LOOT (White World Drop) - (Item Levels: 8-12) - (NPC Levels: 9)
(60409, 9761, 0, 1, 1, 1, 0, 'Cadet Cloak'), -- NPC LOOT (White World Drop) - (Item Levels: 8-13) - (NPC Levels: 9-10)
(60410, 9761, 0, 1, 1, 1, 0, 'Cadet Cloak'), -- NPC LOOT (White World Drop) - (Item Levels: 9-13) - (NPC Levels: 10)
(60411, 9761, 0, 1, 1, 1, 0, 'Cadet Cloak'), -- NPC LOOT (White World Drop) - (Item Levels: 9-14) - (NPC Levels: 10-11)
(60412, 9761, 0, 1, 1, 1, 0, 'Cadet Cloak'), -- NPC LOOT (White World Drop) - (Item Levels: 10-14) - (NPC Levels: 11)
(60413, 9761, 0, 1, 1, 1, 0, 'Cadet Cloak'), -- NPC LOOT (White World Drop) - (Item Levels: 10-14) - (NPC Levels: 11-12)
(60414, 9761, 0, 1, 1, 1, 0, 'Cadet Cloak'), -- NPC LOOT (White World Drop) - (Item Levels: 11-14) - (NPC Levels: 12)
(60415, 9761, 0, 1, 1, 1, 0, 'Cadet Cloak'); -- NPC LOOT (White World Drop) - (Item Levels: 11-14) - (NPC Levels: 12-13)

DELETE FROM `creature_loot_template` WHERE `entry` IN (118,330,1133,1211,1549,1554,1555,1961,2001,2231,3123,3254,5435,6789,15642,16307,16323,16337,16353,16404,17190,17343,17347,17352) AND `item` BETWEEN 60401 AND 60440;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(118, 60409, 5, 0, -60409, 1, 0, ''),
(330, 60408, 5, 0, -60408, 1, 0, ''),
(1133, 60407, 5, 0, -60407, 1, 0, ''),
(1211, 60409, 5, 0, -60409, 1, 0, ''),
(1549, 60409, 5, 0, -60409, 1, 0, ''),
(1554, 60407, 5, 0, -60407, 1, 0, ''),
(1555, 60409, 5, 0, -60409, 1, 0, ''),
(1961, 60412, 5, 0, -60412, 1, 0, ''),
(2001, 60411, 5, 0, -60411, 1, 0, ''),
(2231, 60409, 5, 0, -60409, 1, 0, ''),
(3123, 60409, 5, 0, -60409, 1, 0, ''),
(3254, 60415, 5, 0, -60415, 1, 0, ''),
(5435, 60415, 5, 0, -60415, 1, 0, ''),
(6789, 60413, 5, 0, -60413, 1, 0, '');

DELETE FROM `creature_loot_template` WHERE `item` IN (9742,9743,9744,9750,9751,9752,9758,9760); -- Remove from unique item list
DELETE FROM `reference_loot_template` WHERE `item` IN (9742,9743,9744,9750,9751,9752,9758,9760) AND `entry` BETWEEN 60405 AND 60417;
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
-- itemlevel 12
(60405, 9742, 0, 1, 1, 1, 0, 'Simple Cord'), -- NPC LOOT (White World Drop) - (Item Levels: 7-12) - (NPC Levels: 7-8)
(60406, 9742, 0, 1, 1, 1, 0, 'Simple Cord'), -- NPC LOOT (White World Drop) - (Item Levels: 7-12) - (NPC Levels: 8)
(60407, 9742, 0, 1, 1, 1, 0, 'Simple Cord'), -- NPC LOOT (White World Drop) - (Item Levels: 7-12) - (NPC Levels: 8-9)
(60408, 9742, 0, 1, 1, 1, 0, 'Simple Cord'), -- NPC LOOT (White World Drop) - (Item Levels: 8-12) - (NPC Levels: 9)
(60409, 9742, 0, 1, 1, 1, 0, 'Simple Cord'), -- NPC LOOT (White World Drop) - (Item Levels: 8-13) - (NPC Levels: 9-10)
(60410, 9742, 0, 1, 1, 1, 0, 'Simple Cord'), -- NPC LOOT (White World Drop) - (Item Levels: 9-13) - (NPC Levels: 10)
(60411, 9742, 0, 1, 1, 1, 0, 'Simple Cord'), -- NPC LOOT (White World Drop) - (Item Levels: 9-14) - (NPC Levels: 10-11)
(60412, 9742, 0, 1, 1, 1, 0, 'Simple Cord'), -- NPC LOOT (White World Drop) - (Item Levels: 10-14) - (NPC Levels: 11)
(60413, 9742, 0, 1, 1, 1, 0, 'Simple Cord'), -- NPC LOOT (White World Drop) - (Item Levels: 10-14) - (NPC Levels: 11-12)
(60414, 9742, 0, 1, 1, 1, 0, 'Simple Cord'), -- NPC LOOT (White World Drop) - (Item Levels: 11-14) - (NPC Levels: 12)
(60415, 9742, 0, 1, 1, 1, 0, 'Simple Cord'), -- NPC LOOT (White World Drop) - (Item Levels: 11-14) - (NPC Levels: 12-13)
(60416, 9742, 0, 1, 1, 1, 0, 'Simple Cord'), -- NPC LOOT (White World Drop) - (Item Levels: 12-14) - (NPC Levels: 13)
(60417, 9742, 0, 1, 1, 1, 0, 'Simple Cord'), -- NPC LOOT (White World Drop) - (Item Levels: 12-14) - (NPC Levels: 13-14)

(60405, 9743, 0, 1, 1, 1, 0, 'Simple Shoes'), -- NPC LOOT (White World Drop) - (Item Levels: 7-12) - (NPC Levels: 7-8)
(60406, 9743, 0, 1, 1, 1, 0, 'Simple Shoes'), -- NPC LOOT (White World Drop) - (Item Levels: 7-12) - (NPC Levels: 8)
(60407, 9743, 0, 1, 1, 1, 0, 'Simple Shoes'), -- NPC LOOT (White World Drop) - (Item Levels: 7-12) - (NPC Levels: 8-9)
(60408, 9743, 0, 1, 1, 1, 0, 'Simple Shoes'), -- NPC LOOT (White World Drop) - (Item Levels: 8-12) - (NPC Levels: 9)
(60409, 9743, 0, 1, 1, 1, 0, 'Simple Shoes'), -- NPC LOOT (White World Drop) - (Item Levels: 8-13) - (NPC Levels: 9-10)
(60410, 9743, 0, 1, 1, 1, 0, 'Simple Shoes'), -- NPC LOOT (White World Drop) - (Item Levels: 9-13) - (NPC Levels: 10)
(60411, 9743, 0, 1, 1, 1, 0, 'Simple Shoes'), -- NPC LOOT (White World Drop) - (Item Levels: 9-14) - (NPC Levels: 10-11)
(60412, 9743, 0, 1, 1, 1, 0, 'Simple Shoes'), -- NPC LOOT (White World Drop) - (Item Levels: 10-14) - (NPC Levels: 11)
(60413, 9743, 0, 1, 1, 1, 0, 'Simple Shoes'), -- NPC LOOT (White World Drop) - (Item Levels: 10-14) - (NPC Levels: 11-12)
(60414, 9743, 0, 1, 1, 1, 0, 'Simple Shoes'), -- NPC LOOT (White World Drop) - (Item Levels: 11-14) - (NPC Levels: 12)
(60415, 9743, 0, 1, 1, 1, 0, 'Simple Shoes'), -- NPC LOOT (White World Drop) - (Item Levels: 11-14) - (NPC Levels: 12-13)
(60416, 9743, 0, 1, 1, 1, 0, 'Simple Shoes'), -- NPC LOOT (White World Drop) - (Item Levels: 12-14) - (NPC Levels: 13)
(60417, 9743, 0, 1, 1, 1, 0, 'Simple Shoes'), -- NPC LOOT (White World Drop) - (Item Levels: 12-14) - (NPC Levels: 13-14)

(60405, 9744, 0, 1, 1, 1, 0, 'Simple Bands'), -- NPC LOOT (White World Drop) - (Item Levels: 7-12) - (NPC Levels: 7-8)
(60406, 9744, 0, 1, 1, 1, 0, 'Simple Bands'), -- NPC LOOT (White World Drop) - (Item Levels: 7-12) - (NPC Levels: 8)
(60407, 9744, 0, 1, 1, 1, 0, 'Simple Bands'), -- NPC LOOT (White World Drop) - (Item Levels: 7-12) - (NPC Levels: 8-9)
(60408, 9744, 0, 1, 1, 1, 0, 'Simple Bands'), -- NPC LOOT (White World Drop) - (Item Levels: 8-12) - (NPC Levels: 9)
(60409, 9744, 0, 1, 1, 1, 0, 'Simple Bands'), -- NPC LOOT (White World Drop) - (Item Levels: 8-13) - (NPC Levels: 9-10)
(60410, 9744, 0, 1, 1, 1, 0, 'Simple Bands'), -- NPC LOOT (White World Drop) - (Item Levels: 9-13) - (NPC Levels: 10)
(60411, 9744, 0, 1, 1, 1, 0, 'Simple Bands'), -- NPC LOOT (White World Drop) - (Item Levels: 9-14) - (NPC Levels: 10-11)
(60412, 9744, 0, 1, 1, 1, 0, 'Simple Bands'), -- NPC LOOT (White World Drop) - (Item Levels: 10-14) - (NPC Levels: 11)
(60413, 9744, 0, 1, 1, 1, 0, 'Simple Bands'), -- NPC LOOT (White World Drop) - (Item Levels: 10-14) - (NPC Levels: 11-12)
(60414, 9744, 0, 1, 1, 1, 0, 'Simple Bands'), -- NPC LOOT (White World Drop) - (Item Levels: 11-14) - (NPC Levels: 12)
(60415, 9744, 0, 1, 1, 1, 0, 'Simple Bands'), -- NPC LOOT (White World Drop) - (Item Levels: 11-14) - (NPC Levels: 12-13)
(60416, 9744, 0, 1, 1, 1, 0, 'Simple Bands'), -- NPC LOOT (White World Drop) - (Item Levels: 12-14) - (NPC Levels: 13)
(60417, 9744, 0, 1, 1, 1, 0, 'Simple Bands'), -- NPC LOOT (White World Drop) - (Item Levels: 12-14) - (NPC Levels: 13-14)

(60405, 9750, 0, 1, 1, 1, 0, 'Gypsy Sash'), -- NPC LOOT (White World Drop) - (Item Levels: 7-12) - (NPC Levels: 7-8)
(60406, 9750, 0, 1, 1, 1, 0, 'Gypsy Sash'), -- NPC LOOT (White World Drop) - (Item Levels: 7-12) - (NPC Levels: 8)
(60407, 9750, 0, 1, 1, 1, 0, 'Gypsy Sash'), -- NPC LOOT (White World Drop) - (Item Levels: 7-12) - (NPC Levels: 8-9)
(60408, 9750, 0, 1, 1, 1, 0, 'Gypsy Sash'), -- NPC LOOT (White World Drop) - (Item Levels: 8-12) - (NPC Levels: 9)
(60409, 9750, 0, 1, 1, 1, 0, 'Gypsy Sash'), -- NPC LOOT (White World Drop) - (Item Levels: 8-13) - (NPC Levels: 9-10)
(60410, 9750, 0, 1, 1, 1, 0, 'Gypsy Sash'), -- NPC LOOT (White World Drop) - (Item Levels: 9-13) - (NPC Levels: 10)
(60411, 9750, 0, 1, 1, 1, 0, 'Gypsy Sash'), -- NPC LOOT (White World Drop) - (Item Levels: 9-14) - (NPC Levels: 10-11)
(60412, 9750, 0, 1, 1, 1, 0, 'Gypsy Sash'), -- NPC LOOT (White World Drop) - (Item Levels: 10-14) - (NPC Levels: 11)
(60413, 9750, 0, 1, 1, 1, 0, 'Gypsy Sash'), -- NPC LOOT (White World Drop) - (Item Levels: 10-14) - (NPC Levels: 11-12)
(60414, 9750, 0, 1, 1, 1, 0, 'Gypsy Sash'), -- NPC LOOT (White World Drop) - (Item Levels: 11-14) - (NPC Levels: 12)
(60415, 9750, 0, 1, 1, 1, 0, 'Gypsy Sash'), -- NPC LOOT (White World Drop) - (Item Levels: 11-14) - (NPC Levels: 12-13)
(60416, 9750, 0, 1, 1, 1, 0, 'Gypsy Sash'), -- NPC LOOT (White World Drop) - (Item Levels: 12-14) - (NPC Levels: 13)
(60417, 9750, 0, 1, 1, 1, 0, 'Gypsy Sash'), -- NPC LOOT (White World Drop) - (Item Levels: 12-14) - (NPC Levels: 13-14)

(60405, 9751, 0, 1, 1, 1, 0, 'Gypsy Sandals'), -- NPC LOOT (White World Drop) - (Item Levels: 7-12) - (NPC Levels: 7-8)
(60406, 9751, 0, 1, 1, 1, 0, 'Gypsy Sandals'), -- NPC LOOT (White World Drop) - (Item Levels: 7-12) - (NPC Levels: 8)
(60407, 9751, 0, 1, 1, 1, 0, 'Gypsy Sandals'), -- NPC LOOT (White World Drop) - (Item Levels: 7-12) - (NPC Levels: 8-9)
(60408, 9751, 0, 1, 1, 1, 0, 'Gypsy Sandals'), -- NPC LOOT (White World Drop) - (Item Levels: 8-12) - (NPC Levels: 9)
(60409, 9751, 0, 1, 1, 1, 0, 'Gypsy Sandals'), -- NPC LOOT (White World Drop) - (Item Levels: 8-13) - (NPC Levels: 9-10)
(60410, 9751, 0, 1, 1, 1, 0, 'Gypsy Sandals'), -- NPC LOOT (White World Drop) - (Item Levels: 9-13) - (NPC Levels: 10)
(60411, 9751, 0, 1, 1, 1, 0, 'Gypsy Sandals'), -- NPC LOOT (White World Drop) - (Item Levels: 9-14) - (NPC Levels: 10-11)
(60412, 9751, 0, 1, 1, 1, 0, 'Gypsy Sandals'), -- NPC LOOT (White World Drop) - (Item Levels: 10-14) - (NPC Levels: 11)
(60413, 9751, 0, 1, 1, 1, 0, 'Gypsy Sandals'), -- NPC LOOT (White World Drop) - (Item Levels: 10-14) - (NPC Levels: 11-12)
(60414, 9751, 0, 1, 1, 1, 0, 'Gypsy Sandals'), -- NPC LOOT (White World Drop) - (Item Levels: 11-14) - (NPC Levels: 12)
(60415, 9751, 0, 1, 1, 1, 0, 'Gypsy Sandals'), -- NPC LOOT (White World Drop) - (Item Levels: 11-14) - (NPC Levels: 12-13)
(60416, 9751, 0, 1, 1, 1, 0, 'Gypsy Sandals'), -- NPC LOOT (White World Drop) - (Item Levels: 12-14) - (NPC Levels: 13)
(60417, 9751, 0, 1, 1, 1, 0, 'Gypsy Sandals'), -- NPC LOOT (White World Drop) - (Item Levels: 12-14) - (NPC Levels: 13-14)

(60405, 9752, 0, 1, 1, 1, 0, 'Gypsy Bands'), -- NPC LOOT (White World Drop) - (Item Levels: 7-12) - (NPC Levels: 7-8)
(60406, 9752, 0, 1, 1, 1, 0, 'Gypsy Bands'), -- NPC LOOT (White World Drop) - (Item Levels: 7-12) - (NPC Levels: 8)
(60407, 9752, 0, 1, 1, 1, 0, 'Gypsy Bands'), -- NPC LOOT (White World Drop) - (Item Levels: 7-12) - (NPC Levels: 8-9)
(60408, 9752, 0, 1, 1, 1, 0, 'Gypsy Bands'), -- NPC LOOT (White World Drop) - (Item Levels: 8-12) - (NPC Levels: 9)
(60409, 9752, 0, 1, 1, 1, 0, 'Gypsy Bands'), -- NPC LOOT (White World Drop) - (Item Levels: 8-13) - (NPC Levels: 9-10)
(60410, 9752, 0, 1, 1, 1, 0, 'Gypsy Bands'), -- NPC LOOT (White World Drop) - (Item Levels: 9-13) - (NPC Levels: 10)
(60411, 9752, 0, 1, 1, 1, 0, 'Gypsy Bands'), -- NPC LOOT (White World Drop) - (Item Levels: 9-14) - (NPC Levels: 10-11)
(60412, 9752, 0, 1, 1, 1, 0, 'Gypsy Bands'), -- NPC LOOT (White World Drop) - (Item Levels: 10-14) - (NPC Levels: 11)
(60413, 9752, 0, 1, 1, 1, 0, 'Gypsy Bands'), -- NPC LOOT (White World Drop) - (Item Levels: 10-14) - (NPC Levels: 11-12)
(60414, 9752, 0, 1, 1, 1, 0, 'Gypsy Bands'), -- NPC LOOT (White World Drop) - (Item Levels: 11-14) - (NPC Levels: 12)
(60415, 9752, 0, 1, 1, 1, 0, 'Gypsy Bands'), -- NPC LOOT (White World Drop) - (Item Levels: 11-14) - (NPC Levels: 12-13)
(60416, 9752, 0, 1, 1, 1, 0, 'Gypsy Bands'), -- NPC LOOT (White World Drop) - (Item Levels: 12-14) - (NPC Levels: 13)
(60417, 9752, 0, 1, 1, 1, 0, 'Gypsy Bands'), -- NPC LOOT (White World Drop) - (Item Levels: 12-14) - (NPC Levels: 13-14)

(60405, 9758, 0, 1, 1, 1, 0, 'Cadet Belt'), -- NPC LOOT (White World Drop) - (Item Levels: 7-12) - (NPC Levels: 7-8)
(60406, 9758, 0, 1, 1, 1, 0, 'Cadet Belt'), -- NPC LOOT (White World Drop) - (Item Levels: 7-12) - (NPC Levels: 8)
(60407, 9758, 0, 1, 1, 1, 0, 'Cadet Belt'), -- NPC LOOT (White World Drop) - (Item Levels: 7-12) - (NPC Levels: 8-9)
(60408, 9758, 0, 1, 1, 1, 0, 'Cadet Belt'), -- NPC LOOT (White World Drop) - (Item Levels: 8-12) - (NPC Levels: 9)
(60409, 9758, 0, 1, 1, 1, 0, 'Cadet Belt'), -- NPC LOOT (White World Drop) - (Item Levels: 8-13) - (NPC Levels: 9-10)
(60410, 9758, 0, 1, 1, 1, 0, 'Cadet Belt'), -- NPC LOOT (White World Drop) - (Item Levels: 9-13) - (NPC Levels: 10)
(60411, 9758, 0, 1, 1, 1, 0, 'Cadet Belt'), -- NPC LOOT (White World Drop) - (Item Levels: 9-14) - (NPC Levels: 10-11)
(60412, 9758, 0, 1, 1, 1, 0, 'Cadet Belt'), -- NPC LOOT (White World Drop) - (Item Levels: 10-14) - (NPC Levels: 11)
(60413, 9758, 0, 1, 1, 1, 0, 'Cadet Belt'), -- NPC LOOT (White World Drop) - (Item Levels: 10-14) - (NPC Levels: 11-12)
(60414, 9758, 0, 1, 1, 1, 0, 'Cadet Belt'), -- NPC LOOT (White World Drop) - (Item Levels: 11-14) - (NPC Levels: 12)
(60415, 9758, 0, 1, 1, 1, 0, 'Cadet Belt'), -- NPC LOOT (White World Drop) - (Item Levels: 11-14) - (NPC Levels: 12-13)
(60416, 9758, 0, 1, 1, 1, 0, 'Cadet Belt'), -- NPC LOOT (White World Drop) - (Item Levels: 12-14) - (NPC Levels: 13)
(60417, 9758, 0, 1, 1, 1, 0, 'Cadet Belt'), -- NPC LOOT (White World Drop) - (Item Levels: 12-14) - (NPC Levels: 13-14)

(60405, 9760, 0, 1, 1, 1, 0, 'Cadet Bracers'), -- NPC LOOT (White World Drop) - (Item Levels: 7-12) - (NPC Levels: 7-8)
(60406, 9760, 0, 1, 1, 1, 0, 'Cadet Bracers'), -- NPC LOOT (White World Drop) - (Item Levels: 7-12) - (NPC Levels: 8)
(60407, 9760, 0, 1, 1, 1, 0, 'Cadet Bracers'), -- NPC LOOT (White World Drop) - (Item Levels: 7-12) - (NPC Levels: 8-9)
(60408, 9760, 0, 1, 1, 1, 0, 'Cadet Bracers'), -- NPC LOOT (White World Drop) - (Item Levels: 8-12) - (NPC Levels: 9)
(60409, 9760, 0, 1, 1, 1, 0, 'Cadet Bracers'), -- NPC LOOT (White World Drop) - (Item Levels: 8-13) - (NPC Levels: 9-10)
(60410, 9760, 0, 1, 1, 1, 0, 'Cadet Bracers'), -- NPC LOOT (White World Drop) - (Item Levels: 9-13) - (NPC Levels: 10)
(60411, 9760, 0, 1, 1, 1, 0, 'Cadet Bracers'), -- NPC LOOT (White World Drop) - (Item Levels: 9-14) - (NPC Levels: 10-11)
(60412, 9760, 0, 1, 1, 1, 0, 'Cadet Bracers'), -- NPC LOOT (White World Drop) - (Item Levels: 10-14) - (NPC Levels: 11)
(60413, 9760, 0, 1, 1, 1, 0, 'Cadet Bracers'), -- NPC LOOT (White World Drop) - (Item Levels: 10-14) - (NPC Levels: 11-12)
(60414, 9760, 0, 1, 1, 1, 0, 'Cadet Bracers'), -- NPC LOOT (White World Drop) - (Item Levels: 11-14) - (NPC Levels: 12)
(60415, 9760, 0, 1, 1, 1, 0, 'Cadet Bracers'), -- NPC LOOT (White World Drop) - (Item Levels: 11-14) - (NPC Levels: 12-13)
(60416, 9760, 0, 1, 1, 1, 0, 'Cadet Bracers'), -- NPC LOOT (White World Drop) - (Item Levels: 12-14) - (NPC Levels: 13)
(60417, 9760, 0, 1, 1, 1, 0, 'Cadet Bracers'); -- NPC LOOT (White World Drop) - (Item Levels: 12-14) - (NPC Levels: 13-14)

DELETE FROM `creature_loot_template` WHERE `entry` IN (2185,2232,3242,16311,16354,17349) AND `item` BETWEEN 60401 AND 60440;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(2185, 60417, 5, 0, -60417, 1, 0, ''),
(2232, 60417, 5, 0, -60417, 1, 0, ''),
(3242, 60417, 5, 0, -60417, 1, 0, '');

DELETE FROM `creature_loot_template` WHERE `entry` IN (2034,2070,2163,2321,2957,3244,3246,3255,3415,11319,11320) AND `item` BETWEEN 60401 AND 60440;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(2034, 60411, 5, 0, -60411, 1, 0, ''),
(2070, 60411, 5, 0, -60411, 1, 0, ''),
(2163, 60413, 5, 0, -60413, 1, 0, ''),
(2321, 60415, 5, 0, -60415, 1, 0, ''),
(2957, 60407, 5, 0, -60407, 1, 0, ''),
(3244, 60413, 5, 0, -60413, 1, 0, ''),
(3246, 60415, 5, 0, -60415, 1, 0, ''),
(3255, 60419, 5, 0, -60419, 1, 0, ''),
(3415, 60413, 5, 0, -60413, 1, 0, ''),
(11319, 60419, 5, 0, -60419, 1, 0, ''),
(11320, 60417, 5, 0, -60417, 1, 0, '');

DELETE FROM `creature_loot_template` WHERE `item` IN (9746,9755,9759,9762); -- Remove from unique item list
DELETE FROM `reference_loot_template` WHERE `item` IN (9746,9755,9759,9762) AND `entry` BETWEEN 60409 AND 60419;
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
-- itemlevel 13
(60409, 9746, 0, 1, 1, 1, 0, 'Simple Gloves'), -- NPC LOOT (White World Drop) - (Item Levels: 8-13) - (NPC Levels: 9-10)
(60410, 9746, 0, 1, 1, 1, 0, 'Simple Gloves'), -- NPC LOOT (White World Drop) - (Item Levels: 9-13) - (NPC Levels: 10)
(60411, 9746, 0, 1, 1, 1, 0, 'Simple Gloves'), -- NPC LOOT (White World Drop) - (Item Levels: 9-14) - (NPC Levels: 10-11)
(60412, 9746, 0, 1, 1, 1, 0, 'Simple Gloves'), -- NPC LOOT (White World Drop) - (Item Levels: 10-14) - (NPC Levels: 11)
(60413, 9746, 0, 1, 1, 1, 0, 'Simple Gloves'), -- NPC LOOT (White World Drop) - (Item Levels: 10-14) - (NPC Levels: 11-12)
(60414, 9746, 0, 1, 1, 1, 0, 'Simple Gloves'), -- NPC LOOT (White World Drop) - (Item Levels: 11-14) - (NPC Levels: 12)
(60415, 9746, 0, 1, 1, 1, 0, 'Simple Gloves'), -- NPC LOOT (White World Drop) - (Item Levels: 11-14) - (NPC Levels: 12-13)
(60416, 9746, 0, 1, 1, 1, 0, 'Simple Gloves'), -- NPC LOOT (White World Drop) - (Item Levels: 12-14) - (NPC Levels: 13)
(60417, 9746, 0, 1, 1, 1, 0, 'Simple Gloves'), -- NPC LOOT (White World Drop) - (Item Levels: 12-14) - (NPC Levels: 13-14)
(60418, 9746, 0, 1, 1, 1, 0, 'Simple Gloves'), -- NPC LOOT (White World Drop) - (Item Levels: 13-15) - (NPC Levels: 14)
(60419, 9746, 0, 1, 1, 1, 0, 'Simple Gloves'), -- NPC LOOT (White World Drop) - (Item Levels: 13-18) - (NPC Levels: 14-15)

(60409, 9755, 0, 1, 1, 1, 0, 'Gypsy Gloves'), -- NPC LOOT (White World Drop) - (Item Levels: 8-13) - (NPC Levels: 9-10)
(60410, 9755, 0, 1, 1, 1, 0, 'Gypsy Gloves'), -- NPC LOOT (White World Drop) - (Item Levels: 9-13) - (NPC Levels: 10)
(60411, 9755, 0, 1, 1, 1, 0, 'Gypsy Gloves'), -- NPC LOOT (White World Drop) - (Item Levels: 9-14) - (NPC Levels: 10-11)
(60412, 9755, 0, 1, 1, 1, 0, 'Gypsy Gloves'), -- NPC LOOT (White World Drop) - (Item Levels: 10-14) - (NPC Levels: 11)
(60413, 9755, 0, 1, 1, 1, 0, 'Gypsy Gloves'), -- NPC LOOT (White World Drop) - (Item Levels: 10-14) - (NPC Levels: 11-12)
(60414, 9755, 0, 1, 1, 1, 0, 'Gypsy Gloves'), -- NPC LOOT (White World Drop) - (Item Levels: 11-14) - (NPC Levels: 12)
(60415, 9755, 0, 1, 1, 1, 0, 'Gypsy Gloves'), -- NPC LOOT (White World Drop) - (Item Levels: 11-14) - (NPC Levels: 12-13)
(60416, 9755, 0, 1, 1, 1, 0, 'Gypsy Gloves'), -- NPC LOOT (White World Drop) - (Item Levels: 12-14) - (NPC Levels: 13)
(60417, 9755, 0, 1, 1, 1, 0, 'Gypsy Gloves'), -- NPC LOOT (White World Drop) - (Item Levels: 12-14) - (NPC Levels: 13-14)
(60418, 9755, 0, 1, 1, 1, 0, 'Gypsy Gloves'), -- NPC LOOT (White World Drop) - (Item Levels: 13-15) - (NPC Levels: 14)
(60419, 9755, 0, 1, 1, 1, 0, 'Gypsy Gloves'), -- NPC LOOT (White World Drop) - (Item Levels: 13-18) - (NPC Levels: 14-15)

(60409, 9762, 0, 1, 1, 1, 0, 'Cadet Gauntlets'), -- NPC LOOT (White World Drop) - (Item Levels: 8-13) - (NPC Levels: 9-10)
(60410, 9762, 0, 1, 1, 1, 0, 'Cadet Gauntlets'), -- NPC LOOT (White World Drop) - (Item Levels: 9-13) - (NPC Levels: 10)
(60411, 9762, 0, 1, 1, 1, 0, 'Cadet Gauntlets'), -- NPC LOOT (White World Drop) - (Item Levels: 9-14) - (NPC Levels: 10-11)
(60412, 9762, 0, 1, 1, 1, 0, 'Cadet Gauntlets'), -- NPC LOOT (White World Drop) - (Item Levels: 10-14) - (NPC Levels: 11)
(60413, 9762, 0, 1, 1, 1, 0, 'Cadet Gauntlets'), -- NPC LOOT (White World Drop) - (Item Levels: 10-14) - (NPC Levels: 11-12)
(60414, 9762, 0, 1, 1, 1, 0, 'Cadet Gauntlets'), -- NPC LOOT (White World Drop) - (Item Levels: 11-14) - (NPC Levels: 12)
(60415, 9762, 0, 1, 1, 1, 0, 'Cadet Gauntlets'), -- NPC LOOT (White World Drop) - (Item Levels: 11-14) - (NPC Levels: 12-13)
(60416, 9762, 0, 1, 1, 1, 0, 'Cadet Gauntlets'), -- NPC LOOT (White World Drop) - (Item Levels: 12-14) - (NPC Levels: 13)
(60417, 9762, 0, 1, 1, 1, 0, 'Cadet Gauntlets'), -- NPC LOOT (White World Drop) - (Item Levels: 12-14) - (NPC Levels: 13-14)
(60418, 9762, 0, 1, 1, 1, 0, 'Cadet Gauntlets'), -- NPC LOOT (White World Drop) - (Item Levels: 13-15) - (NPC Levels: 14)
(60419, 9762, 0, 1, 1, 1, 0, 'Cadet Gauntlets'), -- NPC LOOT (White World Drop) - (Item Levels: 13-18) - (NPC Levels: 14-15)

(60409, 9759, 0, 1, 1, 1, 0, 'Cadet Boots'), -- NPC LOOT (White World Drop) - (Item Levels: 8-13) - (NPC Levels: 9-10)
(60410, 9759, 0, 1, 1, 1, 0, 'Cadet Boots'), -- NPC LOOT (White World Drop) - (Item Levels: 9-13) - (NPC Levels: 10)
(60411, 9759, 0, 1, 1, 1, 0, 'Cadet Boots'), -- NPC LOOT (White World Drop) - (Item Levels: 9-14) - (NPC Levels: 10-11)
(60412, 9759, 0, 1, 1, 1, 0, 'Cadet Boots'), -- NPC LOOT (White World Drop) - (Item Levels: 10-14) - (NPC Levels: 11)
(60413, 9759, 0, 1, 1, 1, 0, 'Cadet Boots'), -- NPC LOOT (White World Drop) - (Item Levels: 10-14) - (NPC Levels: 11-12)
(60414, 9759, 0, 1, 1, 1, 0, 'Cadet Boots'), -- NPC LOOT (White World Drop) - (Item Levels: 11-14) - (NPC Levels: 12)
(60415, 9759, 0, 1, 1, 1, 0, 'Cadet Boots'), -- NPC LOOT (White World Drop) - (Item Levels: 11-14) - (NPC Levels: 12-13)
(60416, 9759, 0, 1, 1, 1, 0, 'Cadet Boots'), -- NPC LOOT (White World Drop) - (Item Levels: 12-14) - (NPC Levels: 13)
(60417, 9759, 0, 1, 1, 1, 0, 'Cadet Boots'), -- NPC LOOT (White World Drop) - (Item Levels: 12-14) - (NPC Levels: 13-14)
(60418, 9759, 0, 1, 1, 1, 0, 'Cadet Boots'), -- NPC LOOT (White World Drop) - (Item Levels: 13-15) - (NPC Levels: 14)
(60419, 9759, 0, 1, 1, 1, 0, 'Cadet Boots'); -- NPC LOOT (White World Drop) - (Item Levels: 13-18) - (NPC Levels: 14-15)

DELETE FROM `creature_loot_template` WHERE `entry` IN (10160,11318,11321,11322,11323,16405,17344,17350) AND `item` BETWEEN 60401 AND 60440;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(10160, 60417, 5, 0, -60417, 1, 0, ''),
(11318, 60419, 5, 0, -60419, 1, 0, ''),
(11321, 60419, 5, 0, -60419, 1, 0, ''),
(11322, 60419, 5, 0, -60419, 1, 0, ''),
(11323, 60419, 5, 0, -60419, 1, 0, '');
