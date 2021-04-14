-- q.8277 'Deadly Desert Venom'
DELETE FROM dbscripts_on_quest_end WHERE id = 8277;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(8277,0,31,15190,30,0,0,0,0,0,0,0,0,0,0,0,0,''),
(8277,100,28,0,0,0,15190,40,7,0,0,0,0,0,0,0,0,''),
(8277,200,1,64,0,0,15190,40,7,0,0,0,0,0,0,0,0,''),
(8277,500,0,0,0,0,15190,40,7,2000003322,0,0,0,0,0,0,0,''),
(8277,5000,1,0,0,0,15190,40,7,0,0,0,0,0,0,0,0,''),
(8277,5100,28,7,0,0,15190,40,7,0,0,0,0,0,0,0,0,'');
UPDATE quest_template SET CompleteScript = 8277 WHERE entry = 8277;
DELETE FROM dbscript_string WHERE entry = 2000003322;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000003322,'Wha... where am I?  So... weak..',0,0,0,0,NULL);

-- q.8278 'Noggle's Last Hope'
DELETE FROM dbscripts_on_quest_end WHERE id = 8278;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(8278,0,31,15190,30,0,0,0,0,0,0,0,0,0,0,0,0,''),
(8278,100,28,0,0,0,15190,40,7,0,0,0,0,0,0,0,0,''),
(8278,200,1,64,0,0,15190,40,7,0,0,0,0,0,0,0,0,''),
(8278,500,0,0,0,0,15190,40,7,2000003323,0,0,0,0,0,0,0,''),
(8278,5000,1,0,0,0,15190,40,7,0,0,0,0,0,0,0,0,''),
(8278,5100,28,7,0,0,15190,40,7,0,0,0,0,0,0,0,0,'');
UPDATE quest_template SET CompleteScript = 8278 WHERE entry = 8278;
DELETE FROM dbscript_string WHERE entry = 2000003323;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000003323,'Yes!  I\'m cured!  I\'m cure... whoa, got up too fast!',0,0,0,0,NULL);

-- q.8282 'Noggle's Lost Satchel'
DELETE FROM dbscripts_on_quest_end WHERE id = 8282;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(8282,0,28,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(8282,500,0,0,0,0,0,0,0x04,2000003324,0,0,0,0,0,0,0,''),
(8282,6000,28,7,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'');
UPDATE quest_template SET CompleteScript = 8282 WHERE entry = 8282;
DELETE FROM dbscript_string WHERE entry = 2000003324;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000003324,'Thanks for finding my reagents!  *yawn*  That poison\'s made me... a bit tired...',0,0,0,0,NULL);

-- Noggle Ficklespragg 15190
DELETE FROM npc_gossip WHERE npc_guid IN (SELECT guid FROM creature WHERE id=15190);
DELETE FROM gossip_menu WHERE entry = 6544;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(6544, 7753, 0, 0),
(6544, 7752, 0, 3733);
DELETE FROM conditions WHERE condition_entry = 3733;
INSERT INTO conditions (condition_entry,type,value1,value2,value3,value4,flags) VALUE
(3733,8,8277,0,0,0,0);
