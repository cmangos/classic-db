-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
-- Shadowfang Keep
-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

-- Adding missing GOs from target database
DELETE FROM gameobject WHERE guid BETWEEN 3300038 AND 3300046;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(3300038, 0, 33, -214.325, 2151.88, 81.1066, 2.3911, 0.0, 0.0, 0.930417, 0.366502, 86400, 86400),
(3300039, 0, 33, -191.652, 2161.52, 79.7475, 5.8294, 0.0, 0.0, -0.224951, 0.97437, 86400, 86400),
(3300040, 0, 33, -190.976, 2225.68, 79.7585, -1.23918, 0.0, 0.0, 0.580703, -0.814116, 86400, 86400),
(3300041, 0, 33, -178.815, 2252.85, 86.6049, 5.68977, 0.0, 0.0, -0.292372, 0.956305, 86400, 86400),
(3300042, 0, 33, -247.776, 2186.88, 93.9226, 4.30581, 0.0, 0.0, 0.835305, -0.549787, 86400, 86400),
(3300043, 0, 33, -255.201, 2166.04, 93.9366, 5.88176, 0.0, 0.0, -0.199367, 0.979925, 86400, 86400),
(3300044, 0, 33, -189.568, 2122.88, 97.3899, 1.39626, 0.0, 0.0, 0.642788, 0.766044, 86400, 86400),
(3300045, 0, 33, -236.728, 2299.61, 94.6765, 0.436332, 0.0, 0.0, 0.216439, 0.976296, 86400, 86400),
(3300046, 0, 33, -133.986, 2183.01, 113.132, 4.36332, 0.0, 0.0, -0.819152, 0.573577, 86400, 86400);
-- Update values of existing GOs based on target database
UPDATE gameobject SET id=0, spawntimesecsmin=86400, spawntimesecsmax=86400 WHERE guid=3300012;
UPDATE gameobject SET id=0, spawntimesecsmin=86400, spawntimesecsmax=86400 WHERE guid=3300013;
UPDATE gameobject SET id=0, spawntimesecsmin=86400, spawntimesecsmax=86400 WHERE guid=3300014;
UPDATE gameobject SET id=0, spawntimesecsmin=86400, spawntimesecsmax=86400 WHERE guid=3300015;
UPDATE gameobject SET id=0 WHERE guid=3300047;

-- Adding missing GO spawn entries from target database
INSERT INTO gameobject_spawn_entry VALUES
(3300012, 3659),
(3300012, 3695),
(3300013, 3659),
(3300013, 3695),
(3300014, 3659),
(3300014, 3695),
(3300015, 3659),
(3300015, 3695),
(3300047, 75295),
(3300047, 75298),
(3300038, 75293),
(3300038, 75295),
(3300039, 75293),
(3300039, 75295),
(3300040, 75293),
(3300040, 75295),
(3300041, 75293),
(3300041, 75295),
(3300042, 75295),
(3300042, 75298),
(3300043, 75295),
(3300043, 75298),
(3300044, 75295),
(3300044, 75298),
(3300045, 75295),
(3300045, 75298),
(3300046, 75295),
(3300046, 75298);

-- Insert missing pool gameobject entries from target database
DELETE FROM pool_gameobject WHERE guid BETWEEN 3300038 AND 3300046 OR guid BETWEEN 3300012 AND 3300015;
INSERT INTO pool_gameobject VALUES
(3300012, 45070, 0.0, 'Shadowfang Keep - Barrel of Melon Juice & Food Crate (3659,3695)'),
(3300013, 45070, 0.0, 'Shadowfang Keep - Barrel of Melon Juice & Food Crate (3659,3695)'),
(3300014, 45070, 0.0, 'Shadowfang Keep - Barrel of Melon Juice & Food Crate (3659,3695)'),
(3300015, 45070, 0.0, 'Shadowfang Keep - Barrel of Melon Juice & Food Crate (3659,3695)'),
(3300038, 45091, 0.0, 'Shadowfang Keep (Courtyard) - Large Battered Chest, Large Iron Bound Chest (75293,75295)'),
(3300039, 45091, 0.0, 'Shadowfang Keep (Courtyard) - Large Battered Chest, Large Iron Bound Chest (75293,75295)'),
(3300040, 45091, 0.0, 'Shadowfang Keep (Courtyard) - Large Battered Chest, Large Iron Bound Chest (75293,75295)'),
(3300041, 45091, 0.0, 'Shadowfang Keep (Courtyard) - Large Battered Chest, Large Iron Bound Chest (75293,75295)'),
(3300042, 45092, 0.0, 'Shadowfang Keep (Wall) - Large Iron Bound Chest, Large Solid Chest (75295,75298)'),
(3300043, 45092, 0.0, 'Shadowfang Keep (Wall) - Large Iron Bound Chest, Large Solid Chest (75295,75298)'),
(3300044, 45092, 0.0, 'Shadowfang Keep (Wall) - Large Iron Bound Chest, Large Solid Chest (75295,75298)'),
(3300045, 45093, 0.0, 'Shadowfang Keep - Large Iron Bound Chest, Large Solid Chest (75295,75298)'),
(3300046, 45093, 0.0, 'Shadowfang Keep - Large Iron Bound Chest, Large Solid Chest (75295,75298)');

-- Update pool gameobject entries to match target database
UPDATE pool_gameobject SET pool_entry=45093, description='Shadowfang Keep - Large Iron Bound Chest, Large Solid Chest (75295,75298)' WHERE guid=3300047;

-- Add missing pool templates from target database
INSERT INTO pool_template VALUES
(45070, 2, 'Shadowfang Keep - Barrel of Melon Juice & Food Crate Pool'),
(45091, 1, 'Shadowfang Keep (Courtyard) - Chest Pool'),
(45090, 3, 'Shadowfang Keep - Master Chest Pool'),
(45092, 1, 'Shadowfang Keep (Wall) - Chest Pool'),
(45093, 1, 'Shadowfang Keep - Chest Pool');

-- Update pool template entries to match target database

-- Add missing pool pools from target database
INSERT INTO pool_pool VALUES
(45093, 45090, 0.0, 'Shadowfang Keep - Chest Pool'),
(45091, 45090, 0.0, 'Shadowfang Keep (Courtyard) - Chest Pool'),
(45092, 45090, 0.0, 'Shadowfang Keep (Wall) - Chest Pool');


-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
-- The Deadmines
-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

-- Adding missing GOs from target database
DELETE FROM gameobject WHERE guid IN (3600037, 3600060);
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(3600037, 1731, 36, -277.478, -572.826, 52.6279, 5.23599, 0.0, 0.0, -0.5, 0.866025, 86400, 86400),
(3600038, 1731, 36, -75.6958, -407.331, 56.1338, 4.34587, 0.0, 0.0, -0.824126, 0.566406, 86400, 86400),
(3600060, 1732, 36, -167.956, -411.293, 58.6313, 2.79252, 0.0, 0.0, 0.984807, 0.173652, 86400, 86400),
(3600061, 1732, 36, -132.8860, -639.8724, 15.2255, 4.5316, 0.0, 0.0, 0.0, 0.0, 86400, 86400);

-- Insert missing pool gameobject entries from target database
DELETE FROM pool_gameobject WHERE guid IN (3600037, 3600060);
INSERT INTO pool_gameobject VALUES
(3600037, 45250, 0.0, 'Deadmines - Copper Vein (1731)'),
(3600038, 45250, 0.0, 'Deadmines - Copper Vein (1731)'),
(3600060, 45250, 0.0, 'Deadmines - Tin Vein (1732)'),
(3600061, 45250, 0, 'Deadmines - Tin Vein (1732)');


-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
-- The Wailing Caverns
-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

-- Remove duplicate GOs
DELETE FROM gameobject WHERE guid IN (31993, 35643);

-- Update values of existing GOs based on target database
UPDATE gameobject SET spawntimesecsmin=86400, spawntimesecsmax=86400 WHERE guid=4300001;
UPDATE gameobject SET spawntimesecsmin=86400, spawntimesecsmax=86400 WHERE guid=4300002;
UPDATE gameobject SET spawntimesecsmin=86400, spawntimesecsmax=86400 WHERE guid=4300003;
UPDATE gameobject SET spawntimesecsmin=86400, spawntimesecsmax=86400 WHERE guid=4300004;
UPDATE gameobject SET spawntimesecsmin=86400, spawntimesecsmax=86400 WHERE guid=4300005;
UPDATE gameobject SET spawntimesecsmin=86400, spawntimesecsmax=86400 WHERE guid=4300006;
-- Update GUID of existing GOs that have different GUID in target database
-- 4300031 -> 4300070
UPDATE gameobject SET guid=4300070, orientation=4.06662, rotation2=-0.894934, rotation3=0.446199, spawntimesecsmax=900 WHERE guid=4300031;
-- 4300043 -> 4300061
UPDATE gameobject SET guid=4300061, spawntimesecsmax=900 WHERE guid=4300043;
-- 4300010 -> 4300031
UPDATE gameobject SET guid=4300031, spawntimesecsmin=86400, spawntimesecsmax=86400 WHERE guid=4300010;
-- 4300015 -> 4300043
UPDATE gameobject SET guid=4300043, spawntimesecsmin=86400, spawntimesecsmax=86400 WHERE guid=4300015;
-- 4300008 -> 4300015
UPDATE gameobject SET guid=4300015, spawntimesecsmin=86400, spawntimesecsmax=86400 WHERE guid=4300008;
-- 4300016 -> 4300025
UPDATE gameobject SET guid=4300025, spawntimesecsmin=86400, spawntimesecsmax=86400 WHERE guid=4300016;
-- 4300009 -> 4300016
UPDATE gameobject SET guid=4300016, spawntimesecsmin=86400, spawntimesecsmax=86400 WHERE guid=4300009;
-- 4300052 -> 4300074
UPDATE gameobject SET guid=4300074, orientation=4.39823, rotation2=-0.809016, rotation3=0.587786, spawntimesecsmax=900 WHERE guid=4300052;
-- 4300030 -> 4300052
UPDATE gameobject SET guid=4300052, spawntimesecsmax=900 WHERE guid=4300030;
-- 4300032 -> 4300053
UPDATE gameobject SET guid=4300053, spawntimesecsmax=900 WHERE guid=4300032;
-- 4300011 -> 4300032
UPDATE gameobject SET guid=4300032, spawntimesecsmin=86400, spawntimesecsmax=86400 WHERE guid=4300011;
-- 4300007 -> 4300011
UPDATE gameobject SET guid=4300011, spawntimesecsmin=86400, spawntimesecsmax=86400 WHERE guid=4300007;
-- 4300033 -> 4300071
UPDATE gameobject SET guid=4300071, orientation=4.11898, rotation2=-0.882947, rotation3=0.469473, spawntimesecsmax=900 WHERE guid=4300033;
-- 4300012 -> 4300033
UPDATE gameobject SET guid=4300033, spawntimesecsmin=86400, spawntimesecsmax=86400 WHERE guid=4300012;
-- 4300034 -> 4300054
UPDATE gameobject SET guid=4300054, spawntimesecsmax=900 WHERE guid=4300034;
-- 4300035 -> 4300055
UPDATE gameobject SET guid=4300055, spawntimesecsmax=900 WHERE guid=4300035;
-- 4300036 -> 4300056
UPDATE gameobject SET guid=4300056, spawntimesecsmax=900 WHERE guid=4300036;
-- 4300037 -> 4300057
UPDATE gameobject SET guid=4300057, spawntimesecsmax=900 WHERE guid=4300037;
-- 4300038 -> 4300058
UPDATE gameobject SET guid=4300058, spawntimesecsmax=900 WHERE guid=4300038;
-- 4300039 -> 4300059
UPDATE gameobject SET guid=4300059, spawntimesecsmax=900 WHERE guid=4300039;
-- 4300040 -> 4300072
UPDATE gameobject SET guid=4300072, spawntimesecsmax=900 WHERE guid=4300040;
-- 4300041 -> 4300073
UPDATE gameobject SET guid=4300073, orientation=3.24635, rotation2=-0.998629, rotation3=0.0523532, spawntimesecsmax=900 WHERE guid=4300041;
-- 4300013 -> 4300041
UPDATE gameobject SET guid=4300041, spawntimesecsmin=86400, spawntimesecsmax=86400 WHERE guid=4300013;
-- 4300042 -> 4300060
UPDATE gameobject SET guid=4300060, spawntimesecsmax=900 WHERE guid=4300042;
-- 4300014 -> 4300042
UPDATE gameobject SET guid=4300042, spawntimesecsmin=86400, spawntimesecsmax=86400 WHERE guid=4300014;
-- 4300044 -> 4300062
UPDATE gameobject SET guid=4300062, spawntimesecsmax=900 WHERE guid=4300044;
-- 4300045 -> 4300063
UPDATE gameobject SET guid=4300063, spawntimesecsmax=900 WHERE guid=4300045;
-- 4300046 -> 4300064
UPDATE gameobject SET guid=4300064, spawntimesecsmax=900 WHERE guid=4300046;
-- 4300047 -> 4300065
UPDATE gameobject SET guid=4300065, spawntimesecsmax=900 WHERE guid=4300047;
-- 4300048 -> 4300066
UPDATE gameobject SET guid=4300066, spawntimesecsmax=900 WHERE guid=4300048;
-- 4300049 -> 4300067
UPDATE gameobject SET guid=4300067, spawntimesecsmax=900 WHERE guid=4300049;
-- 4300050 -> 4300068
UPDATE gameobject SET guid=4300068, spawntimesecsmax=900 WHERE guid=4300050;
-- 4300051 -> 4300069
UPDATE gameobject SET guid=4300069, spawntimesecsmax=900 WHERE guid=4300051;
-- 4300029 -> 4300051
UPDATE gameobject SET guid=4300051, spawntimesecsmax=900 WHERE guid=4300029;
-- 4300085 -> 4300094
UPDATE gameobject SET guid=4300094, spawntimesecsmin=86400, spawntimesecsmax=86400 WHERE guid=4300085;
UPDATE pool_gameobject SET guid=4300094, pool_entry=45391, description='Wailing Caverns (Pit of Fangs) - Large Battered Chest (75293)' WHERE guid=4300085;
-- 4300086 -> 4300096
UPDATE gameobject SET guid=4300096, spawntimesecsmin=86400, spawntimesecsmax=86400 WHERE guid=4300086;
UPDATE pool_gameobject SET guid=4300096, pool_entry=45392, description='Wailing Caverns (Winding Chasm) - Large Battered Chest (75293)' WHERE guid=4300086;
-- 4300087 -> 4300099
UPDATE gameobject SET guid=4300099, spawntimesecsmin=86400, spawntimesecsmax=86400 WHERE guid=4300087;
UPDATE pool_gameobject SET guid=4300099, pool_entry=45392, description='Wailing Caverns (Winding Chasm) - Large Battered Chest (75293)' WHERE guid=4300087;
-- 4300088 -> 4300098
UPDATE gameobject SET guid=4300098, spawntimesecsmin=86400, spawntimesecsmax=86400 WHERE guid=4300088;
UPDATE pool_gameobject SET guid=4300098, pool_entry=45392, description='Wailing Caverns (Winding Chasm) - Large Battered Chest (75293)' WHERE guid=4300088;
-- Adding missing GOs from target database
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(4300007, 1619, 43, -130.708, -129.07, -66.8245, 4.64258, 0.0, 0.0, -0.731354, 0.681998, 86400, 86400),
(4300008, 1619, 43, -88.9062, -261.777, -53.9114, 4.53786, 0.0, 0.0, -0.766044, 0.642789, 86400, 86400),
(4300009, 1619, 43, -121.701, 462.537, -72.2603, 3.64774, 0.0, 0.0, -0.968147, 0.250381, 86400, 86400),
(4300012, 1622, 43, -234.413, -141.746, -62.541, 3.15906, 0.0, 0.0, -0.999962, 0.00873464, 86400, 86400),
(4300017, 1624, 43, -96.1374, 181.974, -78.5475, 3.57793, 0.0, 0.0, -0.976295, 0.216442, 86400, 86400),
(4300018, 1624, 43, -1.81569, -82.4278, -66.416, 0.680677, 0.0, 0.0, 0.333806, 0.942642, 86400, 86400),
(4300019, 1624, 43, -79.9096, 180.568, -91.5239, 0.767944, 0.0, 0.0, 0.374606, 0.927184, 86400, 86400),
(4300020, 1624, 43, -84.2777, 201.452, -92.3064, 3.99681, 0.0, 0.0, -0.909961, 0.414694, 86400, 86400),
(4300026, 2041, 43, -44.9962, 119.944, -105.828, 0.85521, 0.0, 0.0, 0.414693, 0.909962, 86400, 86400),
(4300027, 2041, 43, -167.482, 43.7933, -105.824, 2.87979, 0.0, 0.0, 0.991445, 0.130528, 86400, 86400),
(4300034, 1731, 43, -12.9076, 366.047, -59.3451, 5.84685, 0.0, 0.0, -0.216439, 0.976296, 86400, 86400),
(4300035, 1731, 43, -7.34642, -91.6428, -63.41, 5.70723, 0.0, 0.0, -0.284015, 0.95882, 86400, 86400),
(4300036, 1731, 43, 30.1493, -188.35, -85.0525, 5.68977, 0.0, 0.0, -0.292372, 0.956305, 86400, 86400),
(4300044, 1732, 43, -60.6188, -19.1028, -58.7328, 4.60767, 0.0, 0.0, -0.743144, 0.669132, 86400, 86400),
(4300045, 1732, 43, -183.977, -366.45, -70.6907, 2.77507, 0.0, 0.0, 0.983254, 0.182238, 86400, 86400),
(4300095, 75293, 43, 29.6232, 531.781, -56.9991, 5.58505, 0.0, 0.0, -0.34202, 0.939693, 86400, 86400),
(4300097, 75293, 43, 46.7143, -166.269, -82.1537, 5.34071, 0.0, 0.0, -0.45399, 0.891007, 86400, 86400),
(4300100, 75293, 43, -313.264, -235.066, -62.8271, 1.02974, 0.0, 0.0, 0.492423, 0.870356, 86400, 86400);

-- Insert missing pool gameobject entries from target database
INSERT INTO pool_gameobject VALUES
(4300001, 45351, 0.0, 'Wailing Caverns - Earthroot (1619)'),
(4300002, 45351, 0.0, 'Wailing Caverns - Earthroot (1619)'),
(4300003, 45351, 0.0, 'Wailing Caverns - Earthroot (1619)'),
(4300004, 45351, 0.0, 'Wailing Caverns - Earthroot (1619)'),
(4300005, 45351, 0.0, 'Wailing Caverns - Earthroot (1619)'),
(4300006, 45351, 0.0, 'Wailing Caverns - Earthroot (1619)'),
(4300007, 45351, 0.0, 'Wailing Caverns - Earthroot (1619)'),
(4300008, 45351, 0.0, 'Wailing Caverns - Earthroot (1619)'),
(4300009, 45351, 0.0, 'Wailing Caverns - Earthroot (1619)'),
(4300011, 45352, 0.0, 'Wailing Caverns - Bruiseweed (1622)'),
(4300012, 45352, 0.0, 'Wailing Caverns - Bruiseweed (1622)'),
(4300015, 45353, 0.0, 'Wailing Caverns - Kingsblood (1624)'),
(4300016, 45353, 0.0, 'Wailing Caverns - Kingsblood (1624)'),
(4300017, 45353, 0.0, 'Wailing Caverns - Kingsblood (1624)'),
(4300018, 45353, 0.0, 'Wailing Caverns - Kingsblood (1624)'),
(4300019, 45353, 0.0, 'Wailing Caverns - Kingsblood (1624)'),
(4300020, 45353, 0.0, 'Wailing Caverns - Kingsblood (1624)'),
(4300025, 45354, 0.0, 'Wailing Caverns - Liferoot (2041)'),
(4300026, 45354, 0.0, 'Wailing Caverns - Liferoot (2041)'),
(4300027, 45354, 0.0, 'Wailing Caverns - Liferoot (2041)'),
(4300031, 45361, 0.0, 'Wailing Caverns - Copper Vein (1731)'),
(4300032, 45361, 0.0, 'Wailing Caverns - Copper Vein (1731)'),
(4300033, 45361, 0.0, 'Wailing Caverns - Copper Vein (1731)'),
(4300034, 45361, 0.0, 'Wailing Caverns - Copper Vein (1731)'),
(4300035, 45361, 0.0, 'Wailing Caverns - Copper Vein (1731)'),
(4300036, 45361, 0.0, 'Wailing Caverns - Copper Vein (1731)'),
(4300041, 45362, 0.0, 'Wailing Caverns - Tin Vein (1732)'),
(4300042, 45362, 0.0, 'Wailing Caverns - Tin Vein (1732)'),
(4300043, 45362, 0.0, 'Wailing Caverns - Tin Vein (1732)'),
(4300044, 45362, 0.0, 'Wailing Caverns - Tin Vein (1732)'),
(4300045, 45362, 0.0, 'Wailing Caverns - Tin Vein (1732)'),
(4300095, 45391, 0.0, 'Wailing Caverns (Pit of Fangs) - Large Battered Chest (75293)'),
(4300097, 45392, 0.0, 'Wailing Caverns (Winding Chasm) - Large Battered Chest (75293)'),
(4300100, 45392, 0.0, 'Wailing Caverns (Winding Chasm) - Large Battered Chest (75293)');

-- Add missing pool templates from target database
DELETE FROM pool_template WHERE entry=45321;
INSERT INTO pool_template VALUES
(45351, 3, 'Wailing Caverns - Earthroot (1619)'),
(45352, 1, 'Wailing Caverns - Bruiseweed (1622)'),
(45353, 1, 'Wailing Caverns - Kingsblood (1624)'),
(45361, 3, 'Wailing Caverns - Copper Vein (1731)'),
(45362, 3, 'Wailing Caverns - Tin Vein (1732)'),
(45354, 1, 'Wailing Caverns - Liferoot (2041)'),
(45391, 1, 'Wailing Caverns (Pit of Fangs) - Chest Pool'),
(45390, 2, 'Wailing Caverns - Master Chest Pool'),
(45392, 1, 'Wailing Caverns (Winding Chasm) - Chest Pool');

-- Add missing pool pools from target database
INSERT INTO pool_pool VALUES
(45391, 45390, 0.0, 'Wailing Caverns (Pit of Fangs) - Chest Pool'),
(45392, 45390, 0.0, 'Wailing Caverns (Winding Chasm) - Chest Pool');


-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
-- Blackfathom Deeps
-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

-- Update values of existing GOs based on target database
DELETE FROM gameobject WHERE guid IN (4800011, 4800019);
UPDATE gameobject SET spawntimesecsmin=86400, spawntimesecsmax=86400 WHERE guid=4800001;
UPDATE gameobject SET spawntimesecsmin=86400, spawntimesecsmax=86400 WHERE guid=4800002;
UPDATE gameobject SET orientation=4.71239 WHERE guid=4800024;
UPDATE gameobject SET orientation=3.14593, rotation0=-0.0191731, rotation1=0.0212412, rotation2=-0.999589, rotation3=0.00176052 WHERE guid=4800029;
-- Update GUID of existing GOs that have different GUID in target database
-- 4800016 -> 4800057
UPDATE gameobject SET guid=4800057, spawntimesecsmin=86400, spawntimesecsmax=86400 WHERE guid=4800016;
-- 4800005 -> 4800016
UPDATE gameobject SET guid=4800016, spawntimesecsmin=86400, spawntimesecsmax=86400 WHERE guid=4800005;
-- 4800018 -> 4800068
UPDATE gameobject SET guid=4800068, orientation=5.00909, rotation2=-0.594823, rotation3=0.803857, spawntimesecsmin=86400, spawntimesecsmax=86400 WHERE guid=4800018;
-- 4800006 -> 4800018
UPDATE gameobject SET guid=4800018, orientation=5.5676, spawntimesecsmin=86400, spawntimesecsmax=86400 WHERE guid=4800006;
-- 4800007 -> 4800019
UPDATE gameobject SET guid=4800019, spawntimesecsmin=86400, spawntimesecsmax=86400 WHERE guid=4800007;
-- 4800021 -> 4800078
UPDATE gameobject SET guid=4800078, orientation=0.575957, spawntimesecsmin=86400, spawntimesecsmax=86400 WHERE guid=4800021;
-- 4800008 -> 4800021
UPDATE gameobject SET guid=4800021, spawntimesecsmin=86400, spawntimesecsmax=86400 WHERE guid=4800008;
-- 4800011 -> 4800023
-- 4800012 -> 4800051
UPDATE gameobject SET guid=4800051, orientation=0.628317, rotation2=0.309016, spawntimesecsmin=86400, spawntimesecsmax=86400 WHERE guid=4800012;
-- 4800013 -> 4800052
UPDATE gameobject SET guid=4800052, orientation=5.70723, rotation2=-0.284015, rotation3=0.95882, spawntimesecsmin=86400, spawntimesecsmax=86400 WHERE guid=4800013;
-- 4800014 -> 4800055
UPDATE gameobject SET guid=4800055, spawntimesecsmin=86400, spawntimesecsmax=86400 WHERE guid=4800014;
-- 4800015 -> 4800056
UPDATE gameobject SET guid=4800056, spawntimesecsmin=86400, spawntimesecsmax=86400 WHERE guid=4800015;
-- 4800017 -> 4800058
UPDATE gameobject SET guid=4800058, spawntimesecsmin=86400, spawntimesecsmax=86400 WHERE guid=4800017;
-- 4800020 -> 4800070
UPDATE gameobject SET guid=4800070, spawntimesecsmin=86400, spawntimesecsmax=86400 WHERE guid=4800020;
-- 4800022 -> 4800074
UPDATE gameobject SET guid=4800074, rotation2=0.601814, spawntimesecsmin=86400, spawntimesecsmax=86400 WHERE guid=4800022;
-- 4800023 -> 4800079
UPDATE gameobject SET guid=4800079, spawntimesecsmin=86400, spawntimesecsmax=86400 WHERE guid=4800023;
-- Adding missing GOs from target database
DELETE FROM gameobject WHERE guid IN (4800003, 4800004, 4800009, 4800010, 4800030, 4800031, 4800032, 4800033);
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(4800003, 1622, 48, -523.867, 348.583, -51.0342, 2.05949, 0.0, 0.0, 0.857167, 0.515038, 86400, 86400),
(4800004, 1622, 48, -625.515, 249.482, -48.4294, 5.21854, 0.0, 0.0, -0.507538, 0.861629, 86400, 86400),
(4800005, 1622, 48, -475.283, -89.9995, -38.4008, 2.23402, 0.0, 0.0, 0.898793, 0.438373, 86400, 86400),
(4800011, 0, 48, -401.418, 46.9318, -47.7134, 2.26893, 0.0, 0.0, 0.906307, 0.422619, 86400, 86400),
(4800012, 0, 48, -351.981, 402.932, -53.4195, 5.42798, 0.0, 0.0, -0.414693, 0.909962, 86400, 86400),
(4800013, 0, 48, -479.657, 295.416, -64.3415, 4.88692, 0.0, 0.0, -0.642787, 0.766045, 86400, 86400),
(4800017, 2045, 48, -327.896, 75.1296, -61.588, 2.68781, 0.0, 0.0, 0.97437, 0.224951, 86400, 86400),
(4800020, 2045, 48, -517.099, 165.319, -75.165, 3.194, 0.0, 0.0, -0.999657, 0.0262016, 86400, 86400),
(4800022, 2045, 48, -805.265, -30.2197, -35.9841, 0.994837, 0.0, 0.0, 0.477159, 0.878817, 86400, 86400),
(4800023, 13949, 48, -330.544, 212.014, -69.706, 2.80998, 0, 0, 0.986286, 0.165048, 0, 0),
(4800030, 0, 48, -300.55, 320.14, -53.2449, 3.0, 0.0, 0.0, 0.0, 0.0, 86400, 86400),
(4800031, 0, 48, -614.864, 252.745, -49.4881, 4.81711, 0.0, 0.0, -0.66913, 0.743145, 86400, 86400),
(4800032, 0, 48, -295.378, 316.711, -52.3953, 2.23402, 0.0, 0.0, 0.898793, 0.438373, 86400, 86400),
(4800037, 0, 48, -517.169, 34.4384, -46.3221, 5.14872, 0.0, 0.0, -0.537299, 0.843392, 86400, 86400),
(4800038, 0, 48, -450.61, -38.0686, -31.7772, 3.08923, 0.0, 0.0, 0.999657, 0.026177, 86400, 86400),
(4800039, 0, 48, -466.738, -87.5996, -39.1289, 2.93214, 0.0, 0.0, 0.994521, 0.104536, 86400, 86400),
(4800040, 0, 48, -694.42, -47.27, -30.0332, 1.5, 0.0, 0.0, 0.0, 0.0, 86400, 86400),
(4800041, 0, 48, -743.061, -111.067, -30.0483, 1.48353, 0.0, 0.0, 0.67559, 0.737278, 86400, 86400),
(4800053, 19018, 48, -348.722, -34.5047, -68.4577, 3.45576, 0.0, 0.0, -0.987688, 0.156436, 86400, 86400),
(4800054, 19018, 48, -302.454, 48.7869, -67.4272, 4.53786, 0.0, 0.0, -0.766044, 0.642789, 86400, 86400),
(4800059, 19018, 48, -526.051, 149.893, -79.707, 4.66003, 0.0, 0.0, -0.725374, 0.688355, 86400, 86400),
(4800060, 19018, 48, -489.734, 144.383, -72.4147, 1.58825, 0.0, 0.0, 0.71325, 0.70091, 86400, 86400),
(4800061, 19018, 48, -359.856, 279.128, -77.019, 2.61799, 0.0, 0.0, 0.965925, 0.258821, 86400, 86400),
(4800062, 19018, 48, -345.41, 222.052, -67.923, 4.5204, 0.0, 0.0, -0.771625, 0.636078, 86400, 86400),
(4800063, 19018, 48, -308.599, 198.446, -65.0974, 4.5204, 0.0, 0.0, -0.771625, 0.636078, 86400, 86400),
(4800064, 19018, 48, -368.942, 256.857, -71.7873, 5.70723, 0.0, 0.0, -0.284015, 0.95882, 86400, 86400),
(4800065, 19018, 48, -346.634, 291.605, -70.7872, 3.10665, 0.0, 0.0, 0.999847, 0.0174693, 86400, 86400),
(4800066, 19018, 48, -450.111, 130.313, -71.376, 3.61284, 0.0, 0.0, -0.972369, 0.233448, 86400, 86400),
(4800067, 19018, 48, -354.931, 308.109, -69.8227, 2.9845, 0.0, 0.0, 0.996917, 0.0784664, 86400, 86400),
(4800069, 19018, 48, -700.195, -100.683, -35.6787, -2.33874, 0.0, 0.0, 0.920505, -0.390731, 86400, 86400),
(4800071, 19018, 48, -710.16, -49.4721, -41.5957, 3.31614, 0.0, 0.0, -0.996194, 0.087165, 86400, 86400),
(4800072, 19018, 48, -766.485, -62.3092, -44.0026, 3.49067, 0.0, 0.0, -0.984807, 0.173652, 86400, 86400),
(4800073, 19018, 48, -784.329, -82.7394, -43.0525, 0.558504, 0.0, 0.0, 0.275637, 0.961262, 86400, 86400),
(4800075, 19018, 48, -730.435, -31.5133, -41.4731, 2.11185, 0.0, 0.0, 0.870356, 0.492424, 86400, 86400),
(4800076, 19018, 48, -732.467, -67.3308, -38.4372, 6.21337, 0.0, 0.0, -0.0348988, 0.999391, 86400, 86400),
(4800077, 19018, 48, -734.435, -96.0345, -36.9606, 1.20428, 0.0, 0.0, 0.566406, 0.824126, 86400, 86400),
(4800080, 19018, 48, -760.683, -155.534, -51.5062, 0.471238, 0.0, 0.0, 0.233445, 0.97237, 86400, 86400),
(4800081, 19018, 48, -790.217, -176.527, -45.1692, 2.19911, 0.0, 0.0, 0.891006, 0.453991, 86400, 86400),
(4800082, 19018, 48, -770.512, -189.072, -48.8139, 5.77704, 0.0, 0.0, -0.25038, 0.968148, 86400, 86400);

-- Adding missing GO spawn entries from target database
INSERT INTO gameobject_spawn_entry VALUES
(4800011, 1732),
(4800011, 1733),
(4800012, 1732),
(4800012, 1733),
(4800013, 1732),
(4800013, 1733),
(4800030, 3689),
(4800030, 3702),
(4800031, 3689),
(4800031, 3702),
(4800032, 3689),
(4800032, 3702),
(4800037, 75295),
(4800037, 75298),
(4800038, 75295),
(4800038, 75298),
(4800039, 75295),
(4800039, 75298),
(4800040, 75295),
(4800040, 75298),
(4800041, 75295),
(4800041, 75298);

-- Insert missing pool gameobject entries from target database
DELETE FROM pool_gameobject WHERE guid IN (4800030, 4800031, 4800032);
INSERT INTO pool_gameobject VALUES
(4800001, 45561, 0.0, 'Blackfathom Deeps - Bruiseweed (1622)'),
(4800002, 45561, 0.0, 'Blackfathom Deeps - Bruiseweed (1622)'),
(4800003, 45561, 0.0, 'Blackfathom Deeps - Bruiseweed (1622)'),
(4800004, 45561, 0.0, 'Blackfathom Deeps - Bruiseweed (1622)'),
(4800005, 45561, 0.0, 'Blackfathom Deeps - Bruiseweed (1622)'),
(4800011, 45551, 0.0, 'Blackfathom Deeps - Tin Vein, Silver Vein (1732,1733)'),
(4800012, 45551, 0.0, 'Blackfathom Deeps - Tin Vein, Silver Vein (1732,1733)'),
(4800013, 45551, 0.0, 'Blackfathom Deeps - Tin Vein, Silver Vein (1732,1733)'),
(4800016, 45563, 0.0, 'Blackfathom Deeps (The Drowned Sacellum) - Stranglekelp (2045)'),
(4800017, 45563, 0.0, 'Blackfathom Deeps (The Drowned Sacellum) - Stranglekelp (2045)'),
(4800018, 45564, 0.0, 'Blackfathom Deeps (The Pool of Ask''ar) - Stranglekelp (2045)'),
(4800019, 45564, 0.0, 'Blackfathom Deeps (The Pool of Ask''ar) - Stranglekelp (2045)'),
(4800020, 45564, 0.0, 'Blackfathom Deeps (The Pool of Ask''ar) - Stranglekelp (2045)'),
(4800021, 45565, 0.0, 'Blackfathom Deeps (The Forgotten Pool) - Stranglekelp (2045)'),
(4800022, 45566, 0.0, 'Blackfathom Deeps (Moonshrine Ruins) - Stranglekelp (2045)'),
(4800030, 45570, 0.0, 'Blackfathom Deeps - Weapon Crate, Armor Crate (3689,3702)'),
(4800031, 45570, 0.0, 'Blackfathom Deeps - Weapon Crate, Armor Crate (3689,3702)'),
(4800032, 45570, 0.0, 'Blackfathom Deeps - Weapon Crate, Armor Crate (3689,3702)'),
(4800037, 45591, 0.0, 'Blackfathom Deeps - Large Battered Chest, Large Iron Bound Chest (75293,75295)'),
(4800038, 45591, 0.0, 'Blackfathom Deeps - Large Battered Chest, Large Iron Bound Chest (75293,75295)'),
(4800039, 45591, 0.0, 'Blackfathom Deeps - Large Battered Chest, Large Iron Bound Chest (75293,75295)'),
(4800040, 45592, 0.0, 'Blackfathom Deeps (Moonshrine Ruins) - Large Battered Chest, Large Iron Bound Chest (75293,75295)'),
(4800041, 45592, 0.0, 'Blackfathom Deeps (Moonshrine Ruins) - Large Battered Chest, Large Iron Bound Chest (75293,75295)'),
(4800051, 45571, 0.0, 'Blackfathom Deeps (The Drowned Sacellum) - Giant Clam (19018)'),
(4800052, 45571, 0.0, 'Blackfathom Deeps (The Drowned Sacellum) - Giant Clam (19018)'),
(4800053, 45571, 0.0, 'Blackfathom Deeps (The Drowned Sacellum) - Giant Clam (19018)'),
(4800054, 45571, 0.0, 'Blackfathom Deeps (The Drowned Sacellum) - Giant Clam (19018)'),
(4800055, 45572, 0.0, 'Blackfathom Deeps (The Pool of Ask''ar) - Giant Clam (19018)'),
(4800056, 45572, 0.0, 'Blackfathom Deeps (The Pool of Ask''ar) - Giant Clam (19018)'),
(4800057, 45572, 0.0, 'Blackfathom Deeps (The Pool of Ask''ar) - Giant Clam (19018)'),
(4800058, 45572, 0.0, 'Blackfathom Deeps (The Pool of Ask''ar) - Giant Clam (19018)'),
(4800059, 45572, 0.0, 'Blackfathom Deeps (The Pool of Ask''ar) - Giant Clam (19018)'),
(4800060, 45572, 0.0, 'Blackfathom Deeps (The Pool of Ask''ar) - Giant Clam (19018)'),
(4800061, 45572, 0.0, 'Blackfathom Deeps (The Pool of Ask''ar) - Giant Clam (19018)'),
(4800062, 45572, 0.0, 'Blackfathom Deeps (The Pool of Ask''ar) - Giant Clam (19018)'),
(4800063, 45572, 0.0, 'Blackfathom Deeps (The Pool of Ask''ar) - Giant Clam (19018)'),
(4800064, 45572, 0.0, 'Blackfathom Deeps (The Pool of Ask''ar) - Giant Clam (19018)'),
(4800065, 45572, 0.0, 'Blackfathom Deeps (The Pool of Ask''ar) - Giant Clam (19018)'),
(4800066, 45572, 0.0, 'Blackfathom Deeps (The Pool of Ask''ar) - Giant Clam (19018)'),
(4800067, 45572, 0.0, 'Blackfathom Deeps (The Pool of Ask''ar) - Giant Clam (19018)'),
(4800068, 45573, 0.0, 'Blackfathom Deeps (Moonshrine Ruins) - Giant Clam (19018)'),
(4800069, 45573, 0.0, 'Blackfathom Deeps (Moonshrine Ruins) - Giant Clam (19018)'),
(4800070, 45573, 0.0, 'Blackfathom Deeps (Moonshrine Ruins) - Giant Clam (19018)'),
(4800071, 45573, 0.0, 'Blackfathom Deeps (Moonshrine Ruins) - Giant Clam (19018)'),
(4800072, 45573, 0.0, 'Blackfathom Deeps (Moonshrine Ruins) - Giant Clam (19018)'),
(4800073, 45573, 0.0, 'Blackfathom Deeps (Moonshrine Ruins) - Giant Clam (19018)'),
(4800074, 45573, 0.0, 'Blackfathom Deeps (Moonshrine Ruins) - Giant Clam (19018)'),
(4800075, 45573, 0.0, 'Blackfathom Deeps (Moonshrine Ruins) - Giant Clam (19018)'),
(4800076, 45573, 0.0, 'Blackfathom Deeps (Moonshrine Ruins) - Giant Clam (19018)'),
(4800077, 45573, 0.0, 'Blackfathom Deeps (Moonshrine Ruins) - Giant Clam (19018)'),
(4800078, 45574, 0.0, 'Blackfathom Deeps (The Forgotten Pool) - Giant Clam (19018)'),
(4800079, 45574, 0.0, 'Blackfathom Deeps (The Forgotten Pool) - Giant Clam (19018)'),
(4800080, 45574, 0.0, 'Blackfathom Deeps (The Forgotten Pool) - Giant Clam (19018)'),
(4800081, 45574, 0.0, 'Blackfathom Deeps (The Forgotten Pool) - Giant Clam (19018)'),
(4800082, 45574, 0.0, 'Blackfathom Deeps (The Forgotten Pool) - Giant Clam (19018)');

-- Add missing pool templates from target database
INSERT INTO pool_template VALUES
(45561, 2, 'Blackfathom Deeps - Bruiseweed (1622)'),
(45563, 1, 'Blackfathom Deeps (The Drowned Sacellum) - Stranglekelp Pool'),
(45564, 2, 'Blackfathom Deeps (The Pool of Ask''ar) - Stranglekelp Pool'),
(45565, 1, 'Blackfathom Deeps (The Forgotten Pool) - Stranglekelp Pool'),
(45571, 2, 'Blackfathom Deeps (The Drowned Sacellum) - Giant Clam (19018)'),
(45572, 4, 'Blackfathom Deeps (The Pool of Ask''ar) - Giant Clam (19018)'),
(45573, 3, 'Blackfathom Deeps (Moonshrine Ruins) - Giant Clam (19018)'),
(45574, 3, 'Blackfathom Deeps (The Forgotten Pool) - Giant Clam (19018)'),
(45551, 2, 'Blackfathom Deeps - Master Mineral Pool'),
(45562, 4, 'Blackfathom Deeps - Master Stranglekelp Pool'),
(45566, 1, 'Blackfathom Deeps (Moonshrine Ruins) - Stranglekelp Pool'),
(45570, 1, 'Blackfathom Deeps - Weapon Crate & Armor Crate Pool'),
(45591, 1, 'Blackfathom Deeps - Chest Pool'),
(45590, 2, 'Blackfathom Deeps - Master Chest Pool'),
(45592, 1, 'Blackfathom Deeps (Moonshrine Ruins) - Chest Pool');

-- Add missing pool pools from target database
INSERT INTO pool_pool VALUES
(45563, 45562, 0.0, 'Blackfathom Deeps (The Drowned Sacellum) - Stranglekelp Pool'),
(45564, 45562, 0.0, 'Blackfathom Deeps (The Pool of Ask''ar) - Stranglekelp Pool'),
(45565, 45562, 0.0, 'Blackfathom Deeps (The Forgotten Pool) - Stranglekelp Pool'),
(45591, 45590, 0.0, 'Blackfathom Deeps - Chest Pool'),
(45592, 45590, 0.0, 'Blackfathom Deeps (Moonshrine Ruins) - Chest Pool');


-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
-- Razorfen Downs
-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

-- Update values of existing GOs based on target database
UPDATE gameobject SET spawntimesecsmin=86400, spawntimesecsmax=86400 WHERE guid=1290001;
UPDATE gameobject SET spawntimesecsmin=86400, spawntimesecsmax=86400 WHERE guid=1290002;
UPDATE gameobject SET spawntimesecsmin=86400, spawntimesecsmax=86400 WHERE guid=1290003;
UPDATE gameobject SET spawntimesecsmin=86400, spawntimesecsmax=86400 WHERE guid=1290004;
-- Update GUID of existing GOs that have different GUID in target database
DELETE FROM gameobject WHERE guid IN (1290038);
-- 1290005 -> 1290011
UPDATE gameobject SET guid=1290011, spawntimesecsmin=86400, spawntimesecsmax=86400 WHERE guid=1290005;
-- 1290006 -> 1290012
UPDATE gameobject SET guid=1290012, spawntimesecsmin=86400, spawntimesecsmax=86400 WHERE guid=1290006;
-- 1290039 -> 1290021
UPDATE gameobject SET guid=1290021, spawntimesecsmin=86400, spawntimesecsmax=86400 WHERE guid=1290039;
-- 1290040 -> 1290022
UPDATE gameobject SET guid=1290022, spawntimesecsmin=86400, spawntimesecsmax=86400 WHERE guid=1290040;
-- 1290041 -> 1290023
UPDATE gameobject SET guid=1290023, spawntimesecsmin=86400, spawntimesecsmax=86400 WHERE guid=1290041;
-- 1290033 -> 1290038
UPDATE gameobject SET guid=1290038 WHERE guid=1290033;
-- 1290034 -> 1290039
UPDATE gameobject SET guid=1290039 WHERE guid=1290034;
-- 1290035 -> 1290040
UPDATE gameobject SET guid=1290040 WHERE guid=1290035;
-- 1290036 -> 1290041
UPDATE gameobject SET guid=1290041 WHERE guid=1290036;
-- Adding missing GOs from target database
DELETE FROM gameobject WHERE guid IN (1290007, 1290037, 1290075);
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(1290005, 1628, 129, 2565.25, 770.484, 55.8443, 1.91986, 0.0, 0.0, 0.819152, 0.573577, 86400, 86400),
(1290006, 1628, 129, 2464.41, 674.253, 63.8792, 0.85521, 0.0, 0.0, 0.414693, 0.909962, 86400, 86400),
(1290007, 1628, 129, 2613.1, 732.625, 54.4634, 1.41372, 0.0, 0.0, 0.649447, 0.760406, 86400, 86400),
(1290013, 2046, 129, 2515.09, 882.079, 46.5672, 4.34587, 0.0, 0.0, -0.824126, 0.566406, 86400, 86400),
(1290014, 2046, 129, 2413.05, 978.766, 57.781, 3.99681, 0.0, 0.0, -0.909961, 0.414694, 86400, 86400),
(1290015, 2046, 129, 2596.79, 764.006, 53.793, 0.994837, 0.0, 0.0, 0.477158, 0.878817, 86400, 86400),
(1290016, 2046, 129, 2492.94, 854.192, 49.0885, 5.06146, 0.0, 0.0, -0.573576, 0.819152, 86400, 86400),
(1290024, 142141, 129, 2485.72, 782.397, 46.0727, 0.872664, 0.0, 0.0, 0.422618, 0.906308, 86400, 86400),
(1290025, 142141, 129, 2459.53, 661.903, 56.6654, 2.35619, 0.0, 0.0, 0.92388, 0.382683, 86400, 86400),
(1290026, 142141, 129, 2366.41, 968.678, 40.2011, 4.29351, 0.0, 0.0, -0.83867, 0.54464, 86400, 86400),
(1290027, 142141, 129, 2532.19, 804.245, 46.0493, 1.95477, 0.0, 0.0, 0.829038, 0.559193, 86400, 86400),
(1290075, 0, 129, 2502.75, 944.867, 49.1772, -2.05949, 0.0, 0.0, 0.857167, -0.515038, 86400, 86400),
(1290076, 0, 129, 2455.52, 956.494, 35.5014, 4.64258, 0.0, 0.0, -0.731354, 0.681998, 86400, 86400),
(1290077, 0, 129, 2358.62, 966.718, 40.2895, 1.309, 0.0, 0.0, 0.608761, 0.793353, 86400, 86400),
(1290078, 0, 129, 2435.01, 995.961, 49.3044, 1.37881, 0.0, 0.0, 0.636078, 0.771625, 86400, 86400),
(1290081, 0, 129, 2482.92, 774.274, 46.1014, 4.76475, 0.0, 0.0, -0.688354, 0.725375, 86400, 86400);

-- Adding missing GO spawn entries from target database
INSERT INTO gameobject_spawn_entry VALUES
(1290075, 75297),
(1290075, 75300),
(1290076, 75297),
(1290076, 75300),
(1290077, 75297),
(1290077, 75300),
(1290078, 75297),
(1290078, 75300),
(1290081, 75297),
(1290081, 75300);

-- Insert missing pool gameobject entries from target database
DELETE FROM pool_gameobject WHERE guid IN (1290075, 1290076, 1290077, 1290078, 1290081);
INSERT INTO pool_gameobject VALUES
(1290001, 45951, 0.0, 'Razorfen Downs - Grave Moss (1628)'),
(1290002, 45951, 0.0, 'Razorfen Downs - Grave Moss (1628)'),
(1290003, 45951, 0.0, 'Razorfen Downs - Grave Moss (1628)'),
(1290004, 45951, 0.0, 'Razorfen Downs - Grave Moss (1628)'),
(1290005, 45951, 0.0, 'Razorfen Downs - Grave Moss (1628)'),
(1290006, 45951, 0.0, 'Razorfen Downs - Grave Moss (1628)'),
(1290007, 45951, 0.0, 'Razorfen Downs - Grave Moss (1628)'),
(1290011, 45952, 0.0, 'Razorfen Downs - Goldthorn (2046)'),
(1290012, 45952, 0.0, 'Razorfen Downs - Goldthorn (2046)'),
(1290013, 45952, 0.0, 'Razorfen Downs - Goldthorn (2046)'),
(1290014, 45952, 0.0, 'Razorfen Downs - Goldthorn (2046)'),
(1290015, 45952, 0.0, 'Razorfen Downs - Goldthorn (2046)'),
(1290016, 45952, 0.0, 'Razorfen Downs - Goldthorn (2046)'),
(1290021, 45953, 0.0, 'Razorfen Downs - Arthas'' Tears (142141)'),
(1290022, 45953, 0.0, 'Razorfen Downs - Arthas'' Tears (142141)'),
(1290023, 45953, 0.0, 'Razorfen Downs - Arthas'' Tears (142141)'),
(1290024, 45953, 0.0, 'Razorfen Downs - Arthas'' Tears (142141)'),
(1290025, 45953, 0.0, 'Razorfen Downs - Arthas'' Tears (142141)'),
(1290026, 45953, 0.0, 'Razorfen Downs - Arthas'' Tears (142141)'),
(1290027, 45953, 0.0, 'Razorfen Downs - Arthas'' Tears (142141)'),
(1290075, 45991, 0.0, 'Razorfen Downs (Spiral of Thorns) - Large Iron Bound Chest, Large Solid Chest (75297,75300)'),
(1290076, 45991, 0.0, 'Razorfen Downs (Spiral of Thorns) - Large Iron Bound Chest, Large Solid Chest (75297,75300)'),
(1290077, 45991, 0.0, 'Razorfen Downs (Spiral of Thorns) - Large Iron Bound Chest, Large Solid Chest (75297,75300)'),
(1290078, 45991, 0.0, 'Razorfen Downs (Spiral of Thorns) - Large Iron Bound Chest, Large Solid Chest (75297,75300)'),
(1290081, 45992, 0.0, 'Razorfen Downs (The Murder Pens) - Large Iron Bound Chest, Large Solid Chest (75297,75300)');

-- Add missing pool templates from target database
INSERT INTO pool_template VALUES
(45951, 4, 'Razorfen Downs - Grave Moss (1628)'),
(45952, 2, 'Razorfen Downs - Goldthorn (2046)'),
(45953, 3, 'Razorfen Downs - Arthas'' Tears (142141)'),
(45991, 1, 'Razorfen Downs (Spiral of Thorns) - Chest Pool'),
(45990, 2, 'Razorfen Downs - Master Chest Pool'),
(45992, 1, 'Razorfen Downs (The Murder Pens) - Chest Pool');

-- Add missing pool pools from target database
INSERT INTO pool_pool VALUES
(45991, 45990, 0.0, 'Razorfen Downs (Spiral of Thorns) - Chest Pool'),
(45992, 45990, 0.0, 'Razorfen Downs (The Murder Pens) - Chest Pool');


-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
-- Scarlet Monastery
-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

-- Update values of existing GOs based on target database
UPDATE gameobject SET spawntimesecsmin=5, spawntimesecsmax=5 WHERE guid=1890036;
UPDATE gameobject SET id=0 WHERE guid=1890111;
UPDATE gameobject SET id=0, rotation3=0.250381 WHERE guid=1890114;
UPDATE gameobject SET id=0, rotation3=0.0523532 WHERE guid=1890123;
-- Update GUID of existing GOs that have different GUID in target database
-- 1890006 -> 1890176
UPDATE gameobject SET guid=1890176 WHERE guid=1890006;
UPDATE pool_gameobject SET guid=1890176, pool_entry=46089, description='Scarlet Monastery Cathedral (Upper Chapel Gardens) - Liferoot (2041)' WHERE guid=1890006;
-- 1890007 -> 1890165
UPDATE gameobject SET guid=1890165 WHERE guid=1890007;
-- 1890008 -> 1890166
UPDATE gameobject SET guid=1890166 WHERE guid=1890008;
-- 1890009 -> 1890170
UPDATE gameobject SET guid=1890170 WHERE guid=1890009;
-- 1890010 -> 1890171
UPDATE gameobject SET guid=1890171 WHERE guid=1890010;
-- 1890011 -> 1890167
UPDATE gameobject SET guid=1890167 WHERE guid=1890011;
-- 1890012 -> 1890177
UPDATE gameobject SET guid=1890177 WHERE guid=1890012;
UPDATE pool_gameobject SET guid=1890177, pool_entry=46087, description='Scarlet Monastery Cathedral (Lower Chapel Gardens) - Goldthorn (2046)' WHERE guid=1890012;
-- 1890013 -> 1890182
UPDATE gameobject SET guid=1890182 WHERE guid=1890013;
UPDATE pool_gameobject SET guid=1890182, pool_entry=46088, description='Scarlet Monastery Cathedral (Upper Chapel Gardens) - Goldthorn (2046)' WHERE guid=1890013;
-- 1890014 -> 1890181
UPDATE gameobject SET guid=1890181 WHERE guid=1890014;
UPDATE pool_gameobject SET guid=1890181, pool_entry=46087, description='Scarlet Monastery Cathedral (Lower Chapel Gardens) - Goldthorn (2046)' WHERE guid=1890014;
-- 1890015 -> 1890186
UPDATE gameobject SET guid=1890186 WHERE guid=1890015;
UPDATE pool_gameobject SET guid=1890186, pool_entry=46088, description='Scarlet Monastery Cathedral (Upper Chapel Gardens) - Goldthorn (2046)' WHERE guid=1890015;
-- 1890019 -> 1890175
UPDATE gameobject SET guid=1890175 WHERE guid=1890019;
UPDATE pool_gameobject SET guid=1890175, pool_entry=46089, description='Scarlet Monastery Cathedral (Lower Chapel Gardens) - Liferoot (2041)' WHERE guid=1890019;
-- 1890020 -> 1890168
UPDATE gameobject SET guid=1890168 WHERE guid=1890020;
-- 1890021 -> 1890184
UPDATE gameobject SET guid=1890184 WHERE guid=1890021;
UPDATE pool_gameobject SET guid=1890184, pool_entry=46088, description='Scarlet Monastery Cathedral (Upper Chapel Gardens) - Goldthorn (2046)' WHERE guid=1890021;
-- 1890022 -> 1890180
UPDATE gameobject SET guid=1890180 WHERE guid=1890022;
UPDATE pool_gameobject SET guid=1890180, pool_entry=46087, description='Scarlet Monastery Cathedral (Lower Chapel Gardens) - Goldthorn (2046)' WHERE guid=1890022;
-- 1890023 -> 1890185
UPDATE gameobject SET guid=1890185 WHERE guid=1890023;
UPDATE pool_gameobject SET guid=1890185, pool_entry=46088, description='Scarlet Monastery Cathedral (Upper Chapel Gardens) - Goldthorn (2046)' WHERE guid=1890023;
-- 1890141 -> 1890183
UPDATE gameobject SET guid=1890183 WHERE guid=1890141;
UPDATE pool_gameobject SET guid=1890183, pool_entry=46088, description='Scarlet Monastery Cathedral (Upper Chapel Gardens) - Goldthorn (2046)' WHERE guid=1890141;
-- 1890142 -> 1890179
UPDATE gameobject SET guid=1890179 WHERE guid=1890142;
UPDATE pool_gameobject SET guid=1890179, pool_entry=46087, description='Scarlet Monastery Cathedral (Lower Chapel Gardens) - Goldthorn (2046)' WHERE guid=1890142;
-- 1890143 -> 1890178
UPDATE gameobject SET guid=1890178 WHERE guid=1890143;
UPDATE pool_gameobject SET guid=1890178, pool_entry=46087, description='Scarlet Monastery Cathedral (Lower Chapel Gardens) - Goldthorn (2046)' WHERE guid=1890143;
-- Adding missing GOs from target database
DELETE FROM gameobject WHERE guid IN (1890001, 1890002, 1890003, 1890004, 1890005, 1890016, 1890017, 1890018, 1890112, 1890113, 1890121, 1890122) OR guid BETWEEN 1890131 AND 1890138;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(1890112, 0, 189, 1748.22, 1252.28, 18.1573, 5.70723, 0.0, 0.0, -0.284015, 0.95882, 86400, 86400),
(1890113, 0, 189, 1847.77, 1276.34, 18.1573, 2.80997, 0.0, 0.0, 0.986285, 0.16505, 86400, 86400),
(1890121, 0, 189, 223.898, -292.728, 19.1996, 2.51327, 0.0, 0.0, 0.951056, 0.309017, 86400, 86400),
(1890122, 0, 189, 277.401, -365.671, 20.3969, 3.05433, 0.0, 0.0, 0.999048, 0.0436193, 86400, 86400),
(1890124, 0, 189, 175.541, -418.852, 18.868, 6.21337, 0.0, 0.0, -0.0348988, 0.999391, 86400, 86400),
(1890131, 0, 189, 1684.86, -345.412, 18.0233, 0.0349062, 0.0, 0.0, 0.0174522, 0.999848, 86400, 86400),
(1890132, 0, 189, 1743.48, -407.254, 8.01026, 0.0174525, 0.0, 0.0, 0.00872612, 0.999962, 86400, 86400),
(1890133, 0, 189, 1771.76, -377.259, 8.01092, -1.51844, 0.0, 0.0, 0.688354, -0.725374, 86400, 86400),
(1890134, 0, 189, 1745.17, -357.994, 8.01148, -1.85005, 0.0, 0.0, 0.798635, -0.601815, 86400, 86400),
(1890135, 0, 189, 1795.07, -431.977, 8.01001, 0.0, 0.0, 0.0, 0.0, 1.0, 86400, 86400),
(1890136, 0, 189, 1803.25, -398.513, 8.01243, 3.12412, 0.0, 0.0, 0.999962, 0.00873464, 86400, 86400),
(1890137, 0, 189, 1743.97, -389.967, 8.00978, 0.0349062, 0.0, 0.0, 0.0174522, 0.999848, 86400, 86400),
(1890138, 0, 189, 1782.57, -414.356, 8.01169, 1.5708, 0.0, 0.0, 0.707107, 0.707107, 86400, 86400),
(1890151, 0, 189, 1776.21, 1224.47, 17.5028, 1.6057, 0.0, 0.0, 0.719339, 0.694659, 86400, 86400),
(1890152, 0, 189, 1818.8, 1241.0, 17.5499, 3.90954, 0.0, 0.0, -0.927183, 0.374608, 86400, 86400),
(1890153, 0, 189, 1813.73, 1274.33, 17.622, 4.41568, 0.0, 0.0, -0.803857, 0.594823, 86400, 86400),
(1890154, 0, 189, 1775.33, 1288.49, 17.5497, 3.73501, 0.0, 0.0, -0.956305, 0.292372, 86400, 86400),
(1890155, 0, 189, 1833.85, 1318.35, 19.6896, 2.49582, 0.0, 0.0, 0.948323, 0.317306, 86400, 86400),
(1890156, 0, 189, 1840.29, 1347.77, 18.0907, 0.0, 0.0, 0.0, 0.0, 1.0, 86400, 86400),
(1890157, 0, 189, 1756.58, 1345.03, 19.7123, 0.174532, 0.0, 0.0, 0.0871553, 0.996195, 86400, 86400),
(1890158, 0, 189, 1839.61, 1377.49, 18.6989, 4.29351, 0.0, 0.0, -0.83867, 0.54464, 86400, 86400),
(1890159, 0, 189, 1739.89, 1377.57, 17.521, 5.21854, 0.0, 0.0, -0.507538, 0.861629, 86400, 86400),
(1890160, 0, 189, 1746.37, 1410.68, 22.1887, 0.226893, 0.0, 0.0, 0.113203, 0.993572, 86400, 86400),
(1890161, 0, 189, 1836.24, 1408.23, 21.7179, 2.51327, 0.0, 0.0, 0.951056, 0.309017, 86400, 86400),
(1890162, 0, 189, 1796.03, 1417.5, 14.4893, 3.59538, 0.0, 0.0, -0.97437, 0.224951, 86400, 86400),
(1890172, 2042, 189, 1701.49, -346.695, 18.0501, 1.16937, 0.0, 0.0, 0.551936, 0.833886, 86400, 86400);

-- Adding missing GO spawn entries from target database
INSERT INTO gameobject_spawn_entry VALUES
(1890111, 75296),
(1890111, 75299),
(1890114, 75296),
(1890114, 75299),
(1890123, 75296),
(1890123, 75299),
(1890112, 75296),
(1890112, 75299),
(1890113, 75296),
(1890113, 75299),
(1890121, 75296),
(1890121, 75299),
(1890122, 75296),
(1890122, 75299),
(1890124, 75296),
(1890124, 75299),
(1890131, 75297),
(1890131, 75300),
(1890132, 75297),
(1890132, 75300),
(1890133, 3703),
(1890133, 3704),
(1890134, 3703),
(1890134, 3704),
(1890135, 3703),
(1890135, 3704),
(1890136, 3703),
(1890136, 3704),
(1890137, 3703),
(1890137, 3704),
(1890138, 3703),
(1890138, 3704),
(1890151, 1624),
(1890151, 1628),
(1890152, 1624),
(1890152, 1628),
(1890153, 1624),
(1890153, 1628),
(1890154, 1624),
(1890154, 1628),
(1890155, 1624),
(1890155, 1628),
(1890156, 1624),
(1890156, 1628),
(1890157, 1624),
(1890157, 1628),
(1890158, 1624),
(1890158, 1628),
(1890159, 1624),
(1890159, 1628),
(1890160, 1624),
(1890160, 1628),
(1890161, 1624),
(1890161, 1628),
(1890162, 1624),
(1890162, 1628);

-- Insert missing pool gameobject entries from target database
DELETE FROM pool_gameobject WHERE guid IN (1890112, 1890113, 1890121, 1890122) OR guid BETWEEN 1890131 AND 1890138;
INSERT INTO pool_gameobject VALUES
(1890112, 46092, 0.0, 'Scarlet Monastery Graveyard (Forlorn Cloister & Honor''s Tomb) - Large Iron Bound Chest, Large Solid Chest (75296,75299)'),
(1890113, 46092, 0.0, 'Scarlet Monastery Graveyard (Forlorn Cloister & Honor''s Tomb) - Large Iron Bound Chest, Large Solid Chest (75296,75299)'),
(1890121, 46094, 0.0, 'Scarlet Monastery Library (Scarlet Monastery) - Large Iron Bound Chest, Large Solid Chest (75296,75299)'),
(1890122, 46094, 0.0, 'Scarlet Monastery Library (Scarlet Monastery) - Large Iron Bound Chest, Large Solid Chest (75296,75299)'),
(1890124, 46095, 0.0, 'Scarlet Monastery Library (Athenaeum) - Large Iron Bound Chest, Large Solid Chest (75296,75299)'),
(1890131, 46097, 0.0, 'Scarlet Monastery Armory (Training Grounds) - Large Iron Bound Chest, Large Solid Chest (75297,75300)'),
(1890132, 46098, 0.0, 'Scarlet Monastery Armory (Footman''s Armory) - Large Iron Bound Chest, Large Solid Chest (75297,75300)'),
(1890133, 46099, 0.0, 'Scarlet Monastery Armory (Footman''s Armory) - Armor Crate, Weapon Crate (3703,3704)'),
(1890134, 46099, 0.0, 'Scarlet Monastery Armory (Footman''s Armory) - Armor Crate, Weapon Crate (3703,3704)'),
(1890135, 46099, 0.0, 'Scarlet Monastery Armory (Footman''s Armory) - Armor Crate, Weapon Crate (3703,3704)'),
(1890136, 46099, 0.0, 'Scarlet Monastery Armory (Footman''s Armory) - Armor Crate, Weapon Crate (3703,3704)'),
(1890137, 46099, 0.0, 'Scarlet Monastery Armory (Footman''s Armory) - Armor Crate, Weapon Crate (3703,3704)'),
(1890138, 46099, 0.0, 'Scarlet Monastery Armory (Footman''s Armory) - Armor Crate, Weapon Crate (3703,3704)'),
(1890151, 46051, 0.0, 'Scarlet Monastery Graveyard - Kingsblood, Grave Moss (1624,1628)'),
(1890152, 46051, 0.0, 'Scarlet Monastery Graveyard - Kingsblood, Grave Moss (1624,1628)'),
(1890153, 46051, 0.0, 'Scarlet Monastery Graveyard - Kingsblood, Grave Moss (1624,1628)'),
(1890154, 46051, 0.0, 'Scarlet Monastery Graveyard - Kingsblood, Grave Moss (1624,1628)'),
(1890155, 46051, 0.0, 'Scarlet Monastery Graveyard - Kingsblood, Grave Moss (1624,1628)'),
(1890156, 46051, 0.0, 'Scarlet Monastery Graveyard - Kingsblood, Grave Moss (1624,1628)'),
(1890157, 46051, 0.0, 'Scarlet Monastery Graveyard - Kingsblood, Grave Moss (1624,1628)'),
(1890158, 46051, 0.0, 'Scarlet Monastery Graveyard - Kingsblood, Grave Moss (1624,1628)'),
(1890159, 46051, 0.0, 'Scarlet Monastery Graveyard - Kingsblood, Grave Moss (1624,1628)'),
(1890160, 46051, 0.0, 'Scarlet Monastery Graveyard - Kingsblood, Grave Moss (1624,1628)'),
(1890161, 46051, 0.0, 'Scarlet Monastery Graveyard - Kingsblood, Grave Moss (1624,1628)'),
(1890162, 46051, 0.0, 'Scarlet Monastery Graveyard - Kingsblood, Grave Moss (1624,1628)'),
(1890165, 46052, 0.0, 'Scarlet Monastery Library - Liferoot (2041)'),
(1890166, 46052, 0.0, 'Scarlet Monastery Library - Fadeleaf (2042)'),
(1890167, 46052, 0.0, 'Scarlet Monastery Library - Fadeleaf (2042)'),
(1890168, 46052, 0.0, 'Scarlet Monastery Library - Fadeleaf (2042)'),
(1890170, 46053, 0.0, 'Scarlet Monastery Armory - Fadeleaf (2042)'),
(1890171, 46053, 0.0, 'Scarlet Monastery Armory - Fadeleaf (2042)'),
(1890172, 46053, 0.0, 'Scarlet Monastery Armory - Fadeleaf (2042)');

-- Update pool gameobject entries to match target database
UPDATE pool_gameobject SET pool_entry=46091, description='Scarlet Monastery Graveyard (Chamber of Atonement) - Large Iron Bound Chest, Large Solid Chest (75296,75299)' WHERE guid=1890111;
UPDATE pool_gameobject SET pool_entry=46092, description='Scarlet Monastery Graveyard (Forlorn Cloister & Honor''s Tomb) - Large Iron Bound Chest, Large Solid Chest (75296,75299)' WHERE guid=1890114;
UPDATE pool_gameobject SET pool_entry=46094, description='Scarlet Monastery Library (Scarlet Monastery) - Large Iron Bound Chest, Large Solid Chest (75296,75299)' WHERE guid=1890123;

-- Add missing pool templates from target database
DELETE FROM pool_template WHERE entry IN (46054);
INSERT INTO pool_template VALUES
(46089, 1, 'Scarlet Monastery Cathedral - Liferoot Pool'),
(46087, 1, 'Scarlet Monastery Cathedral (Lower Chapel Gardens) - Goldthorn Pool'),
(46088, 1, 'Scarlet Monastery Cathedral (Upper Chapel Gardens) - Goldthorn Pool'),
(46092, 1, 'Scarlet Monastery Graveyard (Forlorn Cloister & Honor''s Tomb) - Chest Pool'),
(46090, 2, 'Scarlet Monastery Graveyard - Master Chest Pool'),
(46094, 1, 'Scarlet Monastery Library (Scarlet Monastery) - Chest Pool'),
(46093, 2, 'Scarlet Monastery Library - Master Chest Pool'),
(46095, 1, 'Scarlet Monastery Library (Athenaeum) - Chest Pool'),
(46097, 1, 'Scarlet Monastery Armory (Training Grounds) - Chest Pool'),
(46096, 1, 'Scarlet Monastery Armory - Master Chest Pool'),
(46098, 1, 'Scarlet Monastery Armory (Footman''s Armory) - Chest Pool'),
(46099, 2, 'Scarlet Monastery Armory - Weapon Crate & Armor Crate Pool');

-- Update pool template entries to match target database
UPDATE pool_template SET entry=46091, description="Scarlet Monastery Graveyard (Chamber of Atonement) - Chest Pool" WHERE entry=46083;

-- Add missing pool pools from target database
INSERT INTO pool_pool VALUES
(46091, 46090, 0.0, 'Scarlet Monastery Graveyard (Chamber of Atonement) - Chest Pool'),
(46092, 46090, 0.0, 'Scarlet Monastery Graveyard (Forlorn Cloister & Honor''s Tomb) - Chest Pool'),
(46094, 46093, 0.0, 'Scarlet Monastery Library (Scarlet Monastery) - Chest Pool'),
(46095, 46093, 0.0, 'Scarlet Monastery Library (Athenaeum) - Chest Pool'),
(46097, 46096, 0.0, 'Scarlet Monastery Armory (Training Grounds) - Chest Pool'),
(46098, 46096, 0.0, 'Scarlet Monastery Armory (Footman''s Armory) - Chest Pool');


-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
-- Blackrock Spire
-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

-- Update values of existing GOs based on target database
DELETE FROM gameobject WHERE guid IN (2290008, 2290009, 2290308, 2290309, 2290310, 2290311);
UPDATE gameobject SET rotation2=0.978148, rotation3=0.207912 WHERE guid=2290001;
UPDATE gameobject SET rotation2=0.978148, rotation3=0.207912 WHERE guid=2290002;
UPDATE gameobject SET rotation2=0.766044, rotation3=0.642789 WHERE guid=2290003;
UPDATE gameobject SET rotation2=0.766044, rotation3=0.642789 WHERE guid=2290004;
UPDATE gameobject SET rotation2=0.766044, rotation3=0.642789 WHERE guid=2290005;
UPDATE gameobject SET rotation2=0.766044, rotation3=0.642789 WHERE guid=2290006;
UPDATE gameobject SET orientation=-1.5708 WHERE guid=2290007;
UPDATE gameobject SET rotation2=-1.0 WHERE guid=2290025;
UPDATE gameobject SET rotation2=-1.0 WHERE guid=2290026;
UPDATE gameobject SET rotation2=-1.0 WHERE guid=2290027;
UPDATE gameobject SET rotation2=-1.0 WHERE guid=2290028;
UPDATE gameobject SET rotation2=-1.0 WHERE guid=2290029;
UPDATE gameobject SET rotation2=-1.0 WHERE guid=2290030;
UPDATE gameobject SET rotation2=-1.0 WHERE guid=2290031;
UPDATE gameobject SET rotation2=-1.0 WHERE guid=2290032;
UPDATE gameobject SET rotation2=0.978148, rotation3=0.207912 WHERE guid=2290033;
UPDATE gameobject SET rotation2=0.978148, rotation3=0.207912 WHERE guid=2290034;
UPDATE gameobject SET rotation2=0.978148, rotation3=0.207912 WHERE guid=2290035;
UPDATE gameobject SET rotation2=-0.66913, rotation3=0.743145 WHERE guid=2290036;
UPDATE gameobject SET rotation2=0.978148, rotation3=0.207912 WHERE guid=2290037;
UPDATE gameobject SET rotation2=0.978148, rotation3=0.207912 WHERE guid=2290038;
UPDATE gameobject SET position_z=76.8611 WHERE guid=2290039;
UPDATE gameobject SET rotation2=-1.0 WHERE guid=2290047;
UPDATE gameobject SET rotation2=-1.0 WHERE guid=2290048;
UPDATE gameobject SET rotation2=0.0, rotation3=1.0 WHERE guid=2290263;
UPDATE gameobject SET rotation2=-1.0 WHERE guid=2290264;
UPDATE gameobject SET rotation2=-0.707107, rotation3=0.707107 WHERE guid=2290265;
UPDATE gameobject SET rotation2=0.0, rotation3=1.0 WHERE guid=2290266;
UPDATE gameobject SET rotation2=0.382683, rotation3=0.92388 WHERE guid=2290268;
UPDATE gameobject SET rotation2=-0.707107, rotation3=0.707107 WHERE guid=2290269;
UPDATE gameobject SET rotation2=0.92388, rotation3=0.382683 WHERE guid=2290270;
UPDATE gameobject SET rotation2=-0.92388, rotation3=0.382683 WHERE guid=2290271;
UPDATE gameobject SET rotation2=-1.0 WHERE guid=2290272;
UPDATE gameobject SET rotation2=0.0, rotation3=1.0 WHERE guid=2290273;
UPDATE gameobject SET rotation2=-1.0 WHERE guid=2290274;
UPDATE gameobject SET rotation2=-0.0523357, rotation3=0.99863 WHERE guid=2290275;
UPDATE gameobject SET rotation2=0.0, rotation3=1.0 WHERE guid=2290276;
UPDATE gameobject SET rotation2=0.0, rotation3=1.0 WHERE guid=2290282;
UPDATE gameobject SET orientation=-0.0349063, rotation2=-0.0174522, rotation3=0.999848 WHERE guid=2290287;
UPDATE gameobject SET orientation=0.0698117, rotation2=0.0348988, rotation3=0.999391 WHERE guid=2290288;
UPDATE gameobject SET rotation2=-1.0 WHERE guid=2290289;
UPDATE gameobject SET rotation2=-1.0 WHERE guid=2290290;
UPDATE gameobject SET rotation2=-1.0 WHERE guid=2290291;
UPDATE gameobject SET rotation2=-1.0 WHERE guid=2290292;
UPDATE gameobject SET rotation2=-1.0 WHERE guid=2290293;
UPDATE gameobject SET rotation2=-1.0 WHERE guid=2290294;
UPDATE gameobject SET orientation=-2.26893 WHERE guid=2290331;
UPDATE gameobject SET rotation2=0.0, rotation3=1.0 WHERE guid=2290335;
UPDATE gameobject SET rotation2=0.71325, rotation3=0.70091 WHERE guid=2290336;
UPDATE gameobject SET orientation=-2.1293 WHERE guid=2290337;
UPDATE gameobject SET position_x=-12.2735, orientation=2.32129, rotation2=0.0, rotation3=1.0 WHERE guid=2290338;
UPDATE gameobject SET orientation=3.08918, rotation2=0.0, rotation3=1.0 WHERE guid=2290339;
UPDATE gameobject SET orientation=1.62316, rotation2=0.0, rotation3=1.0 WHERE guid=2290341;
UPDATE gameobject SET orientation=1.09956, rotation2=0.0, rotation3=1.0 WHERE guid=2290342;
UPDATE gameobject SET orientation=1.29154, rotation2=0.0, rotation3=1.0 WHERE guid=2290343;
UPDATE gameobject SET orientation=-1.97222, rotation2=0.0, rotation3=1.0 WHERE guid=2290344;
UPDATE gameobject SET position_y=-589.639, orientation=-3.08918, rotation2=0.0, rotation3=1.0 WHERE guid=2290345;
UPDATE gameobject SET orientation=-0.593412, rotation2=0.0, rotation3=1.0 WHERE guid=2290346;
UPDATE gameobject SET rotation2=-1.0 WHERE guid=2290347;
UPDATE gameobject SET rotation2=-1.0 WHERE guid=2290348;
UPDATE gameobject SET orientation=-1.64933, rotation2=-0.734322, rotation3=0.678802 WHERE guid=2290351;
UPDATE gameobject SET rotation0=0.00822973, rotation1=-0.0190172, rotation2=-0.999784, rotation3=0.00126859 WHERE guid=2290354;
UPDATE gameobject SET rotation0=0.00822973, rotation1=-0.0190172, rotation2=-0.999784, rotation3=0.00126859 WHERE guid=2290355;
UPDATE gameobject SET rotation0=0.0295649, rotation1=-0.0015707, rotation2=-0.999561 WHERE guid=2290356;
UPDATE gameobject SET rotation3=1.0 WHERE guid=2290357;
UPDATE gameobject SET rotation3=1.0 WHERE guid=2290358;
UPDATE gameobject SET rotation3=1.0 WHERE guid=2290359;
UPDATE gameobject SET rotation3=1.0 WHERE guid=2290360;
UPDATE gameobject SET rotation3=1.0 WHERE guid=2290361;
UPDATE gameobject SET rotation3=1.0 WHERE guid=2290362;
UPDATE gameobject SET rotation3=1.0 WHERE guid=2290363;
UPDATE gameobject SET rotation3=1.0 WHERE guid=2290364;
UPDATE gameobject SET rotation3=1.0 WHERE guid=2290365;
UPDATE gameobject SET rotation3=1.0 WHERE guid=2290366;
UPDATE gameobject SET rotation3=1.0 WHERE guid=2290367;
UPDATE gameobject SET rotation3=1.0 WHERE guid=2290368;
UPDATE gameobject SET rotation3=1.0 WHERE guid=2290369;
UPDATE gameobject SET rotation3=1.0 WHERE guid=2290370;
UPDATE gameobject SET rotation0=-0.0333757, rotation1=-0.0110826, rotation2=0.999381 WHERE guid=2290371;
UPDATE gameobject SET rotation3=1.0 WHERE guid=2290372;
UPDATE gameobject SET rotation2=-0.793352, rotation3=0.608763 WHERE guid=2290374;
UPDATE gameobject SET rotation2=-1.0 WHERE guid=2290375;
UPDATE gameobject SET rotation0=0.00822973, rotation1=-0.0190172, rotation2=-0.999784, rotation3=0.00126859 WHERE guid=2290376;
UPDATE gameobject SET rotation0=0.00762796, rotation1=0.0192661, rotation2=0.707066, rotation3=0.706844 WHERE guid=2290377;
UPDATE gameobject SET rotation0=0.0199299, rotation1=0.00567627, rotation2=-0.130342, rotation3=0.991252 WHERE guid=2290378;
UPDATE gameobject SET rotation0=0.0192666, rotation1=-0.00762749, rotation2=-0.706843, rotation3=0.707067 WHERE guid=2290379;
UPDATE gameobject SET rotation0=0.00822973, rotation1=-0.0190172, rotation2=-0.999784, rotation3=0.00126859 WHERE guid=2290380;
UPDATE gameobject SET rotation0=0.0148807, rotation1=-0.0144205, rotation2=-0.92362, rotation3=0.382748 WHERE guid=2290381;
UPDATE gameobject SET rotation2=-1.0 WHERE guid=2290382;
UPDATE gameobject SET rotation0=0.00263071, rotation1=0.0212584, rotation2=0.99977 WHERE guid=2290383;
UPDATE gameobject SET rotation2=0.0, rotation3=1.0 WHERE guid=2290384;
UPDATE gameobject SET rotation3=1.0 WHERE guid=2290385;
UPDATE gameobject SET rotation2=0.0, rotation3=1.0 WHERE guid=2290386;
UPDATE gameobject SET rotation2=-1.0 WHERE guid=2290387;
UPDATE gameobject SET rotation2=0.999962, rotation3=0.00873464 WHERE guid=2290388;
UPDATE gameobject SET rotation2=-1.0 WHERE guid=2290389;
UPDATE gameobject SET rotation2=-1.0 WHERE guid=2290390;
UPDATE gameobject SET rotation2=-1.0 WHERE guid=2290391;
UPDATE gameobject SET id=0 WHERE guid=2290405;
UPDATE gameobject SET id=0, rotation3=0.34202 WHERE guid=2290419;
-- Update GUID of existing GOs that have different GUID in target database
-- 2290018 -> 2290008
UPDATE gameobject SET guid=2290008, orientation=-1.5708 WHERE guid=2290018;
-- 2290022 -> 2290009
UPDATE gameobject SET guid=2290009, orientation=-1.5708 WHERE guid=2290022;
-- 2290049 -> 2290516
UPDATE gameobject SET guid=2290516, rotation2=-0.987688, rotation3=0.156436, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290049;
-- 2290050 -> 2290517
UPDATE gameobject SET guid=2290517, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290050;
-- 2290051 -> 2290518
UPDATE gameobject SET guid=2290518, rotation2=-0.700909, rotation3=0.713251, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290051;
-- 2290052 -> 2290519
UPDATE gameobject SET guid=2290519, rotation2=0.309016, rotation3=0.951057, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290052;
-- 2290053 -> 2290520
UPDATE gameobject SET guid=2290520, rotation2=-0.0871553, rotation3=0.996195, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290053;
-- 2290054 -> 2290454
UPDATE gameobject SET guid=2290454, rotation2=-0.0610485, rotation3=0.998135, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290054;
-- 2290055 -> 2290451
UPDATE gameobject SET guid=2290451, rotation2=-0.83867, rotation3=0.54464, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290055;
-- 2290056 -> 2290521
UPDATE gameobject SET guid=2290521, rotation2=-0.945518, rotation3=0.325568, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290056;
-- 2290057 -> 2290522
UPDATE gameobject SET guid=2290522, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290057;
-- 2290058 -> 2290049
UPDATE gameobject SET guid=2290049, rotation2=0.537299, rotation3=0.843392, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290058;
-- 2290059 -> 2290050
UPDATE gameobject SET guid=2290050, rotation2=0.656058, rotation3=0.75471, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290059;
-- 2290060 -> 2290051
UPDATE gameobject SET guid=2290051, rotation2=0.719339, rotation3=0.694659, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290060;
-- 2290061 -> 2290052
UPDATE gameobject SET guid=2290052, rotation2=-0.681998, rotation3=0.731354, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290061;
-- 2290062 -> 2290053
UPDATE gameobject SET guid=2290053, rotation2=-0.996194, rotation3=0.087165, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290062;
-- 2290063 -> 2290054
UPDATE gameobject SET guid=2290054, rotation2=-0.866025, rotation3=0.500001, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290063;
-- 2290064 -> 2290055
UPDATE gameobject SET guid=2290055, rotation2=-0.104528, rotation3=0.994522, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290064;
-- 2290065 -> 2290056
UPDATE gameobject SET guid=2290056, rotation2=0.300705, rotation3=0.953717, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290065;
-- 2290066 -> 2290057
UPDATE gameobject SET guid=2290057, rotation2=-0.656058, rotation3=0.75471, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290066;
-- 2290067 -> 2290058
UPDATE gameobject SET guid=2290058, rotation2=-0.920505, rotation3=0.390732, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290067;
-- 2290068 -> 2290059
UPDATE gameobject SET guid=2290059, rotation2=0.366501, rotation3=0.930418, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290068;
-- 2290069 -> 2290060
UPDATE gameobject SET guid=2290060, rotation2=0.469471, rotation3=0.882948, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290069;
-- 2290070 -> 2290061
UPDATE gameobject SET guid=2290061, rotation2=0.996194, rotation3=0.087165, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290070;
-- 2290071 -> 2290062
UPDATE gameobject SET guid=2290062, rotation2=0.83867, rotation3=0.54464, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290071;
-- 2290072 -> 2290063
UPDATE gameobject SET guid=2290063, rotation2=-0.707107, rotation3=0.707107, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290072;
-- 2290073 -> 2290064
UPDATE gameobject SET guid=2290064, rotation2=0.981627, rotation3=0.190812, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290073;
-- 2290074 -> 2290065
UPDATE gameobject SET guid=2290065, rotation2=0.965925, rotation3=0.258821, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290074;
-- 2290075 -> 2290066
UPDATE gameobject SET guid=2290066, rotation2=-0.760406, rotation3=0.649449, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290075;
-- 2290076 -> 2290067
UPDATE gameobject SET guid=2290067, rotation2=-0.0436192, rotation3=0.999048, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290076;
-- 2290077 -> 2290068
UPDATE gameobject SET guid=2290068, rotation2=-0.537299, rotation3=0.843392, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290077;
-- 2290078 -> 2290506
UPDATE gameobject SET guid=2290506, rotation2=-0.965925, rotation3=0.258821, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290078;
-- 2290079 -> 2290507
UPDATE gameobject SET guid=2290507, rotation2=-0.566406, rotation3=0.824126, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290079;
-- 2290080 -> 2290508
UPDATE gameobject SET guid=2290508, rotation2=0.996194, rotation3=0.087165, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290080;
-- 2290081 -> 2290509
UPDATE gameobject SET guid=2290509, rotation2=0.83867, rotation3=0.54464, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290081;
-- 2290082 -> 2290510
UPDATE gameobject SET guid=2290510, rotation2=-0.636078, rotation3=0.771625, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290082;
-- 2290083 -> 2290511
UPDATE gameobject SET guid=2290511, rotation2=0.819152, rotation3=0.573577, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290083;
-- 2290084 -> 2290512
UPDATE gameobject SET guid=2290512, rotation2=-0.994521, rotation3=0.104536, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290084;
-- 2290085 -> 2290513
UPDATE gameobject SET guid=2290513, rotation2=0.438371, rotation3=0.898794, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290085;
-- 2290086 -> 2290514
UPDATE gameobject SET guid=2290514, rotation2=0.731353, rotation3=0.681999, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290086;
-- 2290087 -> 2290515
UPDATE gameobject SET guid=2290515, rotation2=0.71325, rotation3=0.70091, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290087;
-- 2290088 -> 2290069
UPDATE gameobject SET guid=2290069, rotation2=-0.492423, rotation3=0.870356, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290088;
-- 2290089 -> 2290070
UPDATE gameobject SET guid=2290070, rotation2=-0.97437, rotation3=0.224951, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290089;
-- 2290090 -> 2290071
UPDATE gameobject SET guid=2290071, rotation2=-0.267238, rotation3=0.963631, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290090;
-- 2290091 -> 2290072
UPDATE gameobject SET guid=2290072, rotation2=-0.147809, rotation3=0.989016, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290091;
-- 2290092 -> 2290073
UPDATE gameobject SET guid=2290073, orientation=2.89725, rotation2=0.992546, rotation3=0.12187, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290092;
-- 2290093 -> 2290074
UPDATE gameobject SET guid=2290074, rotation2=-0.199368, rotation3=0.979925, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290093;
-- 2290094 -> 2290075
UPDATE gameobject SET guid=2290075, rotation2=0.942641, rotation3=0.333808, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290094;
-- 2290095 -> 2290076
UPDATE gameobject SET guid=2290076, rotation2=-0.951056, rotation3=0.309017, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290095;
-- 2290096 -> 2290077
UPDATE gameobject SET guid=2290077, rotation2=0.34202, rotation3=0.939693, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290096;
-- 2290097 -> 2290078
UPDATE gameobject SET guid=2290078, rotation2=0.224951, rotation3=0.97437, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290097;
-- 2290098 -> 2290079
UPDATE gameobject SET guid=2290079, rotation2=0.267238, rotation3=0.963631, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290098;
-- 2290099 -> 2290080
UPDATE gameobject SET guid=2290080, rotation2=-1.0, rotation3=0.0, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290099;
-- 2290100 -> 2290081
UPDATE gameobject SET guid=2290081, rotation2=-0.731354, rotation3=0.681998, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290100;
-- 2290101 -> 2290082
UPDATE gameobject SET guid=2290082, rotation2=-0.199368, rotation3=0.979925, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290101;
-- 2290102 -> 2290083
UPDATE gameobject SET guid=2290083, rotation2=0.333806, rotation3=0.942642, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290102;
-- 2290103 -> 2290084
UPDATE gameobject SET guid=2290084, rotation2=0.681998, rotation3=0.731354, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290103;
-- 2290104 -> 2290085
UPDATE gameobject SET guid=2290085, rotation2=-0.642787, rotation3=0.766045, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290104;
-- 2290105 -> 2290086
UPDATE gameobject SET guid=2290086, rotation2=0.998629, rotation3=0.0523532, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290105;
-- 2290106 -> 2290087
UPDATE gameobject SET guid=2290087, rotation2=-0.551936, rotation3=0.833886, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290106;
-- 2290107 -> 2290088
UPDATE gameobject SET guid=2290088, rotation2=-0.71325, rotation3=0.70091, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290107;
-- 2290108 -> 2290498
UPDATE gameobject SET guid=2290498, rotation2=0.130526, rotation3=0.991445, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290108;
-- 2290109 -> 2290499
UPDATE gameobject SET guid=2290499, rotation2=0.878817, rotation3=0.47716, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290109;
-- 2290110 -> 2290500
UPDATE gameobject SET guid=2290500, rotation2=-0.573576, rotation3=0.819152, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290110;
-- 2290111 -> 2290452
UPDATE gameobject SET guid=2290452, rotation2=0.374606, rotation3=0.927184, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290111;
-- 2290112 -> 2290501
UPDATE gameobject SET guid=2290501, rotation2=-0.857167, rotation3=0.515038, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290112;
-- 2290113 -> 2290502
UPDATE gameobject SET guid=2290502, orientation=-2.19911, rotation2=-0.891006, rotation3=0.453991, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290113;
-- 2290114 -> 2290503
UPDATE gameobject SET guid=2290503, rotation2=-0.83867, rotation3=0.54464, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290114;
-- 2290115 -> 2290504
UPDATE gameobject SET guid=2290504, rotation2=-0.507538, rotation3=0.861629, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290115;
-- 2290116 -> 2290460
UPDATE gameobject SET guid=2290460, orientation=-2.86234, rotation2=-0.990268, rotation3=0.139175, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290116;
-- 2290117 -> 2290505
UPDATE gameobject SET guid=2290505, rotation2=0.984807, rotation3=0.173652, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290117;
-- 2290118 -> 2290089
UPDATE gameobject SET guid=2290089, rotation2=0.173648, rotation3=0.984808, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290118;
-- 2290119 -> 2290090
UPDATE gameobject SET guid=2290090, rotation2=0.999962, rotation3=0.00873464, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290119;
-- 2290120 -> 2290091
UPDATE gameobject SET guid=2290091, rotation2=-0.994521, rotation3=0.104536, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290120;
-- 2290121 -> 2290092
UPDATE gameobject SET guid=2290092, rotation2=-0.898793, rotation3=0.438373, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290121;
-- 2290122 -> 2290093
UPDATE gameobject SET guid=2290093, rotation2=0.309016, rotation3=0.951057, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290122;
-- 2290123 -> 2290094
UPDATE gameobject SET guid=2290094, rotation2=0.300705, rotation3=0.953717, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290123;
-- 2290124 -> 2290095
UPDATE gameobject SET guid=2290095, rotation2=0.62932, rotation3=0.777146, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290124;
-- 2290125 -> 2290096
UPDATE gameobject SET guid=2290096, rotation2=-0.333807, rotation3=0.942641, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290125;
-- 2290126 -> 2290097
UPDATE gameobject SET guid=2290097, rotation2=-0.923879, rotation3=0.382686, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290126;
-- 2290127 -> 2290098
UPDATE gameobject SET guid=2290098, rotation2=-0.267238, rotation3=0.963631, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290127;
-- 2290128 -> 2290457
UPDATE gameobject SET guid=2290457, rotation2=-0.694658, rotation3=0.71934, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290128;
-- 2290129 -> 2290490
UPDATE gameobject SET guid=2290490, rotation2=-0.83867, rotation3=0.54464, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290129;
-- 2290130 -> 2290491
UPDATE gameobject SET guid=2290491, rotation2=0.113203, rotation3=0.993572, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290130;
-- 2290131 -> 2290492
UPDATE gameobject SET guid=2290492, rotation2=-0.688354, rotation3=0.725374, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290131;
-- 2290132 -> 2290493
UPDATE gameobject SET guid=2290493, rotation2=0.62932, rotation3=0.777146, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290132;
-- 2290133 -> 2290494
UPDATE gameobject SET guid=2290494, rotation2=-0.939692, rotation3=0.34202, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290133;
-- 2290134 -> 2290495
UPDATE gameobject SET guid=2290495, rotation2=0.819152, rotation3=0.573577, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290134;
-- 2290135 -> 2290458
UPDATE gameobject SET guid=2290458, rotation2=-0.147809, rotation3=0.989016, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290135;
-- 2290136 -> 2290496
UPDATE gameobject SET guid=2290496, rotation2=0.66262, rotation3=0.748956, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290136;
-- 2290137 -> 2290497
UPDATE gameobject SET guid=2290497, orientation=-2.9496, rotation2=-0.995396, rotation3=0.0958512, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290137;
-- 2290138 -> 2290099
UPDATE gameobject SET guid=2290099, rotation2=-0.173648, rotation3=0.984808, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290138;
-- 2290139 -> 2290100
UPDATE gameobject SET guid=2290100, rotation2=-0.317305, rotation3=0.948324, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290139;
-- 2290140 -> 2290101
UPDATE gameobject SET guid=2290101, rotation2=-0.965925, rotation3=0.258821, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290140;
-- 2290141 -> 2290102
UPDATE gameobject SET guid=2290102, rotation2=-0.414693, rotation3=0.909961, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290141;
-- 2290142 -> 2290103
UPDATE gameobject SET guid=2290103, rotation2=-0.292372, rotation3=0.956305, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290142;
-- 2290143 -> 2290104
UPDATE gameobject SET guid=2290104, rotation2=-0.956305, rotation3=0.292372, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290143;
-- 2290144 -> 2290105
UPDATE gameobject SET guid=2290105, rotation2=0.998135, rotation3=0.0610518, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290144;
-- 2290145 -> 2290106
UPDATE gameobject SET guid=2290106, rotation2=-0.507538, rotation3=0.861629, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290145;
-- 2290146 -> 2290107
UPDATE gameobject SET guid=2290107, rotation2=-0.999657, rotation3=0.0262016, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290146;
-- 2290147 -> 2290481
UPDATE gameobject SET guid=2290481, rotation2=-0.317305, rotation3=0.948324, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290147;
-- 2290148 -> 2290482
UPDATE gameobject SET guid=2290482, orientation=-2.80998, rotation2=-0.986285, rotation3=0.16505, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290148;
-- 2290149 -> 2290483
UPDATE gameobject SET guid=2290483, rotation2=0.824125, rotation3=0.566408, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290149;
-- 2290150 -> 2290461
UPDATE gameobject SET guid=2290461, rotation2=0.622514, rotation3=0.782609, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290150;
-- 2290151 -> 2290484
UPDATE gameobject SET guid=2290484, rotation2=-0.688354, rotation3=0.725374, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290151;
-- 2290152 -> 2290485
UPDATE gameobject SET guid=2290485, rotation2=-0.601814, rotation3=0.798636, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290152;
-- 2290153 -> 2290486
UPDATE gameobject SET guid=2290486, rotation2=0.469471, rotation3=0.882948, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290153;
-- 2290154 -> 2290487
UPDATE gameobject SET guid=2290487, rotation2=-0.809016, rotation3=0.587786, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290154;
-- 2290155 -> 2290488
UPDATE gameobject SET guid=2290488, rotation2=-0.861629, rotation3=0.507539, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290155;
-- 2290156 -> 2290489
UPDATE gameobject SET guid=2290489, rotation2=-0.544639, rotation3=0.838671, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290156;
-- 2290157 -> 2290108
UPDATE gameobject SET guid=2290108, rotation2=-0.782608, rotation3=0.622515, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290157;
-- 2290158 -> 2290109
UPDATE gameobject SET guid=2290109, rotation2=0.999048, rotation3=0.0436193, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290158;
-- 2290159 -> 2290110
UPDATE gameobject SET guid=2290110, rotation2=0.999048, rotation3=0.0436193, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290159;
-- 2290160 -> 2290111
UPDATE gameobject SET guid=2290111, rotation2=0.267238, rotation3=0.963631, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290160;
-- 2290161 -> 2290112
UPDATE gameobject SET guid=2290112, rotation2=-0.484809, rotation3=0.87462, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290161;
-- 2290162 -> 2290113
UPDATE gameobject SET guid=2290113, rotation2=-0.587785, rotation3=0.809017, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290162;
-- 2290163 -> 2290114
UPDATE gameobject SET guid=2290114, rotation2=-0.366501, rotation3=0.930418, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290163;
-- 2290164 -> 2290115
UPDATE gameobject SET guid=2290115, rotation2=-0.998629, rotation3=0.0523532, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290164;
-- 2290165 -> 2290116
UPDATE gameobject SET guid=2290116, rotation2=0.522498, rotation3=0.85264, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290165;
-- 2290166 -> 2290117
UPDATE gameobject SET guid=2290117, rotation2=0.67559, rotation3=0.737278, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290166;
-- 2290167 -> 2290473
UPDATE gameobject SET guid=2290473, rotation2=0.777145, rotation3=0.629321, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290167;
-- 2290168 -> 2290474
UPDATE gameobject SET guid=2290474, orientation=2.21657, rotation2=0.894934, rotation3=0.446199, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290168;
-- 2290169 -> 2290475
UPDATE gameobject SET guid=2290475, rotation2=0.996917, rotation3=0.0784664, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290169;
-- 2290170 -> 2290476
UPDATE gameobject SET guid=2290476, rotation2=-0.0871553, rotation3=0.996195, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290170;
-- 2290171 -> 2290477
UPDATE gameobject SET guid=2290477, rotation2=0.809016, rotation3=0.587786, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290171;
-- 2290172 -> 2290459
UPDATE gameobject SET guid=2290459, rotation2=0.537299, rotation3=0.843392, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290172;
-- 2290173 -> 2290478
UPDATE gameobject SET guid=2290478, rotation2=-0.267238, rotation3=0.963631, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290173;
-- 2290174 -> 2290479
UPDATE gameobject SET guid=2290479, rotation2=-0.771625, rotation3=0.636078, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290174;
-- 2290175 -> 2290480
UPDATE gameobject SET guid=2290480, rotation2=-0.62932, rotation3=0.777146, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290175;
-- 2290176 -> 2290118
UPDATE gameobject SET guid=2290118, rotation2=-0.970295, rotation3=0.241925, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290176;
-- 2290177 -> 2290119
UPDATE gameobject SET guid=2290119, orientation=2.26893, rotation2=0.906307, rotation3=0.422619, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290177;
-- 2290178 -> 2290120
UPDATE gameobject SET guid=2290120, rotation2=-0.991445, rotation3=0.130528, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290178;
-- 2290179 -> 2290121
UPDATE gameobject SET guid=2290121, rotation2=0.951056, rotation3=0.309017, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290179;
-- 2290180 -> 2290122
UPDATE gameobject SET guid=2290122, rotation2=0.656058, rotation3=0.75471, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290180;
-- 2290181 -> 2290123
UPDATE gameobject SET guid=2290123, rotation2=0.983254, rotation3=0.182238, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290181;
-- 2290182 -> 2290124
UPDATE gameobject SET guid=2290124, rotation2=-0.537299, rotation3=0.843392, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290182;
-- 2290183 -> 2290125
UPDATE gameobject SET guid=2290125, rotation2=0.843391, rotation3=0.5373, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290183;
-- 2290184 -> 2290126
UPDATE gameobject SET guid=2290126, rotation2=-0.998135, rotation3=0.0610518, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290184;
-- 2290185 -> 2290127
UPDATE gameobject SET guid=2290127, rotation2=0.843391, rotation3=0.5373, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290185;
-- 2290186 -> 2290462
UPDATE gameobject SET guid=2290462, rotation2=0.67559, rotation3=0.737278, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290186;
-- 2290187 -> 2290465
UPDATE gameobject SET guid=2290465, rotation2=-0.366501, rotation3=0.930418, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290187;
-- 2290188 -> 2290466
UPDATE gameobject SET guid=2290466, rotation2=-0.0871553, rotation3=0.996195, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290188;
-- 2290189 -> 2290467
UPDATE gameobject SET guid=2290467, orientation=-2.9496, rotation2=-0.995396, rotation3=0.0958512, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290189;
-- 2290190 -> 2290468
UPDATE gameobject SET guid=2290468, rotation2=-0.130526, rotation3=0.991445, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290190;
-- 2290191 -> 2290469
UPDATE gameobject SET guid=2290469, rotation2=-0.0610485, rotation3=0.998135, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290191;
-- 2290192 -> 2290470
UPDATE gameobject SET guid=2290470, orientation=2.86234, rotation2=0.990268, rotation3=0.139175, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290192;
-- 2290193 -> 2290471
UPDATE gameobject SET guid=2290471, rotation2=-0.833885, rotation3=0.551938, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290193;
-- 2290194 -> 2290453
UPDATE gameobject SET guid=2290453, rotation2=0.987688, rotation3=0.156436, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290194;
-- 2290195 -> 2290472
UPDATE gameobject SET guid=2290472, rotation2=0.991445, rotation3=0.130528, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290195;
-- 2290196 -> 2290128
UPDATE gameobject SET guid=2290128, orientation=-2.26893, rotation2=-0.906307, rotation3=0.422619, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290196;
-- 2290197 -> 2290129
UPDATE gameobject SET guid=2290129, orientation=0.0349063, rotation2=0.0174522, rotation3=0.999848, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290197;
-- 2290198 -> 2290130
UPDATE gameobject SET guid=2290130, orientation=-2.21657, rotation2=-0.894934, rotation3=0.446199, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290198;
-- 2290199 -> 2290131
UPDATE gameobject SET guid=2290131, rotation2=-0.507538, rotation3=0.861629, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290199;
-- 2290200 -> 2290132
UPDATE gameobject SET guid=2290132, rotation2=-0.551936, rotation3=0.833886, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290200;
-- 2290201 -> 2290133
UPDATE gameobject SET guid=2290133, rotation2=-0.898793, rotation3=0.438373, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290201;
-- 2290202 -> 2290134
UPDATE gameobject SET guid=2290134, rotation2=0.182235, rotation3=0.983255, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290202;
-- 2290203 -> 2290135
UPDATE gameobject SET guid=2290135, rotation2=0.731353, rotation3=0.681999, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290203;
-- 2290204 -> 2290136
UPDATE gameobject SET guid=2290136, rotation2=-0.529919, rotation3=0.848048, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290204;
-- 2290205 -> 2290463
UPDATE gameobject SET guid=2290463, rotation2=-0.275637, rotation3=0.961262, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290205;
-- 2290206 -> 2290455
UPDATE gameobject SET guid=2290455, rotation2=-0.406736, rotation3=0.913546, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290206;
-- 2290207 -> 2290464
UPDATE gameobject SET guid=2290464, rotation2=-0.882947, rotation3=0.469473, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290207;
-- 2290208 -> 2290137
UPDATE gameobject SET guid=2290137, rotation2=-0.878817, rotation3=0.47716, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290208;
-- 2290209 -> 2290138
UPDATE gameobject SET guid=2290138, rotation2=-0.861629, rotation3=0.507539, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290209;
-- 2290210 -> 2290139
UPDATE gameobject SET guid=2290139, rotation2=-0.996917, rotation3=0.0784664, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290210;
-- 2290211 -> 2290140
UPDATE gameobject SET guid=2290140, rotation2=0.461748, rotation3=0.887011, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290211;
-- 2290212 -> 2290141
UPDATE gameobject SET guid=2290141, rotation2=0.878817, rotation3=0.47716, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290212;
-- 2290213 -> 2290142
UPDATE gameobject SET guid=2290142, rotation2=0.0697556, rotation3=0.997564, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290213;
-- 2290214 -> 2290143
UPDATE gameobject SET guid=2290143, rotation2=-0.566406, rotation3=0.824126, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290214;
-- 2290215 -> 2290144
UPDATE gameobject SET guid=2290144, rotation2=-0.999657, rotation3=0.0262016, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290215;
-- 2290216 -> 2290145
UPDATE gameobject SET guid=2290145, rotation2=-0.358368, rotation3=0.93358, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290216;
-- 2290217 -> 2290146
UPDATE gameobject SET guid=2290146, rotation2=-0.923879, rotation3=0.382686, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290217;
-- 2290218 -> 2290147
UPDATE gameobject SET guid=2290147, rotation2=-0.725374, rotation3=0.688355, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290218;
-- 2290219 -> 2290148
UPDATE gameobject SET guid=2290148, rotation2=0.694658, rotation3=0.71934, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290219;
-- 2290220 -> 2290149
UPDATE gameobject SET guid=2290149, rotation2=0.979924, rotation3=0.19937, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290220;
-- 2290221 -> 2290150
UPDATE gameobject SET guid=2290150, rotation2=-0.642787, rotation3=0.766045, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290221;
-- 2290222 -> 2290151
UPDATE gameobject SET guid=2290151, rotation2=0.754709, rotation3=0.656059, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290222;
-- 2290223 -> 2290152
UPDATE gameobject SET guid=2290152, orientation=0.0174525, rotation2=0.00872612, rotation3=0.999962, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290223;
-- 2290224 -> 2290153
UPDATE gameobject SET guid=2290153, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290224;
-- 2290225 -> 2290154
UPDATE gameobject SET guid=2290154, orientation=0.0698117, rotation2=0.0348988, rotation3=0.999391, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290225;
-- 2290226 -> 2290155
UPDATE gameobject SET guid=2290155, rotation2=0.0871553, rotation3=0.996195, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290226;
-- 2290227 -> 2290156
UPDATE gameobject SET guid=2290156, rotation2=-0.233445, rotation3=0.97237, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290227;
-- 2290228 -> 2290157
UPDATE gameobject SET guid=2290157, rotation2=0.566406, rotation3=0.824126, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290228;
-- 2290229 -> 2290158
UPDATE gameobject SET guid=2290158, rotation2=0.898793, rotation3=0.438373, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290229;
-- 2290230 -> 2290159
UPDATE gameobject SET guid=2290159, rotation2=0.965925, rotation3=0.258821, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290230;
-- 2290231 -> 2290160
UPDATE gameobject SET guid=2290160, rotation2=-0.976295, rotation3=0.216442, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290231;
-- 2290232 -> 2290161
UPDATE gameobject SET guid=2290161, rotation2=-0.0871553, rotation3=0.996195, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290232;
-- 2290233 -> 2290162
UPDATE gameobject SET guid=2290162, rotation2=0.358368, rotation3=0.93358, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290233;
-- 2290234 -> 2290163
UPDATE gameobject SET guid=2290163, rotation2=-0.594823, rotation3=0.803857, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290234;
-- 2290235 -> 2290164
UPDATE gameobject SET guid=2290164, rotation2=-0.34202, rotation3=0.939693, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290235;
-- 2290236 -> 2290165
UPDATE gameobject SET guid=2290165, rotation2=-0.374606, rotation3=0.927184, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290236;
-- 2290237 -> 2290166
UPDATE gameobject SET guid=2290166, rotation2=-0.999391, rotation3=0.0349061, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290237;
-- 2290238 -> 2290167
UPDATE gameobject SET guid=2290167, rotation2=-0.0436192, rotation3=0.999048, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290238;
-- 2290239 -> 2290168
UPDATE gameobject SET guid=2290168, rotation2=0.707107, rotation3=0.707107, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290239;
-- 2290240 -> 2290169
UPDATE gameobject SET guid=2290169, rotation2=-0.948323, rotation3=0.317306, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290240;
-- 2290241 -> 2290170
UPDATE gameobject SET guid=2290170, rotation2=-0.382683, rotation3=0.92388, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290241;
-- 2290242 -> 2290171
UPDATE gameobject SET guid=2290171, orientation=2.9496, rotation2=0.995396, rotation3=0.0958512, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290242;
-- 2290243 -> 2290172
UPDATE gameobject SET guid=2290172, rotation2=-0.477159, rotation3=0.878817, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290243;
-- 2290244 -> 2290173
UPDATE gameobject SET guid=2290173, rotation2=-0.484809, rotation3=0.87462, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290244;
-- 2290245 -> 2290174
UPDATE gameobject SET guid=2290174, rotation2=0.515038, rotation3=0.857168, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290245;
-- 2290246 -> 2290175
UPDATE gameobject SET guid=2290175, rotation2=-0.325567, rotation3=0.945519, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290246;
-- 2290247 -> 2290176
UPDATE gameobject SET guid=2290176, rotation2=-0.743144, rotation3=0.669131, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290247;
-- 2290248 -> 2290177
UPDATE gameobject SET guid=2290177, rotation2=0.0610485, rotation3=0.998135, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290248;
-- 2290249 -> 2290178
UPDATE gameobject SET guid=2290178, rotation2=0.358368, rotation3=0.93358, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290249;
-- 2290250 -> 2290179
UPDATE gameobject SET guid=2290179, rotation2=-0.874619, rotation3=0.48481, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290250;
-- 2290251 -> 2290180
UPDATE gameobject SET guid=2290180, rotation2=-0.833885, rotation3=0.551938, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290251;
-- 2290252 -> 2290181
UPDATE gameobject SET guid=2290181, rotation2=0.814116, rotation3=0.580703, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290252;
-- 2290253 -> 2290182
UPDATE gameobject SET guid=2290182, rotation2=-0.0436192, rotation3=0.999048, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290253;
-- 2290254 -> 2290183
UPDATE gameobject SET guid=2290183, rotation2=0.224951, rotation3=0.97437, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290254;
-- 2290255 -> 2290184
UPDATE gameobject SET guid=2290184, rotation2=-0.788011, rotation3=0.615662, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290255;
-- 2290256 -> 2290185
UPDATE gameobject SET guid=2290185, rotation2=0.754709, rotation3=0.656059, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290256;
-- 2290257 -> 2290186
UPDATE gameobject SET guid=2290186, rotation2=0.622514, rotation3=0.782609, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290257;
-- 2290258 -> 2290187
UPDATE gameobject SET guid=2290187, rotation2=0.91706, rotation3=0.39875, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290258;
-- 2290259 -> 2290188
UPDATE gameobject SET guid=2290188, rotation2=0.414693, rotation3=0.909961, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290259;
-- 2290260 -> 2290189
UPDATE gameobject SET guid=2290189, rotation2=0.777145, rotation3=0.629321, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290260;
-- 2290261 -> 2290456
UPDATE gameobject SET guid=2290456, rotation2=-0.382683, rotation3=0.92388, spawntimesecsmin=60, spawntimesecsmax=60 WHERE guid=2290261;
-- 2290283 -> 2290308
UPDATE gameobject SET guid=2290308, spawntimesecsmin=0, spawntimesecsmax=0 WHERE guid=2290283;
-- 2290284 -> 2290309
UPDATE gameobject SET guid=2290309, spawntimesecsmin=0, spawntimesecsmax=0 WHERE guid=2290284;
-- 2290285 -> 2290310
UPDATE gameobject SET guid=2290310, spawntimesecsmin=0, spawntimesecsmax=0 WHERE guid=2290285;
-- 2290286 -> 2290311
UPDATE gameobject SET guid=2290311, spawntimesecsmin=0, spawntimesecsmax=0 WHERE guid=2290286;
-- Adding missing GOs from target database
DELETE FROM gameobject WHERE guid BETWEEN 2290010 AND 2290022 OR guid IN (2290024, 2290262, 2290277, 2290278, 2290279, 2290280, 2290281, 2290302, 2290334, 2290349, 2290350, 2290393) OR guid BETWEEN 2290304 AND 2290330 OR guid BETWEEN 2290401 AND 2290420;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(2290010, 136932, 229, 157.778, -389.954, 121.964, -1.5708, 0.0, 0.0, -0.707107, 0.707107, 120, 120),
(2290011, 136933, 229, 150.609, -396.408, 121.964, -1.5708, 0.0, 0.0, -0.707107, 0.707107, 120, 120),
(2290012, 136934, 229, 155.816, -390.035, 121.964, -1.5708, 0.0, 0.0, -0.707107, 0.707107, 120, 120),
(2290013, 136935, 229, 145.176, -390.035, 121.964, -1.5708, 0.0, 0.0, -0.707107, 0.707107, 120, 120),
(2290014, 136936, 229, 153.36, -386.169, 121.964, -1.5708, 0.0, 0.0, -0.707107, 0.707107, 120, 120),
(2290015, 136937, 229, 149.569, -454.687, 121.964, 1.5708, 0.0, 0.0, 0.707107, 0.707107, 120, 120),
(2290016, 136938, 229, 153.253, -454.707, 121.964, 1.5708, 0.0, 0.0, 0.707107, 0.707107, 120, 120),
(2290017, 136939, 229, 157.753, -450.158, 121.964, 1.5708, 0.0, 0.0, 0.707107, 0.707107, 120, 120),
(2290018, 136940, 229, 155.768, -450.239, 121.964, 1.5708, 0.0, 0.0, 0.707107, 0.707107, 120, 120),
(2290019, 136941, 229, 152.32, -444.305, 121.964, 1.5708, 0.0, 0.0, 0.707107, 0.707107, 120, 120),
(2290020, 136942, 229, 150.342, -444.305, 121.964, 1.5708, 0.0, 0.0, 0.707107, 0.707107, 120, 120),
(2290021, 136943, 229, 147.113, -450.158, 121.964, 1.5708, 0.0, 0.0, 0.707107, 0.707107, 120, 120),
(2290022, 136944, 229, 145.151, -450.239, 121.964, 1.5708, 0.0, 0.0, 0.707107, 0.707107, 120, 120),
(2290024, 136946, 229, -172.352, -462.842, 87.3983, -1.6057, 0.0, 0.0, -0.719339, 0.694659, 120, 120),
(2290190, 175124, 229, 86.3671, -246.965, 91.4637, 1.81514, 0.0, 0.0, 0.788011, 0.615662, 60, 60),
(2290191, 175124, 229, 88.3432, -248.339, 91.4596, 2.28638, 0.0, 0.0, 0.909961, 0.414694, 60, 60),
(2290192, 175124, 229, 81.0104, -264.958, 91.4705, 2.75761, 0.0, 0.0, 0.981627, 0.190812, 60, 60),
(2290193, 175124, 229, 76.6499, -263.575, 91.4803, 0.767944, 0.0, 0.0, 0.374606, 0.927184, 60, 60),
(2290194, 175124, 229, 83.6532, -252.415, 91.4694, 1.95477, 0.0, 0.0, 0.829038, 0.559193, 60, 60),
(2290195, 175124, 229, 55.4223, -252.576, 97.0544, 1.37881, 0.0, 0.0, 0.636078, 0.771625, 60, 60),
(2290196, 175124, 229, 85.257, -253.145, 91.466, 1.64061, 0.0, 0.0, 0.731353, 0.681999, 60, 60),
(2290197, 175124, 229, 82.8732, -266.102, 91.4659, 0.820303, 0.0, 0.0, 0.398748, 0.91706, 60, 60),
(2290198, 175124, 229, 58.1175, -253.946, 96.881, 0.506145, 0.0, 0.0, 0.25038, 0.968148, 60, 60),
(2290199, 175124, 229, 73.3118, -275.095, 91.9131, 0.994837, 0.0, 0.0, 0.477159, 0.878817, 60, 60),
(2290200, 175124, 229, 61.3216, -272.013, 93.6009, -1.15192, 0.0, 0.0, -0.544639, 0.838671, 60, 60),
(2290201, 175124, 229, 76.1338, -273.126, 91.4802, 0.925024, 0.0, 0.0, 0.446198, 0.894935, 60, 60),
(2290202, 175124, 229, 63.2343, -269.357, 93.3948, 3.03684, 0.0, 0.0, 0.998629, 0.0523532, 60, 60),
(2290203, 175124, 229, 60.665, -268.136, 93.6019, 2.35619, 0.0, 0.0, 0.92388, 0.382683, 60, 60),
(2290204, 175124, 229, 79.2805, -275.593, 91.4728, 3.07177, 0.0, 0.0, 0.999391, 0.0349061, 60, 60),
(2290205, 175124, 229, 57.8603, -256.662, 96.7394, -1.01229, 0.0, 0.0, -0.484809, 0.87462, 60, 60),
(2290206, 175124, 229, 59.0256, -271.14, 93.6363, -2.49582, 0.0, 0.0, -0.948323, 0.317306, 60, 60),
(2290207, 175124, 229, 105.027, -280.601, 91.485, -2.25147, 0.0, 0.0, -0.902585, 0.430512, 60, 60),
(2290208, 175124, 229, 55.9426, -270.506, 93.6582, 0.488691, 0.0, 0.0, 0.241921, 0.970296, 60, 60),
(2290209, 175124, 229, 106.42, -281.429, 91.5051, -0.593412, 0.0, 0.0, -0.292372, 0.956305, 60, 60),
(2290210, 175124, 229, 107.419, -282.512, 91.5196, -2.19911, 0.0, 0.0, -0.891006, 0.453991, 60, 60),
(2290211, 175124, 229, 98.4621, -280.87, 91.4455, -2.47837, 0.0, 0.0, -0.945518, 0.325568, 60, 60),
(2290212, 175124, 229, 86.1129, -302.506, 91.4437, 0.767944, 0.0, 0.0, 0.374606, 0.927184, 60, 60),
(2290213, 175124, 229, 84.6573, -301.761, 91.4432, 0.157079, 0.0, 0.0, 0.0784588, 0.996917, 60, 60),
(2290214, 175124, 229, 71.7115, -306.066, 91.4182, -1.51844, 0.0, 0.0, -0.688354, 0.725374, 60, 60),
(2290215, 175124, 229, 103.109, -300.247, 91.4571, 2.54818, 0.0, 0.0, 0.956305, 0.292372, 60, 60),
(2290216, 175124, 229, 92.6442, -304.447, 91.4455, 2.44346, 0.0, 0.0, 0.939692, 0.34202, 60, 60),
(2290217, 175124, 229, 93.8824, -303.264, 91.4455, -2.63544, 0.0, 0.0, -0.968147, 0.250381, 60, 60),
(2290218, 175124, 229, 75.9302, -308.203, 91.4164, -1.74533, 0.0, 0.0, -0.766044, 0.642789, 60, 60),
(2290219, 175124, 229, 60.3514, -312.297, 91.5221, 1.13446, 0.0, 0.0, 0.537299, 0.843392, 60, 60),
(2290220, 175124, 229, 86.6006, -316.457, 91.4375, -0.890117, 0.0, 0.0, -0.430511, 0.902586, 60, 60),
(2290221, 175124, 229, 59.1922, -317.294, 91.4801, -0.191985, 0.0, 0.0, -0.0958452, 0.995396, 60, 60),
(2290222, 175124, 229, 64.926, -317.059, 91.461, 1.78023, 0.0, 0.0, 0.777145, 0.629321, 60, 60),
(2290223, 175124, 229, 89.9589, -318.159, 91.4443, -0.872664, 0.0, 0.0, -0.422618, 0.906308, 60, 60),
(2290224, 175124, 229, 50.1711, -316.652, 91.5303, -2.426, 0.0, 0.0, -0.936671, 0.35021, 60, 60),
(2290225, 175124, 229, 54.2926, -333.032, 91.4815, 0.628317, 0.0, 0.0, 0.309016, 0.951057, 60, 60),
(2290226, 175124, 229, 89.6925, -335.3, 91.5159, 1.95477, 0.0, 0.0, 0.829038, 0.559193, 60, 60),
(2290227, 175124, 229, 59.331, -332.23, 91.4729, -1.64061, 0.0, 0.0, -0.731354, 0.681998, 60, 60),
(2290228, 175124, 229, 87.2261, -252.472, 91.4619, -0.942477, 0.0, 0.0, -0.45399, 0.891007, 60, 60),
(2290229, 175124, 229, 56.876, -255.377, 96.9689, 0.261798, 0.0, 0.0, 0.130526, 0.991445, 60, 60),
(2290230, 175124, 229, 76.5418, -278.914, 91.4689, -2.23402, 0.0, 0.0, -0.898793, 0.438373, 60, 60),
(2290231, 175124, 229, 92.6002, -288.176, 91.4455, 0.436332, 0.0, 0.0, 0.216439, 0.976296, 60, 60),
(2290232, 175124, 229, 93.8904, -288.281, 91.4455, 2.35619, 0.0, 0.0, 0.92388, 0.382683, 60, 60),
(2290233, 175124, 229, 106.604, -283.776, 91.5078, 1.95477, 0.0, 0.0, 0.829038, 0.559193, 60, 60),
(2290234, 175124, 229, 73.6566, -290.045, 91.4427, 3.01941, 0.0, 0.0, 0.998135, 0.0610518, 60, 60),
(2290235, 175124, 229, 84.008, -303.277, 91.443, 0.0174525, 0.0, 0.0, 0.00872612, 0.999962, 60, 60),
(2290236, 175124, 229, 93.8115, -305.536, 91.4455, 1.02974, 0.0, 0.0, 0.492423, 0.870356, 60, 60),
(2290237, 175124, 229, 68.7284, -307.073, 91.4505, 0.994837, 0.0, 0.0, 0.477159, 0.878817, 60, 60),
(2290238, 175124, 229, 104.316, -302.841, 91.4741, 3.07177, 0.0, 0.0, 0.999391, 0.0349061, 60, 60),
(2290239, 175124, 229, 100.58, -312.489, 91.4455, 0.122173, 0.0, 0.0, 0.0610485, 0.998135, 60, 60),
(2290240, 175124, 229, 89.4339, -279.589, 91.4462, -1.02974, 0.0, 0.0, -0.492423, 0.870356, 60, 60),
(2290241, 175124, 229, 104.927, -286.138, 91.4835, 1.44862, 0.0, 0.0, 0.66262, 0.748956, 60, 60),
(2290242, 175124, 229, 98.8559, -313.049, 91.4455, -1.01229, 0.0, 0.0, -0.484809, 0.87462, 60, 60),
(2290243, 175124, 229, 97.3405, -313.43, 91.4455, 2.67035, 0.0, 0.0, 0.972369, 0.233448, 60, 60),
(2290244, 175124, 229, 51.2665, -338.088, 91.5419, -1.98967, 0.0, 0.0, -0.83867, 0.54464, 60, 60),
(2290245, 175124, 229, 87.411, -278.121, 91.4532, -2.56563, 0.0, 0.0, -0.958819, 0.284016, 60, 60),
(2290246, 175124, 229, 82.0751, -251.81, 91.4727, -1.69297, 0.0, 0.0, -0.748956, 0.66262, 60, 60),
(2290277, 175267, 229, 126.354, -240.77, 91.4701, 0.0, 0.0, 0.0, 0.0, 1.0, 180, 180),
(2290278, 175268, 229, 162.466, -240.765, 91.4688, 0.0, 0.0, 0.0, 0.0, 1.0, 180, 180),
(2290279, 175269, 229, 126.295, -258.732, 91.4701, 0.0, 0.0, 0.0, 0.0, 1.0, 180, 180),
(2290280, 175270, 229, 162.443, -258.904, 91.4701, 0.0, 0.0, 0.0, 0.0, 1.0, 180, 180),
(2290281, 175271, 229, 126.402, -276.79, 91.4701, 0.0, 0.0, 0.0, 0.0, 1.0, 180, 180),
(2290302, 175334, 229, 36.3325, -445.572, -18.7313, 2.65289, 0.0, 0.0, 0.970295, 0.241925, 0, 0),
(2290303, 175334, 229, -71.1755, -460.103, -18.935, 2.11185, 0.0, 0.0, 0.870356, 0.492424, 0, 0),
(2290304, 175334, 229, -121.016, -419.94, -18.935, 5.42798, 0.0, 0.0, -0.414693, 0.909962, 0, 0),
(2290305, 175334, 229, -28.901, -433.178, -18.935, 1.95477, 0.0, 0.0, 0.829038, 0.559193, 0, 0),
(2290306, 175334, 229, -77.3365, -403.739, -18.935, 5.25344, 0.0, 0.0, -0.492423, 0.870356, 0, 0),
(2290307, 175334, 229, 35.3153, -518.408, -18.6015, 3.45576, 0.0, 0.0, -0.987688, 0.156436, 0, 0),
(2290308, 175334, 229, -32.4305, -403.26, -18.935, -2.26892, 0.0, 0.0, 0.0, 1.0, 0, 0),
(2290309, 175334, 229, 33.7166, -466.067, -18.4651, -1.53589, 0.0, 0.0, 0.0, 0.0, 0, 0),
(2290310, 175334, 229, -78.5492, -402.515, -18.935, 5.53805, 0.0, 0.0, 0.36401, -0.931395, 0, 0),
(2290311, 175334, 229, -9.06949, -462.313, -18.6442, 3.13474, 0.0, 0.0, 0.999994, 0.00342519, 0, 0),
(2290312, 175334, 229, -58.243, -436.186, -18.935, 2.07694, 0.0, 0.0, 0.0, 1.0, 0, 0),
(2290329, 175609, 229, 25.9651, -443.545, -18.9203, -2.75761, 0.0, 0.0, -0.981627, 0.190812, 180, 180),
(2290330, 175609, 229, 23.7352, -445.173, -18.935, 2.11185, 0.0, 0.0, 0.870356, 0.492424, 180, 180),
(2290334, 175621, 229, -14.3501, -395.828, 48.5065, 3.14159, 0.0, 0.0, -1.0, 0.0, 180, 180),
(2290349, 175949, 229, -128.234, -482.381, 25.4535, -0.0174525, 0.0, 0.0, 0.00536574, -0.999986, 2, 2),
(2290350, 175950, 229, -11.1345, -466.205, -16.8553, -1.55334, 0.0, 0.0, 0.69938, 0.71475, 2, 2),
(2290392, 176090, 229, -19.0726, -361.991, -31.5237, -0.349065, 0.0, 0.0, -0.173648, 0.984808, 25, 25),
(2290393, 179880, 229, 41.663, -286.199, 110.96, -2.79252, 0.0, 0.0, -0.984807, 0.173652, 25, 25),
(2290401, 0, 229, 62.9164, -471.06, 26.0547, 2.75761, 0.0, 0.0, 0.981627, 0.190812, 86400, 86400),
(2290402, 0, 229, 86.8551, -587.501, 30.6085, 2.63544, 0.0, 0.0, 0.0, 0.0, 86400, 86400),
(2290403, 0, 229, -64.869, -586.896, 29.1909, 0.890117, 0.0, 0.0, 0.43051, 0.902586, 86400, 86400),
(2290404, 0, 229, -71.4806, -542.878, 29.1909, 0.453785, 0.0, 0.0, 0.224951, 0.97437, 86400, 86400),
(2290405, 0, 229, -73.9985, -453.335, -18.935, -3.08918, 0.0, 0.0, 0.0, 0.0, 86400, 86400),
(2290406, 0, 229, -110.612, -423.628, -18.935, -2.87979, 0.0, 0.0, -0.991445, 0.130528, 86400, 86400),
(2290407, 0, 229, -78.8378, -582.575, -18.8325, 0.837758, 0.0, 0.0, 0.406736, 0.913545, 86400, 86400),
(2290408, 0, 229, -36.1176, -583.828, -18.8201, 1.97222, 0.0, 0.0, 0.0, 0.0, 86400, 86400),
(2290409, 0, 229, -39.6464, -472.58, -18.765, -1.46608, 0.0, 0.0, -0.66913, 0.743145, 86400, 86400),
(2290410, 0, 229, 1.77013, -476.38, -18.7952, 3.22886, 0.0, 0.0, -0.999048, 0.0436193, 86400, 86400),
(2290411, 0, 229, -161.149, -494.667, -18.4564, 5.65487, 0.0, 0.0, -0.309016, 0.951057, 86400, 86400),
(2290412, 0, 229, -20.2914, -361.811, 50.6356, -1.64061, 0.0, 0.0, -0.731354, 0.681998, 86400, 86400),
(2290413, 0, 229, -84.2677, -350.104, 70.9524, 1.91986, 0.0, 0.0, 0.0, 0.0, 86400, 86400),
(2290414, 0, 229, -43.7227, -302.812, 70.9442, 3.21142, 0.0, 0.0, -0.999391, 0.0349061, 86400, 86400),
(2290415, 0, 229, -211.487, -486.088, 87.3902, 0.0523589, 0.0, 0.0, 0.0261765, 0.999657, 86400, 86400),
(2290416, 0, 229, 171.163, -290.776, 110.942, 3.08918, 0.0, 0.0, 0.999657, 0.0262017, 86400, 86400),
(2290417, 0, 229, 163.142, -241.759, 110.949, 4.2237, 0.0, 0.0, -0.857167, 0.515038, 86400, 86400),
(2290418, 0, 229, 170.919, -334.745, 110.951, 3.08918, 0.0, 0.0, 0.999657, 0.0262017, 86400, 86400),
(2290419, 0, 229, 183.647, -369.15, 117.143, 2.44346, 0.0, 0.0, 0.939692, 0.34202, 86400, 86400),
(2290523, 175124, 229, 222.152, -411.776, 110.992, -3.07177, 0.0, 0.0, -0.999391, 0.0349061, 60, 60),
(2290551, 0, 229, -139.523, -525.879, 6.36398, -2.426, 0.0, 0.0, 0.0, 1.0, 120, 120),
(2290552, 0, 229, -135.543, -528.703, 6.53392, 0.660128, 0.0, 0.0, 0.324104, 0.946022, 250, 250),
(2290553, 0, 229, -139.313, -527.232, 6.43271, 0.798332, 0.0, 0.0, 0.38865, 0.921386, 250, 250),
(2290554, 0, 229, -152.326, -547.679, 8.4167, 4.22659, 0.0, 0.0, 0.85642, -0.51628, 250, 250),
(2290555, 0, 229, -103.921, -572.89, 9.6253, 1.67797, 0.0, 0.0, 0.743966, 0.668218, 250, 250),
(2290556, 0, 229, -100.23, -529.537, -5.77381, -0.436332, 0.0, 0.0, 0.0, 1.0, 120, 120),
(2290557, 0, 229, -100.325, -523.847, 10.7029, 2.11185, 0.0, 0.0, 0.0, 1.0, 120, 120),
(2290558, 0, 229, -101.886, -521.985, -7.84199, -0.0349063, 0.0, 0.0, 0.0, 1.0, 120, 120),
(2290559, 0, 229, -102.465, -575.651, 9.90089, 2.47837, 0.0, 0.0, 0.0, 1.0, 120, 120),
(2290560, 0, 229, -112.21, -569.506, 10.1992, 2.18166, 0.0, 0.0, 0.0, 1.0, 120, 120),
(2290561, 0, 229, -125.229, -576.664, 13.7726, -0.296705, 0.0, 0.0, 0.0, 1.0, 120, 120),
(2290562, 0, 229, -126.746, -514.164, -12.147, 3.10665, 0.0, 0.0, 0.0, 1.0, 120, 120),
(2290563, 0, 229, -129.514, -441.7, 24.4328, 0.977383, 0.0, 0.0, 0.0, 1.0, 120, 120),
(2290564, 0, 229, -131.57, -439.602, 22.8934, -1.13446, 0.0, 0.0, 0.0, 1.0, 120, 120),
(2290565, 0, 229, -131.805, -526.784, 6.55651, -2.28638, 0.0, 0.0, 0.0, 1.0, 120, 120),
(2290566, 0, 229, -132.261, -474.848, 9.82244, -2.82743, 0.0, 0.0, 0.0, 1.0, 120, 120),
(2290567, 0, 229, -132.404, -514.961, -15.9374, -1.79769, 0.0, 0.0, 0.0, 1.0, 120, 120),
(2290568, 0, 229, -138.894, -439.497, 24.8088, 1.76278, 0.0, 0.0, 0.0, 1.0, 120, 120),
(2290569, 0, 229, -139.153, -434.738, 23.1123, -2.74016, 0.0, 0.0, 0.0, 1.0, 120, 120),
(2290570, 0, 229, -144.505, -441.603, 23.1016, 0.331611, 0.0, 0.0, 0.0, 1.0, 120, 120),
(2290571, 0, 229, -146.907, -441.463, 22.4744, -0.802851, 0.0, 0.0, 0.0, 1.0, 120, 120),
(2290572, 0, 229, -147.881, -448.549, 20.0911, 1.32645, 0.0, 0.0, 0.0, 1.0, 120, 120),
(2290573, 0, 229, -150.104, -470.008, 16.2278, 1.76278, 0.0, 0.0, 0.0, 1.0, 120, 120),
(2290574, 0, 229, -153.788, -515.227, -15.9504, -0.95993, 0.0, 0.0, 0.0, 1.0, 120, 120),
(2290575, 0, 229, -154.378, -552.234, 9.91885, -2.05949, 0.0, 0.0, 0.0, 1.0, 120, 120),
(2290576, 0, 229, -154.592, -525.219, 8.16182, 2.04204, 0.0, 0.0, 0.0, 1.0, 120, 120),
(2290577, 0, 229, -154.77, -541.317, 9.02217, -0.104719, 0.0, 0.0, 0.0, 1.0, 120, 120),
(2290578, 0, 229, -154.889, -570.339, 10.0172, 2.47837, 0.0, 0.0, 0.0, 1.0, 120, 120),
(2290579, 0, 229, -120.866, -523.033, 11.1616, -2.89725, 0.0, 0.0, -0.992546, 0.12187, 120, 120),
(2290580, 0, 229, -154.15, -576.464, 11.8097, 0.314158, 0.0, 0.0, 0.156434, 0.987688, 120, 120),
(2290581, 0, 229, -121.45, -519.638, -10.1789, 4.20625, 0.0, 0.0, -0.861628, 0.507539, 120, 120),
(2290582, 0, 229, -123.203, -576.224, 14.1865, 1.37881, 0.0, 0.0, 0.636078, 0.771625, 120, 120),
(2290583, 0, 229, -131.633, -460.694, 17.0553, -3.10665, 0.0, 0.0, -0.999847, 0.0174693, 120, 120),
(2290584, 0, 229, -128.213, -399.329, 30.4635, 0.59341, 0.0, 0.0, 0.292371, 0.956305, 120, 120),
(2290585, 0, 229, -150.525, -484.228, 11.3473, -1.83259, 0.0, 0.0, -0.793353, 0.608762, 120, 120),
(2290586, 0, 229, -149.205, -458.286, 16.8712, -2.87979, 0.0, 0.0, -0.991445, 0.130528, 120, 120),
(2290587, 0, 229, -151.329, -472.323, 14.0097, 2.09439, 0.0, 0.0, 0.866025, 0.500001, 120, 120),
(2290588, 0, 229, -99.9989, -517.764, 10.6956, -0.593412, 0.0, 0.0, -0.292372, 0.956305, 120, 120),
(2290589, 0, 229, -125.354, -491.7, 11.9901, 3.54302, 0.0, 0.0, -0.979924, 0.19937, 120, 120),
(2290590, 0, 229, -150.541, -525.868, 7.43845, 3.85718, 0.0, 0.0, -0.936671, 0.35021, 120, 120),
(2290591, 0, 229, -124.179, -576.163, 13.9393, -2.19911, 0.0, 0.0, -0.891007, 0.453991, 120, 120),
(2290592, 0, 229, -138.669, -555.321, 14.5388, 1.6057, 0.0, 0.0, 0.719339, 0.694659, 120, 120),
(2290593, 0, 229, -130.184, -420.555, 28.1423, 2.21657, 0.0, 0.0, 0.894934, 0.446199, 120, 120),
(2290594, 0, 229, -125.794, -490.418, 11.9901, -0.663223, 0.0, 0.0, -0.325567, 0.945519, 120, 120);

-- Adding missing GO spawn entries from target database
INSERT INTO gameobject_spawn_entry VALUES
(2290405, 153464),
(2290405, 153469),
(2290419, 153464),
(2290419, 153469),
(2290401, 153464),
(2290401, 153469),
(2290402, 153464),
(2290402, 153469),
(2290403, 153464),
(2290403, 153469),
(2290404, 153464),
(2290404, 153469),
(2290406, 153464),
(2290406, 153469),
(2290407, 153464),
(2290407, 153469),
(2290408, 153464),
(2290408, 153469),
(2290409, 153464),
(2290409, 153469),
(2290410, 153464),
(2290410, 153469),
(2290411, 153464),
(2290411, 153469),
(2290412, 153464),
(2290412, 153469),
(2290413, 153464),
(2290413, 153469),
(2290414, 153464),
(2290414, 153469),
(2290415, 153464),
(2290415, 153469),
(2290416, 153464),
(2290416, 153469),
(2290417, 153464),
(2290417, 153469),
(2290418, 153464),
(2290418, 153469),
(2290551, 175588),
(2290551, 175606),
(2290552, 175588),
(2290552, 175606),
(2290553, 175588),
(2290553, 175606),
(2290554, 175588),
(2290554, 175606),
(2290555, 175588),
(2290555, 175606),
(2290556, 175588),
(2290556, 175606),
(2290557, 175588),
(2290557, 175606),
(2290558, 175588),
(2290558, 175606),
(2290559, 175588),
(2290559, 175606),
(2290560, 175588),
(2290560, 175606),
(2290561, 175588),
(2290561, 175606),
(2290562, 175588),
(2290562, 175606),
(2290563, 175588),
(2290563, 175606),
(2290564, 175588),
(2290564, 175606),
(2290565, 175588),
(2290565, 175606),
(2290566, 175588),
(2290566, 175606),
(2290567, 175588),
(2290567, 175606),
(2290568, 175588),
(2290568, 175606),
(2290569, 175588),
(2290569, 175606),
(2290570, 175588),
(2290570, 175606),
(2290571, 175588),
(2290571, 175606),
(2290572, 175588),
(2290572, 175606),
(2290573, 175588),
(2290573, 175606),
(2290574, 175588),
(2290574, 175606),
(2290575, 175588),
(2290575, 175606),
(2290576, 175588),
(2290576, 175606),
(2290577, 175588),
(2290577, 175606),
(2290578, 175588),
(2290578, 175606),
(2290579, 175588),
(2290579, 175606),
(2290580, 175588),
(2290580, 175606),
(2290581, 175588),
(2290581, 175606),
(2290582, 175588),
(2290582, 175606),
(2290583, 175588),
(2290583, 175606),
(2290584, 175588),
(2290584, 175606),
(2290585, 175588),
(2290585, 175606),
(2290586, 175588),
(2290586, 175606),
(2290587, 175588),
(2290587, 175606),
(2290588, 175588),
(2290588, 175606),
(2290589, 175588),
(2290589, 175606),
(2290590, 175588),
(2290590, 175606),
(2290591, 175588),
(2290591, 175606),
(2290592, 175588),
(2290592, 175606),
(2290593, 175588),
(2290593, 175606),
(2290594, 175588),
(2290594, 175606);

-- Insert missing pool gameobject entries from target database
DELETE FROM pool_gameobject WHERE guid BETWEEN 2290401 AND 2290404 OR guid BETWEEN 2290406 AND 2290418;
INSERT INTO pool_gameobject VALUES
(2290401, 46292, 0.0, 'LBRS (Lower Hordemar City) - Large Solid Chest, Large Mithril Bound Chest (153464,153469)'),
(2290402, 46292, 0.0, 'LBRS (Lower Hordemar City) - Large Solid Chest, Large Mithril Bound Chest (153464,153469)'),
(2290403, 46292, 0.0, 'LBRS (Lower Hordemar City) - Large Solid Chest, Large Mithril Bound Chest (153464,153469)'),
(2290404, 46292, 0.0, 'LBRS (Lower Hordemar City) - Large Solid Chest, Large Mithril Bound Chest (153464,153469)'),
(2290406, 46292, 0.0, 'LBRS (Lower Hordemar City) - Large Solid Chest, Large Mithril Bound Chest (153464,153469)'),
(2290407, 46293, 0.0, 'LBRS (Tazz''Alaor) - Large Solid Chest, Large Mithril Bound Chest (153464,153469)'),
(2290408, 46293, 0.0, 'LBRS (Tazz''Alaor) - Large Solid Chest, Large Mithril Bound Chest (153464,153469)'),
(2290409, 46293, 0.0, 'LBRS (Tazz''Alaor) - Large Solid Chest, Large Mithril Bound Chest (153464,153469)'),
(2290410, 46293, 0.0, 'LBRS (Tazz''Alaor) - Large Solid Chest, Large Mithril Bound Chest (153464,153469)'),
(2290411, 46294, 0.0, 'LBRS (Skitterweb Tunnels) - Large Solid Chest, Large Mithril Bound Chest (153464,153469)'),
(2290412, 46295, 0.0, 'LBRS (Upper Hordemar City) - Large Solid Chest, Large Mithril Bound Chest (153464,153469)'),
(2290413, 46295, 0.0, 'LBRS (Upper Hordemar City) - Large Solid Chest, Large Mithril Bound Chest (153464,153469)'),
(2290414, 46295, 0.0, 'LBRS (Upper Hordemar City) - Large Solid Chest, Large Mithril Bound Chest (153464,153469)'),
(2290415, 46296, 0.0, 'LBRS (The Storehouse) - Large Solid Chest, Large Mithril Bound Chest (153464,153469)'),
(2290416, 46297, 0.0, 'UBRS (Hall of Blackhand) - Large Solid Chest, Large Mithril Bound Chest (153464,153469)'),
(2290417, 46297, 0.0, 'UBRS (Hall of Blackhand) - Large Solid Chest, Large Mithril Bound Chest (153464,153469)'),
(2290418, 46297, 0.0, 'UBRS (Hall of Blackhand) - Large Solid Chest, Large Mithril Bound Chest (153464,153469)');

-- Update pool gameobject entries to match target database
UPDATE pool_gameobject SET pool_entry=46292, description='LBRS (Lower Hordemar City) - Large Solid Chest, Large Mithril Bound Chest (153464,153469)' WHERE guid=2290405;
UPDATE pool_gameobject SET pool_entry=46298, description='UBRS (Blackrock Stadium) - Large Solid Chest, Large Mithril Bound Chest (153464,153469)' WHERE guid=2290419;

-- Add missing pool templates from target database
DELETE FROM pool_template WHERE entry=46290;
INSERT INTO pool_template VALUES
(46292, 2, 'LBRS (Lower Hordemar City) - Chest Pool'),
(46290, 3, 'LBRS - Master Chest Pool'),
(46293, 1, 'LBRS (Tazz''Alaor) - Chest Pool'),
(46294, 1, 'LBRS (Skitterweb Tunnels) - Chest Pool'),
(46295, 1, 'LBRS (Upper Hordemar City) - Chest Pool'),
(46296, 1, 'LBRS (The Storehouse) - Chest Pool'),
(46297, 1, 'UBRS (Hall of Blackhand) - Chest Pool'),
(46291, 1, 'UBRS - Master Chest Pool');

-- Update pool template entries to match target database
UPDATE pool_template SET entry=46298, description="UBRS (Blackrock Stadium) - Chest Pool" WHERE entry=46290;

-- Add missing pool pools from target database
INSERT INTO pool_pool VALUES
(46292, 46290, 0.0, 'LBRS (Lower Hordemar City) - Chest Pool'),
(46293, 46290, 0.0, 'LBRS (Tazz''Alaor) - Chest Pool'),
(46294, 46290, 0.0, 'LBRS (Skitterweb Tunnels) - Chest Pool'),
(46295, 46290, 0.0, 'LBRS (Upper Hordemar City) - Chest Pool'),
(46296, 46290, 0.0, 'LBRS (The Storehouse) - Chest Pool'),
(46297, 46291, 0.0, 'UBRS (Hall of Blackhand) - Chest Pool');

-- Update pool pool entries to match target database
UPDATE pool_pool SET pool_id=46298, mother_pool=46291, description="UBRS (Blackrock Stadium) - Chest Pool" WHERE pool_id=46290;

-- Update pool pool entries for mother pools to match target database
UPDATE pool_template SET entry=46290, description="LBRS - Master Chest Pool" WHERE entry=46280;
DELETE FROM pool_pool WHERE pool_id BETWEEN 46281 AND 46289;


-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
-- Stratholme
-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

-- Adding missing GOs from target database
DELETE FROM gameobject WHERE guid BETWEEN 3290062 AND 3290075;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(3290062, 0, 329, 3555.39, -3424.3, 136.745, 2.3911, 0.0, 0.0, 0.930417, 0.366502, 86400, 86400),
(3290063, 0, 329, 3471.28, -3311.51, 132.564, 0.698132, 0.0, 0.0, 0.34202, 0.939693, 86400, 86400),
(3290064, 0, 329, 3736.93, -3273.18, 130.049, 1.97222, 0.0, 0.0, 0.833885, 0.551938, 86400, 86400),
(3290065, 0, 329, 3607.98, -3519.02, 138.111, 1.15192, 0.0, 0.0, 0.544639, 0.838671, 86400, 86400),
(3290066, 0, 329, 3816.5, -3715.44, 143.088, 1.23918, 0.0, 0.0, 0.580703, 0.814116, 86400, 86400),
(3290067, 0, 329, 4022.24, -3610.68, 131.655, -2.35619, 0.0, 0.0, -0.923879, 0.382686, 86400, 86400),
(3290068, 0, 329, 4080.21, -3533.44, 124.622, -3.00195, 0.0, 0.0, -0.997563, 0.0697661, 86400, 86400),
(3290069, 0, 329, 3850.91, -3629.15, 146.895, 2.79252, 0.0, 0.0, 0.984807, 0.173652, 86400, 86400),
(3290800, 182068, 329, 3688.13, -3643.51, 141.964, -2.80998, 0.0, 0.0, 0.0, 0.0, 180, 180),
(3290801, 182071, 329, 3687.4, -3644.84, 140.638, 0.00278044, 0.0, 0.0, 0.0, 0.0, -1200, -1200),
(3290802, 182071, 329, 3683.72, -3648.49, 140.638, 5.38276, 0.0, 0.0, 0.0, 0.0, -1200, -1200),
(3290803, 182071, 329, 3671.68, -3643.77, 139.943, 4.22822, 0.0, 0.0, 0.0, 0.0, -1200, -1200),
(3290804, 182071, 329, 3680.14, -3652.72, 140.639, 4.72695, 0.0, 0.0, 0.0, 0.0, -1200, -1200),
(3290805, 182071, 329, 3664.39, -3638.14, 140.384, 0.987666, 0.0, 0.0, 0.0, 0.0, -1200, -1200),
(3290806, 182071, 329, 3673.38, -3645.99, 150.796, 0.394683, 0.0, 0.0, 0.0, 0.0, -1200, -1200),
(3290807, 182071, 329, 3674.34, -3635.08, 154.887, 2.17519, 0.0, 0.0, 0.0, 0.0, -1200, -1200),
(3290808, 182071, 329, 3667.09, -3624.71, 148.081, 5.26573, 0.0, 0.0, 0.0, 0.0, -1200, -1200),
(3290809, 182071, 329, 3674.15, -3635.58, 162.46, 2.08485, 0.0, 0.0, 0.0, 0.0, -1200, -1200),
(3290810, 182071, 329, 3671.84, -3631.23, 169.458, 2.19481, 0.0, 0.0, 0.0, 0.0, -1200, -1200),
(3290811, 182071, 329, 3681.39, -3623.82, 146.995, 3.7774, 0.0, 0.0, 0.0, 0.0, -1200, -1200),
(3290812, 182071, 329, 3690.96, -3644.84, 150.472, 4.28791, 0.0, 0.0, 0.0, 0.0, -1200, -1200),
(3290813, 182071, 329, 3668.28, -3628.68, 139.944, 2.94089, 0.0, 0.0, 0.0, 0.0, -1200, -1200),
(3290814, 182071, 329, 3671.21, -3628.02, 139.944, 0.172363, 0.0, 0.0, 0.0, 0.0, -1200, -1200),
(3290815, 182072, 329, 3670.55, -3629.58, 164.292, 3.7813, 0.0, 0.0, 0.0, 0.0, -900, -900),
(3290816, 182072, 329, 3680.86, -3644.45, 150.394, 0.65147, 0.0, 0.0, 0.0, 0.0, -900, -900),
(3290817, 182072, 329, 3676.3, -3637.77, 150.766, 2.21834, 0.0, 0.0, 0.0, 0.0, -900, -900);

-- Adding missing GO spawn entries from target database
INSERT INTO gameobject_spawn_entry VALUES
(3290062, 153464),
(3290062, 153469),
(3290063, 153464),
(3290063, 153469),
(3290064, 153464),
(3290064, 153469),
(3290065, 153464),
(3290065, 153469),
(3290066, 153464),
(3290066, 153469),
(3290067, 153464),
(3290067, 153469),
(3290068, 153464),
(3290068, 153469),
(3290069, 153464),
(3290069, 153469);

-- Insert missing pool gameobject entries from target database
DELETE FROM pool_gameobject WHERE guid BETWEEN 3290062 AND 3290069;
INSERT INTO pool_gameobject VALUES
(3290062, 46891, 0.0, 'Stratholme - Large Solid Chest, Large Mithril Bound Chest (153464,153469)'),
(3290063, 46891, 0.0, 'Stratholme - Large Solid Chest, Large Mithril Bound Chest (153464,153469)'),
(3290064, 46891, 0.0, 'Stratholme - Large Solid Chest, Large Mithril Bound Chest (153464,153469)'),
(3290065, 46891, 0.0, 'Stratholme - Large Solid Chest, Large Mithril Bound Chest (153464,153469)'),
(3290066, 46892, 0.0, 'Stratholme - Large Solid Chest, Large Mithril Bound Chest (153464,153469)'),
(3290067, 46892, 0.0, 'Stratholme - Large Solid Chest, Large Mithril Bound Chest (153464,153469)'),
(3290068, 46892, 0.0, 'Stratholme - Large Solid Chest, Large Mithril Bound Chest (153464,153469)'),
(3290069, 46892, 0.0, 'Stratholme - Large Solid Chest, Large Mithril Bound Chest (153464,153469)');

-- Add missing pool templates from target database
DELETE FROM pool_template WHERE entry BETWEEN 46890 AND 46892;
INSERT INTO pool_template VALUES
(46891, 1, 'Stratholme (Front Entrance) - Chest Pool'),
(46890, 2, 'Stratholme - Master Chest Pool'),
(46892, 1, 'Stratholme (Side Entrance) - Chest Pool');

-- Add missing pool pools from target database
DELETE FROM pool_pool WHERE pool_id BETWEEN 46891 AND 46892;
INSERT INTO pool_pool VALUES
(46891, 46890, 0.0, 'Stratholme (Front Entrance) - Chest Pool'),
(46892, 46890, 0.0, 'Stratholme (Side Entrance) - Chest Pool');


-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
-- Dire Maul
-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

-- Adding missing GOs from target database
DELETE FROM gameobject WHERE guid IN (4290041, 4290371, 4290374, 4290375, 4290376, 4290377, 4290378, 4290379, 4290423, 4290427) OR guid BETWEEN 4290068 AND 4290119 OR guid BETWEEN 4290120 AND 4290311 OR guid BETWEEN 4290380 AND 4290384;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(4290041, 179499, 429, 599.299, 605.798, -4.7527, 0.191985, 0.0, 0.0, 0.0958452, 0.995396, 7200, 7200),
(4290068, 0, 429, -42.6484, -341.5, -52.6547, 0.244346, 0.0, 0.0, 0.121869, 0.992546, 600, 600),
(4290069, 0, 429, 34.9096, -365.079, -4.14052, 0.314158, 0.0, 0.0, 0.156434, 0.987688, 600, 600),
(4290070, 0, 429, -114.736, -199.653, -4.1244, 0.0, 0.0, 0.0, 0.0, 1.0, 600, 600),
(4290071, 0, 429, 101.961, -247.727, -4.01977, 2.84488, 0.0, 0.0, 0.989016, 0.147811, 600, 600),
(4290072, 0, 429, 126.702, -248.335, -4.14639, -2.72271, 0.0, 0.0, -0.978148, 0.207912, 600, 600),
(4290073, 0, 429, 66.2358, -633.758, -25.163, 3.05433, 0.0, 0.0, 0.999048, 0.0436193, 600, 600),
(4290074, 0, 429, -6.16094, -433.403, -4.22212, 0.0, 0.0, 0.0, 0.0, 1.0, 600, 600),
(4290075, 0, 429, 2.64945, -210.379, -52.3845, -0.95993, 0.0, 0.0, -0.461748, 0.887011, 600, 600),
(4290076, 0, 429, -168.655, -271.912, -4.12082, -0.750491, 0.0, 0.0, -0.366501, 0.930418, 600, 600),
(4290077, 0, 429, 55.8777, -438.434, -58.5981, -0.855211, 0.0, 0.0, -0.414693, 0.909961, 600, 600),
(4290078, 0, 429, 59.0393, -760.028, -25.0955, -1.23918, 0.0, 0.0, -0.580703, 0.814116, 600, 600),
(4290079, 0, 429, 71.7946, -437.261, -58.5956, 0.872664, 0.0, 0.0, 0.422618, 0.906308, 600, 600),
(4290080, 0, 429, -28.3324, -385.063, -58.6181, 1.95477, 0.0, 0.0, 0.829038, 0.559193, 600, 600),
(4290081, 0, 429, 47.8125, -334.275, -52.0553, -0.506145, 0.0, 0.0, -0.25038, 0.968148, 600, 600),
(4290082, 0, 429, 353.105, -447.005, -90.0577, 0.0, 0.0, 0.0, 0.0, 1.0, 600, 600),
(4290083, 0, 429, 509.725, 523.927, -25.4027, -2.80998, 0.0, 0.0, -0.986285, 0.16505, 600, 600),
(4290084, 0, 429, 456.691, -47.364, -3.88702, -1.76278, 0.0, 0.0, -0.771625, 0.636078, 600, 600),
(4290085, 0, 429, -94.2365, -406.708, -58.6073, 0.0, 0.0, 0.0, 0.0, 1.0, 600, 600),
(4290086, 0, 429, -112.021, -258.887, -56.2501, 0.0, 0.0, 0.0, 0.0, 1.0, 600, 600),
(4290087, 0, 429, 134.767, -262.46, -4.14639, -0.488691, 0.0, 0.0, -0.241921, 0.970296, 600, 600),
(4290088, 0, 429, -148.661, -210.009, -4.1514, 0.418879, 0.0, 0.0, 0.207911, 0.978148, 600, 600),
(4290089, 0, 429, 32.7576, -775.236, -25.1416, -1.309, 0.0, 0.0, -0.608761, 0.793354, 600, 600),
(4290090, 0, 429, -109.888, -404.549, -4.21786, -2.07694, 0.0, 0.0, -0.861629, 0.507539, 600, 600),
(4290091, 0, 429, -61.5861, -306.311, -55.7067, 2.33874, 0.0, 0.0, 0.920505, 0.390732, 600, 600),
(4290092, 0, 429, -7.83484, -199.983, -4.12879, -0.453785, 0.0, 0.0, -0.224951, 0.97437, 600, 600),
(4290093, 0, 429, 64.8074, -400.448, -58.6044, -0.628317, 0.0, 0.0, -0.309016, 0.951057, 600, 600),
(4290094, 0, 429, 44.9141, -626.477, -25.1061, -2.47837, 0.0, 0.0, -0.945518, 0.325568, 600, 600),
(4290095, 0, 429, 66.1826, -315.416, -54.2518, 0.0, 0.0, 0.0, 0.0, 1.0, 600, 600),
(4290096, 0, 429, 242.178, -420.788, -119.962, -0.0698117, 0.0, 0.0, -0.0348988, 0.999391, 600, 600),
(4290097, 0, 429, 490.501, 551.961, -25.381, -0.418879, 0.0, 0.0, -0.207911, 0.978148, 600, 600),
(4290098, 0, 429, 468.448, 258.01, 6.34532, 1.02974, 0.0, 0.0, 0.492423, 0.870356, 600, 600),
(4290099, 0, 429, -5.54965, -393.198, -58.6137, -0.209439, 0.0, 0.0, -0.104528, 0.994522, 600, 600),
(4290100, 0, 429, -124.622, -234.072, -55.1133, -0.314158, 0.0, 0.0, -0.156434, 0.987688, 600, 600),
(4290101, 0, 429, 119.36, -336.64, -4.14986, -1.44862, 0.0, 0.0, -0.66262, 0.748956, 600, 600),
(4290102, 0, 429, -75.923, -358.893, -4.14481, 2.87979, 0.0, 0.0, 0.991445, 0.130528, 600, 600),
(4290103, 0, 429, 41.8712, -744.931, -25.1339, 0.104719, 0.0, 0.0, 0.0523357, 0.99863, 600, 600),
(4290104, 0, 429, 36.7851, -402.629, -4.21849, -2.49582, 0.0, 0.0, -0.948323, 0.317306, 600, 600),
(4290105, 0, 429, -14.44, -309.911, -52.1458, 0.0, 0.0, 0.0, 0.0, 1.0, 600, 600),
(4290106, 0, 429, 126.758, -296.278, -4.14639, -1.95477, 0.0, 0.0, -0.829037, 0.559194, 600, 600),
(4290107, 0, 429, -32.8264, -463.171, -58.6176, 0.488691, 0.0, 0.0, 0.241921, 0.970296, 600, 600),
(4290108, 0, 429, 17.3334, -704.192, -12.6426, -2.19911, 0.0, 0.0, -0.891006, 0.453991, 600, 600),
(4290109, 0, 429, 50.4484, -241.885, -53.2931, 1.8675, 0.0, 0.0, 0.803857, 0.594823, 600, 600),
(4290110, 0, 429, 189.484, -482.115, -100.601, 1.93731, 0.0, 0.0, 0.824125, 0.566408, 600, 600),
(4290111, 0, 429, 423.59, 262.49, 11.1475, 0.0, 0.0, 0.0, 0.0, 1.0, 600, 600),
(4290112, 0, 429, 475.207, -104.252, -3.88595, -1.32645, 0.0, 0.0, -0.615661, 0.788011, 600, 600),
(4290113, 0, 429, -99.5965, -395.866, -4.2207, -2.86234, 0.0, 0.0, -0.990268, 0.139175, 600, 600),
(4290114, 0, 429, 102.853, -272.145, -4.02723, 1.32645, 0.0, 0.0, 0.615661, 0.788011, 600, 600),
(4290115, 0, 429, -94.2725, -390.892, -58.5771, 5.42798, 0.0, 0.0, -0.414693, 0.909962, 600, 600),
(4290116, 0, 429, -27.7882, -388.435, -4.22943, 1.39626, 0.0, 0.0, 0.642786, 0.766046, 600, 600),
(4290117, 0, 429, 34.5069, -391.211, -58.6112, -2.16421, 0.0, 0.0, -0.882948, 0.469471, 600, 600),
(4290118, 0, 429, -12.3063, -396.872, -4.22113, -0.593412, 0.0, 0.0, -0.292372, 0.956305, 600, 600),
(4290119, 0, 429, 127.199, -272.801, -4.14639, -1.93732, 0.0, 0.0, -0.824127, 0.566404, 600, 600),
(4290371, 0, 429, 68.3917, -397.177, -4.22106, 3.927, 0.0, 0.0, -0.923879, 0.382686, 86400, 86400),
(4290374, 0, 429, 122.574, 366.941, -3.48382, 2.89725, 0.0, 0.0, 0.992546, 0.12187, 86400, 86400),
(4290375, 0, 429, -95.0448, 367.08, -3.48702, -1.32645, 0.0, 0.0, -0.615661, 0.788011, 86400, 86400),
(4290376, 0, 429, 122.562, 392.1, 28.601, 3.07177, 0.0, 0.0, 0.999391, 0.0349043, 86400, 86400),
(4290377, 0, 429, 335.605, 366.155, 2.85293, -2.61799, 0.0, 0.0, -0.965925, 0.258821, 86400, 86400),
(4290378, 0, 429, 582.929, 608.082, -25.4027, -2.56563, 0.0, 0.0, -0.958819, 0.284016, 86400, 86400),
(4290379, 0, 429, 476.613, 570.668, 27.9231, 4.88692, 0.0, 0.0, -0.642787, 0.766045, 86400, 86400),
(4290423, 176584, 429, -121.613, -309.891, -57.1476, -1.23918, 0.0, 0.0, -0.580703, 0.814116, 86400, 86400),
(4290427, 176584, 429, 19.51, -336.746, -52.4165, -1.62316, 0.0, 0.0, -0.725374, 0.688355, 86400, 86400);
-- Update values of existing GOs based on target database
UPDATE gameobject SET orientation=-2.19911 WHERE guid=4290003;
UPDATE gameobject SET orientation=1.5708 WHERE guid=4290033;
UPDATE gameobject SET orientation=1.5708 WHERE guid=4290034;
UPDATE gameobject SET position_x=50.5861, orientation=-1.5708 WHERE guid=4290036;
UPDATE gameobject SET rotation2=0.207911 WHERE guid=4290037;
UPDATE gameobject SET rotation2=0.207911 WHERE guid=4290038;
UPDATE gameobject SET rotation2=-1.0, rotation3=0.0 WHERE guid=4290040;
UPDATE gameobject SET position_z=11.4395, orientation=-1.01229 WHERE guid=4290050;
UPDATE gameobject SET orientation=1.62316 WHERE guid=4290051;
UPDATE gameobject SET position_y=88.6736, orientation=1.5708 WHERE guid=4290323;
UPDATE gameobject SET position_x=83.2549, orientation=-0.637043, rotation2=-0.313163 WHERE guid=4290324;
UPDATE gameobject SET orientation=-1.93732 WHERE guid=4290325;
UPDATE gameobject SET orientation=0.628317 WHERE guid=4290326;
UPDATE gameobject SET orientation=-1.41372 WHERE guid=4290327;
UPDATE gameobject SET orientation=-2.75761 WHERE guid=4290328;
UPDATE gameobject SET position_y=-422.537, orientation=2.77507 WHERE guid=4290329;
UPDATE gameobject SET rotation2=-0.771625, rotation3=0.636078 WHERE guid=4290330;
UPDATE gameobject SET orientation=-3.08918, rotation3=0.0262016 WHERE guid=4290331;
UPDATE gameobject SET rotation3=0.559193 WHERE guid=4290403;
UPDATE gameobject SET rotation2=-0.66262, rotation3=0.748956 WHERE guid=4290443;
UPDATE gameobject SET id=0 WHERE guid=4290052;
UPDATE gameobject SET id=0 WHERE guid=4290053;
UPDATE gameobject SET id=0 WHERE guid=4290054;
UPDATE gameobject SET id=0, rotation2=0.587785, rotation3=0.809017 WHERE guid=4290055;
UPDATE gameobject SET id=0 WHERE guid=4290056;
UPDATE gameobject SET id=0, rotation2=0.71325, rotation3=0.70091 WHERE guid=4290057;
UPDATE gameobject SET id=0 WHERE guid=4290058;
UPDATE gameobject SET id=0, rotation2=0.788011 WHERE guid=4290059;
UPDATE gameobject SET id=0 WHERE guid=4290060;
UPDATE gameobject SET id=0, rotation3=0.39875 WHERE guid=4290061;
UPDATE gameobject SET id=0 WHERE guid=4290062;
UPDATE gameobject SET id=0, rotation3=0.233448 WHERE guid=4290063;
UPDATE gameobject SET id=0, rotation2=0.766044, rotation3=0.642789 WHERE guid=4290064;
UPDATE gameobject SET id=0 WHERE guid=4290065;
UPDATE gameobject SET id=0 WHERE guid=4290066;
UPDATE gameobject SET id=0, rotation3=0.00873464 WHERE guid=4290067;
UPDATE gameobject SET id=0, rotation2=-0.760406 WHERE guid=4290372;
UPDATE gameobject SET id=0 WHERE guid=4290373;

-- Adding missing GO spawn entries from target database
INSERT INTO gameobject_spawn_entry VALUES
(4290052, 179526),
(4290052, 179528),
(4290052, 179532),
(4290052, 179533),
(4290053, 179526),
(4290053, 179528),
(4290053, 179532),
(4290053, 179533),
(4290054, 179526),
(4290054, 179528),
(4290054, 179532),
(4290054, 179533),
(4290055, 179526),
(4290055, 179528),
(4290055, 179532),
(4290055, 179533),
(4290056, 179526),
(4290056, 179528),
(4290056, 179532),
(4290056, 179533),
(4290057, 179526),
(4290057, 179528),
(4290057, 179532),
(4290057, 179533),
(4290058, 179526),
(4290058, 179528),
(4290058, 179532),
(4290058, 179533),
(4290059, 179526),
(4290059, 179528),
(4290059, 179532),
(4290059, 179533),
(4290060, 179526),
(4290060, 179528),
(4290060, 179532),
(4290060, 179533),
(4290061, 179526),
(4290061, 179528),
(4290061, 179532),
(4290061, 179533),
(4290062, 179526),
(4290062, 179528),
(4290062, 179532),
(4290062, 179533),
(4290063, 179526),
(4290063, 179528),
(4290063, 179532),
(4290063, 179533),
(4290064, 179526),
(4290064, 179528),
(4290064, 179532),
(4290064, 179533),
(4290065, 179526),
(4290065, 179528),
(4290065, 179532),
(4290065, 179533),
(4290066, 179526),
(4290066, 179528),
(4290066, 179532),
(4290066, 179533),
(4290067, 179526),
(4290067, 179528),
(4290067, 179532),
(4290067, 179533),
(4290372, 153464),
(4290372, 153469),
(4290373, 153464),
(4290373, 153469),
(4290068, 179526),
(4290068, 179528),
(4290068, 179532),
(4290068, 179533),
(4290069, 179526),
(4290069, 179528),
(4290069, 179532),
(4290069, 179533),
(4290070, 179526),
(4290070, 179528),
(4290070, 179532),
(4290070, 179533),
(4290071, 179526),
(4290071, 179528),
(4290071, 179532),
(4290071, 179533),
(4290072, 179526),
(4290072, 179528),
(4290072, 179532),
(4290072, 179533),
(4290073, 179526),
(4290073, 179528),
(4290073, 179532),
(4290073, 179533),
(4290074, 179526),
(4290074, 179528),
(4290074, 179532),
(4290074, 179533),
(4290075, 179526),
(4290075, 179528),
(4290075, 179532),
(4290075, 179533),
(4290076, 179526),
(4290076, 179528),
(4290076, 179532),
(4290076, 179533),
(4290077, 179526),
(4290077, 179528),
(4290077, 179532),
(4290077, 179533),
(4290078, 179526),
(4290078, 179528),
(4290078, 179532),
(4290078, 179533),
(4290079, 179526),
(4290079, 179528),
(4290079, 179532),
(4290079, 179533),
(4290080, 179526),
(4290080, 179528),
(4290080, 179532),
(4290080, 179533),
(4290081, 179526),
(4290081, 179528),
(4290081, 179532),
(4290081, 179533),
(4290082, 179526),
(4290082, 179528),
(4290082, 179532),
(4290082, 179533),
(4290083, 179526),
(4290083, 179528),
(4290083, 179532),
(4290083, 179533),
(4290084, 179526),
(4290084, 179528),
(4290084, 179532),
(4290084, 179533),
(4290085, 179526),
(4290085, 179528),
(4290085, 179532),
(4290085, 179533),
(4290086, 179526),
(4290086, 179528),
(4290086, 179532),
(4290086, 179533),
(4290087, 179526),
(4290087, 179528),
(4290087, 179532),
(4290087, 179533),
(4290088, 179526),
(4290088, 179528),
(4290088, 179532),
(4290088, 179533),
(4290089, 179526),
(4290089, 179528),
(4290089, 179532),
(4290089, 179533),
(4290090, 179526),
(4290090, 179528),
(4290090, 179532),
(4290090, 179533),
(4290091, 179526),
(4290091, 179528),
(4290091, 179532),
(4290091, 179533),
(4290092, 179526),
(4290092, 179528),
(4290092, 179532),
(4290092, 179533),
(4290093, 179526),
(4290093, 179528),
(4290093, 179532),
(4290093, 179533),
(4290094, 179526),
(4290094, 179528),
(4290094, 179532),
(4290094, 179533),
(4290095, 179526),
(4290095, 179528),
(4290095, 179532),
(4290095, 179533),
(4290096, 179526),
(4290096, 179528),
(4290096, 179532),
(4290096, 179533),
(4290097, 179526),
(4290097, 179528),
(4290097, 179532),
(4290097, 179533),
(4290098, 179526),
(4290098, 179528),
(4290098, 179532),
(4290098, 179533),
(4290099, 179526),
(4290099, 179528),
(4290099, 179532),
(4290099, 179533),
(4290100, 179526),
(4290100, 179528),
(4290100, 179532),
(4290100, 179533),
(4290101, 179526),
(4290101, 179528),
(4290101, 179532),
(4290101, 179533),
(4290102, 179526),
(4290102, 179528),
(4290102, 179532),
(4290102, 179533),
(4290103, 179526),
(4290103, 179528),
(4290103, 179532),
(4290103, 179533),
(4290104, 179526),
(4290104, 179528),
(4290104, 179532),
(4290104, 179533),
(4290105, 179526),
(4290105, 179528),
(4290105, 179532),
(4290105, 179533),
(4290106, 179526),
(4290106, 179528),
(4290106, 179532),
(4290106, 179533),
(4290107, 179526),
(4290107, 179528),
(4290107, 179532),
(4290107, 179533),
(4290108, 179526),
(4290108, 179528),
(4290108, 179532),
(4290108, 179533),
(4290109, 179526),
(4290109, 179528),
(4290109, 179532),
(4290109, 179533),
(4290110, 179526),
(4290110, 179528),
(4290110, 179532),
(4290110, 179533),
(4290111, 179526),
(4290111, 179528),
(4290111, 179532),
(4290111, 179533),
(4290112, 179526),
(4290112, 179528),
(4290112, 179532),
(4290112, 179533),
(4290113, 179526),
(4290113, 179528),
(4290113, 179532),
(4290113, 179533),
(4290114, 179526),
(4290114, 179528),
(4290114, 179532),
(4290114, 179533),
(4290115, 179526),
(4290115, 179528),
(4290115, 179532),
(4290115, 179533),
(4290116, 179526),
(4290116, 179528),
(4290116, 179532),
(4290116, 179533),
(4290117, 179526),
(4290117, 179528),
(4290117, 179532),
(4290117, 179533),
(4290118, 179526),
(4290118, 179528),
(4290118, 179532),
(4290118, 179533),
(4290119, 179526),
(4290119, 179528),
(4290119, 179532),
(4290119, 179533),
(4290371, 153464),
(4290371, 153469),
(4290374, 153464),
(4290374, 153469),
(4290375, 153464),
(4290375, 153469),
(4290376, 153464),
(4290376, 153469),
(4290377, 153464),
(4290377, 153469),
(4290378, 153464),
(4290378, 153469),
(4290379, 153464),
(4290379, 153469);

-- Insert missing pool gameobject entries from target database
DELETE FROM pool_gameobject WHERE guid IN (4290371, 4290374, 4290375, 4290376, 4290377, 4290378, 4290379, 4290423, 4290427);
INSERT INTO pool_gameobject VALUES
(4290371, 47297, 0.0, 'DM East - Large Solid Chest, Large Mithril Bound Chest (153464,153469)'),
(4290374, 47298, 0.0, 'DM West - Large Solid Chest, Large Mithril Bound Chest (153464,153469)'),
(4290375, 47298, 0.0, 'DM West - Large Solid Chest, Large Mithril Bound Chest (153464,153469)'),
(4290376, 47298, 0.0, 'DM West - Large Solid Chest, Large Mithril Bound Chest (153464,153469)'),
(4290377, 47299, 0.0, 'DM North - Large Solid Chest, Large Mithril Bound Chest (153464,153469)'),
(4290378, 47299, 0.0, 'DM North - Large Solid Chest, Large Mithril Bound Chest (153464,153469)'),
(4290379, 47299, 0.0, 'DM North - Large Solid Chest, Large Mithril Bound Chest (153464,153469)'),
(4290423, 47287, 0.0, 'DM East - Dreamfoil (176584)'),
(4290427, 47287, 0.0, 'DM East - Dreamfoil (176584)');

-- Update pool gameobject entries to match target database
UPDATE pool_gameobject SET pool_entry=47297, description='DM East - Large Solid Chest, Large Mithril Bound Chest (153464,153469)' WHERE guid=4290372;
UPDATE pool_gameobject SET pool_entry=47297, description='DM East - Large Solid Chest, Large Mithril Bound Chest (153464,153469)' WHERE guid=4290373;

-- Add missing pool templates from target database
DELETE FROM pool_template WHERE entry IN (47297, 47298, 47299, 47287);
INSERT INTO pool_template VALUES
(47297, 1, 'DM East - Master Chest Pool'),
(47298, 1, 'DM West - Master Chest Pool'),
(47299, 1, 'DM North - Master Chest Pool'),
(47287, 3, 'DM East - Master Dreamfoil (176584) Pool');

-- Final cleanup
DELETE FROM pool_gameobject WHERE pool_entry NOT IN (SELECT entry FROM pool_template);
DELETE FROM pool_gameobject WHERE guid NOT IN (SELECT guid FROM gameobject);
DELETE FROM pool_pool WHERE pool_id NOT IN (SELECT entry FROM pool_template);
