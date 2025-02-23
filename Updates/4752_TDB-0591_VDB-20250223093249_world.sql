-- Add your query below.

-- 300450+
-- Battered Chest
DELETE FROM `gameobject` WHERE `guid` BETWEEN 300450 AND 300474;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`) VALUES
(300450, 2849, 0, 1008.1, 689.78, 60.975, -0.750491, 0, 0, 0.366501, -0.930418, 300, 900), -- Silverpine Forest (Fenris Keep)
(300451, 2849, 1, 1333.68, -3460.61, 95.1936, -0.733038, 0, 0, 0.358368, -0.93358, 300, 900), -- The Barrens (Boulder Lodge Mine)
(300452, 2849, 1, 508.974, -1187.51, 91.6904, -1.43117, 0, 0, 0.656059, -0.75471, 300, 900), -- The Barrens (The Dry Hills)
(300453, 2849, 1, 963.485, -256.297, -4.31736, -2.37365, 0, 0, 0.927184, -0.374607, 300, 900), -- Stonetalon Mountains (Windshear Mine)
-- Solid Chest
(300454, 2850, 0, -9298, -2937.33, 163.846, 0.628319, 0, 0, 0.309017, 0.951057, 300, 900), -- Redridge Mountains (Stonewatch Tower)
(300455, 2850, 1, 2334.16, 44.381, 97.7759, -2.67035, 0, 0, 0.97237, -0.233445, 300, 900), -- Ashenvale (Fire Scar Shrine)
(300456, 2850, 1, 1771.77, -1235.22, 156.567, -0.122173, 0, 0, 0.0610486, -0.998135, 300, 900), -- Ashenvale (Mystral Lake)
(300457, 2850, 1, 3392.14, -579.954, 188.144, -2.07694, 0, 0, 0.861629, -0.507538, 300, 900), -- Ashenvale (Thistlefur Hold)
-- Solid Chest
(300458, 2852, 1, -5048.76, -942.561, -5.33799, -2.30383, 0, 0, 0.913545, -0.406737, 300, 900), -- Thousand Needles (Highperch)
-- Solid Chest
(300459, 2855, 0, -1340.1, 582.887, 103.529, -1.48353, 0, 0, 0.67559, -0.737277, 300, 900), -- Hillsbrad Foothills (Purgation Isle)
-- Solid Chest
(300460, 2857, 0, -825.559, -3887.59, 147.768, -0.767945, 0, 0, 0.374607, -0.927184, 300, 900), -- Arathi Highlands (Drywhisker Gorge)
-- Solid Chest
(300461, 4149, 0, -6636.22, -650.602, 241.74, 2.93215, 0, 0, 0.994522, 0.104528, 300, 900), -- Searing Gorge (Firewatch Ridge)
-- Battered Chest
(300462, 106318, 0, -5552.33, 127.409, 452.539, -0.15708, 0, 0, 0.078459, -0.996917, 300, 900), -- Dun Morogh (Chill Breeze Valley)
(300463, 106318, 0, 3053.4, 694.558, 66.4507, 2.3911, 0, 0, 0.930418, 0.366501, 300, 900), -- Tirisfal Glades (Agamand Family Crypt)
(300464, 106318, 1, 10027.5, 273.265, 1323.58, 2.47837, 0, 0, 0.945519, 0.325568, 300, 900), -- Teldrassil (Starbreeze Village North)
(300465, 106318, 1, 9749.21, 1586.38, 1299.98, 1.91986, 0, 0, 0.819152, 0.573576, 300, 900), -- Teldrassil (Ban'ethil Barrow Den)
(300466, 106318, 1, 9703.41, 1543.03, 1254.1, 2.49582, 0, 0, 0.948324, 0.317305, 300, 900), -- Teldrassil (Ban'ethil Barrow Den)
(300467, 106318, 1, -1585.07, -1151.23, 104.118, 0.122173, 0, 0, 0.0610485, 0.998135, 300, 900), -- Mulgore (The Venture Co. Mine)
(300468, 106318, 1, -2388.36, 444.887, 75.941, 1.15192, 0, 0, 0.544639, 0.838671, 300, 900), -- Mulgore (Palemane Rock)
-- Battered Chest
(300469, 106319, 1, 12.0282, -1774.23, 93.026, -0.733038, 0, 0, 0.358368, -0.93358, 300, 900), -- The Barrens (The Forgotten Pools)
(300470, 106319, 1, -213.471, -3040.08, 91.6667, 2.44346, 0, 0, 0.939693, 0.34202, 300, 900), -- The Barrens (Thorn Hill)
(300471, 106319, 1, 7549.98, 315.378, -3.96372, -1.71042, 0, 0, 0.75471, -0.656059, 300, 900), -- Darkshore (Mist's Edge)
-- Solid Chest
(300472, 153453, 0, 3118.88, -3750.21, 134.13, 0.558505, 0, 0, 0.275637, 0.961262, 300, 900), -- Eastern Plaguelands - hmm
-- Solid Chest
(300473, 153454, 1, 6356.18, -3952.89, 685.263, 1.91986, 0, 0, 0.819152, 0.573576, 300, 900), -- Winterspring (The Ruins of Kel'Theril)
-- Alliance Chest
(300474, 3715, 1, 2529.93, 1941.3, 348.085, -2.09439, 0, 0, 0.866025, -0.5, 300, 900); -- Stonetalon Mountains (The Talon Den)

INSERT INTO `gameobject_spawn_entry` (`guid`, `entry`) VALUES (300344, 3695); -- missing food crate option

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 300450 AND 300474;
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `description`) VALUES 
(300450, 31181, 'Silverpine Forest (Fenris Keep) - Battered Chest (2849)'), -- Silverpine Forest (Fenris Keep) - Chest Pool
(300451, 31215, 'The Barrens (Boulder Lode Mine) - Battered Chest (2849)'), -- The Barrens (Boulder Lode Mine) - Chest Pool
(300452, 31212, 'The Barrens (The Dry Hills) - Battered Chest (2849)'), -- 	The Barrens (The Dry Hills) - Chest Pool
(300453, 31151, 'Stonetalon Mountains (Windshear Mine) - Battered Chest (2849)'), -- Stonetalon Mountains (Windshear Mine) - Chest Pool
(300454, 31203, 'Redridge Mountains (Stonewatch Tower) - Solid Chest (2850)'), -- Redridge Mountains (Stonewatch Tower) - Chest Pool
(300455, 31345, 'Ashenvale (Fire Scar Shrine) - Solid Chest (2850)'), -- Ashenvale (Fire Scar Shrine) - Chest Pool
(300456, 31156, 'Ashenvale (Mystral Lake) - Solid Chest (2850)'), -- Ashenvale (Mystral Lake) - Chest Pool
(300457, 31307, 'Ashenvale (Thistlefur Hold) - Solid Chest (2850)'), -- Ashenvale (Thistlefur Hold) - Chest Pool
(300458, 31132, 'Thousand Needles (Highperch) - Solid Chest (2852)'), -- Thousand Needles (Highperch) - Chest Pool
(300459, 31346, 'Hillsbrad Foothills (Purgation Isle) - Solid Chest (2855)'), -- Hillsbrad Foothills (Purgation Isle) - Chest Pool
(300460, 31103, 'Arathi Highlands (Drywhisker Gorge) - Solid Chest (2857)'), -- Arathi Highlands (Drywhisker Gorge) - Chest Pool
(300461, 31115, 'Searing Gorge (Firewatch Ridge) - Solid Chest (4149)'), -- Searing Gorge (Firewatch Ridge) - Chest Pool
(300462, 31238, 'Dun Morogh (Chill Breeze Valley) - Battered Chest (106318)'), -- Dun Morogh (Chill Breeze Valley) - Chest Pool
(300463, 31266, 'Tirisfal Glades (Agamand Mills) - Battered Chest (106318)'), -- Tirisfal Glades (Agamand Mills) - Chest Pool
(300464, 31268, 'Teldrassil - Battered Chest (106318)'), -- Teldrassil - Chest Pool
(300465, 31329, 'Teldrassil (Ban''ethil Barrow Den) - Battered Chest (106318)'), -- Teldrassil (Ban'ethil Barrow Den) - Chest Pool
(300466, 31329, 'Teldrassil (Ban''ethil Barrow Den) - Battered Chest (106318)'), -- Teldrassil (Ban'ethil Barrow Den) - Chest Pool
(300467, 31169, 'Mulgore (The Venture Co. Mine) - Battered Chest (106318)'), -- Mulgore (The Venture Co. Mine) - Chest Pool
(300468, 31167, 'Mulgore (Paleman Rock) - Battered Chest (106318)'), -- Mulgore (Palemane Rock) - Chest Pool
(300469, 31223, 'The Barrens (The Forgotten Pools) - Battered Chest (106319)'), -- The Barrens (The Forgotten Pools) - Chest Pool
(300470, 31224, 'The Barrens (Thorn Hill) - Battered Chest (106319)'), -- The Barrens (Thorn Hill) - Chest Pool
(300471, 31310, 'Darkshore (Mist''s Edge) - Battered Chest (106319)'), -- Darkshore (Mist's Edge) - Chest Pool
(300472, 31116, 'Eastern Plaguelands (Plaguewood) - Solid Chest (153453)'), -- Eastern Plaguelands (Plaguewood) - Chest Pool
(300473, 31144, 'Winterspring (The Ruins of Kel''Theril) - Solid Chest (153454)'), -- Winterspring (The Ruins of Kel'Theril) - Chest Pool
(300474, 31306, 'Stonetalon Mountains (The Talon Den) - Tattered Chest (3715)'), -- Stonetalon Mountains (The Talon Den) - Chest Pool

DELETE FROM `pool_template` WHERE `entry` IN (31345,31346,31238);
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES
(31345, 1, 'Ashenvale (Fire Scar Shrine) - Chest Pool'),
(31346, 1, 'Hillsbrad Foothills (Purgation Isle) - Chest Pool'),
(31238, 1, 'Dun Morogh (Chill Breeze Valley) - Chest Pool');

UPDATE `pool_gameobject` SET `pool_entry` = 31345, `description` = 'Ashenvale (Fire Scar Shrine) - Solid Chest (2850)' WHERE `guid` = 300406;
UPDATE `pool_pool` SET `description` = 'Dun Morogh (Chill Breeze Valley) - Chest Pool' WHERE `pool_id` = 31238;
-- End of migration.

