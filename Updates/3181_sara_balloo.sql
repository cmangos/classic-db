-- q.683 'Sara Balloo's Plea'
DELETE FROM dbscripts_on_quest_end WHERE id = 683;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(683,0,0,0,0,0,0,0,0,2000003219,0,0,0,0,0,0,0,'');
UPDATE quest_template SET CompleteScript = 683 WHERE entry = 683;
DELETE FROM dbscript_string WHERE entry = 2000003219;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000003219,'%s carefully studies Sara Balloo\'s note and lets out a long, solemn sigh.',0,2,0,0,NULL);
