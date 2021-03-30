-- q.2939 'In Search of Knowledge'
DELETE FROM dbscripts_on_quest_end WHERE id = 2939;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2939,0,0,0,0,0,0,0,0,2000003266,0,0,0,0,0,0,0,'');
UPDATE quest_template SET CompleteScript = 2939 WHERE entry = 2939;
DELETE FROM dbscript_string WHERE entry = 2000003266;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000003266,'Take a look around, $n. Perhaps you will find something that I have missed.',0,0,0,1,NULL);
