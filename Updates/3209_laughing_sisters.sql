-- q.1945 'Laughing Sisters'
DELETE FROM dbscripts_on_quest_end WHERE id = 1945;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1945,0,29,2,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'NPCFlags removed'),
(1945,100,0,0,0,0,0,0,0,2000003238,0,0,0,0,0,0,0,''),
(1945,2000,1,69,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'),
(1945,6000,1,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(1945,8000,0,0,0,0,0,0,0,2000003239,0,0,0,0,0,0,0,''),
(1945,8100,29,2,1,0,0,0,0x04,0,0,0,0,0,0,0,0,'NPCFlags added');
UPDATE quest_template SET CompleteScript = 1945 WHERE entry = 1945;
DELETE FROM dbscript_string WHERE entry BETWEEN 2000003238 AND 2000003239;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000003238,'I shall now begin the robe...',0,0,1,0,NULL),
(2000003239,'Your robe is complete, $n.',0,0,0,2,NULL);
