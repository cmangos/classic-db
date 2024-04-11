-- Light's Hope Chapel - Eastern Plaguelands

-- Rimblat Earthshatter 16134 & Rayne 16135 - RP
-- moved to random timer
UPDATE creature SET MovementType = 0 WHERE id = 16134;
UPDATE creature_template SET MovementType = 0 WHERE entry = 16134;
DELETE FROM creature_movement_template WHERE Entry IN (16134); 
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1613401);
-- Relay
DELETE FROM dbscripts_on_relay WHERE id IN (85,86);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(85,1,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Rimblat Earthshatter 16134 EAI: emote'),
(85,100,0,0,0,0,0,0,0x04,11946,0,0,0,0,0,0,0,'Part of Rimblat Earthshatter 16134 EAI: Say'),
(85,3100,1,16,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Rimblat Earthshatter 16134 EAI: emote'),
(85,9600,15,27824,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Rimblat Earthshatter 16134 EAI: cast 27824'),
(85,13000,35,5,10,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Rimblat Earthshatter 16134 EAI: send Event 5'),
(86,1,1,21,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Rayne 16135 EAI: emote'),
(86,4000,0,0,0,0,0,0,0x04,11945,0,0,0,0,0,0,0,'Part of Rimblat Earthshatter 16134 EAI: Say'),
(86,4100,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Rayne 16135 EAI: emote');

-- Argent Sentry 16378
UPDATE creature SET position_x = 2181.136719, position_y = -5306.073730, position_z = 103.082100, spawndist = 10, MovementType = 1 WHERE guid = 53863;
UPDATE creature SET position_x = 2210.156006, position_y = -5315.047852, position_z = 90.804749, spawndist = 10, MovementType = 1 WHERE guid = 53869;
UPDATE creature SET position_x = 2229.000244, position_y = -5285.634277, position_z = 80.410820, spawndist = 10, MovementType = 1 WHERE guid = 54756;
UPDATE creature SET position_x = 2276.821289, position_y = -5396.949219, position_z = 86.995232, spawndist = 10, MovementType = 1 WHERE guid = 53864;
UPDATE creature SET position_x = 2350.790283, position_y = -5312.155762, position_z = 88.166397, spawndist = 10, MovementType = 1 WHERE guid = 53895;
UPDATE creature SET position_x = 2348.019287, position_y = -5372.949707, position_z = 88.214653, spawndist = 10, MovementType = 1 WHERE guid = 53868;
UPDATE creature SET position_x = 2315.9106, position_y = -5354.275, position_z = 87.776535, spawndist = 0, MovementType = 2 WHERE guid = 54752;
DELETE FROM creature_movement WHERE id IN (54752);
INSERT INTO creature_movement (id, Point, PositionX, PositionY, PositionZ, Orientation, WaitTime, ScriptId) VALUES
-- 54752
(54752,1 ,2315.9106,-5354.275,87.776535,100,0,0),
(54752,2 ,2321.9448,-5346.086,87.354416,100,0,0),
(54752,3 ,2326.913,-5331.1313,82.04779 ,100,0,0),
(54752,4 ,2334.154,-5321.8525,82.07385 ,100,0,0),
(54752,5 ,2333.5288,-5310.0923,82.07385,100,0,0),
(54752,6 ,2335.2712,-5301.103,82.2439  ,100,0,0),
(54752,7 ,2334.126,-5294.6426,81.95076 ,100,0,0),
(54752,8 ,2331.1467,-5283.6953,81.89569,100,0,0),
(54752,9 ,2321.9421,-5275.3467,82.34613,100,0,0),
(54752,10,2308.7708,-5265.974,82.47552 ,100,0,0),
(54752,11,2296.8872,-5266.1475,82.024216,100,0,0),
(54752,12,2290.3264,-5273.1562,81.94575,100,0,0),
(54752,13,2284.3933,-5279.98,82.32075  ,100,0,0),
(54752,14,2277.0366,-5282.314,82.44575 ,100,0,0),
(54752,15,2268.1338,-5288.585,82.18427 ,100,0,0),
(54752,16,2256.3801,-5289.5156,82.099  ,100,0,0),
(54752,17,2243.6545,-5291.8906,82.67029,100,0,0),
(54752,18,2235.8628,-5300.807,82.18577 ,100,0,0),
(54752,19,2236.9993,-5318.815,82.18821 ,100,0,0),
(54752,20,2238.843,-5335.112,83.31273  ,100,0,0),
(54752,21,2246.8555,-5338.9165,86.18236,100,0,0),
(54752,22,2242.4248,-5343.108,86.179184,100,0,0),
(54752,23,2240.2354,-5348.1484,85.93736,100,0,0),
(54752,24,2243.2659,-5361.3203,83.38304,100,0,0),
(54752,25,2252.572,-5363.632,84.36168  ,100,0,0),
(54752,26,2257.8555,-5363.7524,84.711655,100,0,0),
(54752,27,2264.4492,-5372.2505,83.0886 ,100,0,0),
(54752,28,2272.21,-5376.8027,83.820305 ,100,0,0),
(54752,29,2277.5042,-5377.518,84.32885 ,100,0,0),
(54752,30,2289.0894,-5379.7085,83.93395,100,0,0),
(54752,31,2296.1199,-5381.069,82.76684 ,100,0,0),
(54752,32,2307.0886,-5373.584,84.95044 ,100,0,0),
(54752,33,2311.0925,-5369.967,86.413574,100,0,0),
(54752,34,2316.6914,-5359.1455,87.62126,100,0,0),
(54752,35,2321.7026,-5351.0586,87.3062 ,100,0,0);
-- Spawn group
UPDATE creature SET position_x = 2279.1226, position_y = -5278.7065, position_z = 82.19575, spawndist = 0, movementtype = 0 WHERE guid IN (53865,53866);
DELETE FROM creature_movement WHERE id IN (53865,53866);
DELETE FROM `spawn_group` WHERE id = 19899;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(19899,'Eastern Plaguelands - Light\'s Hope Chapel - Argent Sentry 16378 x2 - Patrol 1', 0, 0, 0, 0x01);
DELETE FROM `spawn_group_spawn` WHERE id = 19899;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(19899, 53865, 0),
(19899, 53866, 1);
DELETE FROM `spawn_group_formation` WHERE id = 19899;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(19899, 2, 4, 0, 19899, 2, 'Eastern Plaguelands - Light\'s Hope Chapel - Argent Sentry 16378 x2 - Patrol 1');
DELETE FROM `waypoint_path` WHERE PathId IN (19899);
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(19899,1,2278.774,-5266.625,81.47221,100,2000,0),
(19899,2,2279.125,-5278.625,82.32075,100,0,0),
(19899,3,2280.1094,-5293.3145,83.956,100,2000,0),
(19899,4,2279.1226,-5278.7065,82.19575,100,0,0);
DELETE FROM `waypoint_path_name` WHERE PathId IN (19899);
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(19899,'Eastern Plaguelands - Light\'s Hope Chapel - Argent Sentry 16378 x2 - Patrol 1');

-- Argent Rider 11102
-- corrected
DELETE FROM `spawn_group` WHERE id = 20;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(20,'Eastern Plaguelands - Light\'s Hope Chapel - Argent Rider x2 Patrol 1', 0, 0, 0, 0x01);
DELETE FROM `spawn_group_formation` WHERE id = 20;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(20, 2, 5, 0, 20, 4, 'Eastern Plaguelands - Light\'s Hope Chapel - Argent Rider x2 Patrol 1');
DELETE FROM `waypoint_path` WHERE PathId IN (8,20); -- 8 was originaly set
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(20,1,2174.38,-5267.24,92.3978,100,1000,0),
(20,2,2199.78,-5263.62,84.7369,100,0,0),
(20,3,2225.02,-5261.58,75.8357,100,0,0),
(20,4,2261.17,-5259.14,77.8593,100,0,0),
(20,5,2286.34,-5260.95,81.5242,100,0,0),
(20,6,2306.32,-5265.41,82.4184,100,0,0),
(20,7,2325.79,-5275.87,82.1967,100,0,0),
(20,8,2345.25,-5295.37,83.4107,100,1000,0);
DELETE FROM `waypoint_path_name` WHERE PathId IN (8,20);
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(20,'Eastern Plaguelands - Light\'s Hope Chapel - Argent Rider x2 Patrol 1');
