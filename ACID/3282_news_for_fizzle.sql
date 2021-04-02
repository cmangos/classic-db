-- q.1137 'News for Fizzle'
DELETE FROM dbscripts_on_quest_end WHERE id = 1137;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1137,200,0,0,0,0,0,0,0,2000003320,0,0,0,0,0,0,0,''),
(1137,3000,1,1,0,0,0,0,6,0,0,0,0,0,0,0,0,''),
(1137,5000,0,0,0,0,0,0,0,2000003321,0,0,0,0,0,0,0,'');
UPDATE quest_template SET CompleteScript = 1137 WHERE entry = 1137;
DELETE FROM dbscript_string WHERE entry BETWEEN 2000003320 AND 2000003321;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000003320,'%s listens as $N tells him of $ghis:her; adventures in the Badlands.',0,0,0,0,NULL),
(2000003321,'Astounding!  So then indurium is the key!',0,0,0,1,NULL);
