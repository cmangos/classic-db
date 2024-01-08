-- Kal'ai Ruins - Updates
-- duplicates
DELETE FROM creature_addon WHERE guid=1196;
DELETE FROM creature_movement WHERE Id=1196;
DELETE FROM game_event_creature WHERE guid=1196;
DELETE FROM game_event_creature_data WHERE guid=1196;
DELETE FROM creature_battleground WHERE guid=1196;
DELETE FROM creature_linking WHERE guid=1196
 OR master_guid=1196;
DELETE FROM creature WHERE guid=1196;
-- custom made wps corrected
UPDATE creature SET position_x = -12129.408, position_y = -148.65723, position_z = 30.96006, spawndist = 0, MovementType = 4 WHERE guid = 2135; -- linear
UPDATE creature SET position_x = -12020.774, position_y = 80.57661, position_z = 0.38511896, spawndist = 0, MovementType = 4 WHERE guid = 1199; -- linear
DELETE FROM creature_movement WHERE id IN (2135,1199);
INSERT INTO creature_movement (id, Point, PositionX, PositionY, PositionZ, Orientation, WaitTime, ScriptId) VALUES
-- 2135
(2135,1 ,-12129.408,-148.65723,30.96006,100,1000,0),
(2135,2 ,-12142.46,-133.32368,28.572948,100,0,0),
(2135,3 ,-12146.889,-128.78212,27.210155,100,0,0),
(2135,4 ,-12156.635,-126.57422,21.41914,100,0,0),
(2135,5 ,-12165.236,-118.20703,17.66914,100,0,0),
(2135,6 ,-12174.133,-105.56966,16.24839,100,0,0),
(2135,7 ,-12172.082,-92.25087,16.628319,100,0,0),
(2135,8 ,-12168.722,-84.88792,17.635887,100,0,0),
(2135,9 ,-12162.17,-79.594185,16.194689,100,0,0),
(2135,10,-12157.535,-69.06304,11.814806,100,1000,0),
-- 1199
(1199,1,-12020.774,80.57661,0.38511896,100,1000,0),
(1199,2,-12041.212,78.19477,-3.151064,100,0,0),
(1199,3,-12064,72.333115,-4.706606,100,0,0),
(1199,4,-12103.41,58.767143,-7.278742,100,0,0),
(1199,5,-12125.251,38.560223,-6.272272,100,0,0),
(1199,6,-12136.407,9.611546,-4.414446,100,1000,0);

