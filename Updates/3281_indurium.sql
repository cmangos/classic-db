-- q.1108 'Indurium'
DELETE FROM dbscripts_on_quest_end WHERE id = 1108;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1108,0,29,2,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'NPCFlags removed'),
(1108,10,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'active'),
(1108,200,0,0,0,0,0,0,0,2000003315,0,0,0,0,0,0,0,''),
(1108,1200,3,0,0,0,0,0,0x04,0,0,0,0,-6764.65,-3126.02,241.87308,0.4779,'move'),
(1108,1500,1,69,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(1108,2000,0,0,0,0,0,0,0,2000003316,0,0,0,0,0,0,0,''),
(1108,4000,9,46,15,0,0,0,0,0,0,0,0,0,0,0,0,'Resp object (15 secs)'),
(1108,7000,0,0,0,0,0,0,0,2000003317,0,0,0,0,0,0,0,''),
(1108,12000,0,0,0,0,0,0,0,2000003318,0,0,0,0,0,0,0,''),
(1108,16000,1,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(1108,16100,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(1108,16110,3,0,0,0,0,0,0x04,0,0,0,0,-6763.3926,-3129.3,241.38553,100,'move'),
(1108,17000,0,0,0,0,0,0,0,2000003319,0,0,0,0,0,0,0,''),
(1108,18000,3,0,0,0,0,0,0x04,0,0,0,0,0,0,0,4.0666,'move'),
(1108,19000,29,2,1,0,0,0,0x04,0,0,0,0,0,0,0,0,'NPCFlags added'),
(1108,19100,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'unactive');
UPDATE quest_template SET CompleteScript = 1108 WHERE entry = 1108;
DELETE FROM dbscript_string WHERE entry BETWEEN 2000003315 AND 2000003319;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000003315,'%s takes the indurium flakes to his forge.',0,2,0,0,NULL),
(2000003316,'Now let\'s heat up these flakes...',0,0,0,0,NULL),
(2000003317,'So far they\'re holding.  Let\'s turn up the heat...',0,0,0,0,NULL),
(2000003318,'By Orgrim!  This indurium can withstand massive heat!',0,0,0,0,NULL),
(2000003319,'A successful test!  $N, this indurium is some amazing stuff.',0,0,0,0,NULL);

-- White smoke emitter - scale 0.2 20358
-- missing spawn added
DELETE FROM gameobject WHERE guid = 46;
DELETE FROM game_event_gameobject WHERE guid = 46;
DELETE FROM gameobject_battleground WHERE guid = 46;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state) VALUES
(46,20358,0,-6763.941,-3125.0352,243.25328,1.5358895,0,0,0.6946583,0.71933985,-15,-15,255,1);
