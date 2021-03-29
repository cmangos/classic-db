-- q.1136 'Frostmaw'
DELETE FROM dbscripts_on_event WHERE id = 727;
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES 
(727,1,31,4504,100,0,0,0,0x08,0,0,0,0,0,0,0,0,'search for buddy - 4504 - only one available'),
(727,100,10,4504,600000,0,0,0,0x08,0,0,0,0,234.22688,-239.22664,141.32474,2.84,'summon: Frostmaw');
DELETE FROM creature_movement_template WHERE entry = 4504;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(4504,1,221.10156,-254.34375,145.13052,100,0,0),
(4504,2,221.40279,-262.92282,145.25552,100,0,0),
(4504,3,229.7501,-267.23904,145.87318,100,0,0),
(4504,4,241.35802,-267.15924,144.7831,100,0,0),
(4504,5,247.68039,-266.39713,144.98044,100,0,0),
(4504,6,261.16113,-267.38702,144.8716,100,15000,450401),
(4504,7,248.05843,-267.17468,145.08376,100,0,0),
(4504,8,242.37035,-266.9359,144.5908,100,0,0),
(4504,9,237.8304,-267.07703,145.80971,100,0,0),
(4504,10,229.01921,-267.1084,145.80151,100,0,0),
(4504,11,222.44646,-260.98682,145.13052,100,0,0),
(4504,12,222.2341,-253.12283,144.81778,100,0,0),
(4504,13,230.49452,-242.26663,142.41824,100,1000,450402);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (450401,450402);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(450401,100,0,0,0,0,0,0,0x04,2000003252,0,0,0,0,0,0,0,''),
(450402,100,0,0,0,0,0,0,0x04,2000003253,0,0,0,0,0,0,0,''),
(450402,200,18,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'despawn self');
DELETE FROM dbscript_string WHERE entry BETWEEN 2000003252 AND 2000003253;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000003252,'%s devours the carcass!',0,2,0,0,NULL),
(2000003253,'%s disappears into the snow.',0,2,0,0,NULL);
-- Frostmaw 4504
UPDATE creature_template SET MovementType = 2 WHERE entry = 4504;
