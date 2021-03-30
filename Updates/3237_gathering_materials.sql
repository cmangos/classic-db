-- q.1961 'Gathering Materials'
DELETE FROM dbscripts_on_quest_end WHERE id = 1961;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1961,10,29,2,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'NPCFlags removed'),
(1961,100,0,0,0,0,0,0,0,2000003283,0,0,0,0,0,0,0,''),
(1961,1000,3,0,0,0,0,0,0x04,0,0,0,0,0,0,0,4.78,''),
(1961,2000,1,133,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(1961,8500,1,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(1961,9000,0,0,0,0,0,0,0,2000003284,0,0,0,0,0,0,0,''),
(1961,9100,3,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0.458,''),
(1961,9500,29,2,1,0,0,0,0x04,0,0,0,0,0,0,0,0,'NPCFlags added');
UPDATE quest_template SET CompleteScript = 1961 WHERE entry = 1961;
DELETE FROM dbscript_string WHERE entry BETWEEN 2000003283 AND 2000003284;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000003283,'One moment while I stitch this together..',0,0,1,1,NULL),
(2000003284,'There.  I am finished with your robe, $N.',0,0,1,1,NULL);
