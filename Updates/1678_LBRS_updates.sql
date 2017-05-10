-- Gizrul the Slavener
UPDATE creature_template SET MovementType = 2, SpeedWalk = 1 WHERE Entry = 10268;
DELETE FROM creature_movement_template WHERE entry = 10268;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(10268,1,-167.538,-415.014,76.1469,2000,1026801,1.56698),
(10268,2,-167.477,-406.849,76.1473,0,0,1.56698),
(10268,3,-167.444,-383.805,64.4009,0,0,1.5984),
(10268,4,-167.461,-361.946,64.4009,0,0,1.56698),
(10268,5,-167.618,-334.249,64.4009,0,0,1.59054),
(10268,6,-170.905,-326.795,64.4009,0,0,2.71366),
(10268,7,-179.014,-325.519,64.4113,0,0,3.18097),
(10268,8,-186.344,-326.651,64.4235,2000,1026802,3.39303);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1026801,1026802);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1026801,1,25,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'RUN ON'),
(1026802,1,20,1,3,0,0,0,0x08,0,0,0,0,0,0,0,0,'movement chenged to 1:random');

-- Quartermaster Zigris
UPDATE creature SET position_x = -191.052414, position_y = -475.636169, position_z = 87.390228, orientation = 5.441134, MovementType = 2, spawndist = 0 WHERE guid = 45749;
UPDATE creature_template SET MovementType = 2, SpeedWalk = 1 WHERE Entry = 9736;
DELETE FROM creature_movement_template WHERE entry = 9736;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(9736,1,-197.84,-475.872,87.3902,0,0,3.43366),
(9736,2,-204.115,-479.089,87.3902,20000,973601,3.86642),
(9736,3,-199.847,-475.276,87.3902,0,0,1.28184),
(9736,4,-198.268,-468.756,87.3902,0,0,1.61563),
(9736,5,-199.716,-463.531,87.3902,0,0,2.20547),
(9736,6,-202.282,-460.122,87.3902,20000,973601,2.50706),
(9736,7,-191.052414,-475.636169,87.390228,15000,0,5.441134);
DELETE FROM dbscripts_on_creature_movement WHERE id = 973601;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(973601,1,1,1,0,0,0,0,0,273,5,274,1,0,0,0,0,''),
(973601,7,1,1,0,0,0,0,0,273,5,274,1,0,0,0,0,''),
(973601,16,1,1,0,0,0,0,0,273,5,274,1,0,0,0,0,'');
