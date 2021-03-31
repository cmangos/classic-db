-- q.1363 'Mazen's Behest'
DELETE FROM dbscripts_on_quest_start WHERE id = 1363;
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1363,1,31,5386,50,0,0,0,0,0,0,0,0,0,0,0,0,'search for 5386'),
(1363,10,1,5,0,0,5386,100,0,0,0,0,0,0,0,0,0,''),
(1363,100,0,0,0,0,5386,100,0,2000003303,0,0,0,0,0,0,0,'');
UPDATE quest_template SET StartScript = 1363 WHERE entry = 1363;
DELETE FROM dbscript_string WHERE entry = 2000003303;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000003303,'I\'m lucky to be alive!',0,0,7,0,NULL);
