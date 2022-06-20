-- Pamela's Doll.
DELETE FROM dbscripts_on_quest_end WHERE id='5149';
INSERT INTO dbscripts_on_quest_end(id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, datafloat, x, y, z, o, speed, condition_id, comments) VALUES
(5149,0,0,0,0,0,0,0,0,0,6416,0,0,0,0,0,0,0,0,0,0,'Pamelas Doll - Pamela - Say Text'),
(5149,0,1,9,1081001,10,0,0,0,0,6416,0,0,0,0,0,0,0,0,0,0,'Pamelas Doll - Pamela - Respawn Gameobject'),
(5149,4000,0,0,0,0,0,0,0,0,6417,0,0,0,0,0,0,0,0,0,0,'Pamelas Doll - Pamela - Say Text');

UPDATE quest_template SET CompleteScript='5149' WHERE entry='5149'; 

-- Free guid in Classic, TBC and WOTLK
DELETE FROM gameobject WHERE guid='1081001';
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, state) VALUES 
('1081001', '176247', '0', '1454.9972', '-3594.6245', '86.9498', '2.6354442', '0.9681473', '0.2503814', '-10', '-10', '1');

-- Add random Movement to Pamela.
UPDATE creature SET spawndist=3, MovementType=1 WHERE guid=53736;
