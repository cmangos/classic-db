-- q.2841 'Rig Wars'
DELETE FROM dbscripts_on_quest_start WHERE id = 2841;
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2841,1,31,3413,30,0,0,0,0,0,0,0,0,0,0,0,0,'search for 3413'),
(2841,10,0,0,0,0,3413,40,0,2000003243,0,0,0,0,0,0,0,'');
UPDATE quest_template SET StartScript = 2841 WHERE entry = 2841;
DELETE FROM dbscript_string WHERE entry = 2000003243;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000003243,'Come and have a talk with me if you\'re going to go to Gnomeregan, $N!',0,4,0,0,NULL);
