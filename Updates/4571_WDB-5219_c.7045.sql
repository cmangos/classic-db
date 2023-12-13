-- Scalding Drake 7045
-- missing spawn added
DELETE FROM creature_addon WHERE guid IN (379);
DELETE FROM creature_movement WHERE id IN (379);
DELETE FROM game_event_creature WHERE guid IN (379);
DELETE FROM game_event_creature_data WHERE guid IN (379);
DELETE FROM creature_battleground WHERE guid IN (379);
DELETE FROM creature_linking WHERE guid IN (379);
DELETE FROM creature where guid IN (379);
INSERT INTO creature (guid, id, map, spawnMask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES
(379,7045,0,1,-8089.5835,-1292.2653,136.32478,0,300,300,0,4); -- linear
DELETE FROM creature_addon WHERE guid IN(SELECT guid FROM creature WHERE id = 7045);
DELETE FROM creature_template_addon WHERE entry IN (7045);
INSERT INTO creature_template_addon (entry, mount, stand_state, sheath_state, emote, moveflags, auras) VALUES
(7045,0,0,0,0,0,11966);
DELETE FROM creature_movement WHERE Id IN (379);
INSERT INTO creature_movement (id, point, positionx, positiony, positionz, orientation, waittime, scriptid) VALUES
(379,1,-8089.5835,-1292.2653,136.32478,100,1000,0),
(379,2,-8122.4497,-1308.1586,133.63638,100,0,0),
(379,3,-8156.627,-1333.8954,137.14001,100,0,0),
(379,4,-8182.317,-1357.6813,135.88515,100,0,0),
(379,5,-8187.617,-1373.4078,141.1833,100,0,0),
(379,6,-8213.157,-1387.947,144.71884,100,0,0),
(379,7,-8232.245,-1388.5055,151.32968,100,0,0),
(379,8,-8248.569,-1394.3069,156.55432,100,0,0),
(379,9,-8276.903,-1374.8982,170.21965,100,1000,0);
-- other 2 may also req. path rechecked

