-- Add your query below.
-- https://github.com/vmangos/core/commit/99eb86b16cce1ea25bf1240b3edc64eccbf964ef - Add Missing Solid Chests (2850)
-- https://github.com/vmangos/core/commit/a1b5ee1ac1a12b17cb6986eb40a36490e8dd51a4 - Add Missing Hidden Strongbox (2039)
-- https://github.com/vmangos/core/commit/a1d8b653ac2d7ed3ae1ff10648b57651a6bdb49d - Add Missing Battered Chests (106319)
-- https://github.com/vmangos/core/commit/686bcff7108782c7da740129be29402eac1a29d5 - Add Missing Solid Chests (153453)
-- https://github.com/vmangos/core/commit/c5292f7aedc7629d927000c1b0c9ab7dc8ce6bde - Add Missing Solid Chests (2852)
-- https://github.com/vmangos/core/commit/020942612676ea0ec72498d6b62613d955a8ac85 - Add Missing Solid Chests (4149)
-- https://github.com/vmangos/core/commit/e5fffaa4ca1e15a945c58c043c2e5d65a2a0ed3f - Add Missing Battered Chests (2849)
-- https://github.com/vmangos/core/commit/0313b908cc142a6adf2e400093aa86d90245f7ce - Add Missing Solid Chests (2855)
-- https://github.com/vmangos/core/commit/f82343998c047dd988e985fc40d34b1abbc25e30 - Add Missing Solid Chests (2857)
-- https://github.com/vmangos/core/commit/e85b69e4b9e29da4582a498e231ff1f4c9700763 - Add Missing Solid Chests (153451)
-- https://github.com/vmangos/core/commit/9ef1bb99e5d5b2e3f09369db92506069459e8921 -  Add Missing Alliance / Horde Chests (3715, 4096, 105578, 111095, 105581, 105579)
-- https://github.com/vmangos/core/commit/3ee1945cd0d4a40f7492efc52f95dc293a45dadc - Add Missing Solid Chests (153454)
-- Note for classic/wotlk mangos - rediff chest spawns with tbc mangos as recent commits has shown that chests are missing.
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 300351 AND 300449;
DELETE FROM `pool_gameobject` WHERE `guid` = 55457; -- missing pooling!
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES
(300351, 31037, 0, 'Duskwood (Raven Hill Cemetery) - Solid Chest (2850)'),
(300352, 31040, 0, 'Wetlands (Mosshide Fen) - Solid Chest (2850)'),
(300353, 31038, 0, 'Wetlands - Solid Chest (2850)'),
(300354, 31038, 0, 'Wetlands - Solid Chest (2850)'),
(300355, 31038, 0, 'Wetlands (Mosshide Fen) - Solid Chest (2850)'),
(300356, 31271, 0, 'Wetlands (Thelgen Rock) - Solid Chest (2850)'),
(300357, 31044, 0, 'Wetlands (Direforge Hill) - Solid Chest (2852)'),
(300358, 31272, 0, 'Wetlands (Raptor Ridge) - Solid Chest (2852)'),
(300359, 31201, 0, 'Redridge Mountains (Stonewatch) - Solid Chest (2850)'),
(300360, 31199, 0, 'Redridge Mountains (Stonewatch Falls) - Solid Chest (2850)'),
-- `pool_gameobject` has guid 300361 for pool 1824 that already added to pool 1824 from `pool_gameobject_template` for gameobject entry 2039, skipped.
-- (300361, 1824, 0, 'Alterac Mountains (Dalaran) - Hidden Strongbox (2039)'), -- pool_gameobject_template
(300362, 31082, 0, 'Alterac Mountains (Strahnbrad) - Solid Chest (2855)'),
(300363, 31082, 0, 'Alterac Mountains (Strahnbrad) - Solid Chest (2855)'),
(300364, 31082, 0, 'Alterac Mountains (Strahnbrad) - Solid Chest (2855)'),
(300365, 31082, 0, 'Alterac Mountains (Strahnbrad) - Solid Chest (2855)'),
(300366, 31082, 0, 'Alterac Mountains (Strahnbrad) - Solid Chest (2855)'),
(300367, 31083, 0, 'Alterac Mountains (Ruins of Alterac) - Solid Chest (2857)'),
(300368, 31083, 0, 'Alterac Mountains (Ruins of Alterac) - Solid Chest (2857)'),
(300369, 31211, 0, 'Loch Modan (Silver Stream Mine) - Battered Chest (106319)'),
(300370, 31211, 0, 'Loch Modan (Silver Stream Mine) - Battered Chest (106319)'),
(300371, 31093, 0, 'Westfall (Longshore) - Battered Chest (106319)'),
(300372, 31091, 0, 'Westfall - Battered Chest (106319)'),
(300373, 31086, 0, 'Westfall (The Dagger Hills) - Battered Chest (2849)'),
(300374, 31185, 0, 'Silverpine Forest (Valgan\'s Field) - Battered Chest (106319)'),
(300375, 31184, 0, 'Silverpine Forest (North Tide\'s Hollow) - Battered Chest (106319)'),
(300376, 31185, 0, 'Silverpine Forest (Valgan\'s Field) - Battered Chest (106319)'),
(300377, 31181, 0, 'Silverpine Forest (Fenris Keep) - Battered Chest (2849)'),
(300378, 31180, 0, 'Silverpine Forest - Battered Chest (2849)'),
(300379, 31181, 0, 'Silverpine Forest (Fenris Keep) - Battered Chest (2849)'),
(300380, 31181, 0, 'Silverpine Forest (Fenris Keep) - Battered Chest (2849)'),
(300381, 31312, 0, 'Silverpine Forest (Ambermill) - Tattered Chest (111095)'),
(300382, 31312, 0, 'Silverpine Forest (Ambermill) - Tattered Chest (111095)'),
(300383, 31332, 0, 'Silverpine Forest (Beren\'s Peril) - Battered Chest (2849)'), -- makes no sense
(300384, 31312, 0, 'Silverpine Forest (Ambermill) - Tattered Chest (111095)'),
(300385, 31024, 0, 'Swamp of Sorrows - Solid Chest (4149)'),
(300386, 31285, 0, 'Stranglethorn Vale (Ruins of Aboraz) - Solid Chest (4149)'),
(300387, 31066, 0, 'Stranglethorn Vale (Kurzen\'s Compound) - Solid Chest (2855)'),
(300388, 31077, 0, 'Stranglethorn Vale (The Vile Reef) - Solid Chest (2855)'),
(300389, 31097, 0, 'Arathi Highlands (Witherbark Village) - Solid Chest (2855)'),
(300390, 31097, 0, 'Arathi Highlands (Witherbark Village) - Solid Chest (2855)'),
(300391, 31097, 0, 'Arathi Highlands (Witherbark Village) - Solid Chest (2855)'),
(300392, 31099, 0, 'Arathi Highlands (Stromgarde Keep) - Solid Chest (2857)'),
(300393, 31099, 0, 'Arathi Highlands (Stromgarde Keep) - Solid Chest (2857)'),
(300394, 31101, 0, 'Arathi Highlands (Boulderfist Hall) - Solid Chest (2857)'),
(300395, 31289, 0, 'Arathi Highlands (Go\'Shek Farm) - Tattered Chest (105578)'),
(300396, 31107, 0, 'The Hinterlands (Jintha\'Alor) - Solid Chest (153451)'),
(300397, 31297, 0, 'Hillsbrad Foothills (Hillsbrad Fields) - Tattered Chest (3715)'),
(300398, 31298, 0, 'Hillsbrad Foothills (Dun Garok) - Tattered Chest (4096)'),
(300399, 31298, 0, 'Hillsbrad Foothills (Dun Garok) - Tattered Chest (4096)'),
(300400, 31122, 0, 'Eastern Plaguelands (Tyr\'s Hand) - Solid Chest (153454)'),
(300401, 31216, 0, 'The Barrens (Blackthorn Ridge) - Solid Chest (2850)'),
(300402, 31221, 0, 'The Barrens - Battered Chest (106319)'),
(300403, 31221, 0, 'The Barrens - Battered Chest (106319)'),
(300404, 31212, 0, 'The Barrens (The Dry Hills) - Battered Chest (2849)'),
(300405, 31155, 0, 'Ashenvale - Solid Chest (2850)'),
(300406, 31155, 0, 'Ashenvale - Solid Chest (2850)'),
(300407, 31162, 0, 'Ashenvale (The Dor\'Danil Barrow Den) - Solid Chest (2852)'),
(300408, 31161, 0, 'Ashenvale (Xavian) - Solid Chest (2852)'),
(300409, 31160, 0, 'Ashenvale (Night Run) - Solid Chest (2852)'),
(300410, 31160, 0, 'Ashenvale (Night Run) - Solid Chest (2852)'),
(300411, 31163, 0, 'Ashenvale (Satyrnaar) - Solid Chest (2852)'),
(300412, 31162, 0, 'Ashenvale (The Dor\'Danil Barrow Den) - Solid Chest (2852)'),
(300413, 31161, 0, 'Ashenvale (Xavian) - Solid Chest (2852)'),
(300414, 31155, 0, 'Ashenvale - Battered Chest (2849)'),
(300415, 31153, 0, 'Stonetalon Mountains (The Charred Vale) - Battered Chest (2850)'),
(300416, 31333, 0, 'Stonetalon Mountains (Camp Aparaje) - Battered Chest (2849)'),
(300417, 31334, 0, 'Stonetalon Mountains (Cragpool Lake) - Battered Chest (2849)'),
(300418, 31152, 0, 'Stonetalon Mountains (Mirkfallon Lake) - Battered Chest (2849)'),
(300419, 31152, 0, 'Stonetalon Mountains (Mirkfallon Lake) - Battered Chest (2849)'),
(300420, 31152, 0, 'Stonetalon Mountains (Mirkfallon Lake) - Battered Chest (2849)'),
(300421, 31306, 0, 'Stonetalon Mountains (The Talon Den) - Tattered Chest (3715)'),
(300422, 31306, 0, 'Stonetalon Mountains (The Talon Den) - Tattered Chest (3715)'),
(300423, 31311, 0, 'Darkshore (Cliffspring Falls) - Battered Chest (106319)'),
(300424, 31175, 0, 'Darkshore (Ameth\'Aran) - Battered Chest (106319)'),
(300425, 31311, 0, 'Darkshore (Cliffspring Falls) - Battered Chest (106319)'),
(300426, 31171, 0, 'Darkshore (Twilight Vale) - Battered Chest (2849)'),
(300427, 31309, 0, 'Darkshore (Remtravel\'s Excavation) - Battered Chest (2849)'),
(300428, 31309, 0, 'Darkshore (Remtravel\'s Excavation) - Battered Chest (2849)'),
(300429, 31174, 0, 'Darkshore (Ruins of Mathystra) - Battered Chest (2849)'),
(300430, 31055, 0, 'Azshara - Solid Chest (153453)'),
(300431, 31055, 0, 'Azshara - Solid Chest (153453)'),
(300432, 31055, 0, 'Azshara - Solid Chest (153453)'),
(300433, 31055, 0, 'Azshara (Ruins of Eldarath) - Solid Chest (153451)'),
(300434, 31301, 0, 'Thousand Needles (Splithoof Hold) - Solid Chest (2852)'),
(300435, 31273, 0, 'Dustwallow Marsh (Darkmist Cavern) - Solid Chest (2857)'),
(300436, 31137, 0, 'Desolace (Sargeron) - Solid Chest (2855)'),
(300437, 31140, 0, 'Desolace (Magram Village) - Solid Chest (2857)'),
(300438, 31071, 0, 'Stranglethorn Vale (Jaguero Isle) - Solid Chest (4149)'),
(300439, 31200, 0, 'Redridge Mountains (Galardell Valley) - Solid Chest (2850)'),
(300440, 31044, 0, 'Wetlands (Direforge Hill) - Solid Chest (2852)'),
(300441, 31299, 0, 'Hillsbrad Foothills (Azurelode Mine) - Tattered Chest (4096)'),
(300442, 31312, 0, 'Silverpine Forest (Ambermill) - Tattered Chest (111095)'),
(300443, 31286, 0, 'Alterac Mountains (Dalaran) - Tattered Chest (105579)'),
(300444, 31084, 0, 'Alterac Mountains (The Uplands) - Solid Chest (2857)'),
(300445, 31300, 0, 'Thousand Needles (Roguefeather Den) - Solid Chest (2852)'),
(300446, 31320, 0, 'The Barrens (Bael\'dun Keep) - Tattered Chest (3715)'),
(300447, 31135, 0, 'Desolace (Kolkar Village) - Solid Chest (2855)'),
(300448, 31215, 0, 'The Barrens (Boulder Lode Mine) - Battered Chest (2849)'),
(300449, 31061, 0, 'Azshara (Ursolan) - Solid Chest (153453)'),
(55457, 31286, 0, 'Alterac Mountains (Dalaran) - Tattered Chest (105579)');

SET @OGUID := 300351;
DELETE FROM `gameobject` WHERE `guid` BETWEEN @OGUID AND @OGUID+98;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`) VALUES
-- Missing Chest spawns in Duskwood.
(@OGUID := @OGUID + 0, 2850, 0, -10516.3, 437.68, 37.7729, 5.84685, 0, 0, -0.216439, 0.976296, 300, 900), -- Raven Hill Cemetery)
-- Missing Chest spawns in Wetlands.
(@OGUID := @OGUID + 1, 2850, 0, -3778.29, -3009.95, 11.5863, 4.7473, 0, 0, -0.694658, 0.71934, 300, 900), -- Closest existing guid is 15149 at 108.387543 yards.
(@OGUID := @OGUID + 1, 2850, 0, -2977.38, -1955.39, 9.45823, 3.76991, 0, 0, -0.951056, 0.309017, 300, 900), -- Closest existing guid is 15146 at 125.002953 yards.
(@OGUID := @OGUID + 1, 2850, 0, -3104.2, -2267.92, 10.0134, 3.71755, 0, 0, -0.958819, 0.284016, 300, 900), -- Closest existing guid is 15142 at 77.623634 yards.
(@OGUID := @OGUID + 1, 2850, 0, -3886.19, -3029.93, 11.0323, 2.70526, 0, 0, 0.976295, 0.216442, 300, 900), -- Closest existing guid is 15084 at 185.719772 yards.
(@OGUID := @OGUID + 1, 2850, 0, -3790.94, -2454.6, 24.1786, 2.21657, 0, 0, 0.894934, 0.446199, 300, 900), -- Closest existing guid is 15212 at 89.356567 yards.
(@OGUID := @OGUID + 1, 2852, 0, -2939.76, -2976.83, 30.5666, 0.366518, 0, 0, 0.182235, 0.983255, 300, 900), -- Closest existing guid is 14861 at 164.143692 yards.
(@OGUID := @OGUID + 1, 2852, 0, -3033.15, -3234.4, 54.2858, 6.10865, 0, 0, -0.0871553, 0.996195, 300, 900), -- Closest existing guid is 14660 at 114.369263 yards.
-- Missing Chest spawns in Redridge Mountains.
(@OGUID := @OGUID + 1, 2850, 0, -9355.05, -3053.42, 136.687, 5.75959, 0, 0, -0.258819, 0.965926, 300, 900), -- Closest existing guid is 20771 at 29.429087 yards.
(@OGUID := @OGUID + 1, 2850, 0, -9542.22, -3255.59, 48.8464, 3.57793, 0, 0, -0.976295, 0.216442, 300, 900), -- Closest existing guid is 18583 at 130.444580 yards.
-- Missing Chest spawns in Alterac Mountains.
(@OGUID := @OGUID + 1, 2039, 0, 416.75, 238.28, 43.3589, 4.60767, 0, 0, -0.743144, 0.669131, 300, 900), -- Closest existing guid is 32184 at 82.526695 yards.
(@OGUID := @OGUID + 1, 2855, 0, 689.118, -998.653, 170.362, 2.26893, 0, 0, 0.906307, 0.422619, 300, 900), -- Closest existing guid is 33207 at 15.441476 yards.
(@OGUID := @OGUID + 1, 2855, 0, 739.793, -972.271, 167.587, 1.53589, 0, 0, 0.694658, 0.71934, 300, 900), -- Closest existing guid is 33207 at 67.017105 yards.
(@OGUID := @OGUID + 1, 2855, 0, 692.648, -981.781, 165.594, 3.4383, 0, 0, -0.989016, 0.147811, 300, 900), -- Closest existing guid is 33207 at 20.090010 yards.
(@OGUID := @OGUID + 1, 2855, 0, 647.083, -943.691, 166.408, 2.09439, 0, 0, 0.866025, 0.500001, 300, 900), -- Closest existing guid is 33206 at 52.546780 yards.
(@OGUID := @OGUID + 1, 2855, 0, 746.14, -938.872, 166.228, 4.57276, 0, 0, -0.754709, 0.656059, 300, 900), -- Closest existing guid is 33207 at 87.968170 yards.
(@OGUID := @OGUID + 1, 2857, 0, 512.952, -213.591, 176.603, 2.51327, 0, 0, 0.951056, 0.309017, 300, 900), -- Closest existing guid is 33200 at 27.407286 yards.
(@OGUID := @OGUID + 1, 2857, 0, 491.948, -202.401, 167.739, 4.83456, 0, 0, -0.66262, 0.748956, 300, 900), -- Closest existing guid is 33200 at 19.100042 yards.
-- Missing Chest spawns in Loch Modan.
(@OGUID := @OGUID + 1, 106319, 0, -4935.93, -2963.61, 317.672, 5.74214, 0, 0, -0.267238, 0.963631, 300, 900), -- Closest existing guid is 13248 at 36.503899 yards.
(@OGUID := @OGUID + 1, 106319, 0, -4946.25, -2975.34, 321.752, 0.95993, 0, 0, 0.461748, 0.887011, 300, 900), -- Closest existing guid is 13248 at 33.156040 yards.
-- Missing Chest spawns in Westfall.
(@OGUID := @OGUID + 1, 106319, 0, -9576.99, 1069.09, 1.29648, 1.71042, 0, 0, 0.754709, 0.656059, 300, 900), -- Closest existing guid is 42749 at 439.611328 yards.
(@OGUID := @OGUID + 1, 106319, 0, -10300.4, 1402.69, 40.1549, 0.087266, 0, 0, 0.0436192, 0.999048, 300, 900), -- Closest existing guid is 42788 at 174.826538 yards.
(@OGUID := @OGUID + 1, 2849, 0, -11243.3, 1160.75, 89.0316, 2.02458, 0, 0, 0.848047, 0.529921, 300, 900), -- Closest existing guid is 42734 at 443.757111 yards.
-- Missing Chest spawns in Silverpine Forest.
(@OGUID := @OGUID + 1, 106319, 0, 875.372, 1241.4, 46.9581, 5.63741, 0, 0, -0.317305, 0.948324, 300, 900), -- Closest existing guid is 42068 at 95.352806 yards.
(@OGUID := @OGUID + 1, 106319, 0, 844.727, 1920.26, -4.62497, 2.44346, 0, 0, 0.939692, 0.34202, 300, 900), -- Closest existing guid is 42067 at 309.361847 yards.
(@OGUID := @OGUID + 1, 106319, 0, 874.681, 1237.96, 52.6016, 6.00393, 0, 0, -0.139173, 0.990268, 300, 900), -- Closest existing guid is 42068 at 95.621971 yards.
(@OGUID := @OGUID + 1, 2849, 0, 1007.49, 686.36, 53.8181, 0.977383, 0, 0, 0.469471, 0.882948, 300, 900), -- Closest existing guid is 35487 at 31.269142 yards.
(@OGUID := @OGUID + 1, 2849, 0, 273.66, 741.958, 45.9023, 5.044, 0, 0, -0.580703, 0.814116, 300, 900), -- Closest existing guid is 35447 at 216.930359 yards.
(@OGUID := @OGUID + 1, 2849, 0, 1024, 727.992, 59.3686, 0.733038, 0, 0, 0.358368, 0.93358, 300, 900), -- Closest existing guid is 35484 at 11.926972 yards.
(@OGUID := @OGUID + 1, 2849, 0, 987.957, 600.792, 54.9516, 2.56563, 0, 0, 0.958819, 0.284016, 300, 900), -- Closest existing guid is 35487 at 112.952118 yards.
(@OGUID := @OGUID + 1, 111095, 0, -83.4207, 802.136, 63.7815, 5.32326, 0, 0, -0.461748, 0.887011, 300, 900), -- Closest existing guid is 35489 at 56.640015 yards.
(@OGUID := @OGUID + 1, 111095, 0, -71.4637, 808.973, 64.8878, 3.14159, 0, 0, -1, 0, 300, 900), -- Closest existing guid is 35489 at 70.286011 yards.
(@OGUID := @OGUID + 1, 2849, 0, -348.764, 949.185, 129.781, 0.767944, 0, 0, 0.374606, 0.927184, 300, 900), -- Closest existing guid is 35481 at 195.435898 yards. (111095)
(@OGUID := @OGUID + 1, 111095, 0, 38.3443, 792.112, 64.9459, 6.16101, 0, 0, -0.0610485, 0.998135, 300, 900), -- Closest existing guid is 35449 at 15.406877 yards.
-- Missing Chest spawns in Swamp of Sorrows.
(@OGUID := @OGUID + 1, 4149, 0, -11101.2, -3831.97, 3.0087, 3.14159, 0, 0, -1, 0, 300, 900), -- Closest existing guid is 13978 at 311.801392 yards.
-- (13980, 4149, 0, -10874.4, -3681.49, 18.1765, 3.90954, 0, 0, -0.927183, 0.374608, 300, 900), -- Closest existing guid is 13978 at 51.946568 yards. - out of bounds
-- (14020, 4149, 0, -10897.3, -3712.66, 8.76335, 2.86234, 0, 0, 0.990268, 0.139175, 300, 900), -- Closest existing guid is 13978 at 88.446930 yards. - out of bounds
-- (14021, 4149, 0, -10862.7, -3631.31, 24.4419, 3.45576, 0, 0, -0.987688, 0.156436, 300, 900), -- Closest existing guid is 13978 at 12.862801 yards. - out of bounds
-- Missing Chest spawns in Stranglethorn Vale.
(@OGUID := @OGUID + 1, 4149, 0, -13624.2, -323.034, 9.13148, 2.49582, 0, 0, 0.948323, 0.317306, 300, 900), -- Closest existing guid is 29256 at 360.885315 yards.
(@OGUID := @OGUID + 1, 2855, 0, -11640.3, -628.344, 31.4617, 4.46804, 0, 0, -0.788011, 0.615662, 300, 900), -- Closest existing guid is 12048 at 84.680046 yards.
(@OGUID := @OGUID + 1, 2855, 0, -12223.7, 665.631, -70.0086, 4.41568, 0, 0, -0.803857, 0.594823, 300, 900), -- Closest existing guid is 12054 at 530.681519 yards.
-- Missing Chest spawns in Arathi Highlands.
-- (16652, 2855, 0, -2062.35, -3330.59, 38.5965, 3.00195, 0, 0, 0.997563, 0.0697661, 300, 900), -- Closest existing guid is 16648 at 19.920498 yards. - out of bounds - 16648
(@OGUID := @OGUID + 1, 2855, 0, -1762.35, -3156.06, 31.0001, 0.087266, 0, 0, 0.0436192, 0.999048, 300, 900), -- Closest existing guid is 16950 at 132.045746 yards.
(@OGUID := @OGUID + 1, 2855, 0, -2011.8, -3318.34, 54.4797, 0.925024, 0, 0, 0.446198, 0.894935, 300, 900), -- Closest existing guid is 16648 at 52.169624 yards.
(@OGUID := @OGUID + 1, 2855, 0, -1906.28, -3194.22, 56.5897, 5.74214, 0, 0, -0.267238, 0.963631, 300, 900), -- Closest existing guid is 16648 at 207.264053 yards.
(@OGUID := @OGUID + 1, 2857, 0, -1690.85, -1662.12, 59.7234, 1.44862, 0, 0, 0.66262, 0.748956, 300, 900), -- Closest existing guid is 16789 at 122.506477 yards.
(@OGUID := @OGUID + 1, 2857, 0, -1641.21, -1894.65, 81.4397, 3.00195, 0, 0, 0.997563, 0.0697661, 300, 900), -- Closest existing guid is 16978 at 73.033188 yards.
(@OGUID := @OGUID + 1, 2857, 0, -2092.36, -2817.31, 81.4316, 0.174532, 0, 0, 0.0871553, 0.996195, 300, 900), -- Closest existing guid is 16949 at 176.432556 yards.
(@OGUID := @OGUID + 1, 105578, 0, -1466.3, -3081.7, 13.2939, 2.89725, 0, 0, 0.992546, 0.12187, 300, 900), -- Closest existing guid is 16947 at 51.763432 yards.
-- Missing Chest spawns in The Hinterlands.
(@OGUID := @OGUID + 1, 153451, 0, -343.456, -4220.94, 152.02, 6.14356, 0, 0, -0.0697556, 0.997564, 300, 900), -- Closest existing guid is 46370 at 78.230591 yards.
-- Missing Chest spawns in Hillsbrad Foothills.
(@OGUID := @OGUID + 1, 3715, 0, -336.64, 32.6983, 55.4212, 2.63544, 0, 0, 0.968147, 0.250381, 300, 900), -- Closest existing guid is 20885 at 141.648819 yards.
(@OGUID := @OGUID + 1, 4096, 0, -1290.25, -1224.9, 22.957, 5.00909, 0, 0, -0.594823, 0.803857, 300, 900), -- Closest existing guid is 30032 at 73.315445 yards.
(@OGUID := @OGUID + 1, 4096, 0, -1296.34, -1172.98, 38.0041, 1.5708, 0, 0, 0.707107, 0.707107, 300, 900), -- Closest existing guid is 30032 at 95.762459 yards.
-- Missing Chest spawns in Eastern Plaguelands.
(@OGUID := @OGUID + 1, 153454, 0, 1555.62, -5595.14, 111.171, 6.24828, 0, 0, -0.0174522, 0.999848, 300, 900), -- Closest existing guid is 45933 at 270.582367 yards.
-- Missing Chest spawns in The Barrens.
(@OGUID := @OGUID + 1, 2850, 1, -3908.19, -1627.89, 91.6667, 3.21142, 0, 0, -0.999391, 0.0349061, 300, 900), -- Closest existing guid is 13079 at 209.458755 yards.
(@OGUID := @OGUID + 1, 106319, 1, 72.5329, -2089.05, 91.696, 1.11701, 0, 0, 0.529919, 0.848048, 300, 900), -- Closest existing guid is 13347 at 306.878326 yards.
(@OGUID := @OGUID + 1, 106319, 1, 533.871, -2135.81, 92.5965, 2.80998, 0, 0, 0.986285, 0.16505, 300, 900), -- Closest existing guid is 13327 at 188.598953 yards.
(@OGUID := @OGUID + 1, 2849, 1, 731, -1265.59, 91.6732, 4.39823, 0, 0, -0.809016, 0.587786, 300, 900), -- Closest existing guid is 13066 at 118.421127 yards.
-- Missing Chest spawns in Ashenvale.
(@OGUID := @OGUID + 1, 2850, 1, 3198.29, -273.749, 122.521, 1.51844, 0, 0, 0.688354, 0.725374, 300, 900), -- Closest existing guid is 47817 at 105.092422 yards.
(@OGUID := @OGUID + 1, 2850, 1, 2343.71, 261.446, 153.828, 4.55531, 0, 0, -0.760406, 0.649449, 300, 900), -- Closest existing guid is 47820 at 561.195984 yards.
(@OGUID := @OGUID + 1, 2852, 1, 1799.25, -2696.54, 41.0134, 0.226892, 0, 0, 0.113203, 0.993572, 300, 900), -- Closest existing guid is 47826 at 86.231506 yards.
(@OGUID := @OGUID + 1, 2852, 1, 2934.9, -2841.09, 212.852, 1.85005, 0, 0, 0.798635, 0.601815, 300, 900), -- Closest existing guid is 47827 at 183.927948 yards.
(@OGUID := @OGUID + 1, 2852, 1, 2500.62, -2121.34, 201.213, 1.93731, 0, 0, 0.824125, 0.566408, 300, 900), -- Closest existing guid is 47824 at 302.593903 yards.
(@OGUID := @OGUID + 1, 2852, 1, 2603.36, -2135.84, 194.963, 2.30383, 0, 0, 0.913545, 0.406738, 300, 900), -- Closest existing guid is 47824 at 208.673294 yards.
(@OGUID := @OGUID + 1, 2852, 1, 2762.61, -2939.74, 143.158, 2.32129, 0, 0, 0.91706, 0.39875, 300, 900), -- Closest existing guid is 47827 at 61.081028 yards.
(@OGUID := @OGUID + 1, 2852, 1, 1876.36, -2794.27, 37.592, 4.62512, 0, 0, -0.737277, 0.675591, 300, 900), -- Closest existing guid is 47826 at 193.386826 yards.
(@OGUID := @OGUID + 1, 2852, 1, 2890.25, -2827.92, 208.831, 3.4383, 0, 0, -0.989016, 0.147811, 300, 900), -- Closest existing guid is 47827 at 146.545227 yards.
(@OGUID := @OGUID + 1, 2849, 1, 3469.9, -141.078, 6.74421, 0.715585, 0, 0, 0.350207, 0.936672, 300, 900), -- Closest existing guid is 47814 at 774.110107 yards.
-- Missing Chest spawns in Stonetalon Mountains.
(@OGUID := @OGUID + 1, 2850, 1, 651.431, 1917.55, -5.88195, 3.42085, 0, 0, -0.990268, 0.139175, 300, 900), -- Closest existing guid is 40712 at 182.611237 yards.
(@OGUID := @OGUID + 1, 2849, 1, 132.013, -349.798, 3.59643, 2.1293, 0, 0, 0.874619, 0.48481, 300, 900), -- Closest existing guid is 40707 at 523.912231 yards.
(@OGUID := @OGUID + 1, 2849, 1, 1434.8, 3.8839, 25.138, 6.14356, 0, 0, -0.0697556, 0.997564, 300, 900), -- Closest existing guid is 40709 at 559.594055 yards.
(@OGUID := @OGUID + 1, 2849, 1, 1489.94, 756.841, 143.941, 1.76278, 0, 0, 0.771625, 0.636078, 300, 900), -- Closest existing guid is 40710 at 411.243622 yards.
(@OGUID := @OGUID + 1, 2849, 1, 1751.6, 623.222, 194.972, 5.41052, 0, 0, -0.422618, 0.906308, 300, 900), -- Closest existing guid is 40710 at 521.337219 yards.
(@OGUID := @OGUID + 1, 2849, 1, 1415.53, 1044.07, 157.556, 0.331611, 0, 0, 0.165047, 0.986286, 300, 900), -- Closest existing guid is 40710 at 256.840607 yards.
(@OGUID := @OGUID + 1, 3715, 1, 2518.13, 1982.36, 348.044, 2.28638, 0, 0, 0.909961, 0.414694, 300, 900), -- Closest existing guid is 47590 at 26.936926 yards.
(@OGUID := @OGUID + 1, 3715, 1, 2493.49, 1856.61, 365.885, 2.86234, 0, 0, 0.990268, 0.139175, 300, 900), -- Closest existing guid is 47589 at 23.358732 yards.
-- Missing Chest spawns in Darkshore.
(@OGUID := @OGUID + 1, 106319, 1, 6750.87, -694.535, 89.5886, 5.3058, 0, 0, -0.469471, 0.882948, 300, 900), -- Closest existing guid is 48695 at 87.766159 yards.
(@OGUID := @OGUID + 1, 106319, 1, 5792.47, 214.896, 30.0395, 3.03684, 0, 0, 0.998629, 0.0523532, 300, 900), -- Closest existing guid is 48602 at 94.872337 yards.
(@OGUID := @OGUID + 1, 106319, 1, 6719.12, -642.526, 69.5251, 5.68977, 0, 0, -0.292372, 0.956305, 300, 900), -- Closest existing guid is 48695 at 146.405090 yards.
(@OGUID := @OGUID + 1, 2849, 1, 4643.39, 139.273, 58.357, 0.366518, 0, 0, 0.182235, 0.983255, 300, 900), -- Closest existing guid is 48492 at 169.227982 yards.
(@OGUID := @OGUID + 1, 2849, 1, 4626.42, 624.678, 6.1055, 5.96903, 0, 0, -0.156434, 0.987688, 300, 900), -- Closest existing guid is 48531 at 217.373917 yards.
(@OGUID := @OGUID + 1, 2849, 1, 4552.87, 566.422, 1.35074, 0.994837, 0, 0, 0.477159, 0.878817, 300, 900), -- Closest existing guid is 48531 at 145.129364 yards.
(@OGUID := @OGUID + 1, 2849, 1, 7355.87, -799.53, 8.23917, 6.24828, 0, 0, -0.0174522, 0.999848, 300, 900), -- Closest existing guid is 48727 at 183.335678 yards.
-- Missing Chest spawns in Azshara.
(@OGUID := @OGUID + 1, 153453, 1, 3137.52, -5671.9, 34.3905, 4.55531, 0, 0, -0.760406, 0.649449, 300, 900), -- Closest existing guid is 48368 at 695.513611 yards.
(@OGUID := @OGUID + 1, 153453, 1, 2957.74, -6046.32, -0.102492, 5.13127, 0, 0, -0.544639, 0.838671, 300, 900), -- Closest existing guid is 48366 at 622.576538 yards.
(@OGUID := @OGUID + 1, 153453, 1, 2316.16, -6893.69, 123.094, 3.05433, 0, 0, 0.999048, 0.0436193, 300, 900), -- Closest existing guid is 48369 at 499.735626 yards.
(@OGUID := @OGUID + 1, 153451, 1, 3328.43, -5143.73, 87.2847, 4.41568, 0, 0, -0.803857, 0.594823, 300, 900), -- Closest existing guid is 48365 at 366.762665 yards.
-- Missing Chest spawns in Thousand Needles.
(@OGUID := @OGUID + 1, 2852, 1, -4952.89, -2295.17, -64.6408, 5.21854, 0, 0, -0.507538, 0.861629, 300, 900), -- Closest existing guid is 16720 at 121.615189 yards.
-- Missing Chest spawns in Dustwallow Marsh.
-- (@OGUID := @OGUID + 1, 4149, 1, -4606.16, -3779.07, 34.7463, 3.14159, 0, 0, -1, 0, 300, 900), -- Closest existing guid is 14931 at 380.073334 yards. - out of bounds - 300100
(@OGUID := @OGUID + 1, 2857, 1, -2757.04, -2596.21, 28.899, 5.81195, 0, 0, -0.233445, 0.97237, 300, 900), -- Closest existing guid is 14618 at 41.448399 yards.
-- Missing Chest spawns in Desolace.
(@OGUID := @OGUID + 1, 2855, 1, -339.986, 838.234, 99.0587, 3.85718, 0, 0, -0.936671, 0.35021, 300, 900), -- Closest existing guid is 30171 at 177.108765 yards.
(@OGUID := @OGUID + 1, 2857, 1, -1902.34, 1107.68, 92.3415, 0.122173, 0, 0, 0.0610485, 0.998135, 300, 900), -- Closest existing guid is 30183 at 174.296082 yards.
-- VDB
(@OGUID := @OGUID + 1, 4149, 0, -14595.4, -244.479, 24.9781, 3.45576, 0, 0, -0.987688, 0.156436, 300, 900),
(@OGUID := @OGUID + 1, 2850, 0, -9278.63, -3312.23, 125.985, 2.58308, 0, 0, 0.961261, 0.27564, 300, 900),
(@OGUID := @OGUID + 1, 2852, 0, -2882.22, -2947.11, 33.7046, 5.41052, 0, 0, -0.422618, 0.906308, 300, 900),
(@OGUID := @OGUID + 1, 4096, 0, -871.026, 217.223, 8.80425, 2.28638, 0, 0, 0.909961, 0.414694, 300, 900),
(@OGUID := @OGUID + 1, 111095, 0, -151.1, 799.07, 63.9039, 1.97222, 0, 0, 0.833885, 0.551938, 300, 900),
(@OGUID := @OGUID + 1, 105579, 0, 17.3519, 435.146, 43.7572, 6.14356, 0, 0, -0.0697556, 0.997564, 300, 900),
(@OGUID := @OGUID + 1, 2857, 0, 936.042, -850.617, 114.649, 1.22173, 0, 0, 0.573576, 0.819152, 300, 900),
(@OGUID := @OGUID + 1, 2852, 1, -5585.58, -1629.46, 16.2051, 2.35619, 0, 0, 0.92388, 0.382683, 300, 900),
(@OGUID := @OGUID + 1, 3715, 1, -4040.54, -2384.23, 125.298, 1.95477, 0, 0, 0.829038, 0.559193, 300, 900),
(@OGUID := @OGUID + 1, 2855, 1, -1054.44, 1008.37, 90.526, 1.5708, 0, 0, 0.707107, 0.707107, 300, 900),
(@OGUID := @OGUID + 1, 2849, 1, 1333.15, -3657.51, 92.0099, 3.54302, 0, 0, -0.979924, 0.19937, 300, 900),
(@OGUID := @OGUID + 1, 153453, 1, 4322.74, -5726.07, 100.923, 1.71042, 0, 0, 0.754709, 0.656059, 300, 900);

UPDATE `gameobject` SET `id` = 0 WHERE `guid` = 85779; -- 58.7195, 276.344, 41.9076
REPLACE INTO `gameobject_spawn_entry` (`guid`, `entry`) VALUES (85779, 105570),(85779, 105579);

UPDATE `gameobject` SET `id` = 0 WHERE `guid` = 33181; -- 389.558, 178.222, 41.9383
REPLACE INTO `gameobject_spawn_entry` (`guid`, `entry`) VALUES (33181, 105570),(33181, 105579);

UPDATE `gameobject` SET `id` = 0 WHERE `guid` = 300443; -- 17.3519, 435.146, 43.7572
REPLACE INTO `gameobject_spawn_entry` (`guid`, `entry`) VALUES (300443, 105570),(300443, 105579);

UPDATE `gameobject` SET `id` = 0 WHERE `guid` = 300185; -- 96.9252, 367.759, 43.922
REPLACE INTO `gameobject_spawn_entry` (`guid`, `entry`) VALUES (300185, 105570),(300185, 105579);

UPDATE `gameobject` SET `id` = 0 WHERE `guid` = 32213; -- 121.878, 454.223, 44.0955
REPLACE INTO `gameobject_spawn_entry` (`guid`, `entry`) VALUES (32213, 105570),(32213, 105579);

UPDATE `gameobject` SET `id` = 0 WHERE `guid` = 300188; -- 424.828, 221.755, 42.888
REPLACE INTO `gameobject_spawn_entry` (`guid`, `entry`) VALUES (300188, 105570),(300188, 105579);

UPDATE `gameobject` SET `id` = 0 WHERE `guid` = 300186; -- 335.954, 185.797, 42.9273
REPLACE INTO `gameobject_spawn_entry` (`guid`, `entry`) VALUES (300186, 105570),(300186, 105579);

DELETE FROM `gameobject` WHERE `guid` = 55457; -- missing, added from TDB - 443.818, 288.769, 42.4809
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`) VALUES
(55457, 0, 0, 1, 443.81799316406250000000, 288.76901245117190000000, 42.48089981079101600000, -0.55850398540496830000, 0.00000000000000000000, 0.00000000000000000000, 0.00000000000000000000, 0.00000000000000000000, 300, 900);
REPLACE INTO `gameobject_spawn_entry` (`guid`, `entry`) VALUES (55457, 105570),(55457, 105579);
UPDATE `pool_gameobject` SET `description` = 'Alterac Mountains (Dalaran) - Alliance Strongbox (105570) / Tattered Chest (105579)' WHERE `guid` IN (85779,33181,300443,300185,32213,300188,300186,55457);

-- End of migration.
-- Extra:

-- Snarlmane 1948 23 Rare
-- https://www.wowhead.com/classic/npc=1948/snarlmane
-- https://web.archive.org/web/20080418001343/http://wow.allakhazam.com:80/db/mob.html?wmob=1948
DELETE FROM `creature_loot_template` WHERE `entry` = 1948 AND `item` IN (414,4537,60130);
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 10 WHERE `entry` = 1948 AND `mincountOrRef` = -60436; -- NPC LOOT (White World Drop) - (Item Levels: 23-24) - (NPC Levels: 23)
DELETE FROM `reference_loot_template` WHERE `entry` = 65053 AND `mincountOrRef` = -60130;
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `comments`) VALUES
(65053, 60130, 0, 1, -60130, 1, 'NPC LOOT (Green World Drop) - (Item Levels: 22-26) - (NPC Levels: 23)');

-- Darkmist Widow 4380  (38-40) Rare
-- https://www.wowhead.com/classic/npc=4380/darkmist-widow#comments
-- https://web.archive.org/web/20080418004151/http://wow.allakhazam.com/db/mob.html?wmob=4380
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 100 WHERE `entry` = 4380 AND `mincountOrRef` = -60164; -- NPC LOOT (Green World Drop) - (Item Levels: 39-43) - (NPC Levels: 40)

-- Dalaran Spellscribe 1920 (21)
-- https://web.archive.org/web/20080417214411/http://wow.allakhazam.com/db/mob.html?wmob=1920
-- https://www.wowhead.com/classic/item=5110/dalaran-wizards-robe
DELETE FROM `creature_loot_template` WHERE `entry` = 1920 AND `item` IN (2455,4537);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `comments`) VALUES
(1920, 2455, 1, 0, 1, 1, 'Minor Mana Potion'); -- Dalaran Spellscribe

-- https://web.archive.org/web/20080512054653/http://wow.allakhazam.com/db/item.html?witem=5110
DELETE FROM `reference_loot_template` WHERE `item` = 5110; -- Dalaran Wizard's Robe is not world loot.
DELETE FROM `creature_loot_template` WHERE `item` = 5110;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `comments`) VALUES
(2120, 5110, 2, 0, 1, 1, 'Dalaran Wizard\'s Robe'), -- Archmage Ataeric
(1920, 5110, 2, 0, 1, 1, 'Dalaran Wizard\'s Robe'), -- Dalaran Spellscribe
(1914, 5110, 2, 0, 1, 1, 'Dalaran Wizard\'s Robe'), -- Dalaran Mage
(1867, 5110, 2, 0, 1, 1, 'Dalaran Wizard\'s Robe'), -- Dalaran Apprentice
(1912, 5110, 2, 0, 1, 1, 'Dalaran Wizard\'s Robe'), -- Dalaran Protector
(1915, 5110, 2, 0, 1, 1, 'Dalaran Wizard\'s Robe'), -- Dalaran Conjuror
(1889, 5110, 2, 0, 1, 1, 'Dalaran Wizard\'s Robe'), -- Dalaran Wizard
(1913, 5110, 2, 0, 1, 1, 'Dalaran Wizard\'s Robe'), -- Dalaran Warder
(1888, 5110, 2, 0, 1, 1, 'Dalaran Wizard\'s Robe'), -- Dalaran Watcher
(3578, 5110, 2, 0, 1, 1, 'Dalaran Wizard\'s Robe'), -- Dalaran Miner
(3577, 5110, 2, 0, 1, 1, 'Dalaran Wizard\'s Robe'); -- Dalaran Brewmaster

-- High General Abbendis 10828
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 100 WHERE `entry` = 10828 AND `mincountOrRef` = -60292; -- NPC LOOT (Green World Drop) - (Item Levels: 58-62) - (NPC Levels: 59) - VANILLA NPC ONLY
DELETE FROM `creature_loot_template` WHERE `entry` = 10828 AND `item` = 8952;

