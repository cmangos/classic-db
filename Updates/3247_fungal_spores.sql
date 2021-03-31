-- q.848 'Fungal Spores'
DELETE FROM dbscripts_on_quest_end WHERE id = 848;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(848,0,29,2,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'NPCFlags removed'),
(848,10,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'active'),
(848,100,3,0,0,0,0,0,0x04,0,0,0,0,0,0,0,4.356,''),
(848,1000,0,0,0,0,0,0,0,2000003297,0,0,0,0,0,0,0,''),
(848,2000,13,0,0,0,4166,30,1|0x08,0,0,0,0,0,0,0,0,'object: custom anim'),
(848,7000,3,0,0,0,0,0,0x04,0,0,0,0,0,0,0,6.23,''),
(848,7100,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'emote'),
(848,7200,0,0,0,0,0,0,0,2000003298,0,0,0,0,0,0,0,''),
(848,7300,29,3,1,0,0,0,0x04,0,0,0,0,0,0,0,0,'NPCFlags added'),
(848,7400,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'unactive');
UPDATE quest_template SET CompleteScript = 848 WHERE entry = 848;
DELETE FROM dbscript_string WHERE entry BETWEEN 2000003297 AND 2000003298;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000003297,'%s places the spores within his alchemical instruments...',0,2,0,0,NULL),
(2000003298,'Ah, good.  These spores have rendered nicely.  Thank you, $N.',0,0,0,0,NULL);
