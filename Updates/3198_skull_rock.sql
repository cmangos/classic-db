-- q.827 'Skull Rock'
DELETE FROM dbscripts_on_quest_end WHERE id = 827;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(827,0,15,5017,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(827,5500,15,4947,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(827,5600,1,34,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'),
(827,5700,0,0,0,0,0,0,0x04,2000003233,0,0,0,0,0,0,0,''),
(827,5710,0,0,0,0,0,0,0x04,2000003234,0,0,0,0,0,0,0,''),
(827,9000,0,0,0,0,0,0,0,2000003235,0,0,0,0,0,0,0,'');
UPDATE quest_template SET CompleteScript = 827 WHERE entry = 827;
DELETE FROM dbscript_string WHERE entry BETWEEN 2000003233 AND 2000003235;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000003233,'%s is burned by unleashed magic!',0,2,0,0,NULL),
(2000003234,'Argh!',0,0,1,0,NULL),
(2000003235,'$N, unlocking the secret of these collars is beyond my skills...',0,0,1,1,NULL);
