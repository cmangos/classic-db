-- Kolkar Population in Barrens

-- Barak Kodobane 3394
UPDATE creature SET spawndist = 2, MovementType = 1 WHERE guid = 13988;
DELETE FROM creature_movement WHERE id IN (13988); -- shouldnt have waypoints

-- Kolkar Bloodcharger 3397
UPDATE creature SET spawndist = 2, MovementType = 1 WHERE guid IN (13997,13994,14002,14004,14005);

-- Kolkar Pack Runner 3274
-- Group 1
-- all missing - added (deleted guid - Reused)
-- DELETE FROM creature_addon WHERE guid IN (13157); -- already deleted
-- DELETE FROM creature_movement WHERE id IN (13157);
-- DELETE FROM game_event_creature WHERE guid IN (13157);
-- DELETE FROM game_event_creature_data WHERE guid IN (13157);
-- DELETE FROM creature_battleground WHERE guid IN (13157);
-- DELETE FROM creature_linking WHERE guid IN (13157)
 -- OR master_guid IN (13157);
-- DELETE FROM creature WHERE guid IN (13157);

INSERT INTO creature (guid, id, map, spawnmask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) values
(13157,4316,1,1,-957.8265,-1943.9536,92.878586,4.17914,300,300,0,0);

UPDATE creature SET position_x = -957.8265, position_y = -1943.9536, position_z = 92.878586, orientation = 4.17914, spawndist = 0, MovementType = 0 WHERE guid IN (20566,20858,13157);
DELETE FROM creature_linking WHERE guid IN (20566,20858,13157); -- old linking removed

-- moved to spawn_groups
DELETE FROM `spawn_group` WHERE id = 19971;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(19971, 'Barrens - Kolkar Pack Runner 3274 & Kolkar Packhound 4316 x2 - Patrol - 1', 0, 0, 0, 0x01 | 0x02);

DELETE FROM `spawn_group_spawn` WHERE id = 19971;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(19971, 20566, 0),
(19971, 20858, 1),
(19971, 13157, 2);

DELETE FROM `spawn_group_formation` WHERE id = 19971;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(19971, 3, 3, 0, 19971, 2, 'Barrens - Kolkar Pack Runner 3274 & Kolkar Packhound 4316 x2 - Patrol - 1');

DELETE FROM `waypoint_path_name` WHERE PathId = 19971;
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(19971,'Barrens - Kolkar Pack Runner 3274 & Kolkar Packhound 4316 x2 - Patrol - 1');

DELETE FROM `waypoint_path` WHERE PathId = 19971;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(19971,1,-957.8265,-1943.9536,92.878586,100,2000,5),
(19971,2,-957.45734,-1962.1923,92.54167,100,0,0),
(19971,3,-981.01495,-1965.9293,92.10064,100,0,0),
(19971,4,-1001.1251,-1938.7893,92.96712,100,0,0),
(19971,5,-1026.3735,-1935.4559,91.18977,100,0,0),
(19971,6,-1054.381,-1930.8917,93.09422,100,0,0),
(19971,7,-1084.7867,-1933.4838,91.860085,100,0,0),
(19971,8,-1116.0795,-1921.0282,91.76842,100,0,0),
(19971,9,-1148.1827,-1905.7153,93.020584,100,0,0),
(19971,10,-1189.984,-1910.4861,92.93507,100,0,0),
(19971,11,-1195.1764,-1929.9054,92.2837,100,0,0),
(19971,12,-1222.4716,-1949.587,91.8032,100,0,0),
(19971,13,-1254.848,-1958.3859,93.338684,100,0,0),
(19971,14,-1278.29,-1981.457,88.00168,100,0,0),
(19971,15,-1290.1049,-2019.1172,93.386604,100,0,0),
(19971,16,-1318.8685,-2018.8755,92.823524,100,0,0),
(19971,17,-1348.1337,-2045.5801,91.9182,100,0,0),
(19971,18,-1358.9688,-2082.8997,93.680336,100,0,0),
(19971,19,-1350.2821,-2119.612,88.568184,100,0,0),
(19971,20,-1350.5837,-2149.804,91.695175,100,0,0),
(19971,21,-1379.9791,-2151.7024,91.73139,100,0,0),
(19971,22,-1422.2391,-2157.0815,93.23551,100,0,0),
(19971,23,-1443.8656,-2182.2095,91.828285,100,0,0),
(19971,24,-1481.9388,-2205.3325,94.041664,100,0,0),
(19971,25,-1516.233,-2218.0854,93.254616,100,0,0),
(19971,26,-1546.6836,-2251.2134,91.923416,100,0,0),
(19971,27,-1551.4218,-2283.7063,94.02482,100,0,0),
(19971,28,-1549.678,-2316.113,92.47745,100,0,0),
(19971,29,-1540.472,-2352.1362,92.08585,100,0,0),
(19971,30,-1545.4628,-2390.409,91.773544,100,0,0),
(19971,31,-1550.8619,-2424.181,92.16396,100,0,0),
(19971,32,-1524.4407,-2455.6902,95.03412,100,0,0),
(19971,33,-1525.7513,-2485.384,94.515755,100,0,0),
(19971,34,-1527.7083,-2527.535,93.51575,100,0,0),
(19971,35,-1527.7859,-2563.7888,92.74101,100,0,0),
(19971,36,-1519.1483,-2599.7053,91.791664,100,0,0),
(19971,37,-1513.7296,-2632.9426,91.87687,100,0,0),
(19971,38,-1505.6079,-2657.3784,97.64396,100,0,0),
(19971,39,-1492.3423,-2676.8313,97.0463,100,0,0),
(19971,40,-1477.6781,-2713.8997,91.79249,100,0,0),
(19971,41,-1488.5625,-2757.9502,94.122086,100,0,0),
(19971,42,-1489.2489,-2787.0933,93.46529,100,0,0),
(19971,43,-1484.0377,-2819.3655,93.02293,100,0,0),
(19971,44,-1487.9336,-2850.4497,95.40487,100,0,0),
(19971,45,-1452.8237,-2883.645,95.06996,100,0,0),
(19971,46,-1412.4478,-2912.6975,93.33023,100,0,0),
(19971,47,-1417.3817,-2872.1555,92.959206,100,0,0),
(19971,48,-1419.9213,-2843.9153,93.57749,100,0,0),
(19971,49,-1435.503,-2816.761,93.79191,100,0,0),
(19971,50,-1453.2567,-2776.2678,93.36491,100,0,0),
(19971,51,-1451.2233,-2749.0962,93.120766,100,0,0),
(19971,52,-1450.9843,-2711.4287,92.80216,100,0,0),
(19971,53,-1456.7302,-2680.3862,91.791664,100,0,0),
(19971,54,-1441.3036,-2644.9329,93.462074,100,0,0),
(19971,55,-1411.3312,-2643.1853,92.094154,100,0,0),
(19971,56,-1379.7744,-2639.0574,93.031166,100,0,0),
(19971,57,-1352.1797,-2618.9531,93.7927,100,0,0),
(19971,58,-1322.3448,-2582.1763,93.37005,100,0,0),
(19971,59,-1309.0779,-2550.2302,93.4865,100,0,0),
(19971,60,-1286.8342,-2524.4114,92.150375,100,0,0),
(19971,61,-1284.4199,-2495.3542,96.913,100,0,0),
(19971,62,-1282.9186,-2451.5908,95.750435,100,0,0),
(19971,63,-1249.4673,-2423.482,91.77541,100,0,0),
(19971,64,-1246.8455,-2379.4565,92.628334,100,0,0),
(19971,65,-1248.8212,-2346.9307,95.293175,100,0,0),
(19971,66,-1257.8824,-2300.257,94.69036,100,0,0),
(19971,67,-1248.1669,-2275.4062,93.01236,100,0,0),
(19971,68,-1218.8114,-2254.8398,91.96818,100,0,0),
(19971,69,-1246.9358,-2213.5479,93.36585,100,0,0),
(19971,70,-1253.7885,-2183.7778,91.791664,100,0,0),
(19971,71,-1274.4166,-2157.1785,91.791664,100,0,0),
(19971,72,-1291.6012,-2124.5522,91.791664,100,0,0),
(19971,73,-1312.2401,-2086.919,91.791664,100,0,0),
(19971,74,-1310.6313,-2046.1079,91.791664,100,0,0),
(19971,75,-1316.0708,-2014.5239,92.88407,100,0,0),
(19971,76,-1308.5588,-1981.5508,91.21665,100,0,0),
(19971,77,-1276.7258,-1981.2162,87.91916,100,0,0),
(19971,78,-1250.5076,-1999.3583,93.77805,100,0,0),
(19971,79,-1220.0238,-1993.1381,91.66917,100,0,0),
(19971,80,-1193.8678,-1974.8951,91.112564,100,0,0),
(19971,81,-1158.3961,-1976.3579,91.72687,100,0,0),
(19971,82,-1136.1061,-1943.459,90.68339,100,0,0),
(19971,83,-1116.7726,-1914.3787,91.76842,100,0,0),
(19971,84,-1093.0983,-1893.2388,94.65679,100,0,0),
(19971,85,-1052.8662,-1884.4592,94.42304,100,0,0),
(19971,86,-1028.5068,-1884.2906,92.739174,100,0,0),
(19971,87,-993.4093,-1902.9752,91.791664,100,0,0),
(19971,88,-977.41895,-1915.6562,92.26945,100,0,0),
(19971,89,-966.0452,-1927.882,91.95012,100,0,0);

-- Group 2
UPDATE creature SET position_x = -1281.0596, position_y = -2789.7483, position_z = 93.48284, spawndist = 0, MovementType = 0 WHERE guid IN (20564,20856);
DELETE FROM creature_linking WHERE guid IN (20564,20856); -- old linking removed

-- moved to spawn_groups
DELETE FROM `spawn_group` WHERE id = 19970;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(19970, 'Barrens - Kolkar Pack Runner 3274 & Kolkar Packhound 4316 - Patrol - 2', 0, 0, 0, 0x01 | 0x02);

DELETE FROM `spawn_group_spawn` WHERE id = 19970;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(19970, 20564, 0),
(19970, 20856, 1);

DELETE FROM `spawn_group_formation` WHERE id = 19970;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(19970, 3, 3, 0, 19970, 2, 'Barrens - Kolkar Pack Runner 3274 & Kolkar Packhound 4316 - Patrol - 2');

DELETE FROM `waypoint_path_name` WHERE PathId = 19970;
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(19970,'Barrens - Kolkar Pack Runner 3274 & Kolkar Packhound 4316 - Patrol - 2');

DELETE FROM `waypoint_path` WHERE PathId = 19970;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(19970,1,-1281.0596,-2789.7483,93.48284,100,1,5),
(19970,2,-1279.1895,-2808.1309,93.414345,100,0,0),
(19970,3,-1263.8756,-2821.961,93.515015,100,0,0),
(19970,4,-1239.3038,-2814.2625,94.71277,100,0,0),
(19970,5,-1208.1682,-2815.759,93.969574,100,0,0),
(19970,6,-1183.8864,-2823.0515,93.97944,100,0,0),
(19970,7,-1147.1963,-2824.7747,93.74789,100,0,0),
(19970,8,-1129.668,-2806.9531,93.22053,100,15000,0),
(19970,9,-1151.4762,-2822.177,92.94857,100,0,0),
(19970,10,-1182.2113,-2802.9768,92.35615,100,0,0),
(19970,11,-1207.1346,-2807.4585,92.680756,100,0,0),
(19970,12,-1230.3364,-2793.548,92.04168,100,0,0),
(19970,13,-1253.0614,-2783.5066,92.59637,100,0,0),
(19970,14,-1281.0514,-2750.1614,92.4019,100,0,0),
(19970,15,-1316.551,-2746.2517,94.34629,100,0,0),
(19970,16,-1340.4865,-2762.6975,93.39482,100,0,0),
(19970,17,-1355.132,-2771.0635,93.74445,100,0,0),
(19970,18,-1374.1852,-2762.0325,92.70182,100,0,0),
(19970,19,-1386.8002,-2748.8284,92.041664,100,0,0),
(19970,20,-1395.3483,-2744.3838,91.791664,100,10000,0),
(19970,21,-1377.4082,-2767.866,92.19075,100,0,0),
(19970,22,-1377.8134,-2791.821,92.54231,100,0,0),
(19970,23,-1352.497,-2817.932,92.90037,100,0,0),
(19970,24,-1331.3331,-2824.8628,92.95522,100,0,0),
(19970,25,-1312.2114,-2827.0542,93.13271,100,0,0),
(19970,26,-1293.4945,-2829.7305,93.539345,100,0,0),
(19970,27,-1276.2378,-2823.2688,93.434364,100,0,0),
(19970,28,-1276.4407,-2809.0264,93.69926,100,0,0),
(19970,29,-1281.0596,-2789.7483,93.48284,100,50000,21);

-- DELETE FROM `dbscripts_on_creature_movement` WHERE `id` = 21; -- already added
-- INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `datafloat`, `x`, `y`, `z`, `o`, `speed`, `condition_id`, `comments`) VALUES
-- (21, 0, 0, 20, 1, 5, 24000, 0, 0, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'GENERIC - Change Movement To 1 - Random (30secs TEMP) (around current location)');

-- Group 3
UPDATE creature SET spawndist = 0, MovementType = 0 WHERE guid IN (20572,20868);
DELETE FROM creature_linking WHERE guid IN (20572,20868); -- old linking removed

-- moved to spawn_groups
DELETE FROM `spawn_group` WHERE id = 19969;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(19969, 'Barrens - Kolkar Pack Runner 3274 & Kolkar Packhound 4316 - Patrol - 3', 0, 0, 0, 0x01 | 0x02);

DELETE FROM `spawn_group_spawn` WHERE id = 19969;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(19969, 20572, 0),
(19969, 20868, 1);

DELETE FROM `spawn_group_formation` WHERE id = 19969;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(19969, 3, 3, 0, 19969, 2, 'Barrens - Kolkar Pack Runner 3274 & Kolkar Packhound 4316 - Patrol - 3');

DELETE FROM `waypoint_path_name` WHERE PathId = 19969;
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(19969,'Barrens - Kolkar Pack Runner 3274 & Kolkar Packhound 4316 - Patrol - 3');

DELETE FROM `waypoint_path` WHERE PathId = 19969;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(19969,1,-1154.0728,-2779.757,91.79168,100,1,5),
(19969,2,-1171.3287,-2792.3215,92.91033,100,0,0),
(19969,3,-1159.2174,-2826.485,93.10677,100,0,0),
(19969,4,-1126.2749,-2862.4895,95.60426,100,0,0),
(19969,5,-1127.2538,-2879.861,94.76403,100,0,0),
(19969,6,-1137.2203,-2912.6106,93.3689,100,5000,21),
(19969,7,-1119.5084,-2916.9922,93.94523,100,0,0),
(19969,8,-1088.5352,-2911.5205,91.791664,100,0,0),
(19969,9,-1076.0956,-2888.3152,91.79249,100,0,0),
(19969,10,-1082.3711,-2856.0764,92.58341,100,0,0),
(19969,11,-1103.7391,-2826.427,94.36164,100,5000,21),
(19969,12,-1082.1389,-2819.466,91.791664,100,0,0),
(19969,13,-1051.858,-2816.3828,91.791664,100,0,0),
(19969,14,-1048.4758,-2782.5073,91.791664,100,5000,21),
(19969,15,-1075.0222,-2776.7393,91.791664,100,0,0),
(19969,16,-1093.4772,-2765.121,91.791664,100,0,0),
(19969,17,-1111.1565,-2765.0286,92.112465,100,0,0),
(19969,18,-1123.7919,-2776.8706,92.004555,100,0,0),
(19969,19,-1148.5688,-2774.0317,92.68719,100,0,0),
(19969,20,-1154.0728,-2779.757,91.79168,100,15000,21);

-- Group 4
UPDATE creature SET spawndist = 0, MovementType = 0 WHERE guid IN (20574,20869);
DELETE FROM creature_linking WHERE guid IN (20574,20869); -- old linking removed

-- moved to spawn_groups
DELETE FROM `spawn_group` WHERE id = 19968;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(19968, 'Barrens - Kolkar Pack Runner 3274 & Kolkar Packhound 4316 - Patrol - 4', 0, 0, 0, 0x01 | 0x02);

DELETE FROM `spawn_group_spawn` WHERE id = 19968;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(19968, 20574, 0),
(19968, 20869, 1);

DELETE FROM `spawn_group_formation` WHERE id = 19968;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(19968, 3, 3, 0, 19968, 2, 'Barrens - Kolkar Pack Runner 3274 & Kolkar Packhound 4316 - Patrol - 4');

DELETE FROM `waypoint_path_name` WHERE PathId = 19968;
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(19968,'Barrens - Kolkar Pack Runner 3274 & Kolkar Packhound 4316 - Patrol - 4');

DELETE FROM `waypoint_path` WHERE PathId = 19968;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(19968,1,-1021.3711,-2717.8926,94.50138,100,1,5),
(19968,2,-1018.1396,-2720.9355,95.041664,100,0,0),
(19968,3,-1042.2522,-2727.0012,92.74674,100,0,0),
(19968,4,-1068.2659,-2754.74,100.06364,100,0,0),
(19968,5,-1082.8044,-2766.4292,94.2819,100,0,0),
(19968,6,-1099.8008,-2762.7305,91.791664,100,0,0),
(19968,7,-1119.4698,-2768.2852,93.3361,100,0,0),
(19968,8,-1138.6207,-2774.8313,92.799736,100,0,0),
(19968,9,-1159.2908,-2772.0083,91.79168,100,0,0),
(19968,10,-1170.2146,-2794.8198,92.65496,100,0,0),
(19968,11,-1184.0543,-2815.9915,93.132515,100,5000,21),
(19968,12,-1152.7875,-2818.7073,92.68832,100,0,0),
(19968,13,-1145.4498,-2847.2266,94.86516,100,0,0),
(19968,14,-1115.0387,-2850.0735,95.15773,100,0,0),
(19968,15,-1081.2986,-2848.386,91.916664,100,0,0),
(19968,16,-1051.0957,-2816.9495,91.791664,100,5000,21),
(19968,17,-1027.752,-2808.5508,94.166664,100,0,0),
(19968,18,-1017.6582,-2785.0598,93.831215,100,0,0),
(19968,19,-1016.1886,-2755.4875,91.791664,100,0,0),
(19968,20,-1021.3711,-2717.8926,94.50138,100,15000,21);

-- Group 5
UPDATE creature SET position_x = -1149.3079, position_y = -3196.668, position_z = 93.649574, spawndist = 0, MovementType = 0 WHERE guid IN (20573,20866);
DELETE FROM creature_linking WHERE guid IN (20573,20866); -- old linking removed

-- moved to spawn_groups
DELETE FROM `spawn_group` WHERE id = 19967;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(19967, 'Barrens - Kolkar Pack Runner 3274 & Kolkar Packhound 4316 - Patrol - 5', 0, 0, 0, 0x01 | 0x02);

DELETE FROM `spawn_group_spawn` WHERE id = 19967;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(19967, 20573, 0),
(19967, 20866, 1);

DELETE FROM `spawn_group_formation` WHERE id = 19967;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(19967, 3, 3, 0, 19967, 2, 'Barrens - Kolkar Pack Runner 3274 & Kolkar Packhound 4316 - Patrol - 5');

DELETE FROM `waypoint_path_name` WHERE PathId = 19967;
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(19967,'Barrens - Kolkar Pack Runner 3274 & Kolkar Packhound 4316 - Patrol - 5');

DELETE FROM `waypoint_path` WHERE PathId = 19967;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(19967,1,-1149.3079,-3196.668,93.649574,100,1,5),
(19967,2,-1123.3365,-3190.092,95.28,100,0,0),
(19967,3,-1111.2357,-3190.8464,94.828094,100,0,0),
(19967,4,-1106.4241,-3151.3005,94.38859,100,0,0),
(19967,5,-1121.9899,-3128.4111,94.22709,100,0,0),
(19967,6,-1105.2767,-3109.7175,93.62357,100,0,0),
(19967,7,-1102.1841,-3095.935,94.916664,100,5000,21),
(19967,8,-1141.1821,-3110.7441,94.25657,100,0,0),
(19967,9,-1165.0549,-3091.843,92.58317,100,0,0),
(19967,10,-1187.5161,-3075.7065,93.249855,100,0,0),
(19967,11,-1188.541,-3054.166,99.7334,100,5000,21),
(19967,12,-1188.3937,-3074.4233,93.15391,100,0,0),
(19967,13,-1160.6791,-3092.519,92.21134,100,0,0),
(19967,14,-1138.5308,-3109.8684,94.574684,100,0,0),
(19967,15,-1138.5308,-3109.8684,94.574684,100,0,0),
(19967,16,-1135.0953,-3126.7717,94.86082,100,0,0),
(19967,17,-1128.8287,-3147.7886,93.88859,100,0,0),
(19967,18,-1136.1412,-3165.1697,93.36002,100,0,0),
(19967,19,-1133.7965,-3187.9214,94.78654,100,0,0),
(19967,20,-1149.3079,-3196.668,93.649574,100,15000,21);

-- Group 6
UPDATE creature SET position_x = -1320.0441, position_y = -2820.917, position_z = 92.789696, spawndist = 0, MovementType = 0 WHERE guid IN (20569,20864);
DELETE FROM creature_linking WHERE guid IN (20569,20864); -- old linking removed

-- moved to spawn_groups
DELETE FROM `spawn_group` WHERE id = 19966;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(19966, 'Barrens - Kolkar Pack Runner 3274 & Kolkar Packhound 4316 - Patrol - 6', 0, 0, 0, 0x01 | 0x02);

DELETE FROM `spawn_group_spawn` WHERE id = 19966;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(19966, 20569, 0),
(19966, 20864, 1);

DELETE FROM `spawn_group_formation` WHERE id = 19966;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(19966, 3, 3, 0, 19966, 2, 'Barrens - Kolkar Pack Runner 3274 & Kolkar Packhound 4316 - Patrol - 6');

DELETE FROM `waypoint_path_name` WHERE PathId = 19966;
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(19966,'Barrens - Kolkar Pack Runner 3274 & Kolkar Packhound 4316 - Patrol - 6');

DELETE FROM `waypoint_path` WHERE PathId = 19966;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(19966,1,-1320.0441,-2820.917,92.789696,100,1,5),
(19966,2,-1268.1417,-2786.0188,93.22234,100,0,0),
(19966,3,-1250.793,-2785.6094,92.449394,100,5000,21),
(19966,4,-1255.1554,-2824.2075,93.65662,100,0,0),
(19966,5,-1257.9498,-2850.7026,94.16453,100,0,0),
(19966,6,-1275.3297,-2854.3406,93.66753,100,5000,21),
(19966,7,-1279.6903,-2876.014,94.101364,100,0,0),
(19966,8,-1293.8512,-2898.7473,93.71782,100,0,0),
(19966,9,-1304.5723,-2914.9412,93.17438,100,0,0),
(19966,10,-1318.8362,-2919.5938,93.29938,100,5000,21),
(19966,11,-1326.4456,-2892.8794,93.67995,100,0,0),
(19966,12,-1319.8817,-2853.1624,93.13629,100,0,0),
(19966,13,-1320.0441,-2820.917,92.789696,100,5000,21);

-- Group 7
UPDATE creature SET position_x = -1417.6149, position_y = -2716.871, position_z = 93.579506, spawndist = 0, MovementType = 0 WHERE guid IN (20563,20855);
DELETE FROM creature_linking WHERE guid IN (20563,20855); -- old linking removed

-- moved to spawn_groups
DELETE FROM `spawn_group` WHERE id = 19965;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(19965, 'Barrens - Kolkar Pack Runner 3274 & Kolkar Packhound 4316 - Patrol - 7', 0, 0, 0, 0x01 | 0x02);

DELETE FROM `spawn_group_spawn` WHERE id = 19965;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(19965, 20563, 0),
(19965, 20855, 1);

DELETE FROM `spawn_group_formation` WHERE id = 19965;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(19965, 3, 3, 0, 19965, 2, 'Barrens - Kolkar Pack Runner 3274 & Kolkar Packhound 4316 - Patrol - 7');

DELETE FROM `waypoint_path_name` WHERE PathId = 19965;
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(19965,'Barrens - Kolkar Pack Runner 3274 & Kolkar Packhound 4316 - Patrol - 7');

DELETE FROM `waypoint_path` WHERE PathId = 19965;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(19965,1,-1417.6149,-2716.871,93.579506,100,1,5),
(19965,2,-1401.9825,-2709.7336,93.666664,100,0,0),
(19965,3,-1381.5773,-2714.583,91.791664,100,0,0),
(19965,4,-1367.7161,-2728.3818,91.791664,100,0,0),
(19965,5,-1376.8014,-2750.0786,92.791664,100,0,0),
(19965,6,-1390.5852,-2770.299,91.79231,100,0,0),
(19965,7,-1417.7747,-2764.788,93.36222,100,0,0),
(19965,8,-1430.5966,-2750.588,93.29972,100,0,0),
(19965,9,-1430.197,-2729.4097,92.07487,100,0,0),
(19965,10,-1417.6149,-2716.871,93.579506,100,15000,21);

-- Group 8
UPDATE creature SET position_x = -1415.0646, position_y = -2754.2095, position_z = 92.912025, spawndist = 0, MovementType = 0 WHERE guid IN (20570,20865);
DELETE FROM creature_linking WHERE guid IN (20570,20865); -- old linking removed

-- moved to spawn_groups
DELETE FROM `spawn_group` WHERE id = 19964;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(19964, 'Barrens - Kolkar Pack Runner 3274 & Kolkar Packhound 4316 - Patrol - 8', 0, 0, 0, 0x01 | 0x02);

DELETE FROM `spawn_group_spawn` WHERE id = 19964;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(19964, 20570, 0),
(19964, 20865, 1);

DELETE FROM `spawn_group_formation` WHERE id = 19964;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(19964, 3, 3, 0, 19964, 2, 'Barrens - Kolkar Pack Runner 3274 & Kolkar Packhound 4316 - Patrol - 8');

DELETE FROM `waypoint_path_name` WHERE PathId = 19964;
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(19964,'Barrens - Kolkar Pack Runner 3274 & Kolkar Packhound 4316 - Patrol - 8');

DELETE FROM `waypoint_path` WHERE PathId = 19964;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(19964,1,-1415.0646,-2754.2095,92.912025,100,1,5),
(19964,2,-1450.5256,-2764.441,94.291664,100,0,0),
(19964,3,-1451.7202,-2802.5002,92.13395,100,0,0),
(19964,4,-1432.742,-2824.88,93.56176,100,0,0),
(19964,5,-1421.3058,-2845.4788,93.76939,100,0,0),
(19964,6,-1383.5758,-2852.8096,93.70601,100,0,0),
(19964,7,-1369.4791,-2831.4033,92.97833,100,0,0),
(19964,8,-1357.5302,-2793.7449,93.24445,100,0,0),
(19964,9,-1342.3024,-2759.908,93.89336,100,0,0),
(19964,10,-1356.6138,-2736.6306,93.01982,100,0,0),
(19964,11,-1366.0747,-2716.8508,91.79533,100,0,0),
(19964,12,-1375.4049,-2692.6907,91.791664,100,0,0),
(19964,13,-1393.5527,-2676.8643,92.20548,100,0,0),
(19964,14,-1434.1041,-2684.5903,93.60001,100,0,0),
(19964,15,-1460.5912,-2697.3694,92.58317,100,0,0),
(19964,16,-1455.9918,-2718.1987,91.791664,100,0,0),
(19964,17,-1440.5607,-2747.3044,92.94938,100,0,0),
(19964,18,-1427.2448,-2751.2427,93.253334,100,0,0),
(19964,19,-1415.0646,-2754.2095,92.912025,100,15000,21);

-- Group 9
-- missing added
DELETE FROM creature_addon WHERE guid IN (13233,13234);
DELETE FROM creature_movement WHERE id IN (13233,13234);
DELETE FROM game_event_creature WHERE guid IN (13233,13234);
DELETE FROM game_event_creature_data WHERE guid IN (13233,13234);
DELETE FROM creature_battleground WHERE guid IN (13233,13234);
DELETE FROM creature_linking WHERE guid IN (13233,13234)
 OR master_guid IN (13233,13234);
DELETE FROM creature WHERE guid IN (13233,13234);

INSERT INTO creature (guid, id, map, spawnmask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) values
(13233,4316,1,1,-1561.5756,-2973.4485,89.358086,0,300,300,0,0), -- Kolkar Packhound 4316
(13234,3275,1,1,-1561.5756,-2973.4485,89.358086,0,300,300,0,0); -- Kolkar Marauder 3275

UPDATE creature SET position_x = -1561.5756, position_y = -2973.4485, position_z = 89.358086, spawndist = 0, MovementType = 0 WHERE guid IN (20571,20867);
DELETE FROM creature_linking WHERE guid IN (20571,20867); -- old linking removed

-- moved to spawn_groups
DELETE FROM `spawn_group` WHERE id = 19963;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(19963, 'Barrens - Kolkar Pack Runner 3274 & Kolkar Packhound 4316 x2 & Kolkar Marauder 3275 - Patrol - 9', 0, 0, 0, 0x01 | 0x02);

DELETE FROM `spawn_group_spawn` WHERE id = 19963;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(19963, 20571, 0),
(19963, 20867, 1),
(19963, 13233, 2),
(19963, 13234, 3);

DELETE FROM `spawn_group_formation` WHERE id = 19963;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(19963, 0, 3, 0, 19963, 2, 'Barrens - Kolkar Pack Runner 3274 & Kolkar Packhound 4316 x2 & Kolkar Marauder 3275 - Patrol - 9');

DELETE FROM `waypoint_path_name` WHERE PathId = 19963;
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(19963,'Barrens - Kolkar Pack Runner 3274 & Kolkar Packhound 4316 x2 & Kolkar Marauder 3275 - Patrol - 9');

DELETE FROM `waypoint_path` WHERE PathId = 19963;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(19963,1,-1561.5756,-2973.4485,89.358086,100,1,5),
(19963,2,-1542.2007,-2944.7878,92.31937,100,0,0),
(19963,3,-1516.903,-2922.3489,93.28605,100,0,0),
(19963,4,-1507.4323,-2888.8826,93.38297,100,0,0),
(19963,5,-1510.9688,-2847.9739,94.163,100,0,0),
(19963,6,-1541.1063,-2819.044,91.799255,100,0,0),
(19963,7,-1531.82,-2781.1,93.1528,100,0,0),
(19963,8,-1502.25,-2767.23,94.6391,100,0,0),
(19963,9,-1473.1036,-2764.4739,94.037125,100,0,0),
(19963,10,-1475.3247,-2795.7344,93.06807,100,0,0),
(19963,11,-1478.8698,-2840.323,93.343346,100,0,0),
(19963,12,-1486.2709,-2882.1858,96.579346,100,0,0),
(19963,13,-1481.9529,-2914.6956,94.21993,100,0,0),
(19963,14,-1491.6125,-2953.0134,93.423744,100,0,0),
(19963,15,-1519.7197,-2980.8464,91.916664,100,0,0),
(19963,16,-1546.559,-3013.5913,92.48527,100,0,0),
(19963,17,-1586.43,-3023.98,93.9702,100,0,0),
(19963,18,-1621.11,-3028.41,92.6186,100,0,0),
(19963,19,-1644.97,-3011.56,91.6668,100,0,0),
(19963,20,-1630.59,-2990.53,91.6668,100,0,0),
(19963,21,-1603.16,-2980.86,91.6669,100,0,0);

-- Group 10
UPDATE creature SET position_x = -1370.8202, position_y = -3134.3157, position_z = 108.963264, spawndist = 0, MovementType = 0 WHERE guid IN (20565,20857);
DELETE FROM creature_linking WHERE guid IN (20565,20857); -- old linking removed

-- moved to spawn_groups
DELETE FROM `spawn_group` WHERE id = 19962;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(19962, 'Barrens - Kolkar Pack Runner 3274 & Kolkar Packhound 4316 - Patrol - 10', 0, 0, 0, 0x01 | 0x02);

DELETE FROM `spawn_group_spawn` WHERE id = 19962;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(19962, 20565, 0),
(19962, 20857, 1);

DELETE FROM `spawn_group_formation` WHERE id = 19962;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(19962, 3, 3, 0, 19962, 2, 'Barrens - Kolkar Pack Runner 3274 & Kolkar Packhound 4316 - Patrol - 10');

DELETE FROM `waypoint_path_name` WHERE PathId = 19962;
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(19962,'Barrens - Kolkar Pack Runner 3274 & Kolkar Packhound 4316 - Patrol - 10');

DELETE FROM `waypoint_path` WHERE PathId = 19962;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(19962,1,-1370.8202,-3134.3157,108.963264,100,1,5),
(19962,2,-1355.1672,-3144.0325,98.00262,100,0,0),
(19962,3,-1346.749,-3160.3818,96.3493,100,0,0),
(19962,4,-1333.903,-3161.1606,94.503105,100,5000,21),
(19962,5,-1314.3809,-3155.2014,96.32658,100,0,0),
(19962,6,-1295.9349,-3148.4172,97.68377,100,0,0),
(19962,7,-1285.1199,-3153.2766,98.213066,100,5000,21),
(19962,8,-1285.1248,-3129.9072,91.79168,100,0,0),
(19962,9,-1323.9762,-3107.6125,91.79168,100,0,0),
(19962,10,-1344.7115,-3089.9453,92.31072,100,0,0),
(19962,11,-1364.1018,-3097.9788,91.91668,100,0,0),
(19962,12,-1370.8202,-3134.3157,108.963264,100,5000,21);

-- Group 11
UPDATE creature SET position_x = -1440.0393, position_y = -3100.6575, position_z = 115.95836, spawndist = 0, MovementType = 0 WHERE guid IN (20568,20863);
DELETE FROM creature_linking WHERE guid IN (20568,20863); -- old linking removed

-- moved to spawn_groups
DELETE FROM `spawn_group` WHERE id = 19961;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(19961, 'Barrens - Kolkar Pack Runner 3274 & Kolkar Packhound 4316 - Patrol - 11', 0, 0, 0, 0x01 | 0x02);

DELETE FROM `spawn_group_spawn` WHERE id = 19961;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(19961, 20568, 0),
(19961, 20863, 1);

DELETE FROM `spawn_group_formation` WHERE id = 19961;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(19961, 3, 3, 0, 19961, 2, 'Barrens - Kolkar Pack Runner 3274 & Kolkar Packhound 4316 - Patrol - 11');

DELETE FROM `waypoint_path_name` WHERE PathId = 19961;
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(19961,'Barrens - Kolkar Pack Runner 3274 & Kolkar Packhound 4316 - Patrol - 11');

DELETE FROM `waypoint_path` WHERE PathId = 19961;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(19961,1,-1440.0393,-3100.6575,115.95836,100,1,5),
(19961,2,-1458.36,-3084.6106,99.65529,100,0,0),
(19961,3,-1490.4885,-3066.4587,91.79168,100,0,0),
(19961,4,-1508.4146,-3059.4062,91.988945,100,0,0),
(19961,5,-1513.0515,-3035.9973,93.30999,100,0,0),
(19961,6,-1511.9103,-3021.4055,91.79801,100,0,0),
(19961,7,-1520.401,-3007.4304,91.791664,100,0,0),
(19961,8,-1543.8428,-2988.8286,91.50042,100,5000,21),
(19961,9,-1541.4954,-3008.5369,91.95508,100,0,0),
(19961,10,-1544.253,-3034.638,94.300476,100,0,0),
(19961,11,-1528.9713,-3050.7024,95.04168,100,0,0),
(19961,12,-1514.3185,-3079.187,91.79163,100,5000,21),
(19961,13,-1492.7438,-3071.5686,91.79168,100,0,0),
(19961,14,-1475.5056,-3051.9553,91.84051,100,0,0),
(19961,15,-1458.6019,-3025.4883,92.17057,100,0,0),
(19961,16,-1478.9404,-3013.4753,91.791664,100,5000,21),
(19961,17,-1450.8531,-3008.7283,93.8068,100,0,0),
(19961,18,-1441.8177,-3029.5916,91.791664,100,0,0),
(19961,19,-1444.5392,-3046.1145,96.02752,100,0,0),
(19961,20,-1440.9965,-3065.471,102.62859,100,0,0),
(19961,21,-1442.5762,-3082.5186,109.16359,100,0,0),
(19961,22,-1440.0393,-3100.6575,115.95836,100,5000,21);

-- Group 12
-- missing group added
DELETE FROM creature_addon WHERE guid IN (13230,13231);
DELETE FROM creature_movement WHERE id IN (13230,13231);
DELETE FROM game_event_creature WHERE guid IN (13230,13231);
DELETE FROM game_event_creature_data WHERE guid IN (13230,13231);
DELETE FROM creature_battleground WHERE guid IN (13230,13231);
DELETE FROM creature_linking WHERE guid IN (13230,13231)
 OR master_guid IN (13230,13231);
DELETE FROM creature WHERE guid IN (13230,13231);

INSERT INTO creature (guid, id, map, spawnmask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) values
(13230,3274,1,1,-1450.9772,-3014.935,93.416664,0,300,300,0,0),
(13231,4316,1,1,-1450.9772,-3014.935,93.416664,0,300,300,0,0);

-- moved to spawn_groups
DELETE FROM `spawn_group` WHERE id = 19960;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(19960, 'Barrens - Kolkar Pack Runner 3274 & Kolkar Packhound 4316 - Patrol - 12', 0, 0, 0, 0x01 | 0x02);

DELETE FROM `spawn_group_spawn` WHERE id = 19960;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(19960, 13230, 0),
(19960, 13231, 1);

DELETE FROM `spawn_group_formation` WHERE id = 19960;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(19960, 3, 3, 0, 19960, 2, 'Barrens - Kolkar Pack Runner 3274 & Kolkar Packhound 4316 - Patrol - 12');

DELETE FROM `waypoint_path_name` WHERE PathId = 19960;
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(19960,'Barrens - Kolkar Pack Runner 3274 & Kolkar Packhound 4316 - Patrol - 12');

DELETE FROM `waypoint_path` WHERE PathId = 19960;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(19960,1,-1450.9772,-3014.935,93.416664,100,1,5),
(19960,2,-1465.05,-3007.5193,92.92301,100,0,0),
(19960,3,-1481.8728,-2987.406,91.791664,100,0,0),
(19960,4,-1516.2828,-2985.8918,91.791664,100,0,0),
(19960,5,-1533.7837,-2976.7898,91.91204,100,0,0),
(19960,6,-1556.168,-2986.0842,91.34881,100,0,0),
(19960,7,-1577.2153,-2999.5674,91.86173,100,0,0),
(19960,8,-1584.6433,-3045.7004,95.52423,100,0,0),
(19960,9,-1566.5176,-3081.4043,91.79163,100,0,0),
(19960,10,-1542.9348,-3110.1506,91.79163,100,0,0),
(19960,11,-1528.299,-3118.7783,91.79163,100,0,0),
(19960,12,-1499.9888,-3098.6636,92.007744,100,0,0),
(19960,13,-1485.1111,-3076.1394,91.79168,100,0,0),
(19960,14,-1503.1848,-3060.1611,91.79168,100,0,0),
(19960,15,-1512.9923,-3048.3503,93.41326,100,0,0),
(19960,16,-1508.1761,-3041.5151,93.25408,100,5000,21),
(19960,17,-1492.7189,-3067.8928,91.79168,100,0,0),
(19960,18,-1483.2914,-3058.9722,91.91644,100,0,0),
(19960,19,-1450.1342,-3031.8325,91.791664,100,0,0),
(19960,20,-1450.9772,-3014.935,93.416664,100,5000,21);

-- Kolkar Wrangler 3272
UPDATE creature SET spawndist = 2, MovementType = 1 WHERE guid IN (20452,20449,20465,20461,20505,20470,20472,20475,20448,20477,20439,20225,20445,20453,20481); -- 20225 bristleback shaman
DELETE FROM creature_movement WHERE Id IN (20503,20504); -- these 2 shouldnt have waypoints
UPDATE creature SET spawndist = 10, MovementType = 1 WHERE guid IN (20503,20504);
-- waypoints
UPDATE creature SET position_x = -845.31866, position_y = -2798.9136, position_z = 93.22306, spawndist = 0, MovementType = 2 WHERE guid IN (20440);
UPDATE creature SET position_x = -833.11926, position_y = -2764.8042, position_z = 91.96891, spawndist = 0, MovementType = 2 WHERE guid IN (20507);
UPDATE creature SET position_x = -872.669, position_y = -2871.2112, position_z = 93.5778, spawndist = 0, MovementType = 2 WHERE guid IN (20451);
UPDATE creature SET position_x = -225.48828, position_y = -1707.651, position_z = 94.07906, spawndist = 0, MovementType = 2 WHERE guid IN (20464);
UPDATE creature SET position_x = -152.52344, position_y = -1816.7037, position_z = 93.291664, spawndist = 0, MovementType = 2 WHERE guid IN (20466);
UPDATE creature SET position_x = -182.74751, position_y = -1836.9453, position_z = 98.847084, spawndist = 0, MovementType = 2 WHERE guid IN (20469);
UPDATE creature SET position_x = -50.017254, position_y = -1685.1993, position_z = 94.32804, spawndist = 0, MovementType = 2 WHERE guid IN (20460);
UPDATE creature SET position_x = -75.91244, position_y = -2018.839, position_z = 92.99479, spawndist = 0, MovementType = 2 WHERE guid IN (20471);
UPDATE creature SET position_x = -137.04395, position_y = -2047.1584, position_z = 93.41738, spawndist = 0, MovementType = 2 WHERE guid IN (20473);
UPDATE creature SET position_x = -51.52078, position_y = -2248.94, position_z = 92.7221, spawndist = 0, MovementType = 2 WHERE guid IN (20447);
UPDATE creature SET position_x = -16.096462, position_y = -2255.8572, position_z = 91.79168, spawndist = 0, MovementType = 2 WHERE guid IN (20486);
UPDATE creature SET position_x = 238.41206, position_y = -1933.6914, position_z = 92.46366, spawndist = 0, MovementType = 2 WHERE guid IN (20455);
UPDATE creature SET position_x = 84.65517, position_y = -2060.6614, position_z = 98.26397, spawndist = 0, MovementType = 2 WHERE guid IN (20474);
UPDATE creature SET position_x = -43.299156, position_y = -2236.435791, position_z = 91.693428, spawndist = 5, MovementType = 1 WHERE guid = 20487; -- random movement
UPDATE creature SET position_x = 11.797140, position_y = -1709.600464, position_z = 95.342560, spawndist = 5, MovementType = 1 WHERE guid = 20454; -- random movement
DELETE FROM creature_movement WHERE Id IN (20440,20507,20451,20464,20466,20469,20460,20471,20473,20447,20486,20455,20474);
INSERT INTO creature_movement (id, point, positionx, positiony, positionz, orientation, waittime, scriptid) VALUES
-- 20440
(20440,1,-845.31866,-2798.9136,93.22306,100,0,0),
(20440,2,-843.06134,-2824.2644,92.699234,100,0,0),
(20440,3,-848.2806,-2845.7925,92.272865,100,0,0),
(20440,4,-857.48785,-2874.758,92.07511,100,0,0),
(20440,5,-862.8461,-2907.7083,93.791664,100,0,0),
(20440,6,-874.5804,-2931.4497,92.0153,100,0,0),
(20440,7,-890.2544,-2944.4797,95.555824,100,0,0),
(20440,8,-902.487,-2946.8474,92.055824,100,0,0),
(20440,9,-918.0753,-2925.3933,91.791664,100,0,0),
(20440,10,-911.796,-2897.561,91.791664,100,0,0),
(20440,11,-904.0308,-2867.7478,91.791664,100,0,0),
(20440,12,-896.66644,-2842.5479,93.143166,100,0,0),
(20440,13,-886.66705,-2828.595,94.29294,100,0,0),
(20440,14,-885.66876,-2803.039,94.13571,100,0,0),
(20440,15,-882.35626,-2779.232,93.73673,100,0,0),
(20440,16,-873.4251,-2760.8047,91.9152,100,0,0),
(20440,17,-877.81555,-2751.2778,91.942055,100,0,0),
(20440,18,-874.97797,-2735.4023,91.791664,100,0,0),
(20440,19,-863.09796,-2724.601,91.791664,100,0,0),
(20440,20,-845.4053,-2720.3672,92.04606,100,0,0),
(20440,21,-828.55396,-2736.898,91.791664,100,0,0),
(20440,22,-840.6206,-2769.0461,91.791664,100,0,0),
-- 20507
(20507,1,-833.11926,-2764.8042,91.96891,100,0,0),
(20507,2,-850.7376,-2766.0212,91.791664,100,0,0),
(20507,3,-872.30786,-2777.4644,92.281166,100,0,0),
(20507,4,-883.66406,-2809.539,94.41794,100,0,0),
(20507,5,-873.8898,-2838.0815,93.55552,100,0,0),
(20507,6,-884.24384,-2865.729,93.58677,100,0,0),
(20507,7,-907.6981,-2881.7363,91.791664,100,0,0),
(20507,8,-936.63153,-2891.792,91.916664,100,0,0),
(20507,9,-947.84845,-2922.1433,91.791664,100,0,0),
(20507,10,-942.3316,-2947.3516,93.5954,100,0,0),
(20507,11,-922.7088,-2977.8918,91.791664,100,0,0),
(20507,12,-893.4168,-2993.774,91.79166,100,0,0),
(20507,13,-867.82227,-2989.1523,92.29166,100,0,0),
(20507,14,-863.41113,-2943.0186,92.13541,100,0,0),
(20507,15,-869.88464,-2913.0708,93.09293,100,0,0),
(20507,16,-881.9963,-2883.069,93.26774,100,0,0),
(20507,17,-893.0091,-2856.2673,92.58189,100,0,0),
(20507,18,-896.04395,-2825.592,94.45505,100,0,0),
(20507,19,-905.19867,-2791.066,94.5663,100,0,0),
(20507,20,-900.2897,-2766.2092,94.582375,100,0,0),
(20507,21,-904.0314,-2749.466,93.35874,100,0,0),
(20507,22,-894.2945,-2728.4329,91.791664,100,0,0),
(20507,23,-869.83215,-2718.6855,92.041664,100,0,0),
(20507,24,-845.0722,-2714.6477,92.69254,100,0,0),
(20507,25,-825.09216,-2722.7336,91.791664,100,0,0),
(20507,26,-809.0057,-2746.7144,92.33488,100,0,0),
-- 20451
(20451,1,-872.669,-2871.2112,93.5778,100,0,0),
(20451,2,-849.13666,-2855.4692,92.1569,100,0,0),
(20451,3,-836.2164,-2832.609,92.32277,100,0,0),
(20451,4,-832.9438,-2790.781,94.01162,100,0,0),
(20451,5,-821.73114,-2766.5513,93.17008,100,0,0),
(20451,6,-807.3203,-2739.123,91.916664,100,0,0),
(20451,7,-815.8132,-2724.3416,91.791664,100,0,0),
(20451,8,-853.0021,-2715.6594,92.72501,100,0,0),
(20451,9,-874.10223,-2718.935,91.916664,100,0,0),
(20451,10,-884.096,-2741.8164,91.99723,100,0,0),
(20451,11,-892.9216,-2773.4944,94.7548,100,0,0),
(20451,12,-881.7765,-2801.1533,93.4946,100,0,0),
(20451,13,-899.0374,-2823.0586,94.59592,100,0,0),
(20451,14,-916.8136,-2845.8062,93.0657,100,0,0),
(20451,15,-924.9329,-2890.8481,91.916664,100,0,0),
(20451,16,-927.72473,-2918.929,91.791664,100,0,0),
(20451,17,-929.9002,-2946.6147,93.0673,100,0,0),
(20451,18,-915.5474,-2975.9587,91.791664,100,0,0),
(20451,19,-889.50476,-2993.803,91.79166,100,0,0),
(20451,20,-877.6628,-2990.6458,91.98355,100,0,0),
(20451,21,-861.7679,-2977.1987,91.79166,100,0,0),
(20451,22,-866.7966,-2937.0156,92.17106,100,0,0),
(20451,23,-875.9933,-2907.5981,92.94254,100,0,0),
-- 20464
(20464,1,-225.48828,-1707.651,94.07906,100,1,6),
(20464,2,-212.4681,-1680.1969,91.736244,100,0,0),
(20464,3,-195.53494,-1671.2181,91.799255,100,0,0),
(20464,4,-180.3789,-1658.1313,92.58366,100,0,0),
(20464,5,-179.46289,-1648.5533,92.56852,100,0,0),
(20464,6,-184.42166,-1629.4879,92.291664,100,0,0),
(20464,7,-197.81857,-1625.4186,91.791664,100,0,0),
(20464,8,-210.67502,-1629.4833,91.791664,100,5000,21),
(20464,9,-222.57596,-1638.9353,91.791664,100,0,0),
(20464,10,-245.03212,-1640.0862,91.79165,100,0,0),
(20464,11,-256.38196,-1648.1523,91.79165,100,0,0),
(20464,12,-257.83453,-1659.332,91.91396,100,0,0),
(20464,13,-257.81412,-1671.8148,91.79164,100,0,0),
(20464,14,-241.23221,-1685.1495,91.94716,100,0,0),
(20464,15,-222.96236,-1678.9132,91.95719,100,0,0),
(20464,16,-203.13965,-1679.8516,91.799965,100,0,0),
(20464,17,-188.12566,-1673.3944,92.05438,100,0,0),
(20464,18,-183.34538,-1661.5719,92.55387,100,0,0),
(20464,19,-183.28743,-1648.0944,92.291664,100,0,0),
(20464,20,-186.34235,-1634.7965,92.166664,100,0,0),
(20464,21,-196.91396,-1623.2728,91.791664,100,0,0),
(20464,22,-211.96886,-1630.7015,91.791664,100,5000,21),
(20464,23,-211.96886,-1630.7015,91.791664,100,1,5),
(20464,24,-250.0128,-1642.9858,91.79165,100,0,0),
(20464,25,-259.9464,-1659.127,91.79165,100,0,0),
(20464,26,-252.5815,-1678.9198,91.79164,100,0,0),
(20464,27,-237.46397,-1683.3889,91.86073,100,0,0),
(20464,28,-224.20735,-1693.4727,93.20426,100,0,0),
(20464,29,-225.48828,-1707.651,94.07906,100,5000,21),
-- 20466
(20466,1,-152.52344,-1816.7037,93.291664,100,3000,5),
(20466,2,-141.77083,-1802.6779,91.791664,100,0,0),
(20466,3,-141.83464,-1782.608,91.791664,100,0,0),
(20466,4,-145.17491,-1770.923,91.80802,100,0,0),
(20466,5,-160.25076,-1759.7977,91.791664,100,0,0),
(20466,6,-177.449,-1764.395,93.39402,100,0,0),
(20466,7,-191.30817,-1782.8251,91.7902,100,0,0),
(20466,8,-190.02995,-1805.0894,92.62028,100,0,0),
(20466,9,-175.6733,-1806.9657,91.791664,100,0,0),
(20466,10,-159.93153,-1819.9026,93.23795,100,0,0),
(20466,11,-148.09853,-1822.0211,93.166664,100,0,0),
(20466,12,-135.8367,-1827.4377,92.15446,100,0,0),
(20466,13,-124.19412,-1816.1578,93.16874,100,0,0),
(20466,14,-110.84223,-1811.2877,93.80741,100,0,0),
(20466,15,-108.71311,-1799.0731,94.0933,100,0,0),
(20466,16,-117.43262,-1786.9213,93.30399,100,0,0),
(20466,17,-128.29807,-1793.3752,91.9932,100,0,0),
(20466,18,-140.4006,-1801.3062,91.791664,100,0,0),
(20466,19,-147.89996,-1799.6344,91.791664,100,0,0),
(20466,20,-146.46767,-1787.0221,91.791664,100,0,0),
(20466,21,-144.3283,-1773.5552,91.916664,100,0,0),
(20466,22,-144.39052,-1759.899,92.40226,100,0,0),
(20466,23,-156.86409,-1755.6676,91.791664,100,0,0),
(20466,24,-170.86458,-1747.9152,92.77683,100,0,0),
(20466,25,-181.78766,-1751.979,94.095924,100,0,0),
(20466,26,-190.60449,-1756.6847,94.154274,100,0,0),
(20466,27,-197.55305,-1770.0239,92.43253,100,0,0),
(20466,28,-197.58736,-1782.378,91.791664,100,0,0),
(20466,29,-193.12576,-1797.374,91.791664,100,0,0),
(20466,30,-195.32237,-1802.7076,92.83024,100,0,0),
(20466,31,-205.5663,-1787.8646,91.791664,100,5000,21),
(20466,32,-205.5663,-1787.8646,91.791664,100,1,6),
(20466,33,-182.5356,-1771.5498,93.23502,100,0,0),
(20466,34,-166.29405,-1756.3491,92.30949,100,0,0),
(20466,35,-149.54167,-1772.6042,91.791664,100,0,0),
(20466,36,-135.08984,-1777.1859,92.19376,100,0,0),
(20466,37,-133.55501,-1766.438,93.13175,100,5000,21),
(20466,38,-136.70183,-1791.736,91.791664,100,0,0),
(20466,39,-140.54991,-1804.5094,91.791664,100,0,0),
-- 20469
(20469,1,-182.74751,-1836.9453,98.847084,100,1,6),
(20469,2,-173.53906,-1832.0273,95.166664,100,0,0),
(20469,3,-168.3366,-1809.2617,91.8278,100,0,0),
(20469,4,-191.31337,-1804.2374,92.72379,100,0,0),
(20469,5,-202.42459,-1793.0184,91.791664,100,0,0),
(20469,6,-191.46028,-1781.0161,92.00724,100,0,0),
(20469,7,-183.16895,-1773.1938,92.94596,100,0,0),
(20469,8,-181.86339,-1759.9899,93.89402,100,0,0),
(20469,9,-181.61621,-1742.9502,94.250465,100,5000,21),
(20469,10,-181.61621,-1742.9502,94.250465,100,1,5),
(20469,11,-165.72516,-1758.4977,92.24113,100,0,0),
(20469,12,-148.27267,-1761.0853,91.93644,100,0,0),
(20469,13,-147.44347,-1783.9734,91.791664,100,0,0),
(20469,14,-145.39583,-1801.683,91.791664,100,0,0),
(20469,15,-162.78787,-1811.9828,92.57023,100,0,0),
(20469,16,-165.56477,-1823.161,92.88346,100,0,0),
(20469,17,-171.48817,-1836.4674,93.212074,100,0,0),
(20469,18,-182.74751,-1836.9453,98.847084,100,5000,21),
-- 20460
(20460,1,-50.017254,-1685.1993,94.32804,100,1,5),
(20460,2,-84.391495,-1670.2014,91.79165,100,0,0),
(20460,3,-80.24642,-1653.1805,91.79165,100,0,0),
(20460,4,-69.21409,-1646.7058,91.79165,100,0,0),
(20460,5,-84.286896,-1624.7368,92.51124,100,0,0),
(20460,6,-73.01986,-1605.3536,92.61695,100,0,0),
(20460,7,-51.658855,-1614.5619,91.791664,100,5000,21),
(20460,8,-68.7934,-1603.7994,92.167,100,0,0),
(20460,9,-87.67144,-1612.0187,93.542,100,0,0),
(20460,10,-105.11839,-1608.6102,93.52999,100,0,0),
(20460,11,-115.99902,-1609.8066,93.1003,100,5000,21),
(20460,12,-88.6096,-1607.4176,93.667,100,0,0),
(20460,13,-55.388348,-1608.915,91.791664,100,0,0),
(20460,14,-43.884224,-1625.171,91.791664,100,0,0),
(20460,15,-23.699001,-1626.0685,91.88517,100,0,0),
(20460,16,-9.947049,-1650.5006,92.66056,100,0,0),
(20460,17,-10.652669,-1678.4172,93.68678,100,0,0),
(20460,18,-50.017254,-1685.1993,94.32804,100,5000,21),
-- 20471
(20471,1,-75.91244,-2018.839,92.99479,100,0,0),
(20471,2,-73.73286,-2004.1484,93.077065,100,0,0),
(20471,3,-82.73405,-1991.729,93.0251,100,0,0),
(20471,4,-91.69401,-1993.005,92.48775,100,0,0),
(20471,5,-105.60167,-2018.402,91.791664,100,0,0),
(20471,6,-114.23155,-2028.4375,91.791664,100,0,0),
(20471,7,-126.90647,-2026.2305,91.791664,100,0,0),
(20471,8,-138.11523,-2018.5814,91.791664,100,0,0),
(20471,9,-139.80598,-2005.4106,91.791664,100,0,0),
(20471,10,-128.713,-1992.6409,91.916664,100,0,0),
(20471,11,-117.01064,-1987.8043,91.916664,100,0,0),
(20471,12,-95.71256,-1989.0486,92.08028,100,0,0),
(20471,13,-77.50445,-2002.0369,93.22282,100,0,0),
(20471,14,-71.88824,-2022.1693,93.227455,100,0,0),
(20471,15,-83.29742,-2042.7955,91.791664,100,0,0),
(20471,16,-103.77593,-2050.8354,91.791664,100,0,0),
(20471,17,-121.0535,-2046.7949,92.30851,100,0,0),
(20471,18,-138.66699,-2047.2869,93.55801,100,0,0),
(20471,19,-152.3878,-2037.8512,94.05068,100,0,0),
(20471,20,-152.05392,-2023.4088,92.97233,100,0,0),
(20471,21,-139.43024,-2020.3368,91.791664,100,0,0),
(20471,22,-130.49446,-2026.0131,91.791664,100,0,0),
(20471,23,-117.47862,-2042.6984,91.85319,100,0,0),
(20471,24,-88.50846,-2051.342,91.791664,100,0,0),
(20471,25,-82.35796,-2035.2767,91.916664,100,0,0),
(20471,26,-84.708115,-2023.7955,92.166664,100,0,0),
-- 20473 -- this one had wrong mon complete wps - corrected
(20473,1,-137.04395,-2047.1584,93.41738,100,0,0),
(20473,2,-125.17969,-2048.6433,92.75065,100,0,0),
(20473,3,-120.97949,-2043.3121,92.1215,100,0,0),
(20473,4,-124.69076,-2026.8859,91.791664,100,0,0),
(20473,5,-123.85764,-2018.1354,91.791664,100,0,0),
(20473,6,-120.37479,-2012.1754,91.791664,100,5000,21),
(20473,7,-121.98112,-1997.7637,91.791664,100,0,0),
(20473,8,-130.31348,-1997.0173,91.791664,100,0,0),
(20473,9,-142.17351,-2003.1324,91.791664,100,0,0),
(20473,10,-145.95421,-2015.476,91.791664,100,0,0),
(20473,11,-141.12825,-2030.9288,92.56388,100,0,0),
(20473,12,-131.37727,-2037.9735,92.285805,100,0,0),
(20473,13,-119.84831,-2048.0208,92.436195,100,0,0),
(20473,14,-97.47266,-2050.7869,91.791664,100,0,0),
(20473,15,-81.72895,-2036.9119,91.92472,100,0,0),
(20473,16,-81.94824,-2013.3981,92.645424,100,0,0),
(20473,17,-90.35341,-1997.974,92.89522,100,0,0),
(20473,18,-95.86155,-1985.9857,92.19942,100,0,0),
(20473,19,-114.55827,-1986.2012,92.009926,100,0,0),
(20473,20,-123.579,-1997.3616,91.791664,100,0,0),
(20473,21,-119.62088,-2007.1936,91.791664,100,5000,21),
(20473,22,-121.35395,-2014.8646,91.791664,100,0,0),
(20473,23,-123.5918,-2022.0374,91.791664,100,0,0),
(20473,24,-126.36903,-2031.3873,91.791664,100,0,0),
(20473,25,-139.46875,-2040.0723,93.19204,100,0,0),
(20473,26,-149.18826,-2050.3137,94.41103,100,5000,21),
-- 20447
(20447,1,-51.52078,-2248.94,92.7221,100,1,6),
(20447,2,-38.713,-2238.4949,91.79168,100,0,0),
(20447,3,-29.717447,-2228.5005,91.79168,100,0,0),
(20447,4,-27.088053,-2218.1418,91.87469,100,0,0),
(20447,5,-15.655545,-2216.8606,96.90154,100,5000,21),
(20447,6,-34.646206,-2221.9695,91.79168,100,5000,21),
(20447,7,-28.35688,-2211.9675,91.98455,100,0,0),
(20447,8,-29.316406,-2195.5222,91.79168,100,0,0),
(20447,9,-46.375217,-2194.3362,91.79168,100,0,0),
(20447,10,-54.20242,-2193.2249,91.79168,100,0,0),
(20447,11,-50.218533,-2179.36,91.79168,100,5000,21),
(20447,12,-50.218533,-2179.36,91.79168,100,1,5),
(20447,13,-74.199005,-2206.2922,91.916664,100,0,0),
(20447,14,-76.21121,-2229.9136,92.014565,100,0,0),
(20447,15,-73.21962,-2248.1602,92.25846,100,0,0),
(20447,16,-51.52078,-2248.94,92.7221,100,0,0),
-- 20486
(20486,1,-16.096462,-2255.8572,91.79168,100,1,5),
(20486,2,-36.26552,-2273.5417,92.955986,100,0,0),
(20486,3,-53.66482,-2269.716,93.36321,100,0,0),
(20486,4,-64.05469,-2253.7969,93.41668,100,0,0),
(20486,5,-73.41005,-2232.5842,92.166664,100,0,0),
(20486,6,-82.35764,-2237.0635,91.791664,100,5000,21),
(20486,7,-82.35764,-2237.0635,91.791664,100,1,6),
(20486,8,-77.913414,-2244.8806,91.916664,100,0,0),
(20486,9,-76.09288,-2220.2712,92.041664,100,0,0),
(20486,10,-73.45421,-2186.6687,91.79163,100,0,0),
(20486,11,-51.096355,-2178.402,91.79168,100,0,0),
(20486,12,-26.923178,-2180.4988,91.79168,100,0,0),
(20486,13,-16.981989,-2197.6428,93.41985,100,0,0),
(20486,14,-3.682509,-2206.9795,101.5993,100,0,0),
(20486,15,6.794922,-2212.8145,105.467545,100,0,0),
(20486,16,16.754992,-2236.4587,93.60418,100,0,0),
(20486,17,1.260308,-2255.0696,91.79168,100,0,0),
(20486,18,-14.678168,-2268.9133,91.79168,100,0,0),
(20486,19,-34.29861,-2277.8408,93.070244,100,0,0),
(20486,20,-49.843643,-2272.0706,93.16668,100,0,0),
(20486,21,-53.594402,-2256.794,93.53533,100,0,0),
(20486,22,-56.33149,-2237.1523,92.16668,100,0,0),
(20486,23,-59.618057,-2228.5195,92.27337,100,5000,21),
(20486,24,-54.211914,-2242.4001,92.192314,100,0,0),
(20486,25,-48.6416,-2252.7974,92.96453,100,0,0),
(20486,26,-48.42144,-2272.0088,93.213066,100,0,0),
(20486,27,-25.975044,-2272.3447,92.34612,100,0,0),
(20486,28,-16.096462,-2255.8572,91.79168,100,5000,21),
-- 20455
(20455,1,238.41206,-1933.6914,92.46366,100,1,5),
(20455,2,225.73508,-1921.5747,92.27987,100,0,0),
(20455,3,212.68538,-1934.2428,93.005196,100,0,0),
(20455,4,195.69049,-1939.9791,93.196266,100,0,0),
(20455,5,192.88629,-1951.4498,94.001076,100,0,0),
(20455,6,194.69504,-1968.7756,92.64687,100,0,0),
(20455,7,196.9471,-1980.9774,92.14687,100,0,0),
(20455,8,179.82547,-1997.1339,92.28652,100,0,0),
(20455,9,162.42741,-2001.7667,92.482574,100,0,0),
(20455,10,150.05556,-2013.9553,92.607574,100,0,0),
(20455,11,138.45128,-2022.7908,92.31021,100,0,0),
(20455,12,118.94477,-2025.1559,91.791664,100,0,0),
(20455,13,102.45269,-2018.6805,92.11271,100,0,0),
(20455,14,94.0587,-2009.8644,92.89568,100,0,0),
(20455,15,74.11534,-2013.3494,92.81243,100,0,0),
(20455,16,64.50206,-2020.6298,92.113945,100,0,0),
(20455,17,52.217556,-2036.7068,92.2459,100,0,0),
(20455,18,44.55089,-2054.2244,91.88311,100,0,0),
(20455,19,42.668293,-2078.2925,91.79168,100,0,0),
(20455,20,50.766495,-2087.5571,91.79168,100,15000,5),
(20455,21,48.202583,-2061.591,91.819756,100,0,0),
(20455,22,52.579754,-2043.3854,91.79168,100,0,0),
(20455,23,62.718315,-2023.2572,92.04168,100,0,0),
(20455,24,72.962135,-2014.2487,92.56646,100,0,0),
(20455,25,92.25293,-2010.3186,92.946465,100,0,0),
(20455,26,108.125,-2017.3301,92.632484,100,0,0),
(20455,27,125.85439,-2024.1202,91.95658,100,0,0),
(20455,28,145.49078,-2014.3529,93.1763,100,0,0),
(20455,29,159.04231,-1992.6593,93.28682,100,0,0),
(20455,30,169.57634,-1975.5614,94.14687,100,0,0),
(20455,31,151.71289,-1957.7301,94.366066,100,0,0),
(20455,32,147.88954,-1927.548,93.75491,100,0,0),
(20455,33,152.72102,-1887.8987,94.48161,100,0,0),
(20455,34,160.1161,-1863.9199,93.94213,100,0,0),
(20455,35,199.49886,-1861.2628,94.681656,100,0,0),
(20455,36,226.9459,-1884.1549,92.998695,100,0,0),
(20455,37,228.75722,-1901.8893,92.74593,100,0,0),
(20455,38,238.41206,-1933.6914,92.46366,100,5000,21),
-- 20474 -- part missing (added manualy)
(20474,1,84.65517,-2060.6614,98.26397,100,5000,21),
(20474,2,69.120445,-2045.6094,91.79168,100,0,0),
(20474,3,25.841688,-2060.1892,94.15198,100,0,0),
(20474,4,16.9949,-2050.7292,95.34033,100,5000,21),
(20474,5,26.35263,-2062.8264,93.9273,100,0,0),
(20474,6,43.240128,-2066.2095,92.29034,100,0,0),
(20474,7,67.48427,-2065.0684,91.79168,100,0,0),
(20474,8,85.02387,-2078.645,97.77738,100,5000,21),
(20474,9,85.02387,-2078.645,97.77738,100,1,5),
(20474,10,84.5816,-2062.01,98.5283,100,0,0),
(20474,11,69.4844,-2046.19,91.7426,100,0,0),
(20474,12,52.806034,-2034.9166,92.41353,100,0,0),
(20474,13,26.725153,-2037.395,93.92102,100,0,0),
(20474,14,3.196723,-2034.5658,94.29321,100,0,0),
(20474,15,-14.4054,-2032.03,92.7753,100,0,0), -- added manualy (data missing)
(20474,16,-29.9928,-2046.05,94.3279,100,0,0), -- added manualy (data missing)
(20474,17,-34.3061,-2065.38,94.3234,100,0,0), -- added manualy (data missing)
(20474,18,-29.2633,-2091.5,92.385,100,0,0), -- added manualy (data missing)
(20474,19,-18.0379,-2110.88,91.6675,100,0,0), -- added manualy (data missing)
(20474,20,5.242403,-2122.507,91.79168,100,0,0),
(20474,21,15.800674,-2116.947,91.94549,100,5000,21),
(20474,22,15.800674,-2116.947,91.94549,100,1,6),
(20474,23,13.400716,-2086.2405,93.689575,100,0,0),
(20474,24,12.760417,-2067.677,96.257324,100,0,0),
(20474,25,34.1494,-2056.2,93.0168,100,0,0),
(20474,26,56.029,-2051.98,91.6672,100,0,0),
(20474,27,75.1292,-2054.28,93.613,100,0,0);

-- Spawn Groups
-- Group 1
UPDATE creature SET position_x = 30.213829, position_y = -1793.134033, position_z = 91.680840, spawndist = 2, MovementType = 1 WHERE guid = 20456;

UPDATE creature SET position_x = -147.60547, position_y = -1627.2816, position_z = 93.416664, spawndist = 0, MovementType = 0 WHERE guid IN (20462,20532);
-- moved to spawn_groups
DELETE FROM `spawn_group` WHERE id = 19959;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(19959, 'Barrens - Kolkar Wrangler & Kolkar Stormer 3273 - Patrol - 1', 0, 0, 0, 0x01 | 0x02);

DELETE FROM `spawn_group_spawn` WHERE id = 19959;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(19959, 20462, 0),
(19959, 20532, 1);

DELETE FROM `spawn_group_formation` WHERE id = 19959;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(19959, 2, 3, 0, 19959, 2, 'Barrens - Kolkar Wrangler & Kolkar Stormer 3273 - Patrol - 1');

DELETE FROM `waypoint_path_name` WHERE PathId = 19959;
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(19959,'Barrens - Kolkar Wrangler & Kolkar Stormer 3273 - Patrol - 1');

DELETE FROM `waypoint_path` WHERE PathId = 19959;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(19959,1,-147.60547,-1627.2816,93.416664,100,1,5),
(19959,2,-179.42166,-1631.466,92.82365,100,0,0),
(19959,3,-198.48189,-1623.933,91.791664,100,0,0),
(19959,4,-227.56229,-1631.6403,91.791664,100,0,0),
(19959,5,-258.46204,-1651.0253,91.79165,100,0,0),
(19959,6,-248.67145,-1678.8351,91.79164,100,0,0),
(19959,7,-209.12154,-1690.2933,92.19767,100,0,0),
(19959,8,-183.8049,-1716.6626,92.615685,100,0,0),
(19959,9,-182.41689,-1746.5089,94.327614,100,0,0),
(19959,10,-179.8124,-1760.0504,93.76536,100,0,0),
(19959,11,-166.8736,-1761.153,92.35618,100,0,0),
(19959,12,-146.67937,-1766.1874,91.916664,100,0,0),
(19959,13,-141.4654,-1799.8053,91.791664,100,0,0),
(19959,14,-123.12022,-1812.6202,92.6536,100,0,0),
(19959,15,-106.97222,-1821.0092,92.968544,100,0,0),
(19959,16,-85.57682,-1822.0862,92.433525,100,0,0),
(19959,17,-67.65885,-1812.277,92.433525,100,0,0),
(19959,18,-49.163303,-1821.6938,92.6395,100,0,0),
(19959,19,-30.003038,-1827.4235,93.83467,100,0,0),
(19959,20,-18.862196,-1820.2037,93.666214,100,0,0),
(19959,21,-1.1371528,-1788.8872,92.038506,100,0,0),
(19959,22,-4.342014,-1760.4913,94.11804,100,0,0),
(19959,23,-18.140625,-1728.0955,94.16491,100,0,0),
(19959,24,-24.625,-1697.6476,95.09206,100,0,0),
(19959,25,-27.255209,-1671.6337,92.72023,100,0,0),
(19959,26,-38.261284,-1659.9708,91.791664,100,0,0),
(19959,27,-53.621746,-1652.8123,91.791664,100,0,0),
(19959,28,-71.34408,-1644.1908,91.79165,100,0,0),
(19959,29,-75.44444,-1630.7611,91.792,100,0,0),
(19959,30,-88.460724,-1625.1821,92.635506,100,0,0),
(19959,31,-122.16526,-1626.3431,93.736046,100,0,0);

-- Group 2
UPDATE creature SET position_x = 38.56912, position_y = -2163.217, position_z = 91.79168, spawndist = 0, MovementType = 0 WHERE guid IN (20476,20537);

-- moved to spawn_groups
DELETE FROM `spawn_group` WHERE id = 19958;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(19958, 'Barrens - Kolkar Wrangler & Kolkar Stormer 3273 - Patrol - 2', 0, 0, 0, 0x01 | 0x02);

DELETE FROM `spawn_group_spawn` WHERE id = 19958;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(19958, 20476, 0),
(19958, 20537, 1);

DELETE FROM `spawn_group_formation` WHERE id = 19958;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(19958, 2, 3, 0, 19958, 2, 'Barrens - Kolkar Wrangler & Kolkar Stormer 3273 - Patrol - 2');

DELETE FROM `waypoint_path_name` WHERE PathId = 19958;
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(19958,'Barrens - Kolkar Wrangler & Kolkar Stormer 3273 - Patrol - 2');

DELETE FROM `waypoint_path` WHERE PathId = 19958;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(19958,1,38.56912,-2163.217,91.79168,100,4000,5),
(19958,2,28.13954,-2149.768,91.79168,100,0,0),
(19958,3,25.804037,-2127.315,91.79168,100,0,0),
(19958,4,32.255318,-2099.4363,91.97595,100,0,0),
(19958,5,50.432293,-2083.843,91.79168,100,0,0),
(19958,6,39.955296,-2068.0154,92.54168,100,0,0),
(19958,7,15.602214,-2051.7747,95.591064,100,0,0),
(19958,8,-19.139757,-2057.197,96.374,100,0,0),
(19958,9,-39.21929,-2050.8894,94.585464,100,0,0),
(19958,10,-51.311306,-2043.3763,94.63356,100,0,0),
(19958,11,-70.7831,-2023.3516,93.23527,100,0,0),
(19958,12,-87.13954,-2004.591,93.284096,100,0,0),
(19958,13,-99.41851,-1984.4913,92.37862,100,0,0),
(19958,14,-128.33919,-1988.9707,92.166664,100,0,0),
(19958,15,-148.83984,-2013.2826,91.791664,100,0,0),
(19958,16,-149.49892,-2042.5914,94.32314,100,0,0),
(19958,17,-137.71017,-2081.6653,94.155464,100,0,0),
(19958,18,-116.23307,-2093.3152,93.42692,100,0,0),
(19958,19,-87.58702,-2106.4893,91.73963,100,0,0),
(19958,20,-80.10221,-2140.1106,91.79163,100,0,0),
(19958,21,-85.96278,-2186.1094,91.79163,100,0,0),
(19958,22,-80.34495,-2219.3503,91.791664,100,0,0),
(19958,23,-77.06445,-2254.213,93.666664,100,0,0),
(19958,24,-51.72884,-2279.2253,92.7221,100,0,0),
(19958,25,-10.22168,-2285.9465,92.7929,100,0,0),
(19958,26,14.087674,-2262.2751,91.79168,100,0,0),
(19958,27,16.7704,-2222.8457,100.71864,100,0,0),
(19958,28,-5.802517,-2199.6472,102.40008,100,0,0),
(19958,29,-14.552518,-2188.534,93.11053,100,0,0),
(19958,30,-4.52474,-2168.1667,91.79168,100,0,0),
(19958,31,20.248373,-2162.7566,91.79168,100,0,0);

-- Group 3
UPDATE creature SET position_x = 168.11925, position_y = -1856.9362, position_z = 93.97731, spawndist = 0, MovementType = 0 WHERE guid IN (20480,20540);

-- moved to spawn_groups
DELETE FROM `spawn_group` WHERE id = 19957;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(19957, 'Barrens - Kolkar Wrangler & Kolkar Stormer 3273 - Patrol - 3', 0, 0, 0, 0x01 | 0x02);

DELETE FROM `spawn_group_spawn` WHERE id = 19957;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(19957, 20480, 0),
(19957, 20540, 1);

DELETE FROM `spawn_group_formation` WHERE id = 19957;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(19957, 2, 3, 0, 19957, 2, 'Barrens - Kolkar Wrangler & Kolkar Stormer 3273 - Patrol - 3');

DELETE FROM `waypoint_path_name` WHERE PathId = 19957;
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(19957,'Barrens - Kolkar Wrangler & Kolkar Stormer 3273 - Patrol - 3');

DELETE FROM `waypoint_path` WHERE PathId = 19957;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(19957,1,168.11925,-1856.9362,93.97731,100,0,0),
(19957,2,169.7953,-1839.0795,93.283585,100,0,0),
(19957,3,182.81462,-1824.6556,93.97185,100,0,0),
(19957,4,204.93782,-1835.0885,95.37331,100,0,0),
(19957,5,223.58713,-1867.7184,94.642006,100,0,0),
(19957,6,235.32037,-1889.1769,92.2542,100,0,0),
(19957,7,236.01785,-1922.1819,92.166664,100,0,0),
(19957,8,228.19298,-1946.4132,92.3476,100,0,0),
(19957,9,203.46565,-1969.9475,92.10709,100,0,0),
(19957,10,172.64317,-1993.8429,92.54348,100,0,0),
(19957,11,155.87663,-2015.3763,92.357574,100,0,0),
(19957,12,136.68262,-2016.1869,93.34732,100,0,0),
(19957,13,126.71821,-2001.2867,94.56046,100,0,0),
(19957,14,108.58789,-2009.6263,92.977455,100,0,0),
(19957,15,95.35807,-2013.069,92.8847,100,0,0),
(19957,16,75.73177,-2017.0104,92.41692,100,0,0),
(19957,17,66.270294,-1995.8638,91.60264,100,0,0),
(19957,18,53.643013,-1979.2118,93.12144,100,0,0),
(19957,19,48.727432,-1965.6311,93.86491,100,0,0),
(19957,20,17.049479,-1963.2899,92.017555,100,0,0),
(19957,21,2.926649,-1959.5137,92.37693,100,0,0),
(19957,22,-17.883356,-1947.0862,92.10369,100,0,0),
(19957,23,-30.574219,-1934.3242,94.0158,100,0,0),
(19957,24,-29.628689,-1905.6782,93.4927,100,0,0),
(19957,25,-20.50575,-1890.3602,94.59639,100,0,0),
(19957,26,-8.190864,-1879.9425,94.712845,100,0,0),
(19957,27,14.122179,-1883.433,92.59031,100,0,0),
(19957,28,28.836481,-1861.7424,94.673225,100,0,0),
(19957,29,47.0115,-1847.3872,94.22967,100,0,0),
(19957,30,83.77843,-1852.8895,93.359726,100,0,0),
(19957,31,110.64085,-1861.377,94.11953,100,0,0),
(19957,32,130.2781,-1879.6342,94.872475,100,0,0),
(19957,33,127.55736,-1898.0219,94.68367,100,0,0),
(19957,34,145.83746,-1905.2837,94.18924,100,0,0),
(19957,35,151.32857,-1902.9023,94.0845,100,0,0),
(19957,36,146.44391,-1882.4006,95.18535,100,0,0);

-- Kolkar Stormer 3273
-- missing added
DELETE FROM creature_addon WHERE guid IN (13232);
DELETE FROM creature_movement WHERE id IN (13232);
DELETE FROM game_event_creature WHERE guid IN (13232);
DELETE FROM game_event_creature_data WHERE guid IN (13232);
DELETE FROM creature_battleground WHERE guid IN (13232);
DELETE FROM creature_linking WHERE guid IN (13232)
 OR master_guid IN (13232);
DELETE FROM creature WHERE guid IN (13232);

INSERT INTO creature (guid, id, map, spawnmask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) values
(13232,3273,1,1,213.05031,-1803.9269,95.473465,0,300,300,0,4); -- linear wps

UPDATE creature SET spawndist = 10, MovementType = 1 WHERE guid = 20521; -- shouldnt have waypoints
UPDATE creature SET spawndist = 2, MovementType = 1 WHERE guid IN (20530,20515,20535,20511,20528,20543,20514,20517,20518);
UPDATE creature SET position_x = -911.2448, position_y = -2821.5066, position_z = 94.137924, spawndist = 0, MovementType = 4 WHERE guid IN (20545); -- linear wps
UPDATE creature SET position_x = -232.2538, position_y = -1636.1808, position_z = 91.791664, spawndist = 0, MovementType = 2 WHERE guid IN (20533);
UPDATE creature SET position_x = 24.716650, position_y = -1780.589722, position_z = 92.565552, spawndist = 5, MovementType = 1 WHERE guid = 20510;
UPDATE creature SET id = 3273, position_x = -99.1359, position_y = -1630.67, position_z = 92.7644, spawndist = 0, MovementType = 2 WHERE guid IN (20463); -- duplicate 3272 used for missing 3273
UPDATE creature SET id = 3273, position_x = -937.592, position_y = -1869.81, position_z = 102.058, spawndist = 2, MovementType = 1 WHERE guid IN (20484); -- duplicate 3272 used for missing 3273
UPDATE creature SET position_x = -952.712524, position_y = -2015.238770, position_z = 85.801125, spawndist = 7, MovementType = 1 WHERE guid = 20546; -- shouldnt have waypoints
UPDATE creature SET position_x = -56.048286, position_y = -1856.7819, position_z = 116.85595, spawndist = 0, MovementType = 2 WHERE guid IN (20508);
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid = 20524;
DELETE FROM creature_movement WHERE Id IN (20521,20545,20533,20463,20546,20524,13232,20508);
INSERT INTO creature_movement (id, point, positionx, positiony, positionz, orientation, waittime, scriptid) VALUES
-- 20545
(20545,1,-911.2448,-2821.5066,94.137924,100,0,0),
(20545,2,-902.8377,-2829.9558,94.01756,100,0,0),
(20545,3,-899.921,-2855.25,92.05967,100,0,0),
(20545,4,-904.1136,-2884.2395,91.791664,100,0,0),
(20545,5,-902.15497,-2906.191,91.791664,100,0,0),
(20545,6,-893.23804,-2898.4048,91.798744,100,0,0),
(20545,7,-887.04047,-2878.7278,92.91251,100,0,0),
(20545,8,-889.3768,-2871.0552,92.756996,100,0,0),
(20545,9,-883.5658,-2839.2417,93.93052,100,0,0),
(20545,10,-886.3537,-2820.0286,94.75192,100,0,0),
(20545,11,-884.7437,-2806.8135,94.29831,100,0,0),
(20545,12,-876.1755,-2785.9636,92.69572,100,0,0),
(20545,13,-876.6094,-2768.694,92.677895,100,0,0),
(20545,14,-877.3954,-2753.2412,92.01652,100,0,0),
(20545,15,-886.2052,-2763.74,93.69889,100,0,0),
(20545,16,-894.48157,-2780.2168,94.791664,100,0,0),
(20545,17,-901.1497,-2799.6711,94.62782,100,0,0),
(20545,18,-907.2528,-2811.3486,94.54979,100,0,0),
(20545,19,-915.00806,-2818.1548,93.936264,100,0,0),
(20545,20,-940.347,-2814.0283,92.974594,100,0,0),
(20545,21,-975.9065,-2806.3403,94.639565,100,0,0),
(20545,22,-993.3008,-2808.0354,96.64835,100,0,0),
(20545,23,-1011.6282,-2814.6707,94.80265,100,0,0),
(20545,24,-1038.4612,-2800.0159,93.36393,100,0,0),
(20545,25,-1056.0792,-2788.47,91.791664,100,0,0),
(20545,26,-1076.3462,-2780.3472,91.791664,100,0,0),
(20545,27,-1087.8303,-2777.6033,91.791664,100,2000,0),
-- 20533
(20533,1,-232.2538,-1636.1808,91.791664,100,1,6),
(20533,2,-211.2283,-1649.0789,91.791664,100,0,0),
(20533,3,-204.24382,-1657.8153,91.791664,100,0,0),
(20533,4,-207.52159,-1671.2582,91.799965,100,0,0),
(20533,5,-202.1084,-1685.1523,91.799965,100,5000,21),
(20533,6,-188.18478,-1697.5212,91.799255,100,0,0),
(20533,7,-181.22244,-1714.9543,92.601524,100,0,0),
(20533,8,-169.11642,-1725.4084,93.30367,100,0,0),
(20533,9,-159.23438,-1736.9508,92.416664,100,0,0),
(20533,10,-158.59343,-1755.3705,91.791664,100,5000,21),
(20533,11,-158.59343,-1755.3705,91.791664,100,1,5),
(20533,12,-158.88553,-1713.0432,93.437035,100,0,0),
(20533,13,-172.72395,-1699.5935,92.41058,100,0,0),
(20533,14,-186.09982,-1673.9994,92.279724,100,0,0),
(20533,15,-181.2093,-1641.2982,92.48405,100,0,0),
(20533,16,-189.15126,-1624.4325,91.916664,100,0,0),
(20533,17,-214.21614,-1621.722,91.93522,100,0,0),
(20533,18,-232.2538,-1636.1808,91.791664,100,5000,21),
-- 20463
(20463,1,-99.1359,-1630.67,92.7644,100,0,0),
(20463,2,-97.314,-1605.64,93.6174,100,0,0),
(20463,3,-79.4081,-1583.6829,93.50236,100,0,0),
(20463,4,-46.130207,-1574.4119,91.791664,100,5000,21),
(20463,5,-24.054037,-1576.7627,91.791664,100,0,0),
(20463,6,-3.816732,-1576.83,91.791664,100,0,0),
(20463,7,1.210286,-1617.108,93.916664,100,0,0),
(20463,8,-27.116102,-1645.8618,91.791664,100,5000,21),
(20463,9,-30.198133,-1672.909,92.74831,100,0,0),
(20463,10,-44.24284,-1673.8527,92.39518,100,0,0),
(20463,11,-65.7997,-1671.131,91.76481,100,0,0),
(20463,12,-74.14887,-1665.517,91.79165,100,0,0),
(20463,13,-78.77734,-1656.7062,91.79165,100,0,0),
(20463,14,-91.39301,-1661.1089,91.79165,100,0,0),
(20463,15,-83.91333,-1653.5122,91.79165,100,5000,21),
-- 20524
(20524,1,-1128.92,-3146.62,93.7902,100,5000,21),
(20524,2,-1153.43,-3128.74,93.5001,100,0,0),
(20524,3,-1176.17,-3116.07,93.5937,100,0,0),
(20524,4,-1203.03,-3130.41,95.7223,100,0,0),
(20524,5,-1210.93,-3152.98,93.6954,100,0,0),
(20524,6,-1219.553,-3175.7942,93.74262,100,0,0),
(20524,7,-1240.5955,-3208.567,93.20109,100,5000,21),
(20524,8,-1193.1962,-3215.4211,92.53751,100,0,0),
(20524,9,-1160.0127,-3222.7844,91.791664,100,0,0),
(20524,10,-1150.236,-3209.6895,92.31632,100,0,0),
(20524,11,-1142.6238,-3185.3274,93.291176,100,0,0),
-- 13232
(13232,1,213.05031,-1803.9269,95.473465,100,5000,21),
(13232,2,209.8449,-1821.9392,95.67578,100,0,0),
(13232,3,194.6869,-1827.444,94.5966,100,0,0),
(13232,4,195.61392,-1832.1826,94.80048,100,0,0),
(13232,5,205.35689,-1865.5262,94.32277,100,0,0),
(13232,6,223.34396,-1880.2537,93.774086,100,0,0),
(13232,7,229.22395,-1900.0994,92.586876,100,0,0),
(13232,8,233.20905,-1922.316,91.99496,100,0,0),
(13232,9,243.37593,-1930.6797,92.93412,100,5000,21),
-- 20508 -- this one may be mix from 2 diff spawns - need to recheck in future
(20508,1,-56.048286,-1856.7819,116.85595,100,0,0),
(20508,2,-24.632812,-1849.6348,108.35132,100,0,0),
(20508,3,-17.294596,-1828.0536,93.97017,100,0,0),
(20508,4,-58.336372,-1807.6799,93.41099,100,0,0),
(20508,5,-106.48167,-1799.988,94.48612,100,0,0),
(20508,6,-141.59158,-1775.622,91.916664,100,0,0),
(20508,7,-160.385,-1751.9,91.9271,100,0,0),
(20508,8,-176.47484,-1721.6403,93.31008,100,0,0),
(20508,9,-191.37088,-1674.1517,91.83856,100,0,0),
(20508,10,-166.74165,-1666.1473,93.666664,100,0,0),
(20508,11,-133.64497,-1657.0256,91.79165,100,0,0),
(20508,12,-99.78678,-1648.5426,91.79165,100,0,0),
(20508,13,-66.815865,-1646.1691,91.79165,100,0,0),
(20508,14,-48.4634,-1667.82,91.6804,100,0,0),
(20508,15,-33.1275,-1690.48,94.919,100,0,0),
(20508,16,-20.8251,-1718.53,94.7426,100,0,0),
(20508,17,-13.0921,-1741.39,93.277,100,0,0),
(20508,18,-10.676192,-1762.5659,93.10803,100,5000,21),
(20508,19,9.71662,-1764.12,96.1449,100,0,0),
(20508,20,32.0946,-1768.35,96.9718,100,0,0),
(20508,21,48.371,-1780.15,96.7939,100,0,0),
(20508,22,54.7197,-1800.58,92.1456,100,0,0),
(20508,23,49.1571,-1812.3,92.8097,100,5000,21),
(20508,24,36.6628,-1834.7,94.812,100,0,0),
(20508,25,23.0087,-1850.6,95.4322,100,0,0),
(20508,26,4.35631,-1855.53,95.6851,100,0,0),
(20508,27,-9.85618,-1852.14,98.0329,100,0,0),
(20508,28,-24.758,-1849.53,108.471,100,0,0),
(20508,29,-38.0715,-1849.63,110.641,100,0,0),
(20508,30,-51.4595,-1853.53,113.189,100,0,0),
(20508,31,-59.288,-1860.24,121.544,100,0,0),
(20508,32,-63.0602,-1867.8,126.749,100,5000,21);

-- Kolkar Marauder 3275
-- shouldnt have waypoints
DELETE FROM creature_movement WHERE Id IN (20578);
UPDATE creature SET spawndist = 2, MovementType = 1 WHERE guid IN (20576,20579);
UPDATE creature SET spawndist = 10, MovementType = 1 WHERE guid = 20578;
-- Spawn Groups
-- Group 1
UPDATE creature SET position_x = -919.05, position_y = -2178.82, position_z = 94.6851, spawndist = 0, MovementType = 0 WHERE guid IN (20577,20860);

-- moved to spawn_groups
DELETE FROM `spawn_group` WHERE id = 19956;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(19956, 'Barrens - Kolkar Marauder 3275 &  & Kolkar Packhound 4316 - Patrol - 1', 0, 0, 0, 0x01 | 0x02);

DELETE FROM `spawn_group_spawn` WHERE id = 19956;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(19956, 20577, 0),
(19956, 20860, 1);

DELETE FROM `spawn_group_formation` WHERE id = 19956;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(19956, 2, 3, 0, 19956, 4, 'Barrens - Kolkar Marauder 3275 &  & Kolkar Packhound 4316 - Patrol - 1'); -- linear

DELETE FROM `waypoint_path_name` WHERE PathId = 19956;
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(19956,'Barrens - Kolkar Marauder 3275 &  & Kolkar Packhound 4316 - Patrol - 1');

DELETE FROM `waypoint_path` WHERE PathId = 19956;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(19956,1,-919.05,-2178.82,94.6851,100,5000,21),
(19956,2,-926.84955,-2193.6467,93.13037,100,0,0),
(19956,3,-946.53516,-2218.291,92.83034,100,0,0),
(19956,4,-1003.91284,-2269.3289,94.963104,100,0,0),
(19956,5,-1006.86456,-2302.39,93.69869,100,0,0),
(19956,6,-1016.59485,-2312.5713,91.79806,100,0,0),
(19956,7,-1027.674,-2306.7715,92.42306,100,0,0),
(19956,8,-1035.9861,-2315.387,91.79314,100,0,0),
(19956,9,-1048.8972,-2316.06,91.79314,100,0,0),
(19956,10,-1074.6118,-2317.2927,93.463234,100,0,0),
(19956,11,-1087.5977,-2317.3457,93.963234,100,0,0),
(19956,12,-1113.7441,-2317.52,94.491196,100,0,0),
(19956,13,-1126.6788,-2322.3994,94.62352,100,0,0),
(19956,14,-1152.4128,-2326.304,94.86466,100,0,0),
(19956,15,-1179.6569,-2315.4507,93.9899,100,0,0),
(19956,16,-1210.0114,-2318.0376,93.65546,100,0,0),
(19956,17,-1211.3582,-2304.847,93.01288,100,0,0),
(19956,18,-1213.8859,-2279.227,93.00934,100,0,0),
(19956,19,-1218.451,-2246.6987,91.90786,100,0,0),
(19956,20,-1222.24,-2222.57,91.7842,100,0,0),
(19956,21,-1221.41,-2201.38,91.7798,100,5000,21),
(19956,22,-1236.77,-2191.4,91.9423,100,0,0),
(19956,23,-1250.13,-2173.57,91.6674,100,0,0),
(19956,24,-1250.15,-2146.76,92.7879,100,0,0),
(19956,25,-1244.24,-2117.37,92.4823,100,0,0),
(19956,26,-1238.7,-2084.19,91.4395,100,0,0),
(19956,27,-1229.93,-2060.7,92.164,100,0,0),
(19956,28,-1204.1,-2057.5,94.0624,100,0,0),
(19956,29,-1175.47,-2037.53,92.2136,100,0,0),
(19956,30,-1178.59,-2016.39,91.7477,100,5000,21),
(19956,31,-1165.02,-1997.85,93.3111,100,0,0),
(19956,32,-1147.9,-1975.71,92.3516,100,0,0),
(19956,33,-1128.57,-1955.46,90.5446,100,0,0),
(19956,34,-1099.12,-1933.05,91.6911,100,0,0),
(19956,35,-1068.17,-1929.04,91.9064,100,5000,21);

-- Brokespear 5838
-- missing added
DELETE FROM creature_addon WHERE guid IN (13235);
DELETE FROM creature_movement WHERE id IN (13235);
DELETE FROM game_event_creature WHERE guid IN (13235);
DELETE FROM game_event_creature_data WHERE guid IN (13235);
DELETE FROM creature_battleground WHERE guid IN (13235);
DELETE FROM creature_linking WHERE guid IN (13235)
 OR master_guid IN (13235);
DELETE FROM creature WHERE guid IN (13235);
INSERT INTO creature (guid, id, map, spawnmask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) values
(13235,5838,1,1,-1397.823,-2750.0356,91.77308,2.042035102844238281,7200,10800,0,0);
-- moved to spawn_groups
DELETE FROM `spawn_group` WHERE id = 19955;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(19955, 'Barrens - Brokespear 5838 - Rare', 0, 1, 0, 0);
DELETE FROM `spawn_group_spawn` WHERE id = 19955;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(19955, 20685, -1),
(19955, 13235, -1);

-- Stonearm 5837
-- missing added
DELETE FROM creature_addon WHERE guid IN (13236);
DELETE FROM creature_movement WHERE id IN (13236);
DELETE FROM game_event_creature WHERE guid IN (13236);
DELETE FROM game_event_creature_data WHERE guid IN (13236);
DELETE FROM creature_battleground WHERE guid IN (13236);
DELETE FROM creature_linking WHERE guid IN (13236)
 OR master_guid IN (13236);
DELETE FROM creature WHERE guid IN (13236);
INSERT INTO creature (guid, id, map, spawnmask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) values
(13236,5837,1,1,-232.9636,-1656.993,91.776634,5.951572895050048828,5400,9000,0,0);
-- moved to spawn_groups
DELETE FROM `spawn_group` WHERE id = 19954;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(19954, 'Barrens - Brokespear 5838 - Rare', 0, 1, 0, 0);
DELETE FROM `spawn_group_spawn` WHERE id = 19954;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(19954, 20635, -1),
(19954, 13236, -1);

