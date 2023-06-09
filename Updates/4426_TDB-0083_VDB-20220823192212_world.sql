-- Add your query below.
-- https://github.com/vmangos/core/commit/d883dd9d02dc5f978498f9018614236aaa63c5c9
-- https://github.com/vmangos/core/commit/c2045dad77065ac4a552afc3358e061bec1cc4da
-- https://github.com/vmangos/core/commit/f67567c616309cb62c2fc7835559043d44020a46
-- https://github.com/vmangos/core/commit/d1baafe961ef36b312b045aa5afe04860e3f376f
-- https://github.com/vmangos/core/commit/b9258134106800e466d2b61d067995ea872fad5f
-- https://github.com/vmangos/core/commit/b1e099326d85254af82bfb4e5eba6d312e527287

-- New chest guids
SET @CHEST := 300286;

--  Missing spawns at Tirisfal
DELETE FROM `gameobject` WHERE `guid` BETWEEN @CHEST + 1 AND @CHEST + 47;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`) VALUES
(@CHEST + 1, 106318, 0, -8835.63, -886.67, 73.9311, 3.76991, 0, 0, -0.951056, 0.309017, 300, 900), -- Stone Cairn Lake
(@CHEST + 2, 106318, 0, -5581.71, 731.792, 391.769, 2.89725, 0, 0, 0.992546, 0.12187, 300, 900), -- Frostmane Hold
(@CHEST + 3, 106318, 0, -5576.89, -1727.13, 353.111, 1.37881, 0, 0, 0.636078, 0.771625, 300, 900), -- Gol'Bolar Quarry Mine
(@CHEST + 4, 106318, 0, -5335.97, -238.183, 440.331, 1.64061, 0, 0, 0.731353, 0.681999, 300, 900), -- Shimmer Ridge
(@CHEST + 5, 106318, 0, -5299.75, -105.227, 403.395, 1.62316, 0, 0, 0.725374, 0.688355, 300, 900), -- Iceflow Lake
(@CHEST + 6, 106318, 0, 2914.1, 377.418, 31.4822, 3.57793, 0, 0, -0.976295, 0.216442, 300, 900), -- Garren's Haunt
(@CHEST + 7, 106318, 0, 2369.75, 1890.5, 0.597555, 5.58505, 0, 0, -0.34202, 0.939693, 300, 900), -- Tirisfal Glades
(@CHEST + 8, 106318, 0, 2572.63, 525.238, 15.1067, 5.44543, 0, 0, -0.406736, 0.913546, 300, 900), -- Tirisfal Glades
(@CHEST + 9, 106318, 0, 2155.44, -510.988, 81.639, 3.99681, 0, 0, -0.909961, 0.414694, 300, 900), -- Crusader Outpost
(@CHEST + 10, 106318, 1, -2716.83, -1188.43, 16.7843, 5.07891, 0, 0, -0.566406, 0.824126, 300, 900), -- The Rolling Plains
(@CHEST + 11, 106318, 1, -2625.28, -1390.26, 24.5035, 5.72468, 0, 0, -0.275637, 0.961262, 300, 900), -- The Rolling Plains
(@CHEST + 12, 106318, 1, -2445.71, 438.709, 61.7603, 0.541051, 0, 0, 0.267238, 0.963631, 300, 900), -- Palemane Rock
(@CHEST + 13, 106318, 1, -1889.33, -1096.98, 90.3293, 2.80998, 0, 0, 0.986285, 0.16505, 300, 900), -- The Venture Co. Mine
(@CHEST + 14, 106318, 1, -1128.24, -5508.42, 6.31908, 1.5708, 0, 0, 0.707107, 0.707107, 300, 900), -- Echo Isles
(@CHEST + 15, 106318, 1, -1075.23, 542.538, 49.8483, 4.03171, 0, 0, -0.902585, 0.430512, 300, 900), -- Mulgore
(@CHEST + 16, 106318, 1, -998.083, 589.474, 81.9395, 2.53072, 0, 0, 0.953716, 0.300708, 300, 900), -- Mulgore
(@CHEST + 17, 106318, 1, -657.78, 193.815, 46.8042, 0.506145, 0, 0, 0.25038, 0.968148, 300, 900), -- Mulgore
(@CHEST + 18, 106318, 1, -546.707, 72.7293, 52.2842, 0.802851, 0, 0, 0.390731, 0.920505, 300, 900), -- Mulgore
(@CHEST + 19, 106318, 1, -1039.7, -4589.81, 25.8219, 0.209439, 0, 0, 0.104528, 0.994522, 300, 900), -- Kolkar Crag
(@CHEST + 20, 106318, 1, -973.911, -4427.44, 30.0156, 4.64258, 0, 0, -0.731354, 0.681998, 300, 900), -- Kolkar Crag
(@CHEST + 21, 106318, 1, -665.037, -787.125, 43.6133, 1.43117, 0, 0, 0.656058, 0.75471, 300, 900), -- Windfury Ridge
(@CHEST + 22, 106318, 1, -591.331, -681.56, 27.4432, 5.42797, 0, 0, -0.414693, 0.909961, 300, 900), -- Windfury Ridge
(@CHEST + 23, 106318, 1, -327.539, -5266.53, -8.39004, 0.750491, 0, 0, 0.366501, 0.930418, 300, 900), -- Scuttle Coast
(@CHEST + 24, 106318, 1, -63.7777, -5372.09, -17.8134, 3.89209, 0, 0, -0.930417, 0.366502, 300, 900), -- Scuttle Coast
(@CHEST + 25, 106318, 1, 6.73275, -5228.02, -13.3655, 1.309, 0, 0, 0.608761, 0.793354, 300, 900), -- Scuttle Coast
(@CHEST + 26, 106318, 1, 323.345, -5261.72, -17.6114, 0.157079, 0, 0, 0.0784588, 0.996917, 300, 900), -- Scuttle Coast
(@CHEST + 27, 106318, 1, -264.111, -5131.67, 24.3416, 2.32129, 0, 0, 0.91706, 0.39875, 300, 900), -- Tiragarde Keep
(@CHEST + 28, 106318, 1, -238.197, -5110, 41.3468, 2.9496, 0, 0, 0.995396, 0.0958512, 300, 900), -- Tiragarde Keep
(@CHEST + 29, 106318, 1, 19.8772, -4274.1, 72.5779, 1.58825, 0, 0, 0.71325, 0.70091, 300, 900), -- Razormane Grounds
(@CHEST + 30, 106318, 1, 51.5796, -4479.08, 50.4658, 1.5708, 0, 0, 0.707107, 0.707107, 300, 900), -- Razormane Grounds
(@CHEST + 31, 106318, 1, 633.847, -4487.7, 11.8494, 0.680677, 0, 0, 0.333806, 0.942642, 300, 900), -- Razorwind Canyon
(@CHEST + 32, 106318, 1, 896.122, -4646.7, 18.3639, 2.19911, 0, 0, 0.891006, 0.453991, 300, 900), -- Razorwind Canyon
(@CHEST + 33, 106318, 1, 811.543, -4806.71, 11.0355, 0.733038, 0, 0, 0.358368, 0.93358, 300, 900), -- Drygulch Ravine
(@CHEST + 34, 106318, 1, 960.046, -4777.73, 22.268, 2.02458, 0, 0, 0.848047, 0.529921, 300, 900), -- Drygulch Ravine
(@CHEST + 35, 106318, 1, 1027.07, -4821.19, 15.2047, 2.47837, 0, 0, 0.945518, 0.325568, 300, 900), -- Drygulch Ravine
(@CHEST + 36, 106318, 1, 877.265, -4738.9, 30.0118, 4.10153, 0, 0, -0.887011, 0.461749, 300, 900), -- Dustwind Cave
(@CHEST + 37, 106318, 1, 908.547, -4754.28, 18.7004, 2.32129, 0, 0, 0.91706, 0.39875, 300, 900), -- Dustwind Cave
(@CHEST + 38, 106318, 1, 1546.7, -4750.5, 14.4975, 2.35619, 0, 0, 0.92388, 0.382683, 300, 900), -- Skull Rock
(@CHEST + 39, 106318, 1, 9183.7, 1372.79, 1315.07, 3.59538, 0, 0, -0.97437, 0.224951, 300, 900), -- Teldrassil
(@CHEST + 40, 106318, 1, 9631.6, 463.32, 1312.8, 2.67035, 0, 0, 0.972369, 0.233448, 300, 900), -- Teldrassil
(@CHEST + 41, 106318, 1, 10371.9, 1923.33, 1319.97, 0.977383, 0, 0, 0.469471, 0.882948, 300, 900), -- Teldrassil
(@CHEST + 42, 106318, 1, 10419.7, 1908.99, 1321.27, 2.61799, 0, 0, 0.965925, 0.258821, 300, 900), -- Teldrassil
(@CHEST + 43, 106318, 1, 9776.05, 1547.38, 1299.49, 0.715585, 0, 0, 0.350207, 0.936672, 300, 900), -- Ban'ethil Barrow Den
(@CHEST + 44, 106318, 1, 10134.8, 1183.48, 1323.54, 5.37562, 0, 0, -0.438371, 0.898794, 300, 900), -- Fel Rock
(@CHEST + 45, 106318, 1, 10511.2, 2002.39, 1327.38, 0.279252, 0, 0, 0.139173, 0.990268, 300, 900), -- The Orcale Glade
(@CHEST + 46, 106318, 1, 10652.6, 2016.06, 1326.44, 3.61284, 0, 0, -0.972369, 0.233448, 300, 900), -- The Orcale Glade
(@CHEST + 47, 106318, 1, 10863.5, 2125.58, 1327.06, 2.63544, 0, 0, 0.968147, 0.250381, 300, 900); -- The Orcale Glade

-- offset
UPDATE `gameobject` SET `position_x` = -5479.81, `position_y` = -217.343, `position_z` = 354.253, `orientation` = 3.14159, `rotation0` = 0, `rotation1` = 0, `rotation2` = -1, `rotation3` = 0 WHERE `guid` = 29633;

-- pooling
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN @CHEST + 1 AND @CHEST + 47;
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES
(@CHEST + 1, 31250, 0, 'Elwynn Forest (Stone Cairn Lake) - Battered Chest (106318)'),
(@CHEST + 2, 31237, 0, 'Dun Morogh (Frostmane Hold) - Battered Chest (106318)'),
(@CHEST + 3, 31323, 0, 'Dun Morogh (Gol\'Bolar Quarry Mine) - Battered Chest (106318)'),
(@CHEST + 4, 31330, 0, 'Dun Morogh (Shimmer Ridge) - Battered Chest (106318)'),
(@CHEST + 5, 31243, 0, 'Dun Morogh (Iceflow Lake) - Battered Chest (106318)'),
(@CHEST + 6, 31265, 0, 'Tirisfal Glades (Garren\'s Haunt) - Battered Chest (106318)'),
(@CHEST + 7, 31342, 0, 'Tirisfal Glades - Battered Chest (106318)'),
(@CHEST + 8, 31342, 0, 'Tirisfal Glades - Battered Chest (106318)'),
(@CHEST + 9, 31325, 0, 'Tirisfal Glades (Crusader\'s Outpost) - Battered Chest (106318)'),
(@CHEST + 10, 31170, 0, 'Mulgore (The Rolling Plains) - Battered Chest (106318)'),
(@CHEST + 11, 31170, 0, 'Mulgore (The Rolling Plains) - Battered Chest (106318)'),
(@CHEST + 12, 31167, 0, 'Mulgore (Palemane Rock) - Battered Chest (106318)'),
(@CHEST + 13, 31169, 0, 'Mulgore (The Venture Co. Mine) - Battered Chest (106318)'),
(@CHEST + 14, 31235, 0, 'Durotar (Echo Isles) - Battered Chest (106318)'),
(@CHEST + 15, 31164, 0, 'Mulgore - Battered Chest (106318)'),
(@CHEST + 16, 31164, 0, 'Mulgore - Battered Chest (106318)'),
(@CHEST + 17, 31164, 0, 'Mulgore - Battered Chest (106318)'),
(@CHEST + 18, 31164, 0, 'Mulgore - Battered Chest (106318)'),
(@CHEST + 19, 31228, 0, 'Durotar (Kolkar Crag) - Battered Chest (106318)'),
(@CHEST + 20, 31228, 0, 'Durotar (Kolkar Crag) - Battered Chest (106318)'),
(@CHEST + 21, 31343, 0, 'Mulgore (Windfury Ridge) - Battered Chest (106318)'),
(@CHEST + 22, 31343, 0, 'Mulgore (Windfury Ridge) - Battered Chest (106318)'),
(@CHEST + 23, 31231, 0, 'Durotar (Scuttle Coast) - Battered Chest (106318)'),
(@CHEST + 24, 31231, 0, 'Durotar (Scuttle Coast) - Battered Chest (106318)'),
(@CHEST + 25, 31231, 0, 'Durotar (Scuttle Coast) - Battered Chest (106318)'),
(@CHEST + 26, 31231, 0, 'Durotar (Scuttle Coast) - Battered Chest (106318)'),
(@CHEST + 27, 31234, 0, 'Durotar (Tiragarde Keep) - Battered Chest (106318)'),
(@CHEST + 28, 31234, 0, 'Durotar (Tiragarde Keep) - Battered Chest (106318)'),
(@CHEST + 29, 31227, 0, 'Durotar (Razormane Grounds) - Battered Chest (106318)'),
(@CHEST + 30, 31227, 0, 'Durotar (Razormane Grounds) - Battered Chest (106318)'),
(@CHEST + 31, 31226, 0, 'Durotar (Razorwind Canyon) - Battered Chest (106318)'),
(@CHEST + 32, 31226, 0, 'Durotar (Razorwind Canyon) - Battered Chest (106318)'),
(@CHEST + 33, 31232, 0, 'Durotar (Drygulch Ravine) - Battered Chest (106318)'),
(@CHEST + 34, 31232, 0, 'Durotar (Drygulch Ravine) - Battered Chest (106318)'),
(@CHEST + 35, 31232, 0, 'Durotar (Drygulch Ravine) - Battered Chest (106318)'),
(@CHEST + 36, 31321, 0, 'Durotar (Dustwind Cave) - Battered Chest (106318)'),
(@CHEST + 37, 31321, 0, 'Durotar (Dustwind Cave) - Battered Chest (106318)'),
(@CHEST + 38, 31233, 0, 'Durotar (Skull Rock) - Battered Chest (106318)'),
(@CHEST + 39, 31268, 0, 'Teldrassil - Battered Chest (106318)'),
(@CHEST + 40, 31268, 0, 'Teldrassil - Battered Chest (106318)'),
(@CHEST + 41, 31268, 0, 'Teldrassil - Battered Chest (106318)'),
(@CHEST + 42, 31268, 0, 'Teldrassil - Battered Chest (106318)'),
(@CHEST + 43, 31329, 0, 'Teldrassil (Ban\'ethil Barrow Den) - Battered Chest (106318)'),
(@CHEST + 44, 31328, 0, 'Teldrassil (Fel Rock) - Battered Chest (106318)'),
(@CHEST + 45, 31344, 0, 'Teldrassil (The Oracle Glade) - Battered Chest (106318)'),
(@CHEST + 46, 31344, 0, 'Teldrassil (The Oracle Glade) - Battered Chest (106318)'),
(@CHEST + 47, 31344, 0, 'Teldrassil (The Oracle Glade) - Battered Chest (106318)');

DELETE FROM `pool_template` WHERE `entry` BETWEEN 31342 AND 31344;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES
(31342, 1, 'Tirisfal Glades - Chest Pool'),
(31343, 1, 'Mulgore (Windfury Ridge) - Chest Pool'),
(31344, 1, 'Teldrassil (The Oracle Glade) - Chest Pool');

-- End of migration.

