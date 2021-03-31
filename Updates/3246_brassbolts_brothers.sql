-- q.1179 'The Brassbolts Brothers'
DELETE FROM dbscripts_on_quest_end WHERE id = 1179;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1179,0,36,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'face Player'),
(1179,100,1,2,0,0,0,0,0,0,0,0,0,0,0,0,0,'emote'),
(1179,600,0,0,0,0,0,0,0,2000003296,0,0,0,0,0,0,0,''),
(1179,1000,15,6655,0,0,0,0,0,0,0,0,0,0,0,0,0,'Cast: Force Target - Bow'),
(1179,5000,3,0,0,0,0,0,0x04,0,0,0,0,0,0,0,6.04,'');
UPDATE quest_template SET CompleteScript = 1179 WHERE entry = 1179;
DELETE FROM dbscript_string WHERE entry = 2000003296;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000003296,'Thanks for the helmets, $N.  These will really reduce our medical bills...',0,0,0,0,NULL);
