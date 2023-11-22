-- Lakeridge Highway - Redridge Mountains
-- Gnoll Kamp
-- Redridge Mongrel 423
-- missing spawn added
DELETE FROM creature_addon WHERE guid IN (1007);
DELETE FROM creature_movement WHERE id IN (1007);
DELETE FROM game_event_creature WHERE guid IN (1007);
DELETE FROM game_event_creature_data WHERE guid IN (1007);
DELETE FROM creature_battleground WHERE guid IN (1007);
DELETE FROM creature_linking WHERE guid IN (1007);
DELETE FROM creature where guid IN (1007);
INSERT INTO creature (guid, id, map, spawnMask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES
(1007,423,0,1,-9638.779,-2525.4167,59.08689,3.814,300,300,0,2);
DELETE FROM creature_movement WHERE Id IN (1007);
INSERT INTO creature_movement (id, point, positionx, positiony, positionz, orientation, waittime, scriptid) VALUES
(1007,1,-9638.779,-2525.4167,59.08689,100,25000,0),
(1007,2,-9628.489,-2516.5244,59.3035,100,0,0),
(1007,3,-9615.57,-2504.5554,60.365025,100,0,0),
(1007,4,-9605.831,-2504.101,59.806675,100,0,0),
(1007,5,-9602.6045,-2510.2727,59.349155,100,0,0),
(1007,6,-9602.6045,-2510.2727,59.349155,4.67748,25000,0),
(1007,7,-9607.406,-2505.381,59.96732,100,0,0),
(1007,8,-9617.936,-2505.0872,60.55106,100,0,0),
(1007,9,-9624.509,-2515.3347,59.446568,100,0,0);

-- Spawn Groups 1
UPDATE creature SET position_x = -9632.086, position_y = -2441.9658, position_z = 63.983784, orientation = 0, movementtype = 0, spawndist = 0 WHERE guid = 15219; -- part of formation
UPDATE creature SET position_x = -9632.086, position_y = -2441.9658, position_z = 63.983784, orientation = 0, movementtype = 0, spawndist = 0 WHERE guid = 15218; -- part of formation
DELETE FROM `spawn_group` WHERE id = 19920;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(19920, 'Redridge Mountains - Redridge Mongrel & Redridge Poacher - Patrol 1', 0, 0, 0, 1);
DELETE FROM `spawn_group_spawn` WHERE id = 19920;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(19920, 15218, 0),
(19920, 15219, 1);
DELETE FROM `spawn_group_formation` WHERE id = 19920;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(19920, 1, 3, 0, 19920, 2, 'Redridge Mountains - Redridge Mongrel & Redridge Poacher - Patrol 1');
DELETE FROM `waypoint_path_name` WHERE PathId = 19920;
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(19920,'Redridge Mountains - Redridge Mongrel & Redridge Poacher - Patrol 1');
DELETE FROM `waypoint_path` WHERE PathId = 19920;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(19920,1,-9632.086,-2441.9658,63.983784,100,30000,0),
(19920,2,-9622.567,-2470.4783,60.273567,100,0,0),
(19920,3,-9606.604,-2486.9895,60.025032,100,0,0),
(19920,4,-9602.279,-2502.6646,59.803013,100,30000,0),
(19920,5,-9609.739,-2488.236,60.299446,100,0,0),
(19920,6,-9625.794,-2448.716,63.233295,100,0,0);

-- Spawn Groups 2
UPDATE creature SET position_x = -9585.215, position_y = -2488.0066, position_z = 59.11447, orientation = 0, movementtype = 0, spawndist = 0 WHERE guid = 16227; -- part of formation
UPDATE creature SET position_x = -9585.215, position_y = -2488.0066, position_z = 59.11447, orientation = 0, movementtype = 0, spawndist = 0 WHERE guid = 16224; -- part of formation
DELETE FROM `spawn_group` WHERE id = 19919;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(19919, 'Redridge Mountains - Redridge Mongrel & Redridge Poacher - Patrol 2', 0, 0, 0, 1);
DELETE FROM `spawn_group_spawn` WHERE id = 19919;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(19919, 16227, 0),
(19919, 16224, 1);
DELETE FROM `spawn_group_formation` WHERE id = 19919;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(19919, 1, 3, 0, 19919, 4, 'Redridge Mountains - Redridge Mongrel & Redridge Poacher - Patrol 2'); -- linear
DELETE FROM `waypoint_path_name` WHERE PathId = 19919;
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(19919,'Redridge Mountains - Redridge Mongrel & Redridge Poacher - Patrol 2');
DELETE FROM `waypoint_path` WHERE PathId = 19919;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(19919,1 ,-9585.215,-2488.0066,59.11447,100,1000,0),
(19919,2 ,-9600.611,-2478.0347,59.148567,100,0,0),
(19919,3 ,-9615.699,-2482.9028,60.3451,100,0,0),
(19919,4 ,-9626.435,-2493.9653,61.736946,100,0,0),
(19919,5 ,-9631.005,-2520.3894,59.224155,100,0,0),
(19919,6 ,-9621.853,-2534.6077,59.363483,100,0,0),
(19919,7 ,-9611.43,-2537.2913,59.494343,100,0,0),
(19919,8 ,-9596.484,-2523.1477,62.038082,100,0,0),
(19919,9 ,-9595.624,-2513.513,59.80981,100,0,0),
(19919,10,-9578.707,-2505.8618,59.252193,100,0,0),
(19919,11,-9578.911,-2494.7375,58.98947,100,1000,0);

DELETE FROM creature_movement WHERE Id IN (15218,15219,16227,16224);

