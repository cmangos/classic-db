-- q.927 'The Moss-twined Heart'
DELETE FROM dbscripts_on_quest_end WHERE id = 927;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(927,0,0,0,0,0,0,0,0x04,2000003267,0,0,0,0,0,0,0,''),
(927,3000,0,0,0,0,0,0,0,2000003268,0,0,0,0,0,0,0,'');
UPDATE quest_template SET CompleteScript = 927 WHERE entry = 927;
DELETE FROM dbscript_string WHERE entry IN (2000003267,2000003268);
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000003267,'%s examines the Moss-twined Heart...',0,2,0,0,NULL),
(2000003268,'$n, underneath the moss, this heart looks like a seed!',0,0,7,1,NULL);
