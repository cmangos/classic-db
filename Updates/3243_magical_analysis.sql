-- q.602 'Magical Analysis'
DELETE FROM dbscripts_on_quest_end WHERE id = 602;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(602,0,29,2,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'NPCFlags removed'),
(602,10,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'active'),
(602,100,15,3659,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Cast: Mage Sight'),
(602,5000,0,0,0,0,0,0,0,2000003299,0,0,0,0,0,0,0,''),
(602,5100,29,2,1,0,0,0,0x04,0,0,0,0,0,0,0,0,'NPCFlags added'),
(602,5200,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'unactive');
UPDATE quest_template SET CompleteScript = 602 WHERE entry = 602;
DELETE FROM dbscript_string WHERE entry = 2000003299;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000003299,'How interesting... the Stone possesses great magical potential, but in a purely raw form...',0,0,7,0,NULL);
