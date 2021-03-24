-- q.1921 'Gathering Materials'
DELETE FROM dbscripts_on_quest_end WHERE id = 1921;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1921,10,29,2,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'NPCFlags removed'),
(1921,100,0,0,0,0,0,0,0,2000003221,0,0,0,0,0,0,0,''), -- 21:40:16.000
(1921,3000,1,133,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''), -- 21:40:19.110
(1921,8500,1,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(1921,9000,0,0,0,0,0,0,0,2000003222,0,0,0,0,0,0,0,''), -- 21:40:25.735
(1921,9500,29,2,1,0,0,0,0x04,0,0,0,0,0,0,0,0,'NPCFlags added');
UPDATE quest_template SET CompleteScript = 1921 WHERE entry = 1921;
DELETE FROM dbscript_string WHERE entry BETWEEN 2000003221 AND 2000003222;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000003221,'These are fine pieces, $n.  Let me get started on your robe.',0,0,7,1,NULL),
(2000003222,'That\'s it!  It\'s all finished, $n.',0,0,7,71,NULL);
