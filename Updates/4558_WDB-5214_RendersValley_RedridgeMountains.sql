-- Render's Valley - Redridge Mountains
-- Blackrock Summoner 4463
-- missing spawn added
DELETE FROM creature_addon WHERE guid IN (376);
DELETE FROM creature_movement WHERE id IN (376);
DELETE FROM game_event_creature WHERE guid IN (376);
DELETE FROM game_event_creature_data WHERE guid IN (376);
DELETE FROM creature_battleground WHERE guid IN (376);
DELETE FROM creature_linking WHERE guid IN (376);
DELETE FROM creature where guid IN (376);
INSERT INTO creature (guid, id, map, spawnMask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES
(376,4463,0,1,-9719.513,-3167.964,59.06486,5.32325,300,300,0,0);

-- shared spawns
DELETE FROM creature_spawn_entry WHERE guid IN (376);
INSERT INTO creature_spawn_entry (guid,entry) VALUES
-- Blackrock Grunt 440 & Blackrock Summoner 4463
(376,440),(376,4463);
UPDATE creature SET id = 0 WHERE guid IN (376);

-- Blackrock Renegate 437
-- missing spawn added
DELETE FROM creature_addon WHERE guid IN (518);
DELETE FROM creature_movement WHERE id IN (518);
DELETE FROM game_event_creature WHERE guid IN (518);
DELETE FROM game_event_creature_data WHERE guid IN (518);
DELETE FROM creature_battleground WHERE guid IN (518);
DELETE FROM creature_linking WHERE guid IN (518);
DELETE FROM creature where guid IN (518);
INSERT INTO creature (guid, id, map, spawnMask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES
(518,437,0,1,-9642.596,-3169.3962,48.83993,0,300,300,0,0); -- part of formation

-- Blackrock Grunt 440 & Blackrock Outrunner 485
-- missing spawn added
DELETE FROM creature_addon WHERE guid IN (724);
DELETE FROM creature_movement WHERE id IN (724);
DELETE FROM game_event_creature WHERE guid IN (724);
DELETE FROM game_event_creature_data WHERE guid IN (724);
DELETE FROM creature_battleground WHERE guid IN (724);
DELETE FROM creature_linking WHERE guid IN (724);
DELETE FROM creature where guid IN (724);
INSERT INTO creature (guid, id, map, spawnMask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES
(724,485,0,1,-9573.077,-3297.274,47.194336,0,300,300,0,2);

UPDATE creature SET position_x = -9668.3769, position_y = -3089.265, position_z = 51.103, orientation = 3.385, movementtype = 1, spawndist = 7 WHERE guid = 6728;
UPDATE creature SET position_x = -9508.854, position_y = -3301.331, position_z = 48.450363, orientation = 5.742133, movementtype = 0, spawndist = 0 WHERE guid = 6196;
UPDATE creature SET movementtype = 1, spawndist = 7 WHERE guid IN (6727,8309,8168,7770);
UPDATE creature SET position_x = -9713.328, position_y = -3108.9858, position_z = 58.7037, movementtype = 2, spawndist = 0 WHERE guid = 6736;
UPDATE creature SET position_x = -9730.323, position_y = -3214.2227, position_z = 58.733845, movementtype = 4, spawndist = 0 WHERE guid = 6733; -- linear
UPDATE creature SET position_x = -9638.779, position_y = -2525.4167, position_z = 59.08689, movementtype = 4, spawndist = 0 WHERE guid = 8166; -- linear

DELETE FROM creature_movement WHERE Id IN (8166,6736,6733,724);
INSERT INTO creature_movement (id, point, positionx, positiony, positionz, orientation, waittime, scriptid) VALUES
-- 8166
(8166,1,-9638.779,-2525.4167,59.08689,100,3000,0),
(8166,2,-9737.398,-3165.0378,58.733845,100,0,0),
(8166,3,-9735.557,-3160.5762,58.7795,100,0,0),
(8166,4,-9745.547,-3169.1394,58.733845,100,0,0),
(8166,5,-9764.161,-3205.0164,58.733845,100,0,0),
(8166,6,-9785.041,-3217.987,58.733845,100,0,0),
(8166,7,-9803.478,-3240.7986,59.32787,100,2000,0),
-- 6736
(6736,1 ,-9713.328,-3108.9858,58.7037,100,0,0),
(6736,2 ,-9729.07,-3116.8677,58.767403,100,0,0),
(6736,3 ,-9747.356,-3133.2258,58.88272,100,0,0),
(6736,4 ,-9761.401,-3165.5535,58.733845,100,0,0),
(6736,5 ,-9751.6,-3198.4927,58.733845,100,0,0),
(6736,6 ,-9734.712,-3199.9446,58.733845,100,0,0),
(6736,7 ,-9714.399,-3191.881,58.733845,100,0,0),
(6736,8 ,-9703.757,-3183.1658,59.38814,100,0,0),
(6736,9 ,-9691.205,-3180.9211,59.251007,100,0,0),
(6736,10,-9691.212,-3169.8098,58.965363,100,0,0),
(6736,11,-9700.622,-3162.6711,58.707214,100,0,0),
(6736,12,-9712.536,-3163.0803,59.14203,100,0,0),
(6736,13,-9699.915,-3137.5034,58.685455,100,0,0),
-- 6733
(6733,1,-9730.323,-3214.2227,58.733845,100,1000,0),
(6733,2,-9711.0205,-3236.2197,59.7845,100,0,0),
(6733,3,-9691.464,-3248.0012,57.807045,100,0,0),
(6733,4,-9682.0205,-3249.122,55.39225,100,0,0),
(6733,5,-9657.34,-3220.4211,48.546658,100,0,0),
(6733,6,-9647.581,-3185.907,48.563076,100,0,0),
(6733,7,-9656.649,-3149.1768,48.93035,100,0,0),
(6733,8,-9662.953,-3128.6763,50.38991,100,0,0),
(6733,9,-9657.409,-3118.0176,50.37624,100,1000,0),
-- 724
(724,1 ,-9573.077,-3297.274,47.194336,100,0,0),
(724,2 ,-9545.518,-3271.5542,49.76724,100,0,0),
(724,3 ,-9524.489,-3275.595,48.892277,100,0,0),
(724,4 ,-9505.632,-3269.2825,48.889347,100,0,0),
(724,5 ,-9506.843,-3252.952,49.353363 ,100,0,0),
(724,6 ,-9533.903,-3243.3506,49.461517,100,0,0),
(724,7 ,-9560.072,-3249.2585,49.124115,100,0,0),
(724,8 ,-9588.436,-3246.136,49.196133 ,100,0,0),
(724,9 ,-9606.018,-3260.9954,48.54079 ,100,0,0),
(724,10,-9603.177,-3282.3386,49.247116,100,0,0);

-- shared spawns
DELETE FROM creature_spawn_entry WHERE guid IN (724,6727,6728,8166);
INSERT INTO creature_spawn_entry (guid,entry) VALUES
-- Blackrock Grunt 440 & Blackrock Outrunner 485
(724,440),(724,485),
(6727,440),(6727,485),
(6728,440),(6728,485),
(8166,440),(8166,485);
UPDATE creature SET id = 0 WHERE guid IN (724,6727,6728,8166);

-- Spawn Groups
-- Group 1
UPDATE creature SET position_x = -9747.18, position_y = -3143.1584, position_z = 58.858845, movementtype = 0, spawndist = 0 WHERE guid IN (6742,6746);
DELETE FROM `spawn_group` WHERE id = 19918;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(19918, 'Redridge Mountains - Blackrock Grunt 440 & Blackrock Outrunner 485 - Patrol 1', 0, 0, 0, 1);
DELETE FROM `spawn_group_spawn` WHERE id = 19918;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(19918, 6742, 0),
(19918, 6746, 1);
DELETE FROM `spawn_group_formation` WHERE id = 19918;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(19918, 1, 3, 0, 19918, 2, 'Redridge Mountains - Blackrock Grunt 440 & Blackrock Outrunner 485 - Patrol 1');
DELETE FROM `waypoint_path_name` WHERE PathId = 19918;
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(19918,'Redridge Mountains - Blackrock Grunt 440 & Blackrock Outrunner 485 - Patrol 1');
DELETE FROM `waypoint_path` WHERE PathId = 19918;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(19918,1 ,-9747.18,-3143.1584,58.858845,100,100,6),
(19918,2 ,-9756.188,-3177.215,58.733845,100,0,0),
(19918,3 ,-9761.646,-3200.757,58.733845,100,0,0),
(19918,4 ,-9763.813,-3212.4966,58.733845,100,0,0),
(19918,5 ,-9764.413,-3218.573,59.066853,100,0,0),
(19918,6 ,-9758.831,-3240.0388,58.733845,100,0,0),
(19918,7 ,-9747.993,-3241.579,58.733845,100,0,0),
(19918,8 ,-9744.385,-3239.49,58.733845,100,0,0),
(19918,9 ,-9739.081,-3229.8242,59.094685,100,0,0),
(19918,10,-9739.475,-3223.6191,59.561237,100,3000,0),
(19918,11,-9728.141,-3228.9363,58.858845,100,5000,21),
(19918,12,-9728.141,-3228.9363,58.858845,100,100,5),
(19918,13,-9705.435,-3196.8896,59.269,100,0,0),
(19918,14,-9741.059,-3205.151,58.733845,100,0,0),
(19918,15,-9763.211,-3181.548,58.733845,100,0,0),
(19918,16,-9751.3545,-3158.5066,58.858845,100,0,0),
(19918,17,-9747.18,-3143.1584,58.858845,100,3000,6),
(19918,18,-9742.18,-3133.85,58.8273,100,5000,21);

-- Group 2
UPDATE creature SET position_x = -9642.596, position_y = -3169.3962, position_z = 48.83993, movementtype = 0, spawndist = 0 WHERE guid IN (6729,518);
DELETE FROM `spawn_group` WHERE id = 19917;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(19917, 'Redridge Mountains - Blackrock Grunt 440 & Blackrock Renegate 437 - Patrol 2', 0, 0, 0, 1);
DELETE FROM `spawn_group_spawn` WHERE id = 19917;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(19917, 6729, 0),
(19917, 518, 1);
DELETE FROM `spawn_group_formation` WHERE id = 19917;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(19917, 1, 3, 0, 19917, 4, 'Redridge Mountains - Blackrock Grunt 440 & Blackrock Renegate 437 - Patrol 2');
DELETE FROM `waypoint_path_name` WHERE PathId = 19917;
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(19917,'Redridge Mountains - Blackrock Grunt 440 & Blackrock Renegate 437 - Patrol 2');
DELETE FROM `waypoint_path` WHERE PathId = 19917;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(19917,1,-9642.596,-3169.3962,48.83993,100,45000,0),
(19917,2,-9643.768,-3185.5562,48.919033,100,0,0),
(19917,3,-9627.677,-3224.4666,49.59628,100,0,0),
(19917,4,-9599.81,-3261.6907,48.669033,100,0,0),
(19917,5,-9555.606,-3261.0764,48.73642,100,45000,0);

