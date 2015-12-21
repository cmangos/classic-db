-- Klaven Mortwake - Westfall
-- missing texts added
-- waypoints

-- Westfall
-- Klaven Mortwake
UPDATE creature SET position_x = -11124.1, position_y = 545.44, position_z = 70.4323, orientation = 1.72551, Spawndist = 0, MovementType = 2 WHERE guid = 66996;
UPDATE creature_template SET MovementType = 2 WHERE Entry = 7053;
DELETE FROM creature_movement_template WHERE entry = 7053;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES 
(7053, 1, -11124.1,545.44,70.4323, 24000, 705301, 1.72551, 0, 0),
(7053, 2, -11128.9,544.692,70.4022, 0, 0, 2.7881, 0, 0),
(7053, 3, -11133.4,550.86,70.3957, 180000, 0, 2.27306, 0, 0),
(7053, 4, -11132.2,539.132,70.3766, 180000, 0, 3.65131, 0, 0),
(7053, 5, -11133.4,550.86,70.3957, 180000, 0, 2.27306, 0, 0),
(7053, 6, -11132.2,539.132,70.3766, 180000, 0, 3.65131, 0, 0),
(7053, 7, -11128.9,544.692,70.4022, 3000, 705302, 2.7881, 0, 0);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 705301 AND 705302;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(705301,1,0,0,0,0,0,0,2000000786,0,0,0,0,0,0,0,''),
(705301,5,0,0,0,0,0,0,2000000787,0,0,0,0,0,0,0,''),
(705301,12,0,0,0,0,0,0,2000000788,0,0,0,0,0,0,0,''),
(705301,14,0,0,0,0,0,0,2000000789,0,0,0,0,0,0,0,''),
(705301,19,0,0,0,0,0,0,2000000790,0,0,0,0,0,0,0,''),
(705302,1,20,0,0,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 0:idle');
DELETE FROM db_script_string WHERE entry BETWEEN 2000000786 AND 2000000790;
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000000786,'%s wildly flips through the pages of a large tome.',0,2,0,0,NULL),
(2000000787,'The sweet irony -- Stormwind forces cut down in defense of their city, only to rise and fight alongside the Brotherhood as instruments of destruction. ',0,0,0,11,NULL),
(2000000788,'And should one die, two shall rise!',0,0,0,5,NULL),
(2000000789,'%s shuffles through the books.',0,2,0,0,NULL),
(2000000790,'Now where did I put the Venture Company formulations?',0,0,0,0,NULL);
