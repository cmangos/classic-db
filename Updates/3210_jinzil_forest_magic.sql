-- q.1058 'Jin'Zil's Forest Magic'
DELETE FROM dbscripts_on_quest_end WHERE id = 1058;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1058,0,29,2,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'NPCFlags removed'),
(1058,10,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'active'),
(1058,100,3,0,0,0,0,0,0x04,0,0,0,0,0,0,0,4.293,''),
(1058,300,1,15,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'),
(1058,500,0,0,0,0,0,0,0,2000003240,0,0,0,0,0,0,0,''),
(1058,3000,1,11,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'),
(1058,3010,35,5,30,0,0,0,0x04,0,0,0,0,0,0,0,0,'start Event 5'),
(1058,3100,0,0,0,0,0,0,0,2000003241,0,0,0,0,0,0,0,''),
(1058,3500,9,32,15,0,0,0,0,0,0,0,0,0,0,0,0,'Resp object (15 secs)'),
(1058,7000,1,10,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'), -- 21:20:12.296 (strange that dance emote and wps comes in same time)
(1058,7000,20,2,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'waypoints'); -- 21:20:12.296
DELETE FROM creature_movement_template WHERE entry = 3995;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(3995,1,-268.79712,-394.27063,17.07457,100,0,0),
(3995,2,-267.84824,-397.92206,17.001093,100,0,0),
(3995,3,-272.5236,-401.22406,17.499857,100,0,0),
(3995,4,-275.462,-400.0495,17.976725,100,0,0),
(3995,5,-277.5242,-398.8621,18.28247,100,0,0),
(3995,6,-279.3214,-397.80872,18.781836,100,0,0),
(3995,7,-279.39975,-395.97427,19.134645,100,0,0),
(3995,8,-276.39703,-393.34952,18.26975,100,0,0),
(3995,9,-273.21127,-392.59613,17.57163,100,0,0),
(3995,10,-272.48004,-394.0844,17.189602,100,5000,399501);
DELETE FROM dbscripts_on_creature_movement WHERE id = 399501;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(399501,0,1,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'reset emote'),
(399501,500,1,11,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'),
(399501,700,0,0,0,0,0,0,0x04,2000003242,0,0,0,0,0,0,0,''),
(399501,2000,3,0,0,0,0,0,0x04,0,0,0,0,0,0,0,6.196,''),
(399501,2100,29,2,1,0,0,0,0x04,0,0,0,0,0,0,0,0,'NPCFlags added'),
(399501,2400,20,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'idle'),
(399501,2500,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'unactive');
UPDATE quest_template SET CompleteScript = 1058 WHERE entry = 1058;
DELETE FROM dbscript_string WHERE entry BETWEEN 2000003240 AND 2000003242;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000003240,'%s drops the animal parts into the bubbling cauldron.',0,2,0,0,NULL),
(2000003241,'Ah, feel the magic seep into the cave, my little elves... muhahaha.',0,0,1,0,NULL),
(2000003242,'So much for the power of nature... muhahahaha.',0,0,1,0,NULL);

-- Prisoner of Jin'Zil 4072
UPDATE creature SET spawntimesecsmin = 60, spawntimesecsmax = 60 WHERE id = 4072;

-- Jin'Zil's Smoke 19544
-- missing spawn added
DELETE FROM gameobject WHERE guid = 32;
DELETE FROM game_event_gameobject WHERE guid = 32;
DELETE FROM gameobject_battleground WHERE guid = 32;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state) VALUES
(32,19544,1,-274.03995,-396.29688,18.082935,3.9095414,0,0,-0.92718315,0.3746083,-15,-15,255,1);
