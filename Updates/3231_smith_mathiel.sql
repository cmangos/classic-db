-- q.1692 'Smith Mathiel'
DELETE FROM dbscripts_on_quest_end WHERE id = 1692;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1692,0,29,2,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'NPCFlags removed'),
(1692,10,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'active'),
(1692,100,0,0,0,0,0,0,0x04,2000003269,0,0,0,0,0,0,0,''),
(1692,4000,0,0,0,0,0,0,0,2000003270,0,0,0,0,0,0,0,''),
(1692,4100,29,2,1,0,0,0,0x04,0,0,0,0,0,0,0,0,'NPCFlags added'),
(1692,4200,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'unactive');
UPDATE quest_template SET CompleteScript = 1692 WHERE entry = 1692;
DELETE FROM dbscript_string WHERE entry BETWEEN 2000003269 AND 2000003270;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000003269,'%s begins crafting...',0,2,0,0,NULL),
(2000003270,'It is done.  I have your weapon, $n.',0,0,0,1,NULL);
