-- q.3129 'Weapons of Spirit'
DELETE FROM dbscripts_on_quest_start WHERE id = 3129;
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(3129,0,21,1,0,0,0,0,0,0,0,0,0,0,0,0,'active'),
(3129,0,29,3,2,0,0,0,0,0,0,0,0,0,0,0,'quest flag removed'),
(3129,1,3,0,700,0,0,0,0,0,0,0,-4374.16,258.524,26.7082,3.89557,''),
(3129,3,3,0,700,0,0,0,0,0,0,0,-4377.55,256.056,26.5498,3.09839,''),
(3129,4,3,0,700,0,0,0,0,0,0,0,-4381.17,257.362,25.97,2.72925,''),
(3129,7,0,0,0,0,0,0,2000001117,0,0,0,0,0,0,0,''),
(3129,9,28,8,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_KNEEL'),
(3129,17,0,0,0,0,0,0,2000001118,0,0,0,0,0,0,0,''),
(3129,18,28,0,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_STAND'),
(3129,20,3,0,700,0,0,0,0,0,0,0,-4377.8,256.578,26.441,1.36188,''),
(3129,21,3,0,700,0,0,0,0,0,0,0,-4375.68,269.717,25.4947,5.9719,''),
(3129,24,3,0,0,0,0,0,0,0,0,0,0,0,0,4.72984,''),
(3129,24,29,3,1,0,0,0,0,0,0,0,0,0,0,0,'quest flag added'),
(3129,25,21,0,0,0,0,0,0,0,0,0,0,0,0,0,'unactive');
UPDATE quest_template SET StartScript = 3129 WHERE entry = 3129;
DELETE FROM db_script_string WHERE entry IN (2000001117,2000001118);
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES 
(2000001117,'%s gathers the materials together and begins to work.',0,2,0,0,NULL),
(2000001118,'I have completed the weapons, $n.',0,0,0,0,NULL);
