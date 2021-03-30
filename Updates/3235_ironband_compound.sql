-- q.1681 'Ironband's Compound'
DELETE FROM dbscripts_on_quest_end WHERE id = 1681;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1681,0,0,0,0,0,0,0,0x04,2000003276,0,0,0,0,0,0,0,''),
(1681,100,1,173,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(1681,5000,1,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(1681,7000,36,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'face Player'),
(1681,8000,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(1681,8100,0,0,0,0,0,0,0,2000003277,0,0,0,0,0,0,0,''),
(1681,12000,3,0,0,0,0,0,0x04,0,0,0,0,0,0,0,4.607,'');
UPDATE quest_template SET CompleteScript = 1681 WHERE entry = 1681;
DELETE FROM dbscript_string WHERE entry BETWEEN 2000003276 AND 2000003277;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000003276,'%s begins to work...',0,2,0,0,NULL),
(2000003277,'$N!  I\'m finished!',0,0,7,0,NULL);
