-- Firewatch Ridge - Searing Gorge
-- Twilight Dark Shaman 5860 / Twilight Fire Guard 5861
DELETE FROM creature_addon WHERE guid IN (381,726);
DELETE FROM creature_movement WHERE id IN (381,726);
DELETE FROM game_event_creature WHERE guid IN (381,726);
DELETE FROM game_event_creature_data WHERE guid IN (381,726);
DELETE FROM creature_battleground WHERE guid IN (381,726);
DELETE FROM creature_linking WHERE guid IN (381,726);
DELETE FROM creature where guid IN (381,726);
INSERT INTO creature (guid, id, map, spawnMask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES
(381,5860,0,1,-6487.05,-904.107,324.309,0,300,300,3,1),
(726,5860,0,1,-6640.393,-808.46027,244.77988,0,300,300,0,4); -- linear

UPDATE creature SET spawndist = 7, MovementType = 1 WHERE guid = 5873;
UPDATE creature SET position_x = -6623.9663, position_y = -844.3854, position_z = 244.14798, spawndist = 0, MovementType = 4 WHERE guid = 6853; -- linear
UPDATE creature SET position_x = -6667.892, position_y = -717.90173, position_z = 234.098633, spawndist = 0, MovementType = 4 WHERE guid = 5816; -- linear
UPDATE creature SET position_x = -6735.9434, position_y = -732.6477, position_z = 237.04697, spawndist = 0, MovementType = 4 WHERE guid = 5867; -- linear
DELETE FROM creature_movement WHERE Id IN (726,6853,5816,5867);
INSERT INTO creature_movement (id, point, positionx, positiony, positionz, orientation, waittime, scriptid) VALUES
-- 6853
(6853,1 ,-6623.9663,-844.3854,244.14798,100,2000,0),
(6853,2 ,-6612.087,-852.4998,245.39146,100,0,0),
(6853,3 ,-6600.6816,-863.71875,247.14366,100,0,0),
(6853,4 ,-6588.3276,-863.43384,254.61833,100,0,0),
(6853,5 ,-6576.0625,-872.74786,262.63757,100,0,0),
(6853,6 ,-6563.0913,-876.17706,271.6373,100,0,0),
(6853,7 ,-6561.7383,-884.0425,275.10532,100,0,0),
(6853,8 ,-6550.2544,-895.2133,291.13657,100,0,0),
(6853,9 ,-6541.143,-902.4542,301.13406 ,100,0,0),
(6853,10,-6535.791,-893.99805,304.96054,100,0,0),
(6853,11,-6526.056,-880.84265,312.5625 ,100,0,0),
(6853,12,-6513.122,-875.7121,318.90186 ,100,0,0),
(6853,13,-6506.9165,-887.0213,319.3296 ,100,0,0),
(6853,14,-6499.2056,-896.6208,322.7731 ,100,0,0),
(6853,15,-6493.474,-897.10236,323.70328,100,2000,0),
-- 5816
(5816,1 ,-6667.892,-717.90173,238.67514,100,1000,0),
(5816,2 ,-6656.2056,-731.6067,245.14532,100,0,0),
(5816,3 ,-6645.794,-736.0736,247.89357 ,100,0,0),
(5816,4 ,-6647.129,-752.6078,248.6226  ,100,0,0),
(5816,5 ,-6674.184,-761.246,246.25146  ,100,0,0),
(5816,6 ,-6696.7925,-766.3605,236.75534,100,0,0),
(5816,7 ,-6709.672,-755.1674,235.15944 ,100,0,0),
(5816,8 ,-6721.5737,-745.498,236.21036 ,100,0,0),
(5816,9 ,-6723.715,-732.47504,235.08301,100,0,0),
(5816,10,-6717.35,-719.7573,237.93109  ,100,0,0),
(5816,11,-6719.4717,-708.6014,239.29868,100,1000,0),
-- 5867
(5867,1 ,-6735.9434,-732.6477,237.04697,100,1000,0),
(5867,2 ,-6752.6016,-720.05707,237.59508,100,0,0),
(5867,3 ,-6763.9116,-703.7047,236.61307,100,0,0),
(5867,4 ,-6762.707,-683.3214,238.48677 ,100,0,0),
(5867,5 ,-6752.194,-670.15753,238.05655,100,0,0),
(5867,6 ,-6750.6704,-652.9608,236.67929,100,0,0),
(5867,7 ,-6741.258,-635.0358,237.43752 ,100,0,0),
(5867,8 ,-6729.411,-620.29034,239.2108 ,100,0,0),
(5867,9 ,-6716.1675,-619.7959,239.00613,100,0,0),
(5867,10,-6701.791,-619.303,236.81848  ,100,0,0),
(5867,11,-6702.242,-633.2092,238.18114 ,100,0,0),
(5867,12,-6696.076,-645.2507,238.11565 ,100,0,0),
(5867,13,-6685.094,-649.9262,238.02032 ,100,0,0),
(5867,14,-6671.423,-645.50946,240.8796 ,100,0,0),
(5867,15,-6650.9434,-648.6589,241.9634,100,1000,0),
-- 726
(726,1,-6640.393,-808.46027,244.77988,100,1000,0),
(726,2,-6636.9907,-788.68115,245.9162,100,0,0),
(726,3,-6632.5884,-759.40204,248.55254,100,0,0),
(726,4,-6629.5684,-739.08295,247.63255,100,0,0),
(726,5,-6625.8,-725.6431,245.47275,100,0,0),
(726,6,-6611.4634,-707.72644,247.43675,100,0,0),
(726,7,-6600.503,-689.1013,243.90552,100,0,0),
(726,8,-6598.8735,-674.7345,240.9688,100,0,0),
(726,9,-6604.8975,-661.16644,236.58511,100,1000,0);

-- share same spawn points
DELETE FROM creature_spawn_entry WHERE entry IN (5860,5861);
INSERT INTO creature_spawn_entry (guid,entry)
SELECT guid,id FROM creature
WHERE id in (5860)
union
SELECT guid,5861 FROM creature
WHERE id in (5860)
union
SELECT guid,id FROM creature
WHERE id in (5861)
union
SELECT guid,5860 FROM creature
WHERE id in (5861);
UPDATE creature SET id = 0 WHERE id IN (5860,5861);

-- Twilight Geomancer 5862
DELETE FROM creature_addon WHERE guid IN (725);
DELETE FROM creature_movement WHERE id IN (725);
DELETE FROM game_event_creature WHERE guid IN (725);
DELETE FROM game_event_creature_data WHERE guid IN (725);
DELETE FROM creature_battleground WHERE guid IN (725);
DELETE FROM creature_linking WHERE guid IN (725);
DELETE FROM creature where guid IN (725);
INSERT INTO creature (guid, id, map, spawnMask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES
(725,5862,0,1,-6479.038,-947.91644,334.47287,0,300,300,5,1);

UPDATE creature SET spawndist = 7, MovementType = 1 WHERE guid = 6844;
-- shared spawns
-- Twilight Geomancer 5862 / Twilight Fire Guard 5861
DELETE FROM creature_spawn_entry WHERE guid IN (6844,6852,6791);
INSERT INTO creature_spawn_entry (guid,entry) VALUES
(6844,5862),(6844,5861),
(6852,5862),(6852,5861),
(6791,5862),(6791,5861);

-- Muck Splash 8837
UPDATE creature SET spawndist = 5, MovementType = 1 WHERE guid IN (5803,5854,5856,5625);
UPDATE creature SET position_x = -6661.399, position_y = -703.24915, position_z = 234.71214, spawndist = 0, MovementType = 4 WHERE guid = 5862; -- linear
UPDATE creature SET position_x = -6657.0474, position_y = -700.4413, position_z = 233.83775, spawndist = 0, MovementType = 4 WHERE guid = 5810; -- linear
UPDATE creature SET position_x = -6621.401, position_y = -632.8954, position_z = 233.93192, spawndist = 0, MovementType = 4 WHERE guid = 5853; -- linear
UPDATE creature SET position_x = -6689.187, position_y = -632.07513, position_z = 233.93192, spawndist = 0, MovementType = 4 WHERE guid = 5852; -- linear
DELETE FROM creature_movement WHERE Id IN (5862,5810,5853,5852,5625);
INSERT INTO creature_movement (id, point, positionx, positiony, positionz, orientation, waittime, scriptid) VALUES
-- 5862
(5862,1,-6661.399,-703.24915,234.71214,100,1000,0),
(5862,2,-6669.0884,-706.94293,233.89899,100,0,0),
(5862,3,-6681.409,-710.0892,233.42407,100,0,0),
(5862,4,-6684.8555,-721.7015,233.71582,100,0,0),
(5862,5,-6676.4116,-733.2128,233.89789,100,1000,0),
-- 5810
(5810,1,-6657.0474,-700.4413,233.83775,100,1000,0),
(5810,2,-6647.2515,-681.4294,233.93193,100,0,0),
(5810,3,-6650.7646,-675.16595,233.93193,100,0,0),
(5810,4,-6664.042,-670.53705,233.93193,100,0,0),
(5810,5,-6675.2734,-663.3439,233.93195,100,1000,0),
-- 5853
(5853,1,-6621.401,-632.8954,233.93192,100,1000,0),
(5853,2,-6614.197,-643.693,233.93193,100,0,0),
(5853,3,-6619.5405,-655.89124,233.93193,100,0,0),
(5853,4,-6625.655,-669.03613,233.93192,100,0,0),
(5853,5,-6635.46,-678.1966,233.96378,100,1000,0),
-- 5852
(5852,1,-6689.187,-632.07513,233.93192,100,1000,0),
(5852,2,-6669.3345,-626.9937,233.99463,100,0,0),
(5852,3,-6642.328,-623.60645,233.99124,100,0,0),
(5852,4,-6615.8047,-632.2339,233.93192,100,0,0),
(5852,5,-6611.2593,-648.0024,233.93192,100,1000,0);
