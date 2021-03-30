-- q.346 'Return to Kristoff'
DELETE FROM dbscripts_on_quest_end WHERE id = 346;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(346,110,0,0,0,0,0,0,0,2000003275,0,0,0,0,0,0,0,'');
UPDATE quest_template SET CompleteScript = 346 WHERE entry = 346;
DELETE FROM dbscript_string WHERE entry = 2000003275;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000003275,'Thank you, $N.  May the Light bless you, $Gbrother:sister;, and guide your path.',0,0,7,1,NULL);
