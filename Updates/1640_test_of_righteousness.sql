-- q.1806 'The Test of Righteousness'
DELETE FROM dbscripts_on_quest_start WHERE id = 1806;
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1806,0,21,1,0,0,0,0,0,0,0,0,0,0,0,0,'active'),
(1806,0,29,2,2,0,0,0,0,0,0,0,0,0,0,0,'NpcFlags removed'),
(1806,1,3,0,0,0,0,0,0,0,0,0,-5094.52,-785.855,495.21,3.50204,''),
(1806,4,3,0,0,0,0,0,0,0,0,0,0,0,0,2.79125,''),
(1806,5,0,0,0,0,0,0,2000001143,0,0,0,0,0,0,0,''),
(1806,7,15,8912,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1806,9,15,8912,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1806,11,15,8912,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1806,12,9,22030,10,0,0,0,0,0,0,0,0,0,0,0,'respawn gobject'),
(1806,13,15,8912,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1806,15,15,8912,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1806,17,15,8912,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1806,19,0,0,0,0,0,0,2000001144,0,0,0,0,0,0,0,''),
(1806,24,3,0,0,0,0,0,0,0,0,0,-5089.28,-782.95,495.279,0.504059,''),
(1806,27,3,0,0,0,0,0,0,0,0,0,0,0,0,5.77704,''),
(1806,27,29,2,1,0,0,0,0,0,0,0,0,0,0,0,'NpcFlags added'),
(1806,27,0,0,0,0,0,0,2000001145,0,0,0,0,0,0,0,''),
(1806,28,21,0,0,0,0,0,0,0,0,0,0,0,0,0,'unactive');
UPDATE quest_template SET StartScript = 1806, DetailsEmote1 = 1 WHERE entry = 1806;
DELETE FROM db_script_string WHERE entry BETWEEN 2000001143 AND 2000001145;
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES 
(2000001143,'Let\'s get to work, $n!',0,0,0,0,NULL),
(2000001144,'I thank the Light for this blessing. May it be used for justice and to defend all good creatures.',0,0,0,16,NULL),
(2000001145,'Here you are, $n.',0,0,0,0,NULL);

-- Verigan's Fist
-- missing added - WoTLKDB free guids reused
DELETE FROM gameobject WHERE guid = 22030;
INSERT INTO gameobject VALUES 
(22030, 102413, 0, -5095.61, -785.424, 496.288, 1.37889, 0, 0, 0.636107, 0.771601, -10, 255, 1);
-- spell must have target xyz
DELETE FROM spell_target_position WHERE id = 8912;
INSERT INTO spell_target_position (id, target_map, target_position_x, target_position_y, target_position_z, target_orientation) VALUES
(8912, 0, -5095.6,-785.673,496.287,3.1526);
