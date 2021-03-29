-- q.3449 'Arcane Runes'
DELETE FROM dbscripts_on_event WHERE id = 3084; 
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(3084,1,31,8446,100,0,0,0,0x08,0,0,0,0,0,0,0,0,'search for 8446 - terminate if alive'),
(3084,10,31,8392,100,0,0,0,0x08,0,0,0,0,0,0,0,0,'search for 8392 - terminate if alive'),
(3084,1000,10,8446,300000,0,0,0,0x08,0,0,0,0,2232.997,-7296.536,23.60208,0.4773213,'summon: Xiggs Fuselighter\'s Flyingmachine'),
(3084,29000,10,8392,300000,0,0,0,0x08,1,0,0,0,2250.676,-7222.611,14.00366,1.343904,'summon: Pilot Xiggs Fuselighter'),
(3084,29900,31,8392,100,0,0,0,0,0,0,0,0,0,0,0,0,'search for 8392'),
(3084,30000,0,0,0,0,8392,50,3,2000003257,0,0,0,0,0,0,0,'Pilot Xiggs Fuselighter: text');
DELETE FROM dbscript_string WHERE entry = 2000003257;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000003257,'Been waitin\' for ya, $n. Glad to see you\'ve come through. Do you have the shipment?',0,0,0,3,NULL);
-- Xiggs Fuselighter's Flyingmachine 8446
UPDATE creature_template SET InhabitType = 4, MovementType = 2 WHERE entry = 8446;
DELETE FROM creature_movement_template WHERE entry = 8446;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(8446,1,2256.533,-7223.155,15.21833,100,5000,3);
