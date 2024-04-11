-- Kolkar Stormer 3273
-- missing added
DELETE FROM creature_addon WHERE guid IN (375); -- free for all 3 dbs
DELETE FROM creature_movement WHERE id IN (375);
DELETE FROM game_event_creature WHERE guid IN (375);
DELETE FROM game_event_creature_data WHERE guid IN (375);
DELETE FROM creature_battleground WHERE guid IN (375);
DELETE FROM creature_linking WHERE guid IN (375)
 OR master_guid IN (375);
DELETE FROM creature WHERE guid IN (375);
INSERT INTO creature (guid, id, map, spawnmask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) values
(375,3273,1,1,-1450.9772,-3014.935,93.416664,0,300,300,0,2);
DELETE FROM creature_movement WHERE Id IN (375);
INSERT INTO creature_movement (id, point, positionx, positiony, positionz, orientation, waittime, scriptid) VALUES
(375,1 ,-49.708008,-1817.2418,92.59873,100,5000,21),
(375,2 ,-49.708008,-1817.2418,92.59873,100,100,6),
(375,3 ,-49.144855,-1784.2662,92.80562,100,0,0),
(375,4 ,-24.654947,-1758.1602,92.32654,100,0,0),
(375,5 ,-19.734919,-1722.6688,94.47399,100,0,0),
(375,6 ,19.04861,-1713.75,99.51696,100,5000,21),
(375,7 ,19.04861,-1713.75,99.51696,100,100,5),
(375,8 ,-9.755751,-1728.4347,93.97399,100,0,0),
(375,9 ,-5.688043,-1754.2831,93.95642,100,0,0),
(375,10,12.333605,-1762.2262,97.17121,100,0,0),
(375,11,31.619955,-1768.4232,97.07481,100,0,0),
(375,12,48.593426,-1782.469,95.97184,100,0,0),
(375,13,53.6282,-1800.0195,92.16459,100,0,0),
(375,14,47.056858,-1809.2556,92.46476,100,5000,21),
(375,15,15.549479,-1813.3567,94.58601,100,0,0),
(375,16,-11.837132,-1817.2701,93.416214,100,0,0),
(375,17,-38.92014,-1815.125,92.97129,100,0,0);

