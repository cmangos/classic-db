-- Add quest end script for quest 'Forsaken Diseas' entry 1011
-- ServerToClient: SMSG_SPELL_START (0x2C3A) Length: 102 ConnIdx: 1 Time: 05/02/2022 16:13:53.153 Number: 444
-- (Cast) CasterGUID: Full: 0x204CB0002003C200000021000066D3D8 Creature/0 R4908/S33 Map: 1 Entry: 3848 Low: 6738904
-- Update spawn and Waypoints from Kayneth Stillwind
UPDATE creature SET position_x='2954.253', position_y='-3215.4094', position_z='169.20816', orientation='2.8972' WHERE (guid='32331');

DELETE FROM creature_equip_template WHERE entry='3848';
INSERT INTO creature_equip_template (entry, equipentry2) VALUES ('3848', '12870');
UPDATE creature_template SET EquipmentTemplateId='3848' WHERE (Entry='3848');

SET @PATH := 3848;
DELETE FROM creature_movement_template WHERE Entry=@PATH;
INSERT INTO creature_movement_template (Entry, PathId, Point, PositionX, PositionY, PositionZ, Orientation, WaitTime, ScriptId) VALUES 
(@PATH,0,1,2954.253,-3215.4094,169.20816,2.8972,100000, 0),
(@PATH,0,2,2964.634,-3215.8254,168.88034,100,0,0),
(@PATH,0,3,2966.3733,-3213.9753,168.95972,100,50000, 384801),
(@PATH,0,4,2959.9,-3214.6792,169.20816,100,0,0),
(@PATH,0,5,2954.253,-3215.4094,169.20816, 100,0,0);

DELETE FROM dbscripts_on_creature_movement WHERE id=384801;
INSERT INTO dbscripts_on_creature_movement (id, delay, priority, command, datalong, datalong2, buddy_entry, search_radius, dataint, dataint2,x, y, z, comments) VALUES 
('384801', '5000', '0', '42', '0', '0', '0','0', '3699', '12870', '0', '0','0','Kayneth Stillwind - Equip Bottle'),
('384801', '8000', '0', '1', '133', '0', '0','0', '0', '0', '0', '0','0','Kayneth Stillwind - Set Emote'),
('384801', '40000', '0', '1', '0', '0', '0','0', '0', '0', '0', '0','0','Kayneth Stillwind - Remove Emote'),
('384801', '43000', '0', '42', '0', '0', '0','0', '0', '12870', '0', '0','0','Kayneth Stillwind - Remove MH Bottle'),
('384801', '47000', '0', '0', '0', '0', '0','0', '14108', '0', '0', '0','0','Kayneth Stillwind - Talk');

-- Add Complete Script to Quest
UPDATE quest_template SET CompleteScript=1011 WHERE entry=1011;

-- This should be an emote
UPDATE broadcast_text SET ChatTypeID='2' WHERE (Id='1342');

DELETE FROM dbscripts_on_quest_end WHERE id='1011';
INSERT INTO dbscripts_on_quest_end (id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, x, y, z, comments) VALUES 
('1011', '0', '0', '21', '1', '0', '0', '1421', '75', '0', '0', '0', '0', '0', 'Forsaken Diseas - Kayneth Stillwind - Set ActiveState'),
('1011', '0', '0', '29', '2', '0', '0', '1421', '75', '0', '0', '0', '0', '0', 'Forsaken Diseas - Kayneth Stillwind - Remove Questgiver Flag'),
('1011', '0', '0', '15', '6354', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Forsaken Diseas - Kayneth Stillwind - Cast Spell'),
('1011', '0', '0', '15', '6354', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Forsaken Diseas - Kayneth Stillwind - Cast Spell'),
('1011', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1342', '0', '0', '0', 'Forsaken Diseas - Kayneth Stillwind - Say Text'),
('1011', '5000', '0', '15', '6355', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Forsaken Diseas - Kayneth Stillwind - Cast Spell'),
('1011', '5000', '0', '1', '64', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Forsaken Diseas - Kayneth Stillwind - Emote'),
('1011', '7000', '0', '0', '0', '0', '0', '0', '0', '0', '1316', '0', '0', '0', 'Forsaken Diseas - Kayneth Stillwind - Say Text'),
('1011', '13000', '0', '0', '0', '0', '0', '0', '0', '0', '1318', '0', '0', '0', 'Forsaken Diseas - Kayneth Stillwind - Say Text'),
('1011', '16000', '0', '1', '15', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Forsaken Diseas - Kayneth Stillwind - Emote'),
('1011', '20000', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Forsaken Diseas - Kayneth Stillwind - Remove Emote'),
('1011', '20000', '0', '0', '0', '0', '0', '0', '0', '0', '1319', '0', '0', '0', 'Forsaken Diseas - Kayneth Stillwind - Say Text'),
('1011', '20000', '0', '29', '2', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'Forsaken Diseas - Kayneth Stillwind - Add Questgiver Flag'),
('1011', '20000', '0', '21', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Forsaken Diseas - Kayneth Stillwind - Remove ActiveState');
