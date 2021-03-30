-- q.1052 'Down the Scarlet Path'
DELETE FROM dbscripts_on_quest_end WHERE id = 1052;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1052,0,29,2,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'NPCFlags removed'),
(1052,10,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'active'),
(1052,100,0,0,0,0,0,0,0x04,2000003263,0,0,0,0,0,0,0,''),
(1052,101,1,69,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(1052,6000,0,0,0,0,0,0,0,2000003264,0,0,0,0,0,0,0,''),
(1052,7900,1,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(1052,8000,3,0,0,0,0,0,0x04,0,0,0,0,-848.237,-577.42706,18.545984,100,''),
(1052,15000,0,0,0,0,0,0,0,2000003265,0,0,0,0,0,0,0,''),
(1052,18000,9,36,20,0,0,0,0,0,0,0,0,0,0,0,0,'Resp object (20 secs)'),
(1052,22000,42,0,0,0,0,0,0x04,1906,0,0,0,0,0,0,0,'temp equip'),
(1052,22100,1,25,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(1052,23000,13,0,0,0,19534,30,1,0,0,0,0,0,0,0,0,''),
(1052,25000,3,0,0,0,0,0,0x04,0,0,0,0,-844.87805,-580.2844,18.545902,100,''),
(1052,28000,3,0,0,0,0,0,0x04,0,0,0,0,0,0,0,2.391,''),
(1052,30000,42,0,0,0,0,0,0x04,12883,12860,0,0,0,0,0,0,'equip'),
(1052,30200,29,2,1,0,0,0,0x04,0,0,0,0,0,0,0,0,'NPCFlags added'),
(1052,30300,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'unactive');
UPDATE quest_template SET CompleteScript = 1052 WHERE entry = 1052;
DELETE FROM dbscript_string WHERE entry BETWEEN 2000003263 AND 2000003265;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000003263,'%s breaks the seal on Anton\'s letter and begins to read it.',0,2,0,0,NULL),
(2000003264,'By the Light! This is not good. There\'s something you don\'t understand, $n.',0,0,0,0,NULL),
(2000003265,'%s throws Anton\'s letter down on the table.',0,2,0,0,NULL);

-- Anton's Letter of Commendation 19534
-- missing spawn added
DELETE FROM gameobject WHERE guid = 36;
DELETE FROM game_event_gameobject WHERE guid = 36;
DELETE FROM gameobject_battleground WHERE guid = 36;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state) VALUES
(36,19534,0,-848.559,-576.3889,19.670116,-0.31415844,0,0,-0.15643406,0.98768836,-20,-20,255,1);
