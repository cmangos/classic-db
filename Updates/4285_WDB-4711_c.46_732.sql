-- Elvynn Forest
-- Murloc Forager 46 & Murloc Lurker 732

-- `Stonecairn Lake` - South East Murlock Village
-- missing added - guids free in all 3 DBs
DELETE FROM creature_addon WHERE guid IN (11488);
DELETE FROM creature_movement WHERE id IN (11488);
DELETE FROM game_event_creature WHERE guid IN (11488);
DELETE FROM game_event_creature_data WHERE guid IN (11488);
DELETE FROM creature_battleground WHERE guid IN (11488);
DELETE FROM creature_linking WHERE guid IN (11488)
 OR master_guid IN (11488);
DELETE FROM creature WHERE guid IN (11488);
INSERT INTO creature (guid, id, map, spawnmask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) values
(11488,732,0,1,-9273.57,-1162.76,68.2503,2.40238,180,180,0,0);

-- Updates
UPDATE creature SET spawndist = 10, MovementType = 1 WHERE guid = 81281;
UPDATE creature SET spawndist = 20, MovementType = 1 WHERE guid = 81339;
UPDATE creature SET position_x = -9305.829, position_y = -1121.7301, position_z = 69.417671, spawndist = 20, MovementType = 1 WHERE guid = 81291;
UPDATE creature SET position_x = -9284.264, position_y = -1215.047, position_z = 69.711418, spawndist = 20, MovementType = 1 WHERE guid = 81339;
UPDATE creature SET position_x = -9221.311, position_y = -1221.482, position_z = 71.245308, spawndist = 10, MovementType = 1 WHERE guid = 81274;
UPDATE creature SET position_x = -9176.398, position_y = -1243.5897, position_z = 74.277855, spawndist = 20, MovementType = 1 WHERE guid = 81287;
UPDATE creature SET position_x = -9300.582, position_y = -1209.9899, position_z = 69.358734, spawndist = 0, MovementType = 2 WHERE guid = 81276;
UPDATE creature SET position_x = -9220.988, position_y = -1242.8812, position_z = 75.84574, spawndist = 0, MovementType = 2 WHERE guid = 81282;

-- waypoints
DELETE FROM creature_movement WHERE id IN (81276,81282);
INSERT INTO creature_movement (`id`, `point`, `positionx`, `positiony`, `positionz`, `orientation`, `waittime`, `scriptid`) VALUES
-- 81276
(81276,1,-9300.582,-1209.9899,69.358734,100,0,0),
(81276,2,-9300.169,-1200.7623,69.01254,100,0,0),
(81276,3,-9298.221,-1186.1058,69.49792,100,0,0),
(81276,4,-9293.905,-1181.2567,70.062126,100,0,0),
(81276,5,-9282.02,-1187.3115,70.863396,100,0,0),
(81276,6,-9275.455,-1191.0436,71.14318,100,0,0),
(81276,7,-9264.208,-1199.6946,71.225235,100,0,0),
(81276,8,-9255.419,-1206.9213,71.62544,100,0,0),
(81276,9,-9250.579,-1217.0837,72.982376,100,0,0),
(81276,10,-9244.013,-1221.5687,73.25801,100,0,0),
(81276,11,-9237.786,-1218.4132,72.60152,100,0,0),
(81276,12,-9228.6455,-1216.0034,71.3414,100,0,0),
(81276,13,-9223.919,-1219.8649,71.142914,100,0,0),
(81276,14,-9223.334,-1225.5602,71.88022,100,0,0),
(81276,15,-9227.832,-1230.0409,72.417816,100,0,0),
(81276,16,-9233.157,-1233.0961,72.78427,100,0,0),
(81276,17,-9239.661,-1238.44,73.35935,100,0,0),
(81276,18,-9246.503,-1240.7382,73.68406,100,0,0),
(81276,19,-9255.637,-1242.5173,73.93406,100,0,0),
(81276,20,-9271.392,-1237.0328,72.43053,100,0,0),
(81276,21,-9286.24,-1229.8113,69.91721,100,0,0),
(81276,22,-9296.3955,-1222.9778,69.24387,100,0,0),
-- 81282
(81282,1,-9220.988,-1242.8812,75.84574,100,0,0),
(81282,2,-9224.396,-1239.2285,74.80424,100,0,0),
(81282,3,-9229.741,-1233.4546,72.881386,100,0,0),
(81282,4,-9229.469,-1225.3748,72.250336,100,0,0),
(81282,5,-9230.053,-1218.9635,71.757416,100,0,0),
(81282,6,-9234.149,-1212.2711,71.30318,100,0,0),
(81282,7,-9240.99,-1207.6913,71.07857,100,0,0),
(81282,8,-9248.341,-1206.1666,71.45088,100,0,0),
(81282,9,-9262.075,-1205.0026,71.1335,100,0,0),
(81282,10,-9271.428,-1206.8403,70.8137,100,0,0),
(81282,11,-9275.644,-1203.4174,70.67405,100,0,0),
(81282,12,-9282.249,-1198.094,70.33581,100,0,0),
(81282,13,-9286.805,-1195.4396,70.02404,100,0,0),
(81282,14,-9287.356,-1187.7378,70.67712,100,0,0),
(81282,15,-9283.218,-1180.9159,70.89318,100,0,0),
(81282,16,-9274.854,-1174.4172,70.30578,100,0,0),
(81282,17,-9267.538,-1174.3511,69.52941,100,0,0),
(81282,18,-9263.049,-1175.9312,69.15297,100,0,0),
(81282,19,-9254.506,-1186.7695,68.90663,100,0,0),
(81282,20,-9250.077,-1191.025,68.854385,100,0,0),
(81282,21,-9244.269,-1197.9149,69.4745,100,0,0),
(81282,22,-9233.932,-1209.0099,70.76973,100,0,0),
(81282,23,-9227.543,-1211.9412,70.358734,100,0,0),
(81282,24,-9220.029,-1212.9326,69.444916,100,0,0),
(81282,25,-9224.566,-1212.334,69.875336,100,0,0),
(81282,26,-9205.816,-1227.5469,72.736664,100,0,0),
(81282,27,-9205.25,-1236.92,74.6964,100,0,0),
(81282,28,-9211.96,-1241.56,75.7314,100,0,0);

-- `Stonecairn Lake` - East Murlock Village
-- missing added - guids free in all 3 DBs
DELETE FROM creature_addon WHERE guid IN (11420,11424);
DELETE FROM creature_movement WHERE id IN (11420,11424);
DELETE FROM game_event_creature WHERE guid IN (11420,11424);
DELETE FROM game_event_creature_data WHERE guid IN (11420,11424);
DELETE FROM creature_battleground WHERE guid IN (11420,11424);
DELETE FROM creature_linking WHERE guid IN (11420,11424)
 OR master_guid IN (11420,11424);
DELETE FROM creature WHERE guid IN (11420,11424);
INSERT INTO creature (guid, id, map, spawnmask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) values
(11420,732,0,1,-9036.388,-1212.1522,65.76564,2.147,180,180,0,0),
(11424,46,0,1,-8958.16,-1188.93,72.1019,2.00883,180,180,5,1);

-- updates
UPDATE creature SET spawndist = 0, MovementType = 0 WHERE guid IN (81322,81323);
UPDATE creature SET spawndist = 10, MovementType = 1 WHERE guid = 81297;
UPDATE creature SET spawndist = 0, MovementType = 0 WHERE guid = 81298;
UPDATE creature SET position_x = -9002.81, position_y = -1197.3529, position_z = 71.27279, spawndist = 0, MovementType = 0 WHERE guid = 81325; -- was inside tree
UPDATE creature SET position_x = -9038.879, position_y = -1218.7734, position_z = 70.2072, spawndist = 0, MovementType = 0 WHERE guid = 81298;
UPDATE creature SET position_x = -9010.051, position_y = -1247.555, position_z = 74.440666, spawndist = 15, MovementType = 1 WHERE guid = 81308;
UPDATE creature SET position_x = -8953.075, position_y = -1223.727, position_z = 74.449448, spawndist = 15, MovementType = 1 WHERE guid = 81318;
UPDATE creature SET position_x = -8955.617, position_y = -1143.83, position_z = 65.845322, spawndist = 15, MovementType = 1 WHERE guid = 81324;
UPDATE creature SET position_x = -9250.969, position_y = -1238.903, position_z = 73.774742, spawndist = 15, MovementType = 1 WHERE guid = 81275;
UPDATE creature SET position_x = -9253.235, position_y = -1193.57, position_z = 69.798180, spawndist = 15, MovementType = 1 WHERE guid = 81278;
UPDATE creature SET position_x = -9117.557, position_y = -1225.275, position_z = 67.595016, spawndist = 20, MovementType = 1 WHERE guid = 81292;
UPDATE creature SET position_x = -8931.544, position_y = -1188.461, position_z = 72.672211, spawndist = 20, MovementType = 1 WHERE guid = 81319;
UPDATE creature SET position_x = -9321.179, position_y = -1175.947, position_z = 67.613960, spawndist = 20, MovementType = 1 WHERE guid = 81269;
UPDATE creature SET position_x = -8969.82, position_y = -1191.7047, position_z = 71.09738, spawndist = 0, MovementType = 2 WHERE guid = 81315;
UPDATE creature SET position_x = -9035.657, position_y = -1226.2589, position_z = 70.06186, spawndist = 0, MovementType = 2 WHERE guid = 81305;
UPDATE creature SET position_x = -8986.052, position_y = -1213.2578, position_z = 72.665215, spawndist = 0, MovementType = 2 WHERE guid = 81301;
UPDATE creature SET position_x = -8991.151, position_y = -1214.2504, position_z = 72.6453, spawndist = 0, MovementType = 2 WHERE guid = 81317;
-- waypoints
DELETE FROM creature_movement WHERE id IN (81315,81305,81301,81317);
INSERT INTO creature_movement (`id`, `point`, `positionx`, `positiony`, `positionz`, `orientation`, `waittime`, `scriptid`) VALUES
-- 81315
(81315,1,-8969.82,-1191.7047,71.09738,100,3000,0),
(81315,2,-8991.204,-1194.2307,70.41283,100,3000,0),
-- 81305
(81305,1,-9035.657,-1226.2589,70.06186,100,3000,0),
(81305,2,-9020.09,-1222.5396,72.254425,100,1000,0),
-- 81301
(81301,1,-8986.052,-1213.2578,72.665215,100,3000,0),
(81301,2,-8994.698,-1202.1344,71.23901,100,1000,0),
-- 81317
(81317,1,-8991.151,-1214.2504,72.6453,100,3000,0),
(81317,2,-8973.071,-1177.693,68.57616,100,3000,0);

-- East from `Blackwell Pumpkin Patch` Murlock Village
UPDATE creature SET position_x = -9776.151367, position_y = -1123.723022, position_z = 36.303623, spawndist = 15, MovementType = 1 WHERE guid = 81186;
UPDATE creature SET position_x = -9824.042969, position_y = -1155.480103, position_z = 31.982052, spawndist = 15, MovementType = 1 WHERE guid = 81192;
UPDATE creature SET position_x = -9841.672852, position_y = -1187.429565, position_z = 33.466793, spawndist = 20, MovementType = 1 WHERE guid = 81209;
UPDATE creature SET position_x = -9872.596680, position_y = -1187.538330, position_z = 30.012520, spawndist = 15, MovementType = 1 WHERE guid = 81198;
UPDATE creature SET position_x = -9891.633789, position_y = -897.640808, position_z = 30.064766, spawndist = 15, MovementType = 1 WHERE guid = 80846; -- far west (south from `Blackwell Pumpkin Patch`)

-- Murloc Forager 46 & Murloc Lurker 732
-- share same spawn points
DELETE FROM creature_spawn_entry WHERE entry IN (46,732);
INSERT INTO creature_spawn_entry (guid,entry)
SELECT guid,id FROM creature
WHERE id in (46)
union
SELECT guid,732 FROM creature
WHERE id in (46)
union
SELECT guid,id FROM creature
WHERE id in (732)
union
SELECT guid,46 FROM creature
WHERE id in (732);
UPDATE creature SET id = 0 WHERE id IN (46,732);

