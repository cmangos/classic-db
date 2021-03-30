-- q.1007 'The Ancient Statuette'
DELETE FROM dbscripts_on_quest_end WHERE id = 1007;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1007,0,29,2,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'NPCFlags removed'),
(1007,10,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'active'),
(1007,100,3,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0.174,''),
(1007,101,28,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'stand state'),
(1007,110,0,0,0,0,0,0,0x04,2000003271,0,0,0,0,0,0,0,''),
(1007,2000,28,8,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'kneel state'),
(1007,3000,9,38,20,0,0,0,0,0,0,0,0,0,0,0,0,'Resp object (20 secs)'),
(1007,7000,0,0,0,0,0,0,0x04,2000003273,0,0,0,0,0,0,0,''),
(1007,10000,1,15,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(1007,11000,0,0,0,0,0,0,0x04,2000003272,0,0,0,0,0,0,0,''),
(1007,14000,28,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'stand state'),
(1007,17000,36,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'face Player'),
(1007,19000,0,0,0,0,0,0,0,2000003274,0,0,0,0,0,0,0,''),
(1007,21000,29,2,1,0,0,0,0x04,0,0,0,0,0,0,0,0,'NPCFlags added'),
(1007,22000,3,0,0,0,0,0,0x04,0,0,0,0,0,0,0,1.22,''),
(1007,24000,28,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'sit state'),
(1007,24500,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'unactive');
UPDATE quest_template SET CompleteScript = 1007 WHERE entry = 1007;
DELETE FROM dbscript_string WHERE entry BETWEEN 2000003271 AND 2000003274;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000003271,'This statuette must hold a hidden compartment...',0,0,7,1,NULL),
(2000003272,'It\'s locked!  NO!!',0,0,7,0,NULL),
(2000003273,'%s searches the ancient statuette.',0,2,0,0,NULL),
(2000003274,'$N, I am in need of your help once again.',0,0,7,1,NULL);

-- Talen 3846
UPDATE creature_template_addon SET b2_0_sheath = 0 WHERE entry = 3846;

-- Ancient Statuette 18603
-- missing spawn added
DELETE FROM gameobject WHERE guid = 38;
DELETE FROM game_event_gameobject WHERE guid = 38;
DELETE FROM gameobject_battleground WHERE guid = 38;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state) VALUES
(38,18603,1,3471.955,847.0674,5.366816,0.90757024,0,0,0.4383707,0.89879423,-20,-20,255,1);
