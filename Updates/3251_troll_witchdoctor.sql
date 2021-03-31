-- q.1240 'The Troll Witchdoctor'
DELETE FROM dbscripts_on_quest_end WHERE id = 1240;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1240,0,29,2,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'NPCFlags removed'),
(1240,10,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'active'),
(1240,100,0,0,0,0,0,0,0,2000003300,0,0,0,0,0,0,0,''),
(1240,500,40,0,0,0,2551,30,7,0,0,0,0,0,0,0,0,'desp object'),
(1240,1000,9,42,15,0,0,0,0,0,0,0,0,0,0,0,0,'Resp object (15 secs)'),
(1240,3000,3,0,0,0,0,0,0x04,0,0,0,0,0,0,0,1.658,'move'),
(1240,5100,0,0,0,0,0,0,0,2000003301,0,0,0,0,0,0,0,''),
(1240,6000,15,3644,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(1240,10000,40,0,0,0,2076,30,7,0,0,0,0,0,0,0,0,'make object refresh self'),
(1240,12000,3,0,0,0,0,0,0x04,0,0,0,0,0,0,0,2.513,'move'),
(1240,12100,0,0,0,0,0,0,0,2000003302,0,0,0,0,0,0,0,''),
(1240,13000,29,2,1,0,0,0,0x04,0,0,0,0,0,0,0,0,'NPCFlags added'),
(1240,14000,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'unactive');
UPDATE quest_template SET CompleteScript = 1240 WHERE entry = 1240;
DELETE FROM dbscript_string WHERE entry BETWEEN 2000003300 AND 2000003302;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000003300,'I am eager to hear what so angry an orc has to say...',0,0,0,0,NULL),
(2000003301,'%s places Marg\'s head in the cauldron.',0,2,0,0,NULL),
(2000003302,'Peer into the cauldron, $N.  Marg wishes to speak...',0,0,0,0,NULL);

-- Kin'weelay 2519
-- orientation corrected
UPDATE creature SET orientation = 2.428 WHERE id = 2519;

-- Boiled skull 2551
UPDATE gameobject SET spawntimesecsmin = 10, spawntimesecsmax = 10 WHERE id = 2551;

-- Bubbling Cauldron 2076
-- theres no other way (that i know) to make him refresh and display quest for player
UPDATE gameobject SET spawntimesecsmin=1, spawntimesecsmax=1 WHERE id=2076;

-- Steam 2552
-- missing spawn added
DELETE FROM gameobject WHERE guid = 42;
DELETE FROM game_event_gameobject WHERE guid = 42;
DELETE FROM gameobject_battleground WHERE guid = 42;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state) VALUES
(42,2552,0,-12347.216,164.01817,3.932144,1.6580619,0,0,0.73727703,0.6755905,-15,-15,255,1);
