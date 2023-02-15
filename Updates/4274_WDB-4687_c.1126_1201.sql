-- Dun Morogh

-- Large Crag Boar 1126
-- duplicate
DELETE FROM creature_addon WHERE guid=4114;
DELETE FROM creature_movement WHERE Id=4114;
DELETE FROM game_event_creature WHERE guid=4114;
DELETE FROM game_event_creature_data WHERE guid=4114;
DELETE FROM creature_battleground WHERE guid=4114;
DELETE FROM creature_linking WHERE guid=4114
 OR master_guid=4114;
DELETE FROM creature WHERE guid=4114;
-- moved to correct location
UPDATE creature SET position_x = -5618.947754, position_y = -1004.367798, position_z = 394.253937, spawndist = 10, MovementType = 1 WHERE guid = 4129;
UPDATE creature SET position_x = -5710.714355, position_y = -1022.577148, position_z = 395.647705, spawndist = 20, MovementType = 1 WHERE guid = 4168; -- has large area to cover

-- Snow Leopard 1201
-- duplicate
DELETE FROM creature_addon WHERE guid IN (4127,4345);
DELETE FROM creature_movement WHERE Id IN (4127,4345);
DELETE FROM game_event_creature WHERE guid IN (4127,4345);
DELETE FROM game_event_creature_data WHERE guid IN (4127,4345);
DELETE FROM creature_battleground WHERE guid IN (4127,4345);
DELETE FROM creature_linking WHERE guid=4127
 OR master_guid IN (4127,4345);
DELETE FROM creature WHERE guid IN (4127,4345);
-- moved to correct location
UPDATE creature SET position_x = -5618.725098, position_y = -945.789368, position_z = 406.674500 WHERE guid = 4130;
UPDATE creature SET position_x = -5837.104004, position_y = -645.280212, position_z = 398.441376 WHERE guid = 3640;
UPDATE creature SET position_x = -5584.595703, position_y = -964.475464, position_z = 393.589233, spawndist = 0, MovementType = 4 WHERE guid = 4132; -- linear wp run
UPDATE creature SET position_x = -5814.4385, position_y = -738.78864, position_z = 397.88248, spawndist = 0, MovementType = 4 WHERE guid = 4110; -- linear wp run
UPDATE creature SET spawndist = 15 WHERE id = 1201 AND MovementType = 1;
-- waypoints
DELETE FROM creature_movement WHERE id IN (4110,4132);
INSERT INTO creature_movement (Id,Point,PositionX,PositionY,PositionZ,Orientation,Waittime,Scriptid) VALUES
-- 4110
(4110,1,-5814.4385,-738.78864,397.88248,100,1,5),
(4110,2,-5826.886,-705.339,397.7824,100,0,0),
(4110,3,-5845.7085,-688.83185,398.1507,100,0,0),
(4110,4,-5867.3716,-671.70355,398.6631,100,0,0),
(4110,5,-5877.019,-648.9393,398.19864,100,0,0),
(4110,6,-5865.526,-626.1964,398.29456,100,10000,0),
-- 4132
(4132,1,-5584.5957,-964.47546,393.62155,100,1,5),
(4132,2,-5605.8887,-990.5213,393.65115,100,0,0),
(4132,3,-5633.336,-998.0804,395.14233,100,0,0),
(4132,4,-5666.615,-990.25336,394.56616,100,0,0),
(4132,5,-5705.4463,-999.81976,394.59573,100,0,0),
(4132,6,-5746.858,-1000.2664,396.16318,100,10000,0);

-- duplicate
DELETE FROM creature_addon WHERE guid=2099;
DELETE FROM creature_movement WHERE Id=2099;
DELETE FROM game_event_creature WHERE guid=2099;
DELETE FROM game_event_creature_data WHERE guid=2099;
DELETE FROM creature_battleground WHERE guid=2099;
DELETE FROM creature_linking WHERE guid=2099
 OR master_guid=2099;
DELETE FROM creature WHERE guid=2099 AND `id` = 1126; -- duplicate 5090313 in wotlkmangos

-- classic only
DELETE FROM creature_spawn_entry WHERE guid=3217;
DELETE FROM creature_addon WHERE guid=3217;
DELETE FROM creature_movement WHERE Id=3217;
DELETE FROM game_event_creature WHERE guid=3217;
DELETE FROM game_event_creature_data WHERE guid=3217;
DELETE FROM creature_battleground WHERE guid=3217;
DELETE FROM creature_linking WHERE guid=3217
 OR master_guid=3217;
DELETE FROM creature WHERE guid=3217;
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES (3217, 0, 0, -12875.1, -827.561, 54.6184, 5.75208, 300, 300, 3, 1);
INSERT INTO `creature_spawn_entry` (`guid`, `entry`) VALUES
(3217, 667),
(3217, 696),
(3217, 780);

