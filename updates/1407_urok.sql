-- q.4867 'Urok Doomhowl'
-- Missing oblects added - empty guids reused -- UDB ONLY
DELETE FROM gameobject WHERE guid IN (66197,66201,66203,66204,66208,66209,66210,66211);
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs, animprogress, state) VALUES
-- Ogre Coup Summoning Circle
( 66197, 175571, 229, -47.9095, -369.089, 51.5425, 1.378809, 0, 0, 0.400546, -0.916277, -65, 255, 1),
( 66201, 175571, 229, -27.8804, -385.891, 48.5067, 3.700105, 0, 0, 0.400546, -0.916277, -65, 255, 1),
( 66203, 175571, 229, -13.7275, -384.816, 48.9746, 3.68265, 0, 0, 0.400546, -0.916277, -65, 255, 1),
( 66204, 175571, 229, -12.3689, -376.475, 49.335, 5.044002, 0, 0, 0.835255, -0.549863, -65, 255, 1),
( 66208, 175571, 229, -24.8824, -369.619, 49.7059, 3.403396, 0, 0, 0.835255, -0.549863, -65, 255, 1),
( 66209, 175571, 229, -34.5437, -370.233, 50.3396, 5.358161, 0, 0, 0.835255, -0.549863, -65, 255, 1),
-- Challenge to Urok
( 66210, 175584, 229, -14.3415, -395.729, 48.5381, 2.862335, 0, 0, 0.839392, 0.543527, -7200, 255, 1),
-- Challenge to Urok Trap
( 66211, 175589, 229, -14.3415, -395.729, 48.5381, 2.862335, 0, 0, 0.839392, 0.543527, 30, 255, 1);
-- Urok's Tribute Pile - position Y corrected
UPDATE gameobject SET position_y = -395.729 WHERE guid = 99791;
-- updates for all ogres in this event 
UPDATE creature_template SET FactionAlliance = 40, FactionHorde = 40, MovementType = 2, ExtraFlags = 0 WHERE entry IN (10584,10601,10602);
DELETE FROM creature_movement_template WHERE entry IN (10584,10601,10602);
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(10584,1,-18.9341,-389.926,48.6219,1000,1058401,255,0,0),
(10601,1,-18.9341,-389.926,48.6219,1000,1060101,255,0,0),
(10602,1,-18.9341,-389.926,48.6219,1000,1060201,255,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1058401,1060101,1060201);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1058401,0,20,1,10,0,0,8,0,0,0,0,0,0,0,0,'movement chenged to 1:random'),
(1060101,0,20,1,10,0,0,8,0,0,0,0,0,0,0,0,'movement chenged to 1:random'),
(1060201,0,20,1,10,0,0,8,0,0,0,0,0,0,0,0,'movement chenged to 1:random');

-- event
DELETE FROM dbscripts_on_event WHERE id = 4845;
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(4845,0,9,66210,7200,0,0,0,0,0,0,0,0,0,0,0,'respawn gobject'),
(4845,0,9,66197,65,0,0,0,0,0,0,0,0,0,0,0,'respawn gobject'),
(4845,0,9,66201,65,0,0,0,0,0,0,0,0,0,0,0,'respawn gobject'),
(4845,1,9,66203,65,0,0,0,0,0,0,0,0,0,0,0,'respawn gobject'),
(4845,1,9,66204,65,0,0,0,0,0,0,0,0,0,0,0,'respawn gobject'),
(4845,1,9,66208,65,0,0,0,0,0,0,0,0,0,0,0,'respawn gobject'),
(4845,1,9,66209,65,0,0,0,0,0,0,0,0,0,0,0,'respawn gobject'),
-- wave 1
(4845,5,10,10602,432000,0,0,0,1,0,0,0,-33.04, -385.57, 48.60, 5.98,'summon MAGUS'),
(4845,5,10,10601,432000,0,0,0,1,0,0,0,-16.12, -376.99, 49.20, 4.89,'summon ENFORCER'),
(4845,5,10,10601,432000,0,0,0,1,0,0,0,-25.13, -376.60, 48.94, 5.17,'summon ENFORCER'),
-- wave 2
(4845,13,10,10602,432000,0,0,0,1,0,0,0,-14.93, -381.99, 49.04, 4.70,'summon MAGUS'),
(4845,28,10,10602,432000,0,0,0,1,0,0,0,-35.47, -371.36, 50.22, 4.79,'summon MAGUS'),
(4845,28,10,10601,432000,0,0,0,1,0,0,0,-47.54, -368.11, 51.67, 5.70,'summon ENFORCER'),
-- wave 3
(4845,42,10,10602,432000,0,0,0,1,0,0,0,-33.04, -385.57, 48.60, 5.98,'summon MAGUS'),
(4845,42,10,10602,432000,0,0,0,1,0,0,0,-14.58, -375.16, 49.31, 4.73,'summon MAGUS'),
(4845,42,10,10601,432000,0,0,0,1,0,0,0,-24.91, -376.41, 48.95, 4.67,'summon ENFORCER'),
-- Urok
(4845,58,10,10602,432000,0,0,0,1,0,0,0,-47.54, -368.11, 51.67, 5.70,'summon MAGUS'),
(4845,66,10,10584,432000,0,0,0,1,0,0,0,-23.97, -391.89, 48.58, 1.68,'summon Urok');
