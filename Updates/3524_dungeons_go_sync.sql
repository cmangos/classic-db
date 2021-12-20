-- ####################################
-- GAMEOBJECTS AND POOLS MIGRATION
-- ####################################


-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
-- Razorfen Kraul
-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

-- Update values of existing GOs based on target database
UPDATE gameobject SET rotation2=0.0, rotation3=0.0 WHERE guid=4700034;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0 WHERE guid=4700035;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0 WHERE guid=4700051;
UPDATE gameobject SET rotation0=0.0, rotation1=0.0, rotation2=0.0, rotation3=0.0 WHERE guid=4700052;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0 WHERE guid=4700053;
UPDATE gameobject SET rotation0=0.0, rotation1=0.0, rotation2=0.0, rotation3=0.0 WHERE guid=4700054;
UPDATE gameobject SET rotation0=0.0, rotation1=0.0, rotation2=0.0, rotation3=0.0 WHERE guid=4700055;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0 WHERE guid=4700056;
UPDATE gameobject SET rotation0=0.0, rotation1=0.0, rotation2=0.0, rotation3=0.0 WHERE guid=4700057;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0 WHERE guid=4700058;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0 WHERE guid=4700059;
UPDATE gameobject SET rotation0=0.0, rotation1=0.0, rotation2=0.0, rotation3=0.0 WHERE guid=4700060;
UPDATE gameobject SET rotation0=0.0, rotation1=0.0, rotation2=0.0, rotation3=0.0 WHERE guid=4700061;
UPDATE gameobject SET rotation0=0.0, rotation1=0.0, rotation2=0.0, rotation3=0.0 WHERE guid=4700062;
UPDATE gameobject SET rotation0=0.0, rotation1=0.0, rotation2=0.0, rotation3=0.0 WHERE guid=4700063;
UPDATE gameobject SET rotation0=0.0, rotation1=0.0, rotation2=0.0, rotation3=0.0 WHERE guid=4700064;
UPDATE gameobject SET rotation0=0.0, rotation1=0.0, rotation2=0.0, rotation3=0.0 WHERE guid=4700065;
UPDATE gameobject SET rotation0=0.0, rotation1=0.0, rotation2=0.0, rotation3=0.0 WHERE guid=4700066;
UPDATE gameobject SET rotation0=0.0, rotation1=0.0, rotation2=0.0, rotation3=0.0 WHERE guid=4700067;
UPDATE gameobject SET rotation0=0.0, rotation1=0.0, rotation2=0.0, rotation3=0.0 WHERE guid=4700068;
UPDATE gameobject SET rotation0=0.0, rotation1=0.0, rotation2=0.0, rotation3=0.0 WHERE guid=4700069;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0 WHERE guid=4700070;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0 WHERE guid=4700071;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0 WHERE guid=4700072;
UPDATE gameobject SET animprogress=100 WHERE map=47 AND id IN (74447, 74448);
-- Update GUID of existing GOs that have different GUID in target database
-- 4700007 -> 4700021
UPDATE gameobject SET guid=4700021 WHERE guid=4700007;
-- 4700008 -> 4700025
UPDATE gameobject SET guid=4700025 WHERE guid=4700008;
-- 4700009 -> 4700026
UPDATE gameobject SET guid=4700026 WHERE guid=4700009;
-- 4700010 -> 4700027
UPDATE gameobject SET guid=4700027 WHERE guid=4700010;
-- 4700015 -> 4700029
UPDATE gameobject SET guid=4700029 WHERE guid=4700015;
-- 4700011 -> 4700015
UPDATE gameobject SET guid=4700015 WHERE guid=4700011;
-- 4700012 -> 4700016
UPDATE gameobject SET guid=4700016 WHERE guid=4700012;
-- 4700013 -> 4700022
UPDATE gameobject SET guid=4700022 WHERE guid=4700013;
-- 4700014 -> 4700028
UPDATE gameobject SET guid=4700028 WHERE guid=4700014;

-- Adding missing GOs from target database
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(4700007, 1621, 47, 2030.7, 1554.6, 64.5662, 5.23599, 0.0, 0.0, -0.5, 0.866025, 86400, 86400),
(4700008, 1621, 47, 2009.76, 1657.79, 80.9566, 6.0912, 0.0, 0.0, -0.0958452, 0.995396, 86400, 86400),
(4700009, 1621, 47, 2055.53, 1735.47, 77.149, 3.94445, 0.0, 0.0, -0.920505, 0.390732, 86400, 86400),
(4700010, 1621, 47, 2137.35, 1791.76, 48.6783, 5.98648, 0.0, 0.0, -0.147809, 0.989016, 86400, 86400),
(4700011, 1621, 47, 2174.52, 1893.2, 71.3412, 6.26573, 0.0, 0.0, -0.00872612, 0.999962, 86400, 86400),
(4700017, 2042, 47, 2143.84, 1501.71, 72.8711, 3.10665, 0.0, 0.0, 0.999847, 0.0174693, 86400, 86400),
(4700018, 2042, 47, 2207.17, 1846.86, 60.9423, 2.33874, 0.0, 0.0, 0.920505, 0.390732, 86400, 86400),
(4700030, 1735, 47, 2120.08, 1781.03, 49.4096, 1.29154, 0.0, 0.0, 0.601814, 0.798636, 86400, 86400),
(4700031, 1735, 47, 2036.34, 1845.86, 56.4932, 5.16618, 0.0, 0.0, -0.529919, 0.848048, 86400, 86400),
(4700032, 1735, 47, 2170.38, 1883.71, 73.6948, 5.32326, 0.0, 0.0, -0.461748, 0.887011, 86400, 86400);

-- Insert missing pool gameobject entries from target database
INSERT INTO pool_gameobject VALUES
(4700001, 45451, 0.0, 'Razorfen Kraul - Briarthorn (1621)'),
(4700002, 45451, 0.0, 'Razorfen Kraul - Briarthorn (1621)'),
(4700003, 45451, 0.0, 'Razorfen Kraul - Briarthorn (1621)'),
(4700004, 45451, 0.0, 'Razorfen Kraul - Briarthorn (1621)'),
(4700005, 45451, 0.0, 'Razorfen Kraul - Briarthorn (1621)'),
(4700006, 45451, 0.0, 'Razorfen Kraul - Briarthorn (1621)'),
(4700007, 45451, 0.0, 'Razorfen Kraul - Briarthorn (1621)'),
(4700008, 45451, 0.0, 'Razorfen Kraul - Briarthorn (1621)'),
(4700009, 45451, 0.0, 'Razorfen Kraul - Briarthorn (1621)'),
(4700010, 45451, 0.0, 'Razorfen Kraul - Briarthorn (1621)'),
(4700011, 45451, 0.0, 'Razorfen Kraul - Briarthorn (1621)'),
(4700015, 45452, 0.0, 'Razorfen Kraul - Fadeleaf (2042)'),
(4700016, 45452, 0.0, 'Razorfen Kraul - Fadeleaf (2042)'),
(4700017, 45452, 0.0, 'Razorfen Kraul - Fadeleaf (2042)'),
(4700018, 45452, 0.0, 'Razorfen Kraul - Fadeleaf (2042)'),
(4700021, 45461, 0.0, 'Razorfen Kraul - Gold Vein (1734)'),
(4700022, 45461, 0.0, 'Razorfen Kraul - Gold Vein (1734)'),
(4700025, 45462, 0.0, 'Razorfen Kraul - Iron Deposit (1735)'),
(4700026, 45462, 0.0, 'Razorfen Kraul - Iron Deposit (1735)'),
(4700027, 45462, 0.0, 'Razorfen Kraul - Iron Deposit (1735)'),
(4700028, 45462, 0.0, 'Razorfen Kraul - Iron Deposit (1735)'),
(4700029, 45462, 0.0, 'Razorfen Kraul - Iron Deposit (1735)'),
(4700030, 45462, 0.0, 'Razorfen Kraul - Iron Deposit (1735)'),
(4700031, 45462, 0.0, 'Razorfen Kraul - Iron Deposit (1735)'),
(4700032, 45462, 0.0, 'Razorfen Kraul - Iron Deposit (1735)');

-- Add missing pool templates from target database
INSERT INTO pool_template VALUES
(45451, 6, 'Razorfen Kraul - Briarthorn (1621)'),
(45452, 2, 'Razorfen Kraul - Fadeleaf (2042)'),
(45461, 1, 'Razorfen Kraul - Gold Vein (1734)'),
(45462, 3, 'Razorfen Kraul - Iron Deposit (1735)');


-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
-- Uldaman
-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

-- Update values of existing GOs based on target database
UPDATE gameobject SET spawntimesecsmin=86400, spawntimesecsmax=86400 WHERE guid=7000183;
UPDATE gameobject SET spawntimesecsmin=86400, spawntimesecsmax=86400 WHERE guid=7000184;
-- Update GUID of existing GOs that have different GUID in target database
-- 7000001 -> 7000005
UPDATE gameobject SET guid=7000005, spawntimesecsmin=86400, spawntimesecsmax=86400 WHERE guid=7000001;
UPDATE pool_gameobject SET guid=7000005, pool_entry=45651, description='Uldaman - Iron Deposit (1735)' WHERE guid=7000001;
-- 7000002 -> 7000006
UPDATE gameobject SET guid=7000006, spawntimesecsmin=86400, spawntimesecsmax=86400 WHERE guid=7000002;
UPDATE pool_gameobject SET guid=7000006, pool_entry=45651, description='Uldaman - Iron Deposit (1735)' WHERE guid=7000002;
-- 7000003 -> 7000015
UPDATE gameobject SET guid=7000015, spawntimesecsmin=86400, spawntimesecsmax=86400 WHERE guid=7000003;
UPDATE pool_gameobject SET guid=7000015, pool_entry=45651, description='Uldaman - Mithril Deposit (2040)' WHERE guid=7000003;
-- 7000004 -> 7000016
UPDATE gameobject SET guid=7000016, spawntimesecsmin=86400, spawntimesecsmax=86400 WHERE guid=7000004;
UPDATE pool_gameobject SET guid=7000016, pool_entry=45651, description='Uldaman - Mithril Deposit (2040)' WHERE guid=7000004;
-- 7000039 -> 7000021
UPDATE gameobject SET guid=7000021, spawntimesecsmin=86400, spawntimesecsmax=86400 WHERE guid=7000039;
-- 7000040 -> 7000022
UPDATE gameobject SET guid=7000022, spawntimesecsmin=86400, spawntimesecsmax=86400 WHERE guid=7000040;
-- 7000041 -> 7000023
UPDATE gameobject SET guid=7000023, spawntimesecsmin=86400, spawntimesecsmax=86400 WHERE guid=7000041;
-- Adding missing GOs from target database
DELETE FROM gameobject WHERE guid IN (7000034, 7000035, 7000036, 7000037, 7000038, 7000039, 7000040, 7000041, 7000167, 7000168, 7000169, 7000170, 7000171, 7000172, 7000179, 7000180);
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(7000001, 1734, 70, -60.9316, 199.971, -47.0473, 4.39823, 0.0, 0.0, -0.809016, 0.587786, 86400, 86400),
(7000007, 1735, 70, -258.41, 252.235, -49.326, 6.10865, 0.0, 0.0, -0.0871553, 0.996195, 86400, 86400),
(7000008, 1735, 70, 70.1267, 443.334, -41.0286, 0.331611, 0.0, 0.0, 0.165047, 0.986286, 86400, 86400),
(7000009, 1735, 70, -143.264, 251.363, -47.2695, 6.19592, 0.0, 0.0, -0.0436192, 0.999048, 86400, 86400),
(7000010, 1735, 70, -0.98445, 400.035, -45.7788, 2.80997, 0.0, 0.0, 0.986285, 0.16505, 86400, 86400),
(7000017, 2040, 70, -136.189, 281.179, -52.1819, 2.68781, 0.0, 0.0, 0.97437, 0.224951, 86400, 86400),
(7000018, 2040, 70, -259.822, 272.068, -50.1133, 5.61996, 0.0, 0.0, -0.325567, 0.945519, 86400, 86400),
(7000024, 19903, 70, -248.926, 220.846, -46.6074, 5.89921, 0.0, 0.0, -0.190808, 0.981627, 86400, 86400),
(7000025, 19903, 70, -89.2856, 190.29, -48.1824, 2.67035, 0.0, 0.0, 0.972369, 0.233448, 86400, 86400),
(7000026, 19903, 70, -133.767, 358.587, -42.5509, 4.13643, 0.0, 0.0, -0.878817, 0.47716, 86400, 86400),
(7000027, 19903, 70, -52.2933, 271.083, -46.7186, 5.60251, 0.0, 0.0, -0.333807, 0.942641, 86400, 86400),
(7000030, 3707, 70, -101.293, 329.776, -47.5239, -2.61799, 0.0, 0.0, 0.965926, -0.258819, 86400, 86400),
(7000031, 3707, 70, -247.885, 236.192, -46.4701, -0.10472, 0.0, 0.0, 0.052336, -0.99863, 86400, 86400),
(7000032, 3707, 70, -117.284, 235.933, -51.811, -0.401426, 0.0, 0.0, 0.199368, -0.979925, 86400, 86400),
(7000033, 3707, 70, 54.6041, 348.621, -40.4473, -3.10669, 0.0, 0.0, 0.999848, -0.017452, 86400, 86400),
(7000034, 3707, 70, 37.0305, 227.32, -32.1131, -2.67035, 0.0, 0.0, 0.97237, -0.233445, 86400, 86400),
(7000035, 3707, 70, -346.995, 105.85, -53.3132, 4.20625, 0.0, 0.0, -0.861628, 0.507539, 86400, 86400),
(7000036, 3707, 70, -150.741, 215.673, -46.1308, 0.383971, 0.0, 0.0, 0.190808, 0.981627, 86400, 86400),
(7000037, 3707, 70, -3.95842, 279.67, -48.8676, 0.0, 0.0, 0.0, 0.0, 1.0, 86400, 86400),
(7000038, 3707, 70, -77.3072, 200.739, -49.7122, 1.39626, 0.0, 0.0, 0.642787, 0.766045, 86400, 86400),
(7000039, 3707, 70, 7.23665, 389.231, -43.7525, 1.71042, 0.0, 0.0, 0.754709, 0.656059, 86400, 86400),
(7000040, 3707, 70, -208.706, 224.748, -46.9613, 2.46091, 0.0, 0.0, 0.942641, 0.333808, 86400, 86400),
(7000041, 3707, 70, 12.4986, 217.998, -31.1776, 1.18682, 0.0, 0.0, 0.559193, 0.829038, 86400, 86400),
(7000167, 0, 70, -203.678, 214.626, -46.4375, 2.23402, 0.0, 0.0, 0.898793, 0.438373, 300, 600),
(7000168, 0, 70, 57.257, 322.762, -41.8984, 5.86431, 0.0, 0.0, -0.207912, 0.978148, 300, 600),
(7000169, 0, 70, 1.60166, 236.356, -32.3796, 3.64774, 0.0, 0.0, -0.968147, 0.250381, 300, 600),
(7000170, 0, 70, -95.1379, 337.393, -47.0908, 4.85202, 0.0, 0.0, -0.656058, 0.75471, 300, 600),
(7000171, 0, 70, -112.397, 230.632, -52.1536, 5.81195, 0.0, 0.0, -0.233445, 0.97237, 300, 600),
(7000172, 0, 70, -129.112, 384.45, -39.9942, 4.24115, 0.0, 0.0, -0.85264, 0.522499, 300, 600),
(7000173, 0, 70, -358.599, 100.756, -53.1931, 1.0472, 0.0, 0.0, 0.5, 0.866025, 300, 600),
(7000174, 0, 70, -164.64, 301.678, -53.1614, 4.57276, 0.0, 0.0, -0.754709, 0.656059, 300, 600);

-- Adding missing GO spawn entries from target database
INSERT INTO gameobject_spawn_entry VALUES
(7000167, 126049),
(7000167, 128293),
(7000168, 126049),
(7000168, 128293),
(7000169, 126049),
(7000169, 128293),
(7000170, 126049),
(7000170, 128293),
(7000171, 126049),
(7000171, 128293),
(7000172, 126049),
(7000172, 128293),
(7000173, 126049),
(7000173, 128293),
(7000174, 126049),
(7000174, 128293);

-- Insert missing pool gameobject entries from target database
INSERT INTO pool_gameobject VALUES
(7000001, 45651, 0.0, 'Uldaman - Gold Vein (1734)'),
(7000007, 45651, 0.0, 'Uldaman - Iron Deposit (1735)'),
(7000008, 45651, 0.0, 'Uldaman - Iron Deposit (1735)'),
(7000009, 45651, 0.0, 'Uldaman - Iron Deposit (1735)'),
(7000010, 45651, 0.0, 'Uldaman - Iron Deposit (1735)'),
(7000017, 45651, 0.0, 'Uldaman - Mithril Deposit (2040)'),
(7000018, 45651, 0.0, 'Uldaman - Mithril Deposit (2040)'),
(7000021, 45652, 0.0, 'Uldaman - Indurium Mineral Vein (19903)'),
(7000022, 45652, 0.0, 'Uldaman - Indurium Mineral Vein (19903)'),
(7000023, 45652, 0.0, 'Uldaman - Indurium Mineral Vein (19903)'),
(7000024, 45652, 0.0, 'Uldaman - Indurium Mineral Vein (19903)'),
(7000025, 45652, 0.0, 'Uldaman - Indurium Mineral Vein (19903)'),
(7000026, 45652, 0.0, 'Uldaman - Indurium Mineral Vein (19903)'),
(7000027, 45652, 0.0, 'Uldaman - Indurium Mineral Vein (19903)'),
(7000030, 45661, 0.0, 'Uldaman - Food Crate (3707)'),
(7000031, 45661, 0.0, 'Uldaman - Food Crate (3707)'),
(7000032, 45661, 0.0, 'Uldaman - Food Crate (3707)'),
(7000033, 45661, 0.0, 'Uldaman - Food Crate (3707)'),
(7000034, 45661, 0.0, 'Uldaman - Food Crate (3707)'),
(7000035, 45661, 0.0, 'Uldaman - Food Crate (3707)'),
(7000036, 45661, 0.0, 'Uldaman - Food Crate (3707)'),
(7000037, 45661, 0.0, 'Uldaman - Food Crate (3707)'),
(7000038, 45661, 0.0, 'Uldaman - Food Crate (3707)'),
(7000039, 45661, 0.0, 'Uldaman - Food Crate (3707)'),
(7000040, 45661, 0.0, 'Uldaman - Food Crate (3707)'),
(7000041, 45661, 0.0, 'Uldaman - Food Crate (3707)');

-- Update pool gameobject entries to match target database
UPDATE pool_gameobject SET pool_entry=45691 WHERE guid=7000183;
UPDATE pool_gameobject SET pool_entry=45691 WHERE guid=7000184;

-- Add missing pool templates from target database
INSERT INTO pool_template VALUES
(45652, 3, 'Uldaman - Indurium Mineral Vein (19903)'),
(45651, 4, 'Uldaman - Mineral Pool'),
(45661, 5, 'Uldaman - Food Crate (3707)');

-- Update pool template entries to match target database
UPDATE pool_template SET entry=45691 WHERE entry=45621;


-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
-- Gnomeregan
-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

-- Adding missing GOs from target database
DELETE FROM gameobject WHERE guid IN (9000001, 9000002);
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(9000001, 3659, 90, -571.492, 510.91, -216.81, -2.61799, 0.0, 0.0, 0.965926, -0.258819, 180, 180),
(9000002, 3695, 90, -910.038, 357.305, -272.596, -1.76278, 0.0, 0.0, 0.771625, -0.636078, 180, 180);


-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
-- The Temple of Atal'Hakkar
-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

-- Adding missing GOs from target database
DELETE FROM gameobject WHERE guid=1090037 OR guid BETWEEN 1090038 AND 1090043 OR guid BETWEEN 1090044 AND 1090083;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(1090038, 0, 109, -515.046, 95.1471, -148.74, 2.74016, 0.0, 0.0, 0.979924, 0.19937, 180, 180),
(1090039, 0, 109, -420.155, 94.3731, -148.74, -2.32129, 0.0, 0.0, -0.91706, 0.39875, 180, 180),
(1090040, 0, 109, -490.969, 135.714, -148.74, 0.226892, 0.0, 0.0, 0.113203, 0.993572, 180, 180),
(1090041, 0, 109, -491.396, 53.5787, -148.74, -0.471238, 0.0, 0.0, -0.233445, 0.97237, 180, 180),
(1090042, 0, 109, -444.448, 136.106, -148.74, 0.331611, 0.0, 0.0, 0.165047, 0.986286, 180, 180),
(1090043, 0, 109, -443.55, 53.9243, -148.74, 0.90757, 0.0, 0.0, 0.438371, 0.898794, 180, 180),
(1090044, 37099, 109, -590.276, 53.4409, -69.3528, 3.76991, 0.0, 0.0, -0.951056, 0.309017, 3600, 4800),
(1090045, 37099, 109, -585.906, 188.365, -69.4014, 5.46288, 0.0, 0.0, -0.398748, 0.91706, 3600, 4800),
(1090046, 37099, 109, -583.927, 69.2769, -148.601, 3.78737, 0.0, 0.0, -0.948323, 0.317306, 3600, 4800),
(1090047, 37099, 109, -578.523, 46.9005, -106.908, 4.46804, 0.0, 0.0, -0.788011, 0.615662, 3600, 4800),
(1090048, 37099, 109, -577.409, 165.478, -108.99, 4.46804, 0.0, 0.0, -0.788011, 0.615662, 3600, 4800),
(1090049, 37099, 109, -570.776, 119.907, -126.777, 1.71042, 0.0, 0.0, 0.754709, 0.656059, 3600, 4800),
(1090050, 37099, 109, -557.521, 9.70738, -126.737, 1.48353, 0.0, 0.0, 0.67559, 0.737278, 3600, 4800),
(1090051, 37099, 109, -549.985, 9.30037, -87.0857, 1.79769, 0.0, 0.0, 0.782608, 0.622515, 3600, 4800),
(1090052, 37099, 109, -547.305, 183.819, -148.65, 3.194, 0.0, 0.0, -0.999657, 0.0262017, 3600, 4800),
(1090053, 37099, 109, -534.25, 99.083, -148.744, 2.23402, 0.0, 0.0, 0.898793, 0.438373, 3600, 4800),
(1090054, 37099, 109, -531.942, 302.219, -88.2248, 0.087266, 0.0, 0.0, 0.0436192, 0.999048, 3600, 4800),
(1090055, 37099, 109, -523.658, 76.2831, -172.939, 2.54818, 0.0, 0.0, 0.956305, 0.292372, 3600, 4800),
(1090056, 37099, 109, -503.776, 150.692, -148.745, 4.34587, 0.0, 0.0, -0.824126, 0.566406, 3600, 4800),
(1090057, 37099, 109, -502.805, -4.15319, -90.8701, 3.31614, 0.0, 0.0, -0.996194, 0.087165, 3600, 4800),
(1090058, 37099, 109, -490.689, 149.079, -172.939, 5.32326, 0.0, 0.0, -0.461748, 0.887011, 3600, 4800),
(1090059, 37099, 109, -486.417, 10.0704, -52.8439, 1.53589, 0.0, 0.0, 0.694658, 0.71934, 3600, 4800),
(1090060, 37099, 109, -484.216, 35.7172, -148.745, 2.04204, 0.0, 0.0, 0.85264, 0.522499, 3600, 4800),
(1090061, 37099, 109, -475.412, 163.7, -90.843, 5.23599, 0.0, 0.0, -0.5, 0.866025, 3600, 4800),
(1090062, 37099, 109, -468.021, -9.47424, -147.576, 1.5708, 0.0, 0.0, 0.707107, 0.707107, 3600, 4800),
(1090063, 37099, 109, -426.643, 41.3277, -148.745, 2.94959, 0.0, 0.0, 0.995396, 0.0958512, 3600, 4800),
(1090064, 37099, 109, -424.793, 174.483, -147.576, 2.47837, 0.0, 0.0, 0.945518, 0.325568, 3600, 4800),
(1090065, 37099, 109, -423.546, 174.254, -52.814, 2.65289, 0.0, 0.0, 0.970295, 0.241925, 3600, 4800),
(1090066, 37099, 109, -406.957, 126.944, -90.106, 3.87463, 0.0, 0.0, -0.93358, 0.358368, 3600, 4800),
(1090067, 37099, 109, -400.783, 105.583, -148.744, 0.383971, 0.0, 0.0, 0.190808, 0.981627, 3600, 4800),
(1090068, 37099, 109, -396.752, 77.0496, -90.8448, 3.01941, 0.0, 0.0, 0.998135, 0.0610518, 3600, 4800),
(1090069, 37099, 109, -383.566, 154.874, -128.892, 0.802851, 0.0, 0.0, 0.390731, 0.920505, 3600, 4800),
(1090070, 37099, 109, -383.352, 1.71788, -148.687, 4.15388, 0.0, 0.0, -0.874619, 0.48481, 3600, 4800),
(1090071, 37099, 109, -381.556, 168.785, -89.2412, 2.68781, 0.0, 0.0, 0.97437, 0.224951, 3600, 4800),
(1090072, 37099, 109, -375.578, 56.7683, -87.1112, 6.16101, 0.0, 0.0, -0.0610485, 0.998135, 3600, 4800),
(1090073, 37099, 109, -362.301, 243.166, -90.8326, 4.24115, 0.0, 0.0, -0.85264, 0.522499, 3600, 4800),
(1090074, 37099, 109, -360.427, 59.1012, -128.814, 5.18363, 0.0, 0.0, -0.522498, 0.852641, 3600, 4800),
(1090075, 37099, 109, -354.166, 150.352, -67.6015, 4.93928, 0.0, 0.0, -0.622514, 0.782609, 3600, 4800),
(1090076, 37099, 109, -351.316, 76.8959, -130.942, 0.261798, 0.0, 0.0, 0.130526, 0.991445, 3600, 4800),
(1090077, 37099, 109, -344.04, 119.619, -148.781, 4.71239, 0.0, 0.0, -0.707107, 0.707107, 3600, 4800),
(1090078, 37099, 109, -340.648, 162.695, -107.085, 3.6652, 0.0, 0.0, -0.965925, 0.258821, 3600, 4800),
(1090079, 37099, 109, -335.893, 118.901, -49.023, 2.54818, 0.0, 0.0, 0.956305, 0.292372, 3600, 4800),
(1090080, 37099, 109, -335.355, 15.4481, -69.3923, 4.11898, 0.0, 0.0, -0.882947, 0.469473, 3600, 4800),
(1090081, 37099, 109, -307.398, 121.213, -170.13, 5.46288, 0.0, 0.0, -0.398748, 0.91706, 3600, 4800),
(1090082, 37099, 109, -290.904, 90.1863, -170.107, 2.67035, 0.0, 0.0, 0.972369, 0.233448, 3600, 4800),
(1090083, 37099, 109, -279.371, 85.9247, -88.5831, 4.45059, 0.0, 0.0, -0.793353, 0.608762, 3600, 4800);
-- Update GUID of existing GOs that have different GUID in target database
-- 99877 -> 1090037
UPDATE gameobject SET guid=1090037 WHERE guid=99877;
-- 232831 -> 1090013
UPDATE gameobject SET guid=1090013 WHERE guid=232831;

-- Adding missing GO spawn entries from target database
INSERT INTO gameobject_spawn_entry VALUES
(1090038, 148837),
(1090038, 177484),
(1090038, 177485),
(1090039, 148837),
(1090039, 177484),
(1090039, 177485),
(1090040, 148837),
(1090040, 177484),
(1090040, 177485),
(1090041, 148837),
(1090041, 177484),
(1090041, 177485),
(1090042, 148837),
(1090042, 177484),
(1090042, 177485),
(1090043, 148837),
(1090043, 177484),
(1090043, 177485);


-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
-- Zul'Farrak
-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

-- Adding missing GOs from target database
DELETE FROM gameobject WHERE guid BETWEEN 2090005 AND 2090044 OR guid IN (2090002, 2090003);
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(2090002, 11898, 209, 2600.81, 1228.72, 89.0211, 2.60926, 0.0, 0.0, 0.964787, 0.263034, 0, 0),
(2090003, 11899, 209, 2617.51, 1243.92, -40.5284, 2.36492, 0.0, 0.0, 0.92554, 0.37865, 0, 0),
(2090005, 0, 209, 1876.14, 976.482, 9.05195, 1.01229, 0.0, 0.0, 0.484809, 0.87462, 86400, 86400),
(2090006, 0, 209, 1897.08, 980.836, 8.95884, -2.98451, 0.0, 0.0, 0.996917, -0.0784591, 86400, 86400),
(2090007, 0, 209, 1897.98, 985.276, 8.89835, 2.75762, 0.0, 0.0, 0.981627, 0.190809, 86400, 86400),
(2090008, 0, 209, 1888.64, 977.75, 8.87679, -2.56563, 0.0, 0.0, 0.95882, -0.284015, 86400, 86400),
(2090009, 0, 209, 1890.27, 970.862, 9.01388, 2.56563, 0.0, 0.0, 0.95882, 0.284015, 86400, 86400),
(2090010, 0, 209, 1836.74, 1029.36, 9.62377, 0.942478, 0.0, 0.0, 0.45399, 0.891007, 86400, 86400),
(2090011, 0, 209, 1863.41, 1044.78, 8.87679, -1.71042, 0.0, 0.0, 0.75471, -0.656059, 86400, 86400),
(2090012, 0, 209, 1869.28, 1020.08, 8.87679, -0.488691, 0.0, 0.0, -0.241921, 0.970296, 86400, 86400),
(2090013, 0, 209, 1866.33, 1049.64, 9.01483, 1.11701, 0.0, 0.0, 0.529919, 0.848048, 86400, 86400),
(2090014, 0, 209, 1887.46, 967.143, 8.98506, -0.314158, 0.0, 0.0, -0.156434, 0.987688, 86400, 86400),
(2090015, 0, 209, 1879.89, 974.651, 8.87679, 1.0472, 0.0, 0.0, 0.5, 0.866025, 86400, 86400),
(2090016, 0, 209, 1876.44, 972.207, 9.91169, 2.84488, 0.0, 0.0, 0.989016, 0.147811, 86400, 86400),
(2090017, 0, 209, 1882.7, 971.825, 8.87679, 0.994837, 0.0, 0.0, 0.477159, 0.878817, 86400, 86400),
(2090018, 0, 209, 1839.42, 1023.49, 9.56256, 2.98451, 0.0, 0.0, 0.996917, 0.0784591, 86400, 86400),
(2090019, 0, 209, 1861.12, 1019.39, 8.87679, -1.18682, 0.0, 0.0, 0.559193, -0.829037, 86400, 86400),
(2090020, 0, 209, 1866.24, 1008.4, 8.87679, 0.663225, 0.0, 0.0, 0.325568, 0.945519, 86400, 86400),
(2090021, 0, 209, 1865.03, 1012.49, 8.8768, 1.0472, 0.0, 0.0, 0.5, 0.866025, 86400, 86400),
(2090022, 0, 209, 1890.12, 989.759, 8.87679, 2.70526, 0.0, 0.0, 0.976296, 0.21644, 86400, 86400),
(2090023, 0, 209, 1894.39, 977.006, 8.92631, -0.279253, 0.0, 0.0, 0.139173, -0.990268, 86400, 86400),
(2090024, 0, 209, 1871.86, 994.256, 8.8819, 0.506145, 0.0, 0.0, 0.25038, 0.968148, 86400, 86400),
(2090025, 0, 209, 1871.3, 1008.32, 8.87679, 1.0821, 0.0, 0.0, 0.515038, 0.857167, 86400, 86400),
(2090026, 0, 209, 1832.72, 1032.39, 9.45168, 0.575959, 0.0, 0.0, 0.284015, 0.95882, 86400, 86400),
(2090027, 0, 209, 1841.08, 1045.54, 9.21622, 3.05433, 0.0, 0.0, 0.999048, 0.0436195, 86400, 86400),
(2090028, 0, 209, 1852.41, 1024.78, 8.87679, -2.49582, 0.0, 0.0, 0.948324, -0.317305, 86400, 86400),
(2090029, 0, 209, 1843.19, 1041.16, 8.87679, -0.401426, 0.0, 0.0, 0.199368, -0.979925, 86400, 86400),
(2090030, 0, 209, 1841.82, 1027.76, 9.15097, 0.959931, 0.0, 0.0, 0.461749, 0.887011, 86400, 86400),
(2090031, 0, 209, 1839.18, 1036.88, 9.35239, -1.67552, 0.0, 0.0, 0.743145, -0.669131, 86400, 86400),
(2090032, 0, 209, 1845.54, 1024.12, 9.07972, 0.977384, 0.0, 0.0, 0.469472, 0.882948, 86400, 86400),
(2090033, 0, 209, 1867.74, 1041.84, 8.8768, -0.436332, 0.0, 0.0, -0.216439, 0.976296, 86400, 86400),
(2090034, 0, 209, 1887.94, 1029.08, 9.14775, 0.855211, 0.0, 0.0, 0.414693, 0.909961, 86400, 86400),
(2090035, 0, 209, 1892.57, 1006.37, 9.06781, -2.1293, 0.0, 0.0, -0.874619, 0.48481, 86400, 86400),
(2090036, 0, 209, 1888.36, 1037.0, 8.92103, -1.98967, 0.0, 0.0, -0.83867, 0.54464, 86400, 86400),
(2090037, 0, 209, 1881.99, 1034.68, 8.87679, -0.453785, 0.0, 0.0, -0.224951, 0.97437, 86400, 86400),
(2090038, 0, 209, 1891.6, 1023.06, 9.37117, 2.79252, 0.0, 0.0, 0.984807, 0.173652, 86400, 86400),
(2090039, 0, 209, 1845.96, 1047.25, 8.87679, -0.453786, 0.0, 0.0, 0.224951, -0.97437, 86400, 86400),
(2090040, 0, 209, 1858.7, 1053.75, 8.87679, -2.74017, 0.0, 0.0, 0.979925, -0.199368, 86400, 86400),
(2090041, 0, 209, 1862.12, 1050.76, 9.05665, -2.3911, 0.0, 0.0, 0.930418, -0.366501, 86400, 86400),
(2090042, 0, 209, 1881.46, 1041.43, 8.87679, -2.19912, 0.0, 0.0, 0.891007, -0.45399, 86400, 86400),
(2090043, 0, 209, 1871.08, 1046.76, 9.03374, -2.16421, 0.0, 0.0, 0.882948, -0.469472, 86400, 86400),
(2090044, 0, 209, 1875.85, 1044.26, 9.07804, 0.855211, 0.0, 0.0, 0.414693, 0.909961, 86400, 86400);
-- Update values of existing GOs based on target database
UPDATE gameobject SET rotation2=0.740217, rotation3=0.672368 WHERE guid=2090045;
UPDATE gameobject SET rotation2=-0.978148, rotation3=0.207912 WHERE guid=2090046;
UPDATE gameobject SET orientation=-3.02813, rotation2=-0.998391, rotation3=0.0567022 WHERE guid=2090049;
UPDATE gameobject SET spawntimesecsmin=86400, spawntimesecsmax=86400 WHERE guid=2090050;
UPDATE gameobject SET rotation2=-1.0 WHERE guid=2090053;
UPDATE gameobject SET rotation3=0.51221 WHERE guid=2090054;
UPDATE gameobject SET orientation=0.671952 WHERE guid=2090055;

-- Adding missing GO spawn entries from target database
INSERT INTO gameobject_spawn_entry VALUES
(2090005, 128308),
(2090005, 128403),
(2090006, 128308),
(2090006, 128403),
(2090007, 128308),
(2090007, 128403),
(2090008, 128308),
(2090008, 128403),
(2090009, 128308),
(2090009, 128403),
(2090010, 128308),
(2090010, 128403),
(2090011, 128308),
(2090011, 128403),
(2090012, 128308),
(2090012, 128403),
(2090013, 128308),
(2090013, 128403),
(2090014, 128308),
(2090014, 128403),
(2090015, 128308),
(2090015, 128403),
(2090016, 128308),
(2090016, 128403),
(2090017, 128308),
(2090017, 128403),
(2090018, 128308),
(2090018, 128403),
(2090019, 128308),
(2090019, 128403),
(2090020, 128308),
(2090020, 128403),
(2090021, 128308),
(2090021, 128403),
(2090022, 128308),
(2090022, 128403),
(2090023, 128308),
(2090023, 128403),
(2090024, 128308),
(2090024, 128403),
(2090025, 128308),
(2090025, 128403),
(2090026, 128308),
(2090026, 128403),
(2090027, 128308),
(2090027, 128403),
(2090028, 128308),
(2090028, 128403),
(2090029, 128308),
(2090029, 128403),
(2090030, 128308),
(2090030, 128403),
(2090031, 128308),
(2090031, 128403),
(2090032, 128308),
(2090032, 128403),
(2090033, 128308),
(2090033, 128403),
(2090034, 128308),
(2090034, 128403),
(2090035, 128308),
(2090035, 128403),
(2090036, 128308),
(2090036, 128403),
(2090037, 128308),
(2090037, 128403),
(2090038, 128308),
(2090038, 128403),
(2090039, 128308),
(2090039, 128403),
(2090040, 128308),
(2090040, 128403),
(2090041, 128308),
(2090041, 128403),
(2090042, 128308),
(2090042, 128403),
(2090043, 128308),
(2090043, 128403),
(2090044, 128308),
(2090044, 128403);


-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
-- Blackrock Depths
-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

-- Update values of existing GOs based on target database
UPDATE gameobject SET orientation=-2.3562 WHERE guid=2300003;
UPDATE gameobject SET orientation=-2.3562 WHERE guid=2300004;
UPDATE gameobject SET orientation=-2.3562 WHERE guid=2300005;
UPDATE gameobject SET orientation=-2.3562 WHERE guid=2300006;
UPDATE gameobject SET orientation=-2.3562 WHERE guid=2300007;
UPDATE gameobject SET orientation=-2.3562 WHERE guid=2300008;
UPDATE gameobject SET orientation=-2.3562 WHERE guid=2300009;
UPDATE gameobject SET orientation=-2.3562 WHERE guid=2300010;
UPDATE gameobject SET orientation=-2.3562 WHERE guid=2300012;
UPDATE gameobject SET orientation=-2.3562 WHERE guid=2300013;
UPDATE gameobject SET orientation=-2.3562 WHERE guid=2300014;
UPDATE gameobject SET orientation=-2.3562 WHERE guid=2300015;
UPDATE gameobject SET orientation=-2.3562 WHERE guid=2300016;
UPDATE gameobject SET orientation=-2.3562 WHERE guid=2300017;
UPDATE gameobject SET orientation=2.3562 WHERE guid=2300033;
UPDATE gameobject SET orientation=-2.0944 WHERE guid=2300041;
UPDATE gameobject SET orientation=2.3562 WHERE guid=2300095;
UPDATE gameobject SET spawntimesecsmin=600, spawntimesecsmax=600 WHERE guid=2300096;
UPDATE gameobject SET orientation=-2.3562 WHERE guid=2300097;
UPDATE gameobject SET orientation=-2.60054, rotation2=0.96363, rotation3=-0.267238 WHERE guid=2300113;
UPDATE gameobject SET position_z=-49.7571, orientation=-2.63544 WHERE guid=2300114;
UPDATE gameobject SET orientation=-2.63544 WHERE guid=2300115;
UPDATE gameobject SET orientation=1.28634 WHERE guid=2300163;
UPDATE gameobject SET orientation=1.0821 WHERE guid=2300262;
UPDATE gameobject SET orientation=-2.3562 WHERE guid=2300268;
UPDATE gameobject SET orientation=-2.3562 WHERE guid=2300274;
UPDATE gameobject SET orientation=-2.3562 WHERE guid=2300275;
UPDATE gameobject SET orientation=-2.3562 WHERE guid=2300276;
UPDATE gameobject SET orientation=-2.3562 WHERE guid=2300277;
UPDATE gameobject SET orientation=-2.3562 WHERE guid=2300278;
UPDATE gameobject SET orientation=-2.3562 WHERE guid=2300279;
UPDATE gameobject SET orientation=-2.3562 WHERE guid=2300280;
UPDATE gameobject SET orientation=-3.08051, rotation3=-0.0305391 WHERE guid=2300302;
UPDATE gameobject SET orientation=-3.08051, rotation3=-0.0305391 WHERE guid=2300306;
UPDATE gameobject SET orientation=-3.08051, rotation3=-0.0305391 WHERE guid=2300307;
UPDATE gameobject SET orientation=-3.08051, rotation3=-0.0305391 WHERE guid=2300311;
UPDATE gameobject SET orientation=-3.08051, rotation3=-0.0305391 WHERE guid=2300312;
UPDATE gameobject SET orientation=-3.08051, rotation3=-0.0305391 WHERE guid=2300316;
UPDATE gameobject SET orientation=-2.0944 WHERE guid=2300425;
UPDATE gameobject SET orientation=-0.401426, rotation2=0.199368, rotation3=-0.979925 WHERE guid=2300460;
UPDATE gameobject SET orientation=2.96706, rotation2=0.996195, rotation3=0.0871558 WHERE guid=2300462;
UPDATE gameobject SET position_y=102.181, orientation=-1.18682, rotation2=0.559193, rotation3=-0.829037 WHERE guid=2300467;
UPDATE gameobject SET orientation=-1.72788, rotation2=0.760406, rotation3=-0.649448 WHERE guid=2300470;
UPDATE gameobject SET orientation=-2.75761 WHERE guid=2300471;
UPDATE gameobject SET orientation=-0.663223 WHERE guid=2300473;
UPDATE gameobject SET orientation=-1.23918 WHERE guid=2300479;
UPDATE gameobject SET position_y=-158.696 WHERE guid=2300481;
-- Update GUID of existing GOs that have different GUID in target database
-- 2300116 -> 2300117
UPDATE gameobject SET guid=2300117 WHERE guid=2300116;
-- 2300285 -> 2300118
UPDATE gameobject SET guid=2300118 WHERE guid=2300285;
-- 2300286 -> 2300122
UPDATE gameobject SET guid=2300122 WHERE guid=2300286;
-- Adding missing GOs from target database
DELETE FROM gameobject WHERE guid IN (2300455, 2300477);
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(2300116, 181074, 230, 595.293, -188.853, -54.1381, 0.191985, 0.0, 0.0, 0.0958452, 0.995396, -600, -600),
(2300119, 173232, 230, 860.409, 36.9705, -53.6437, 2.33874, 0.0, 0.0, 0.920505, 0.390732, 600, 600),
(2300120, 173232, 230, 709.659, 57.0049, -44.1391, 2.74016, 0.0, 0.0, 0.979924, 0.19937, 600, 600),
(2300121, 173232, 230, 1107.97, -156.909, -74.3595, 2.54818, 0.0, 0.0, 0.956305, 0.292372, 600, 600),
(2300123, 173234, 230, 631.133, -70.6022, -44.4505, -1.6057, 0.0, 0.0, -0.719339, 0.694659, 600, 600),
(2300124, 173234, 230, 686.841, -8.77618, -58.8389, 3.12412, 0.0, 0.0, 0.999962, 0.00873464, 600, 600),
(2300125, 173234, 230, 852.163, -327.889, -49.3661, 0.279252, 0.0, 0.0, 0.139173, 0.990268, 600, 600),
(2300455, 179552, 230, 841.297, 10.7487, -53.7327, 1.71042, 0.0, 0.0, 0.75471, 0.656059, 180, 180),
(2300477, 165658, 230, 1001.83, -395.972, -62.7024, 0.15708, 0.0, 0.0, 0.0784591, 0.996917, 604800, 604800);

-- Update pool gameobject entries to match target database
UPDATE pool_gameobject SET description='BRD - Dark Keeper Nameplate' WHERE guid=2300089;
UPDATE pool_gameobject SET description='BRD - Dark Keeper Nameplate' WHERE guid=2300090;
UPDATE pool_gameobject SET description='BRD - Dark Keeper Nameplate' WHERE guid=2300091;
UPDATE pool_gameobject SET description='BRD - Dark Keeper Nameplate' WHERE guid=2300092;
UPDATE pool_gameobject SET description='BRD - Dark Keeper Nameplate' WHERE guid=2300104;
UPDATE pool_gameobject SET description='BRD - Dark Keeper Nameplate' WHERE guid=2300105;
UPDATE pool_gameobject SET description='BRD - Dark Keeper Nameplate' WHERE guid=2300106;
UPDATE pool_gameobject SET description='BRD - Dark Keeper Nameplate' WHERE guid=2300107;
UPDATE pool_gameobject SET description='BRD - Dark Keeper Nameplate' WHERE guid=2300108;
UPDATE pool_gameobject SET description='BRD - Dark Keeper Nameplate' WHERE guid=2300109;
UPDATE pool_gameobject SET description='BRD - Dark Keeper Nameplate' WHERE guid=2300110;
UPDATE pool_gameobject SET description='BRD - Dark Keeper Nameplate' WHERE guid=2300111;

-- Update pool pool entries to match target database
UPDATE pool_pool SET mother_pool=46328, description="BRD - Dark Keeper Nameplate" WHERE pool_id=46302;
UPDATE pool_pool SET mother_pool=46328, description="BRD - Dark Keeper Nameplate" WHERE pool_id=46303;
UPDATE pool_pool SET mother_pool=46328, description="BRD - Dark Keeper Nameplate" WHERE pool_id=46304;
UPDATE pool_pool SET mother_pool=46328, description="BRD - Dark Keeper Nameplate" WHERE pool_id=46305;
UPDATE pool_pool SET mother_pool=46328, description="BRD - Dark Keeper Nameplate" WHERE pool_id=46306;
UPDATE pool_pool SET mother_pool=46328, description="BRD - Dark Keeper Nameplate" WHERE pool_id=46301;

-- Update pool pool entries for mother pools to match target database
UPDATE pool_template SET entry=46328, description="BRD - Master Dark Keeper Nameplate Pool" WHERE entry=15013;


-- Final cleanup
DELETE FROM pool_gameobject WHERE pool_entry NOT IN (SELECT entry FROM pool_template);
DELETE FROM pool_gameobject WHERE guid NOT IN (SELECT guid FROM gameobject);
DELETE FROM pool_pool WHERE pool_id NOT IN (SELECT entry FROM pool_template);
