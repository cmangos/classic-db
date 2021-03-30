-- q.1699 'The Rethban Gauntlet'
-- start script
DELETE FROM dbscripts_on_quest_start WHERE id = 1699;
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1699,0,15,8554,0,0,0,0,0,0,0,0,0,0,0,0,0,'Cast: Drinking Barleybrew Scalder'),
(1699,1000,0,0,0,0,0,0,0,2000003280,0,0,0,0,0,0,0,'');
UPDATE quest_template SET StartScript = 1699 WHERE entry = 1699;
-- end script
DELETE FROM dbscripts_on_quest_end WHERE id = 1699;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1699,0,29,2,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'NPCFlags removed'),
(1699,10,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'active'),
(1699,110,0,0,0,0,0,0,0,2000003281,0,0,0,0,0,0,0,''),
(1699,3000,0,0,0,0,0,0,0,2000003282,0,0,0,0,0,0,0,''),
(1699,5000,0,0,0,0,0,0,0,2000003282,0,0,0,0,0,0,0,''),
(1699,7000,0,0,0,0,0,0,0,2000003282,0,0,0,0,0,0,0,''),
(1699,7100,29,2,1,0,0,0,0x04,0,0,0,0,0,0,0,0,'NPCFlags added'),
(1699,7200,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'unactive');
UPDATE quest_template SET CompleteScript = 1699 WHERE entry = 1699;
DELETE FROM dbscript_string WHERE entry BETWEEN 2000003280 AND 2000003282;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000003280,'Good luck, $N!',0,0,7,4,NULL),
(2000003281,'$N ran the Gauntlet!  Three cheers for $N!',0,1,7,22,NULL),
(2000003282,'Hip hip, hoorah!',0,0,7,4,NULL);
