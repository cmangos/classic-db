-- End script for quest Samophlange.
DELETE FROM dbscripts_on_quest_end WHERE id='902';
-- old script, something got mixed up? guid 6579 is another go 162024 that tbc-db didnt have anymore
-- 902	1000	0	9	6579	13	0	0	0	0	0	0	0	0	-901.311	-3758.08	11.3853	4.09334	0	
-- 902	2000	0	1	173	0	0	0	0	0	0	0	0	0	0	0	0	0	0	
-- 902	8000	0	15	13727	0	0	0	0	4	0	0	0	0	0	0	0	0	0	
-- 902	9000	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	
INSERT INTO dbscripts_on_quest_end (id, delay, priority,  command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4,x, y, z, o, comments) VALUES 
('902 ', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4727', '0', '0', '0', '0','0', '0', '0', 'Samophlange - Sputtervalve - Say Text'),
('902 ', '0', '0', '9', '6552', '13', '0', '0', '0', '0', '0', '0', '0', '0', '0','0', '0', '0', 'Samophlange - Sputtervalve - Spawn Object'),
('902 ', '0', '1', '36', '0', '0', '0', '162024', '5', '1025', '0', '0', '0', '0', '0','0', '0', '0', 'Samophlange - Sputtervalve - Face Object'),
('902 ', '2000', '0', '1', '173', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0','0', '0', '0', 'Samophlange - Sputtervalve - Emote Mining'),
('902 ', '6000', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0','0', '0', '0', 'Samophlange - Sputtervalve - Stop Emote'),
('902 ', '6000', '0', '15', '13727', '162024', '0', '0', '4', '1025', '0', '0', '0', '0', '0','0', '0', '0', 'Samophlange - Sputtervalve - Cast Break Samophlange'),
('902 ', '8000', '0', '0', '0', '0', '0', '0', '0', '0', '4728', '0', '0', '0', '0', '0','0', '0', 'Samophlange - Sputtervalve - Say Text'),
('902 ', '8000', '0', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0','0', '0', '1.309', 'Samophlange - Sputtervalve - Reset Facing');

UPDATE quest_template SET CompleteScript= '902' WHERE entry= '902'; -- already set

DELETE FROM gameobject WHERE guid='6552'; -- classic-db, guid free
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state) VALUES 
('6552', '162024', '1', '-900.61115', '-3758.9548', '11.331928', '0', '0', '0', '0', '0', '-600', '-600', '0', '1');

DELETE FROM spell_script_target WHERE entry='13727'; -- already in db
INSERT INTO spell_script_target (entry, type, targetEntry) VALUES -- default is 0
('13727', 0, '162024');
