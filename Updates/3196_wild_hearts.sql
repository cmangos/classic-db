-- q.429 'Wild Hearts'
DELETE FROM dbscripts_on_quest_end WHERE id = 429;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(429,0,29,2,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'NPCFlags removed'),
(429,10,0,0,0,0,0,0,0,2000003232,0,0,0,0,0,0,0,''),
(429,100,1,69,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'),
(429,4900,29,2,1,0,0,0,0x04,0,0,0,0,0,0,0,0,'NPCFlags added'),
(429,5000,1,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'');
UPDATE quest_template SET CompleteScript = 429 WHERE entry = 429;
DELETE FROM dbscript_string WHERE entry = 2000003232;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000003232,'%s concocts a potion for $n.',0,2,0,0,NULL);
