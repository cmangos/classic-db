-- q.637 'Sully Balloo's Letter'
DELETE FROM dbscripts_on_quest_end WHERE id = 637;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(637,0,0,0,0,0,0,0,0,2000003220,0,0,0,0,0,0,0,'');
UPDATE quest_template SET CompleteScript = 637 WHERE entry = 637;
DELETE FROM dbscript_string WHERE entry = 2000003220;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000003220,'This isn\'t fair!  My dearest Sully!  Come back to me!  No, $n!  Why did you bring me such news!',0,0,0,18,NULL);
