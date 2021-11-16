-- ####################################
-- GAMEOBJECTS AND POOLS MIGRATION
-- ####################################


-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
-- Durotar
-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

-- Adding missing GOs from target database
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(300192, 106318, 1, 555.007, -4266.48, 16.5141, 4.24115, 0.0, 0.0, -0.85264, 0.522499, 300, 900),
(300212, 106318, 1, 1485.68, -4739.94, -4.47406, 0.104719, 0.0, 0.0, 0.0523357, 0.99863, 300, 900),
(300213, 106318, 1, 1488.48, -4752.36, 21.0269, 1.3439, 0.0, 0.0, 0.622514, 0.782609, 300, 900);
-- Update values of existing GOs based on target database
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=12396;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=12499;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=12500;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=12503;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=12504;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=12546;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=12547;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=12548;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=12552;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=12600;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=12603;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=12611;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=12637;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85739;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85740;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85741;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85742;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85743;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85744;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85748;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85749;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85750;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85753;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85754;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85755;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85757;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85758;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85760;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85768;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85769;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85815;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85829;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85881;

-- Insert missing pool gameobject entries from target database
INSERT INTO pool_gameobject VALUES
(300192, 31230, 0.0, 'Durotar - Battered Chest (106318)'),
(300212, 31233, 0.0, 'Durotar (Skull Rock) - Battered Chest (106318)'),
(300213, 31233, 0.0, 'Durotar (Skull Rock) - Battered Chest (106318)');

-- Update pool gameobject entries to match target database
UPDATE pool_gameobject SET pool_entry=31226 WHERE guid=12396;
UPDATE pool_gameobject SET pool_entry=31227 WHERE guid=12499;
UPDATE pool_gameobject SET pool_entry=31228 WHERE guid=12500;
UPDATE pool_gameobject SET pool_entry=31229 WHERE guid=12503;
UPDATE pool_gameobject SET pool_entry=31230 WHERE guid=12504;
UPDATE pool_gameobject SET pool_entry=31231 WHERE guid=12546;
UPDATE pool_gameobject SET pool_entry=31232 WHERE guid=12547;
UPDATE pool_gameobject SET pool_entry=31233 WHERE guid=12548;
UPDATE pool_gameobject SET pool_entry=31227 WHERE guid=12552;
UPDATE pool_gameobject SET pool_entry=31232 WHERE guid=12603;
UPDATE pool_gameobject SET pool_entry=31234 WHERE guid=12611;
UPDATE pool_gameobject SET pool_entry=31235 WHERE guid=12637;

-- Update pool template entries to match target database
UPDATE pool_template SET entry=31226 WHERE entry=40157;
UPDATE pool_template SET entry=31227 WHERE entry=40158;
UPDATE pool_template SET entry=31228 WHERE entry=40159;
UPDATE pool_template SET entry=31229 WHERE entry=40160;
UPDATE pool_template SET entry=31230 WHERE entry=40161;
UPDATE pool_template SET entry=31231 WHERE entry=40162;
UPDATE pool_template SET entry=31232 WHERE entry=40163;
UPDATE pool_template SET entry=31233 WHERE entry=40164;
UPDATE pool_template SET entry=31234 WHERE entry=40165;
UPDATE pool_template SET entry=31235 WHERE entry=40166;

-- Update pool pool entries to match target database
UPDATE pool_pool SET pool_id=31226 WHERE pool_id=40157;
UPDATE pool_pool SET pool_id=31227 WHERE pool_id=40158;
UPDATE pool_pool SET pool_id=31228 WHERE pool_id=40159;
UPDATE pool_pool SET pool_id=31229 WHERE pool_id=40160;
UPDATE pool_pool SET pool_id=31230 WHERE pool_id=40161;
UPDATE pool_pool SET pool_id=31231 WHERE pool_id=40162;
UPDATE pool_pool SET pool_id=31232 WHERE pool_id=40163;
UPDATE pool_pool SET pool_id=31233 WHERE pool_id=40164;
UPDATE pool_pool SET pool_id=31234 WHERE pool_id=40165;
UPDATE pool_pool SET pool_id=31235 WHERE pool_id=40166;

-- Update pool pool entries for mother pools to match target database
UPDATE pool_template SET max_limit=11, description="Durotar - Master Chest Pool" WHERE entry=39901;

-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
-- Dustwallow Marsh
-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

-- Adding missing GOs from target database
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(300100, 4149, 1, -4606.16, -3779.07, 38.6056, 3.14159, 0.0, 0.0, -1.0, 0.0, 300, 900),
(300111, 2857, 1, -2668.7, -4211.17, 0.174256, 3.01941, 0.0, 0.0, 0.998135, 0.0610518, 300, 900);
-- Update values of existing GOs based on target database
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=9096;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=11755;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=13632;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=14618;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=14619;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=14931;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=40758;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=40772;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=55948;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=55951;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85734;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=40796;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85706;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85709;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85714;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85718;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85721;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85722;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85735;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85864;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=87386;
-- Update GUID of existing GOs that have different GUID in target database
-- 55825 -> 55802
UPDATE gameobject SET guid=55802, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=55825;
UPDATE pool_gameobject SET guid=55802 WHERE guid=55825;
-- 190329 -> 55803
UPDATE gameobject SET guid=55803, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=190329;
UPDATE pool_gameobject SET guid=55803, pool_entry=31052 WHERE guid=190329;
-- 190330 -> 55805
UPDATE gameobject SET guid=55805, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=190330;
UPDATE pool_gameobject SET guid=55805, pool_entry=31051 WHERE guid=190330;
-- 190331 -> 55806
UPDATE gameobject SET guid=55806, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=190331;
UPDATE pool_gameobject SET guid=55806, pool_entry=31049 WHERE guid=190331;
-- 190332 -> 55807
UPDATE gameobject SET guid=55807, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=190332;
UPDATE pool_gameobject SET guid=55807, pool_entry=31049 WHERE guid=190332;
-- 190333 -> 55808
UPDATE gameobject SET guid=55808, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=190333;
UPDATE pool_gameobject SET guid=55808, pool_entry=31051 WHERE guid=190333;
-- 190334 -> 55809
UPDATE gameobject SET guid=55809, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=190334;
UPDATE pool_gameobject SET guid=55809, pool_entry=31053 WHERE guid=190334;

-- Insert missing pool gameobject entries from target database
INSERT INTO pool_gameobject VALUES
(300100, 31274, 0.0, 'Dustwallow Marsh (Wyrmbog) - Solid Chest (4149)'),
(300111, 31048, 0.0, 'Dustwallow Marsh (Dreadmurk Shore) - Solid Chest (2857)');

-- Update pool gameobject entries to match target database
UPDATE pool_gameobject SET pool_entry=31048 WHERE guid=9096;
UPDATE pool_gameobject SET pool_entry=31048 WHERE guid=11755;
UPDATE pool_gameobject SET pool_entry=31048 WHERE guid=13632;
UPDATE pool_gameobject SET pool_entry=31049 WHERE guid=14619;
UPDATE pool_gameobject SET pool_entry=31049 WHERE guid=14931;
UPDATE pool_gameobject SET pool_entry=31051 WHERE guid=40772;
UPDATE pool_gameobject SET pool_entry=31048 WHERE guid=55948;
UPDATE pool_gameobject SET pool_entry=31054 WHERE guid=55951;

-- Update pool template entries to match target database
UPDATE pool_template SET entry=31048 WHERE entry=39976;
UPDATE pool_template SET entry=31049 WHERE entry=39977;
UPDATE pool_template SET entry=31051 WHERE entry=39979;
UPDATE pool_template SET entry=31054 WHERE entry=39982;

-- Update pool pool entries to match target database
UPDATE pool_pool SET pool_id=31048 WHERE pool_id=39976;
UPDATE pool_pool SET pool_id=31049 WHERE pool_id=39977;
UPDATE pool_pool SET pool_id=31051 WHERE pool_id=39979;
UPDATE pool_pool SET pool_id=31054 WHERE pool_id=39982;

-- Update pool pool entries for mother pools to match target database
UPDATE pool_template SET max_limit=10, description="Dustwallow Marsh - Master Chest Pool" WHERE entry=39922;

-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
-- Azshara
-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

-- Adding missing GOs from target database
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(300226, 153453, 1, 2754.89, -5400.19, 116.273, 5.81195, 0.0, 0.0, -0.233445, 0.97237, 300, 900),
(300237, 153453, 1, 4301.38, -7222.64, 24.7146, 1.27409, 0.0, 0.0, 0.594822, 0.803857, 300, 900),
(300238, 153453, 1, 4376.94, -6132.56, 122.385, 1.8675, 0.0, 0.0, 0.803857, 0.594823, 300, 900),
(300239, 153453, 1, 4459.83, -5529.17, 109.138, 4.57276, 0.0, 0.0, -0.754709, 0.656059, 300, 900);
-- Update values of existing GOs based on target database
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=45497;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=48362;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=48363;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=48364;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=48365;
UPDATE gameobject SET orientation=0.0174533, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=48366;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=48367;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=48368;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=48369;
UPDATE gameobject SET rotation2=-0.930417, rotation3=0.366502, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=48370;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=48371;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=55954;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=55955;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=55956;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=55957;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85778;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85785;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=170074;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85786;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85788;
-- Update GUID of existing GOs that have different GUID in target database
-- 190335 -> 55813
UPDATE gameobject SET guid=55813, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=190335;
UPDATE pool_gameobject SET guid=55813, pool_entry=31063 WHERE guid=190335;

-- Insert missing pool gameobject entries from target database
INSERT INTO pool_gameobject VALUES
(300226, 31059, 0.0, 'Azshara (Lake Mennar) - Solid Chest (153453)'),
(300237, 31336, 0.0, 'Azshara (The Shattered Strand) - Solid Chest (153453)'),
(300238, 31337, 0.0, 'Azshara (Thalassian Base Camp) - Solid Chest (153453)'),
(300239, 31061, 0.0, 'Azshara (Ursolan) - Solid Chest (153453)');

-- Update pool gameobject entries to match target database
UPDATE pool_gameobject SET pool_entry=31059 WHERE guid=45497;
UPDATE pool_gameobject SET pool_entry=31055 WHERE guid=48362;
UPDATE pool_gameobject SET pool_entry=31056 WHERE guid=48363;
UPDATE pool_gameobject SET pool_entry=31057 WHERE guid=48364;
UPDATE pool_gameobject SET pool_entry=31056 WHERE guid=48365;
UPDATE pool_gameobject SET pool_entry=31055 WHERE guid=48366;
UPDATE pool_gameobject SET pool_entry=31058 WHERE guid=48367;
UPDATE pool_gameobject SET pool_entry=31059 WHERE guid=48368;
UPDATE pool_gameobject SET pool_entry=31060 WHERE guid=48369;
UPDATE pool_gameobject SET pool_entry=31061 WHERE guid=48370;
UPDATE pool_gameobject SET pool_entry=31062 WHERE guid=48371;
UPDATE pool_gameobject SET pool_entry=31055 WHERE guid=55954;
UPDATE pool_gameobject SET pool_entry=31056 WHERE guid=55955;
UPDATE pool_gameobject SET pool_entry=31064 WHERE guid=55956;
UPDATE pool_gameobject SET pool_entry=31062 WHERE guid=55957;
UPDATE pool_gameobject SET pool_entry=31055 WHERE guid=170074;

-- Update pool template entries to match target database
UPDATE pool_template SET entry=31059 WHERE entry=39987;
UPDATE pool_template SET entry=31055 WHERE entry=39983;
UPDATE pool_template SET entry=31056 WHERE entry=39984;
UPDATE pool_template SET entry=31057 WHERE entry=39985;
UPDATE pool_template SET entry=31058 WHERE entry=39986;
UPDATE pool_template SET entry=31060 WHERE entry=39988;
UPDATE pool_template SET entry=31061 WHERE entry=39989;
UPDATE pool_template SET entry=31062 WHERE entry=39990;
UPDATE pool_template SET entry=31064 WHERE entry=39992;

-- Update pool pool entries to match target database
UPDATE pool_pool SET pool_id=31059 WHERE pool_id=39987;
UPDATE pool_pool SET pool_id=31055 WHERE pool_id=39983;
UPDATE pool_pool SET pool_id=31056 WHERE pool_id=39984;
UPDATE pool_pool SET pool_id=31057 WHERE pool_id=39985;
UPDATE pool_pool SET pool_id=31058 WHERE pool_id=39986;
UPDATE pool_pool SET pool_id=31060 WHERE pool_id=39988;
UPDATE pool_pool SET pool_id=31061 WHERE pool_id=39989;
UPDATE pool_pool SET pool_id=31062 WHERE pool_id=39990;
UPDATE pool_pool SET pool_id=31064 WHERE pool_id=39992;

-- Update pool pool entries for mother pools to match target database
UPDATE pool_template SET max_limit=14, description="Azshara - Master Chest Pool" WHERE entry=39929;

-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
-- The Barrens
-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

-- Adding missing GOs from target database
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(300102, 0, 1, -4084.18, -2386.98, 124.743, 3.71755, 0.0, 0.0, -0.958819, 0.284016, 300, 900),
(300103, 0, 1, -4049.89, -2390.31, 126.13, 3.00195, 0.0, 0.0, 0.997563, 0.0697661, 300, 900),
(300104, 2850, 1, -4010.15, -1747.43, 97.6985, 0.191985, 0.0, 0.0, 0.0958452, 0.995396, 300, 900),
(300114, 111095, 1, -2214.52, -3689.79, 93.4471, 5.49779, 0.0, 0.0, -0.382683, 0.92388, 300, 900),
(300116, 3689, 1, -2120.48, -3896.26, -10.2095, 1.0472, 0.0, 0.0, 0.5, 0.866025, 300, 900),
(300117, 2849, 1, -2109.41, -1719.49, 91.7509, 2.94959, 0.0, 0.0, 0.995396, 0.0958512, 300, 900),
(300118, 111095, 1, -2101.53, -3646.35, 61.716, 0.0523589, 0.0, 0.0, 0.0261765, 0.999657, 300, 900),
(300120, 2849, 1, -2030.24, -1970.71, 91.6668, 0.383971, 0.0, 0.0, 0.190808, 0.981627, 300, 900),
(300121, 111095, 1, -2009.53, -3600.92, 21.7593, 3.56047, 0.0, 0.0, -0.978148, 0.207912, 300, 900),
(300122, 3689, 1, -2008.18, -3819.33, -9.58786, 2.49582, 0.0, 0.0, 0.948323, 0.317306, 300, 900),
(300128, 2849, 1, -1855.86, -1936.17, 92.8053, 3.4383, 0.0, 0.0, -0.989016, 0.147811, 300, 900),
(300129, 3689, 1, -1850.05, -3819.51, -6.28771, 5.02655, 0.0, 0.0, -0.587785, 0.809017, 300, 900),
(300132, 3689, 1, -1778.77, -3946.77, -5.78729, 0.418879, 0.0, 0.0, 0.207912, 0.978148, 300, 900),
(300133, 106319, 1, -1710.46, -3836.71, 11.2646, 0.558504, 0.0, 0.0, 0.275637, 0.961262, 300, 900),
(300137, 0, 1, -1574.72, -3902.17, 12.9352, 3.59538, 0.0, 0.0, -0.97437, 0.224951, 300, 900),
(300138, 0, 1, -1568.41, -3894.21, 14.4994, 0.401425, 0.0, 0.0, 0.199367, 0.979925, 300, 900),
(300141, 106319, 1, -1505.74, -3811.72, 23.4231, 5.65487, 0.0, 0.0, -0.309016, 0.951057, 300, 900),
(300142, 0, 1, -1493.29, -3815.57, 24.6679, 5.86431, 0.0, 0.0, -0.207912, 0.978148, 300, 900),
(300143, 3689, 1, -1476.84, -3908.77, -0.348957, 4.03171, 0.0, 0.0, -0.902585, 0.430512, 300, 900),
(300144, 0, 1, -1443.09, -3652.76, 92.2653, 5.42798, 0.0, 0.0, -0.414693, 0.909962, 300, 900),
(300145, 0, 1, -1441.32, -3645.93, 92.1507, 1.11701, 0.0, 0.0, 0.529919, 0.848048, 300, 900),
(300146, 106319, 1, -1385.64, -2732.88, 91.6845, 4.03171, 0.0, 0.0, -0.902585, 0.430512, 300, 900),
(300148, 0, 1, -1360.28, -3913.57, 9.11687, 1.37881, 0.0, 0.0, 0.636078, 0.771625, 300, 900),
(300150, 106319, 1, -1296.6, -2839.76, 93.7541, 0.872664, 0.0, 0.0, 0.422618, 0.906308, 300, 900),
(300151, 3689, 1, -1278.59, -3934.92, -10.439, 4.2237, 0.0, 0.0, -0.857167, 0.515038, 300, 900),
(300154, 3689, 1, -1136.38, -4072.17, -87.6331, 5.21854, 0.0, 0.0, -0.507538, 0.861629, 300, 900),
(300156, 106319, 1, -1123.9, -2786.77, 91.6816, 0.0698117, 0.0, 0.0, 0.0348988, 0.999391, 300, 900),
(300160, 3689, 1, -1037.3, -3923.91, -73.2812, 1.37881, 0.0, 0.0, 0.636078, 0.771625, 300, 900),
(300161, 3689, 1, -1035.84, -3986.77, -75.3307, 5.8294, 0.0, 0.0, -0.224951, 0.97437, 300, 900),
(300162, 106319, 1, -1010.49, -2335.26, 91.6865, 1.44862, 0.0, 0.0, 0.66262, 0.748956, 300, 900),
(300171, 3661, 1, -483.763, -2601.68, 127.867, 4.2237, 0.0, 0.0, -0.857167, 0.515038, 300, 900),
(300175, 3661, 1, -332.152, -2559.53, 95.7875, 2.19912, 0.0, 0.0, 0.891007, 0.453991, 300, 900),
(300176, 106319, 1, -245.361, -3332.41, 92.4171, 4.08407, 0.0, 0.0, -0.891007, 0.453991, 300, 900),
(300178, 106319, 1, -175.803, -1799.15, 91.6667, 6.0912, 0.0, 0.0, -0.0958452, 0.995396, 300, 900),
(300182, 106319, 1, -52.4683, -1644.28, 91.6667, 0.0, 0.0, 0.0, 0.0, 1.0, 300, 900),
(300191, 2849, 1, 532.814, -1432.29, 91.6667, 4.95674, 0.0, 0.0, -0.615661, 0.788011, 300, 900),
(300196, 106319, 1, 892.032, -2694.98, 100.275, 3.26377, 0.0, 0.0, -0.998135, 0.0610518, 300, 900),
(300202, 106319, 1, 1019.25, -3119.55, 80.7686, 2.09439, 0.0, 0.0, 0.866025, 0.500001, 300, 900),
(300211, 2849, 1, 1427.23, -3411.86, 91.7705, 1.37881, 0.0, 0.0, 0.636078, 0.771625, 300, 900);
-- Update values of existing GOs based on target database
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=13066;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=13068;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=13071;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=13073;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=13074;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=13079;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=13327;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=13338;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=13339;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=13345;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=13346;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=13347;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=13348;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=13349;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=13528;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=15748;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=55943;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=55946;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=55953;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=55958;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85890;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85901;
UPDATE gameobject SET id=0, rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=13305;
UPDATE gameobject SET id=0, rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=13309;
UPDATE gameobject SET rotation2=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=13310;
UPDATE gameobject SET id=0, rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=13435;
UPDATE gameobject SET id=0, rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=13438;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=13439;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85777;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85836;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85837;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85842;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85891;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85892;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=300048;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=300049;

-- Adding missing GO spawn entries from target database
INSERT INTO gameobject_spawn_entry VALUES
(13305, 3660),
(13305, 3661),
(13309, 3660),
(13309, 3661),
(13435, 3689),
(13435, 3702),
(13438, 3689),
(13438, 3702),
(300102, 3689),
(300102, 3702),
(300103, 3689),
(300103, 3702),
(300137, 3660),
(300137, 3661),
(300138, 3660),
(300138, 3661),
(300142, 3660),
(300142, 3661),
(300144, 3660),
(300144, 3661),
(300145, 3660),
(300145, 3661),
(300148, 3660),
(300148, 3661);

-- Insert missing pool gameobject entries from target database
INSERT INTO pool_gameobject VALUES
(300102, 31320, 0.0, 'The Barrens (Bael''dun Keep) - Weapon/Armor Crate (3689,3702)'),
(300103, 31320, 0.0, 'The Barrens (Bael''dun Keep) - Weapon/Armor Crate (3689,3702)'),
(300104, 31216, 0.0, 'The Barrens (Blackthorn Ridge) - Solid Chest (2850)'),
(300114, 31317, 0.0, 'The Barrens (Northwatch Hold) - Tattered Chest (111095)'),
(300116, 31317, 0.0, 'The Barrens (Northwatch Hold) - Weapon Crate (3689)'),
(300117, 31213, 0.0, 'The Barrens (Agama''gor) - Battered Chest (2849)'),
(300118, 31317, 0.0, 'The Barrens (Northwatch Hold) - Tattered Chest (111095)'),
(300120, 31213, 0.0, 'The Barrens (Agama''gor) - Battered Chest (2849)'),
(300121, 31317, 0.0, 'The Barrens (Northwatch Hold) - Tattered Chest (111095)'),
(300122, 31317, 0.0, 'The Barrens (Northwatch Hold) - Weapon Crate (3689)'),
(300128, 31213, 0.0, 'The Barrens (Agama''gor) - Battered Chest (2849)'),
(300129, 31225, 0.0, 'The Barrens (The Merchant Coast) - Weapon Crate (3689)'),
(300132, 31225, 0.0, 'The Barrens (The Merchant Coast) - Weapon Crate (3689)'),
(300133, 31225, 0.0, 'The Barrens (The Merchant Coast) - Battered Chest (106319)'),
(300137, 31225, 0.0, 'The Barrens (The Merchant Coast) - Armor/Weapon Crate (3660,3661)'),
(300138, 31225, 0.0, 'The Barrens (The Merchant Coast) - Armor/Weapon Crate (3660,3661)'),
(300141, 31225, 0.0, 'The Barrens (The Merchant Coast) - Battered Chest (106319)'),
(300142, 31225, 0.0, 'The Barrens (The Merchant Coast) - Armor/Weapon Crate (3660,3661)'),
(300143, 31225, 0.0, 'The Barrens (The Merchant Coast) - Weapon Crate (3689)'),
(300144, 31221, 0.0, 'The Barrens - Armor/Weapon Crate (3660,3661)'),
(300145, 31221, 0.0, 'The Barrens - Armor/Weapon Crate (3660,3661)'),
(300146, 31221, 0.0, 'The Barrens - Battered Chest (106319)'),
(300148, 31225, 0.0, 'The Barrens (The Merchant Coast) - Armor/Weapon Crate (3660,3661)'),
(300150, 31220, 0.0, 'The Barrens (The Stagnant Oasis) - Battered Chest (106319)'),
(300151, 31331, 0.0, 'The Barrens (The Tidus Stair) - Weapon Crate (3689)'),
(300154, 31225, 0.0, 'The Barrens (The Merchant Coast) - Weapon Crate (3689)'),
(300156, 31221, 0.0, 'The Barrens - Battered Chest (106319)'),
(300160, 31225, 0.0, 'The Barrens (The Merchant Coast) - Weapon Crate (3689)'),
(300161, 31225, 0.0, 'The Barrens (The Merchant Coast) - Weapon Crate (3689)'),
(300162, 31221, 0.0, 'The Barrens - Battered Chest (106319)'),
(300171, 31341, 0.0, 'The Barrens (The Crossroads & Ratchet) - Weapon Crate (3661)'),
(300175, 31341, 0.0, 'The Barrens (The Crossroads & Ratchet) - Weapon Crate (3661)'),
(300176, 31224, 0.0, 'The Barrens (Thorn Hill) - Battered Chest (106319)'),
(300178, 31221, 0.0, 'The Barrens - Battered Chest (106319)'),
(300182, 31221, 0.0, 'The Barrens - Battered Chest (106319)'),
(300191, 31212, 0.0, 'The Barrens (The Dry Hills) - Battered Chest (2849)'),
(300196, 31221, 0.0, 'The Barrens - Battered Chest (106319)'),
(300202, 31318, 0.0, 'The Barrens (The Sludge Fen) - Battered Chest (106319)'),
(300211, 31215, 0.0, 'The Barrens (Boulder Lode Mine) - Battered Chest (2849)');

-- Update pool gameobject entries to match target database
UPDATE pool_gameobject SET pool_entry=31212 WHERE guid=13066;
UPDATE pool_gameobject SET pool_entry=31213 WHERE guid=13068;
UPDATE pool_gameobject SET pool_entry=31213 WHERE guid=13071;
UPDATE pool_gameobject SET pool_entry=31214 WHERE guid=13073;
UPDATE pool_gameobject SET pool_entry=31215 WHERE guid=13074;
UPDATE pool_gameobject SET pool_entry=31216 WHERE guid=13079;
UPDATE pool_gameobject SET pool_entry=31219 WHERE guid=13327;
UPDATE pool_gameobject SET pool_entry=31220 WHERE guid=13338;
UPDATE pool_gameobject SET pool_entry=31221 WHERE guid=13339;
UPDATE pool_gameobject SET pool_entry=31222 WHERE guid=13345;
UPDATE pool_gameobject SET pool_entry=31221 WHERE guid=13346;
UPDATE pool_gameobject SET pool_entry=31223 WHERE guid=13347;
UPDATE pool_gameobject SET pool_entry=31224 WHERE guid=13348;
UPDATE pool_gameobject SET pool_entry=31225 WHERE guid=13349;
UPDATE pool_gameobject SET pool_entry=31214 WHERE guid=55943;
UPDATE pool_gameobject SET pool_entry=31214 WHERE guid=55946;
UPDATE pool_gameobject SET pool_entry=31221 WHERE guid=55953;
UPDATE pool_gameobject SET pool_entry=31225, description='The Barrens (The Merchant Coast) - Armor/Weapon Crate (3660,3661)' WHERE guid=13305;
UPDATE pool_gameobject SET pool_entry=31221, description='The Barrens - Armor/Weapon Crate (3660,3661)' WHERE guid=13309;
UPDATE pool_gameobject SET pool_entry=31341, description='The Barrens (The Crossroads & Ratchet) - Weapon Crate (3661)' WHERE guid=13310;
UPDATE pool_gameobject SET description='The Barrens (Bael''dun Keep) - Weapon/Armor Crate (3689,3702)' WHERE guid=13435;
UPDATE pool_gameobject SET description='The Barrens (Bael''dun Keep) - Weapon/Armor Crate (3689,3702)' WHERE guid=13438;
UPDATE pool_gameobject SET pool_entry=31225, description='The Barrens (The Merchant Coast) - Weapon Crate (3689)' WHERE guid=13439;
UPDATE pool_gameobject SET pool_entry=31341, description='The Barrens (The Crossroads & Ratchet) - Weapon Crate (3689)' WHERE guid=300048;

-- Update pool template entries to match target database
UPDATE pool_template SET entry=31212 WHERE entry=40143;
UPDATE pool_template SET entry=31213 WHERE entry=40144;
UPDATE pool_template SET entry=31214 WHERE entry=40145;
UPDATE pool_template SET entry=31215 WHERE entry=40146;
UPDATE pool_template SET entry=31216 WHERE entry=40147;
UPDATE pool_template SET entry=31219 WHERE entry=40150;
UPDATE pool_template SET entry=31220 WHERE entry=40151;
UPDATE pool_template SET entry=31221 WHERE entry=40152;
UPDATE pool_template SET entry=31222 WHERE entry=40153;
UPDATE pool_template SET entry=31223 WHERE entry=40154;
UPDATE pool_template SET entry=31224 WHERE entry=40155;
UPDATE pool_template SET entry=31225 WHERE entry=40156;

-- Add missing pool pools from target database
INSERT INTO pool_pool VALUES
(31225, 39910, 0.0, 'The Barrens (The Merchant Coast) - Chest Pool'),
(31221, 39910, 0.0, 'The Barrens - Chest Pool');

-- Update pool pool entries to match target database
UPDATE pool_pool SET pool_id=31212 WHERE pool_id=40143;
UPDATE pool_pool SET pool_id=31213 WHERE pool_id=40144;
UPDATE pool_pool SET pool_id=31214 WHERE pool_id=40145;
UPDATE pool_pool SET pool_id=31215 WHERE pool_id=40146;
UPDATE pool_pool SET pool_id=31216 WHERE pool_id=40147;
UPDATE pool_pool SET pool_id=31219 WHERE pool_id=40150;
UPDATE pool_pool SET pool_id=31220 WHERE pool_id=40151;
UPDATE pool_pool SET pool_id=31222 WHERE pool_id=40153;
UPDATE pool_pool SET pool_id=31223 WHERE pool_id=40154;
UPDATE pool_pool SET pool_id=31224 WHERE pool_id=40155;

-- Update pool pool entries for mother pools to match target database
UPDATE pool_template SET max_limit=20, description="Barrens - Master Chest Pool" WHERE entry=39910;

-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
-- Teldrassil
-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

-- Adding missing GOs from target database
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(300014, 2843, 1, 10908.4, 977.762, 1338.32, 2.82743, 0.0, 0.0, 0.987688, 0.156436, 300, 900),
(300252, 106318, 1, 9730.49, 1576.73, 1269.44, 3.07177, 0.0, 0.0, 0.999391, 0.0349061, 300, 900),
(300253, 106318, 1, 9800.56, 1581.16, 1291.2, 5.65487, 0.0, 0.0, -0.309016, 0.951057, 300, 900),
(300254, 106318, 1, 9831.43, 1533.49, 1257.51, 1.36136, 0.0, 0.0, 0.62932, 0.777146, 300, 900),
(300255, 106318, 1, 10620.3, 2089.35, 1336.54, 4.7822, 0.0, 0.0, -0.681998, 0.731354, 300, 900),
(300256, 106318, 1, 10751.3, 2214.47, 1331.51, 4.69494, 0.0, 0.0, -0.71325, 0.70091, 300, 900),
(300257, 106318, 1, 10890.4, 1968.21, 1321.79, 4.95674, 0.0, 0.0, -0.615661, 0.788011, 300, 900);
-- Update values of existing GOs based on target database
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=49621;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=49622;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=49623;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=49624;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=49625;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=49626;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=49627;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=49628;
-- Update GUID of existing GOs that have different GUID in target database
-- 105317 -> 55810
UPDATE gameobject SET guid=55810, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=105317;
UPDATE pool_gameobject SET guid=55810, pool_entry=31268 WHERE guid=105317;
-- 1090068 -> 300013
UPDATE gameobject SET guid=300013, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=1090068;
UPDATE pool_gameobject SET guid=300013, pool_entry=31004 WHERE guid=1090068;
-- 1090070 -> 300015
UPDATE gameobject SET guid=300015, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=1090070;
UPDATE pool_gameobject SET guid=300015, pool_entry=31004 WHERE guid=1090070;
-- 1090071 -> 300016
UPDATE gameobject SET guid=300016, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=1090071;
UPDATE pool_gameobject SET guid=300016, pool_entry=31004 WHERE guid=1090071;
-- 1090072 -> 300017
UPDATE gameobject SET guid=300017, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=1090072;
UPDATE pool_gameobject SET guid=300017, pool_entry=31005 WHERE guid=1090072;
-- 1090073 -> 300018
UPDATE gameobject SET guid=300018, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=1090073;
UPDATE pool_gameobject SET guid=300018, pool_entry=31005 WHERE guid=1090073;
-- 1090074 -> 300019
UPDATE gameobject SET guid=300019, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=1090074;
UPDATE pool_gameobject SET guid=300019, pool_entry=31005 WHERE guid=1090074;
-- 1090083 -> 300028
UPDATE gameobject SET guid=300028, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=1090083;
UPDATE pool_gameobject SET guid=300028, pool_entry=31005 WHERE guid=1090083;

-- List of GOs that exist in Classic database but have no match in target database
-- GO 1090069 with entry 2843

-- Insert missing pool gameobject entries from target database
INSERT INTO pool_gameobject VALUES
(300014, 31004, 0.0, 'Teldrassil (Shadowthread Cave) - Battered Chest (2843)'),
(300252, 31329, 0.0, 'Teldrassil (Ban''ethil Barrow Den) - Battered Chest (106318)'),
(300253, 31329, 0.0, 'Teldrassil (Ban''ethil Barrow Den) - Battered Chest (106318)'),
(300254, 31329, 0.0, 'Teldrassil (Ban''ethil Barrow Den) - Battered Chest (106318)'),
(300255, 31267, 0.0, 'Teldrassil (The Oracle Glade) - Battered Chest (106318)'),
(300256, 31267, 0.0, 'Teldrassil (The Oracle Glade) - Battered Chest (106318)'),
(300257, 31267, 0.0, 'Teldrassil (The Oracle Glade) - Battered Chest (106318)');

-- Update pool gameobject entries to match target database
UPDATE pool_gameobject SET pool_entry=31267 WHERE guid=49621;
UPDATE pool_gameobject SET pool_entry=31268 WHERE guid=49622;
UPDATE pool_gameobject SET pool_entry=31267 WHERE guid=49623;
UPDATE pool_gameobject SET pool_entry=31268 WHERE guid=49624;
UPDATE pool_gameobject SET pool_entry=31267 WHERE guid=49625;
UPDATE pool_gameobject SET pool_entry=31268 WHERE guid=49626;

-- Update pool template entries to match target database
UPDATE pool_template SET entry=31267 WHERE entry=40205;
UPDATE pool_template SET entry=31268 WHERE entry=40206;

-- Update pool pool entries to match target database
UPDATE pool_pool SET pool_id=31267 WHERE pool_id=40205;
UPDATE pool_pool SET pool_id=31268 WHERE pool_id=40206;

-- Update pool pool entries for mother pools to match target database
UPDATE pool_template SET max_limit=7, description="Teldrassil - Master Chest Pool" WHERE entry=39904;

-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
-- Darkshore
-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

-- Adding missing GOs from target database
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(55798, 2849, 1, 7357.42, -1019.19, 32.0403, 1.81514, 0.0, 0.0, 0.0, 0.0, 300, 900),
(300240, 0, 1, 5470.45, 583.138, -0.04548, 5.09636, 0.0, 0.0, -0.559193, 0.829038, 300, 900),
(300241, 0, 1, 5566.8, 575.271, -1.72532, 5.21854, 0.0, 0.0, -0.507538, 0.861629, 300, 900),
(300242, 106319, 1, 5627.37, 163.007, 32.416, 4.79966, 0.0, 0.0, -0.67559, 0.737278, 300, 900),
(300243, 0, 1, 6103.46, 815.633, -33.4195, 2.61799, 0.0, 0.0, 0.965925, 0.258821, 300, 900),
(300244, 106319, 1, 6744.83, -207.431, 33.7675, 3.15906, 0.0, 0.0, -0.999962, 0.00873464, 300, 900),
(300245, 0, 1, 7046.27, 407.369, -22.604, 2.04204, 0.0, 0.0, 0.85264, 0.522499, 300, 900),
(300246, 0, 1, 7133.91, 303.566, -40.9871, 3.76991, 0.0, 0.0, -0.951056, 0.309017, 300, 900),
(300247, 2849, 1, 7443.65, 49.5524, 1.6797, 4.01426, 0.0, 0.0, -0.906307, 0.422619, 300, 900),
(300248, 0, 1, 7444.92, -227.195, -0.214618, 3.68265, 0.0, 0.0, -0.96363, 0.267241, 300, 900),
(300249, 0, 1, 7558.19, -376.235, -1.87434, 1.37881, 0.0, 0.0, 0.636078, 0.771625, 300, 900),
(300250, 2849, 1, 7644.49, -909.221, 18.4929, 5.16618, 0.0, 0.0, -0.529919, 0.848048, 300, 900),
(300251, 0, 1, 8059.07, -1012.45, -6.44795, 0.767944, 0.0, 0.0, 0.374606, 0.927184, 300, 900);
-- Update values of existing GOs based on target database
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=48492;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=48531;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=48537;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=48602;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=48623;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=48695;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=48727;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=48756;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=55942;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=55945;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=55952;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85655;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85812;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85813;
UPDATE gameobject SET id=0, rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=48651;
UPDATE gameobject SET id=0, rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=48765;
UPDATE gameobject SET id=0, rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=48774;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85656;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85657;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85658;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85659;
-- Update GUID of existing GOs that have different GUID in target database
-- 105318 -> 55799
UPDATE gameobject SET guid=55799, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=105318;
UPDATE pool_gameobject SET guid=55799, pool_entry=31171 WHERE guid=105318;

-- Adding missing GO spawn entries from target database
INSERT INTO gameobject_spawn_entry VALUES
(48651, 3660),
(48651, 3661),
(48765, 3660),
(48765, 3661),
(48774, 3660),
(48774, 3661),
(300240, 3660),
(300240, 3661),
(300241, 3660),
(300241, 3661),
(300243, 3660),
(300243, 3661),
(300245, 3660),
(300245, 3661),
(300246, 3660),
(300246, 3661),
(300248, 3660),
(300248, 3661),
(300249, 3660),
(300249, 3661),
(300251, 3660),
(300251, 3661);

-- Insert missing pool gameobject entries from target database
INSERT INTO pool_gameobject VALUES
(55798, 31174, 0.0, 'Darkshore (Ruins of Mathystra) - Battered Chest (2849)'),
(300240, 31338, 0.0, 'Darkshore (Twilight Shore) - Armor/Weapon Crate (3660,3661)'),
(300241, 31338, 0.0, 'Darkshore (Twilight Shore) - Armor/Weapon Crate (3660,3661)'),
(300242, 31175, 0.0, 'Darkshore (Ameth''Aran) - Battered Chest (106319)'),
(300243, 31339, 0.0, 'Darkshore (The Long Wash) - Armor/Weapon Crate (3660,3661)'),
(300244, 31176, 0.0, 'Darkshore (Bashal''Aran) - Battered Chest (106319)'),
(300245, 31310, 0.0, 'Darkshore (Mist''s Edge) - Armor/Weapon Crate (3660,3661)'),
(300246, 31310, 0.0, 'Darkshore (Mist''s Edge) - Armor/Weapon Crate (3660,3661)'),
(300247, 31310, 0.0, 'Darkshore (Mist''s Edge) - Battered Chest (2849)'),
(300248, 31310, 0.0, 'Darkshore (Mist''s Edge) - Armor/Weapon Crate (3660,3661)'),
(300249, 31310, 0.0, 'Darkshore (Mist''s Edge) - Armor/Weapon Crate (3660,3661)'),
(300250, 31174, 0.0, 'Darkshore (Ruins of Mathystra) - Battered Chest (2849)'),
(300251, 31310, 0.0, 'Darkshore (Mist''s Edge) - Armor/Weapon Crate (3660,3661)');

-- Update pool gameobject entries to match target database
UPDATE pool_gameobject SET pool_entry=31171 WHERE guid=48492;
UPDATE pool_gameobject SET pool_entry=31172 WHERE guid=48531;
UPDATE pool_gameobject SET pool_entry=31171 WHERE guid=48537;
UPDATE pool_gameobject SET pool_entry=31175 WHERE guid=48602;
UPDATE pool_gameobject SET pool_entry=31176 WHERE guid=48623;
UPDATE pool_gameobject SET pool_entry=31173 WHERE guid=48727;
UPDATE pool_gameobject SET pool_entry=31174 WHERE guid=48756;
UPDATE pool_gameobject SET pool_entry=31173 WHERE guid=55942;
UPDATE pool_gameobject SET pool_entry=31173 WHERE guid=55945;
UPDATE pool_gameobject SET pool_entry=31178 WHERE guid=55952;
UPDATE pool_gameobject SET description='Darkshore (Mist''s Edge) - Armor/Weapon Crate (3660,3661)' WHERE guid=48651;
UPDATE pool_gameobject SET description='Darkshore (Mist''s Edge) - Armor/Weapon Crate (3660,3661)' WHERE guid=48765;
UPDATE pool_gameobject SET description='Darkshore (Mist''s Edge) - Armor/Weapon Crate (3660,3661)' WHERE guid=48774;

-- Update pool template entries to match target database
UPDATE pool_template SET entry=31171 WHERE entry=40099;
UPDATE pool_template SET entry=31172 WHERE entry=40100;
UPDATE pool_template SET entry=31175 WHERE entry=40103;
UPDATE pool_template SET entry=31176 WHERE entry=40104;
UPDATE pool_template SET entry=31173 WHERE entry=40101;
UPDATE pool_template SET entry=31174 WHERE entry=40102;
UPDATE pool_template SET entry=31178 WHERE entry=40106;

-- Update pool pool entries to match target database
UPDATE pool_pool SET pool_id=31171 WHERE pool_id=40099;
UPDATE pool_pool SET pool_id=31172 WHERE pool_id=40100;
UPDATE pool_pool SET pool_id=31175 WHERE pool_id=40103;
UPDATE pool_pool SET pool_id=31176 WHERE pool_id=40104;
UPDATE pool_pool SET pool_id=31173 WHERE pool_id=40101;
UPDATE pool_pool SET pool_id=31174 WHERE pool_id=40102;
UPDATE pool_pool SET pool_id=31178 WHERE pool_id=40106;

-- Update pool pool entries for mother pools to match target database
UPDATE pool_template SET max_limit=13, description="Darkshore - Master Chest Pool" WHERE entry=39906;

-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
-- Mulgore
-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

-- Adding missing GOs from target database
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(55811, 106318, 1, -1912.49, -712.583, 3.57394, 0.174532, 0.0, 0.0, 0.0, 0.0, 300, 900),
(300110, 106318, 1, -2782.11, -707.654, 6.42457, 2.68781, 0.0, 0.0, 0.97437, 0.224951, 300, 900),
(300112, 106318, 1, -2643.5, -1320.99, 12.1203, 0.90757, 0.0, 0.0, 0.438371, 0.898794, 300, 900),
(300113, 106318, 1, -2402.06, 233.673, 49.2433, 2.80997, 0.0, 0.0, 0.986285, 0.16505, 300, 900),
(300123, 106318, 1, -1931.86, -715.756, 3.48776, 6.07375, 0.0, 0.0, -0.104528, 0.994522, 300, 900),
(300124, 106318, 1, -1921.73, -1027.15, 43.9631, 1.20428, 0.0, 0.0, 0.566406, 0.824126, 300, 900),
(300126, 106318, 1, -1893.65, 353.875, 107.361, 5.67232, 0.0, 0.0, -0.300705, 0.953717, 300, 900),
(300134, 106318, 1, -1681.09, -1218.6, 127.419, 0.453785, 0.0, 0.0, 0.224951, 0.97437, 300, 900),
(300165, 106318, 1, -824.101, -780.587, -2.7132, 4.27606, 0.0, 0.0, -0.843391, 0.5373, 300, 900);
-- Update values of existing GOs based on target database
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=18442;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=18443;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=18444;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=18446;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=18447;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=18448;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=18449;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=18450;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=18451;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=18452;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=18453;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=18454;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=18455;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=18445;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85767;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85772;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85882;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85883;

-- Insert missing pool gameobject entries from target database
INSERT INTO pool_gameobject VALUES
(55811, 31168, 0.0, 'Mulgore (Ravaged Caravan) - Battered Chest (106318)'),
(300110, 31164, 0.0, 'Mulgore - Battered Chest (106318)'),
(300112, 31170, 0.0, 'Mulgore (The Rolling Plains) - Battered Chest (106318)'),
(300113, 31308, 0.0, 'Mulgore (Paleman Rock) - Battered Chest (106318)'),
(300123, 31168, 0.0, 'Mulgore (Ravaged Caravan) - Battered Chest (106318)'),
(300124, 31169, 0.0, 'Mulgore (The Venture Co. Mine) - Battered Chest (106318)'),
(300126, 31166, 0.0, 'Mulgore (Bael''dun Digsite) - Battered Chest (106318)'),
(300134, 31169, 0.0, 'Mulgore (The Venture Co. Mine) - Battered Chest (106318)'),
(300165, 31165, 0.0, 'Mulgore (The Golden Plains) - Battered Chest (106318)');

-- Update pool gameobject entries to match target database
UPDATE pool_gameobject SET pool_entry=31164 WHERE guid=18442;
UPDATE pool_gameobject SET pool_entry=31165 WHERE guid=18443;
UPDATE pool_gameobject SET pool_entry=31164 WHERE guid=18444;
UPDATE pool_gameobject SET pool_entry=31166 WHERE guid=18446;
UPDATE pool_gameobject SET pool_entry=31167 WHERE guid=18448;
UPDATE pool_gameobject SET pool_entry=31164 WHERE guid=18449;
UPDATE pool_gameobject SET pool_entry=31164 WHERE guid=18450;
UPDATE pool_gameobject SET pool_entry=31164 WHERE guid=18451;
UPDATE pool_gameobject SET pool_entry=31168 WHERE guid=18452;
UPDATE pool_gameobject SET pool_entry=31169 WHERE guid=18453;
UPDATE pool_gameobject SET pool_entry=31164 WHERE guid=18454;
UPDATE pool_gameobject SET pool_entry=31170 WHERE guid=18455;

-- Update pool template entries to match target database
UPDATE pool_template SET entry=31164 WHERE entry=40092;
UPDATE pool_template SET entry=31165 WHERE entry=40093;
UPDATE pool_template SET entry=31166 WHERE entry=40094;
UPDATE pool_template SET entry=31167 WHERE entry=40095;
UPDATE pool_template SET entry=31168 WHERE entry=40096;
UPDATE pool_template SET entry=31169 WHERE entry=40097;
UPDATE pool_template SET entry=31170 WHERE entry=40098;

-- Update pool pool entries to match target database
UPDATE pool_pool SET pool_id=31164 WHERE pool_id=40092;
UPDATE pool_pool SET pool_id=31165 WHERE pool_id=40093;
UPDATE pool_pool SET pool_id=31166 WHERE pool_id=40094;
UPDATE pool_pool SET pool_id=31167 WHERE pool_id=40095;
UPDATE pool_pool SET pool_id=31168 WHERE pool_id=40096;
UPDATE pool_pool SET pool_id=31169 WHERE pool_id=40097;
UPDATE pool_pool SET pool_id=31170 WHERE pool_id=40098;

-- Update pool pool entries for mother pools to match target database
UPDATE pool_template SET max_limit=8, description="Mulgore - Master Chest Pool" WHERE entry=39903;

-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
-- Ashenvale
-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

-- Adding missing GOs from target database
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(300215, 0, 1, 1817.35, -2628.76, 61.1289, 1.67551, 0.0, 0.0, 0.743144, 0.669132, 300, 900),
(300216, 2852, 1, 1872.33, -2765.32, 62.6937, 2.65289, 0.0, 0.0, 0.970295, 0.241925, 300, 900),
(300217, 0, 1, 1914.78, -2641.69, 82.8735, 0.209439, 0.0, 0.0, 0.104528, 0.994522, 300, 900),
(300218, 2850, 1, 1994.6, -1234.64, 57.3724, 0.523598, 0.0, 0.0, 0.258819, 0.965926, 300, 900),
(300219, 2850, 1, 2203.02, -1432.82, 90.4306, 0.872664, 0.0, 0.0, 0.422618, 0.906308, 300, 900),
(300220, 2850, 1, 2241.25, -1544.39, 88.66, 0.820303, 0.0, 0.0, 0.398748, 0.91706, 300, 900),
(300222, 2850, 1, 2380.96, -1179.1, 91.4765, 3.47321, 0.0, 0.0, -0.986285, 0.16505, 300, 900),
(300228, 2852, 1, 2774.58, -3016.76, 154.125, 0.85521, 0.0, 0.0, 0.414693, 0.909962, 300, 900),
(300232, 2850, 1, 3288.89, -586.277, 156.085, 0.680677, 0.0, 0.0, 0.333806, 0.942642, 300, 900),
(300234, 2850, 1, 3334.05, -738.619, 165.437, 4.46804, 0.0, 0.0, -0.788011, 0.615662, 300, 900),
(300235, 2850, 1, 3374.5, -485.57, 154.218, 1.16937, 0.0, 0.0, 0.551936, 0.833886, 300, 900),
(300236, 2849, 1, 3450.3, 1033.85, 0.674683, 3.03684, 0.0, 0.0, 0.998629, 0.0523532, 300, 900);
-- Update values of existing GOs based on target database
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=47813;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=47814;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=47816;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=47817;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=47818;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=47819;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=47820;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=47824;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=47825;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=47826;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=47827;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=170080;
UPDATE gameobject SET id=0, rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=47972;
UPDATE gameobject SET id=0, rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=47973;
-- Update GUID of existing GOs that have different GUID in target database
-- 105316 -> 55800
UPDATE gameobject SET guid=55800, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=105316;
UPDATE pool_gameobject SET guid=55800, pool_entry=31163 WHERE guid=105316;

-- Adding missing GO spawn entries from target database
INSERT INTO gameobject_spawn_entry VALUES
(47972, 3689),
(47972, 3702),
(47973, 3689),
(47973, 3702),
(300215, 3689),
(300215, 3702),
(300217, 3689),
(300217, 3702);

-- Insert missing pool gameobject entries from target database
INSERT INTO pool_gameobject VALUES
(300215, 31162, 0.0, 'Ashenvale (The Dor''Danil Barrow Den) - Weapon/Armor Crate (3689,3702)'),
(300216, 31162, 0.0, 'Ashenvale (The Dor''Danil Barrow Den) - Solid Chest (2852)'),
(300217, 31162, 0.0, 'Ashenvale (The Dor''Danil Barrow Den) - Weapon/Armor Crate (3689,3702)'),
(300218, 31156, 0.0, 'Ashenvale (Mystral Lake) - Solid Chest (2850)'),
(300219, 31158, 0.0, 'Ashenvale (Greenpaw Village) - Solid Chest (2850)'),
(300220, 31158, 0.0, 'Ashenvale (Greenpaw Village) - Solid Chest (2850)'),
(300222, 31155, 0.0, 'Ashenvale - Solid Chest (2850)'),
(300228, 31163, 0.0, 'Ashenvale (Satyrnaar) - Solid Chest (2852)'),
(300232, 31157, 0.0, 'Ashenvale (Thistlefur Village) - Solid Chest (2850)'),
(300234, 31307, 0.0, 'Ashenvale (Thistlefur Hold) - Solid Chest (2850)'),
(300235, 31157, 0.0, 'Ashenvale (Thistlefur Village) - Solid Chest (2850)'),
(300236, 31154, 0.0, 'Ashenvale (The Zoram Strand) - Battered Chest (2849)');

-- Update pool gameobject entries to match target database
UPDATE pool_gameobject SET pool_entry=31154 WHERE guid=47813;
UPDATE pool_gameobject SET pool_entry=31155 WHERE guid=47814;
UPDATE pool_gameobject SET pool_entry=31156 WHERE guid=47816;
UPDATE pool_gameobject SET pool_entry=31157 WHERE guid=47817;
UPDATE pool_gameobject SET pool_entry=31158 WHERE guid=47819;
UPDATE pool_gameobject SET pool_entry=31159 WHERE guid=47820;
UPDATE pool_gameobject SET pool_entry=31160 WHERE guid=47824;
UPDATE pool_gameobject SET pool_entry=31161 WHERE guid=47825;
UPDATE pool_gameobject SET pool_entry=31162 WHERE guid=47826;
UPDATE pool_gameobject SET pool_entry=31163 WHERE guid=47827;
UPDATE pool_gameobject SET pool_entry=31155 WHERE guid=170080;
UPDATE pool_gameobject SET pool_entry=31162, description='Ashenvale (The Dor''Danil Barrow Den) - Weapon/Armor Crate (3689,3702)' WHERE guid=47972;
UPDATE pool_gameobject SET pool_entry=31162, description='Ashenvale (The Dor''Danil Barrow Den) - Weapon/Armor Crate (3689,3702)' WHERE guid=47973;

-- Update pool template entries to match target database
UPDATE pool_template SET entry=31154 WHERE entry=40082;
UPDATE pool_template SET entry=31155 WHERE entry=40083;
UPDATE pool_template SET entry=31156 WHERE entry=40084;
UPDATE pool_template SET entry=31157 WHERE entry=40085;
UPDATE pool_template SET entry=31158 WHERE entry=40086;
UPDATE pool_template SET entry=31159 WHERE entry=40087;
UPDATE pool_template SET entry=31160 WHERE entry=40088;
UPDATE pool_template SET entry=31161 WHERE entry=40089;
UPDATE pool_template SET entry=31162 WHERE entry=40090;
UPDATE pool_template SET entry=31163 WHERE entry=40091;

-- Add missing pool pools from target database
INSERT INTO pool_pool VALUES
(31162, 39913, 0.0, 'Ashenvale (The Dor''Danil Barrow Den) - Chest Pool');

-- Update pool pool entries to match target database
UPDATE pool_pool SET pool_id=31154 WHERE pool_id=40082;
UPDATE pool_pool SET pool_id=31155 WHERE pool_id=40083;
UPDATE pool_pool SET pool_id=31156 WHERE pool_id=40084;
UPDATE pool_pool SET pool_id=31157 WHERE pool_id=40085;
UPDATE pool_pool SET pool_id=31158 WHERE pool_id=40086;
UPDATE pool_pool SET pool_id=31159 WHERE pool_id=40087;
UPDATE pool_pool SET pool_id=31160 WHERE pool_id=40088;
UPDATE pool_pool SET pool_id=31161 WHERE pool_id=40089;
UPDATE pool_pool SET pool_id=31163 WHERE pool_id=40091;

-- Update pool pool entries for mother pools to match target database
UPDATE pool_template SET max_limit=11, description="Ashenvale - Master Chest Pool" WHERE entry=39913;

-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
-- The Great Sea
-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
-- Feralas
-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
-- Felwood
-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
-- Southfury River
-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
-- Thousand Needles
-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

-- Adding missing GOs from target database
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(300079, 2855, 1, -6518.72, -3304.22, -92.86, 5.837, 0.0, 0.0, 0.0, 0.0, 300, 900),
(300080, 2855, 1, -6484.66, -3499.6, -70.0346, 6.10865, 0.0, 0.0, -0.0871553, 0.996195, 300, 900),
(300081, 2855, 1, -6399.73, -3446.07, -77.6406, 0.541051, 0.0, 0.0, 0.267238, 0.963631, 300, 900),
(300087, 2852, 1, -5508.08, -1629.43, 25.3012, 0.85521, 0.0, 0.0, 0.414693, 0.909962, 300, 900),
(300092, 2852, 1, -5192.65, -1209.24, 49.3863, 2.09439, 0.0, 0.0, 0.866025, 0.500001, 300, 900),
(300093, 2852, 1, -5063.35, -2291.98, -53.2818, 1.48353, 0.0, 0.0, 0.67559, 0.737278, 300, 900),
(300095, 2852, 1, -5046.38, -2326.3, -52.8083, 6.0912, 0.0, 0.0, -0.0958452, 0.995396, 300, 900),
(300097, 2852, 1, -4896.52, -2290.6, -59.8061, 6.17847, 0.0, 0.0, -0.0523357, 0.99863, 300, 900);
-- Update values of existing GOs based on target database
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=16715;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=16718;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=16719;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=16720;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=16721;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=16722;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=55947;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=170117;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=87381;
-- Update GUID of existing GOs that have different GUID in target database
-- 190341 -> 55801
UPDATE gameobject SET guid=55801, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=190341;
UPDATE pool_gameobject SET guid=55801, pool_entry=31131 WHERE guid=190341;

-- Insert missing pool gameobject entries from target database
INSERT INTO pool_gameobject VALUES
(300079, 31134, 0.0, 'Thousand Needles (The Rustmaul Dig Site) - Solid Chest (2855)'),
(300080, 31134, 0.0, 'Thousand Needles (The Rustmaul Dig Site) - Solid Chest (2855)'),
(300081, 31134, 0.0, 'Thousand Needles (The Rustmaul Dig Site) - Solid Chest (2855)'),
(300087, 31300, 0.0, 'Thousand Needles (Roguefeather Den) - Solid Chest (2852)'),
(300092, 31132, 0.0, 'Thousand Needles (Highperch) - Solid Chest (2852)'),
(300093, 31133, 0.0, 'Thousand Needles (Splithoof Crag) - Solid Chest (2852)'),
(300095, 31133, 0.0, 'Thousand Needles (Splithoof Crag) - Solid Chest (2852)'),
(300097, 31301, 0.0, 'Thousand Needles (Splithoof Hold) - Solid Chest (2852)');

-- Update pool gameobject entries to match target database
UPDATE pool_gameobject SET pool_entry=31131 WHERE guid=16718;
UPDATE pool_gameobject SET pool_entry=31132 WHERE guid=16719;
UPDATE pool_gameobject SET pool_entry=31133 WHERE guid=16721;
UPDATE pool_gameobject SET pool_entry=31134 WHERE guid=16722;
UPDATE pool_gameobject SET pool_entry=31131 WHERE guid=170117;

-- Update pool template entries to match target database
UPDATE pool_template SET entry=31131 WHERE entry=40059;
UPDATE pool_template SET entry=31132 WHERE entry=40060;
UPDATE pool_template SET entry=31133 WHERE entry=40061;
UPDATE pool_template SET entry=31134 WHERE entry=40062;

-- Update pool pool entries to match target database
UPDATE pool_pool SET pool_id=31131 WHERE pool_id=40059;
UPDATE pool_pool SET pool_id=31132 WHERE pool_id=40060;
UPDATE pool_pool SET pool_id=31133 WHERE pool_id=40061;
UPDATE pool_pool SET pool_id=31134 WHERE pool_id=40062;

-- Update pool pool entries for mother pools to match target database
UPDATE pool_template SET max_limit=7, description="Thousand Needles - Master Chest Pool" WHERE entry=39917;

-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
-- Desolace
-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

-- Adding missing GOs from target database
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(300125, 2857, 1, -1905.2, 998.873, 90.611, 5.67232, 0.0, 0.0, -0.300705, 0.953717, 300, 900),
(300147, 2857, 1, -1364.17, 2916.2, 127.253, 4.4855, 0.0, 0.0, -0.782608, 0.622515, 300, 900),
(300149, 2857, 1, -1333.23, 2760.84, 113.199, 2.44346, 0.0, 0.0, 0.939692, 0.342021, 300, 900),
(300152, 2857, 1, -1200.01, 2761.32, 111.421, 1.50098, 0.0, 0.0, 0.681998, 0.731354, 300, 900),
(300153, 2857, 1, -1191.4, 2860.78, 139.005, 5.5676, 0.0, 0.0, -0.350207, 0.936672, 300, 900),
(300155, 2857, 1, -1133.85, 2694.59, 111.414, 2.93214, 0.0, 0.0, 0.994521, 0.104535, 300, 900),
(300163, 2855, 1, -961.253, 880.802, 91.5103, 2.16421, 0.0, 0.0, 0.882947, 0.469473, 300, 900),
(300180, 2855, 1, -127.378, 869.742, 119.095, 2.47837, 0.0, 0.0, 0.945518, 0.325568, 300, 900);
-- Update values of existing GOs based on target database
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=30169;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=30170;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=30171;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=30178;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=30182;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=30183;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=30184;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=56702;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=56703;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85712;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85863;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85697;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85713;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85852;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85853;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85861;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85862;

-- Insert missing pool gameobject entries from target database
INSERT INTO pool_gameobject VALUES
(300125, 31140, 0.0, 'Desolace (Magram Village) - Solid Chest (2857)'),
(300147, 31139, 0.0, 'Desolace (Valley of Spears) - Solid Chest (2857)'),
(300149, 31139, 0.0, 'Desolace (Valley of Spears) - Solid Chest (2857)'),
(300152, 31139, 0.0, 'Desolace (Valley of Spears) - Solid Chest (2857)'),
(300153, 31139, 0.0, 'Desolace (Valley of Spears) - Solid Chest (2857)'),
(300155, 31139, 0.0, 'Desolace (Valley of Spears) - Solid Chest (2857)'),
(300163, 31135, 0.0, 'Desolace (Kolkar Village) - Solid Chest (2855)'),
(300180, 31137, 0.0, 'Desolace (Sargeron) - Solid Chest (2855)');

-- Update pool gameobject entries to match target database
UPDATE pool_gameobject SET pool_entry=31135 WHERE guid=30169;
UPDATE pool_gameobject SET pool_entry=31136 WHERE guid=30170;
UPDATE pool_gameobject SET pool_entry=31137 WHERE guid=30171;
UPDATE pool_gameobject SET pool_entry=31139 WHERE guid=30182;
UPDATE pool_gameobject SET pool_entry=31140 WHERE guid=30183;
UPDATE pool_gameobject SET pool_entry=31139 WHERE guid=30184;
UPDATE pool_gameobject SET pool_entry=31136 WHERE guid=56702;
UPDATE pool_gameobject SET pool_entry=31135 WHERE guid=56703;

-- Update pool template entries to match target database
UPDATE pool_template SET entry=31135 WHERE entry=40063;
UPDATE pool_template SET entry=31136 WHERE entry=40064;
UPDATE pool_template SET entry=31137 WHERE entry=40065;
UPDATE pool_template SET entry=31139 WHERE entry=40067;
UPDATE pool_template SET entry=31140 WHERE entry=40068;

-- Update pool pool entries to match target database
UPDATE pool_pool SET pool_id=31135 WHERE pool_id=40063;
UPDATE pool_pool SET pool_id=31136 WHERE pool_id=40064;
UPDATE pool_pool SET pool_id=31137 WHERE pool_id=40065;
UPDATE pool_pool SET pool_id=31139 WHERE pool_id=40067;
UPDATE pool_pool SET pool_id=31140 WHERE pool_id=40068;

-- Update pool pool entries for mother pools to match target database
UPDATE pool_template SET max_limit=8, description="Desolace - Master Chest Pool" WHERE entry=39920;

-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
-- Stonetalon Mountains
-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

-- Adding missing GOs from target database
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(300181, 2849, 1, -66.701, -517.713, -46.1329, 1.48353, 0.0, 0.0, 0.67559, 0.737278, 300, 900),
(300194, 2850, 1, 628.739, 1822.79, -10.3557, 3.9619, 0.0, 0.0, -0.91706, 0.39875, 300, 900),
(300195, 2850, 1, 676.759, 1439.35, -7.96637, 5.51524, 0.0, 0.0, -0.374606, 0.927184, 300, 900),
(300200, 2850, 1, 1001.33, 1698.48, -5.53388, 0.087266, 0.0, 0.0, 0.0436192, 0.999048, 300, 900),
(300214, 2849, 1, 1608.78, 141.983, 104.847, 5.3058, 0.0, 0.0, -0.469471, 0.882948, 300, 900),
(300224, 3715, 1, 2419.41, 1791.47, 349.38, 3.17653, 0.0, 0.0, -0.999847, 0.0174693, 300, 900);
-- Update values of existing GOs based on target database
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=40707;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=40710;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=40712;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=40713;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=47589;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=47590;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=55944;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85805;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85668;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85843;

-- Insert missing pool gameobject entries from target database
INSERT INTO pool_gameobject VALUES
(300181, 31333, 0.0, 'Stonetalon Mountains (Camp Aparaje) - Battered Chest (2849)'),
(300194, 31153, 0.0, 'Stonetalon Mountains (The Charred Vale) - Solid Chest (2850)'),
(300195, 31153, 0.0, 'Stonetalon Mountains (The Charred Vale) - Solid Chest (2850)'),
(300200, 31153, 0.0, 'Stonetalon Mountains (The Charred Vale) - Solid Chest (2850)'),
(300214, 31334, 0.0, 'Stonetalon Mountains (Cragpool Lake) - Battered Chest (2849)'),
(300224, 31306, 0.0, 'Stonetalon Mountains (The Talon Den) - Tattered Chest (3715)');

-- Update pool gameobject entries to match target database
UPDATE pool_gameobject SET pool_entry=31150 WHERE guid=40707;
UPDATE pool_gameobject SET pool_entry=31152 WHERE guid=40710;
UPDATE pool_gameobject SET pool_entry=31153 WHERE guid=40712;
UPDATE pool_gameobject SET pool_entry=31153 WHERE guid=40713;
UPDATE pool_gameobject SET pool_entry=31150 WHERE guid=55944;

-- Update pool template entries to match target database
UPDATE pool_template SET entry=31150 WHERE entry=40078;
UPDATE pool_template SET entry=31152 WHERE entry=40080;
UPDATE pool_template SET entry=31153 WHERE entry=40081;

-- Update pool pool entries to match target database
UPDATE pool_pool SET pool_id=31150 WHERE pool_id=40078;
UPDATE pool_pool SET pool_id=31152 WHERE pool_id=40080;
UPDATE pool_pool SET pool_id=31153 WHERE pool_id=40081;

-- Update pool pool entries for mother pools to match target database
UPDATE pool_template SET max_limit=8, description="Stonetalon Mountains - Master Chest Pool" WHERE entry=39912;

-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
-- Tanaris
-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

-- Adding missing GOs from target database
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(300069, 153451, 1, -8497.94, -3061.38, 9.52853, 0.994837, 0.0, 0.0, 0.477158, 0.878817, 300, 900),
(300070, 153451, 1, -8383.04, -3083.96, 8.62471, 2.23402, 0.0, 0.0, 0.898793, 0.438373, 300, 900),
(300075, 153451, 1, -7901.72, -5206.91, 0.792425, 2.93214, 0.0, 0.0, 0.994521, 0.104535, 300, 900);
-- Update values of existing GOs based on target database
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=17298;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=17299;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=17300;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=17329;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=17330;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=17331;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=55949;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=55950;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85717;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85720;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85729;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85733;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85736;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85731;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85737;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85738;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85781;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85782;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85783;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85784;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85895;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85896;
-- Update GUID of existing GOs that have different GUID in target database
-- 190342 -> 55804
UPDATE gameobject SET guid=55804, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=190342;
UPDATE pool_gameobject SET guid=55804, pool_entry=31141 WHERE guid=190342;
-- 190343 -> 55812
UPDATE gameobject SET guid=55812, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=190343;
UPDATE pool_gameobject SET guid=55812, pool_entry=31143 WHERE guid=190343;

-- Insert missing pool gameobject entries from target database
INSERT INTO pool_gameobject VALUES
(300069, 31143, 0.0, 'Tanaris (Dunemaul Compound) - Solid Chest (153451)'),
(300070, 31143, 0.0, 'Tanaris (Dunemaul Compound) - Solid Chest (153451)'),
(300075, 31142, 0.0, 'Tanaris (Lost Rigger Cove) - Solid Chest (153451)');

-- Update pool gameobject entries to match target database
UPDATE pool_gameobject SET pool_entry=31141 WHERE guid=17298;
UPDATE pool_gameobject SET pool_entry=31141 WHERE guid=17299;
UPDATE pool_gameobject SET pool_entry=31141 WHERE guid=17300;
UPDATE pool_gameobject SET pool_entry=31142 WHERE guid=17329;
UPDATE pool_gameobject SET pool_entry=31142 WHERE guid=17330;
UPDATE pool_gameobject SET pool_entry=31143 WHERE guid=17331;
UPDATE pool_gameobject SET pool_entry=31141 WHERE guid=55949;
UPDATE pool_gameobject SET pool_entry=31141 WHERE guid=55950;

-- Update pool template entries to match target database
UPDATE pool_template SET entry=31141 WHERE entry=40069;
UPDATE pool_template SET entry=31142 WHERE entry=40070;
UPDATE pool_template SET entry=31143 WHERE entry=40071;

-- Update pool pool entries to match target database
UPDATE pool_pool SET pool_id=31141 WHERE pool_id=40069;
UPDATE pool_pool SET pool_id=31142 WHERE pool_id=40070;
UPDATE pool_pool SET pool_id=31143 WHERE pool_id=40071;

-- Update pool pool entries for mother pools to match target database
UPDATE pool_template SET max_limit=5, description="Tanaris - Master Chest Pool" WHERE entry=39927;

-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
-- The Veiled Sea
-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
-- Un'Goro Crater
-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
-- Moonglade
-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
-- Winterspring
-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

-- Update values of existing GOs based on target database
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=49088;
UPDATE gameobject SET rotation2=0.0, rotation3=0.0, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=49089;
UPDATE gameobject SET rotation2=0.996194, rotation3=0.087165, spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=49090;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=49091;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=89671;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=89672;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=89673;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=89674;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=89675;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=89676;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=89677;
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=900 WHERE guid=85799;

-- List of GOs that exist in Classic database but have no match in target database
-- GO 190344 with entry 153454

-- Update pool gameobject entries to match target database
UPDATE pool_gameobject SET pool_entry=31144 WHERE guid=49088;
UPDATE pool_gameobject SET pool_entry=31145 WHERE guid=49089;
UPDATE pool_gameobject SET pool_entry=31146 WHERE guid=49090;
UPDATE pool_gameobject SET pool_entry=31147 WHERE guid=49091;
UPDATE pool_gameobject SET pool_entry=31147 WHERE guid=89671;
UPDATE pool_gameobject SET pool_entry=31147 WHERE guid=89672;
UPDATE pool_gameobject SET pool_entry=31146 WHERE guid=89673;
UPDATE pool_gameobject SET pool_entry=31148 WHERE guid=89674;
UPDATE pool_gameobject SET pool_entry=31149 WHERE guid=89675;
UPDATE pool_gameobject SET pool_entry=31145 WHERE guid=89676;
UPDATE pool_gameobject SET pool_entry=31148 WHERE guid=89677;

-- Update pool template entries to match target database
UPDATE pool_template SET entry=31144 WHERE entry=40072;
UPDATE pool_template SET entry=31145 WHERE entry=40073;
UPDATE pool_template SET entry=31146 WHERE entry=40074;
UPDATE pool_template SET entry=31147 WHERE entry=40075;
UPDATE pool_template SET entry=31148 WHERE entry=40076;
UPDATE pool_template SET entry=31149 WHERE entry=40077;

-- Update pool pool entries to match target database
UPDATE pool_pool SET pool_id=31144 WHERE pool_id=40072;
UPDATE pool_pool SET pool_id=31145 WHERE pool_id=40073;
UPDATE pool_pool SET pool_id=31146 WHERE pool_id=40074;
UPDATE pool_pool SET pool_id=31147 WHERE pool_id=40075;
UPDATE pool_pool SET pool_id=31148 WHERE pool_id=40076;
UPDATE pool_pool SET pool_id=31149 WHERE pool_id=40077;

-- Update pool pool entries for mother pools to match target database
UPDATE pool_template SET max_limit=6, description="Winterspring - Master Chest Pool" WHERE entry=39937;

-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
-- Silithus
-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
-- Orgrimmar
-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
-- Thunder Bluff
-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
-- Darnassus
-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
-- Caverns of Time
-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
-- Onyxia's Lair
-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
-- Hall of Legends
-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
-- Gates of Ahn'Qiraj
-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

