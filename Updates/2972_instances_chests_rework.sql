
-- --------------------------------------
-- SHADOWFANG KEEP (MAP 33)
-- --------------------------------------

-- Initial removal of GameObjects and related pools
DELETE FROM pool_gameobject WHERE guid IN (SELECT guid FROM gameobject WHERE map=33 AND id IN (3659, 3695, 74448, 75293, 75295, 75298));
DELETE FROM gameobject WHERE map=33 AND id IN (3659, 3695, 74448, 75293, 75295, 75298);

SET @OGUID := 3300000; -- gameobjects
SET @PGUID := 45000; -- pools

INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state) VALUES
(@OGUID+12, 3659, 33, -197.138, 2268.28, 76.2013, -2.21657, 0, 0, 0.894934, -0.446198, 180, 180, 100, 1), -- Barrel of Melon Juice
(@OGUID+13, 3659, 33, -232.514, 2290.86, 74.9993, -2.02458, 0, 0, 0.848048, -0.529919, 180, 180, 100, 1), -- Barrel of Melon Juice
(@OGUID+14, 3695, 33, -206.199, 2249.48, 76.2013, 1.16937, 0, 0, 0.551937, 0.833886, 180, 180, 100, 1), -- Food Crate
(@OGUID+15, 3695, 33, -257.011, 2279.7, 74.9993, 1.23918, 0, 0, 0.580703, 0.814116, 180, 180, 100, 1), -- Food Crate
(@OGUID+38, 74448, 33, -191.652, 2161.52, 79.7475, -0.453785, 0, 0, -0.224951, 0.97437, 5200, 5200, 255, 1), -- Large Solid Chest
(@OGUID+39, 74448, 33, -214.509, 2150.94, 81.0577, 2.18365, 0, 0, 0.887469, 0.460867, 5200, 5200, 100, 1), -- Large Solid Chest
(@OGUID+40, 74448, 33, -179.471, 2253.05, 86.6287, 5.7415, 0, 0, 0.267544, -0.963546, 5200, 5200, 100, 1), -- Large Solid Chest
(@OGUID+41, 74448, 33, -236.728, 2299.61, 94.6765, 0.436332, 0, 0, 0.216439, 0.976296, 5200, 5200, 255, 1), -- Large Solid Chest
(@OGUID+42, 74448, 33, -247.776, 2186.88, 93.9226, 4.30581, 0, 0, 0.835305, -0.549787, 5200, 5200, 100, 1), -- Large Solid Chest
(@OGUID+43, 74448, 33, -254.871, 2166.57, 93.9367, 5.90488, 0, 0, 0.188027, -0.982164, 5200, 5200, 100, 1), -- Large Solid Chest
(@OGUID+44, 74448, 33, -133.986, 2183.01, 113.132, -1.91986, 0, 0, -0.819151, 0.573577, 5200, 5200, 255, 1), -- Large Solid Chest
(@OGUID+45, 75293, 33, -190.976, 2225.68, 79.7585, -1.23918, 0, 0, -0.580701, 0.814117, 5200, 5200, 100, 1), -- Large Battered Chest
(@OGUID+46, 75295, 33, -189.568, 2122.88, 97.3899, 1.39626, 0, 0, 0.642788, 0.766044, 5400, 5400, 100, 1), -- Large Iron Bound Chest
(@OGUID+47, 75298, 33, -106.541, 2164.01, 101.52, 3.03687, 0, 0, 0.99863, 0.052336, 86400, 86400, 100, 1); -- Large Solid Chest

INSERT INTO pool_template (entry, max_limit, description) VALUES
(@PGUID+1, 3, 'Shadowfang Keep - Master Chest Pool');

INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES
(@OGUID+38, @PGUID+1, 0, 'Shadowfang Keep - Large Solid Chest (74448)'),
(@OGUID+39, @PGUID+1, 0, 'Shadowfang Keep - Large Solid Chest (74448)'),
(@OGUID+40, @PGUID+1, 0, 'Shadowfang Keep - Large Solid Chest (74448)'),
(@OGUID+41, @PGUID+1, 0, 'Shadowfang Keep - Large Solid Chest (74448)'),
(@OGUID+42, @PGUID+1, 0, 'Shadowfang Keep - Large Solid Chest (74448)'),
(@OGUID+43, @PGUID+1, 0, 'Shadowfang Keep - Large Solid Chest (74448)'),
(@OGUID+44, @PGUID+1, 0, 'Shadowfang Keep - Large Solid Chest (74448)'),
(@OGUID+45, @PGUID+1, 0, 'Shadowfang Keep - Large Battered Chest (75293)'),
(@OGUID+46, @PGUID+1, 0, 'Shadowfang Keep - Large Iron Bound Chest (75295)'),
(@OGUID+47, @PGUID+1, 0, 'Shadowfang Keep - Large Solid Chest (75298)');


-- --------------------------------------
-- THE STOCKADES (MAP 34)
-- --------------------------------------

-- Initial removal of GameObjects and related pools
DELETE FROM pool_gameobject WHERE guid IN (SELECT guid FROM gameobject WHERE map=34 AND id IN (75295, 75298));
DELETE FROM gameobject WHERE map=34 AND id IN (75295, 75298);

SET @OGUID := 3400000; -- gameobjects
SET @PGUID := 45100; -- pools

INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state) VALUES
(@OGUID+1, 75295, 34, 104.455, 77.2554, -34.8562, -0.366519, 0, 0, 0.182236, -0.983255, 43200, 43200, 100, 1), -- Large Iron Bound Chest
(@OGUID+2, 75295, 34, 92.3032, -56.1773, -34.8562, -0.209439, 0, 0, 0, 0, 86400, 86400, 100, 1), -- Large Iron Bound Chest
(@OGUID+3, 75295, 34, 165.322, 57.6663, -34.8562, 2.9147, 0, 0, 0.993572, 0.113203, 43200, 43200, 100, 1), -- Large Iron Bound Chest
(@OGUID+4, 75298, 34, 188.603, 81.585, -33.9396, 2.47837, 0, 0, 0.945519, 0.325568, 86400, 86400, 100, 1), -- Large Solid Chest
(@OGUID+5, 75298, 34, 90.5921, -145.882, -33.9396, 1.44862, 0, 0, 0.66262, 0.748956, 86400, 86400, 100, 1), -- Large Solid Chest
(@OGUID+6, 75298, 34, 151.69, -65.131, -34.8562, -1.18682, 0, 0, 0.559193, -0.829037, 86400, 86400, 100, 1), -- Large Solid Chest
(@OGUID+7, 75298, 34, 173.185, 146.955, -33.9396, -2.05949, 0, 0, -0.857168, 0.515037, 86400, 86400, 100, 1); -- Large Solid Chest

INSERT INTO pool_template (entry, max_limit, description) VALUES
(@PGUID+1, 2, 'Stormwind Stockades - Master Chest Pool');

INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES
(@OGUID+1, @PGUID+1, 0, 'Stormwind Stockades - Large Iron Bound Chest (75295)'),
(@OGUID+2, @PGUID+1, 0, 'Stormwind Stockades - Large Iron Bound Chest (75295)'),
(@OGUID+3, @PGUID+1, 0, 'Stormwind Stockades - Large Iron Bound Chest (75295)'),
(@OGUID+4, @PGUID+1, 0, 'Stormwind Stockades - Large Solid Chest Pool (75298)'),
(@OGUID+5, @PGUID+1, 0, 'Stormwind Stockades - Large Solid Chest Pool (75298)'),
(@OGUID+6, @PGUID+1, 0, 'Stormwind Stockades - Large Solid Chest Pool (75298)'),
(@OGUID+7, @PGUID+1, 0, 'Stormwind Stockades - Large Solid Chest Pool (75298)');


-- --------------------------------------
-- THE DEADMINES (MAP 36)
-- --------------------------------------

-- Initial removal of GameObjects and related pools
DELETE FROM pool_gameobject WHERE guid IN (SELECT guid FROM gameobject WHERE map=36 AND id IN (3662, 3705, 75293));
DELETE FROM gameobject WHERE map=36 AND id IN (3662, 3705, 75293);

SET @OGUID := 3600000; -- gameobjects
SET @PGUID := 45200; -- pools

INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state) VALUES
(@OGUID+10, 3662, 36, -144.899, -891.56, 4.30954, 1.51844, 0, 0, 0.688355, 0.725374, 180, 180, 100, 1), -- Food Crate
(@OGUID+11, 3662, 36, -103.57, -723.359, 8.49449, 0.698132, 0, 0, 0.34202, 0.939693, 180, 180, 100, 1), -- Food Crate
(@OGUID+12, 3705, 36, -89.3315, -682.574, 7.42373, -2.63545, 0, 0, 0.968148, -0.25038, 180, 180, 100, 1), -- Barrel of Milk
(@OGUID+13, 3705, 36, -43.7597, -733.648, 9.18536, 1.18682, 0, 0, 0.559193, 0.829038, 180, 180, 100, 1), -- Barrel of Milk
(@OGUID+29, 75293, 36, -312.046, -477.501, 49.5979, -1.55334, 0, 0, -0.700908, 0.713252, 86400, 86400, 100, 1), -- Large Battered Chest
(@OGUID+30, 75293, 36, -77.7409, -788.596, 26.1097, 1.16937, 0, 0, 0.551937, 0.833886, 86400, 86400, 100, 1), -- Large Battered Chest
(@OGUID+31, 75293, 36, -209.206, -602.72, 19.3065, -0.139626, 0, 0, -0.0697563, 0.997564, 86400, 86400, 100, 1), -- Large Battered Chest
(@OGUID+32, 75293, 36, -63.0889, -797.013, 39.0067, 1.55334, 0, 0, 0.700908, 0.713252, 86400, 86400, 100, 1), -- Large Battered Chest
(@OGUID+33, 75293, 36, -300.887, -532.542, 49.4236, 0.226893, 0, 0, 0.113203, 0.993572, 86400, 86400, 100, 1), -- Large Battered Chest
(@OGUID+34, 75293, 36, -155.3, -913.896, 10.2809, 0.90757, 0, 0, 0.438371, 0.898794, 86400, 86400, 255, 1), -- Large Battered Chest
(@OGUID+35, 75293, 36, -121.301, -810.208, 16.9638, 1.76278, 0, 0, 0.771624, 0.636079, 86400, 86400, 255, 1); -- Large Battered Chest

INSERT INTO pool_template (entry, max_limit, description) VALUES
(@PGUID+21, 3, 'Deadmines - Master Chest Pool');

INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES
(@OGUID+29, @PGUID+21, 0, 'Deadmines - Large Battered Chest (75293)'),
(@OGUID+30, @PGUID+21, 0, 'Deadmines - Large Battered Chest (75293)'),
(@OGUID+31, @PGUID+21, 0, 'Deadmines - Large Battered Chest (75293)'),
(@OGUID+32, @PGUID+21, 0, 'Deadmines - Large Battered Chest (75293)'),
(@OGUID+33, @PGUID+21, 0, 'Deadmines - Large Battered Chest (75293)'),
(@OGUID+34, @PGUID+21, 0, 'Deadmines - Large Battered Chest (75293)'),
(@OGUID+35, @PGUID+21, 0, 'Deadmines - Large Battered Chest (75293)');

-- --------------------------------------
-- THE WAILING CAVERNS (MAP 43)
-- --------------------------------------

-- Initial removal of GameObjects and related pools
DELETE FROM pool_gameobject WHERE guid IN (SELECT guid FROM gameobject WHERE map=43 AND id=75293);
DELETE FROM gameobject WHERE map=43 AND id=75293;

SET @OGUID := 4300000; -- gameobjects
SET @PGUID := 45300; -- pools

INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state) VALUES
(@OGUID+85, 75293, 43, -49.9295, 370.574, -59.6856, 0.575959, 0, 0, 0.284016, 0.95882, 5200, 5200, 100, 1), -- Large Battered Chest
(@OGUID+86, 75293, 43, -79.462, -32.6, -59.1092, -0.296706, 0, 0, -0.147809, 0.989016, 5200, 5200, 100, 1), -- Large Battered Chest
(@OGUID+87, 75293, 43, -95.0718, -311.132, -61.8035, 2.32129, 0, 0, 0.91706, 0.398748, 5200, 5200, 100, 1), -- Large Battered Chest
(@OGUID+88, 75293, 43, -10.4679, -272.442, -66.1606, 0.715585, 0, 0, 0.350207, 0.936672, 5200, 5200, 100, 1); -- Large Battered Chest

INSERT INTO pool_template (entry, max_limit, description) VALUES
(@PGUID+21, 2, 'Wailing Caverns - Master Chest Pool');

INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES
(@OGUID+85, @PGUID+21, 0, 'Wailing Caverns - Large Battered Chest (75293)'),
(@OGUID+86, @PGUID+21, 0, 'Wailing Caverns - Large Battered Chest (75293)'),
(@OGUID+87, @PGUID+21, 0, 'Wailing Caverns - Large Battered Chest (75293)'),
(@OGUID+88, @PGUID+21, 0, 'Wailing Caverns - Large Battered Chest (75293)');

-- --------------------------------------
-- Razorfen Kraul (MAP 47)
-- --------------------------------------

-- Initial removal of GameObjects and related pools
DELETE FROM pool_gameobject WHERE guid IN (SELECT guid FROM gameobject WHERE map=47 AND id IN (74447, 74448));
DELETE FROM gameobject WHERE map=47 AND id IN (74447, 74448);

SET @OGUID := 4700000; -- gameobjects
SET @PGUID := 45400; -- pools

INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state) VALUES
(@OGUID+96, 74447, 47, 2111.45, 1613.83, 81.1889, -1.98968, 0, 0, 0, 0, 86400, 86400, 100, 1), -- Large Iron Bound Chest
(@OGUID+97, 74448, 47, 2111.45, 1613.83, 81.1889, -1.98968, 0, 0, 0, 0, 86400, 86400, 100, 1), -- Large Solid Chest
(@OGUID+98, 74447, 47, 2090.24, 1465.26, 73.8674, -1.27409, 0, 0, -0.594823, 0.803857, 86400, 86400, 255, 1), -- Large Iron Bound Chest
(@OGUID+99, 74448, 47, 2090.24, 1465.26, 73.8674, -1.27409, 0, 0, -0.594823, 0.803857, 86400, 86400, 255, 1), -- Large Solid Chest
(@OGUID+100, 74447, 47, 2199.22, 1654.65, 86.1542, -1.37881, 0, 0, 0, 0, 86400, 86400, 100, 1), -- Large Iron Bound Chest
(@OGUID+101, 74448, 47, 2199.22, 1654.65, 86.1542, -1.37881, 0, 0, 0, 0, 86400, 86400, 100, 1), -- Large Solid Chest
(@OGUID+102, 74447, 47, 2127.73, 1607.64, 81.4757, 1.309, 0, 0, 0, 0, 86400, 86400, 100, 1), -- Large Iron Bound Chest
(@OGUID+103, 74448, 47, 2127.73, 1607.64, 81.4757, 1.309, 0, 0, 0, 0, 86400, 86400, 100, 1), -- Large Solid Chest
(@OGUID+104, 74447, 47, 2133.86, 1709.01, 80.5036, 4.0, 0, 0, 0, 0, 86400, 86400, 255, 1), -- Large Iron Bound Chest		// xyz guessed
(@OGUID+105, 74448, 47, 2133.86, 1709.01, 80.5036, 4.0, 0, 0, 0, 0, 86400, 86400, 255, 1), -- Large Solid Chest		// xyz guessed
(@OGUID+106, 74447, 47, 2193.35, 1985.04, 56.3458, -2.19912, 0, 0, 0, 0, 86400, 86400, 100, 1), -- Large Iron Bound Chest
(@OGUID+107, 74448, 47, 2193.35, 1985.04, 56.3458, -2.19912, 0, 0, 0, 0, 86400, 86400, 100, 1); -- Large Solid Chest

INSERT INTO pool_pool (pool_id, mother_pool, chance, description) VALUES
(@PGUID+91, @PGUID+90, 0, 'Razorfen Kraul - Large Iron Bound/Solid Chest #1'),
(@PGUID+92, @PGUID+90, 0, 'Razorfen Kraul - Large Iron Bound/Solid Chest #2'),
(@PGUID+93, @PGUID+90, 0, 'Razorfen Kraul - Large Iron Bound/Solid Chest #3'),
(@PGUID+94, @PGUID+90, 0, 'Razorfen Kraul - Large Iron Bound/Solid Chest #4'),
(@PGUID+95, @PGUID+90, 0, 'Razorfen Kraul - Large Iron Bound/Solid Chest #5'),
(@PGUID+96, @PGUID+90, 0, 'Razorfen Kraul - Large Iron Bound/Solid Chest #6');

INSERT INTO pool_template (entry, max_limit, description) VALUES
(@PGUID+90, 2, 'Razorfen Kraul - Master Chest Pool'),
(@PGUID+91, 1, 'Razorfen Kraul - Large Iron Bound/Solid Chest #1'),
(@PGUID+92, 1, 'Razorfen Kraul - Large Iron Bound/Solid Chest #2'),
(@PGUID+93, 1, 'Razorfen Kraul - Large Iron Bound/Solid Chest #3'),
(@PGUID+94, 1, 'Razorfen Kraul - Large Iron Bound/Solid Chest #4'),
(@PGUID+95, 1, 'Razorfen Kraul - Large Iron Bound/Solid Chest #5'),
(@PGUID+96, 1, 'Razorfen Kraul - Large Iron Bound/Solid Chest #6');

INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES
(@OGUID+96, @PGUID+91, 0, 'Razorfen Kraul - Large Iron Bound Chest (74447)'),
(@OGUID+97, @PGUID+91, 0, 'Razorfen Kraul - Large Solid Chest (74448)'),
(@OGUID+98, @PGUID+92, 0, 'Razorfen Kraul - Large Iron Bound Chest (74447)'),
(@OGUID+99, @PGUID+92, 0, 'Razorfen Kraul - Large Solid Chest (74448)'),
(@OGUID+100, @PGUID+93, 0, 'Razorfen Kraul - Large Iron Bound Chest (74447)'),
(@OGUID+101, @PGUID+93, 0, 'Razorfen Kraul - Large Solid Chest (74448)'),
(@OGUID+102, @PGUID+94, 0, 'Razorfen Kraul - Large Iron Bound Chest (74447)'),
(@OGUID+103, @PGUID+94, 0, 'Razorfen Kraul - Large Solid Chest (74448)'),
(@OGUID+104, @PGUID+95, 0, 'Razorfen Kraul - Large Iron Bound Chest (74447)'),
(@OGUID+105, @PGUID+95, 0, 'Razorfen Kraul - Large Solid Chest (74448)'),
(@OGUID+106, @PGUID+96, 0, 'Razorfen Kraul - Large Iron Bound Chest (74447)'),
(@OGUID+107, @PGUID+96, 0, 'Razorfen Kraul - Large Solid Chest (74448)');

-- --------------------------------------
-- BLACKFATHOM DEEPS (MAP 48)
-- --------------------------------------

-- Initial removal of GameObjects and related pools
DELETE FROM pool_gameobject WHERE guid IN (SELECT guid FROM gameobject WHERE map=48 AND id IN (75295, 75298));
DELETE FROM gameobject WHERE map=48 AND id IN (75295, 75298);

SET @OGUID := 4800000; -- gameobjects
SET @PGUID := 45500; -- pools

INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state) VALUES
(@OGUID+30, 75295, 48, -743.061, -111.067, -30.0483, 1.48353, 0, 0, 0.67559, 0.737277, 86400, 86400, 100, 1), -- Large Iron Bound Chest
(@OGUID+31, 75298, 48, -450.61, -38.0686, -31.7772, 3.08923, 0, 0, 0.999657, 0.026177, 86400, 86400, 100, 1), -- Large Solid Chest
(@OGUID+32, 75295, 48, -470.10, -88.05, -39.3990, 2.9, 0, 0, 0, 0, 86400, 86400, 100, 1), -- Large Iron Bound Chest		// xyz guessed
(@OGUID+33, 75295, 48, -694.42, -47.27, -30.0332, 1.5, 0, 0, 0, 0, 86400, 86400, 100, 1); -- Large Iron Bound Chest		// xyz guessed

INSERT INTO pool_template (entry, max_limit, description) VALUES
(@PGUID+21, 2, 'Blackfathom Deeps - Master Chest Pool');

INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES
(@OGUID+30, @PGUID+21, 0, 'Blackfathom Deeps - Large Iron Bound Chest (75295)'),
(@OGUID+31, @PGUID+21, 0, 'Blackfathom Deeps - Large Solid Chest (75298)'),
(@OGUID+32, @PGUID+21, 0, 'Blackfathom Deeps - Large Iron Bound Chest (75295)'),
(@OGUID+33, @PGUID+21, 0, 'Blackfathom Deeps - Large Iron Bound Chest (75295)');

-- --------------------------------------
-- ULDAMAN (MAP 70)
-- --------------------------------------

-- Initial removal of GameObjects and related pools
DELETE FROM pool_gameobject WHERE guid IN (SELECT guid FROM gameobject WHERE map=70 AND id IN (3707,131978));
DELETE FROM gameobject WHERE map=70 AND id IN (3707,131978);

SET @OGUID := 7000000; -- gameobjects
SET @PGUID := 45600; -- pools

INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state) VALUES
(@OGUID+34, 3707, 70, -101.293, 329.776, -47.5239, -2.61799, 0, 0, 0.965926, -0.258819, 180, 180, 100, 1), -- Food Crate
(@OGUID+35, 3707, 70, -247.885, 236.192, -46.4701, -0.10472, 0, 0, 0.052336, -0.99863, 180, 180, 100, 1), -- Food Crate
(@OGUID+36, 3707, 70, -117.284, 235.933, -51.811, -0.401426, 0, 0, 0.199368, -0.979925, 180, 180, 100, 1), -- Food Crate
(@OGUID+37, 3707, 70, 54.6041, 348.621, -40.4473, -3.10669, 0, 0, 0.999848, -0.017452, 180, 180, 100, 1), -- Food Crate
(@OGUID+38, 3707, 70, 37.0305, 227.32, -32.1131, -2.67035, 0, 0, 0.97237, -0.233445, 180, 180, 100, 1), -- Food Crate
(@OGUID+183, 131978, 70, -150.166, 201.764, -49.9121, -2.98451, 0, 0, 0.996917, -0.078459, 3600, 3600, 100, 1), -- Large Mithril Bound Chest
(@OGUID+184, 131978, 70, -73.5079, 265.315, -47.6291, 2.82743, 0, 0, 0.987688, 0.156434, 3600, 3600, 100, 1); -- Large Mithril Bound Chest

INSERT INTO pool_template (entry, max_limit, description) VALUES
(@PGUID+21, 1, 'Uldaman - Master Chest Pool');

INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES
(@OGUID+183, @PGUID+21, 0, 'Uldaman - Large Mithril Bound Chest (131978)'),
(@OGUID+184, @PGUID+21, 0, 'Uldaman - Large Mithril Bound Chest (131978)');

-- --------------------------------------
-- GNOMEREGAN (MAP 90)
-- --------------------------------------

-- Initial removal of GameObjects and related pools
DELETE FROM pool_gameobject WHERE guid IN (SELECT guid FROM gameobject WHERE map=90 AND id IN (3659, 3695, 74447, 74448));
DELETE FROM gameobject WHERE map=90 AND id IN (3659, 3695, 74447, 74448);

SET @OGUID := 9000000; -- gameobjects
SET @PGUID := 45700; -- pools

INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state) VALUES
(@OGUID+1, 3659, 90, -571.492, 510.91, -216.81, -2.61799, 0, 0, 0.965926, -0.258819, 180, 180, 100, 1), -- Barrel of Melon Juice
(@OGUID+2, 3695, 90, -910.038, 357.305, -272.596, -1.76278, 0, 0, 0.771625, -0.636078, 180, 180, 100, 1), -- Food Crate
(@OGUID+98, 74447, 90, -440.175, 81.8185, -151.476, 1.25664, 0, 0, 0.587786, 0.809016, 86400, 86400, 100, 1), -- Large Iron Bound Chest
(@OGUID+99, 74448, 90, -440.175, 81.8185, -151.476, 1.25664, 0, 0, 0.587786, 0.809016, 86400, 86400, 100, 1), -- Large Solid Chest
(@OGUID+100, 74447, 90,  -622.43, 122.98, -199.64, 3.91, 0, 0, 0, 0, 86400, 86400, 100, 1), -- Large Iron Bound Chest		// xyz guessed
(@OGUID+101, 74448, 90,  -622.43, 122.98, -199.64, 3.91, 0, 0, 0, 0, 86400, 86400, 100, 1), -- Large Solid Chest		// xyz guessed
(@OGUID+102, 74447, 90, -630.556, 66.5022, -183.275, 2.75762, 0, 0, 0.981627, 0.190809, 86400, 86400, 100, 1), -- Large Iron Bound Chest
(@OGUID+103, 74448, 90, -630.556, 66.5022, -183.275, 2.75762, 0, 0, 0.981627, 0.190809, 86400, 86400, 100, 1), -- Large Solid Chest
(@OGUID+104, 74447, 90, -622.664, 51.5146, -199.646, 3.05433, 0, 0, 0.999048, 0.0436174, 86400, 86400, 255, 1), -- Large Iron Bound Chest
(@OGUID+105, 74448, 90, -622.664, 51.5146, -199.646, 3.05433, 0, 0, 0.999048, 0.0436174, 86400, 86400, 255, 1), -- Large Solid Chest
(@OGUID+106, 74447, 90, -830.873, 278.731, -272.596, 1.36136, 0, 0, 0.629322, 0.777145, 86400, 86400, 255, 1), -- Large Iron Bound Chest
(@OGUID+107, 74448, 90, -830.873, 278.731, -272.596, 1.36136, 0, 0, 0.629322, 0.777145, 86400, 86400, 255, 1), -- Large Solid Chest
(@OGUID+108, 74447, 90, -754.344, 364, -272.596, 2.80998, 0, 0, 0.986286, 0.165048, 86400, 86400, 100, 1), -- Large Iron Bound Chest
(@OGUID+109, 74448, 90, -754.344, 364, -272.596, 2.80998, 0, 0, 0.986286, 0.165048, 86400, 86400, 100, 1); -- Large Solid Chest

INSERT INTO pool_pool (pool_id, mother_pool, chance, description) VALUES
(@PGUID+92, @PGUID+89, 0, 'Gnomeregan (The Dormitory) - Large Iron Bound/Solid Chest #2'),
(@PGUID+93, @PGUID+89, 0, 'Gnomeregan (The Dormitory) - Large Iron Bound/Solid Chest #3'),
(@PGUID+94, @PGUID+89, 0, 'Gnomeregan (The Dormitory) - Large Iron Bound/Solid Chest #4'),
(@PGUID+95, @PGUID+90, 0, 'Gnomeregan (Engineering Labs) - Large Iron Bound/Solid Chest #5'),
(@PGUID+96, @PGUID+90, 0, 'Gnomeregan (Engineering Labs) - Large Iron Bound/Solid Chest #6');

INSERT INTO pool_template (entry, max_limit, description) VALUES
(@PGUID+89, 1, 'Gnomeregan (The Dormitory) - Chest Pool'),
(@PGUID+90, 1, 'Gnomeregan (Engineering Labs) - Chest Pool'),
(@PGUID+91, 1, 'Gnomeregan (The Hall of Gears) - Large Iron Bound/Solid Chest #1'),
(@PGUID+92, 1, 'Gnomeregan - Large Iron Bound/Solid Chest #2'),
(@PGUID+93, 1, 'Gnomeregan - Large Iron Bound/Solid Chest #3'),
(@PGUID+94, 1, 'Gnomeregan - Large Iron Bound/Solid Chest #4'),
(@PGUID+95, 1, 'Gnomeregan - Large Iron Bound/Solid Chest #5'),
(@PGUID+96, 1, 'Gnomeregan - Large Iron Bound/Solid Chest #6');

INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES
(@OGUID+98, @PGUID+91, 0, 'Gnomeregan - Large Iron Bound Chest (74447)'),
(@OGUID+99, @PGUID+91, 0, 'Gnomeregan - Large Solid Chest (74448)'),
(@OGUID+100, @PGUID+92, 0, 'Gnomeregan - Large Iron Bound Chest (74447)'),
(@OGUID+101, @PGUID+92, 0, 'Gnomeregan - Large Solid Chest (74448)'),
(@OGUID+102, @PGUID+93, 0, 'Gnomeregan - Large Iron Bound Chest (74447)'),
(@OGUID+103, @PGUID+93, 0, 'Gnomeregan - Large Solid Chest (74448)'),
(@OGUID+104, @PGUID+94, 0, 'Gnomeregan - Large Iron Bound Chest (74447)'),
(@OGUID+105, @PGUID+94, 0, 'Gnomeregan - Large Solid Chest (74448)'),
(@OGUID+106, @PGUID+95, 0, 'Gnomeregan - Large Iron Bound Chest (74447)'),
(@OGUID+107, @PGUID+95, 0, 'Gnomeregan - Large Solid Chest (74448)'),
(@OGUID+108, @PGUID+96, 0, 'Gnomeregan - Large Iron Bound Chest (74447)'),
(@OGUID+109, @PGUID+96, 0, 'Gnomeregan - Large Solid Chest (74448)');

-- --------------------------------------
-- SUNKEN TEMPLE (MAP 109)
-- --------------------------------------

-- No chests

-- --------------------------------------
-- RAZORFEN DOWNS (MAP 129)
-- --------------------------------------

-- Initial removal of GameObjects and related pools
DELETE FROM pool_gameobject WHERE guid IN (SELECT guid FROM gameobject WHERE map=129 AND id=75300);
DELETE FROM gameobject WHERE map=129 AND id=75300;

SET @OGUID := 1290000; -- gameobjects
SET @PGUID := 45900; -- pools

INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state) VALUES
(@OGUID+37, 75300, 129, 2502.75, 944.867, 49.1772, -2.05949, 0, 0, 0.857167, -0.515038, 86400, 86400, 100, 1), -- Large Solid Chest
(@OGUID+38, 75300, 129, 2358.62, 966.718, 40.2895, 1.309, 0, 0, 0.608761, 0.793353, 86400, 86400, 100, 1), -- Large Solid Chest
(@OGUID+75, 75300, 129, 2435.01, 995.961, 49.3044, 1.37881, 0, 0, 0.636078, 0.771625, 86400, 86400, 100, 1); -- Large Solid Chest

INSERT INTO pool_template (entry, max_limit, description) VALUES
(@PGUID+23, 1, 'Razorfen Downs - Master Chest Pool');

INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES
(@OGUID+37, @PGUID+23, 0, 'Razorfen Downs - Large Solid Chest (75300)'),
(@OGUID+38, @PGUID+23, 0, 'Razorfen Downs - Large Solid Chest (75300)'),
(@OGUID+75, @PGUID+23, 0, 'Razorfen Downs - Large Solid Chest (75300)');

-- --------------------------------------
-- SCARLET MONASTERY (MAP 189)
-- --------------------------------------

-- Initial removal of GameObjects and related pools
DELETE FROM pool_gameobject WHERE guid IN (SELECT guid FROM gameobject WHERE map=189 AND id IN (75299, 75296, 3703, 3704, 75297, 75300));
DELETE FROM gameobject WHERE map=189 AND id IN (75299, 75296, 3703, 3704, 75297, 75300);

INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state) VALUES
(@OGUID+111, 75299, 189, 1762.11, 1153.56, 7.49028, -1.55334, 0, 0, 0.700909, -0.71325, 86400, 86400, 100, 1), -- Large Solid Chest
(@OGUID+112, 75299, 189, 1847.77, 1276.34, 18.1573, 2.80998, 0, 0, 0.986286, 0.165048, 86400, 86400, 100, 1), -- Large Solid Chest
(@OGUID+113, 75299, 189, 1748.22, 1252.28, 18.1573, -0.575957, 0, 0, -0.284015, 0.95882, 86400, 86400, 100, 1), -- Large Solid Chest
(@OGUID+114, 75296, 189, 1788.14, 1394.66, -0.455138, 2.63544, 0, 0, 0.968147, 0.250383, 86400, 86400, 100, 1), -- Large Iron Bound Chest
-- 115 - 120
(@OGUID+121, 75296, 189, 277.401, -365.671, 20.3969, 3.05433, 0, 0, 0.999048, 0.043619, 86400, 86400, 100, 1), -- Large Iron Bound Chest
(@OGUID+122, 75299, 189, 223.898, -292.728, 19.1996, 2.51327, 0, 0, 0.951057, 0.309017, 86400, 86400, 100, 1), -- Large Solid Chest
(@OGUID+123, 75299, 189, 278.514, -401.431, 20.3957, 3.03684, 0, 0, 0.998629, 0.0523524, 86400, 86400, 100, 1), -- Large Solid Chest
-- 124 - 130
(@OGUID+131, 3703, 189, 1771.76, -377.259, 8.01092, -1.51844, 0, 0, 0.688354, -0.725374, 86400, 86400, 100, 1), -- Armor Crate
(@OGUID+132, 3704, 189, 1745.17, -357.994, 8.01148, -1.85005, 0, 0, 0.798635, -0.601815, 86400, 86400, 100, 1), -- Weapon Crate
(@OGUID+133, 75297, 189, 1743.48, -407.254, 8.01026, 0.017452, 0, 0, 0.00872589, 0.999962, 86400, 86400, 100, 1), -- Large Iron Bound Chest
(@OGUID+134, 75300, 189, 1684.87, -345.412, 18.0233, 0.034907, 0, 0, 0.017452, 0.999848, 86400, 86400, 100, 1); -- Large Solid Chest

INSERT INTO pool_template (entry, max_limit, description) VALUES
(@PGUID+81, 1, 'Scarlet Monastery Library - Master Chest Pool'),
(@PGUID+82, 2, 'Scarlet Monastery Armory - Master Chest Pool'),
(@PGUID+83, 1, 'Scarlet Monastery Graveyard - Master Chest Pool');

INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES
(@OGUID+111, @PGUID+83, 0, 'Scarlet Monastery Graveyard - Large Solid Chest (75299)'),
(@OGUID+112, @PGUID+83, 0, 'Scarlet Monastery Graveyard - Large Solid Chest (75299)'),
(@OGUID+113, @PGUID+83, 0, 'Scarlet Monastery Graveyard - Large Solid Chest (75299)'),
(@OGUID+114, @PGUID+83, 0, 'Scarlet Monastery Graveyard - Large Iron Bound Chest (75296)'),
(@OGUID+121, @PGUID+81, 0, 'Scarlet Monastery Library - Large Iron Bound Chest (75296)'),
(@OGUID+122, @PGUID+81, 0, 'Scarlet Monastery Library - Large Solid Chest (75299)'),
(@OGUID+123, @PGUID+81, 0, 'Scarlet Monastery Library - Large Solid Chest (75299)'),
(@OGUID+131, @PGUID+82, 0, 'Scarlet Monastery Armory - Armor Crate (3703)'),
(@OGUID+132, @PGUID+82, 0, 'Scarlet Monastery Armory - Weapon Crate (3704)'),
(@OGUID+133, @PGUID+82, 0, 'Scarlet Monastery Armory - Large Iron Bound Chest (75297)'),
(@OGUID+134, @PGUID+82, 0, 'Scarlet Monastery Armory - Large Solid Chest (75300)');

-- --------------------------------------
-- ZUL'FARRAK (MAP 209)
-- --------------------------------------

-- No chests

-- --------------------------------------
-- BLACKROCK SPIRE (MAP 229)
-- --------------------------------------

-- Initial removal of GameObjects and related pools
DELETE FROM pool_gameobject WHERE guid IN (SELECT guid FROM gameobject WHERE map=229 AND id IN (153464, 153469));
DELETE FROM gameobject WHERE map=229 AND id IN (153464, 153469);

SET @OGUID := 2290000; -- gameobjects
SET @PGUID := 46200; -- pools

INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state) VALUES
(@OGUID+401, 153464, 229, -36.1176, -583.828, -18.8201, 1.97222, 0, 0, 0, 0, 86400, 86400, 255, 1), -- Large Solid Chest
(@OGUID+402, 153469, 229, -36.1176, -583.828, -18.8201, 1.97222, 0, 0, 0, 0, 86400, 86400, 255, 1), -- Large Mithril Bound Chest
(@OGUID+403, 153464, 229, -39.64638, -472.5804, -18.76505, -1.466076, 0, 0, -0.6691303, 0.743145, 86400, 86400, 255, 1), -- Large Solid Chest
(@OGUID+404, 153469, 229, -39.64638, -472.5804, -18.76505, -1.466076, 0, 0, -0.6691303, 0.743145, 86400, 86400, 255, 1), -- Large Mithril Bound Chest
(@OGUID+405, 153464, 229, -73.9985, -453.335, -18.935, -3.08918, 0, 0, 0, 0, 86400, 86400, 255, 1), -- Large Solid Chest
(@OGUID+406, 153469, 229, -73.9985, -453.335, -18.935, -3.08918, 0, 0, 0, 0, 86400, 86400, 255, 1), -- Large Mithril Bound Chest
(@OGUID+407, 153464, 229, -110.6121, -423.6278, -18.935, -2.879789, 0, 0, -0.9914446, 0.1305283, 86400, 86400, 255, 1), -- Large Solid Chest
(@OGUID+408, 153469, 229, -110.6121, -423.6278, -18.935, -2.879789, 0, 0, -0.9914446, 0.1305283, 86400, 86400, 255, 1), -- Large Mithril Bound Chest
(@OGUID+409, 153464, 229, -64.86904, -586.8962, 29.19087, 0.8901166, 0, 0, 0.4305105, 0.9025856, 86400, 86400, 255, 1), -- Large Solid Chest
(@OGUID+410, 153469, 229, -64.86904, -586.8962, 29.19087, 0.8901166, 0, 0, 0.4305105, 0.9025856, 86400, 86400, 255, 1), -- Large Mithril Bound Chest
(@OGUID+411, 153464, 229, 86.8551, -587.501, 30.6085, 2.63544, 0, 0, 0, 0, 86400, 86400, 255, 1), -- Large Solid Chest
(@OGUID+412, 153469, 229, 86.8551, -587.501, 30.6085, 2.63544, 0, 0, 0, 0, 86400, 86400, 255, 1), -- Large Mithril Bound Chest
(@OGUID+413, 153464, 229, -20.29138, -361.8112, 50.63561, -1.64061, 0, 0, -0.7313538, 0.6819983, 86400, 86400, 255, 1), -- Large Solid Chest
(@OGUID+414, 153469, 229, -20.29138, -361.8112, 50.63561, -1.64061, 0, 0, -0.7313538, 0.6819983, 86400, 86400, 255, 1), -- Large Mithril Bound Chest
(@OGUID+415, 153464, 229, -84.2677, -350.104, 70.9524, 1.91986, 0, 0, 0, 0, 86400, 86400, 255, 1), -- Large Solid Chest
(@OGUID+416, 153469, 229, -84.2677, -350.104, 70.9524, 1.91986, 0, 0, 0, 0, 86400, 86400, 255, 1), -- Large Mithril Bound Chest
(@OGUID+417, 153464, 229, 171.163, -290.7762, 110.9421, 3.089183, 0, 0, 0.9996567, 0.02620165, 86400, 86400, 255, 1), -- Large Solid Chest
(@OGUID+418, 153469, 229, 171.163, -290.7762, 110.9421, 3.089183, 0, 0, 0.9996567, 0.02620165, 86400, 86400, 255, 1), -- Large Mithril Bound Chest
(@OGUID+419, 153464, 229, 183.6473, -369.1504, 117.1433, 2.44346, 0, 0, 0.9396925, 0.3420205, 86400, 86400, 255, 1), -- Large Solid Chest
(@OGUID+420, 153469, 229, 183.6473, -369.1504, 117.1433, 2.44346, 0, 0, 0.9396925, 0.3420205, 86400, 86400, 255, 1); -- Large Mithril Bound Chest

INSERT INTO pool_pool (pool_id, mother_pool, chance, description) VALUES
(@PGUID+81, @PGUID+80, 0, 'Blackrock Spire - Large Solid Chest / Large Mithril Bound Chest - #1'),
(@PGUID+82, @PGUID+80, 0, 'Blackrock Spire - Large Solid Chest / Large Mithril Bound Chest - #2'),
(@PGUID+83, @PGUID+80, 0, 'Blackrock Spire - Large Solid Chest / Large Mithril Bound Chest - #3'),
(@PGUID+84, @PGUID+80, 0, 'Blackrock Spire - Large Solid Chest / Large Mithril Bound Chest - #4'),
(@PGUID+85, @PGUID+80, 0, 'Blackrock Spire - Large Solid Chest / Large Mithril Bound Chest - #5'),
(@PGUID+86, @PGUID+80, 0, 'Blackrock Spire - Large Solid Chest / Large Mithril Bound Chest - #6'),
(@PGUID+87, @PGUID+80, 0, 'Blackrock Spire - Large Solid Chest / Large Mithril Bound Chest - #7'),
(@PGUID+88, @PGUID+80, 0, 'Blackrock Spire - Large Solid Chest / Large Mithril Bound Chest - #8'),
(@PGUID+89, @PGUID+80, 0, 'Blackrock Spire - Large Solid Chest / Large Mithril Bound Chest - #9'),
(@PGUID+90, @PGUID+80, 0, 'Blackrock Spire - Large Solid Chest / Large Mithril Bound Chest - #10');

INSERT INTO pool_template (entry, max_limit, description) VALUES
(@PGUID+80, 3, 'Blackrock Spire - Master Chest Pool'),
(@PGUID+81, 1, 'Blackrock Spire - Large Solid Chest (153464) / Large Mithril Bound Chest (153469) - #1'),
(@PGUID+82, 1, 'Blackrock Spire - Large Solid Chest (153464) / Large Mithril Bound Chest (153469) - #2'),
(@PGUID+83, 1, 'Blackrock Spire - Large Solid Chest (153464) / Large Mithril Bound Chest (153469) - #3'),
(@PGUID+84, 1, 'Blackrock Spire - Large Solid Chest (153464) / Large Mithril Bound Chest (153469) - #4'),
(@PGUID+85, 1, 'Blackrock Spire - Large Solid Chest (153464) / Large Mithril Bound Chest (153469) - #5'),
(@PGUID+86, 1, 'Blackrock Spire - Large Solid Chest (153464) / Large Mithril Bound Chest (153469) - #6'),
(@PGUID+87, 1, 'Blackrock Spire - Large Solid Chest (153464) / Large Mithril Bound Chest (153469) - #7'),
(@PGUID+88, 1, 'Blackrock Spire - Large Solid Chest (153464) / Large Mithril Bound Chest (153469) - #8'),
(@PGUID+89, 1, 'Blackrock Spire - Large Solid Chest (153464) / Large Mithril Bound Chest (153469) - #9'),
(@PGUID+90, 1, 'Blackrock Spire - Large Solid Chest (153464) / Large Mithril Bound Chest (153469) - #10');

INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES
(@OGUID+401, @PGUID+81, 0, 'Blackrock Spire - Large Solid Chest (153464)'),
(@OGUID+402, @PGUID+81, 0, 'Blackrock Spire - Large Mithril Bound Chest (153469)'),
(@OGUID+403, @PGUID+82, 0, 'Blackrock Spire - Large Solid Chest (153464)'),
(@OGUID+404, @PGUID+82, 0, 'Blackrock Spire - Large Mithril Bound Chest (153469)'),
(@OGUID+405, @PGUID+83, 0, 'Blackrock Spire - Large Solid Chest (153464)'),
(@OGUID+406, @PGUID+83, 0, 'Blackrock Spire - Large Mithril Bound Chest (153469)'),
(@OGUID+407, @PGUID+84, 0, 'Blackrock Spire - Large Solid Chest (153464)'),
(@OGUID+408, @PGUID+84, 0, 'Blackrock Spire - Large Mithril Bound Chest (153469)'),
(@OGUID+409, @PGUID+85, 0, 'Blackrock Spire - Large Solid Chest (153464)'),
(@OGUID+410, @PGUID+85, 0, 'Blackrock Spire - Large Mithril Bound Chest (153469)'),
(@OGUID+411, @PGUID+86, 0, 'Blackrock Spire - Large Solid Chest (153464)'),
(@OGUID+412, @PGUID+86, 0, 'Blackrock Spire - Large Mithril Bound Chest (153469)'),
(@OGUID+413, @PGUID+87, 0, 'Blackrock Spire - Large Solid Chest (153464)'),
(@OGUID+414, @PGUID+87, 0, 'Blackrock Spire - Large Mithril Bound Chest (153469)'),
(@OGUID+415, @PGUID+88, 0, 'Blackrock Spire - Large Solid Chest (153464)'),
(@OGUID+416, @PGUID+88, 0, 'Blackrock Spire - Large Mithril Bound Chest (153469)'),
(@OGUID+417, @PGUID+89, 0, 'Blackrock Spire - Large Solid Chest (153464)'),
(@OGUID+418, @PGUID+89, 0, 'Blackrock Spire - Large Mithril Bound Chest (153469)'),
(@OGUID+419, @PGUID+90, 0, 'Blackrock Spire - Large Solid Chest (153464)'),
(@OGUID+420, @PGUID+90, 0, 'Blackrock Spire - Large Mithril Bound Chest (153469)');

-- --------------------------------------
-- BLACKROCK DEPTHS (MAP 230)
-- --------------------------------------

-- No chests

-- --------------------------------------
-- ONYXIA'S LAIR (MAP 249)
-- --------------------------------------

-- No chests

-- --------------------------------------
-- SCHOLOMANCE (MAP 289)
-- --------------------------------------

-- No chests

-- --------------------------------------
-- ZUL'GURUB (MAP 309)
-- --------------------------------------

-- No chests

-- --------------------------------------
-- STRATHOLME (MAP 329)
-- --------------------------------------

-- Initial removal of GameObjects and related pools
DELETE FROM pool_pool WHERE pool_id IN (
	SELECT DISTINCT entry FROM pool_template WHERE entry IN (SELECT DISTINCT pool_entry FROM pool_gameobject WHERE guid IN (
											(SELECT guid FROM gameobject WHERE map=329 AND id IN (153464, 153469, 176224, 176304, 176307, 176308, 176309))))
);
DELETE FROM pool_template WHERE entry IN (SELECT DISTINCT pool_entry FROM pool_gameobject WHERE guid IN (
											(SELECT guid FROM gameobject WHERE map=329 AND id IN (153464, 153469, 176224, 176304, 176307, 176308, 176309))));
DELETE FROM pool_gameobject WHERE guid IN (SELECT guid FROM gameobject WHERE map=329 AND id IN (153464, 153469, 176224, 176304, 176307, 176308, 176309));
DELETE FROM gameobject WHERE map=329 AND id IN (153464, 153469, 176224, 176304, 176307, 176308, 176309);

SET @OGUID := 3290000; -- gameobjects
SET @PGUID := 46800; -- pools

INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state) VALUES
(@OGUID+62, 153464, 329, 3555.388, -3424.295, 136.7455, 2.391098, 0, 0, 0.9304171, 0.3665025, 86400, 86400, 255, 1), -- Large Solid Chest
(@OGUID+63, 153469, 329, 3555.388, -3424.295, 136.7455, 2.391098, 0, 0, 0.9304171, 0.3665025, 86400, 86400, 255, 1), -- Large Mithril Bound Chest
(@OGUID+64, 153464, 329, 3471.283, -3311.513, 132.5644, 0.6981315, 0, 0, 0.34202, 0.9396927, 86400, 86400, 255, 1), -- Large Solid Chest
(@OGUID+65, 153469, 329, 3471.283, -3311.513, 132.5644, 0.6981315, 0, 0, 0.34202, 0.9396927, 86400, 86400, 255, 1), -- Large Mithril Bound Chest
(@OGUID+66, 153464, 329, 3607.98, -3519.02, 138.1113, 1.151916, 0, 0, 0.5446386, 0.8386708, 86400, 86400, 255, 1), -- Large Solid Chest
(@OGUID+67, 153469, 329, 3607.98, -3519.02, 138.1113, 1.151916, 0, 0, 0.5446386, 0.8386708, 86400, 86400, 255, 1), -- Large Mithril Bound Chest
(@OGUID+68, 153464, 329, 3736.932, -3273.183, 130.0494, 1.97222, 0, 0, 0, 0, 86400, 86400, 255, 1), -- Large Solid Chest
(@OGUID+69, 153469, 329, 3736.932, -3273.183, 130.0494, 1.97222, 0, 0, 0, 0, 86400, 86400, 255, 1), -- Large Mithril Bound Chest
(@OGUID+70, 153464, 329, 3816.499, -3715.445, 143.0882, 1.239183, 0, 0, 0.5807028, 0.8141156, 86400, 86400, 255, 1), -- Large Solid Chest
(@OGUID+71, 153469, 329, 3816.499, -3715.445, 143.0882, 1.239183, 0, 0, 0.5807028, 0.8141156, 86400, 86400, 255, 1), -- Large Mithril Bound Chest
(@OGUID+72, 153464, 329, 4022.236, -3610.676, 131.6547, -2.35619, 0, 0, -0.9238787, 0.3826855, 86400, 86400, 255, 1), -- Large Solid Chest
(@OGUID+73, 153469, 329, 4022.236, -3610.676, 131.6547, -2.35619, 0, 0, -0.9238787, 0.3826855, 86400, 86400, 255, 1), -- Large Mithril Bound Chest
(@OGUID+74, 153464, 329, 4080.211, -3533.44, 124.6223, -3.001947, 0, 0, 0.997564, -0.069756, 86400, 86400, 255, 1), -- Large Solid Chest
(@OGUID+75, 153469, 329, 4080.211, -3533.44, 124.6223, -3.001947, 0, 0, 0.997564, -0.069756, 86400, 86400, 255, 1), -- Large Mithril Bound Chest
(@OGUID+332, 176224, 329, 3584.93, -3482.1, 135.124, 0.610865, 0, 0, 0.300706, 0.953717, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+333, 176224, 329, 3508.78, -3372.3, 135.379, -1.98968, 0, 0, 0.838671, -0.544639, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+334, 176224, 329, 3973.62, -3619.9, 129.999, -2.37365, 0, 0, 0.927184, -0.374607, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+335, 176224, 329, 3486.79, -3331.54, 131.38, 1.46608, 0, 0, 0.669131, 0.743145, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+336, 176224, 329, 3961.73, -3539.9, 127.744, -0.244346, 0, 0, 0.121869, -0.992546, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+337, 176224, 329, 3666.63, -3182.46, 126.252, -0.855212, 0, 0, 0.414693, -0.909961, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+338, 176224, 329, 3877.03, -3663.46, 143.9, -1.67552, 0, 0, 0.743145, -0.669131, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+339, 176224, 329, 3636.53, -3347.54, 125.592, 0.715585, 0, 0, 0.350207, 0.936672, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+340, 176224, 329, 3888.71, -3699.08, 143.85, -0.383972, 0, 0, 0.190809, -0.981627, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+341, 176224, 329, 4104.72, -3435.93, 117.802, 2.74017, 0, 0, 0.979925, 0.199368, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+342, 176224, 329, 3892.38, -3563.78, 138.099, -2.28638, 0, 0, 0.909961, -0.414693, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+343, 176224, 329, 3738.43, -3477.54, 131.393, -2.86234, 0, 0, 0.990268, -0.139173, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+344, 176224, 329, 3599.32, -3460.67, 136.472, -2.21657, 0, 0, 0.894934, -0.446198, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+345, 176224, 329, 3476.95, -3363.85, 136.242, -1.98968, 0, 0, 0.838671, -0.544639, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+346, 176224, 329, 3952.68, -3632.92, 133.41, -2.51327, 0, 0, 0.951057, -0.309017, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+347, 176224, 329, 3581.11, -3351, 129.513, 1.6057, 0, 0, 0.71934, 0.694658, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+348, 176224, 329, 4062.22, -3515.15, 123.116, -2.04204, 0, 0, 0.85264, -0.522498, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+349, 176224, 329, 3656.34, -3210.08, 128.257, 1.44862, 0, 0, 0.66262, 0.748956, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+350, 176224, 329, 3682.68, -3416.87, 133.312, 0.610865, 0, 0, 0.300706, 0.953717, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+351, 176224, 329, 3668.9, -3284.14, 128.53, 0.034907, 0, 0, 0.017452, 0.999848, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+352, 176224, 329, 3788.89, -3624.55, 146.377, 0.314159, 0, 0, 0.156434, 0.987688, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+353, 176224, 329, 3998.96, -3448.72, 122.307, 0.628319, 0, 0, 0.309017, 0.951057, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+354, 176224, 329, 3880.02, -3517.12, 139.189, -2.58309, 0, 0, 0.961262, -0.275637, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+355, 176224, 329, 3630.3, -3469.46, 138.793, -0.855212, 0, 0, 0.414693, -0.909961, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+356, 176224, 329, 3638.04, -3534.9, 138.45, 0, 0, 0, 0, 1, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+357, 176224, 329, 3543.4, -3432.62, 136.636, 1.20428, 0, 0, 0.566406, 0.824126, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+358, 176224, 329, 4011.06, -3646.39, 131.552, 0.069813, 0, 0, 0.034899, 0.999391, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+359, 176224, 329, 3466.64, -3298.56, 132.741, -0.698132, 0, 0, 0.34202, -0.939693, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+360, 176224, 329, 4011.67, -3518.38, 122.346, -0.698132, 0, 0, 0.34202, -0.939693, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+361, 176224, 329, 3696.27, -3195.51, 127.796, 2.51327, 0, 0, 0.951057, 0.309017, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+362, 176224, 329, 3665.47, -3662.99, 138.414, 2.02458, 0, 0, 0.848048, 0.529919, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+363, 176224, 329, 3669.82, -3263.99, 127.804, -0.10472, 0, 0, 0.052336, -0.99863, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+364, 176224, 329, 3887.52, -3745.81, 142.36, 2.11185, 0, 0, 0.870356, 0.492424, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+365, 176224, 329, 4113.99, -3383.44, 117.806, 2.98451, 0, 0, 0.996917, 0.078459, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+366, 176224, 329, 3862.17, -3610.11, 144.137, 2.84489, 0, 0, 0.989016, 0.147809, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+367, 176224, 329, 3720.45, -3502.32, 130.548, 2.04204, 0, 0, 0.85264, 0.522499, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+368, 176224, 329, 3592.94, -3512.49, 137.395, -0.663225, 0, 0, 0.325568, -0.945519, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+369, 176224, 329, 3477.72, -3397.27, 138.636, 1.41372, 0, 0, 0.649448, 0.760406, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+370, 176224, 329, 3968.17, -3592.17, 129.298, 0.558505, 0, 0, 0.275637, 0.961262, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+371, 176224, 329, 3546.42, -3307.08, 130.52, -1.98968, 0, 0, 0.838671, -0.544639, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+372, 176224, 329, 3956.05, -3570.05, 129.894, 0.767945, 0, 0, 0.374607, 0.927184, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+373, 176224, 329, 3704.46, -3168.81, 127.617, 2.87979, 0, 0, 0.991445, 0.130526, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+374, 176224, 329, 4095.95, -3361.53, 117.661, -2.30383, 0, 0, 0.913545, -0.406737, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+375, 176224, 329, 3695.37, -3301.16, 128.532, 2.79253, 0, 0, 0.984808, 0.173648, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+376, 176224, 329, 3818.95, -3687.04, 144.695, -0.10472, 0, 0, 0.052336, -0.99863, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+377, 176224, 329, 3973.82, -3419.91, 120.918, 1.29154, 0, 0, 0.601815, 0.798636, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+378, 176224, 329, 3870.84, -3598.91, 143.474, 2.61799, 0, 0, 0.965926, 0.258819, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+379, 176224, 329, 3672.29, -3523.02, 137.733, 2.6529, 0, 0, 0.970296, 0.241922, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+380, 176224, 329, 3615.6, -3535.18, 138.505, 0.785398, 0, 0, 0.382683, 0.92388, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+381, 176224, 329, 3521.19, -3409.08, 134.254, 0.785398, 0, 0, 0.382683, 0.92388, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+382, 176224, 329, 4009.57, -3585.86, 130.177, -1.91986, 0, 0, 0.819152, -0.573576, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+383, 176224, 329, 3561.1, -3307.54, 130.66, -2.05949, 0, 0, 0.857167, -0.515038, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+384, 176224, 329, 4065.88, -3548.68, 124.621, 1.43117, 0, 0, 0.656059, 0.75471, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+385, 176224, 329, 3622.79, -3196.69, 131.094, 0.855211, 0, 0, 0.414693, 0.909961, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+386, 176224, 329, 3711.94, -3147.64, 128.189, -2.94961, 0, 0, 0.995396, -0.095846, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+387, 176224, 329, 3658.95, -3364.85, 126.05, -0.244346, 0, 0, 0.121869, -0.992546, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+388, 176224, 329, 3862.64, -3663.65, 144.775, 3.10669, 0, 0, 0.999848, 0.017452, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+389, 176224, 329, 4066.38, -3455.35, 120.555, -1.25664, 0, 0, 0.587785, -0.809017, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+390, 176224, 329, 3838.05, -3553.55, 140.413, 0.925024, 0, 0, 0.446198, 0.894934, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+391, 176224, 329, 3729.11, -3450.53, 130.433, -2.1293, 0, 0, 0.87462, -0.48481, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+398, 176304, 329, 3584.93, -3482.1, 135.124, 0.610865, 0, 0, 0.300706, 0.953717, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+399, 176304, 329, 3508.78, -3372.3, 135.379, -1.98968, 0, 0, 0.838671, -0.544639, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+400, 176304, 329, 3973.62, -3619.9, 129.999, -2.37365, 0, 0, 0.927184, -0.374607, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+401, 176304, 329, 3486.79, -3331.54, 131.38, 1.46608, 0, 0, 0.669131, 0.743145, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+402, 176304, 329, 3961.73, -3539.9, 127.744, -0.244346, 0, 0, 0.121869, -0.992546, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+403, 176304, 329, 3666.63, -3182.46, 126.252, -0.855212, 0, 0, 0.414693, -0.909961, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+404, 176304, 329, 3877.03, -3663.46, 143.9, -1.67552, 0, 0, 0.743145, -0.669131, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+405, 176304, 329, 3636.53, -3347.54, 125.592, 0.715585, 0, 0, 0.350207, 0.936672, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+406, 176304, 329, 3888.71, -3699.08, 143.85, -0.383972, 0, 0, 0.190809, -0.981627, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+407, 176304, 329, 4104.72, -3435.93, 117.802, 2.74017, 0, 0, 0.979925, 0.199368, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+408, 176304, 329, 3892.38, -3563.78, 138.099, -2.28638, 0, 0, 0.909961, -0.414693, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+409, 176304, 329, 3738.43, -3477.54, 131.393, -2.86234, 0, 0, 0.990268, -0.139173, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+410, 176304, 329, 3599.32, -3460.67, 136.472, -2.21657, 0, 0, 0.894934, -0.446198, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+411, 176304, 329, 3476.95, -3363.85, 136.242, -1.98968, 0, 0, 0.838671, -0.544639, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+412, 176304, 329, 3952.68, -3632.92, 133.41, -2.51327, 0, 0, 0.951057, -0.309017, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+413, 176304, 329, 3581.11, -3351, 129.513, 1.6057, 0, 0, 0.71934, 0.694658, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+414, 176304, 329, 4062.22, -3515.15, 123.116, -2.04204, 0, 0, 0.85264, -0.522498, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+415, 176304, 329, 3656.34, -3210.08, 128.257, 1.44862, 0, 0, 0.66262, 0.748956, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+416, 176304, 329, 3682.68, -3416.87, 133.312, 0.610865, 0, 0, 0.300706, 0.953717, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+417, 176304, 329, 3668.9, -3284.14, 128.53, 0.034907, 0, 0, 0.017452, 0.999848, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+418, 176304, 329, 3788.89, -3624.55, 146.377, 0.314159, 0, 0, 0.156434, 0.987688, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+419, 176304, 329, 3998.96, -3448.72, 122.307, 0.628319, 0, 0, 0.309017, 0.951057, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+420, 176304, 329, 3880.02, -3517.12, 139.189, -2.58309, 0, 0, 0.961262, -0.275637, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+421, 176304, 329, 3630.3, -3469.46, 138.793, -0.855212, 0, 0, 0.414693, -0.909961, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+422, 176304, 329, 3638.04, -3534.9, 138.45, 0, 0, 0, 0, 1, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+423, 176304, 329, 3543.4, -3432.62, 136.636, 1.20428, 0, 0, 0.566406, 0.824126, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+424, 176304, 329, 4011.06, -3646.39, 131.552, 0.069813, 0, 0, 0.034899, 0.999391, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+425, 176304, 329, 3466.64, -3298.56, 132.741, -0.698132, 0, 0, 0.34202, -0.939693, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+426, 176304, 329, 4011.67, -3518.38, 122.346, -0.698132, 0, 0, 0.34202, -0.939693, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+427, 176304, 329, 3696.27, -3195.51, 127.796, 2.51327, 0, 0, 0.951057, 0.309017, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+428, 176304, 329, 3665.47, -3662.99, 138.414, 2.02458, 0, 0, 0.848048, 0.529919, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+429, 176304, 329, 3669.82, -3263.99, 127.804, -0.10472, 0, 0, 0.052336, -0.99863, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+430, 176304, 329, 3887.52, -3745.81, 142.36, 2.11185, 0, 0, 0.870356, 0.492424, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+431, 176304, 329, 4113.99, -3383.44, 117.806, 2.98451, 0, 0, 0.996917, 0.078459, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+432, 176304, 329, 3862.17, -3610.11, 144.137, 2.84489, 0, 0, 0.989016, 0.147809, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+433, 176304, 329, 3720.45, -3502.32, 130.548, 2.04204, 0, 0, 0.85264, 0.522499, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+434, 176304, 329, 3592.94, -3512.49, 137.395, -0.663225, 0, 0, 0.325568, -0.945519, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+435, 176304, 329, 3477.72, -3397.27, 138.636, 1.41372, 0, 0, 0.649448, 0.760406, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+436, 176304, 329, 3968.17, -3592.17, 129.298, 0.558505, 0, 0, 0.275637, 0.961262, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+437, 176304, 329, 3546.42, -3307.08, 130.52, -1.98968, 0, 0, 0.838671, -0.544639, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+438, 176304, 329, 3956.05, -3570.05, 129.894, 0.767945, 0, 0, 0.374607, 0.927184, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+439, 176304, 329, 3704.46, -3168.81, 127.617, 2.87979, 0, 0, 0.991445, 0.130526, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+440, 176304, 329, 4095.95, -3361.53, 117.661, -2.30383, 0, 0, 0.913545, -0.406737, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+441, 176304, 329, 3695.37, -3301.16, 128.532, 2.79253, 0, 0, 0.984808, 0.173648, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+442, 176304, 329, 3818.95, -3687.04, 144.695, -0.10472, 0, 0, 0.052336, -0.99863, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+443, 176304, 329, 3973.82, -3419.91, 120.918, 1.29154, 0, 0, 0.601815, 0.798636, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+444, 176304, 329, 3870.84, -3598.91, 143.474, 2.61799, 0, 0, 0.965926, 0.258819, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+445, 176304, 329, 3672.29, -3523.02, 137.733, 2.6529, 0, 0, 0.970296, 0.241922, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+446, 176304, 329, 3615.6, -3535.18, 138.505, 0.785398, 0, 0, 0.382683, 0.92388, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+447, 176304, 329, 3521.19, -3409.08, 134.254, 0.785398, 0, 0, 0.382683, 0.92388, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+448, 176304, 329, 4009.57, -3585.86, 130.177, -1.91986, 0, 0, 0.819152, -0.573576, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+449, 176304, 329, 3561.1, -3307.54, 130.66, -2.05949, 0, 0, 0.857167, -0.515038, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+450, 176304, 329, 4065.88, -3548.68, 124.621, 1.43117, 0, 0, 0.656059, 0.75471, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+451, 176304, 329, 3622.79, -3196.69, 131.094, 0.855211, 0, 0, 0.414693, 0.909961, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+452, 176304, 329, 3711.94, -3147.64, 128.189, -2.94961, 0, 0, 0.995396, -0.095846, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+453, 176304, 329, 3658.95, -3364.85, 126.05, -0.244346, 0, 0, 0.121869, -0.992546, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+454, 176304, 329, 3862.64, -3663.65, 144.775, 3.10669, 0, 0, 0.999848, 0.017452, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+455, 176304, 329, 4066.38, -3455.35, 120.555, -1.25664, 0, 0, 0.587785, -0.809017, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+456, 176304, 329, 3838.05, -3553.55, 140.413, 0.925024, 0, 0, 0.446198, 0.894934, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+457, 176304, 329, 3729.11, -3450.53, 130.433, -2.1293, 0, 0, 0.87462, -0.48481, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+458, 176307, 329, 3584.93, -3482.1, 135.124, 0.610865, 0, 0, 0.300706, 0.953717, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+459, 176307, 329, 3508.78, -3372.3, 135.379, -1.98968, 0, 0, 0.838671, -0.544639, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+460, 176307, 329, 3973.62, -3619.9, 129.999, -2.37365, 0, 0, 0.927184, -0.374607, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+461, 176307, 329, 3486.79, -3331.54, 131.38, 1.46608, 0, 0, 0.669131, 0.743145, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+462, 176307, 329, 3961.73, -3539.9, 127.744, -0.244346, 0, 0, 0.121869, -0.992546, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+463, 176307, 329, 3666.63, -3182.46, 126.252, -0.855212, 0, 0, 0.414693, -0.909961, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+464, 176307, 329, 3877.03, -3663.46, 143.9, -1.67552, 0, 0, 0.743145, -0.669131, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+465, 176307, 329, 3636.53, -3347.54, 125.592, 0.715585, 0, 0, 0.350207, 0.936672, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+466, 176307, 329, 3888.71, -3699.08, 143.85, -0.383972, 0, 0, 0.190809, -0.981627, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+467, 176307, 329, 4104.72, -3435.93, 117.802, 2.74017, 0, 0, 0.979925, 0.199368, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+468, 176307, 329, 3892.38, -3563.78, 138.099, -2.28638, 0, 0, 0.909961, -0.414693, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+469, 176307, 329, 3738.43, -3477.54, 131.393, -2.86234, 0, 0, 0.990268, -0.139173, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+470, 176307, 329, 3599.32, -3460.67, 136.472, -2.21657, 0, 0, 0.894934, -0.446198, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+471, 176307, 329, 3476.95, -3363.85, 136.242, -1.98968, 0, 0, 0.838671, -0.544639, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+472, 176307, 329, 3952.68, -3632.92, 133.41, -2.51327, 0, 0, 0.951057, -0.309017, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+473, 176307, 329, 3581.11, -3351, 129.513, 1.6057, 0, 0, 0.71934, 0.694658, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+474, 176307, 329, 4062.22, -3515.15, 123.116, -2.04204, 0, 0, 0.85264, -0.522498, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+475, 176307, 329, 3656.34, -3210.08, 128.257, 1.44862, 0, 0, 0.66262, 0.748956, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+476, 176307, 329, 3682.68, -3416.87, 133.312, 0.610865, 0, 0, 0.300706, 0.953717, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+477, 176307, 329, 3668.9, -3284.14, 128.53, 0.034907, 0, 0, 0.017452, 0.999848, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+478, 176307, 329, 3788.89, -3624.55, 146.377, 0.314159, 0, 0, 0.156434, 0.987688, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+479, 176307, 329, 3998.96, -3448.72, 122.307, 0.628319, 0, 0, 0.309017, 0.951057, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+480, 176307, 329, 3880.02, -3517.12, 139.189, -2.58309, 0, 0, 0.961262, -0.275637, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+481, 176307, 329, 3630.3, -3469.46, 138.793, -0.855212, 0, 0, 0.414693, -0.909961, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+482, 176307, 329, 3638.04, -3534.9, 138.45, 0, 0, 0, 0, 1, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+483, 176307, 329, 3543.4, -3432.62, 136.636, 1.20428, 0, 0, 0.566406, 0.824126, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+484, 176307, 329, 4011.06, -3646.39, 131.552, 0.069813, 0, 0, 0.034899, 0.999391, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+485, 176307, 329, 3466.64, -3298.56, 132.741, -0.698132, 0, 0, 0.34202, -0.939693, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+486, 176307, 329, 4011.67, -3518.38, 122.346, -0.698132, 0, 0, 0.34202, -0.939693, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+487, 176307, 329, 3696.27, -3195.51, 127.796, 2.51327, 0, 0, 0.951057, 0.309017, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+488, 176307, 329, 3665.47, -3662.99, 138.414, 2.02458, 0, 0, 0.848048, 0.529919, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+489, 176307, 329, 3669.82, -3263.99, 127.804, -0.10472, 0, 0, 0.052336, -0.99863, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+490, 176307, 329, 3887.52, -3745.81, 142.36, 2.11185, 0, 0, 0.870356, 0.492424, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+491, 176307, 329, 4113.99, -3383.44, 117.806, 2.98451, 0, 0, 0.996917, 0.078459, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+492, 176307, 329, 3862.17, -3610.11, 144.137, 2.84489, 0, 0, 0.989016, 0.147809, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+493, 176307, 329, 3720.45, -3502.32, 130.548, 2.04204, 0, 0, 0.85264, 0.522499, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+494, 176307, 329, 3592.94, -3512.49, 137.395, -0.663225, 0, 0, 0.325568, -0.945519, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+495, 176307, 329, 3477.72, -3397.27, 138.636, 1.41372, 0, 0, 0.649448, 0.760406, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+496, 176307, 329, 3968.17, -3592.17, 129.298, 0.558505, 0, 0, 0.275637, 0.961262, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+497, 176307, 329, 3546.42, -3307.08, 130.52, -1.98968, 0, 0, 0.838671, -0.544639, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+498, 176307, 329, 3956.05, -3570.05, 129.894, 0.767945, 0, 0, 0.374607, 0.927184, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+499, 176307, 329, 3704.46, -3168.81, 127.617, 2.87979, 0, 0, 0.991445, 0.130526, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+500, 176307, 329, 4095.95, -3361.53, 117.661, -2.30383, 0, 0, 0.913545, -0.406737, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+501, 176307, 329, 3695.37, -3301.16, 128.532, 2.79253, 0, 0, 0.984808, 0.173648, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+502, 176307, 329, 3818.95, -3687.04, 144.695, -0.10472, 0, 0, 0.052336, -0.99863, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+503, 176307, 329, 3973.82, -3419.91, 120.918, 1.29154, 0, 0, 0.601815, 0.798636, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+504, 176307, 329, 3870.84, -3598.91, 143.474, 2.61799, 0, 0, 0.965926, 0.258819, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+505, 176307, 329, 3672.29, -3523.02, 137.733, 2.6529, 0, 0, 0.970296, 0.241922, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+506, 176307, 329, 3615.6, -3535.18, 138.505, 0.785398, 0, 0, 0.382683, 0.92388, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+507, 176307, 329, 3521.19, -3409.08, 134.254, 0.785398, 0, 0, 0.382683, 0.92388, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+508, 176307, 329, 4009.57, -3585.86, 130.177, -1.91986, 0, 0, 0.819152, -0.573576, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+509, 176307, 329, 3561.1, -3307.54, 130.66, -2.05949, 0, 0, 0.857167, -0.515038, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+510, 176307, 329, 4065.88, -3548.68, 124.621, 1.43117, 0, 0, 0.656059, 0.75471, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+511, 176307, 329, 3622.79, -3196.69, 131.094, 0.855211, 0, 0, 0.414693, 0.909961, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+512, 176307, 329, 3711.94, -3147.64, 128.189, -2.94961, 0, 0, 0.995396, -0.095846, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+513, 176307, 329, 3658.95, -3364.85, 126.05, -0.244346, 0, 0, 0.121869, -0.992546, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+514, 176307, 329, 3862.64, -3663.65, 144.775, 3.10669, 0, 0, 0.999848, 0.017452, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+515, 176307, 329, 4066.38, -3455.35, 120.555, -1.25664, 0, 0, 0.587785, -0.809017, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+516, 176307, 329, 3838.05, -3553.55, 140.413, 0.925024, 0, 0, 0.446198, 0.894934, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+517, 176307, 329, 3729.11, -3450.53, 130.433, -2.1293, 0, 0, 0.87462, -0.48481, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+518, 176308, 329, 3584.93, -3482.1, 135.124, 0.610865, 0, 0, 0.300706, 0.953717, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+519, 176308, 329, 3508.78, -3372.3, 135.379, -1.98968, 0, 0, 0.838671, -0.544639, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+520, 176308, 329, 3973.62, -3619.9, 129.999, -2.37365, 0, 0, 0.927184, -0.374607, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+521, 176308, 329, 3486.79, -3331.54, 131.38, 1.46608, 0, 0, 0.669131, 0.743145, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+522, 176308, 329, 3961.73, -3539.9, 127.744, -0.244346, 0, 0, 0.121869, -0.992546, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+523, 176308, 329, 3666.63, -3182.46, 126.252, -0.855212, 0, 0, 0.414693, -0.909961, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+524, 176308, 329, 3877.03, -3663.46, 143.9, -1.67552, 0, 0, 0.743145, -0.669131, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+525, 176308, 329, 3636.53, -3347.54, 125.592, 0.715585, 0, 0, 0.350207, 0.936672, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+526, 176308, 329, 3888.71, -3699.08, 143.85, -0.383972, 0, 0, 0.190809, -0.981627, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+527, 176308, 329, 4104.72, -3435.93, 117.802, 2.74017, 0, 0, 0.979925, 0.199368, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+528, 176308, 329, 3892.38, -3563.78, 138.099, -2.28638, 0, 0, 0.909961, -0.414693, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+529, 176308, 329, 3738.43, -3477.54, 131.393, -2.86234, 0, 0, 0.990268, -0.139173, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+530, 176308, 329, 3599.32, -3460.67, 136.472, -2.21657, 0, 0, 0.894934, -0.446198, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+531, 176308, 329, 3476.95, -3363.85, 136.242, -1.98968, 0, 0, 0.838671, -0.544639, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+532, 176308, 329, 3952.68, -3632.92, 133.41, -2.51327, 0, 0, 0.951057, -0.309017, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+533, 176308, 329, 3581.11, -3351, 129.513, 1.6057, 0, 0, 0.71934, 0.694658, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+534, 176308, 329, 4062.22, -3515.15, 123.116, -2.04204, 0, 0, 0.85264, -0.522498, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+535, 176308, 329, 3656.34, -3210.08, 128.257, 1.44862, 0, 0, 0.66262, 0.748956, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+536, 176308, 329, 3682.68, -3416.87, 133.312, 0.610865, 0, 0, 0.300706, 0.953717, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+537, 176308, 329, 3668.9, -3284.14, 128.53, 0.034907, 0, 0, 0.017452, 0.999848, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+538, 176308, 329, 3788.89, -3624.55, 146.377, 0.314159, 0, 0, 0.156434, 0.987688, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+539, 176308, 329, 3998.96, -3448.72, 122.307, 0.628319, 0, 0, 0.309017, 0.951057, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+540, 176308, 329, 3880.02, -3517.12, 139.189, -2.58309, 0, 0, 0.961262, -0.275637, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+541, 176308, 329, 3630.3, -3469.46, 138.793, -0.855212, 0, 0, 0.414693, -0.909961, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+542, 176308, 329, 3638.04, -3534.9, 138.45, 0, 0, 0, 0, 1, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+543, 176308, 329, 3543.4, -3432.62, 136.636, 1.20428, 0, 0, 0.566406, 0.824126, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+544, 176308, 329, 4011.06, -3646.39, 131.552, 0.069813, 0, 0, 0.034899, 0.999391, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+545, 176308, 329, 3466.64, -3298.56, 132.741, -0.698132, 0, 0, 0.34202, -0.939693, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+546, 176308, 329, 4011.67, -3518.38, 122.346, -0.698132, 0, 0, 0.34202, -0.939693, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+547, 176308, 329, 3696.27, -3195.51, 127.796, 2.51327, 0, 0, 0.951057, 0.309017, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+548, 176308, 329, 3665.47, -3662.99, 138.414, 2.02458, 0, 0, 0.848048, 0.529919, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+549, 176308, 329, 3669.82, -3263.99, 127.804, -0.10472, 0, 0, 0.052336, -0.99863, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+550, 176308, 329, 3887.52, -3745.81, 142.36, 2.11185, 0, 0, 0.870356, 0.492424, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+551, 176308, 329, 4113.99, -3383.44, 117.806, 2.98451, 0, 0, 0.996917, 0.078459, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+552, 176308, 329, 3862.17, -3610.11, 144.137, 2.84489, 0, 0, 0.989016, 0.147809, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+553, 176308, 329, 3720.45, -3502.32, 130.548, 2.04204, 0, 0, 0.85264, 0.522499, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+554, 176308, 329, 3592.94, -3512.49, 137.395, -0.663225, 0, 0, 0.325568, -0.945519, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+555, 176308, 329, 3477.72, -3397.27, 138.636, 1.41372, 0, 0, 0.649448, 0.760406, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+556, 176308, 329, 3968.17, -3592.17, 129.298, 0.558505, 0, 0, 0.275637, 0.961262, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+557, 176308, 329, 3546.42, -3307.08, 130.52, -1.98968, 0, 0, 0.838671, -0.544639, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+558, 176308, 329, 3956.05, -3570.05, 129.894, 0.767945, 0, 0, 0.374607, 0.927184, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+559, 176308, 329, 3704.46, -3168.81, 127.617, 2.87979, 0, 0, 0.991445, 0.130526, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+560, 176308, 329, 4095.95, -3361.53, 117.661, -2.30383, 0, 0, 0.913545, -0.406737, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+561, 176308, 329, 3695.37, -3301.16, 128.532, 2.79253, 0, 0, 0.984808, 0.173648, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+562, 176308, 329, 3818.95, -3687.04, 144.695, -0.10472, 0, 0, 0.052336, -0.99863, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+563, 176308, 329, 3973.82, -3419.91, 120.918, 1.29154, 0, 0, 0.601815, 0.798636, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+564, 176308, 329, 3870.84, -3598.91, 143.474, 2.61799, 0, 0, 0.965926, 0.258819, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+565, 176308, 329, 3672.29, -3523.02, 137.733, 2.6529, 0, 0, 0.970296, 0.241922, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+566, 176308, 329, 3615.6, -3535.18, 138.505, 0.785398, 0, 0, 0.382683, 0.92388, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+567, 176308, 329, 3521.19, -3409.08, 134.254, 0.785398, 0, 0, 0.382683, 0.92388, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+568, 176308, 329, 4009.57, -3585.86, 130.177, -1.91986, 0, 0, 0.819152, -0.573576, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+569, 176308, 329, 3561.1, -3307.54, 130.66, -2.05949, 0, 0, 0.857167, -0.515038, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+570, 176308, 329, 4065.88, -3548.68, 124.621, 1.43117, 0, 0, 0.656059, 0.75471, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+571, 176308, 329, 3622.79, -3196.69, 131.094, 0.855211, 0, 0, 0.414693, 0.909961, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+572, 176308, 329, 3711.94, -3147.64, 128.189, -2.94961, 0, 0, 0.995396, -0.095846, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+573, 176308, 329, 3658.95, -3364.85, 126.05, -0.244346, 0, 0, 0.121869, -0.992546, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+574, 176308, 329, 3862.64, -3663.65, 144.775, 3.10669, 0, 0, 0.999848, 0.017452, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+575, 176308, 329, 4066.38, -3455.35, 120.555, -1.25664, 0, 0, 0.587785, -0.809017, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+576, 176308, 329, 3838.05, -3553.55, 140.413, 0.925024, 0, 0, 0.446198, 0.894934, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+577, 176308, 329, 3729.11, -3450.53, 130.433, -2.1293, 0, 0, 0.87462, -0.48481, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+578, 176309, 329, 3584.93, -3482.1, 135.124, 0.610865, 0, 0, 0.300706, 0.953717, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+579, 176309, 329, 3508.78, -3372.3, 135.379, -1.98968, 0, 0, 0.838671, -0.544639, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+580, 176309, 329, 3973.62, -3619.9, 129.999, -2.37365, 0, 0, 0.927184, -0.374607, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+581, 176309, 329, 3486.79, -3331.54, 131.38, 1.46608, 0, 0, 0.669131, 0.743145, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+582, 176309, 329, 3961.73, -3539.9, 127.744, -0.244346, 0, 0, 0.121869, -0.992546, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+583, 176309, 329, 3666.63, -3182.46, 126.252, -0.855212, 0, 0, 0.414693, -0.909961, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+584, 176309, 329, 3877.03, -3663.46, 143.9, -1.67552, 0, 0, 0.743145, -0.669131, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+585, 176309, 329, 3636.53, -3347.54, 125.592, 0.715585, 0, 0, 0.350207, 0.936672, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+586, 176309, 329, 3888.71, -3699.08, 143.85, -0.383972, 0, 0, 0.190809, -0.981627, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+587, 176309, 329, 4104.72, -3435.93, 117.802, 2.74017, 0, 0, 0.979925, 0.199368, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+588, 176309, 329, 3892.38, -3563.78, 138.099, -2.28638, 0, 0, 0.909961, -0.414693, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+589, 176309, 329, 3738.43, -3477.54, 131.393, -2.86234, 0, 0, 0.990268, -0.139173, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+590, 176309, 329, 3599.32, -3460.67, 136.472, -2.21657, 0, 0, 0.894934, -0.446198, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+591, 176309, 329, 3476.95, -3363.85, 136.242, -1.98968, 0, 0, 0.838671, -0.544639, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+592, 176309, 329, 3952.68, -3632.92, 133.41, -2.51327, 0, 0, 0.951057, -0.309017, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+593, 176309, 329, 3581.11, -3351, 129.513, 1.6057, 0, 0, 0.71934, 0.694658, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+594, 176309, 329, 4062.22, -3515.15, 123.116, -2.04204, 0, 0, 0.85264, -0.522498, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+595, 176309, 329, 3656.34, -3210.08, 128.257, 1.44862, 0, 0, 0.66262, 0.748956, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+596, 176309, 329, 3682.68, -3416.87, 133.312, 0.610865, 0, 0, 0.300706, 0.953717, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+597, 176309, 329, 3668.9, -3284.14, 128.53, 0.034907, 0, 0, 0.017452, 0.999848, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+598, 176309, 329, 3788.89, -3624.55, 146.377, 0.314159, 0, 0, 0.156434, 0.987688, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+599, 176309, 329, 3998.96, -3448.72, 122.307, 0.628319, 0, 0, 0.309017, 0.951057, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+600, 176309, 329, 3880.02, -3517.12, 139.189, -2.58309, 0, 0, 0.961262, -0.275637, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+601, 176309, 329, 3630.3, -3469.46, 138.793, -0.855212, 0, 0, 0.414693, -0.909961, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+602, 176309, 329, 3638.04, -3534.9, 138.45, 0, 0, 0, 0, 1, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+603, 176309, 329, 3543.4, -3432.62, 136.636, 1.20428, 0, 0, 0.566406, 0.824126, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+604, 176309, 329, 4011.06, -3646.39, 131.552, 0.069813, 0, 0, 0.034899, 0.999391, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+605, 176309, 329, 3466.64, -3298.56, 132.741, -0.698132, 0, 0, 0.34202, -0.939693, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+606, 176309, 329, 4011.67, -3518.38, 122.346, -0.698132, 0, 0, 0.34202, -0.939693, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+607, 176309, 329, 3696.27, -3195.51, 127.796, 2.51327, 0, 0, 0.951057, 0.309017, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+608, 176309, 329, 3665.47, -3662.99, 138.414, 2.02458, 0, 0, 0.848048, 0.529919, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+609, 176309, 329, 3669.82, -3263.99, 127.804, -0.10472, 0, 0, 0.052336, -0.99863, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+610, 176309, 329, 3887.52, -3745.81, 142.36, 2.11185, 0, 0, 0.870356, 0.492424, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+611, 176309, 329, 4113.99, -3383.44, 117.806, 2.98451, 0, 0, 0.996917, 0.078459, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+612, 176309, 329, 3862.17, -3610.11, 144.137, 2.84489, 0, 0, 0.989016, 0.147809, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+613, 176309, 329, 3720.45, -3502.32, 130.548, 2.04204, 0, 0, 0.85264, 0.522499, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+614, 176309, 329, 3592.94, -3512.49, 137.395, -0.663225, 0, 0, 0.325568, -0.945519, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+615, 176309, 329, 3477.72, -3397.27, 138.636, 1.41372, 0, 0, 0.649448, 0.760406, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+616, 176309, 329, 3968.17, -3592.17, 129.298, 0.558505, 0, 0, 0.275637, 0.961262, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+617, 176309, 329, 3546.42, -3307.08, 130.52, -1.98968, 0, 0, 0.838671, -0.544639, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+618, 176309, 329, 3956.05, -3570.05, 129.894, 0.767945, 0, 0, 0.374607, 0.927184, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+619, 176309, 329, 3704.46, -3168.81, 127.617, 2.87979, 0, 0, 0.991445, 0.130526, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+620, 176309, 329, 4095.95, -3361.53, 117.661, -2.30383, 0, 0, 0.913545, -0.406737, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+621, 176309, 329, 3695.37, -3301.16, 128.532, 2.79253, 0, 0, 0.984808, 0.173648, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+622, 176309, 329, 3818.95, -3687.04, 144.695, -0.10472, 0, 0, 0.052336, -0.99863, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+623, 176309, 329, 3973.82, -3419.91, 120.918, 1.29154, 0, 0, 0.601815, 0.798636, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+624, 176309, 329, 3870.84, -3598.91, 143.474, 2.61799, 0, 0, 0.965926, 0.258819, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+625, 176309, 329, 3672.29, -3523.02, 137.733, 2.6529, 0, 0, 0.970296, 0.241922, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+626, 176309, 329, 3615.6, -3535.18, 138.505, 0.785398, 0, 0, 0.382683, 0.92388, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+627, 176309, 329, 3521.19, -3409.08, 134.254, 0.785398, 0, 0, 0.382683, 0.92388, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+628, 176309, 329, 4009.57, -3585.86, 130.177, -1.91986, 0, 0, 0.819152, -0.573576, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+629, 176309, 329, 3561.1, -3307.54, 130.66, -2.05949, 0, 0, 0.857167, -0.515038, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+630, 176309, 329, 4065.88, -3548.68, 124.621, 1.43117, 0, 0, 0.656059, 0.75471, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+631, 176309, 329, 3622.79, -3196.69, 131.094, 0.855211, 0, 0, 0.414693, 0.909961, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+632, 176309, 329, 3711.94, -3147.64, 128.189, -2.94961, 0, 0, 0.995396, -0.095846, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+633, 176309, 329, 3658.95, -3364.85, 126.05, -0.244346, 0, 0, 0.121869, -0.992546, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+634, 176309, 329, 3862.64, -3663.65, 144.775, 3.10669, 0, 0, 0.999848, 0.017452, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+635, 176309, 329, 4066.38, -3455.35, 120.555, -1.25664, 0, 0, 0.587785, -0.809017, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+636, 176309, 329, 3838.05, -3553.55, 140.413, 0.925024, 0, 0, 0.446198, 0.894934, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+637, 176309, 329, 3729.11, -3450.53, 130.433, -2.1293, 0, 0, 0.87462, -0.48481, 10800, 10800, 100, 1), -- Supply Crate
(@OGUID+657, 181085, 329, 4074.52, -3342.64, 117.693, 1.23918, 0, 0, 0.580703, 0.814116, 180, 180, 100, 1), -- Stratholme Supply Crate
(@OGUID+658, 181085, 329, 3981.04, -3363.18, 119.539, -1.309, 0, 0, 0.608761, -0.793353, 180, 180, 100, 1), -- Stratholme Supply Crate
(@OGUID+659, 181085, 329, 4012.71, -3465.33, 122.372, -1.88496, 0, 0, 0.809017, -0.587785, 180, 180, 100, 1); -- Stratholme Supply Crate

INSERT INTO pool_pool (pool_id, mother_pool, chance, description) VALUES
(@PGUID+91, @PGUID+90, 0, 'Stratholme - Large Solid Chest / Large Mithril Bound Chest - #1'),
(@PGUID+92, @PGUID+90, 0, 'Stratholme - Large Solid Chest / Large Mithril Bound Chest - #2'),
(@PGUID+93, @PGUID+90, 0, 'Stratholme - Large Solid Chest / Large Mithril Bound Chest - #3'),
(@PGUID+94, @PGUID+90, 0, 'Stratholme - Large Solid Chest / Large Mithril Bound Chest - #4'),
(@PGUID+95, @PGUID+90, 0, 'Stratholme - Large Solid Chest / Large Mithril Bound Chest - #5'),
(@PGUID+96, @PGUID+90, 0, 'Stratholme - Large Solid Chest / Large Mithril Bound Chest - #6'),
(@PGUID+97, @PGUID+90, 0, 'Stratholme - Large Solid Chest / Large Mithril Bound Chest - #7');

INSERT INTO pool_template (entry, max_limit, description) VALUES
(@PGUID+15, 1, 'Stratholme Supply Crate'),
(@PGUID+16, 1, 'Stratholme Supply Crate'),
(@PGUID+17, 1, 'Stratholme Supply Crate'),
(@PGUID+18, 1, 'Stratholme Supply Crate'),
(@PGUID+19, 1, 'Stratholme Supply Crate'),
(@PGUID+20, 1, 'Stratholme Supply Crate'),
(@PGUID+21, 1, 'Stratholme Supply Crate'),
(@PGUID+22, 1, 'Stratholme Supply Crate'),
(@PGUID+23, 1, 'Stratholme Supply Crate'),
(@PGUID+24, 1, 'Stratholme Supply Crate'),
(@PGUID+25, 1, 'Stratholme Supply Crate'),
(@PGUID+26, 1, 'Stratholme Supply Crate'),
(@PGUID+27, 1, 'Stratholme Supply Crate'),
(@PGUID+28, 1, 'Stratholme Supply Crate'),
(@PGUID+29, 1, 'Stratholme Supply Crate'),
(@PGUID+30, 1, 'Stratholme Supply Crate'),
(@PGUID+31, 1, 'Stratholme Supply Crate'),
(@PGUID+32, 1, 'Stratholme Supply Crate'),
(@PGUID+33, 1, 'Stratholme Supply Crate'),
(@PGUID+34, 1, 'Stratholme Supply Crate'),
(@PGUID+35, 1, 'Stratholme Supply Crate'),
(@PGUID+36, 1, 'Stratholme Supply Crate'),
(@PGUID+37, 1, 'Stratholme Supply Crate'),
(@PGUID+38, 1, 'Stratholme Supply Crate'),
(@PGUID+39, 1, 'Stratholme Supply Crate'),
(@PGUID+40, 1, 'Stratholme Supply Crate'),
(@PGUID+41, 1, 'Stratholme Supply Crate'),
(@PGUID+42, 1, 'Stratholme Supply Crate'),
(@PGUID+43, 1, 'Stratholme Supply Crate'),
(@PGUID+44, 1, 'Stratholme Supply Crate'),
(@PGUID+45, 1, 'Stratholme Supply Crate'),
(@PGUID+46, 1, 'Stratholme Supply Crate'),
(@PGUID+47, 1, 'Stratholme Supply Crate'),
(@PGUID+48, 1, 'Stratholme Supply Crate'),
(@PGUID+49, 1, 'Stratholme Supply Crate'),
(@PGUID+50, 1, 'Stratholme Supply Crate'),
(@PGUID+51, 1, 'Stratholme Supply Crate'),
(@PGUID+52, 1, 'Stratholme Supply Crate'),
(@PGUID+53, 1, 'Stratholme Supply Crate'),
(@PGUID+54, 1, 'Stratholme Supply Crate'),
(@PGUID+55, 1, 'Stratholme Supply Crate'),
(@PGUID+56, 1, 'Stratholme Supply Crate'),
(@PGUID+57, 1, 'Stratholme Supply Crate'),
(@PGUID+58, 1, 'Stratholme Supply Crate'),
(@PGUID+59, 1, 'Stratholme Supply Crate'),
(@PGUID+60, 1, 'Stratholme Supply Crate'),
(@PGUID+61, 1, 'Stratholme Supply Crate'),
(@PGUID+62, 1, 'Stratholme Supply Crate'),
(@PGUID+63, 1, 'Stratholme Supply Crate'),
(@PGUID+64, 1, 'Stratholme Supply Crate'),
(@PGUID+65, 1, 'Stratholme Supply Crate'),
(@PGUID+66, 1, 'Stratholme Supply Crate'),
(@PGUID+67, 1, 'Stratholme Supply Crate'),
(@PGUID+68, 1, 'Stratholme Supply Crate'),
(@PGUID+69, 1, 'Stratholme Supply Crate'),
(@PGUID+70, 1, 'Stratholme Supply Crate'),
(@PGUID+71, 1, 'Stratholme Supply Crate'),
(@PGUID+72, 1, 'Stratholme Supply Crate'),
(@PGUID+73, 1, 'Stratholme Supply Crate'),
(@PGUID+74, 1, 'Stratholme Supply Crate'),
(@PGUID+90, 3, 'Stratholme - Master Chest Pool'),
(@PGUID+91, 1, 'Stratholme - Large Solid Chest (153464) / Large Mithril Bound Chest (153469) - #1'),
(@PGUID+92, 1, 'Stratholme - Large Solid Chest (153464) / Large Mithril Bound Chest (153469) - #2'),
(@PGUID+93, 1, 'Stratholme - Large Solid Chest (153464) / Large Mithril Bound Chest (153469) - #3'),
(@PGUID+94, 1, 'Stratholme - Large Solid Chest (153464) / Large Mithril Bound Chest (153469) - #4'),
(@PGUID+95, 1, 'Stratholme - Large Solid Chest (153464) / Large Mithril Bound Chest (153469) - #5'),
(@PGUID+96, 1, 'Stratholme - Large Solid Chest (153464) / Large Mithril Bound Chest (153469) - #6'),
(@PGUID+97, 1, 'Stratholme - Large Solid Chest (153464) / Large Mithril Bound Chest (153469) - #7');

INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES
(@OGUID+332, @PGUID+15, 50, 'Stratholme Supply Crate'),
(@OGUID+398, @PGUID+15, 0, 'Stratholme Supply Crate'),
(@OGUID+458, @PGUID+15, 0, 'Stratholme Supply Crate'),
(@OGUID+518, @PGUID+15, 0, 'Stratholme Supply Crate'),
(@OGUID+578, @PGUID+15, 0, 'Stratholme Supply Crate'),
(@OGUID+333, @PGUID+16, 50, 'Stratholme Supply Crate'),
(@OGUID+399, @PGUID+16, 0, 'Stratholme Supply Crate'),
(@OGUID+459, @PGUID+16, 0, 'Stratholme Supply Crate'),
(@OGUID+519, @PGUID+16, 0, 'Stratholme Supply Crate'),
(@OGUID+579, @PGUID+16, 0, 'Stratholme Supply Crate'),
(@OGUID+334, @PGUID+17, 50, 'Stratholme Supply Crate'),
(@OGUID+400, @PGUID+17, 0, 'Stratholme Supply Crate'),
(@OGUID+460, @PGUID+17, 0, 'Stratholme Supply Crate'),
(@OGUID+520, @PGUID+17, 0, 'Stratholme Supply Crate'),
(@OGUID+580, @PGUID+17, 0, 'Stratholme Supply Crate'),
(@OGUID+335, @PGUID+18, 50, 'Stratholme Supply Crate'),
(@OGUID+401, @PGUID+18, 0, 'Stratholme Supply Crate'),
(@OGUID+461, @PGUID+18, 0, 'Stratholme Supply Crate'),
(@OGUID+521, @PGUID+18, 0, 'Stratholme Supply Crate'),
(@OGUID+581, @PGUID+18, 0, 'Stratholme Supply Crate'),
(@OGUID+336, @PGUID+19, 50, 'Stratholme Supply Crate'),
(@OGUID+402, @PGUID+19, 0, 'Stratholme Supply Crate'),
(@OGUID+462, @PGUID+19, 0, 'Stratholme Supply Crate'),
(@OGUID+522, @PGUID+19, 0, 'Stratholme Supply Crate'),
(@OGUID+582, @PGUID+19, 0, 'Stratholme Supply Crate'),
(@OGUID+337, @PGUID+20, 50, 'Stratholme Supply Crate'),
(@OGUID+403, @PGUID+20, 0, 'Stratholme Supply Crate'),
(@OGUID+463, @PGUID+20, 0, 'Stratholme Supply Crate'),
(@OGUID+523, @PGUID+20, 0, 'Stratholme Supply Crate'),
(@OGUID+583, @PGUID+20, 0, 'Stratholme Supply Crate'),
(@OGUID+338, @PGUID+21, 50, 'Stratholme Supply Crate'),
(@OGUID+404, @PGUID+21, 0, 'Stratholme Supply Crate'),
(@OGUID+464, @PGUID+21, 0, 'Stratholme Supply Crate'),
(@OGUID+524, @PGUID+21, 0, 'Stratholme Supply Crate'),
(@OGUID+584, @PGUID+21, 0, 'Stratholme Supply Crate'),
(@OGUID+339, @PGUID+22, 50, 'Stratholme Supply Crate'),
(@OGUID+405, @PGUID+22, 0, 'Stratholme Supply Crate'),
(@OGUID+465, @PGUID+22, 0, 'Stratholme Supply Crate'),
(@OGUID+525, @PGUID+22, 0, 'Stratholme Supply Crate'),
(@OGUID+585, @PGUID+22, 0, 'Stratholme Supply Crate'),
(@OGUID+340, @PGUID+23, 50, 'Stratholme Supply Crate'),
(@OGUID+406, @PGUID+23, 0, 'Stratholme Supply Crate'),
(@OGUID+466, @PGUID+23, 0, 'Stratholme Supply Crate'),
(@OGUID+526, @PGUID+23, 0, 'Stratholme Supply Crate'),
(@OGUID+586, @PGUID+23, 0, 'Stratholme Supply Crate'),
(@OGUID+341, @PGUID+24, 50, 'Stratholme Supply Crate'),
(@OGUID+407, @PGUID+24, 0, 'Stratholme Supply Crate'),
(@OGUID+467, @PGUID+24, 0, 'Stratholme Supply Crate'),
(@OGUID+527, @PGUID+24, 0, 'Stratholme Supply Crate'),
(@OGUID+587, @PGUID+24, 0, 'Stratholme Supply Crate'),
(@OGUID+342, @PGUID+25, 50, 'Stratholme Supply Crate'),
(@OGUID+408, @PGUID+25, 0, 'Stratholme Supply Crate'),
(@OGUID+468, @PGUID+25, 0, 'Stratholme Supply Crate'),
(@OGUID+528, @PGUID+25, 0, 'Stratholme Supply Crate'),
(@OGUID+588, @PGUID+25, 0, 'Stratholme Supply Crate'),
(@OGUID+343, @PGUID+26, 50, 'Stratholme Supply Crate'),
(@OGUID+409, @PGUID+26, 0, 'Stratholme Supply Crate'),
(@OGUID+469, @PGUID+26, 0, 'Stratholme Supply Crate'),
(@OGUID+529, @PGUID+26, 0, 'Stratholme Supply Crate'),
(@OGUID+589, @PGUID+26, 0, 'Stratholme Supply Crate'),
(@OGUID+344, @PGUID+27, 50, 'Stratholme Supply Crate'),
(@OGUID+410, @PGUID+27, 0, 'Stratholme Supply Crate'),
(@OGUID+470, @PGUID+27, 0, 'Stratholme Supply Crate'),
(@OGUID+530, @PGUID+27, 0, 'Stratholme Supply Crate'),
(@OGUID+590, @PGUID+27, 0, 'Stratholme Supply Crate'),
(@OGUID+345, @PGUID+28, 50, 'Stratholme Supply Crate'),
(@OGUID+411, @PGUID+28, 0, 'Stratholme Supply Crate'),
(@OGUID+471, @PGUID+28, 0, 'Stratholme Supply Crate'),
(@OGUID+531, @PGUID+28, 0, 'Stratholme Supply Crate'),
(@OGUID+591, @PGUID+28, 0, 'Stratholme Supply Crate'),
(@OGUID+346, @PGUID+29, 50, 'Stratholme Supply Crate'),
(@OGUID+412, @PGUID+29, 0, 'Stratholme Supply Crate'),
(@OGUID+472, @PGUID+29, 0, 'Stratholme Supply Crate'),
(@OGUID+532, @PGUID+29, 0, 'Stratholme Supply Crate'),
(@OGUID+592, @PGUID+29, 0, 'Stratholme Supply Crate'),
(@OGUID+347, @PGUID+30, 50, 'Stratholme Supply Crate'),
(@OGUID+413, @PGUID+30, 0, 'Stratholme Supply Crate'),
(@OGUID+473, @PGUID+30, 0, 'Stratholme Supply Crate'),
(@OGUID+533, @PGUID+30, 0, 'Stratholme Supply Crate'),
(@OGUID+593, @PGUID+30, 0, 'Stratholme Supply Crate'),
(@OGUID+348, @PGUID+31, 50, 'Stratholme Supply Crate'),
(@OGUID+414, @PGUID+31, 0, 'Stratholme Supply Crate'),
(@OGUID+474, @PGUID+31, 0, 'Stratholme Supply Crate'),
(@OGUID+534, @PGUID+31, 0, 'Stratholme Supply Crate'),
(@OGUID+594, @PGUID+31, 0, 'Stratholme Supply Crate'),
(@OGUID+349, @PGUID+32, 50, 'Stratholme Supply Crate'),
(@OGUID+415, @PGUID+32, 0, 'Stratholme Supply Crate'),
(@OGUID+475, @PGUID+32, 0, 'Stratholme Supply Crate'),
(@OGUID+535, @PGUID+32, 0, 'Stratholme Supply Crate'),
(@OGUID+595, @PGUID+32, 0, 'Stratholme Supply Crate'),
(@OGUID+350, @PGUID+33, 50, 'Stratholme Supply Crate'),
(@OGUID+416, @PGUID+33, 0, 'Stratholme Supply Crate'),
(@OGUID+476, @PGUID+33, 0, 'Stratholme Supply Crate'),
(@OGUID+536, @PGUID+33, 0, 'Stratholme Supply Crate'),
(@OGUID+596, @PGUID+33, 0, 'Stratholme Supply Crate'),
(@OGUID+351, @PGUID+34, 50, 'Stratholme Supply Crate'),
(@OGUID+417, @PGUID+34, 0, 'Stratholme Supply Crate'),
(@OGUID+477, @PGUID+34, 0, 'Stratholme Supply Crate'),
(@OGUID+537, @PGUID+34, 0, 'Stratholme Supply Crate'),
(@OGUID+597, @PGUID+34, 0, 'Stratholme Supply Crate'),
(@OGUID+352, @PGUID+35, 50, 'Stratholme Supply Crate'),
(@OGUID+418, @PGUID+35, 0, 'Stratholme Supply Crate'),
(@OGUID+478, @PGUID+35, 0, 'Stratholme Supply Crate'),
(@OGUID+538, @PGUID+35, 0, 'Stratholme Supply Crate'),
(@OGUID+598, @PGUID+35, 0, 'Stratholme Supply Crate'),
(@OGUID+353, @PGUID+36, 50, 'Stratholme Supply Crate'),
(@OGUID+419, @PGUID+36, 0, 'Stratholme Supply Crate'),
(@OGUID+479, @PGUID+36, 0, 'Stratholme Supply Crate'),
(@OGUID+539, @PGUID+36, 0, 'Stratholme Supply Crate'),
(@OGUID+599, @PGUID+36, 0, 'Stratholme Supply Crate'),
(@OGUID+354, @PGUID+37, 50, 'Stratholme Supply Crate'),
(@OGUID+420, @PGUID+37, 0, 'Stratholme Supply Crate'),
(@OGUID+480, @PGUID+37, 0, 'Stratholme Supply Crate'),
(@OGUID+540, @PGUID+37, 0, 'Stratholme Supply Crate'),
(@OGUID+600, @PGUID+37, 0, 'Stratholme Supply Crate'),
(@OGUID+355, @PGUID+38, 50, 'Stratholme Supply Crate'),
(@OGUID+421, @PGUID+38, 0, 'Stratholme Supply Crate'),
(@OGUID+481, @PGUID+38, 0, 'Stratholme Supply Crate'),
(@OGUID+541, @PGUID+38, 0, 'Stratholme Supply Crate'),
(@OGUID+601, @PGUID+38, 0, 'Stratholme Supply Crate'),
(@OGUID+356, @PGUID+39, 50, 'Stratholme Supply Crate'),
(@OGUID+422, @PGUID+39, 0, 'Stratholme Supply Crate'),
(@OGUID+482, @PGUID+39, 0, 'Stratholme Supply Crate'),
(@OGUID+542, @PGUID+39, 0, 'Stratholme Supply Crate'),
(@OGUID+602, @PGUID+39, 0, 'Stratholme Supply Crate'),
(@OGUID+357, @PGUID+40, 50, 'Stratholme Supply Crate'),
(@OGUID+423, @PGUID+40, 0, 'Stratholme Supply Crate'),
(@OGUID+483, @PGUID+40, 0, 'Stratholme Supply Crate'),
(@OGUID+543, @PGUID+40, 0, 'Stratholme Supply Crate'),
(@OGUID+603, @PGUID+40, 0, 'Stratholme Supply Crate'),
(@OGUID+358, @PGUID+41, 50, 'Stratholme Supply Crate'),
(@OGUID+424, @PGUID+41, 0, 'Stratholme Supply Crate'),
(@OGUID+484, @PGUID+41, 0, 'Stratholme Supply Crate'),
(@OGUID+544, @PGUID+41, 0, 'Stratholme Supply Crate'),
(@OGUID+604, @PGUID+41, 0, 'Stratholme Supply Crate'),
(@OGUID+359, @PGUID+42, 50, 'Stratholme Supply Crate'),
(@OGUID+425, @PGUID+42, 0, 'Stratholme Supply Crate'),
(@OGUID+485, @PGUID+42, 0, 'Stratholme Supply Crate'),
(@OGUID+545, @PGUID+42, 0, 'Stratholme Supply Crate'),
(@OGUID+605, @PGUID+42, 0, 'Stratholme Supply Crate'),
(@OGUID+360, @PGUID+43, 50, 'Stratholme Supply Crate'),
(@OGUID+426, @PGUID+43, 0, 'Stratholme Supply Crate'),
(@OGUID+486, @PGUID+43, 0, 'Stratholme Supply Crate'),
(@OGUID+546, @PGUID+43, 0, 'Stratholme Supply Crate'),
(@OGUID+606, @PGUID+43, 0, 'Stratholme Supply Crate'),
(@OGUID+361, @PGUID+44, 50, 'Stratholme Supply Crate'),
(@OGUID+427, @PGUID+44, 0, 'Stratholme Supply Crate'),
(@OGUID+487, @PGUID+44, 0, 'Stratholme Supply Crate'),
(@OGUID+547, @PGUID+44, 0, 'Stratholme Supply Crate'),
(@OGUID+607, @PGUID+44, 0, 'Stratholme Supply Crate'),
(@OGUID+362, @PGUID+45, 50, 'Stratholme Supply Crate'),
(@OGUID+428, @PGUID+45, 0, 'Stratholme Supply Crate'),
(@OGUID+488, @PGUID+45, 0, 'Stratholme Supply Crate'),
(@OGUID+548, @PGUID+45, 0, 'Stratholme Supply Crate'),
(@OGUID+608, @PGUID+45, 0, 'Stratholme Supply Crate'),
(@OGUID+363, @PGUID+46, 50, 'Stratholme Supply Crate'),
(@OGUID+429, @PGUID+46, 0, 'Stratholme Supply Crate'),
(@OGUID+489, @PGUID+46, 0, 'Stratholme Supply Crate'),
(@OGUID+549, @PGUID+46, 0, 'Stratholme Supply Crate'),
(@OGUID+609, @PGUID+46, 0, 'Stratholme Supply Crate'),
(@OGUID+364, @PGUID+47, 50, 'Stratholme Supply Crate'),
(@OGUID+430, @PGUID+47, 0, 'Stratholme Supply Crate'),
(@OGUID+490, @PGUID+47, 0, 'Stratholme Supply Crate'),
(@OGUID+550, @PGUID+47, 0, 'Stratholme Supply Crate'),
(@OGUID+610, @PGUID+47, 0, 'Stratholme Supply Crate'),
(@OGUID+365, @PGUID+48, 50, 'Stratholme Supply Crate'),
(@OGUID+431, @PGUID+48, 0, 'Stratholme Supply Crate'),
(@OGUID+491, @PGUID+48, 0, 'Stratholme Supply Crate'),
(@OGUID+551, @PGUID+48, 0, 'Stratholme Supply Crate'),
(@OGUID+611, @PGUID+48, 0, 'Stratholme Supply Crate'),
(@OGUID+366, @PGUID+49, 50, 'Stratholme Supply Crate'),
(@OGUID+432, @PGUID+49, 0, 'Stratholme Supply Crate'),
(@OGUID+492, @PGUID+49, 0, 'Stratholme Supply Crate'),
(@OGUID+552, @PGUID+49, 0, 'Stratholme Supply Crate'),
(@OGUID+612, @PGUID+49, 0, 'Stratholme Supply Crate'),
(@OGUID+367, @PGUID+50, 50, 'Stratholme Supply Crate'),
(@OGUID+433, @PGUID+50, 0, 'Stratholme Supply Crate'),
(@OGUID+493, @PGUID+50, 0, 'Stratholme Supply Crate'),
(@OGUID+553, @PGUID+50, 0, 'Stratholme Supply Crate'),
(@OGUID+613, @PGUID+50, 0, 'Stratholme Supply Crate'),
(@OGUID+368, @PGUID+51, 50, 'Stratholme Supply Crate'),
(@OGUID+434, @PGUID+51, 0, 'Stratholme Supply Crate'),
(@OGUID+494, @PGUID+51, 0, 'Stratholme Supply Crate'),
(@OGUID+554, @PGUID+51, 0, 'Stratholme Supply Crate'),
(@OGUID+614, @PGUID+51, 0, 'Stratholme Supply Crate'),
(@OGUID+369, @PGUID+52, 50, 'Stratholme Supply Crate'),
(@OGUID+435, @PGUID+52, 0, 'Stratholme Supply Crate'),
(@OGUID+495, @PGUID+52, 0, 'Stratholme Supply Crate'),
(@OGUID+555, @PGUID+52, 0, 'Stratholme Supply Crate'),
(@OGUID+615, @PGUID+52, 0, 'Stratholme Supply Crate'),
(@OGUID+370, @PGUID+53, 50, 'Stratholme Supply Crate'),
(@OGUID+436, @PGUID+53, 0, 'Stratholme Supply Crate'),
(@OGUID+496, @PGUID+53, 0, 'Stratholme Supply Crate'),
(@OGUID+556, @PGUID+53, 0, 'Stratholme Supply Crate'),
(@OGUID+616, @PGUID+53, 0, 'Stratholme Supply Crate'),
(@OGUID+371, @PGUID+54, 50, 'Stratholme Supply Crate'),
(@OGUID+437, @PGUID+54, 0, 'Stratholme Supply Crate'),
(@OGUID+497, @PGUID+54, 0, 'Stratholme Supply Crate'),
(@OGUID+557, @PGUID+54, 0, 'Stratholme Supply Crate'),
(@OGUID+617, @PGUID+54, 0, 'Stratholme Supply Crate'),
(@OGUID+372, @PGUID+55, 50, 'Stratholme Supply Crate'),
(@OGUID+438, @PGUID+55, 0, 'Stratholme Supply Crate'),
(@OGUID+498, @PGUID+55, 0, 'Stratholme Supply Crate'),
(@OGUID+558, @PGUID+55, 0, 'Stratholme Supply Crate'),
(@OGUID+618, @PGUID+55, 0, 'Stratholme Supply Crate'),
(@OGUID+373, @PGUID+56, 50, 'Stratholme Supply Crate'),
(@OGUID+439, @PGUID+56, 0, 'Stratholme Supply Crate'),
(@OGUID+499, @PGUID+56, 0, 'Stratholme Supply Crate'),
(@OGUID+559, @PGUID+56, 0, 'Stratholme Supply Crate'),
(@OGUID+619, @PGUID+56, 0, 'Stratholme Supply Crate'),
(@OGUID+374, @PGUID+57, 50, 'Stratholme Supply Crate'),
(@OGUID+440, @PGUID+57, 0, 'Stratholme Supply Crate'),
(@OGUID+500, @PGUID+57, 0, 'Stratholme Supply Crate'),
(@OGUID+560, @PGUID+57, 0, 'Stratholme Supply Crate'),
(@OGUID+620, @PGUID+57, 0, 'Stratholme Supply Crate'),
(@OGUID+375, @PGUID+58, 50, 'Stratholme Supply Crate'),
(@OGUID+441, @PGUID+58, 0, 'Stratholme Supply Crate'),
(@OGUID+501, @PGUID+58, 0, 'Stratholme Supply Crate'),
(@OGUID+561, @PGUID+58, 0, 'Stratholme Supply Crate'),
(@OGUID+621, @PGUID+58, 0, 'Stratholme Supply Crate'),
(@OGUID+376, @PGUID+59, 50, 'Stratholme Supply Crate'),
(@OGUID+442, @PGUID+59, 0, 'Stratholme Supply Crate'),
(@OGUID+502, @PGUID+59, 0, 'Stratholme Supply Crate'),
(@OGUID+562, @PGUID+59, 0, 'Stratholme Supply Crate'),
(@OGUID+622, @PGUID+59, 0, 'Stratholme Supply Crate'),
(@OGUID+377, @PGUID+60, 50, 'Stratholme Supply Crate'),
(@OGUID+443, @PGUID+60, 0, 'Stratholme Supply Crate'),
(@OGUID+503, @PGUID+60, 0, 'Stratholme Supply Crate'),
(@OGUID+563, @PGUID+60, 0, 'Stratholme Supply Crate'),
(@OGUID+623, @PGUID+60, 0, 'Stratholme Supply Crate'),
(@OGUID+378, @PGUID+61, 50, 'Stratholme Supply Crate'),
(@OGUID+444, @PGUID+61, 0, 'Stratholme Supply Crate'),
(@OGUID+504, @PGUID+61, 0, 'Stratholme Supply Crate'),
(@OGUID+564, @PGUID+61, 0, 'Stratholme Supply Crate'),
(@OGUID+624, @PGUID+61, 0, 'Stratholme Supply Crate'),
(@OGUID+379, @PGUID+62, 50, 'Stratholme Supply Crate'),
(@OGUID+445, @PGUID+62, 0, 'Stratholme Supply Crate'),
(@OGUID+505, @PGUID+62, 0, 'Stratholme Supply Crate'),
(@OGUID+565, @PGUID+62, 0, 'Stratholme Supply Crate'),
(@OGUID+625, @PGUID+62, 0, 'Stratholme Supply Crate'),
(@OGUID+380, @PGUID+63, 50, 'Stratholme Supply Crate'),
(@OGUID+446, @PGUID+63, 0, 'Stratholme Supply Crate'),
(@OGUID+506, @PGUID+63, 0, 'Stratholme Supply Crate'),
(@OGUID+566, @PGUID+63, 0, 'Stratholme Supply Crate'),
(@OGUID+626, @PGUID+63, 0, 'Stratholme Supply Crate'),
(@OGUID+381, @PGUID+64, 50, 'Stratholme Supply Crate'),
(@OGUID+447, @PGUID+64, 0, 'Stratholme Supply Crate'),
(@OGUID+507, @PGUID+64, 0, 'Stratholme Supply Crate'),
(@OGUID+567, @PGUID+64, 0, 'Stratholme Supply Crate'),
(@OGUID+627, @PGUID+64, 0, 'Stratholme Supply Crate'),
(@OGUID+382, @PGUID+65, 50, 'Stratholme Supply Crate'),
(@OGUID+448, @PGUID+65, 0, 'Stratholme Supply Crate'),
(@OGUID+508, @PGUID+65, 0, 'Stratholme Supply Crate'),
(@OGUID+568, @PGUID+65, 0, 'Stratholme Supply Crate'),
(@OGUID+628, @PGUID+65, 0, 'Stratholme Supply Crate'),
(@OGUID+383, @PGUID+66, 50, 'Stratholme Supply Crate'),
(@OGUID+449, @PGUID+66, 0, 'Stratholme Supply Crate'),
(@OGUID+509, @PGUID+66, 0, 'Stratholme Supply Crate'),
(@OGUID+569, @PGUID+66, 0, 'Stratholme Supply Crate'),
(@OGUID+629, @PGUID+66, 0, 'Stratholme Supply Crate'),
(@OGUID+384, @PGUID+67, 50, 'Stratholme Supply Crate'),
(@OGUID+450, @PGUID+67, 0, 'Stratholme Supply Crate'),
(@OGUID+510, @PGUID+67, 0, 'Stratholme Supply Crate'),
(@OGUID+570, @PGUID+67, 0, 'Stratholme Supply Crate'),
(@OGUID+630, @PGUID+67, 0, 'Stratholme Supply Crate'),
(@OGUID+385, @PGUID+68, 50, 'Stratholme Supply Crate'),
(@OGUID+451, @PGUID+68, 0, 'Stratholme Supply Crate'),
(@OGUID+511, @PGUID+68, 0, 'Stratholme Supply Crate'),
(@OGUID+571, @PGUID+68, 0, 'Stratholme Supply Crate'),
(@OGUID+631, @PGUID+68, 0, 'Stratholme Supply Crate'),
(@OGUID+386, @PGUID+69, 50, 'Stratholme Supply Crate'),
(@OGUID+452, @PGUID+69, 0, 'Stratholme Supply Crate'),
(@OGUID+512, @PGUID+69, 0, 'Stratholme Supply Crate'),
(@OGUID+572, @PGUID+69, 0, 'Stratholme Supply Crate'),
(@OGUID+632, @PGUID+69, 0, 'Stratholme Supply Crate'),
(@OGUID+387, @PGUID+70, 50, 'Stratholme Supply Crate'),
(@OGUID+453, @PGUID+70, 0, 'Stratholme Supply Crate'),
(@OGUID+513, @PGUID+70, 0, 'Stratholme Supply Crate'),
(@OGUID+573, @PGUID+70, 0, 'Stratholme Supply Crate'),
(@OGUID+633, @PGUID+70, 0, 'Stratholme Supply Crate'),
(@OGUID+388, @PGUID+71, 50, 'Stratholme Supply Crate'),
(@OGUID+454, @PGUID+71, 0, 'Stratholme Supply Crate'),
(@OGUID+514, @PGUID+71, 0, 'Stratholme Supply Crate'),
(@OGUID+574, @PGUID+71, 0, 'Stratholme Supply Crate'),
(@OGUID+634, @PGUID+71, 0, 'Stratholme Supply Crate'),
(@OGUID+389, @PGUID+72, 50, 'Stratholme Supply Crate'),
(@OGUID+455, @PGUID+72, 0, 'Stratholme Supply Crate'),
(@OGUID+515, @PGUID+72, 0, 'Stratholme Supply Crate'),
(@OGUID+575, @PGUID+72, 0, 'Stratholme Supply Crate'),
(@OGUID+635, @PGUID+72, 0, 'Stratholme Supply Crate'),
(@OGUID+390, @PGUID+73, 50, 'Stratholme Supply Crate'),
(@OGUID+456, @PGUID+73, 0, 'Stratholme Supply Crate'),
(@OGUID+516, @PGUID+73, 0, 'Stratholme Supply Crate'),
(@OGUID+576, @PGUID+73, 0, 'Stratholme Supply Crate'),
(@OGUID+636, @PGUID+73, 0, 'Stratholme Supply Crate'),
(@OGUID+391, @PGUID+74, 50, 'Stratholme Supply Crate'),
(@OGUID+457, @PGUID+74, 0, 'Stratholme Supply Crate'),
(@OGUID+517, @PGUID+74, 0, 'Stratholme Supply Crate'),
(@OGUID+577, @PGUID+74, 0, 'Stratholme Supply Crate'),
(@OGUID+637, @PGUID+74, 0, 'Stratholme Supply Crate'),
(@OGUID+62, @PGUID+91, 0, 'Stratholme - Large Solid Chest (153464)'),
(@OGUID+63, @PGUID+91, 0, 'Stratholme - Large Mithril Bound Chest (153469)'),
(@OGUID+64, @PGUID+92, 0, 'Stratholme - Large Solid Chest (153464)'),
(@OGUID+65, @PGUID+92, 0, 'Stratholme - Large Mithril Bound Chest (153469)'),
(@OGUID+66, @PGUID+93, 0, 'Stratholme - Large Solid Chest (153464)'),
(@OGUID+67, @PGUID+93, 0, 'Stratholme - Large Mithril Bound Chest (153469)'),
(@OGUID+68, @PGUID+94, 0, 'Stratholme - Large Solid Chest (153464)'),
(@OGUID+69, @PGUID+94, 0, 'Stratholme - Large Mithril Bound Chest (153469)'),
(@OGUID+70, @PGUID+95, 0, 'Stratholme - Large Solid Chest (153464)'),
(@OGUID+71, @PGUID+95, 0, 'Stratholme - Large Mithril Bound Chest (153469)'),
(@OGUID+72, @PGUID+96, 0, 'Stratholme - Large Solid Chest (153464)'),
(@OGUID+73, @PGUID+96, 0, 'Stratholme - Large Mithril Bound Chest (153469)'),
(@OGUID+74, @PGUID+97, 0, 'Stratholme - Large Solid Chest (153464)'),
(@OGUID+75, @PGUID+97, 0, 'Stratholme - Large Mithril Bound Chest (153469)');

-- --------------------------------------
-- MARAUDON (MAP 349)
-- --------------------------------------

-- No chests

-- --------------------------------------
-- RAGEFIRE CHASM (MAP 389)
-- --------------------------------------

-- No chests

-- --------------------------------------
-- MOLTEN CORE (MAP 409)
-- --------------------------------------

-- No chests

-- --------------------------------------
-- DIRE MAUL (MAP 429)
-- --------------------------------------

-- Initial removal of GameObjects and related pools
DELETE FROM pool_pool WHERE pool_id IN (
	SELECT DISTINCT entry FROM pool_template WHERE entry IN (SELECT DISTINCT pool_entry FROM pool_gameobject WHERE guid IN (
											(SELECT guid FROM gameobject WHERE map=429 AND id IN (153464, 153469, 179548, 179526))))
);
DELETE FROM pool_template WHERE entry IN (SELECT DISTINCT pool_entry FROM pool_gameobject WHERE guid IN (
											(SELECT guid FROM gameobject WHERE map=429 AND id IN (153464, 153469, 179548, 179526))));
DELETE FROM pool_template WHERE entry=1602;
DELETE FROM pool_gameobject WHERE guid IN (SELECT guid FROM gameobject WHERE map=429 AND id IN (153464, 153469, 179548, 179526));
DELETE FROM gameobject WHERE map=429 AND id IN (153464, 153469, 179548, 179526);

SET @OGUID := 4290000; -- gameobjects
SET @PGUID := 47200; -- pools

INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state) VALUES
(@OGUID+52, 179526, 429, -27.0036, -404.283, -58.614, 0.226892, 0, 0, 0.113203, 0.993572, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+53, 179526, 429, -131.851, -319.414, -56.7906, 0.244346, 0, 0, 0.121869, 0.992546, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+54, 179526, 429, -22.3061, -349.882, -4.07224, -2.02458, 0, 0, -0.848047, 0.529921, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+55, 179526, 429, -156.299, -321.1, -4.14717, 1.25664, 0, 0, 0.587786, 0.809016, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+56, 179526, 429, 31.0736, -681.584, -25.1616, 0, 0, 0, 0, 1, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+57, 179526, 429, 36.7152, -467.008, -4.24876, 1.58825, 0, 0, 0.713251, 0.700909, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+58, 179526, 429, -10.2151, -349.267, -53.8632, 2.05949, 0, 0, 0.857167, 0.515038, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+59, 179526, 429, -51.4662, -358.168, -4.13823, 1.81514, 0, 0, 0.78801, 0.615662, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+60, 179526, 429, 21.9326, -409.795, -58.6142, 0, 0, 0, 0, 1, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+61, 179526, 429, 117.148, -408.461, -3.27357, 2.32129, 0, 0, 0.91706, 0.398748, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+62, 179526, 429, 102.549, -246.011, -56.3647, 0.785397, 0, 0, 0.382683, 0.92388, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+63, 179526, 429, 263.393, -568.436, -111.976, -2.67035, 0, 0, -0.972369, 0.233447, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+64, 179526, 429, 477.125, 307.609, 2.85288, 1.74533, 0, 0, 0.766045, 0.642787, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+65, 179526, 429, 423.649, -94.0369, -3.88739, -0.453785, 0, 0, -0.224951, 0.97437, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+66, 179526, 429, 4.90084, -450.306, -58.6294, 0, 0, 0, 0, 1, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+67, 179526, 429, 71.7209, -409.745, -4.21656, 3.12412, 0, 0, 0.999962, 0.00873622, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+68, 179526, 429, -27.7882, -388.435, -4.22943, 1.39626, 0, 0, 0.642786, 0.766046, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+69, 179526, 429, -42.6484, -341.5, -52.6547, 0.244346, 0, 0, 0.121869, 0.992546, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+70, 179526, 429, 34.9096, -365.079, -4.14052, 0.314158, 0, 0, 0.156434, 0.987688, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+71, 179526, 429, -114.736, -199.653, -4.1244, 0, 0, 0, 0, 1, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+72, 179526, 429, 101.961, -247.727, -4.01977, 2.84488, 0, 0, 0.989015, 0.147813, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+73, 179526, 429, 126.702, -248.335, -4.14639, -2.72271, 0, 0, -0.978147, 0.207914, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+74, 179526, 429, 66.2358, -633.758, -25.163, 3.05433, 0, 0, 0.999048, 0.0436193, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+75, 179526, 429, -6.16094, -433.403, -4.22212, 0, 0, 0, 0, 1, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+76, 179526, 429, 2.64945, -210.379, -52.3845, -0.95993, 0, 0, -0.461748, 0.887011, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+77, 179526, 429, -168.655, -271.912, -4.12082, -0.750491, 0, 0, -0.366501, 0.930418, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+78, 179526, 429, 55.8777, -438.434, -58.5981, -0.855211, 0, 0, -0.414693, 0.909961, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+79, 179526, 429, 59.0393, -760.028, -25.0955, -1.23918, 0, 0, -0.580703, 0.814116, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+80, 179526, 429, 71.7946, -437.261, -58.5956, 0.872664, 0, 0, 0.422618, 0.906308, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+81, 179526, 429, -28.3324, -385.063, -58.6181, 1.95477, 0, 0, 0.829038, 0.559192, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+82, 179526, 429, 47.8125, -334.275, -52.0553, -0.506145, 0, 0, -0.25038, 0.968148, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+83, 179526, 429, 353.105, -447.005, -90.0577, 0, 0, 0, 0, 1, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+84, 179526, 429, 509.725, 523.927, -25.4027, -2.80997, 0, 0, -0.986285, 0.165053, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+85, 179526, 429, 456.691, -47.364, -3.88702, -1.76278, 0, 0, -0.771624, 0.636079, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+86, 179526, 429, 34.5069, -391.211, -58.6112, -2.16421, 0, 0, -0.882948, 0.469471, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+87, 179526, 429, -12.3063, -396.872, -4.22113, -0.593412, 0, 0, -0.292372, 0.956305, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+88, 179526, 429, 127.199, -272.801, -4.14639, -1.93732, 0, 0, -0.824127, 0.566404, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+89, 179526, 429, -94.2365, -406.708, -58.6073, 0, 0, 0, 0, 1, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+90, 179526, 429, -112.021, -258.887, -56.2501, 0, 0, 0, 0, 1, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+91, 179526, 429, 134.767, -262.46, -4.14639, -0.488691, 0, 0, -0.241921, 0.970296, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+92, 179526, 429, -148.661, -210.009, -4.1514, 0.418879, 0, 0, 0.207912, 0.978148, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+93, 179526, 429, 32.7576, -775.236, -25.1416, -1.309, 0, 0, -0.608763, 0.793352, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+94, 179526, 429, -109.888, -404.549, -4.21786, -2.07694, 0, 0, -0.861629, 0.507539, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+95, 179526, 429, -61.5861, -306.311, -55.7067, 2.33874, 0, 0, 0.920505, 0.390732, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+96, 179526, 429, -7.83484, -199.983, -4.12879, -0.453785, 0, 0, -0.224951, 0.97437, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+97, 179526, 429, 64.8074, -400.448, -58.6044, -0.628317, 0, 0, -0.309016, 0.951057, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+98, 179526, 429, 44.9141, -626.477, -25.1061, -2.47837, 0, 0, -0.945519, 0.325567, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+99, 179526, 429, 66.1826, -315.416, -54.2518, 0, 0, 0, 0, 1, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+100, 179526, 429, 242.178, -420.788, -119.962, -0.069812, 0, 0, -0.0348988, 0.999391, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+101, 179526, 429, 490.501, 551.961, -25.381, -0.418879, 0, 0, -0.207912, 0.978148, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+102, 179526, 429, 468.448, 258.01, 6.34532, 1.02974, 0, 0, 0.492422, 0.870357, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+103, 179526, 429, -5.54965, -393.198, -58.6137, -0.209439, 0, 0, -0.104528, 0.994522, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+104, 179526, 429, -124.622, -234.072, -55.1133, -0.314158, 0, 0, -0.156434, 0.987688, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+105, 179526, 429, 119.36, -336.64, -4.14986, -1.44862, 0, 0, -0.662619, 0.748957, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+106, 179526, 429, -75.923, -358.893, -4.14481, 2.87979, 0, 0, 0.991445, 0.130528, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+107, 179526, 429, 41.8712, -744.931, -25.1339, 0.104719, 0, 0, 0.0523356, 0.99863, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+108, 179526, 429, 36.7851, -402.629, -4.21849, -2.49582, 0, 0, -0.948323, 0.317306, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+109, 179526, 429, -14.44, -309.911, -52.1458, 0, 0, 0, 0, 1, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+110, 179526, 429, 126.758, -296.278, -4.14639, -1.95477, 0, 0, -0.829037, 0.559194, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+111, 179526, 429, -32.8264, -463.171, -58.6176, 0.488691, 0, 0, 0.241921, 0.970296, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+112, 179526, 429, 17.3334, -704.192, -12.6426, -2.19912, 0, 0, -0.891008, 0.453988, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+113, 179526, 429, 50.4484, -241.885, -53.2931, 1.8675, 0, 0, 0.803856, 0.594824, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+114, 179526, 429, 189.484, -482.115, -100.601, 1.93731, 0, 0, 0.824125, 0.566409, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+115, 179526, 429, 423.59, 262.49, 11.1475, 0, 0, 0, 0, 1, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+116, 179526, 429, 475.207, -104.252, -3.88595, -1.32645, 0, 0, -0.615661, 0.788011, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+117, 179528, 429, -27.0036, -404.283, -58.614, 0.226892, 0, 0, 0.113203, 0.993572, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+118, 179528, 429, -131.851, -319.414, -56.7906, 0.244346, 0, 0, 0.121869, 0.992546, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+119, 179528, 429, -22.3061, -349.882, -4.07224, -2.02458, 0, 0, -0.848048, 0.52992, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+120, 179528, 429, -156.299, -321.1, -4.14717, 1.25664, 0, 0, 0.587786, 0.809016, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+121, 179528, 429, 31.0736, -681.584, -25.1616, 0, 0, 0, 0, 1, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+122, 179528, 429, 36.7152, -467.008, -4.24876, 1.58825, 0, 0, 0.713251, 0.700909, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+123, 179528, 429, -10.2151, -349.267, -53.8632, 2.05949, 0, 0, 0.857168, 0.515037, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+124, 179528, 429, -51.4662, -358.168, -4.13823, 1.81514, 0, 0, 0.788011, 0.615662, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+125, 179528, 429, 21.9326, -409.795, -58.6142, 0, 0, 0, 0, 1, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+126, 179528, 429, 117.148, -408.461, -3.27357, 2.32129, 0, 0, 0.91706, 0.398748, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+127, 179528, 429, 102.549, -246.011, -56.3647, 0.785397, 0, 0, 0.382683, 0.92388, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+128, 179528, 429, 263.393, -568.436, -111.976, -2.67035, 0, 0, -0.972369, 0.233447, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+129, 179528, 429, 477.125, 307.609, 2.85288, 1.74533, 0, 0, 0.766045, 0.642787, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+130, 179528, 429, 423.649, -94.0369, -3.88739, -0.453785, 0, 0, -0.224951, 0.97437, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+131, 179528, 429, 4.90084, -450.306, -58.6294, 0, 0, 0, 0, 1, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+132, 179528, 429, 71.7209, -409.745, -4.21656, 3.12412, 0, 0, 0.999962, 0.00873622, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+133, 179528, 429, -27.7882, -388.435, -4.22943, 1.39626, 0, 0, 0.642786, 0.766046, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+134, 179528, 429, -42.6484, -341.5, -52.6547, 0.244346, 0, 0, 0.121869, 0.992546, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+135, 179528, 429, 34.9096, -365.079, -4.14052, 0.314158, 0, 0, 0.156434, 0.987688, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+136, 179528, 429, -114.736, -199.653, -4.1244, 0, 0, 0, 0, 1, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+137, 179528, 429, 101.961, -247.727, -4.01977, 2.84488, 0, 0, 0.989015, 0.147813, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+138, 179528, 429, 126.702, -248.335, -4.14639, -2.72271, 0, 0, -0.978147, 0.207914, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+139, 179528, 429, 66.2358, -633.758, -25.163, 3.05433, 0, 0, 0.999048, 0.0436174, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+140, 179528, 429, -6.16094, -433.403, -4.22212, 0, 0, 0, 0, 1, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+141, 179528, 429, 2.64945, -210.379, -52.3845, -0.95993, 0, 0, -0.461748, 0.887011, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+142, 179528, 429, -168.655, -271.912, -4.12082, -0.750491, 0, 0, -0.366501, 0.930418, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+143, 179528, 429, 55.8777, -438.434, -58.5981, -0.855211, 0, 0, -0.414693, 0.909961, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+144, 179528, 429, 59.0393, -760.028, -25.0955, -1.23918, 0, 0, -0.580701, 0.814117, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+145, 179528, 429, 71.7946, -437.261, -58.5956, 0.872664, 0, 0, 0.422618, 0.906308, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+146, 179528, 429, -28.3324, -385.063, -58.6181, 1.95477, 0, 0, 0.829038, 0.559192, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+147, 179528, 429, 47.8125, -334.275, -52.0553, -0.506145, 0, 0, -0.25038, 0.968148, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+148, 179528, 429, 353.105, -447.005, -90.0577, 0, 0, 0, 0, 1, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+149, 179528, 429, 509.725, 523.927, -25.4027, -2.80997, 0, 0, -0.986285, 0.165053, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+150, 179528, 429, 456.691, -47.364, -3.88702, -1.76278, 0, 0, -0.771624, 0.636079, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+151, 179528, 429, 34.5069, -391.211, -58.6112, -2.16421, 0, 0, -0.882947, 0.469473, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+152, 179528, 429, -12.3063, -396.872, -4.22113, -0.593412, 0, 0, -0.292372, 0.956305, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+153, 179528, 429, 127.199, -272.801, -4.14639, -1.93732, 0, 0, -0.824126, 0.566406, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+154, 179528, 429, -94.2365, -406.708, -58.6073, 0, 0, 0, 0, 1, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+155, 179528, 429, -112.021, -258.887, -56.2501, 0, 0, 0, 0, 1, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+156, 179528, 429, 134.767, -262.46, -4.14639, -0.488691, 0, 0, -0.241921, 0.970296, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+157, 179528, 429, -148.661, -210.009, -4.1514, 0.418879, 0, 0, 0.207912, 0.978148, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+158, 179528, 429, 32.7576, -775.236, -25.1416, -1.309, 0, 0, -0.608763, 0.793352, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+159, 179528, 429, -109.888, -404.549, -4.21786, -2.07694, 0, 0, -0.861629, 0.507539, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+160, 179528, 429, -61.5861, -306.311, -55.7067, 2.33874, 0, 0, 0.920505, 0.390732, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+161, 179528, 429, -7.83484, -199.983, -4.12879, -0.453785, 0, 0, -0.224951, 0.97437, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+162, 179528, 429, 64.8074, -400.448, -58.6044, -0.628317, 0, 0, -0.309016, 0.951057, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+163, 179528, 429, 44.9141, -626.477, -25.1061, -2.47837, 0, 0, -0.945519, 0.325567, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+164, 179528, 429, 66.1826, -315.416, -54.2518, 0, 0, 0, 0, 1, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+165, 179528, 429, 242.178, -420.788, -119.962, -0.069812, 0, 0, -0.0348989, 0.999391, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+166, 179528, 429, 490.501, 551.961, -25.381, -0.418879, 0, 0, -0.207912, 0.978148, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+167, 179528, 429, 468.448, 258.01, 6.34532, 1.02974, 0, 0, 0.492422, 0.870357, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+168, 179528, 429, -5.54965, -393.198, -58.6137, -0.209439, 0, 0, -0.104528, 0.994522, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+169, 179528, 429, -124.622, -234.072, -55.1133, -0.314158, 0, 0, -0.156434, 0.987688, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+170, 179528, 429, 119.36, -336.64, -4.14986, -1.44862, 0, 0, -0.662619, 0.748957, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+171, 179528, 429, -75.923, -358.893, -4.14481, 2.87979, 0, 0, 0.991445, 0.130528, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+172, 179528, 429, 41.8712, -744.931, -25.1339, 0.104719, 0, 0, 0.0523356, 0.99863, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+173, 179528, 429, 36.7851, -402.629, -4.21849, -2.49582, 0, 0, -0.948324, 0.317305, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+174, 179528, 429, -14.44, -309.911, -52.1458, 0, 0, 0, 0, 1, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+175, 179528, 429, 126.758, -296.278, -4.14639, -1.95477, 0, 0, -0.829038, 0.559192, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+176, 179528, 429, -32.8264, -463.171, -58.6176, 0.488691, 0, 0, 0.241921, 0.970296, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+177, 179528, 429, 17.3334, -704.192, -12.6426, -2.19912, 0, 0, -0.891006, 0.453991, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+178, 179528, 429, 50.4484, -241.885, -53.2931, 1.8675, 0, 0, 0.803856, 0.594824, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+179, 179528, 429, 189.484, -482.115, -100.601, 1.93731, 0, 0, 0.824125, 0.566409, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+180, 179528, 429, 423.59, 262.49, 11.1475, 0, 0, 0, 0, 1, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+181, 179528, 429, 475.207, -104.252, -3.88595, -1.32645, 0, 0, -0.615661, 0.788011, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+182, 179532, 429, -27.0036, -404.283, -58.614, 0.226892, 0, 0, 0.113203, 0.993572, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+183, 179532, 429, -131.851, -319.414, -56.7906, 0.244346, 0, 0, 0.121869, 0.992546, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+184, 179532, 429, -22.3061, -349.882, -4.07224, -2.02458, 0, 0, -0.848048, 0.52992, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+185, 179532, 429, -156.299, -321.1, -4.14717, 1.25664, 0, 0, 0.587786, 0.809016, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+186, 179532, 429, 31.0736, -681.584, -25.1616, 0, 0, 0, 0, 1, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+187, 179532, 429, 36.7152, -467.008, -4.24876, 1.58825, 0, 0, 0.713251, 0.700909, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+188, 179532, 429, -10.2151, -349.267, -53.8632, 2.05949, 0, 0, 0.857168, 0.515037, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+189, 179532, 429, -51.4662, -358.168, -4.13823, 1.81514, 0, 0, 0.78801, 0.615662, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+190, 179532, 429, 21.9326, -409.795, -58.6142, 0, 0, 0, 0, 1, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+191, 179532, 429, 117.148, -408.461, -3.27357, 2.32129, 0, 0, 0.91706, 0.39875, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+192, 179532, 429, 102.549, -246.011, -56.3647, 0.785397, 0, 0, 0.382683, 0.92388, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+193, 179532, 429, 263.393, -568.436, -111.976, -2.67035, 0, 0, -0.972369, 0.233447, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+194, 179532, 429, 477.125, 307.609, 2.85288, 1.74533, 0, 0, 0.766045, 0.642787, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+195, 179532, 429, 423.649, -94.0369, -3.88739, -0.453785, 0, 0, -0.224951, 0.97437, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+196, 179532, 429, 4.90084, -450.306, -58.6294, 0, 0, 0, 0, 1, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+197, 179532, 429, 71.7209, -409.745, -4.21656, 3.12412, 0, 0, 0.999962, 0.00873622, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+198, 179532, 429, -27.7882, -388.435, -4.22943, 1.39626, 0, 0, 0.642786, 0.766046, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+199, 179532, 429, -42.6484, -341.5, -52.6547, 0.244346, 0, 0, 0.121869, 0.992546, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+200, 179532, 429, 34.9096, -365.079, -4.14052, 0.314158, 0, 0, 0.156434, 0.987688, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+201, 179532, 429, -114.736, -199.653, -4.1244, 0, 0, 0, 0, 1, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+202, 179532, 429, 101.961, -247.727, -4.01977, 2.84488, 0, 0, 0.989015, 0.147813, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+203, 179532, 429, 126.702, -248.335, -4.14639, -2.72271, 0, 0, -0.978147, 0.207914, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+204, 179532, 429, 66.2358, -633.758, -25.163, 3.05433, 0, 0, 0.999048, 0.0436174, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+205, 179532, 429, -6.16094, -433.403, -4.22212, 0, 0, 0, 0, 1, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+206, 179532, 429, 2.64945, -210.379, -52.3845, -0.95993, 0, 0, -0.461748, 0.887011, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+207, 179532, 429, -168.655, -271.912, -4.12082, -0.750491, 0, 0, -0.366501, 0.930418, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+208, 179532, 429, 55.8777, -438.434, -58.5981, -0.855211, 0, 0, -0.414693, 0.909961, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+209, 179532, 429, 59.0393, -760.028, -25.0955, -1.23918, 0, 0, -0.580701, 0.814117, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+210, 179532, 429, 71.7946, -437.261, -58.5956, 0.872664, 0, 0, 0.422618, 0.906308, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+211, 179532, 429, -28.3324, -385.063, -58.6181, 1.95477, 0, 0, 0.829038, 0.559192, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+212, 179532, 429, 47.8125, -334.275, -52.0553, -0.506145, 0, 0, -0.25038, 0.968148, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+213, 179532, 429, 353.105, -447.005, -90.0577, 0, 0, 0, 0, 1, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+214, 179532, 429, 509.725, 523.927, -25.4027, -2.80997, 0, 0, -0.986285, 0.165053, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+215, 179532, 429, 456.691, -47.364, -3.88702, -1.76278, 0, 0, -0.771624, 0.636079, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+216, 179532, 429, 34.5069, -391.211, -58.6112, -2.16421, 0, 0, -0.882948, 0.469471, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+217, 179532, 429, -12.3063, -396.872, -4.22113, -0.593412, 0, 0, -0.292372, 0.956305, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+218, 179532, 429, 127.199, -272.801, -4.14639, -1.93732, 0, 0, -0.824127, 0.566404, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+219, 179532, 429, -94.2365, -406.708, -58.6073, 0, 0, 0, 0, 1, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+220, 179532, 429, -112.021, -258.887, -56.2501, 0, 0, 0, 0, 1, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+221, 179532, 429, 134.767, -262.46, -4.14639, -0.488691, 0, 0, -0.241921, 0.970296, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+222, 179532, 429, -148.661, -210.009, -4.1514, 0.418879, 0, 0, 0.207911, 0.978148, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+223, 179532, 429, 32.7576, -775.236, -25.1416, -1.309, 0, 0, -0.608763, 0.793352, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+224, 179532, 429, -109.888, -404.549, -4.21786, -2.07694, 0, 0, -0.861629, 0.507539, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+225, 179532, 429, -61.5861, -306.311, -55.7067, 2.33874, 0, 0, 0.920505, 0.390732, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+226, 179532, 429, -7.83484, -199.983, -4.12879, -0.453785, 0, 0, -0.224951, 0.97437, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+227, 179532, 429, 64.8074, -400.448, -58.6044, -0.628317, 0, 0, -0.309016, 0.951057, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+228, 179532, 429, 44.9141, -626.477, -25.1061, -2.47837, 0, 0, -0.945519, 0.325567, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+229, 179532, 429, 66.1826, -315.416, -54.2518, 0, 0, 0, 0, 1, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+230, 179532, 429, 242.178, -420.788, -119.962, -0.069812, 0, 0, -0.0348989, 0.999391, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+231, 179532, 429, 490.501, 551.961, -25.381, -0.418879, 0, 0, -0.207912, 0.978148, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+232, 179532, 429, 468.448, 258.01, 6.34532, 1.02974, 0, 0, 0.492422, 0.870357, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+233, 179532, 429, -5.54965, -393.198, -58.6137, -0.209439, 0, 0, -0.104528, 0.994522, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+234, 179532, 429, -124.622, -234.072, -55.1133, -0.314158, 0, 0, -0.156434, 0.987688, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+235, 179532, 429, 119.36, -336.64, -4.14986, -1.44862, 0, 0, -0.66262, 0.748956, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+236, 179532, 429, -75.923, -358.893, -4.14481, 2.87979, 0, 0, 0.991445, 0.130528, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+237, 179532, 429, 41.8712, -744.931, -25.1339, 0.104719, 0, 0, 0.0523357, 0.99863, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+238, 179532, 429, 36.7851, -402.629, -4.21849, -2.49582, 0, 0, -0.948324, 0.317305, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+239, 179532, 429, -14.44, -309.911, -52.1458, 0, 0, 0, 0, 1, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+240, 179532, 429, 126.758, -296.278, -4.14639, -1.95477, 0, 0, -0.829038, 0.559192, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+241, 179532, 429, -32.8264, -463.171, -58.6176, 0.488691, 0, 0, 0.241921, 0.970296, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+242, 179532, 429, 17.3334, -704.192, -12.6426, -2.19912, 0, 0, -0.891008, 0.453988, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+243, 179532, 429, 50.4484, -241.885, -53.2931, 1.8675, 0, 0, 0.803856, 0.594824, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+244, 179532, 429, 189.484, -482.115, -100.601, 1.93731, 0, 0, 0.824125, 0.566408, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+245, 179532, 429, 423.59, 262.49, 11.1475, 0, 0, 0, 0, 1, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+246, 179532, 429, 475.207, -104.252, -3.88595, -1.32645, 0, 0, -0.615661, 0.788011, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+247, 179533, 429, -27.0036, -404.283, -58.614, 0.226892, 0, 0, 0.113203, 0.993572, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+248, 179533, 429, -131.851, -319.414, -56.7906, 0.244346, 0, 0, 0.121869, 0.992546, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+249, 179533, 429, -22.3061, -349.882, -4.07224, -2.02458, 0, 0, -0.848048, 0.52992, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+250, 179533, 429, -156.299, -321.1, -4.14717, 1.25664, 0, 0, 0.587785, 0.809017, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+251, 179533, 429, 31.0736, -681.584, -25.1616, 0, 0, 0, 0, 1, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+252, 179533, 429, 36.7152, -467.008, -4.24876, 1.58825, 0, 0, 0.71325, 0.70091, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+253, 179533, 429, -10.2151, -349.267, -53.8632, 2.05949, 0, 0, 0.857168, 0.515037, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+254, 179533, 429, -51.4662, -358.168, -4.13823, 1.81514, 0, 0, 0.78801, 0.615662, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+255, 179533, 429, 21.9326, -409.795, -58.6142, 0, 0, 0, 0, 1, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+256, 179533, 429, 117.148, -408.461, -3.27357, 2.32129, 0, 0, 0.91706, 0.398748, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+257, 179533, 429, 102.549, -246.011, -56.3647, 0.785397, 0, 0, 0.382683, 0.92388, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+258, 179533, 429, 263.393, -568.436, -111.976, -2.67035, 0, 0, -0.972369, 0.233448, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+259, 179533, 429, 477.125, 307.609, 2.85288, 1.74533, 0, 0, 0.766045, 0.642787, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+260, 179533, 429, 423.649, -94.0369, -3.88739, -0.453785, 0, 0, -0.224951, 0.97437, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+261, 179533, 429, 4.90084, -450.306, -58.6294, 0, 0, 0, 0, 1, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+262, 179533, 429, 71.7209, -409.745, -4.21656, 3.12412, 0, 0, 0.999962, 0.00873622, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+263, 179533, 429, -27.7882, -388.435, -4.22943, 1.39626, 0, 0, 0.642786, 0.766046, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+264, 179533, 429, -42.6484, -341.5, -52.6547, 0.244346, 0, 0, 0.121869, 0.992546, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+265, 179533, 429, 34.9096, -365.079, -4.14052, 0.314158, 0, 0, 0.156434, 0.987688, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+266, 179533, 429, -114.736, -199.653, -4.1244, 0, 0, 0, 0, 1, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+267, 179533, 429, 101.961, -247.727, -4.01977, 2.84488, 0, 0, 0.989015, 0.147813, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+268, 179533, 429, 126.702, -248.335, -4.14639, -2.72271, 0, 0, -0.978147, 0.207914, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+269, 179533, 429, 66.2358, -633.758, -25.163, 3.05433, 0, 0, 0.999048, 0.0436174, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+270, 179533, 429, -6.16094, -433.403, -4.22212, 0, 0, 0, 0, 1, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+271, 179533, 429, 2.64945, -210.379, -52.3845, -0.95993, 0, 0, -0.461748, 0.887011, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+272, 179533, 429, -168.655, -271.912, -4.12082, -0.750491, 0, 0, -0.366501, 0.930418, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+273, 179533, 429, 55.8777, -438.434, -58.5981, -0.855211, 0, 0, -0.414693, 0.909961, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+274, 179533, 429, 59.0393, -760.028, -25.0955, -1.23918, 0, 0, -0.580701, 0.814117, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+275, 179533, 429, 71.7946, -437.261, -58.5956, 0.872664, 0, 0, 0.422618, 0.906308, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+276, 179533, 429, -28.3324, -385.063, -58.6181, 1.95477, 0, 0, 0.829038, 0.559192, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+277, 179533, 429, 47.8125, -334.275, -52.0553, -0.506145, 0, 0, -0.25038, 0.968148, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+278, 179533, 429, 353.105, -447.005, -90.0577, 0, 0, 0, 0, 1, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+279, 179533, 429, 509.725, 523.927, -25.4027, -2.80997, 0, 0, -0.986285, 0.165053, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+280, 179533, 429, 456.691, -47.364, -3.88702, -1.76278, 0, 0, -0.771624, 0.636079, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+281, 179533, 429, 34.5069, -391.211, -58.6112, -2.16421, 0, 0, -0.882948, 0.469471, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+282, 179533, 429, -12.3063, -396.872, -4.22113, -0.593412, 0, 0, -0.292372, 0.956305, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+283, 179533, 429, 127.199, -272.801, -4.14639, -1.93732, 0, 0, -0.824127, 0.566404, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+284, 179533, 429, -94.2365, -406.708, -58.6073, 0, 0, 0, 0, 1, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+285, 179533, 429, -112.021, -258.887, -56.2501, 0, 0, 0, 0, 1, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+286, 179533, 429, 134.767, -262.46, -4.14639, -0.488691, 0, 0, -0.241921, 0.970296, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+287, 179533, 429, -148.661, -210.009, -4.1514, 0.418879, 0, 0, 0.207912, 0.978148, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+288, 179533, 429, 32.7576, -775.236, -25.1416, -1.309, 0, 0, -0.608761, 0.793354, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+289, 179533, 429, -109.888, -404.549, -4.21786, -2.07694, 0, 0, -0.861629, 0.507539, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+290, 179533, 429, -61.5861, -306.311, -55.7067, 2.33874, 0, 0, 0.920505, 0.390732, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+291, 179533, 429, -7.83484, -199.983, -4.12879, -0.453785, 0, 0, -0.224951, 0.97437, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+292, 179533, 429, 64.8074, -400.448, -58.6044, -0.628317, 0, 0, -0.309016, 0.951057, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+293, 179533, 429, 44.9141, -626.477, -25.1061, -2.47837, 0, 0, -0.945518, 0.325568, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+294, 179533, 429, 66.1826, -315.416, -54.2518, 0, 0, 0, 0, 1, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+295, 179533, 429, 242.178, -420.788, -119.962, -0.069812, 0, 0, -0.0348989, 0.999391, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+296, 179533, 429, 490.501, 551.961, -25.381, -0.418879, 0, 0, -0.207912, 0.978148, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+297, 179533, 429, 468.448, 258.01, 6.34532, 1.02974, 0, 0, 0.492422, 0.870357, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+298, 179533, 429, -5.54965, -393.198, -58.6137, -0.209439, 0, 0, -0.104528, 0.994522, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+299, 179533, 429, -124.622, -234.072, -55.1133, -0.314158, 0, 0, -0.156434, 0.987688, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+300, 179533, 429, 119.36, -336.64, -4.14986, -1.44862, 0, 0, -0.662619, 0.748957, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+301, 179533, 429, -75.923, -358.893, -4.14481, 2.87979, 0, 0, 0.991445, 0.130528, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+302, 179533, 429, 41.8712, -744.931, -25.1339, 0.104719, 0, 0, 0.0523356, 0.99863, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+303, 179533, 429, 36.7851, -402.629, -4.21849, -2.49582, 0, 0, -0.948324, 0.317305, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+304, 179533, 429, -14.44, -309.911, -52.1458, 0, 0, 0, 0, 1, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+305, 179533, 429, 126.758, -296.278, -4.14639, -1.95477, 0, 0, -0.829038, 0.559192, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+306, 179533, 429, -32.8264, -463.171, -58.6176, 0.488691, 0, 0, 0.241921, 0.970296, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+307, 179533, 429, 17.3334, -704.192, -12.6426, -2.19912, 0, 0, -0.891008, 0.453988, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+308, 179533, 429, 50.4484, -241.885, -53.2931, 1.8675, 0, 0, 0.803857, 0.594823, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+309, 179533, 429, 189.484, -482.115, -100.601, 1.93731, 0, 0, 0.824125, 0.566409, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+310, 179533, 429, 423.59, 262.49, 11.1475, 0, 0, 0, 0, 1, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+311, 179533, 429, 475.207, -104.252, -3.88595, -1.32645, 0, 0, -0.615661, 0.788011, 600, 600, 255, 1), -- Warpwood Pod
(@OGUID+314, 179548, 429, 836.333, 493.379, 37.3182, 0.296705, 0, 0, 0.147809, 0.989016, 7200, 7200, 0, 1), -- A Dusty Tome
(@OGUID+315, 179548, 429, 512.784, 588.036, -25.4023, 3.28124, 0, 0, -0.997563, 0.0697661, 7200, 7200, 0, 1), -- A Dusty Tome
(@OGUID+316, 179548, 429, 288.206, 341.155, 2.85296, 5.49779, 0, 0, -0.382683, 0.92388, 7200, 7200, 0, 1), -- A Dusty Tome
(@OGUID+317, 179548, 429, -144.464, 742.017, -24.5804, 3.85718, 0, 0, -0.936671, 0.35021, 7200, 7200, 0, 1), -- A Dusty Tome
(@OGUID+318, 179548, 429, -86.3983, 569.308, 28.6079, 1.78023, 0, 0, 0.777145, 0.629321, 7200, 7200, 0, 1), -- A Dusty Tome
(@OGUID+319, 179548, 429, 285.164, -431.063, -119.962, 4.69494, 0, 0, -0.71325, 0.70091, 7200, 7200, 0, 1), -- A Dusty Tome
(@OGUID+320, 179548, 429, -10.1152, -353.771, -54.0434, 3.78737, 0, 0, -0.948323, 0.317306, 7200, 7200, 0, 1), -- A Dusty Tome
(@OGUID+321, 179548, 429, 118.018, -261.472, -4.14639, 0.087266, 0, 0, 0.0436192, 0.999048, 7200, 7200, 0, 1), -- A Dusty Tome
(@OGUID+322, 179548, 429, 4.49781, -437.567, 16.4125, 4.13643, 0, 0, -0.878817, 0.47716, 7200, 7200, 0, 1), -- A Dusty Tome
(@OGUID+371, 153464, 429, 43.20124, -383.1431, -58.6196, -1.727875, 0, 0, -0.7604055, 0.6494485, 86400, 86400, 255, 1), -- Large Solid Chest
(@OGUID+372, 153469, 429, 43.20124, -383.1431, -58.6196, -1.727875, 0, 0, -0.7604055, 0.6494485, 86400, 86400, 255, 1), -- Large Mithril Bound Chest
(@OGUID+373, 153464, 429, -16.1474, -383.786, -58.62, -1.32645, 0, 0, -0.615661, 0.788011, 86400, 86400, 255, 1), -- Large Solid Chest
(@OGUID+374, 153469, 429, -16.1474, -383.786, -58.62, -1.32645, 0, 0, -0.615661, 0.788011, 86400, 86400, 255, 1), -- Large Mithril Bound Chest
(@OGUID+375, 153464, 429, 122.5737, 366.941, -3.483817, 2.897245, 0, 0, 0.9925461, 0.12187, 86400, 86400, 255, 1), -- Large Solid Chest
(@OGUID+376, 153469, 429, 122.5737, 366.941, -3.483817, 2.897245, 0, 0, 0.9925461, 0.12187, 86400, 86400, 255, 1), -- Large Mithril Bound Chest
(@OGUID+377, 153464, 429, -95.0448, 367.08, -3.48702, -1.32645, 0, 0, -0.615661, 0.788011, 86400, 86400, 255, 1), -- Large Solid Chest
(@OGUID+378, 153469, 429, -95.0448, 367.08, -3.48702, -1.32645, 0, 0, -0.615661, 0.788011, 86400, 86400, 255, 1), -- Large Mithril Bound Chest
(@OGUID+379, 153464, 429, 582.9288, 608.0823, -25.40273, -2.565632, 0, 0, -0.9588194, 0.2840165, 86400, 86400, 255, 1), -- Large Solid Chest
(@OGUID+380, 153469, 429, 582.9288, 608.0823, -25.40273, -2.565632, 0, 0, -0.9588194, 0.2840165, 86400, 86400, 255, 1), -- Large Mithril Bound Chest
(@OGUID+381, 153464, 429, 335.605, 366.155, 2.85293, -2.61799, 0, 0, -0.965925, 0.258821, 86400, 86400, 255, 1), -- Large Solid Chest
(@OGUID+382, 153469, 429, 335.605, 366.155, 2.85293, -2.61799, 0, 0, -0.965925, 0.258821, 86400, 86400, 255, 1), -- Large Mithril Bound Chest
(@OGUID+383, 153464, 429, 122.562, 392.1, 28.601, 3.07177, 0, 0, 0.999391, 0.0349043, 86400, 86400, 255, 1), -- Large Solid Chest
(@OGUID+384, 153469, 429, 122.562, 392.1, 28.601, 3.07177, 0, 0, 0.999391, 0.0349043, 86400, 86400, 255, 1); -- Large Mithril Bound Chest

INSERT INTO pool_pool (pool_id, mother_pool, chance, description) VALUES
(@PGUID+17, @PGUID+84, 0, 'Dire Maul pod, 1603'),
(@PGUID+18, @PGUID+84, 0, 'Dire Maul pod, 1604'),
(@PGUID+19, @PGUID+84, 0, 'Dire Maul pod, 1605'),
(@PGUID+20, @PGUID+84, 0, 'Dire Maul pod, 1606'),
(@PGUID+21, @PGUID+84, 0, 'Dire Maul pod, 1607'),
(@PGUID+22, @PGUID+84, 0, 'Dire Maul pod, 1608'),
(@PGUID+23, @PGUID+84, 0, 'Dire Maul pod, 1609'),
(@PGUID+24, @PGUID+84, 0, 'Dire Maul pod, 1610'),
(@PGUID+25, @PGUID+84, 0, 'Dire Maul pod, 1611'),
(@PGUID+26, @PGUID+84, 0, 'Dire Maul pod, 1612'),
(@PGUID+27, @PGUID+84, 0, 'Dire Maul pod, 1613'),
(@PGUID+28, @PGUID+84, 0, 'Dire Maul pod, 1614'),
(@PGUID+29, @PGUID+84, 0, 'Dire Maul pod, 1615'),
(@PGUID+30, @PGUID+84, 0, 'Dire Maul pod, 1616'),
(@PGUID+31, @PGUID+84, 0, 'Dire Maul pod, 1617'),
(@PGUID+32, @PGUID+84, 0, 'Dire Maul pod, 1618'),
(@PGUID+33, @PGUID+84, 0, 'Dire Maul pod, 1619'),
(@PGUID+34, @PGUID+84, 0, 'Dire Maul pod, 1620'),
(@PGUID+35, @PGUID+84, 0, 'Dire Maul pod, 1621'),
(@PGUID+36, @PGUID+84, 0, 'Dire Maul pod, 1622'),
(@PGUID+37, @PGUID+84, 0, 'Dire Maul pod, 1623'),
(@PGUID+38, @PGUID+84, 0, 'Dire Maul pod, 1624'),
(@PGUID+39, @PGUID+84, 0, 'Dire Maul pod, 1625'),
(@PGUID+40, @PGUID+84, 0, 'Dire Maul pod, 1626'),
(@PGUID+41, @PGUID+84, 0, 'Dire Maul pod, 1627'),
(@PGUID+42, @PGUID+84, 0, 'Dire Maul pod, 1628'),
(@PGUID+43, @PGUID+84, 0, 'Dire Maul pod, 1629'),
(@PGUID+44, @PGUID+84, 0, 'Dire Maul pod, 1630'),
(@PGUID+45, @PGUID+84, 0, 'Dire Maul pod, 1631'),
(@PGUID+46, @PGUID+84, 0, 'Dire Maul pod, 1632'),
(@PGUID+47, @PGUID+84, 0, 'Dire Maul pod, 1633'),
(@PGUID+48, @PGUID+84, 0, 'Dire Maul pod, 1634'),
(@PGUID+49, @PGUID+84, 0, 'Dire Maul pod, 1635'),
(@PGUID+50, @PGUID+84, 0, 'Dire Maul pod, 1636'),
(@PGUID+51, @PGUID+84, 0, 'Dire Maul pod, 1637'),
(@PGUID+52, @PGUID+84, 0, 'Dire Maul pod, 1638'),
(@PGUID+53, @PGUID+84, 0, 'Dire Maul pod, 1639'),
(@PGUID+54, @PGUID+84, 0, 'Dire Maul pod, 1640'),
(@PGUID+55, @PGUID+84, 0, 'Dire Maul pod, 1641'),
(@PGUID+56, @PGUID+84, 0, 'Dire Maul pod, 1642'),
(@PGUID+57, @PGUID+84, 0, 'Dire Maul pod, 1643'),
(@PGUID+58, @PGUID+84, 0, 'Dire Maul pod, 1644'),
(@PGUID+59, @PGUID+84, 0, 'Dire Maul pod, 1645'),
(@PGUID+60, @PGUID+84, 0, 'Dire Maul pod, 1646'),
(@PGUID+61, @PGUID+84, 0, 'Dire Maul pod, 1647'),
(@PGUID+62, @PGUID+84, 0, 'Dire Maul pod, 1648'),
(@PGUID+63, @PGUID+84, 0, 'Dire Maul pod, 1649'),
(@PGUID+64, @PGUID+84, 0, 'Dire Maul pod, 1650'),
(@PGUID+65, @PGUID+84, 0, 'Dire Maul pod, 1651'),
(@PGUID+66, @PGUID+84, 0, 'Dire Maul pod, 1652'),
(@PGUID+67, @PGUID+84, 0, 'Dire Maul pod, 1653'),
(@PGUID+68, @PGUID+84, 0, 'Dire Maul pod, 1654'),
(@PGUID+69, @PGUID+84, 0, 'Dire Maul pod, 1655'),
(@PGUID+70, @PGUID+84, 0, 'Dire Maul pod, 1656'),
(@PGUID+71, @PGUID+84, 0, 'Dire Maul pod, 1657'),
(@PGUID+72, @PGUID+84, 0, 'Dire Maul pod, 1658'),
(@PGUID+73, @PGUID+84, 0, 'Dire Maul pod, 1659'),
(@PGUID+74, @PGUID+84, 0, 'Dire Maul pod, 1660'),
(@PGUID+75, @PGUID+84, 0, 'Dire Maul pod, 1661'),
(@PGUID+76, @PGUID+84, 0, 'Dire Maul pod, 1662'),
(@PGUID+77, @PGUID+84, 0, 'Dire Maul pod, 1663'),
(@PGUID+78, @PGUID+84, 0, 'Dire Maul pod, 1664'),
(@PGUID+79, @PGUID+84, 0, 'Dire Maul pod, 1665'),
(@PGUID+80, @PGUID+84, 0, 'Dire Maul pod, 1666'),
(@PGUID+81, @PGUID+84, 0, 'Dire Maul pod, 1667'),
(@PGUID+92, @PGUID+91, 0, 'DM East - Large Solid Chest / Large Mithril Bound Chest - #1'),
(@PGUID+93, @PGUID+91, 0, 'DM East - Large Solid Chest / Large Mithril Bound Chest - #2'),
(@PGUID+95, @PGUID+94, 0, 'DM West - Large Solid Chest / Large Mithril Bound Chest - #1'),
(@PGUID+96, @PGUID+94, 0, 'DM West - Large Solid Chest / Large Mithril Bound Chest - #2'),
(@PGUID+90, @PGUID+94, 0, 'DM West - Large Solid Chest / Large Mithril Bound Chest - #3'),
(@PGUID+98, @PGUID+97, 0, 'DM North - Large Solid Chest / Large Mithril Bound Chest - #1'),
(@PGUID+99, @PGUID+97, 0, 'DM North - Large Solid Chest / Large Mithril Bound Chest - #2');

DELETE FROM pool_template WHERE entry IN (25505, @PGUID+82);
INSERT INTO pool_template (entry, max_limit, description) VALUES
(@PGUID+17, 1, 'Dire Maul pod, 1603'),
(@PGUID+18, 1, 'Dire Maul pod, 1604'),
(@PGUID+19, 1, 'Dire Maul pod, 1605'),
(@PGUID+20, 1, 'Dire Maul pod, 1606'),
(@PGUID+21, 1, 'Dire Maul pod, 1607'),
(@PGUID+22, 1, 'Dire Maul pod, 1608'),
(@PGUID+23, 1, 'Dire Maul pod, 1609'),
(@PGUID+24, 1, 'Dire Maul pod, 1610'),
(@PGUID+25, 1, 'Dire Maul pod, 1611'),
(@PGUID+26, 1, 'Dire Maul pod, 1612'),
(@PGUID+27, 1, 'Dire Maul pod, 1613'),
(@PGUID+28, 1, 'Dire Maul pod, 1614'),
(@PGUID+29, 1, 'Dire Maul pod, 1615'),
(@PGUID+30, 1, 'Dire Maul pod, 1616'),
(@PGUID+31, 1, 'Dire Maul pod, 1617'),
(@PGUID+32, 1, 'Dire Maul pod, 1618'),
(@PGUID+33, 1, 'Dire Maul pod, 1619'),
(@PGUID+34, 1, 'Dire Maul pod, 1620'),
(@PGUID+35, 1, 'Dire Maul pod, 1621'),
(@PGUID+36, 1, 'Dire Maul pod, 1622'),
(@PGUID+37, 1, 'Dire Maul pod, 1623'),
(@PGUID+38, 1, 'Dire Maul pod, 1624'),
(@PGUID+39, 1, 'Dire Maul pod, 1625'),
(@PGUID+40, 1, 'Dire Maul pod, 1626'),
(@PGUID+41, 1, 'Dire Maul pod, 1627'),
(@PGUID+42, 1, 'Dire Maul pod, 1628'),
(@PGUID+43, 1, 'Dire Maul pod, 1629'),
(@PGUID+44, 1, 'Dire Maul pod, 1630'),
(@PGUID+45, 1, 'Dire Maul pod, 1631'),
(@PGUID+46, 1, 'Dire Maul pod, 1632'),
(@PGUID+47, 1, 'Dire Maul pod, 1633'),
(@PGUID+48, 1, 'Dire Maul pod, 1634'),
(@PGUID+49, 1, 'Dire Maul pod, 1635'),
(@PGUID+50, 1, 'Dire Maul pod, 1636'),
(@PGUID+51, 1, 'Dire Maul pod, 1637'),
(@PGUID+52, 1, 'Dire Maul pod, 1638'),
(@PGUID+53, 1, 'Dire Maul pod, 1639'),
(@PGUID+54, 1, 'Dire Maul pod, 1640'),
(@PGUID+55, 1, 'Dire Maul pod, 1641'),
(@PGUID+56, 1, 'Dire Maul pod, 1642'),
(@PGUID+57, 1, 'Dire Maul pod, 1643'),
(@PGUID+58, 1, 'Dire Maul pod, 1644'),
(@PGUID+59, 1, 'Dire Maul pod, 1645'),
(@PGUID+60, 1, 'Dire Maul pod, 1646'),
(@PGUID+61, 1, 'Dire Maul pod, 1647'),
(@PGUID+62, 1, 'Dire Maul pod, 1648'),
(@PGUID+63, 1, 'Dire Maul pod, 1649'),
(@PGUID+64, 1, 'Dire Maul pod, 1650'),
(@PGUID+65, 1, 'Dire Maul pod, 1651'),
(@PGUID+66, 1, 'Dire Maul pod, 1652'),
(@PGUID+67, 1, 'Dire Maul pod, 1653'),
(@PGUID+68, 1, 'Dire Maul pod, 1654'),
(@PGUID+69, 1, 'Dire Maul pod, 1655'),
(@PGUID+70, 1, 'Dire Maul pod, 1656'),
(@PGUID+71, 1, 'Dire Maul pod, 1657'),
(@PGUID+72, 1, 'Dire Maul pod, 1658'),
(@PGUID+73, 1, 'Dire Maul pod, 1659'),
(@PGUID+74, 1, 'Dire Maul pod, 1660'),
(@PGUID+75, 1, 'Dire Maul pod, 1661'),
(@PGUID+76, 1, 'Dire Maul pod, 1662'),
(@PGUID+77, 1, 'Dire Maul pod, 1663'),
(@PGUID+78, 1, 'Dire Maul pod, 1664'),
(@PGUID+79, 1, 'Dire Maul pod, 1665'),
(@PGUID+80, 1, 'Dire Maul pod, 1666'),
(@PGUID+81, 1, 'Dire Maul pod, 1667'),
(@PGUID+82, 1, 'DM - Dusty Tome'),
(@PGUID+84, 20, 'Dire Maul pods MASTER'),
-- 86 - 90
(@PGUID+90, 1, 'DM West - Large Solid Chest (153464) / Large Mithril Bound Chest (153469) - #3'),
(@PGUID+91, 1, 'DM East - Master Chest Pool'),
(@PGUID+92, 1, 'DM East - Large Solid Chest (153464) / Large Mithril Bound Chest (153469) - #1'),
(@PGUID+93, 1, 'DM East - Large Solid Chest (153464) / Large Mithril Bound Chest (153469) - #2'),
(@PGUID+94, 1, 'DM West - Master Chest Pool'),
(@PGUID+95, 1, 'DM West - Large Solid Chest (153464) / Large Mithril Bound Chest (153469) - #1'),
(@PGUID+96, 1, 'DM West - Large Solid Chest (153464) / Large Mithril Bound Chest (153469) - #2'),
(@PGUID+97, 1, 'DM North - Master Chest Pool'),
(@PGUID+98, 1, 'DM North - Large Solid Chest (153464) / Large Mithril Bound Chest (153469) - #1'),
(@PGUID+99, 1, 'DM North - Large Solid Chest (153464) / Large Mithril Bound Chest (153469) - #2');

INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES
(@OGUID+52, @PGUID+17, 0, 'Dire Maul pod, node 1603'),
(@OGUID+117, @PGUID+17, 0, 'Dire Maul pod, node 1603'),
(@OGUID+182, @PGUID+17, 0, 'Dire Maul pod, node 1603'),
(@OGUID+247, @PGUID+17, 0, 'Dire Maul pod, node 1603'),
(@OGUID+53, @PGUID+18, 0, 'Dire Maul pod, node 1604'),
(@OGUID+118, @PGUID+18, 0, 'Dire Maul pod, node 1604'),
(@OGUID+183, @PGUID+18, 0, 'Dire Maul pod, node 1604'),
(@OGUID+248, @PGUID+18, 0, 'Dire Maul pod, node 1604'),
(@OGUID+54, @PGUID+19, 0, 'Dire Maul pod, node 1605'),
(@OGUID+119, @PGUID+19, 0, 'Dire Maul pod, node 1605'),
(@OGUID+184, @PGUID+19, 0, 'Dire Maul pod, node 1605'),
(@OGUID+249, @PGUID+19, 0, 'Dire Maul pod, node 1605'),
(@OGUID+55, @PGUID+20, 0, 'Dire Maul pod, node 1606'),
(@OGUID+120, @PGUID+20, 0, 'Dire Maul pod, node 1606'),
(@OGUID+185, @PGUID+20, 0, 'Dire Maul pod, node 1606'),
(@OGUID+250, @PGUID+20, 0, 'Dire Maul pod, node 1606'),
(@OGUID+56, @PGUID+21, 0, 'Dire Maul pod, node 1607'),
(@OGUID+121, @PGUID+21, 0, 'Dire Maul pod, node 1607'),
(@OGUID+186, @PGUID+21, 0, 'Dire Maul pod, node 1607'),
(@OGUID+251, @PGUID+21, 0, 'Dire Maul pod, node 1607'),
(@OGUID+57, @PGUID+22, 0, 'Dire Maul pod, node 1608'),
(@OGUID+122, @PGUID+22, 0, 'Dire Maul pod, node 1608'),
(@OGUID+187, @PGUID+22, 0, 'Dire Maul pod, node 1608'),
(@OGUID+252, @PGUID+22, 0, 'Dire Maul pod, node 1608'),
(@OGUID+58, @PGUID+23, 0, 'Dire Maul pod, node 1609'),
(@OGUID+123, @PGUID+23, 0, 'Dire Maul pod, node 1609'),
(@OGUID+188, @PGUID+23, 0, 'Dire Maul pod, node 1609'),
(@OGUID+253, @PGUID+23, 0, 'Dire Maul pod, node 1609'),
(@OGUID+59, @PGUID+24, 0, 'Dire Maul pod, node 1610'),
(@OGUID+124, @PGUID+24, 0, 'Dire Maul pod, node 1610'),
(@OGUID+189, @PGUID+24, 0, 'Dire Maul pod, node 1610'),
(@OGUID+254, @PGUID+24, 0, 'Dire Maul pod, node 1610'),
(@OGUID+60, @PGUID+25, 0, 'Dire Maul pod, node 1611'),
(@OGUID+125, @PGUID+25, 0, 'Dire Maul pod, node 1611'),
(@OGUID+190, @PGUID+25, 0, 'Dire Maul pod, node 1611'),
(@OGUID+255, @PGUID+25, 0, 'Dire Maul pod, node 1611'),
(@OGUID+61, @PGUID+26, 0, 'Dire Maul pod, node 1612'),
(@OGUID+126, @PGUID+26, 0, 'Dire Maul pod, node 1612'),
(@OGUID+191, @PGUID+26, 0, 'Dire Maul pod, node 1612'),
(@OGUID+256, @PGUID+26, 0, 'Dire Maul pod, node 1612'),
(@OGUID+62, @PGUID+27, 0, 'Dire Maul pod, node 1613'),
(@OGUID+127, @PGUID+27, 0, 'Dire Maul pod, node 1613'),
(@OGUID+192, @PGUID+27, 0, 'Dire Maul pod, node 1613'),
(@OGUID+257, @PGUID+27, 0, 'Dire Maul pod, node 1613'),
(@OGUID+63, @PGUID+28, 0, 'Dire Maul pod, node 1614'),
(@OGUID+128, @PGUID+28, 0, 'Dire Maul pod, node 1614'),
(@OGUID+193, @PGUID+28, 0, 'Dire Maul pod, node 1614'),
(@OGUID+258, @PGUID+28, 0, 'Dire Maul pod, node 1614'),
(@OGUID+64, @PGUID+29, 0, 'Dire Maul pod, node 1615'),
(@OGUID+129, @PGUID+29, 0, 'Dire Maul pod, node 1615'),
(@OGUID+194, @PGUID+29, 0, 'Dire Maul pod, node 1615'),
(@OGUID+259, @PGUID+29, 0, 'Dire Maul pod, node 1615'),
(@OGUID+65, @PGUID+30, 0, 'Dire Maul pod, node 1616'),
(@OGUID+130, @PGUID+30, 0, 'Dire Maul pod, node 1616'),
(@OGUID+195, @PGUID+30, 0, 'Dire Maul pod, node 1616'),
(@OGUID+260, @PGUID+30, 0, 'Dire Maul pod, node 1616'),
(@OGUID+66, @PGUID+31, 0, 'Dire Maul pod, node 1617'),
(@OGUID+131, @PGUID+31, 0, 'Dire Maul pod, node 1617'),
(@OGUID+196, @PGUID+31, 0, 'Dire Maul pod, node 1617'),
(@OGUID+261, @PGUID+31, 0, 'Dire Maul pod, node 1617'),
(@OGUID+67, @PGUID+32, 0, 'Dire Maul pod, node 1618'),
(@OGUID+132, @PGUID+32, 0, 'Dire Maul pod, node 1618'),
(@OGUID+197, @PGUID+32, 0, 'Dire Maul pod, node 1618'),
(@OGUID+262, @PGUID+32, 0, 'Dire Maul pod, node 1618'),
(@OGUID+68, @PGUID+33, 0, 'Dire Maul pod, node 1619'),
(@OGUID+133, @PGUID+33, 0, 'Dire Maul pod, node 1619'),
(@OGUID+198, @PGUID+33, 0, 'Dire Maul pod, node 1619'),
(@OGUID+263, @PGUID+33, 0, 'Dire Maul pod, node 1619'),
(@OGUID+69, @PGUID+34, 0, 'Dire Maul pod, node 1620'),
(@OGUID+134, @PGUID+34, 0, 'Dire Maul pod, node 1620'),
(@OGUID+199, @PGUID+34, 0, 'Dire Maul pod, node 1620'),
(@OGUID+264, @PGUID+34, 0, 'Dire Maul pod, node 1620'),
(@OGUID+70, @PGUID+35, 0, 'Dire Maul pod, node 1621'),
(@OGUID+135, @PGUID+35, 0, 'Dire Maul pod, node 1621'),
(@OGUID+200, @PGUID+35, 0, 'Dire Maul pod, node 1621'),
(@OGUID+265, @PGUID+35, 0, 'Dire Maul pod, node 1621'),
(@OGUID+71, @PGUID+36, 0, 'Dire Maul pod, node 1622'),
(@OGUID+136, @PGUID+36, 0, 'Dire Maul pod, node 1622'),
(@OGUID+201, @PGUID+36, 0, 'Dire Maul pod, node 1622'),
(@OGUID+266, @PGUID+36, 0, 'Dire Maul pod, node 1622'),
(@OGUID+72, @PGUID+37, 0, 'Dire Maul pod, node 1623'),
(@OGUID+137, @PGUID+37, 0, 'Dire Maul pod, node 1623'),
(@OGUID+202, @PGUID+37, 0, 'Dire Maul pod, node 1623'),
(@OGUID+267, @PGUID+37, 0, 'Dire Maul pod, node 1623'),
(@OGUID+73, @PGUID+38, 0, 'Dire Maul pod, node 1624'),
(@OGUID+138, @PGUID+38, 0, 'Dire Maul pod, node 1624'),
(@OGUID+203, @PGUID+38, 0, 'Dire Maul pod, node 1624'),
(@OGUID+268, @PGUID+38, 0, 'Dire Maul pod, node 1624'),
(@OGUID+74, @PGUID+39, 0, 'Dire Maul pod, node 1625'),
(@OGUID+139, @PGUID+39, 0, 'Dire Maul pod, node 1625'),
(@OGUID+204, @PGUID+39, 0, 'Dire Maul pod, node 1625'),
(@OGUID+269, @PGUID+39, 0, 'Dire Maul pod, node 1625'),
(@OGUID+75, @PGUID+40, 0, 'Dire Maul pod, node 1626'),
(@OGUID+140, @PGUID+40, 0, 'Dire Maul pod, node 1626'),
(@OGUID+205, @PGUID+40, 0, 'Dire Maul pod, node 1626'),
(@OGUID+270, @PGUID+40, 0, 'Dire Maul pod, node 1626'),
(@OGUID+76, @PGUID+41, 0, 'Dire Maul pod, node 1627'),
(@OGUID+141, @PGUID+41, 0, 'Dire Maul pod, node 1627'),
(@OGUID+206, @PGUID+41, 0, 'Dire Maul pod, node 1627'),
(@OGUID+271, @PGUID+41, 0, 'Dire Maul pod, node 1627'),
(@OGUID+77, @PGUID+42, 0, 'Dire Maul pod, node 1628'),
(@OGUID+142, @PGUID+42, 0, 'Dire Maul pod, node 1628'),
(@OGUID+207, @PGUID+42, 0, 'Dire Maul pod, node 1628'),
(@OGUID+272, @PGUID+42, 0, 'Dire Maul pod, node 1628'),
(@OGUID+78, @PGUID+43, 0, 'Dire Maul pod, node 1629'),
(@OGUID+143, @PGUID+43, 0, 'Dire Maul pod, node 1629'),
(@OGUID+208, @PGUID+43, 0, 'Dire Maul pod, node 1629'),
(@OGUID+273, @PGUID+43, 0, 'Dire Maul pod, node 1629'),
(@OGUID+79, @PGUID+44, 0, 'Dire Maul pod, node 1630'),
(@OGUID+144, @PGUID+44, 0, 'Dire Maul pod, node 1630'),
(@OGUID+209, @PGUID+44, 0, 'Dire Maul pod, node 1630'),
(@OGUID+274, @PGUID+44, 0, 'Dire Maul pod, node 1630'),
(@OGUID+80, @PGUID+45, 0, 'Dire Maul pod, node 1631'),
(@OGUID+145, @PGUID+45, 0, 'Dire Maul pod, node 1631'),
(@OGUID+210, @PGUID+45, 0, 'Dire Maul pod, node 1631'),
(@OGUID+275, @PGUID+45, 0, 'Dire Maul pod, node 1631'),
(@OGUID+81, @PGUID+46, 0, 'Dire Maul pod, node 1632'),
(@OGUID+146, @PGUID+46, 0, 'Dire Maul pod, node 1632'),
(@OGUID+211, @PGUID+46, 0, 'Dire Maul pod, node 1632'),
(@OGUID+276, @PGUID+46, 0, 'Dire Maul pod, node 1632'),
(@OGUID+82, @PGUID+47, 0, 'Dire Maul pod, node 1633'),
(@OGUID+147, @PGUID+47, 0, 'Dire Maul pod, node 1633'),
(@OGUID+212, @PGUID+47, 0, 'Dire Maul pod, node 1633'),
(@OGUID+277, @PGUID+47, 0, 'Dire Maul pod, node 1633'),
(@OGUID+83, @PGUID+48, 0, 'Dire Maul pod, node 1634'),
(@OGUID+148, @PGUID+48, 0, 'Dire Maul pod, node 1634'),
(@OGUID+213, @PGUID+48, 0, 'Dire Maul pod, node 1634'),
(@OGUID+278, @PGUID+48, 0, 'Dire Maul pod, node 1634'),
(@OGUID+84, @PGUID+49, 0, 'Dire Maul pod, node 1635'),
(@OGUID+149, @PGUID+49, 0, 'Dire Maul pod, node 1635'),
(@OGUID+214, @PGUID+49, 0, 'Dire Maul pod, node 1635'),
(@OGUID+279, @PGUID+49, 0, 'Dire Maul pod, node 1635'),
(@OGUID+85, @PGUID+50, 0, 'Dire Maul pod, node 1636'),
(@OGUID+150, @PGUID+50, 0, 'Dire Maul pod, node 1636'),
(@OGUID+215, @PGUID+50, 0, 'Dire Maul pod, node 1636'),
(@OGUID+280, @PGUID+50, 0, 'Dire Maul pod, node 1636'),
(@OGUID+86, @PGUID+51, 0, 'Dire Maul pod, node 1637'),
(@OGUID+151, @PGUID+51, 0, 'Dire Maul pod, node 1637'),
(@OGUID+216, @PGUID+51, 0, 'Dire Maul pod, node 1637'),
(@OGUID+281, @PGUID+51, 0, 'Dire Maul pod, node 1637'),
(@OGUID+87, @PGUID+52, 0, 'Dire Maul pod, node 1638'),
(@OGUID+152, @PGUID+52, 0, 'Dire Maul pod, node 1638'),
(@OGUID+217, @PGUID+52, 0, 'Dire Maul pod, node 1638'),
(@OGUID+282, @PGUID+52, 0, 'Dire Maul pod, node 1638'),
(@OGUID+88, @PGUID+53, 0, 'Dire Maul pod, node 1639'),
(@OGUID+153, @PGUID+53, 0, 'Dire Maul pod, node 1639'),
(@OGUID+218, @PGUID+53, 0, 'Dire Maul pod, node 1639'),
(@OGUID+283, @PGUID+53, 0, 'Dire Maul pod, node 1639'),
(@OGUID+89, @PGUID+54, 0, 'Dire Maul pod, node 1640'),
(@OGUID+154, @PGUID+54, 0, 'Dire Maul pod, node 1640'),
(@OGUID+219, @PGUID+54, 0, 'Dire Maul pod, node 1640'),
(@OGUID+284, @PGUID+54, 0, 'Dire Maul pod, node 1640'),
(@OGUID+90, @PGUID+55, 0, 'Dire Maul pod, node 1641'),
(@OGUID+155, @PGUID+55, 0, 'Dire Maul pod, node 1641'),
(@OGUID+220, @PGUID+55, 0, 'Dire Maul pod, node 1641'),
(@OGUID+285, @PGUID+55, 0, 'Dire Maul pod, node 1641'),
(@OGUID+91, @PGUID+56, 0, 'Dire Maul pod, node 1642'),
(@OGUID+156, @PGUID+56, 0, 'Dire Maul pod, node 1642'),
(@OGUID+221, @PGUID+56, 0, 'Dire Maul pod, node 1642'),
(@OGUID+286, @PGUID+56, 0, 'Dire Maul pod, node 1642'),
(@OGUID+92, @PGUID+57, 0, 'Dire Maul pod, node 1643'),
(@OGUID+157, @PGUID+57, 0, 'Dire Maul pod, node 1643'),
(@OGUID+222, @PGUID+57, 0, 'Dire Maul pod, node 1643'),
(@OGUID+287, @PGUID+57, 0, 'Dire Maul pod, node 1643'),
(@OGUID+93, @PGUID+58, 0, 'Dire Maul pod, node 1644'),
(@OGUID+158, @PGUID+58, 0, 'Dire Maul pod, node 1644'),
(@OGUID+223, @PGUID+58, 0, 'Dire Maul pod, node 1644'),
(@OGUID+288, @PGUID+58, 0, 'Dire Maul pod, node 1644'),
(@OGUID+94, @PGUID+59, 0, 'Dire Maul pod, node 1645'),
(@OGUID+159, @PGUID+59, 0, 'Dire Maul pod, node 1645'),
(@OGUID+224, @PGUID+59, 0, 'Dire Maul pod, node 1645'),
(@OGUID+289, @PGUID+59, 0, 'Dire Maul pod, node 1645'),
(@OGUID+95, @PGUID+60, 0, 'Dire Maul pod, node 1646'),
(@OGUID+160, @PGUID+60, 0, 'Dire Maul pod, node 1646'),
(@OGUID+225, @PGUID+60, 0, 'Dire Maul pod, node 1646'),
(@OGUID+290, @PGUID+60, 0, 'Dire Maul pod, node 1646'),
(@OGUID+96, @PGUID+61, 0, 'Dire Maul pod, node 1647'),
(@OGUID+161, @PGUID+61, 0, 'Dire Maul pod, node 1647'),
(@OGUID+226, @PGUID+61, 0, 'Dire Maul pod, node 1647'),
(@OGUID+291, @PGUID+61, 0, 'Dire Maul pod, node 1647'),
(@OGUID+97, @PGUID+62, 0, 'Dire Maul pod, node 1648'),
(@OGUID+162, @PGUID+62, 0, 'Dire Maul pod, node 1648'),
(@OGUID+227, @PGUID+62, 0, 'Dire Maul pod, node 1648'),
(@OGUID+292, @PGUID+62, 0, 'Dire Maul pod, node 1648'),
(@OGUID+98, @PGUID+63, 0, 'Dire Maul pod, node 1649'),
(@OGUID+163, @PGUID+63, 0, 'Dire Maul pod, node 1649'),
(@OGUID+228, @PGUID+63, 0, 'Dire Maul pod, node 1649'),
(@OGUID+293, @PGUID+63, 0, 'Dire Maul pod, node 1649'),
(@OGUID+99, @PGUID+64, 0, 'Dire Maul pod, node 1650'),
(@OGUID+164, @PGUID+64, 0, 'Dire Maul pod, node 1650'),
(@OGUID+229, @PGUID+64, 0, 'Dire Maul pod, node 1650'),
(@OGUID+294, @PGUID+64, 0, 'Dire Maul pod, node 1650'),
(@OGUID+100, @PGUID+65, 0, 'Dire Maul pod, node 1651'),
(@OGUID+165, @PGUID+65, 0, 'Dire Maul pod, node 1651'),
(@OGUID+230, @PGUID+65, 0, 'Dire Maul pod, node 1651'),
(@OGUID+295, @PGUID+65, 0, 'Dire Maul pod, node 1651'),
(@OGUID+101, @PGUID+66, 0, 'Dire Maul pod, node 1652'),
(@OGUID+166, @PGUID+66, 0, 'Dire Maul pod, node 1652'),
(@OGUID+231, @PGUID+66, 0, 'Dire Maul pod, node 1652'),
(@OGUID+296, @PGUID+66, 0, 'Dire Maul pod, node 1652'),
(@OGUID+102, @PGUID+67, 0, 'Dire Maul pod, node 1653'),
(@OGUID+167, @PGUID+67, 0, 'Dire Maul pod, node 1653'),
(@OGUID+232, @PGUID+67, 0, 'Dire Maul pod, node 1653'),
(@OGUID+297, @PGUID+67, 0, 'Dire Maul pod, node 1653'),
(@OGUID+103, @PGUID+68, 0, 'Dire Maul pod, node 1654'),
(@OGUID+168, @PGUID+68, 0, 'Dire Maul pod, node 1654'),
(@OGUID+233, @PGUID+68, 0, 'Dire Maul pod, node 1654'),
(@OGUID+298, @PGUID+68, 0, 'Dire Maul pod, node 1654'),
(@OGUID+104, @PGUID+69, 0, 'Dire Maul pod, node 1655'),
(@OGUID+169, @PGUID+69, 0, 'Dire Maul pod, node 1655'),
(@OGUID+234, @PGUID+69, 0, 'Dire Maul pod, node 1655'),
(@OGUID+299, @PGUID+69, 0, 'Dire Maul pod, node 1655'),
(@OGUID+105, @PGUID+70, 0, 'Dire Maul pod, node 1656'),
(@OGUID+170, @PGUID+70, 0, 'Dire Maul pod, node 1656'),
(@OGUID+235, @PGUID+70, 0, 'Dire Maul pod, node 1656'),
(@OGUID+300, @PGUID+70, 0, 'Dire Maul pod, node 1656'),
(@OGUID+106, @PGUID+71, 0, 'Dire Maul pod, node 1657'),
(@OGUID+171, @PGUID+71, 0, 'Dire Maul pod, node 1657'),
(@OGUID+236, @PGUID+71, 0, 'Dire Maul pod, node 1657'),
(@OGUID+301, @PGUID+71, 0, 'Dire Maul pod, node 1657'),
(@OGUID+107, @PGUID+72, 0, 'Dire Maul pod, node 1658'),
(@OGUID+172, @PGUID+72, 0, 'Dire Maul pod, node 1658'),
(@OGUID+237, @PGUID+72, 0, 'Dire Maul pod, node 1658'),
(@OGUID+302, @PGUID+72, 0, 'Dire Maul pod, node 1658'),
(@OGUID+108, @PGUID+73, 0, 'Dire Maul pod, node 1659'),
(@OGUID+173, @PGUID+73, 0, 'Dire Maul pod, node 1659'),
(@OGUID+238, @PGUID+73, 0, 'Dire Maul pod, node 1659'),
(@OGUID+303, @PGUID+73, 0, 'Dire Maul pod, node 1659'),
(@OGUID+109, @PGUID+74, 0, 'Dire Maul pod, node 1660'),
(@OGUID+174, @PGUID+74, 0, 'Dire Maul pod, node 1660'),
(@OGUID+239, @PGUID+74, 0, 'Dire Maul pod, node 1660'),
(@OGUID+304, @PGUID+74, 0, 'Dire Maul pod, node 1660'),
(@OGUID+110, @PGUID+75, 0, 'Dire Maul pod, node 1661'),
(@OGUID+175, @PGUID+75, 0, 'Dire Maul pod, node 1661'),
(@OGUID+240, @PGUID+75, 0, 'Dire Maul pod, node 1661'),
(@OGUID+305, @PGUID+75, 0, 'Dire Maul pod, node 1661'),
(@OGUID+111, @PGUID+76, 0, 'Dire Maul pod, node 1662'),
(@OGUID+176, @PGUID+76, 0, 'Dire Maul pod, node 1662'),
(@OGUID+241, @PGUID+76, 0, 'Dire Maul pod, node 1662'),
(@OGUID+306, @PGUID+76, 0, 'Dire Maul pod, node 1662'),
(@OGUID+112, @PGUID+77, 0, 'Dire Maul pod, node 1663'),
(@OGUID+177, @PGUID+77, 0, 'Dire Maul pod, node 1663'),
(@OGUID+242, @PGUID+77, 0, 'Dire Maul pod, node 1663'),
(@OGUID+307, @PGUID+77, 0, 'Dire Maul pod, node 1663'),
(@OGUID+113, @PGUID+78, 0, 'Dire Maul pod, node 1664'),
(@OGUID+178, @PGUID+78, 0, 'Dire Maul pod, node 1664'),
(@OGUID+243, @PGUID+78, 0, 'Dire Maul pod, node 1664'),
(@OGUID+308, @PGUID+78, 0, 'Dire Maul pod, node 1664'),
(@OGUID+114, @PGUID+79, 0, 'Dire Maul pod, node 1665'),
(@OGUID+179, @PGUID+79, 0, 'Dire Maul pod, node 1665'),
(@OGUID+244, @PGUID+79, 0, 'Dire Maul pod, node 1665'),
(@OGUID+309, @PGUID+79, 0, 'Dire Maul pod, node 1665'),
(@OGUID+115, @PGUID+80, 0, 'Dire Maul pod, node 1666'),
(@OGUID+180, @PGUID+80, 0, 'Dire Maul pod, node 1666'),
(@OGUID+245, @PGUID+80, 0, 'Dire Maul pod, node 1666'),
(@OGUID+310, @PGUID+80, 0, 'Dire Maul pod, node 1666'),
(@OGUID+116, @PGUID+81, 0, 'Dire Maul pod, node 1667'),
(@OGUID+181, @PGUID+81, 0, 'Dire Maul pod, node 1667'),
(@OGUID+246, @PGUID+81, 0, 'Dire Maul pod, node 1667'),
(@OGUID+311, @PGUID+81, 0, 'Dire Maul pod, node 1667'),
(@OGUID+371, @PGUID+92, 0, 'DM East - Large Solid Chest (153464)'),
(@OGUID+372, @PGUID+92, 0, 'DM East - Large Mithril Bound Chest (153469)'),
(@OGUID+373, @PGUID+93, 0, 'DM East - Large Solid Chest (153464)'),
(@OGUID+374, @PGUID+93, 0, 'DM East - Large Mithril Bound Chest (153469)'),
(@OGUID+375, @PGUID+95, 0, 'DM West - Large Solid Chest (153464)'),
(@OGUID+376, @PGUID+95, 0, 'DM West - Large Mithril Bound Chest (153469)'),
(@OGUID+377, @PGUID+96, 0, 'DM West - Large Solid Chest (153464)'),
(@OGUID+378, @PGUID+96, 0, 'DM West - Large Mithril Bound Chest (153469)'),
(@OGUID+379, @PGUID+98, 0, 'DM North - Large Solid Chest (153464)'),
(@OGUID+380, @PGUID+98, 0, 'DM North - Large Mithril Bound Chest (153469)'),
(@OGUID+381, @PGUID+99, 0, 'DM North - Large Solid Chest (153464)'),
(@OGUID+382, @PGUID+99, 0, 'DM North - Large Mithril Bound Chest (153469)'),
(@OGUID+383, @PGUID+90, 0, 'DM North - Large Solid Chest (153464)'),
(@OGUID+384, @PGUID+90, 0, 'DM North - Large Mithril Bound Chest (153469)');

DELETE FROM pool_gameobject_template WHERE id=179548;
INSERT INTO pool_gameobject_template (id, pool_entry, chance, description) VALUES
(179548, @PGUID+82, 0, 'DM - Dusty Tome (179548)');

-- --------------------------------------
-- BLACKWING LAIR (MAP 469)
-- --------------------------------------

-- No chests

-- --------------------------------------
-- RUINS OF AHN'QIRAJ (MAP 509)
-- --------------------------------------

-- Initial removal of GameObjects and related pools
DELETE FROM pool_gameobject WHERE guid IN (SELECT guid FROM gameobject WHERE map=509 AND id=180691);
DELETE FROM gameobject WHERE map=509 AND id=180691;

SET @OGUID := 5090000; -- gameobjects
SET @PGUID := 47400; -- pools

INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state) VALUES
-- (@OGUID+1
(@OGUID+2, 180691, 509, -8938.36, 1860.11, 3.23041, 3.75246, 0, 0, -0.953716, 0.300708, 21600, 21600, 100, 1), -- Scarab Coffer
(@OGUID+3, 180691, 509, -9344.26, 1191.31, 22.0217, 1.309, 0, 0, 0.608761, 0.793354, 21600, 21600, 100, 1), -- Scarab Coffer
(@OGUID+4, 180691, 509, -9541.15, 1585.01, 26.5581, 4.04917, 0, 0, -0.898793, 0.438373, 21600, 21600, 100, 1), -- Scarab Coffer
(@OGUID+5, 180691, 509, -9694.64, 1653.44, 22.4991, 5.86431, 0, 0, -0.207912, 0.978148, 21600, 21600, 100, 1), -- Scarab Coffer
(@OGUID+6, 180691, 509, -9090.66, 1500.96, 24.4341, 0.977383, 0, 0, 0.469471, 0.882948, 21600, 21600, 100, 1), -- Scarab Coffer
(@OGUID+7, 180691, 509, -9121.05, 2180.52, 24.8621, 0.90757, 0, 0, 0.438371, 0.898794, 21600, 21600, 100, 1), -- Scarab Coffer
(@OGUID+8, 180691, 509, -9519.04, 2003.01, 109.034, 2.42601, 0, 0, 0.936672, 0.350207, 21600, 21600, 100, 1), -- Scarab Coffer
(@OGUID+9, 180691, 509, -8713.44, 1543.34, 32.2034, 0.767944, 0, 0, 0.374606, 0.927184, 21600, 21600, 100, 1), -- Scarab Coffer
(@OGUID+10, 180691, 509, -9006.97, 1988.6, 32.2369, 6.16101, 0, 0, -0.0610485, 0.998135, 21600, 21600, 100, 1), -- Scarab Coffer
(@OGUID+11, 180691, 509, -8772.14, 2003.6, 21.907, 2.91469, 0, 0, 0.993571, 0.113208, 21600, 21600, 100, 1); -- Scarab Coffer

-- --------------------------------------
-- TEMPLE OF AHN'QIRAJ (MAP 531)
-- --------------------------------------

-- Initial removal of GameObjects and related pools
DELETE FROM pool_gameobject WHERE guid IN (SELECT guid FROM gameobject WHERE map=531 AND id=180690);
DELETE FROM gameobject WHERE map=531 AND id=180690;

SET @OGUID := 5310000; -- gameobjects
SET @PGUID := 47600; -- pools

INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state) VALUES
(@OGUID+4, 180690, 531, -8561.12, 1989.54, -3.09152, 4.18879, 0, 0, -0.866025, 0.500001, 7200, 7200, 100, 1), -- Large Scarab Coffer
(@OGUID+5, 180690, 531, -8134.14, 1125.44, -86.2664, 2.51327, 0, 0, 0.951056, 0.309017, 7200, 7200, 100, 1), -- Large Scarab Coffer
(@OGUID+6, 180690, 531, -8583.56, 1287.91, -68.8899, 1.6057, 0, 0, 0.719339, 0.694659, 7200, 7200, 100, 1), -- Large Scarab Coffer
(@OGUID+7, 180690, 531, -8674.74, 1594.59, -86.1393, 3.57793, 0, 0, -0.976296, 0.216442, 7200, 7200, 100, 1), -- Large Scarab Coffer
(@OGUID+8, 180690, 531, -8882.01, 1347.22, -92.5825, 1.13446, 0, 0, 0.537299, 0.843392, 7200, 7200, 100, 1), -- Large Scarab Coffer
(@OGUID+9, 180690, 531, -9242.85, 1567.7, -77.3522, 0.488691, 0, 0, 0.241921, 0.970296, 7200, 7200, 100, 1), -- Large Scarab Coffer
(@OGUID+10, 180690, 531, -9106.09, 1502.93, -100.001, 5.07891, 0, 0, -0.566406, 0.824126, 7200, 7200, 100, 1), -- Large Scarab Coffer
(@OGUID+11, 180690, 531, -8928.15, 1823.57, -18.932, 1.09956, 0, 0, 0.522498, 0.852641, 7200, 7200, 100, 1), -- Large Scarab Coffer
(@OGUID+12, 180690, 531, -9201.08, 1486.46, -95.1725, 2.00713, 0, 0, 0.843391, 0.5373, 7200, 7200, 100, 1), -- Large Scarab Coffer
(@OGUID+13, 180690, 531, -9161.58, 1579.33, -79.9399, 1.88495, 0, 0, 0.809016, 0.587786, 7200, 7200, 100, 1), -- Large Scarab Coffer
(@OGUID+14, 180690, 531, -9203.9, 1961.31, -50.1677, 1.55334, 0, 0, 0.700909, 0.713251, 7200, 7200, 100, 1); -- Large Scarab Coffer

-- --------------------------------------
-- NAXXRAMAS (MAP 533)
-- --------------------------------------

-- Initial removal of GameObjects and related pools
DELETE FROM pool_gameobject WHERE guid IN (SELECT guid FROM gameobject WHERE map=533 AND id=181287);
DELETE FROM gameobject WHERE map=533 AND id=181287;

SET @OGUID := 5330000; -- gameobjects
SET @PGUID := 47800; -- pools

INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state) VALUES
(@OGUID+40, 181287, 533, 2617.62, -2953.47, 241.381, 0.739406, 0, 0, 0.361338, 0.932435, 6380, 6380, 100, 1), -- Frozen Rune
(@OGUID+41, 181287, 533, 2482.83, -2896.52, 241.282, 2.26701, 0, 0, 0.905903, 0.423486, 6380, 6380, 100, 1), -- Frozen Rune
(@OGUID+42, 181287, 533, 2455.52, -2978.11, 241.287, 3.86137, 0, 0, 0.935936, -0.352171, 6380, 6380, 100, 1), -- Frozen Rune
(@OGUID+43, 181287, 533, 2745.64, -3116.69, 267.685, 3.69249, 0, 0, 0.962303, -0.271981, 6380, 6380, 100, 1), -- Frozen Rune
(@OGUID+44, 181287, 533, 3339.69, -3334.2, 292.595, 4.8431, 0, 0, 0.659415, -0.751779, 6380, 6380, 100, 1), -- Frozen Rune
(@OGUID+45, 181287, 533, 3192.31, -3293.11, 292.595, 4.74492, 0, 0, 0.695511, -0.718515, 6380, 6380, 100, 1), -- Frozen Rune
(@OGUID+46, 181287, 533, 3193.01, -3359.1, 292.595, 4.32474, 0, 0, 0.830065, -0.557667, 6380, 6380, 100, 1), -- Frozen Rune
(@OGUID+47, 181287, 533, 3233.92, -3173.09, 297.946, 3.88884, 0, 0, 0.931011, -0.364992, 6380, 6380, 100, 1), -- Frozen Rune
(@OGUID+48, 181287, 533, 3272.91, -3208.04, 297.846, 4.57605, 0, 0, 0.75363, -0.657299, 6380, 6380, 100, 1), -- Frozen Rune
(@OGUID+49, 181287, 533, 3332.81, -3202.3, 297.811, 5.80127, 0, 0, 0.238634, -0.97111, 6380, 6380, 100, 1), -- Frozen Rune
(@OGUID+50, 181287, 533, 3511.27, -2898.78, 302.345, 0.103201, 0, 0, 0.0515777, 0.998669, 6380, 6380, 100, 1), -- Frozen Rune
(@OGUID+51, 181287, 533, 3551.96, -2961.45, 302.736, 0.217081, 0, 0, 0.108327, 0.994115, 6380, 6380, 100, 1), -- Frozen Rune
(@OGUID+52, 181287, 533, 3479.38, -2888.36, 302.702, 1.71326, 0, 0, 0.755641, 0.654986, 6380, 6380, 100, 1), -- Frozen Rune
(@OGUID+53, 181287, 533, 3524.32, -3946.9, 310.05, 4.98837, 0, 0, 0.603119, -0.797651, 6380, 6380, 100, 1), -- Frozen Rune
(@OGUID+54, 181287, 533, 3460.24, -3934.4, 305.996, 4.01841, 0, 0, 0.905429, -0.424498, 6380, 6380, 100, 1), -- Frozen Rune
(@OGUID+55, 181287, 533, 3549.72, -3925.55, 305.4, 6.02981, 0, 0, 0.12635, -0.991986, 6380, 6380, 100, 1), -- Frozen Rune
(@OGUID+56, 181287, 533, 3381.55, -3621.99, 261.167, 0.0458548, 0, 0, 0.0229254, 0.999737, 6380, 6380, 100, 1), -- Frozen Rune
(@OGUID+57, 181287, 533, 3351.06, -3592.56, 260.996, 0.108686, 0, 0, 0.0543163, 0.998524, 6380, 6380, 100, 1), -- Frozen Rune
(@OGUID+58, 181287, 533, 3322.47, -3635.3, 259.084, 2.99895, 0, 0, 0.997458, 0.0712598, 6380, 6380, 100, 1), -- Frozen Rune
(@OGUID+59, 181287, 533, 2789.51, -3075.94, 267.685, 0.814009, 0, 0, 0.39586, 0.918311, 6380, 6380, 100, 1), -- Frozen Rune
(@OGUID+60, 181287, 533, 2745.96, -3312.15, 267.684, 0.138569, 0, 0, 0.0692289, 0.997601, 6380, 6380, 100, 1), -- Frozen Rune
(@OGUID+61, 181287, 533, 2678.9, -3432.53, 267.689, 4.74886, 0, 0, 0.694097, -0.719881, 6380, 6380, 100, 1), -- Frozen Rune
(@OGUID+62, 181287, 533, 2635.2, -3384.3, 267.685, 3.19377, 0, 0, 0.99966, -0.0260857, 6380, 6380, 100, 1), -- Frozen Rune
(@OGUID+63, 181287, 533, 2844.3, -3980.5, 278.981, 1.62973, 0, 0, 0.727634, 0.685966, 6380, 6380, 100, 1), -- Frozen Rune
(@OGUID+64, 181287, 533, 2926.43, -4034.49, 273.577, 4.7941, 0, 0, 0.677635, -0.735399, 6380, 6380, 100, 1), -- Frozen Rune
(@OGUID+65, 181287, 533, 2925.78, -3959.76, 273.57, 0.855331, 0, 0, 0.414748, 0.909936, 6380, 6380, 100, 1), -- Frozen Rune
(@OGUID+66, 181287, 533, 2793.38, -3650.78, 273.64, 0.378605, 0, 0, 0.188174, 0.982136, 6380, 6380, 100, 1), -- Frozen Rune
(@OGUID+67, 181287, 533, 2748.44, -3651.65, 273.622, 2.83297, 0, 0, 0.988118, 0.153697, 6380, 6380, 100, 1), -- Frozen Rune
(@OGUID+68, 181287, 533, 2811.74, -3703.96, 273.616, 5.56223, 0, 0, 0.35272, -0.935729, 6380, 6380, 100, 1), -- Frozen Rune
(@OGUID+69, 181287, 533, 2641.82, -3456.01, 265.559, 2.8772, 0, 0, 0.991275, 0.13181, 6380, 6380, 100, 1), -- Frozen Rune
(@OGUID+70, 181287, 533, 2730.03, -3455.88, 262.271, 0.678089, 0, 0, 0.332586, 0.943073, 6380, 6380, 100, 1), -- Frozen Rune
(@OGUID+71, 181287, 533, 2727.52, -3546.65, 261.969, 6.0188, 0, 0, 0.13181, -0.991275, 6380, 6380, 100, 1), -- Frozen Rune
(@OGUID+72, 181287, 533, 3214.19, -3465.14, 287.071, 2.60625, 0, 0, 0.96439, 0.264486, 6380, 6380, 100, 1), -- Frozen Rune
(@OGUID+73, 181287, 533, 3336.09, -3469.08, 287.069, 0.301108, 0, 0, 0.149986, 0.988688, 6380, 6380, 100, 1); -- Frozen Rune
