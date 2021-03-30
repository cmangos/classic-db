-- q.5247 'Fragments of the Past'
DELETE FROM dbscripts_on_quest_end WHERE id = 5247;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(5247,0,29,3,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'NPCFlags removed'),
(5247,10,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'active'),
(5247,100,0,0,0,0,0,0,0,2000003260,0,0,0,0,0,0,0,''),
(5247,200,3,0,0,0,0,0,0x04,0,0,0,0,3234.2898,-4260.3384,98.44359,100,''),
(5247,5000,9,34,30,0,0,0,0,0,0,0,0,0,0,0,0,'Resp object (25 secs)'),
(5247,7000,13,0,0,0,178229,30,1|0x08,0,0,0,0,0,0,0,0,''),
(5247,8000,13,0,0,0,178229,30,1|0x08,0,0,0,0,0,0,0,0,''),
(5247,9000,13,0,0,0,178229,30,1|0x08,0,0,0,0,0,0,0,0,''),
(5247,10000,13,0,0,0,178229,30,1|0x08,0,0,0,0,0,0,0,0,''),
(5247,10100,0,0,0,0,0,0,0,2000003261,0,0,0,0,0,0,0,''),
(5247,11000,13,0,0,0,178229,30,1|0x08,0,0,0,0,0,0,0,0,''),
(5247,12000,13,0,0,0,178229,30,1|0x08,0,0,0,0,0,0,0,0,''),
(5247,13000,13,0,0,0,178229,30,1|0x08,0,0,0,0,0,0,0,0,''),
(5247,14000,13,0,0,0,178229,30,1|0x08,0,0,0,0,0,0,0,0,''),
(5247,15000,13,0,0,0,178229,30,1|0x08,0,0,0,0,0,0,0,0,''),
(5247,16000,13,0,0,0,178229,30,1|0x08,0,0,0,0,0,0,0,0,''),
(5247,17000,15,18953,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Cast: Ranshalla Waiting'),
(5247,25000,14,18953,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(5247,27000,3,0,0,0,0,0,0x04,0,0,0,0,3232.2751,-4256.4795,98.139175,100,''),
(5247,30000,3,0,0,0,0,0,0x04,0,0,0,0,0,0,0,3.787,''),
(5247,30100,0,0,0,0,0,0,0,2000003262,0,0,0,0,0,0,0,''),
(5247,30200,29,3,1,0,0,0,0x04,0,0,0,0,0,0,0,0,'NPCFlags added'),
(5247,30300,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'unactive');
UPDATE quest_template SET CompleteScript = 5247 WHERE entry = 5247;
DELETE FROM dbscript_string WHERE entry BETWEEN 2000003260 AND 2000003262;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000003260,'Please wait while I attempt to bind the shards together so that they will be whole once again.',0,0,0,0,NULL),
(2000003261,'Ishnu... Oshalan thara dormil... Anu\'dorin...',0,0,0,0,NULL),
(2000003262,'Yes, I was able to reseal the relic, $N.',0,0,0,2,NULL);

-- Aurora's Book 178229
-- missing spawn added
DELETE FROM gameobject WHERE guid = 34;
DELETE FROM game_event_gameobject WHERE guid = 34;
DELETE FROM gameobject_battleground WHERE guid = 34;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state) VALUES
(34,178229,0,3235.7976,-4263.0615,100.51884,-0.6981315,0,0,-0.34202003,0.9396927,-30,-30,255,1);
