-- Stonewatch Falls & Galardell Valley & Tower of Ilgalar - Redridge Mountains
-- Murloc Camp
-- Murloc Nightcrawler 544 & Murloc Tidecaller 545 & Murloc Scout 578
-- missing spawns
DELETE FROM creature_addon WHERE guid IN (377,378);
DELETE FROM creature_movement WHERE id IN (377,378);
DELETE FROM game_event_creature WHERE guid IN (377,378);
DELETE FROM game_event_creature_data WHERE guid IN (377,378);
DELETE FROM creature_battleground WHERE guid IN (377,378);
DELETE FROM creature_linking WHERE guid IN (377,378);
DELETE FROM creature where guid IN (377,378);
INSERT INTO creature (guid, id, map, spawnMask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES
(377,544,0,1,-9435.826,-3330.7412,4.4338884,1.204277,300,300,0,0),
(378,544,0,1,-9454.465,-3343.302,6.5334225,2.71019,300,300,0,0);

-- shared spawns
-- Murloc Nightcrawler 544 & Murloc Tidecaller 545 & Murloc Scout 578
DELETE FROM creature_spawn_entry WHERE guid IN (6198,6204,6206,378,6200);
INSERT INTO creature_spawn_entry (guid,entry) VALUES
(6198,544),(6198,545),(6198,578),
(6204,544),(6204,545),(6204,578),
(6206,544),(6206,545),(6206,578),
(378,544),(378,545),(378,578),
(6200,544),(6200,545),(6200,578);
UPDATE creature SET id = 0 WHERE guid IN (6198,6204,6206,378,6200);

-- Spawn Groups
-- Group 1
UPDATE creature SET position_x = -9454.465, position_y = -3343.302, position_z = 6.5334225, movementtype = 0, spawndist = 0 WHERE guid IN (6200);
DELETE FROM `spawn_group` WHERE id = 19916;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(19916, 'Redridge Mountains - Murloc Tidecaller 545 & Murloc Nightcrawler 544 - Patrol 1', 0, 0, 0, 1);
DELETE FROM `spawn_group_spawn` WHERE id = 19916;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(19916, 6200, 0),
(19916, 378, 1);
DELETE FROM `spawn_group_formation` WHERE id = 19916;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(19916, 3, 3, 0, 19916, 2, 'Redridge Mountains - Murloc Tidecaller 545 & Murloc Nightcrawler 544 - Patrol 1');
DELETE FROM `waypoint_path_name` WHERE PathId = 19916;
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(19916,'Redridge Mountains - Murloc Tidecaller 545 & Murloc Nightcrawler 544 - Patrol 1');
DELETE FROM `waypoint_path` WHERE PathId = 19916;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(19916,1,-9454.465,-3343.302,6.5334225,2.71019,30000,0),
(19916,2,-9455.004,-3334.521,6.336875,100,0,0),
(19916,3,-9452.254,-3331.771,5.336875,100,0,0),
(19916,4,-9447.044,-3325.7402,0.14032745,100,0,0),
(19916,5,-9436.413,-3324.9817,-0.1370163,100,0,0),
(19916,6,-9422.613,-3324.8096,2.2861748,100,30000,0),
(19916,7,-9428.733,-3331.387,4.6597986,100,0,0),
(19916,8,-9434.733,-3336.387,6.9097986,100,0,0),
(19916,9,-9450.854,-3344.9644,6.5334225,100,0,0);
DELETE FROM creature_spawn_data WHERE guid IN (6200,378);
INSERT INTO creature_spawn_data (guid, Id) VALUES
(6200,1),(378,1);

-- Shadowhide Camp
-- Shadowhide Slayer 431 
-- Shadowhide Darkweaver 429 
-- Shadowhide Warrior 568
-- Shadowhide Brute 432
UPDATE creature SET position_x = -9385.713, position_y = -3346.7036, position_z = 88.58701, movementtype = 2, spawndist = 0 WHERE guid = 6252;
UPDATE creature SET position_x = -9111.417, position_y = -3246.7063, position_z = 101.49096, movementtype = 2, spawndist = 0 WHERE guid = 8755;
UPDATE creature SET position_x = -9377.317, position_y = -3398.001, position_z = 89.33555, movementtype = 2, spawndist = 0 WHERE guid = 6258;
UPDATE creature SET position_x = -9242.302, position_y = -3342.2874, position_z = 100.18344, movementtype = 1, spawndist = 7 WHERE guid = 7585;
UPDATE creature SET position_x = -9272.403, position_y = -3311.5864, position_z = 141.471, movementtype = 4, spawndist = 0 WHERE guid = 8671; -- linear
UPDATE creature SET position_x = -9181.91, position_y = -3153.6577, position_z = 98.75808, movementtype = 4, spawndist = 0 WHERE guid = 28359; -- linear
UPDATE creature SET position_x = -9354.602, position_y = -3439.9739, position_z = 90.80293, movementtype = 4, spawndist = 0 WHERE guid = 6254; -- linear
UPDATE creature SET position_x = -9167.721, position_y = -3273.6309, position_z = 100.62564, movementtype = 4, spawndist = 0 WHERE guid = 8754; -- linear
UPDATE creature SET position_x = -9173.614, position_y = -3223.463, position_z = 106.045425, movementtype = 1, spawndist = 7 WHERE guid = 20709;
UPDATE creature SET position_x = -9169.309, position_y = -3262.499, position_z = 100.563026, movementtype = 1, spawndist = 7 WHERE guid = 22275;
UPDATE creature SET position_x = -9085.359, position_y = -3322.84033, position_z = 101.867668, movementtype = 1, spawndist = 7 WHERE guid = 29888;
UPDATE creature SET position_x = -9118.012, position_y = -3314.39, position_z = 102.512, movementtype = 1, spawndist = 7 WHERE guid = 18449;
UPDATE creature SET position_x = -9127.632, position_y = -3319.90, position_z = 102.048, movementtype = 1, spawndist = 7 WHERE guid = 29886;
UPDATE creature SET position_x = -9125.530, position_y = -3300.89, position_z = 103.107, movementtype = 1, spawndist = 7 WHERE guid = 18450;
UPDATE creature SET movementtype = 1, spawndist = 2 WHERE guid = 10172;
DELETE FROM creature_movement WHERE Id IN (6252,8671,28359,6254,8754,8755,6258);
INSERT INTO creature_movement (id, point, positionx, positiony, positionz, orientation, waittime, scriptid) VALUES
-- 6252
(6252,1,-9385.713,-3346.7036,88.58701,100,0,0),
(6252,2,-9398.915,-3377.3176,88.903175,100,0,0),
(6252,3,-9391.904,-3387.6711,89.0023,100,0,0),
(6252,4,-9373.688,-3389.587,87.74082,100,0,0),
(6252,5,-9348.802,-3371.4614,87.757965,100,0,0),
(6252,6,-9366.091,-3346.386,90.67256,100,0,0),
-- 8671 - inside tower (had custom made wps)
(8671,1 ,-9272.403,-3311.5864,141.471,100,0,0),
(8671,2 ,-9279.333,-3313.4966,141.49142,100,0,0),
(8671,3 ,-9290.165,-3309.4514,141.49974,100,0,0),
(8671,4 ,-9294.066,-3298.2922,141.49033,100,0,0),
(8671,5 ,-9290.594,-3288.821,141.50064 ,100,0,0),
(8671,6 ,-9283.231,-3284.7766,141.49966,100,0,0),
(8671,7 ,-9276.014,-3285.2856,141.48753,100,0,0),
(8671,8 ,-9269.706,-3289.2966,141.50215,100,0,0),
(8671,9 ,-9265.232,-3297.249,141.49084 ,100,0,0),
(8671,10,-9271.0205,-3289.9783,141.44794,100,0,0),
(8671,11,-9278.198,-3286.5645,141.44968,100,0,0),
(8671,12,-9286.069,-3289.1597,141.15045,100,0,0),
-- 28359
(28359,1,-9181.91,-3153.6577,98.75808,100,1000,0),
(28359,2,-9184.976,-3187.0105,101.08802,100,0,0),
(28359,3,-9203.839,-3214.8833,100.63391,100,0,0),
(28359,4,-9208.767,-3239.2878,100.24723,100,0,0),
(28359,5,-9197.815,-3277.7827,99.00064 ,100,0,0),
(28359,6,-9203.06,-3299.0972,99.45499  ,100,0,0),
(28359,7,-9222.491,-3310.5115,100.49958,100,1000,0),
-- 6254
(6254,1 ,-9354.602,-3439.9739,90.80293,100,1000,0),
(6254,2 ,-9354.187,-3425.522,91.315384,100,0,0),
(6254,3 ,-9327.761,-3403.446,89.52374,100,0,0),
(6254,4 ,-9326.5205,-3386.0144,89.94435,100,0,0),
(6254,5 ,-9340.256,-3373.2422,87.75284,100,0,0),
(6254,6 ,-9339.783,-3356.798,88.88789,100,0,0),
(6254,7 ,-9332.903,-3334.0618,90.80723,100,0,0),
(6254,8 ,-9344.098,-3307.8984,89.916534,100,0,0),
(6254,9 ,-9333.007,-3287.381,92.21237,100,0,0),
(6254,10,-9337.138,-3272.737,94.27378,100,1000,0),
-- 8754
(8754,1 ,-9167.721,-3273.6309,100.62564,100,1000,0),
(8754,2 ,-9170.149,-3258.1406,100.62223,100,0,0),
(8754,3 ,-9164.186,-3233.548,103.3668,100,0,0),
(8754,4 ,-9141.178,-3212.2014,104.40285,100,0,0),
(8754,5 ,-9120.436,-3215.753,104.89936,100,0,0),
(8754,6 ,-9108.866,-3227.0754,100.78681,100,0,0),
(8754,7 ,-9096.996,-3224.4219,100.47358,100,0,0),
(8754,8 ,-9057.777,-3216.5312,104.150635,100,0,0),
(8754,9 ,-9086.46,-3232.9016,100.785835,100,0,0),
(8754,10,-9099.755,-3245.687,100.47265,100,0,0),
(8754,11,-9111.242,-3257.9062,103.590324,100,1000,0),
-- 8755
(8755,1 ,-9111.417,-3246.7063,101.49096 ,100,0,0),
(8755,2 ,-9136.741,-3251.9128,101.070656,100,0,0),
(8755,3 ,-9134.184,-3282.8376,102.85065 ,100,0,0),
(8755,4 ,-9151.759,-3291.6316,102.28375 ,100,0,0),
(8755,5 ,-9151.922,-3320.3406,104.89132 ,100,0,0),
(8755,6 ,-9122.731,-3331.047,100.69004  ,100,0,0),
(8755,7 ,-9084.956,-3323.0068,101.939995,100,0,0),
(8755,8 ,-9058.552,-3301.9543,102.38782 ,100,0,0),
(8755,9 ,-9067.342,-3273.8677,102.0697  ,100,0,0),
(8755,10,-9094.444,-3277.7666,102.051636,100,0,0),
-- 6258
(6258,1 ,-9377.317,-3398.001,89.33555,100,0,0),
(6258,2 ,-9392.275,-3410.3848,88.517845,100,0,0),
(6258,3 ,-9411.288,-3412.7522,86.86803,100,0,0),
(6258,4 ,-9420.024,-3420.8403,87.61803,100,0,0),
(6258,5 ,-9411.4,-3433.07,89.8445 ,100,0,0),
(6258,6 ,-9388.17,-3431.66,92.5636,100,0,0),
(6258,7 ,-9370.22,-3438.22,92.6598,100,0,0),
(6258,8 ,-9349.95,-3417.11,91.0795,100,0,0),
(6258,9 ,-9354.07,-3403.86,92.2642,100,0,0),
(6258,10,-9358.56,-3394.68,90.9287,100,0,0),
(6258,11,-9367.21,-3391.2,89.9586 ,100,0,0);

-- shared spawns
DELETE FROM creature_spawn_entry WHERE guid IN 
(6207,6208,6210,6211,6212,6214,6253,6254,6255,6256,6257,6258,6275,6290,6693,7503,7513,7526,7585,7589,8751,8753,8755,10062,10063,10134,18387,22276,26168,28328,28359,28375,29887);
INSERT INTO creature_spawn_entry (guid,entry) VALUES
-- Shadowhide Slayer 431 & Shadowhide Darkweaver 429 & Shadowhide Warrior 568
(6207,431),(6207,429),(6207,568),
(6208,431),(6208,429),(6208,568),
(6210,431),(6210,429),(6210,568),
(6211,431),(6211,429),(6211,568),
(6212,431),(6212,429),(6212,568),
(6214,431),(6214,429),(6214,568),
(6253,431),(6253,429),(6253,568),
(6254,431),(6254,429),(6254,568),
(6255,431),(6255,429),(6255,568),
(6256,431),(6256,429),(6256,568),
(6257,431),(6257,429),(6257,568),
(6258,431),(6258,429),(6258,568),
(6275,431),(6275,429),(6275,568),
(6290,431),(6290,429),(6290,568),
(6693,431),(6693,429),(6693,568),
(7503,431),(7503,429),(7503,568),
(7526,431),(7526,429),(7526,568),
(7585,431),(7585,429),(7585,568),
(7589,431),(7589,429),(7589,568),
(8755,429),(8755,568), -- 429 & 568 - only
(10062,431),(10062,429),(10062,568),
(10063,431),(10063,429),(10063,568),
(28359,431),(28359,429),(28359,568),
-- Shadowhide Brute 432 & Shadowhide Warrior 568
(7513,432),(7513,568),
(8751,432),(8751,568),
(8753,432),(8753,568),
(10134,432),(10134,568),
(18387,432),(18387,568),
(22276,432),(22276,568),
(26168,432),(26168,568),
(28328,432),(28328,568),
(28375,432),(28375,568),
(29887,432),(29887,568);
UPDATE creature SET id = 0 WHERE guid IN 
(6207,6208,6210,6211,6212,6214,6253,6254,6255,6256,6257,6258,6275,6290,6693,7503,7513,7526,7585,7589,8751,8753,8755,10062,10063,10134,18387,22276,26168,28328,28359,28375,29887);

-- Shadowhide Gnoll 433
-- Rabid Shadowhide Gnoll 434
UPDATE creature SET position_x = -9302.952, position_y = -3236.2024, position_z = 100.66874, movementtype = 2, spawndist = 0 WHERE guid = 10132;
UPDATE creature SET position_x = -9263.246, position_y = -3208.5547, position_z = 102.128136, movementtype = 2, spawndist = 0 WHERE guid = 10053;
DELETE FROM creature_movement WHERE Id IN (10132,10053);
INSERT INTO creature_movement (id, point, positionx, positiony, positionz, orientation, waittime, scriptid) VALUES
-- 10132
(10132,1,-9302.952,-3236.2024,100.66874,100,0,0),
(10132,2,-9260.013,-3238.8137,101.90666,100,0,0),
(10132,3,-9230.697,-3233.006,101.532104,100,0,0),
(10132,4,-9222.774,-3215.7434,102.9801 ,100,0,0),
(10132,5,-9242.1875,-3200.437,102.408165,100,0,0),
(10132,6,-9274.926,-3200.5344,104.41526,100,0,0),
(10132,7,-9315.983,-3222.6318,100.72246,100,0,0),
-- 10053
(10053,1 ,-9263.246,-3208.5547,102.128136,1.518436,28000,0),
(10053,2 ,-9272.469,-3211.6526,103.286354,100,0,0),
(10053,3 ,-9305.278,-3232.3901,100.85625,100,0,0),
(10053,4 ,-9343.33,-3233.92,95.309425,100,0,0),
(10053,5 ,-9376.466,-3260.8962,88.61803,100,28000,0),
(10053,6 ,-9355.158,-3245.217,92.345314,100,0,0),
(10053,7 ,-9338.099,-3230.5896,96.25731,100,0,0),
(10053,8 ,-9310.653,-3233.226,100.85625,100,0,0),
(10053,9 ,-9292.012,-3240.2493,100.64925,100,0,0),
(10053,10,-9265.055,-3209.4102,102.37228,100,0,0),
(10053,11,-9263.246,-3208.5547,102.128136,100,0,0);

-- shared spawns
-- Shadowhide Gnoll 433 & Rabid Shadowhide Gnoll 434
DELETE FROM creature_spawn_entry WHERE entry IN (433,434);
INSERT INTO creature_spawn_entry (guid,entry)
SELECT guid,id FROM creature
WHERE id in (433)
union
SELECT guid,434 FROM creature
WHERE id in (433)
union
SELECT guid,id FROM creature
WHERE id in (434)
union
SELECT guid,433 FROM creature
WHERE id in (434);
UPDATE creature SET id = 0 WHERE id IN (433,434);

-- Shadowhide Assassin 579
UPDATE creature SET position_x = -9339.953, position_y = -3235.7222, position_z = 96.09706, movementtype = 1, spawndist = 15 WHERE guid = 6756;
UPDATE creature SET id = 579, position_x = -9238.278, position_y = -3199.4768, position_z = 102.95368, movementtype = 1, spawndist = 15 WHERE guid = 10133;
UPDATE creature SET id = 579, position_x = -9159.55, position_y = -3217.91, position_z = 103.339, movementtype = 1, spawndist = 15 WHERE guid = 10054;
UPDATE creature SET id = 579, position_x = -9177.290, position_y = -3303.259, position_z = 101.826, movementtype = 1, spawndist = 15 WHERE guid = 28361;
DELETE FROM creature_spawn_entry WHERE guid IN (10054);

-- Lieutenant Fangore 703
UPDATE creature SET position_x = -9125.3867, position_y = -3311.7495, position_z = 102.965, movementtype = 1, spawndist = 10 WHERE guid = 29889;
DELETE FROM `spawn_group` WHERE id = 19915;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(19915, 'Redridge Mountains - Lieutenant Fangore 703 & Shadowhide Darkweaver 429 & Shadowhide Warrior 568', 0, 0, 0, 1);
DELETE FROM `spawn_group_spawn` WHERE id = 19915;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(19915, 29889, -1),
(19915, 29886, -1),
(19915, 18450, -1);
UPDATE creature SET position_x = -9118.012, position_y = -3314.39, position_z = 102.512, movementtype = 1, spawndist = 7 WHERE guid = 18449;
UPDATE creature SET position_x = -9127.632, position_y = -3319.90, position_z = 102.048, movementtype = 1, spawndist = 7 WHERE guid = 29886;
UPDATE creature SET position_x = -9125.530, position_y = -3300.89, position_z = 103.107, movementtype = 1, spawndist = 7 WHERE guid = 18450;

DELETE FROM `gameobject` where `guid` IN (76053,76054,76055); -- ore in tree
DELETE FROM `pool_gameobject` where `pool_entry` = 4682;
DELETE FROM `pool_pool` WHERE `pool_id` = 4682;
DELETE FROM `pool_template` WHERE `entry` = 4682;

