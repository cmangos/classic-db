-- q.1701 'Fire Hardened Mail'
DELETE FROM dbscripts_on_quest_end WHERE id = 1701;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1701,0,29,2,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'NPCFlags removed'),
(1701,10,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'active'),
(1701,100,3,0,0,0,0,0,0x04,0,0,0,0,-8426.77,605.469,95.0252,1.41756,''),
(1701,3000,0,0,0,0,0,0,0x04,2000003278,0,0,0,0,0,0,0,''),
(1701,3100,1,233,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(1701,8000,1,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(1701,10000,3,0,0,0,0,0,0x04,0,0,0,0,-8427,600.092,94.706,3.281,''),
(1701,13000,3,0,0,0,0,0,0x04,0,0,0,0,0,0,0,3.281,''),
(1701,13100,0,0,0,0,0,0,0x04,2000003279,0,0,0,0,0,0,0,''),
(1701,13200,29,2,1,0,0,0,0x04,0,0,0,0,0,0,0,0,'NPCFlags added'),
(1701,13500,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'unactive');
UPDATE quest_template SET CompleteScript = 1701 WHERE entry = 1701;
DELETE FROM dbscript_string WHERE entry BETWEEN 2000003278 AND 2000003279;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000003278,'%s begins to work...',0,2,0,0,NULL),
(2000003279,'Finished!  And the results are amazing.  I must convey them to my associates Grimand, Mathiel and Klockmort!',0,0,7,1,NULL);
