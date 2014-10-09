-- Updatepack_407
-- Authors are: Grz3s, X-Savior, Schmoozerd, Xfurry, Axel, Neatelves, stfx, den, Kinzcool
-- This closes #596 
-- closes #593 
-- closes #580 
-- closes #12 

-- --------------------
-- Gameobjects single spawn
-- --------------------


-- cleanup
-- Forge -- missing in Orgrimmar - 3.3.5 sniff
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs, animprogress, state) VALUES
(121915, 1685, 1, 1523.78, -4368.24, 18.2141, 2.55201, 0, 0, 0, 1, 25, 255, 1);
-- Blacksmith's Anvil -- missing in Orgrimmar - 3.3.5 sniff
DELETE FROM `gameobject_template` WHERE entry = 1684;
INSERT INTO `gameobject_template` VALUES (1684, 8, 273, 'Blacksmith\'s Anvil', 0, 0, 1, 1, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs, animprogress, state) VALUES
(121916, 1684, 1, 1524.93, -4371.18, 17.9437, 2.60698, 0, 0, 0.7253742, 0.6883547, 25, 255, 1);
-- Roland's Mana Gem
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs, animprogress, state) VALUES 
(105315, 148842, 1, 1697.41, -5866.47, -130.590, 0.353373, 0, 0, 0.175769, 0.984432, 25, 255, 1);
-- Fissure plant  - all missing ones added 
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs, animprogress, state) VALUES 
(121921, 3743, 1, -1278.97, -3008.1, 72.0716, 0.86185, 0, 0, 0.417711, 0.90858, -30, 100, 1),
(121922, 3743, 1, -1275.4, -3006.46, 72.5618, 1.29382, 0, 0, 0.602723, 0.79795, -30, 100, 1),
(121923, 3743, 1, -1279.63, -3014.32, 71.7535, 0.539832, 0, 0, 0.26665, 0.963793, -30, 100, 1),
(121924, 3743, 1, -1277.91, -3016.5, 72.699, 0.889334, 0, 0, 0.430157, 0.902754, -30, 100, 1),
(121925, 3743, 1, -1274.86, -3016.2, 72.6146, 1.63939, 0, 0, 0.730938, 0.682444, -30, 100, 1);

-- -----------------
-- Gameobject w/ script or pool
-- -----------------
-- cleanup

-- --------------------------------------------------
-- NEW CREATURE SPAWNS
-- --------------------------------------------------

-- ------------------
-- NPC single spawn
-- ------------------

-- Grz3s
-- Reusing  all removed and empty guids; 
-- Rat - missing in undercity
INSERT INTO creature (guid, id, map, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES 
(140586,4075,0,0,0,1412.15,417.707,-84.9654,3.36426,180,5,0,120,0,0,1),
(140587,4075,0,0,0,1428.02,406.496,-85.2519,3.37997,180,20,0,120,0,0,1),
(140588,4075,0,0,0,1452.04,401.733,-84.9925,0.222665,180,5,0,120,0,0,1),
(140589,4075,0,0,0,1407.63,370.503,-84.953,3.96901,180,5,0,120,0,0,1);
-- Crag Boar -- Dun Morogh
INSERT INTO creature (guid, id, map, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES 
(140590,1125,0,0,0,-6119.69,-200.734,434.551,0.361272,180,5,0,102,0,0,1);
-- Horizon scout Missing team
-- Roland Geardabbler
INSERT INTO creature (guid,id,map,modelid,equipment_id,position_x,position_y,position_z,orientation,spawntimesecs,spawndist,currentwaypoint,curhealth,curmana,DeathState,MovementType) VALUES
(140775,8394,1,0,0,1746.45,-5861.29,-91.4165,3.20841,300,0,0,2762,3575,0,0);
DELETE FROM creature_template_addon WHERE entry = 8394;
-- Horizon Scout Cook
INSERT INTO creature (guid,id,map,modelid,equipment_id,position_x,position_y,position_z,orientation,spawntimesecs,spawndist,currentwaypoint,curhealth,curmana,DeathState,MovementType) VALUES
(140776,8388,1,0,0,1747.62,-5862.27,-90.9249,3.17332,300,0,0,2666,0,0,0);
-- Horizon Scout First Mate 
INSERT INTO creature (guid,id,map,modelid,equipment_id,position_x,position_y,position_z,orientation,spawntimesecs,spawndist,currentwaypoint,curhealth,curmana,DeathState,MovementType) VALUES
(140777,8387,1,0,0,1747.24,-5859.6,-90.3817,3.98543,300,0,0,2766,0,0,0);
-- Horizon Scout Engineer
INSERT INTO creature (guid,id,map,modelid,equipment_id,position_x,position_y,position_z,orientation,spawntimesecs,spawndist,currentwaypoint,curhealth,curmana,DeathState,MovementType) VALUES
(140778,8389,1,0,0,1748.87,-5863.46,-90.2665,2.83088,300,0,0,2666,0,0,0);
-- Second Mate Shandril
INSERT INTO creature (guid,id,map,modelid,equipment_id,position_x,position_y,position_z,orientation,spawntimesecs,spawndist,currentwaypoint,curhealth,curmana,DeathState,MovementType) VALUES
(140779,8478,1,0,0,1916.44,-5733.37,10.1936,4.10397,300,0,0,2766,0,0,0);
DELETE FROM creature_template_addon WHERE entry = 8478;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) VALUES 
(8478,0,8,1,0,0,0,NULL);


-- ------------------
-- NPC w/ script, waypoint, pool or game event
-- ------------------

-- clean up

-- Grz3s
-- Witherbark Trolls event - (Arathi Highlands)
INSERT INTO creature (guid,id,map,modelid,equipment_id,position_x,position_y,position_z,orientation,spawntimesecs,spawndist,currentwaypoint,curhealth,curmana,DeathState,MovementType) VALUES
(140693,2556,0,0,62,-1234.76,-3536.47,46.5823,5.929,120,0,0,1342,0,0,0),
(140694,2552,0,0,0,-1232.1,-3535.9,46.4729,5.6706,120,0,0,1107,0,0,0),
(140695,2552,0,0,0,-1230.75,-3533.46,46.0261,5.83082,120,0,0,1107,0,0,0),
(140696,2552,0,0,0,-1229.85,-3535.1,46.3087,5.918,120,0,0,1050,0,0,0),
(140697,2553,0,0,9,-1233.3,-3533.72,46.0859,5.80098,120,0,0,847,2253,0,2); -- master
DELETE FROM creature_movement WHERE id = 140697;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(140697,1,-1233.3,-3533.72,46.0859,100000,0,0,0,0,0,0,0,0,0,5.80098,0,0),
(140697,2,-1233.3,-3533.72,46.0859,3000,255301,0,0,0,0,0,0,0,0,5.80098,0,0),
(140697,3,-1233.3,-3533.72,46.0859,1000,255302,0,0,0,0,0,0,0,0,5.80098,0,0),
(140697,4,-1162.87,-3563.07,50.5074,0,0,0,0,0,0,0,0,0,0,0.0411459,0,0),
(140697,5,-1032.97,-3550.54,55.9796,0,0,0,0,0,0,0,0,0,0,6.22908,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 255301 AND 255302;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(255301,0,31,2556,10,0,0,0,0,0,0,0,0,0,0,0,''), -- check if creature is alive
(255301,1,25,1,0,0,0,0,0,0,0,0,0,0,0,0,'RUN ON'),
(255301,1,25,1,0,2556,140693,7 | 0x10,0,0,0,0,0,0,0,0,'RUN ON'),
(255301,1,25,1,0,2552,140694,7 | 0x10,0,0,0,0,0,0,0,0,'RUN ON'),
(255301,1,25,1,0,2552,140695,7 | 0x10,0,0,0,0,0,0,0,0,'RUN ON'),
(255301,1,25,1,0,2552,140696,7 | 0x10,0,0,0,0,0,0,0,0,'RUN ON'),
(255302,0,31,2556,100,0,0,0,0,0,0,0,0,0,0,0,''), -- check if creature is alive
(255302,0,3,0,0,2556,140693,7 | 0x10,0,0,0,0,-1162.87,-3563.07,50.5074,0.0411459,''),
(255302,0,3,0,0,2552,140694,7 | 0x10,0,0,0,0,-1162.87,-3563.07,50.5074,0.0411459,''),
(255302,0,3,0,0,2552,140695,7 | 0x10,0,0,0,0,-1162.87,-3563.07,50.5074,0.0411459,''),
(255302,0,3,0,0,2552,140696,7 | 0x10,0,0,0,0,-1162.87,-3563.07,50.5074,0.0411459,''),
(255302,9,31,2556,100,0,0,0,0,0,0,0,0,0,0,0,''), -- check if creature is alive
(255302,10,3,0,0,2556,140693,7 | 0x10,0,0,0,0,-1032.97,-3550.54,55.9796,6.22908,''),
(255302,10,3,0,0,2552,140694,7 | 0x10,0,0,0,0,-1032.97,-3550.54,55.9796,6.22908,''),
(255302,10,3,0,0,2552,140695,7 | 0x10,0,0,0,0,-1032.97,-3550.54,55.9796,6.22908,''),
(255302,10,3,0,0,2552,140696,7 | 0x10,0,0,0,0,-1032.97,-3550.54,55.9796,6.22908,'');

-- ------------------------
-- forum
-- ------------------------

-- Deer Critter  -- from Axel
UPDATE creature SET MovementType = 1, spawndist = 20 WHERE guid = 32676;
-- Chieftain Earthbind - equip - from Axel
-- UPDATE creature_template SET EquipmentTemplateID = 1343 WHERE entry = 12791;
DELETE FROM creature_template_addon WHERE entry = 12791;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) VALUES 
(12791,0,0,2,0,0,0,NULL);
-- Isha Awak - from Axel 
UPDATE creature SET MovementType = 2 WHERE guid = 15085;
DELETE FROM creature_movement WHERE id = 15085;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(15085, 1, -1949.31, -3817.22, -6.52593, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6.23346, 0, 0),
(15085, 2, -1876.07, -3848.77, -9.3871, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.83291, 0, 0),
(15085, 3, -1807.86, -3875.06, -3.79004, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.85254, 0, 0),
(15085, 4, -1768.57, -3918.63, -3.28865, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.46238, 0, 0),
(15085, 5, -1728, -3959.94, -7.35339, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.44504, 0, 0),
(15085, 6, -1683.23, -3962.82, -2.32115, 90000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.88708, 0, 0),
(15085, 7, -1728, -3959.94, -7.35339, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.79423, 0, 0),
(15085, 8, -1768.57, -3918.63, -3.28865, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.38422, 0, 0),
(15085, 9, -1807.86, -3875.06, -3.79004, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.39994, 0, 0),
(15085, 10, -1876.07, -3848.77, -9.3871, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.80443, 0, 0),
(15085, 11, -1949.31, -3817.22, -6.52593, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.02435, 0, 0),
(15085, 12, -2025.94, -3814.75, -7.26146, 180000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.77136, 0, 0);


-- ---------------
-- Various
-- ---------------

-- quest 3566
UPDATE quest_template SET StartScript = 3566 WHERE entry = 3566;
DELETE FROM dbscripts_on_quest_start WHERE id = 3566;
INSERT INTO dbscripts_on_quest_start (id,delay,command,datalong,datalong2,x,y,z,o,comments) VALUES 
(3566, 2, 10, 8421, 120000, -6462.33, -1240.68, 180.285, 3.40242, 'spawn Dorius');
UPDATE creature_template SET MovementType = 2 WHERE entry = 8421;
-- linking
DELETE FROM creature_linking_template WHERE entry IN (8421, 8391);
INSERT INTO creature_linking_template (entry, map, master_entry, flag, search_range) VALUES
(8421, 0, 8400, 3, 50),
(8391, 0, 8400, 3, 50);
-- movement script
DELETE FROM creature_movement_template WHERE entry IN (8421);
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, script_id, waittime, orientation) VALUES
(8421, 1, -6475.807, -1246.440, 180.248, 842101, 1000, 2.27);
-- move script
DELETE FROM dbscripts_on_creature_movement WHERE id IN (842101);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, dataint, comments) VALUES
(842101, 0, 32, 1, 0, 0, 'Dorius - pause waypoints');
-- dialogue by eventAI
-- quest 7041
DELETE FROM dbscripts_on_go_template_use WHERE id = 178905;
INSERT INTO dbscripts_on_go_template_use (id,command,datalong,datalong2,comments) VALUES
(178905,10,13696,60000,'summon Noxxious Scion'),
(178905,10,13696,60000,'summon Noxxious Scion'),
(178905,10,13696,60000,'summon Noxxious Scion');
-- non power regen creatures
UPDATE creature_template SET RegenerateStats =  RegenerateStats&~2 where entry IN (15340,15262);

-- ---------------
-- Neatelves
-- ---------------
-- Quest 1090 "Gerenzo's Orders"
-- A simple defend quest
-- Overview (Details are not too clear)
-- Summons 3 waves of mobs: 2x3998+1x4001 -- 2x4002+2x4003+1x4004 -- 3x4001+1x4004
UPDATE quest_template SET StartScript = 1090 WHERE entry = 1090;
DELETE FROM dbscripts_on_quest_start WHERE id = 1090;
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, x, y, z, o, comments) VALUES
-- (1090, 0, C, d, d2, 0, 0, 0, 'change npc-flags on quest-accept'),           -- ??
-- (1090, 0, C, d, d2, 0, 0, 0, 'change faction on quest-accept'),             -- ??
(1090, 5, 26, 0, 0, 3999, 10, 3, 0, 0, 0, 0, 'aggro nearby mob if possible'),
-- First wave
(1090, 60, 10, 3998, 60000, 0, 0, 0, 938.30, -257.35, -2.22, 0, 'summon first wave'),
(1090, 60, 10, 3998, 60000, 0, 0, 0, 942.28, -254.49, -2.38, 0, 'summon first wave'),
(1090, 60, 10, 4001, 60000, 0, 0, 0, 938.52, -253.20, -2.08, 0, 'summon first wave'),
-- Condition check
(1090, 149, 34, 317, 1090, 0, 0, 0, 0, 0, 0, 0, 'Stop script if player is dead or out of range'),
(1090, 149, 34, 318, 1090, 0, 0, 0, 0, 0, 0, 0, 'Stop script if npc is dead'),
-- Second wave
(1090, 150, 10, 4002, 60000, 0, 0, 0, 938.30, -257.35, -2.22, 0, 'summon second wave'), -- 938.30 -257.35 -2.22
(1090, 150, 10, 4002, 60000, 0, 0, 0, 942.28, -254.49, -2.38, 0, 'summon second wave'),
(1090, 150, 10, 4003, 60000, 0, 0, 0, 938.52, -253.20, -2.08, 0, 'summon second wave'),
(1090, 150, 10, 4003, 60000, 0, 0, 0, 939.51, -253.11, -2.02, 0, 'summon second wave'),
(1090, 150, 10, 4004, 60000, 0, 0, 0, 938.30, -257.35, -2.22, 0, 'summon second wave'),
-- Condition check
(1090, 239, 34, 317, 1090, 0, 0, 0, 0, 0, 0, 0, 'Stop script if player is dead or out of range'),
(1090, 239, 34, 318, 1090, 0, 0, 0, 0, 0, 0, 0, 'Stop script if npc is dead'),
-- Third wave
(1090, 240, 10, 4001, 60000, 0, 0, 0, 938.30, -257.35, -2.22, 0, 'summon third wave'),
(1090, 240, 10, 4001, 60000, 0, 0, 0, 942.28, -254.49, -2.38, 0, 'summon third wave'),
(1090, 240, 10, 4001, 60000, 0, 0, 0, 938.52, -253.20, -2.08, 0, 'summon third wave'),
(1090, 240, 10, 4004, 60000, 0, 0, 0, 939.51, -253.11, -2.02, 0, 'summon third wave'),
-- Condition check
(1090, 419, 34, 317, 1090, 0, 0, 0, 0, 0, 0, 0, 'Stop script if player is dead or out of range'),
(1090, 419, 34, 318, 1090, 0, 0, 0, 0, 0, 0, 0, 'Stop script if npc is dead'),
(1090, 420, 7, 1090, 0, 0, 0, 0, 0, 0, 0, 0, 'quest complete');
-- conditions
DELETE FROM conditions WHERE condition_entry IN (317,318);
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(317, 36, 0, 60),
(318, 36, 3, 0);
-- movement and attack for spawns
UPDATE creature_template SET MovementType = 2 WHERE entry IN (3998,4001,4002,4003,4004);
DELETE FROM creature_movement_template WHERE entry IN (3998,4001,4002,4003,4004);
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, script_id, waittime, orientation) VALUES
(3998, 1, 945.869, -255.917, -3.017, 0, 0, 0),
(3998, 2, 954.064, -257.818, -3.511, 0, 0, 0),
(3998, 3, 959.217, -260.678, -5.673, 399803, 0, 0),
(4001, 1, 945.869, -255.917, -3.017, 0, 0, 0),
(4001, 2, 954.064, -257.818, -3.511, 0, 0, 0),
(4001, 3, 959.217, -260.678, -5.673, 399803, 0, 0),
(4002, 1, 945.869, -255.917, -3.017, 0, 0, 0),
(4002, 2, 954.064, -257.818, -3.511, 0, 0, 0),
(4002, 3, 959.217, -260.678, -5.673, 399803, 0, 0),
(4003, 1, 945.869, -255.917, -3.017, 0, 0, 0),
(4003, 2, 954.064, -257.818, -3.511, 0, 0, 0),
(4003, 3, 959.217, -260.678, -5.673, 399803, 0, 0),
(4004, 1, 945.869, -255.917, -3.017, 0, 0, 0),
(4004, 2, 954.064, -257.818, -3.511, 0, 0, 0),
(4004, 3, 959.217, -260.678, -5.673, 399803, 0, 0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 399803;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, buddy_entry, search_radius, data_flags, comments) VALUES
(399803, 0, 26, 4276, 10, 2, 'attack Piznik');
-- quest 5713 - One Shot. One Kill. (Xfurry)
-- DELETE FROM db_script_string WHERE entry IN (2000005627,2000005628,2000005629,2000005630,2000005631);
INSERT INTO db_script_string (entry,content_default,sound,type,language,emote,comment) VALUES
(2000005627,'Wait... did you hear that? Something approaches from the west!',0,0,0,1,'Sentinel Aynasha - say_protect_1'),
(2000005628,'I\'ve run out of arrows! I\'m afraid if any more come you will need to take them on by yourself my friend.',0,0,0,0,'Sentinel Aynasha - say_protect_2'),
(2000005629,'Praise Elune! I don\'t know if I could have survived the day without you, friend.',0,0,0,5,'Sentinel Aynasha - say_protect_3'),
(2000005630,'My legs feels much better now, the remedy must be working. If you will excuse me, I must go report to my superiors about what has transpired here.',0,0,0,1,'Sentinel Aynasha - say_protect_4'),
(2000005631,'Please speak with Sentinel Onaeya at Maestra\'s Post in Ashenvale, she will see to it that you are properly rewarded for your bravery this day.',0,0,0,1,'Sentinel Aynasha - say_protect_5');
-- quest script
UPDATE quest_template SET StartScript = entry WHERE entry = 5713;
DELETE FROM dbscripts_on_quest_start WHERE id = 5713;
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, x, y, z, o, comments) VALUES
-- (5713, 0, C, d, d2, 0, 0, 0, 'change npc-flags on quest-accept'), -- ??
(5713, 0, 0, 0, 0, 0, 0, 0, 2000005627, 0, 0, 0, 0, 'say_protect_1'),
-- First wave
(5713, 5, 10, 11713, 60000, 0, 0, 0, 0, 4371.175, -11.965, 67.64, 0, 'summon first wave'),
(5713, 5, 10, 11713, 60000, 0, 0, 0, 0, 4368.286, -13.418, 67.81, 0, 'summon first wave'),
-- Condition check
(5713, 50, 34, 317, 5713, 0, 0, 0, 0, 0, 0, 0, 0, 'Stop script if player is dead or out of range'),
(5713, 50, 34, 318, 5713, 0, 0, 0, 0, 0, 0, 0, 0, 'Stop script if npc is dead'),
-- Second wave
(5713, 55, 10, 11713, 60000, 0, 0, 0, 0, 4371.175, -11.965, 67.64, 0, 'summon second wave'),
(5713, 55, 10, 11713, 60000, 0, 0, 0, 0, 4368.286, -13.418, 67.81, 0, 'summon second wave'),
(5713, 55, 10, 11713, 60000, 0, 0, 0, 0, 4368.861, -15.438, 68.36, 0, 'summon second wave'),
-- Condition check
(5713, 70, 34, 317, 5713, 0, 0, 0, 0, 0, 0, 0, 0, 'Stop script if player is dead or out of range'),
(5713, 70, 34, 318, 5713, 0, 0, 0, 0, 0, 0, 0, 0, 'Stop script if npc is dead'),
-- Third wave
(5713, 75, 0, 0, 0, 0, 0, 0, 2000005628, 0, 0, 0, 0, 'say_protect_2'),
(5713, 75, 10, 11714, 60000, 0, 0, 0, 0, 4371.175, -11.965, 67.64, 0, 'summon third wave'),
-- Quest completed
(5713, 160, 34, 317, 5713, 0, 0, 0, 0, 0, 0, 0, 0, 'Stop script if player is dead or out of range'),
(5713, 160, 34, 318, 5713, 0, 0, 0, 0, 0, 0, 0, 0, 'Stop script if npc is dead'),
(5713, 165, 7, 5713, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'quest complete'),
(5713, 168, 0, 0, 0, 0, 0, 0, 2000005629, 0, 0, 0, 0, 'say_protect_3'),
(5713, 170, 0, 0, 0, 0, 0, 0, 2000005630, 0, 0, 0, 0, 'say_protect_4'),
(5713, 173, 0, 0, 0, 0, 0, 0, 2000005631, 0, 0, 0, 0, 'say_protect_5'),
(5713, 175, 25, 1, 0, 0, 0, 4, 0, 0, 0, 0, 0, 'set run on'),
(5713, 175, 20, 2, 0, 0, 0, 4, 0, 0, 0, 0, 0, 'start wp move'),
(5713, 175, 18, 20000, 0, 0, 0, 4, 0, 0, 0, 0, 0, 'despawn on timer');
-- movement and attack for spawns
UPDATE creature_template SET MovementType = 2 WHERE entry IN (11713,11714);
DELETE FROM creature_movement_template WHERE entry IN (11713,11714,11711);
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, script_id, waittime, orientation) VALUES
(11713, 1, 4368.861, -15.438, 68.36, 1171301, 1000, 5.1),
(11713, 2, 4366.765, -22.430, 70.20, 0, 0, 0),
(11713, 3, 4373.655, -34.314, 73.71, 0, 0, 0),
(11713, 4, 4379.270, -41.688, 80.02, 0, 0, 0),
(11713, 5, 4378.210, -49.390, 85.54, 0, 0, 0),
(11713, 6, 4384.206, -61.075, 86.93, 1171306, 0, 0),
(11714, 1, 4368.861, -15.438, 68.36, 1171301, 1000, 5.1),
(11714, 2, 4366.765, -22.430, 70.20, 0, 0, 0),
(11714, 3, 4373.655, -34.314, 73.71, 0, 0, 0),
(11714, 4, 4379.270, -41.688, 80.02, 0, 0, 0),
(11714, 5, 4378.210, -49.390, 85.54, 0, 0, 0),
(11714, 6, 4384.206, -61.075, 86.93, 1171306, 0, 0),
(11711, 1, 4384.206, -61.075, 86.93, 0, 0, 0),
(11711, 2, 4378.210, -49.390, 85.54, 0, 0, 0),
(11711, 3, 4379.270, -41.688, 80.02, 0, 0, 0),
(11711, 4, 4373.655, -34.314, 73.71, 0, 0, 0),
(11711, 5, 4366.765, -22.430, 70.20, 0, 0, 0),
(11711, 6, 4368.861, -15.438, 68.36, 0, 0, 0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1171301,1171306);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, buddy_entry, search_radius, data_flags, comments) VALUES
(1171301, 0, 25, 1, 0, 0, 0, 'set run on'),
(1171306, 0, 26, 0, 11711, 10, 2, 'attack Sentinel Aynasha');
-- quest 667 - Death From Below (Xfurry)
DELETE FROM db_script_string WHERE entry IN (2000005632,2000005633);
INSERT INTO db_script_string (entry,content_default,sound,type,language,emote,comment) VALUES
(2000005632,'All hands to battle stations! Naga incoming!',0,1,0,22,'Shakes O\'Breen - yell_naga_1'),
(2000005633,'If we can just hold them now, I am sure we will be in the clear.',0,0,0,0,'Shakes O\'Breen - yell_naga_2');
-- quest script
UPDATE quest_template SET StartScript = entry WHERE entry = 667;
DELETE FROM dbscripts_on_quest_start WHERE id = 667;
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, x, y, z, o, comments) VALUES
-- (667, 0, C, d, d2, 0, 0, 0, 'change npc-flags on quest-accept'),  -- ??
(667, 0, 0, 0, 0, 0, 0, 0, 2000005632, 0, 0, 0, 0, 'say_protect_1'),
-- First wave
(667, 20, 10, 2775, 60000, 0, 0, 0, 0, -2158.563, -1972.463, 15.812, 0, 'summon first wave'),
(667, 20, 10, 2775, 60000, 0, 0, 0, 0, -2153.296, -1969.006, 15.628, 0, 'summon first wave'),
(667, 20, 10, 2775, 60000, 0, 0, 0, 0, -2155.721, -1970.597, 15.327, 0, 'summon first wave'),
-- Condition check
(667, 50, 34, 317, 667, 0, 0, 0, 0, 0, 0, 0, 0, 'Stop script if player is dead or out of range'),
(667, 50, 34, 318, 667, 0, 0, 0, 0, 0, 0, 0, 0, 'Stop script if npc is dead'),
-- Second wave
(667, 55, 10, 2775, 60000, 0, 0, 0, 0, -2158.563, -1972.463, 15.812, 0, 'summon second wave'),
(667, 55, 10, 2775, 60000, 0, 0, 0, 0, -2153.296, -1969.006, 15.628, 0, 'summon second wave'),
(667, 55, 10, 2775, 60000, 0, 0, 0, 0, -2155.721, -1970.597, 15.327, 0, 'summon second wave'),
(667, 65, 0, 0, 0, 0, 0, 0, 2000005633, 0, 0, 0, 0, 'say_protect_2'),
-- Condition check
(667, 100, 34, 317, 667, 0, 0, 0, 0, 0, 0, 0, 0, 'Stop script if player is dead or out of range'),
(667, 100, 34, 318, 667, 0, 0, 0, 0, 0, 0, 0, 0, 'Stop script if npc is dead'),
-- Third wave
(667, 110, 10, 2775, 60000, 0, 0, 0, 0, -2158.563, -1972.463, 15.812, 0, 'summon third wave'),
(667, 130, 10, 2775, 60000, 0, 0, 0, 0, -2153.296, -1969.006, 15.628, 0, 'summon second wave'),
(667, 130, 10, 2775, 60000, 0, 0, 0, 0, -2155.721, -1970.597, 15.327, 0, 'summon second wave'),
-- Quest completed
(667, 190, 34, 317, 667, 0, 0, 0, 0, 0, 0, 0, 0, 'Stop script if player is dead or out of range'),
(667, 190, 34, 318, 667, 0, 0, 0, 0, 0, 0, 0, 0, 'Stop script if npc is dead'),
(667, 195, 7, 667, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'quest complete');
UPDATE creature_template SET MovementType = 2 WHERE entry IN (2775);
DELETE FROM creature_movement_template WHERE entry IN (2775);
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, script_id, waittime, orientation) VALUES
(2775, 1, -2153.701, -1973.676, 15.00, 277501, 1000, 5.4),
(2775, 2, -2145.585, -1985.125, 12.04, 0, 0, 0),
(2775, 3, -2132.084, -1992.558, 5.96, 0, 0, 0),
(2775, 4, -2118.418, -2005.057, 5.63, 0, 0, 0),
(2775, 5, -2109.372, -2024.358, 6.08, 0, 0, 0),
(2775, 6, -2100.003, -2030.407, 3.14, 277506, 0, 0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (277501,277506);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, buddy_entry, search_radius, data_flags, comments) VALUES
(277501, 0, 25, 1, 0, 0, 0, 'set run on'),
(277506, 0, 26, 0, 2610, 20, 2, 'attack Shakes O\'Breen');


-- Grz3s
-- ---------------
-- GOSSIPS -- (sniff)
-- ---------------

-- Mankrik -- gossips
UPDATE creature_template SET GossipMenuId = 2861 WHERE entry = 3432;
DELETE FROM gossip_menu WHERE entry = 2861; 
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(2861, 3553, 0, 0), -- main 
(2861, 3554, 0, 943); -- after all his quests
DELETE FROM conditions WHERE condition_entry IN (941, 942, 943); 
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(943, -1, 942, 941),
(942, 8, 4921, 0),
(941, 8, 899, 0);

-- ---------------
-- Quests
-- ---------------

-- Vyletongue Corruption (q.7029) -H (q.7041) -A
DELETE FROM dbscripts_on_quest_start WHERE id = 7029;
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(7029,2,0,0,0,0,0,0,2000005465,0,0,0,0,0,0,0,'');
UPDATE quest_template SET StartScript = 7029 WHERE entry = 7029; -- Horde ver.
UPDATE quest_template SET StartScript = 7029 WHERE entry = 7041; -- Alliance ver

-- Raptor Horns(q.865)
DELETE FROM dbscripts_on_quest_end WHERE id = 865;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(865,0,0,0,0,0,0,0,2000005752,0,0,0,0,0,0,0,''),
(865,2,15,17550,0,0,0,0,0,0,0,0,0,0,0,0,''),
(865,6,1,34,0,0,0,0,0,0,0,0,0,0,0,0,''),
(865,10,0,0,0,0,0,0,2000005753,0,0,0,0,0,0,0,'');
UPDATE quest_template SET CompleteScript = 865 WHERE entry = 865;
DELETE FROM db_script_string WHERE entry IN (2000005752,2000005753);
INSERT INTO db_script_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8, sound, type, language, emote, comment) VALUES
(2000005752,'Now let\'s try it...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL),
(2000005753,'Ugh! That\'s terrible!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL);

-- Sarkoth (Durotar) -- redone (this time 100% correct)
DELETE FROM dbscripts_on_quest_end WHERE id = 790;
DELETE FROM dbscripts_on_quest_start WHERE id = 804;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES 
(790,2,28,8,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_KNEEL'),
(790,5,0,0,0,0,0,0,2000000002,0,0,0,0,0,0,0,''),
(790,7,28,7,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_DEATH');
UPDATE quest_template SET StartScript = 0 WHERE entry IN (790, 804);
UPDATE quest_template SET CompleteScript = 790 WHERE entry = 790;

-- Minshina's Skull(q.808)
DELETE FROM dbscripts_on_quest_end WHERE id = 808;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES 
(808,2,10,3289,15000,0,0,0,0,0,0,0,-822.285,-4921.8,19.4009,2.6098,'summon'),
(808,5,1,2,0,3289,20,7,0,0,0,0,0,0,0,0,''),
(808,7,0,0,0,0,0,0,2000000016,0,0,0,0,0,0,0,'');
UPDATE quest_template SET CompleteScript = 808 WHERE entry = 808;
UPDATE creature_template SET movementType = 0 WHERE entry = 3289;

-- Report to Orgnil(q.823)
DELETE FROM dbscripts_on_quest_end WHERE id = 823;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES 
(823,1,0,0,0,0,0,0,2000005777,0,0,0,0,0,0,0,''),
(823,4,0,0,0,0,0,0,2000005778,0,0,0,0,0,0,0,'');
DELETE FROM db_script_string WHERE entry IN (2000005777, 2000005778);
INSERT INTO db_script_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8, sound, type, language, emote, comment) VALUES
(2000005777,'%s listens to Sigilbringer\'s report...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,NULL),
(2000005778,'What?? The Burning Blade is spreading! We must investigate!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,5,NULL);
UPDATE quest_template SET CompleteScript = 823 WHERE entry = 823;

-- Dark Storms(q.806) - update (now completed) '
DELETE FROM dbscripts_on_quest_end WHERE id = 806;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES 
(806,1,0,0,0,0,0,0,2000000065,0,0,0,0,0,0,0,''),
(806,4,0,0,0,0,0,0,2000005779,0,0,0,0,0,0,0,'');
DELETE FROM db_script_string WHERE entry = 2000005779;
INSERT INTO db_script_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8, sound, type, language, emote, comment) VALUES
(2000005779,'%s smashes the dead, twisted claw. ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,NULL);
UPDATE quest_template SET CompleteScript = 806 WHERE entry = 806;

-- The Stagnant Oasis(q.877) -H
DELETE FROM dbscripts_on_event WHERE id = 525;
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(525,1,9,121921,30,0,0,0,0,0,0,0,0,0,0,0,'respawn gobject'),
(525,1,9,121922,30,0,0,0,0,0,0,0,0,0,0,0,'respawn gobject'),
(525,1,9,121923,30,0,0,0,0,0,0,0,0,0,0,0,'respawn gobject'),
(525,1,9,121924,30,0,0,0,0,0,0,0,0,0,0,0,'respawn gobject'),
(525,1,9,121925,30,0,0,0,0,0,0,0,0,0,0,0,'respawn gobject');
-- Fissure plant -- shouldnt be any flag set there
UPDATE gameobject_template SET flags = 0 WHERE entry = 3743;
DELETE FROM gameobject_loot_template WHERE entry = 2603;
INSERT INTO gameobject_loot_template (entry, item, ChanceorQuestChance, groupid, minCountorRef, maxCount, condition_id) VALUES
(2603, 5066, 100, 0 , 1, 1, 0); -- correct

-- Revenge of Gann(q.849) -H 
UPDATE gameobject SET spawntimesecs  = 60, animprogress = 255 WHERE guid = 13259; -- gameobject can be destroyed by spell (explode animation works)

-- The Tear of the Moons (q.857) -H
DELETE FROM dbscripts_on_quest_end WHERE id = 857;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES 
(857,1,0,0,0,0,0,0,2000000345,0,0,0,0,0,0,0,''),
(857,3,1,4,0,0,0,0,0,0,0,0,0,0,0,0,''),
(857,6,3,0,0,0,0,0,0,0,0,0,0,0,0,5.13708,''),
(857,7,0,0,0,0,0,0,2000000346,0,0,0,0,0,0,0,''),
(857,10,0,0,0,0,0,0,2000000347,0,0,0,0,0,0,0,''),
(857,13,0,0,0,0,0,0,2000000348,0,0,0,0,0,0,0,''),
(857,15,23,724,0,0,0,0,0,0,0,0,0,0,0,0,''),
(857,16,3,0,0,0,0,0,0,0,0,0,-4217.93,-2343.5,91.6918,4.6415,''),
(857,18,15,5,0,0,0,0x02,0,0,0,0,0,0,0,0,'');
DELETE FROM dbscripts_on_creature_death WHERE id = 3421;
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(3421,1,23,0,0,0,0,0,0,0,0,0,0,0,0,0,'demorph');
DELETE FROM db_script_string WHERE entry BETWEEN 2000000345 AND 2000000348;
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000000345,'The power of the Tear of the Moons is mine! Mine I say!',0,0,0,5,NULL),
(2000000346,'%s begins to rub the Tear of the Moons.',0,2,0,0,NULL),
(2000000347,'Power! Glorious power!',0,0,0,15,NULL),
(2000000348,'%s begins to make strange grunting noises. The Tear of the Moons drops to the ground and shatters.',0,2,0,0,NULL);
UPDATE quest_template SET CompleteScript = 857 WHERE entry = 857;
-- Feegly the Exiled
UPDATE creature SET position_x = -4218.656250, position_y = -2339.575684, position_z = 91.730965, orientation = 1.864294, spawntimesecs = 60 WHERE guid = 14138;


-- ---------------
--  Random updates 
-- ---------------
-- Morley Bates -- Undercity
UPDATE creature SET MovementType = 2,spawndist = 0 WHERE guid = 38421;
DELETE FROM creature_movement WHERE id = 38421;
UPDATE creature_template SET MovementType = 2 WHERE entry = 4571; -- now move him to template (unique npc)
DELETE FROM creature_movement_template WHERE entry = 4571;
INSERT INTO creature_movement_template (entry,point,position_x,position_y,position_z,waittime,script_id,textid1,textid2,textid3,textid4,textid5,emote,spell,wpguid,orientation,model1,model2) VALUES
(4571,1,1692.201904,139.641846,-55.214390,0,0,0,0,0,0,0,0,0,0,6.123605,0,0),
(4571,2,1694.764893,138.542770,-55.022465,0,0,0,0,0,0,0,0,0,0,5.588755,0,0),
(4571,3,1698.867065,134.570557,-52.505413,0,0,0,0,0,0,0,0,0,0,5.520430,0,0),
(4571,4,1702.585693,131.029968,-49.612007,0,0,0,0,0,0,0,0,0,0,5.485089,0,0),
(4571,5,1705.978516,127.957245,-48.915165,0,0,0,0,0,0,0,0,0,0,5.418329,0,0),
(4571,6,1709.306274,124.367935,-49.698490,0,0,0,0,0,0,0,0,0,0,5.434034,0,0),
(4571,7,1712.874023,120.622345,-52.617626,0,0,0,0,0,0,0,0,0,0,5.390840,0,0),
(4571,8,1717.208252,116.369743,-55.215046,0,0,0,0,0,0,0,0,0,0,5.020132,0,0),
(4571,9,1715.927490,112.043648,-55.215046,0,0,0,0,0,0,0,0,0,0,3.865062,0,0),
(4571,10,1710.193848,105.648643,-60.226227,0,0,0,0,0,0,0,0,0,0,3.989156,0,0),
(4571,11,1704.670166,98.548027,-60.156685,0,0,0,0,0,0,0,0,0,0,3.708768,0,0),
(4571,12,1702.469849,96.913681,-62.183727,0,0,0,0,0,0,0,0,0,0,3.757463,0,0),
(4571,13,1696.200073,89.700615,-62.245487,0,0,0,0,0,0,0,0,0,0,4.154087,0,0),
(4571,14,1693.445557,80.922714,-62.289646,0,0,0,0,0,0,0,0,0,0,4.904924,0,0),
(4571,15,1694.970947,74.606171,-62.289646,0,0,0,0,0,0,0,0,0,0,5.439004,0,0),
(4571,16,1703.908081,68.916229,-62.289646,0,0,0,0,0,0,0,0,0,0,6.058682,0,0),
(4571,17,1716.820801,67.587296,-62.281952,0,0,0,0,0,0,0,0,0,0,0.244379,0,0),
(4571,18,1726.935669,73.529434,-62.280739,0,0,0,0,0,0,0,0,0,0,0.759600,0,0),
(4571,19,1746.531616,97.615318,-62.277756,0,0,0,0,0,0,0,0,0,0,0.680274,0,0),
(4571,20,1761.977051,112.225182,-62.282078,0,0,0,0,0,0,0,0,0,0,1.051768,0,0),
(4571,21,1764.695068,122.498894,-62.289280,0,0,0,0,0,0,0,0,0,0,1.664379,0,0),
(4571,22,1762.121338,130.429794,-62.293812,0,0,0,0,0,0,0,0,0,0,2.294268,0,0),
(4571,23,1756.816772,135.878189,-62.296608,0,0,0,0,0,0,0,0,0,0,2.690109,0,0),
(4571,24,1748.166870,137.670273,-62.280506,0,0,0,0,0,0,0,0,0,0,3.475508,0,0),
(4571,25,1742.719971,136.389114,-62.215290,0,0,0,0,0,0,0,0,0,0,3.800663,0,0),
(4571,26,1737.080444,131.298904,-62.116192,0,0,0,0,0,0,0,0,0,0,3.754325,0,0),
(4571,27,1735.050415,129.373520,-60.103340,0,0,0,0,0,0,0,0,0,0,3.699347,0,0),
(4571,28,1727.588257,123.737144,-60.372936,0,0,0,0,0,0,0,0,0,0,3.788882,0,0),
(4571,29,1721.737671,118.051208,-55.215641,0,0,0,0,0,0,0,0,0,0,3.820298,0,0),
(4571,30,1717.091797,117.097122,-55.031643,0,0,0,0,0,0,0,0,0,0,2.419933,0,0),
(4571,31,1713.285400,120.886414,-52.663830,0,0,0,0,0,0,0,0,0,0,2.383019,0,0),
(4571,32,1709.635254,123.817406,-50.022968,0,0,0,0,0,0,0,0,0,0,2.390873,0,0),
(4571,33,1705.950806,127.811539,-48.913475,0,0,0,0,0,0,0,0,0,0,2.379092,0,0),
(4571,34,1702.807983,131.052505,-49.581020,0,0,0,0,0,0,0,0,0,0,2.288771,0,0),
(4571,35,1699.202026,134.708969,-52.444389,0,0,0,0,0,0,0,0,0,0,2.363384,0,0),
(4571,36,1695.124146,138.728653,-54.968365,0,0,0,0,0,0,0,0,0,0,2.152897,0,0),
(4571,37,1694.589111,141.696426,-55.214432,0,0,0,0,0,0,0,0,0,0,1.100463,0,0),
(4571,38,1695.868896,143.529465,-55.214268,0,0,0,0,0,0,0,0,0,0,0.698551,0,0),
(4571,39,1701.858887,150.072723,-60.469513,0,0,0,0,0,0,0,0,0,0,1.418761,0,0),
(4571,40,1701.063477,158.274918,-60.438343,0,0,0,0,0,0,0,0,0,0,1.211416,0,0),
(4571,41,1704.810181,171.620438,-60.737682,0,0,0,0,0,0,0,0,0,0,1.962257,0,0),
(4571,42,1700.957275,175.207169,-62.000648,0,0,0,0,0,0,0,0,0,0,2.709171,0,0),
(4571,43,1694.132935,176.281799,-62.171570,0,0,0,0,0,0,0,0,0,0,3.569968,0,0),
(4571,44,1678.931519,164.417252,-62.156734,0,0,0,0,0,0,0,0,0,0,3.902192,0,0),
(4571,45,1661.356812,147.728577,-62.165779,0,0,0,0,0,0,0,0,0,0,4.109537,0,0),
(4571,46,1656.410156,141.673599,-62.155628,0,0,0,0,0,0,0,0,0,0,4.415842,0,0),
(4571,47,1658.164429,130.089584,-62.195759,0,0,0,0,0,0,0,0,0,0,5.289191,0,0),
(4571,48,1660.051758,128.194778,-61.495415,0,0,0,0,0,0,0,0,0,0,5.849962,0,0),
(4571,49,1670.617188,126.868576,-61.480343,0,0,0,0,0,0,0,0,0,0,0.112627,0,0),
(4571,50,1672.972656,126.964844,-60.389759,0,0,0,0,0,0,0,0,0,0,0.327826,0,0),
(4571,51,1683.947754,131.563538,-60.465267,0,0,0,0,0,0,0,0,0,0,0.822258,0,0),
(4571,52,1690.073608,137.640442,-55.214428,0,0,0,0,0,0,0,0,0,0,0.721727,0,0);
-- Mogg - BARRENS
-- spawndist  = 5 must be set,without that, randommovement from script will never work
UPDATE creature SET position_x = 1017.95, position_y = -2224.33, position_z = 93.08, orientation = 4.70, MovementType = 2, spawndist = 5 WHERE guid = 13964;
UPDATE creature SET position_x = 1017.95, position_y = -2224.33, position_z = 93.08, orientation = 4.70, MovementType = 0, spawndist = 0 WHERE guid = 13980;
DELETE FROM creature_movement WHERE id = 13964;
UPDATE creature_template SET MovementType = 2 WHERE entry = 14908; -- now move him to template (unique npc)
DELETE FROM creature_movement_template WHERE entry = 14908;
INSERT INTO creature_movement_template (entry,point,position_x,position_y,position_z,waittime,script_id,textid1,textid2,textid3,textid4,textid5,emote,spell,wpguid,orientation,model1,model2) VALUES
(14908,1,1022.235779,-2235.107910,93.311417,0,0,0,0,0,0,0,0,0,0,5.050608,0,0),
(14908,2,1023.366699,-2238.182373,92.374435,0,0,0,0,0,0,0,0,0,0,4.901490,0,0),
(14908,3,1024.204590,-2243.961182,92.469681,0,0,0,0,0,0,0,0,0,0,3.932313,0,0),
(14908,4,1022.052673,-2244.862549,92.338455,0,0,0,0,0,0,0,0,0,0,2.761287,0,0),
(14908,5,1020.207947,-2242.918213,92.232147,8000,1490801,0,0,0,0,0,0,0,0,1.911485,0,0), 
(14908,6,1034.187012,-2250.560059,92.865570,6000,1490802,0,0,0,0,0,0,0,0,5.877740,0,0),
(14908,7,1033.848511,-2258.611084,93.633789,0,0,0,0,0,0,0,0,0,0,5.175600,0,0),
(14908,8,1037.684692,-2262.024658,93.814468,0,0,0,0,0,0,0,0,0,0,5.099416,0,0),
(14908,9,1036.964111,-2269.702637,93.755440,0,0,0,0,0,0,0,0,0,0,5.317762,0,0),
(14908,10,1042.000977,-2273.459717,93.693169,5000,1490807,0,0,0,0,0,0,0,0,5.027948,0,0),
(14908,11,1042.695801,-2275.516846,93.578140,0,0,0,0,0,0,0,0,0,0,5.481912,0,0),
(14908,12,1046.523682,-2274.459717,93.604500,0,0,0,0,0,0,0,0,0,0,0.547255,0,0),
(14908,13,1050.259277,-2270.443359,93.498596,0,0,0,0,0,0,0,0,0,0,1.132377,0,0),
(14908,14,1049.739624,-2266.861816,93.347488,0,0,0,0,0,0,0,0,0,0,2.032443,0,0),
(14908,15,1048.046997,-2263.529297,93.224899,0,0,0,0,0,0,0,0,0,0,2.443207,0,0),
(14908,16,1041.046753,-2258.765625,93.452538,0,0,0,0,0,0,0,0,0,0,2.118837,0,0),
(14908,17,1039.138672,-2253.676270,92.961128,6000,1490808,0,0,0,0,0,0,0,0,1.470883,0,0),
(14908,18,1032.798584,-2253.547119,93.363281,0,0,0,0,0,0,0,0,0,0,3.619733,0,0),
(14908,19,1025.832764,-2258.538330,93.164093,0,0,0,0,0,0,0,0,0,0,4.158517,0,0),
(14908,20,1021.936951,-2266.235352,92.830612,0,0,0,0,0,0,0,0,0,0,4.826887,0,0),
(14908,21,1022.811462,-2272.140137,92.661667,0,0,0,0,0,0,0,0,0,0,5.267497,0,0),
(14908,22,1027.020386,-2277.889648,92.670853,0,0,0,0,0,0,0,0,0,0,5.707319,0,0),
(14908,23,1036.561890,-2280.122803,93.119659,0,0,0,0,0,0,0,0,0,0,0.098003,0,0),
(14908,24,1046.664185,-2275.731445,93.535553,0,0,0,0,0,0,0,0,0,0,0.818999,0,0),
(14908,25,1049.609863,-2269.771484,93.550903,0,0,0,0,0,0,0,0,0,0,1.455172,0,0),
(14908,26,1045.756592,-2261.030762,93.252167,0,0,0,0,0,0,0,0,0,0,2.531954,0,0),
(14908,27,1038.298706,-2254.306641,93.103928,6000,1490803,0,0,0,0,0,0,0,0,1.990029,0,0),
(14908,28,1028.886841,-2245.043701,92.417068,4000,1490804,0,0,0,0,0,0,0,0,2.057572,0,0),
(14908,29,1030.948975,-2242.987793,92.263474,0,0,0,0,0,0,0,0,0,0,0.737318,0,0),
(14908,30,1030.990967,-2246.370117,92.489189,0,0,0,0,0,0,0,0,0,0,4.676095,0,0),
(14908,31,1026.534058,-2244.682861,92.417534,5000,1490805,0,0,0,0,0,0,0,0,1.920917,0,0),
(14908,32,1023.985229,-2246.925537,92.415733,0,0,0,0,0,0,0,0,0,0,3.545906,0,0),
(14908,33,1022.480835,-2246.017822,92.334770,0,0,0,0,0,0,0,0,0,0,2.334821,0,0),
(14908,34,1020.937195,-2242.871338,92.286667,0,0,0,0,0,0,0,0,0,0,2.005739,0,0),
(14908,35,1022.749268,-2244.529053,92.396469,0,0,0,0,0,0,0,0,0,0,5.986138,0,0),
(14908,36,1024.250366,-2241.753418,92.434258,0,0,0,0,0,0,0,0,0,0,1.313017,0,0),
(14908,37,1023.625366,-2237.151495557,92.379318,0,0,0,0,0,0,0,0,0,0,1.831380,0,0),
(14908,38,1019.266907,-2227.937500,93.207352,0,0,0,0,0,0,0,0,0,0,2.381159,0,0),
(14908,39,1014.191467,-2225.346436,93.037804,5000,1490809,0,0,0,0,0,0,0,0,2.842187,0,0),
(14908,40,1017.351685,-2224.140381,93.069107,180000,1490806,0,0,0,0,0,0,0,0,5.143410,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 1490801 AND 1490809; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1490801,1,20,1,5,14909,50,7,0,0,0,0,0,0,0,0,'movement chenged to 1:random'),
(1490801,4,0,0,0,0,0,0,2000005767,0,0,0,0,0,0,0,''),
(1490801,7,0,0,0,0,0,0,2000005768,0,0,0,0,0,0,0,''),
(1490802,4,0,0,0,0,0,0,2000005769,0,0,0,0,0,0,0,''),
(1490802,5,25,1,0,0,0,0,0,0,0,0,0,0,0,0,'RUN ON'),
(1490803,1,0,0,0,0,0,0,2000005772,0,0,0,0,0,0,0,''),
(1490803,2,25,0,0,0,0,0,0,0,0,0,0,0,0,0,'RUN OFF'),
(1490803,6,0,0,0,0,0,0,2000005773,0,0,0,0,0,0,0,''),
(1490804,0,20,0,0,14909,50,7,0,0,0,0,0,0,0,0,'movement chenged to 0:idle'),
(1490804,1,25,1,0,14909,50,7,0,0,0,0,0,0,0,0,'RUN ON'),
(1490804,2,3,0,0,14909,50,7,0,0,0,0,1021.28,-2233.42,93.33,5.05,'force buddy to move'),
(1490804,6,0,0,0,14909,50,7,2000005774,0,0,0,0,0,0,0,'force buddy to: say text'),
(1490804,9,0,0,0,0,0,0,2000005011,0,0,0,0,0,0,0,''), -- text_id already in DB.
(1490804,10,25,0,0,14909,50,7,0,0,0,0,0,0,0,0,'RUN OFF'),
(1490804,12,3,0,0,14909,50,7,0,0,0,0,1013.24,-2221.47,92.9837,2.50,'force buddy to move'),
(1490804,17,3,0,0,14909,50,7,0,0,0,0,1017.95,-2224.33,93.08,4.70,'force buddy to move'),
(1490804,20,20,1,5,14909,50,7,0,0,0,0,0,0,0,0,'movement chenged to 1:random'),
(1490805,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,'RUN ON'),
(1490806,0,20,1,5,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 1:random'),
(1490806,1,25,0,0,0,0,0,0,0,0,0,0,0,0,0,'RUN OFF'),
(1490806,2,20,1,5,14909,50,7,0,0,0,0,0,0,0,0,'movement chenged to 1:random'),
(1490806,180,20,2,0,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 2:waypoint'),
(1490807,4,0,0,0,0,0,0,2000005770,0,0,0,0,0,0,0,''),
(1490808,5,0,0,0,0,0,0,2000005771,0,0,0,0,0,0,0,''),
(1490809,4,0,0,0,0,0,0,2000005775,0,0,0,0,0,0,0,'');
DELETE FROM db_script_string WHERE entry BETWEEN 2000005767 AND 2000005775;
INSERT INTO db_script_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8, sound, type, language, emote, comment) VALUES 
(2000005767,'I am going to practice and become a warrior like my father!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL),
(2000005768,'Now to find an unsuspecting Harpy!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL),
(2000005769,'There\'s one! For the Horde!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL),
(2000005770,'Take that you mangy Harpy! Hyaa!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL),
(2000005771,'You can\'t get away from a warrior of the Horde! Take that! And that!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL),
(2000005772,'Now go back home where you belong!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL),
(2000005773,'Aaahhh... Another glorious victory for The Horde!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL),
(2000005774,'Mogg, get inside. It is not safe out there while your father is gone.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL),
(2000005775,'When is pappa comming back from the fights in Warsong? It has been so long...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL);
-- Morbent Fel - update 
UPDATE creature_template SET scale = 1, UnitFlags = UnitFlags | 512 WHERE entry = 1200; -- prev value was taken with his aura (changes his size)
UPDATE creature SET spawntimesecs = 240 WHERE guid = 5056;
/* DELETE FROM dbscripts_on_spell WHERE id = 8913; 
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(8913,2,10,24782,120000,1200,50,7,0,0,0,0,0,0,0,0,''),
(8913,3,18,0,0,1200,50,7,0,0,0,0,0,0,0,0,''); */
-- Crildor - update
UPDATE creature_template SET NpcFlags = 0 WHERE entry = 5782;
-- Crag Boar
UPDATE creature SET position_x = -6070.349121, position_y = -285.940399, position_z = 428.220367, orientation = 1.496177 WHERE guid = 263;
UPDATE creature SET position_x = -6104.470703, position_y = -163.987122, position_z = 433.257080, orientation = 1.833880 WHERE guid = 1716;
UPDATE creature SET position_x = -5988.834473, position_y = -135.639069, position_z = 400.818604, orientation = 4.441411 WHERE guid = 290;
-- Mortar Combat - event
-- correct spawn possition for all involved in event
UPDATE creature SET position_x = -6009.25, position_y = -202.649994, position_z = 406.982605, orientation = 1.58825 WHERE guid = 269; -- angus
UPDATE creature SET orientation = 0.03490658 WHERE guid = 265 ; -- hegnar
UPDATE creature SET position_x = -6007.301758, position_y = -200.348206, position_z = 406.777496, orientation = 3.282219 WHERE guid = 272; -- klemmy
UPDATE creature SET position_x = -6007.458984, position_y = -202.157593, position_z = 407.447937, orientation = 2.478368 WHERE guid = 267; -- shorty
UPDATE creature SET position_x = -6010.668151495, position_y = -199.434006, position_z = 406.792480, orientation = 5.532694 WHERE guid = 268; -- middlecamp
UPDATE creature SET position_x = -6008.527832, position_y = -199.145203, position_z = 406.687225, orientation = 4.372177 WHERE guid = 266; -- wheeler
-- Angus
UPDATE creature_template SET MovementType = 2 WHERE entry = 10610;
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 269;
DELETE FROM creature_movement_template WHERE entry = 10610;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(10610,1,-6009.25,-202.649994,406.982605,45000,0,0,0,0,0,0,0,0,0,1.58825,0,0),
(10610,2,-6009.25,-202.649994,406.982605,1000,1061001,0,0,0,0,0,0,0,0,1.58825,0,0),
(10610,3,-6009.25,-202.649994,406.982605,2000,1061002,0,0,0,0,0,0,0,0,1.58825,0,0),
(10610,4,-6031.16,-230.264,414.361,250000,1061003,0,0,0,0,0,0,0,0,2.18492,0,0),
(10610,5,-6009.25,-202.649994,406.982605,300000,0,0,0,0,0,0,0,0,0,1.58825,0,0),
(10610,6,-6009.25,-202.649994,406.982605,5000,1061004,0,0,0,0,0,0,0,0,1.58825,0,0),
(10610,7,-6009.25,-202.649994,406.982605,300000,0,0,0,0,0,0,0,0,0,1.58825,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 1061001 AND 1061004;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1061001,0,21,1,0,0,0,0,0,0,0,0,0,0,0,0,'Angus - active'),
(1061001,0,21,1,0,10805,272,0x10,0,0,0,0,0,0,0,0,'Klemmy - active'),
(1061001,0,21,1,0,10611,267,0x10,0,0,0,0,0,0,0,0,'Shorty - active'),
(1061001,1,21,1,0,10803,266,0x10,0,0,0,0,0,0,0,0,'Wheeler - active'),
(1061001,1,21,1,0,10804,268,0x10,0,0,0,0,0,0,0,0,'Middlecamp - active'),
(1061002,0,25,1,0,10805,272,0x10,0,0,0,0,0,0,0,0,'RUN ON'),
(1061002,1,16,6598,2,0,0,0,0,0,0,0,0,0,0,0,'sound'),
(1061002,2,3,0,0,10611,267,0x10,0,0,0,0,-6031.589,-228.182,414.4035,2,'Shorty'),
(1061002,2,3,0,0,10804,268,0x10,0,0,0,0,-6034.14,-223.333,413.4,1,'Middlecamp'),
(1061002,2,3,0,0,10805,272,0x10,0,0,0,0,-6011.17,-197.021,406.765,1.97737,'Klemmy'),
(1061002,2,3,0,0,10803,266,0x10,0,0,0,0,-6011.87,-199.241,406.834,4.31443,'Wheeler'),
(1061002,3,3,0,0,10805,272,0x10,0,0,0,0,-6015.51,-184.362,407.712,2.49704,'Klemmy'),
(1061002,5,3,0,0,10805,272,0x10,0,0,0,0,-6065.18,-201.938,424.419,5,'Klemmy'),
(1061002,4,3,0,0,10803,266,0x10,0,0,0,0,-6031.929,-221.0882,413.1531,2.443461,'Wheeler'),
(1061002,15,3,0,0,10805,272,0x10,0,0,0,0,0,0,0,5.59936,'Klemmy'),
(1061002,17,3,0,0,10611,267,0x10,0,0,0,0,0,0,0,2.18492,'Shorty'),
(1061002,18,3,0,0,10803,266,0x10,0,0,0,0,0,0,0,2.443461,'Wheeler'),
(1061002,18,3,0,0,10804,268,0x10,0,0,0,0,0,0,0,1.884956,'Middlecamp'),
(1061002,22,3,0,0,1243,265,0x10,0,0,0,0,0,0,0,3.68522,'Hegnar'),
(1061003,5,0,0,0,10804,268,7 | 0x10,2000005730,0,0,0,0,0,0,0,'Middlecamp'),
(1061003,8,15,16768,0,10804,268,7 | 0x10,0,0,0,0,0,0,0,0,'Middlecamp'), 
(1061003,10,0,0,0,10804,268,7 | 0x10,2000005731,0,0,0,0,0,0,0,'Middlecamp'),
(1061003,14,0,0,0,10804,268,7 | 0x10,2000005732,0,0,0,0,0,0,0,'Middlecamp'),
(1061003,16,15,16772,0,10804,268,7 | 0x10,0,0,0,0,0,0,0,0,'Middlecamp'),
(1061003,18,0,0,0,10804,268,7 | 0x10,2000005733,0,0,0,0,0,0,0,'Middlecamp'),
(1061003,20,3,0,0,10804,268,0x10,0,0,0,0,0,0,0,0.810652,'Middlecamp'),
(1061003,21,1,5,0,10804,268,0x10,0,0,0,0,0,0,0,0,'Middlecamp'),
(1061003,21,1,11,0,10803,266,0x10,0,0,0,0,0,0,0,0,'Wheeler'),
(1061003,22,1,274,0,10611,267,0x10,0,0,0,0,0,0,0,0,'Shorty'),
(1061003,22,1,274,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1061003,23,3,0,0,10804,268,0x10,0,0,0,0,0,0,0,1.884956,'Middlecamp'),
(1061003,24,0,0,0,10803,266,7 | 0x10,2000005734,0,0,0,0,0,0,0,'Wheeler'),
(1061003,28,15,16767,0,10803,266,7 | 0x10,0,0,0,0,0,0,0,0,'Wheeler'),
(1061003,30,0,0,0,10803,266,7 | 0x10,2000005735,0,0,0,0,0,0,0,'Wheeler'),
(1061003,32,3,0,0,10803,266,0x10,0,0,0,0,0,0,0,4.00565,'Wheeler'),
(1061003,33,1,25,0,10803,266,0x10,0,0,0,0,0,0,0,0,'Wheeler'),
(1061003,33,16,6249,2,10803,266,0x10,0,0,0,0,0,0,0,0,'sound'),
(1061003,35,1,21,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1061003,36,1,21,0,10611,267,0x10,0,0,0,0,0,0,0,0,'Shorty'),
(1061003,36,1,23,0,10803,266,0x10,0,0,0,0,0,0,0,0,'Wheeler'),
(1061003,38,3,0,0,10803,266,0x10,0,0,0,0,0,0,0,2.443461,'Wheeler'),
(1061003,41,0,0,0,10804,268,7 | 0x10,2000005736,0,0,0,0,0,0,0,'Middlecamp'),
(1061003,43,15,16777,0,10804,268,7 | 0x10,0,0,0,0,0,0,0,0,'Middlecamp'),
(1061003,45,0,0,0,10804,268,7 | 0x10,2000005737,0,0,0,0,0,0,0,'Middlecamp'),
(1061003,47,1,20,0,10804,268,0x10,0,0,0,0,0,0,0,0,'Middlecamp'),
(1061003,47,3,0,0,10803,266,0x10,0,0,0,0,0,0,0,4.00565,'Wheeler'),
(1061003,48,1,6,0,10803,266,0x10,0,0,0,0,0,0,0,0,'Wheeler'),
(1061003,48,16,6248,2,10803,266,0x10,0,0,0,0,0,0,0,0,'sound'),
(1061003,51,3,0,0,10803,266,0x10,0,0,0,0,0,0,0,2.443461,'Wheeler'),
(1061003,51,0,0,0,10804,268,7 | 0x10,2000005738,0,0,0,0,0,0,0,'Middlecamp'),
(1061003,53,15,16780,0,10804,268,7 | 0x10,0,0,0,0,0,0,0,0,'Middlecamp'),
(1061003,55,0,0,0,10804,268,7 | 0x10,2000005739,0,0,0,0,0,0,0,'Middlecamp'),
(1061003,57,0,0,0,10803,266,7 | 0x10,2000005740,0,0,0,0,0,0,0,'Wheeler'),
(1061003,57,15,16775,0,10803,266,7 | 0x10,0,0,0,0,0,0,0,0,'Wheeler'),
(1061003,59,0,0,0,10803,266,7 | 0x10,2000005741,0,0,0,0,0,0,0,'Wheeler'),
(1061003,61,15,16778,0,10803,266,7 | 0x10,0,0,0,0,0,0,0,0,'Wheeler'),
(1061003,63,0,0,0,10803,266,7 | 0x10,2000005742,0,0,0,0,0,0,0,'Wheeler'),
(1061003,64,3,0,0,10803,266,0x10,0,0,0,0,0,0,0,4.00565,'Wheeler'),
(1061003,65,1,5,0,10803,266,0x10,0,0,0,0,0,0,0,0,'Wheeler'),
(1061003,65,3,0,0,10804,268,0x10,0,0,0,0,0,0,0,0.810652,'Middlecamp'),
(1061003,67,1,25,0,10804,268,0x10,0,0,0,0,0,0,0,0,'Middlecamp'),
(1061003,69,1,11,0,10804,268,0x10,0,0,0,0,0,0,0,0,'Middlecamp'),
(1061003,72,3,0,0,10804,268,0x10,0,0,0,0,0,0,0,1.884956,'Middlecamp'),
(1061003,72,3,0,0,10803,266,0x10,0,0,0,0,0,0,0,2.443461,'Wheeler'),
(1061003,74,0,0,0,10804,268,7 | 0x10,2000005743,0,0,0,0,0,0,0,'Middlecamp'),
(1061003,74,16,6250,2,10804,268,7 | 0x10,0,0,0,0,0,0,0,0,'sound'),
(1061003,74,15,16572,0,10804,268,7 | 0x10,0,0,0,0,0,0,0,0,'Middlecamp'),
(1061003,77,0,0,0,10804,268,7 | 0x10,2000005744,0,0,0,0,0,0,0,'Middlecamp'),
(1061003,77,16,6250,2,10804,268,7 | 0x10,0,0,0,0,0,0,0,0,'sound'),
(1061003,77,15,16776,0,10804,268,7 | 0x10,0,0,0,0,0,0,0,0,'Middlecamp'),
(1061003,80,0,0,0,10804,268,7 | 0x10,2000005745,0,0,0,0,0,0,0,'Middlecamp'),
(1061003,80,16,6250,2,10804,268,7 | 0x10,0,0,0,0,0,0,0,0,'sound'),
(1061003,80,15,16779,0,10804,268,7 | 0x10,0,0,0,0,0,0,0,0,'Middlecamp'),
(1061003,83,1,71,0,10804,268,0x10,0,0,0,0,0,0,0,0,'Middlecamp'),
(1061003,83,16,6246,2,10804,268,7 | 0x10,0,0,0,0,0,0,0,0,'sound'),
(1061003,87,3,0,0,10804,268,0x10,0,0,0,0,0,0,0,0.810652,'Middlecamp'),
(1061003,88,3,0,0,10803,266,0x10,0,0,0,0,0,0,0,4.00565,'Wheeler'),
(1061003,89,1,2,0,10804,268,0x10,0,0,0,0,0,0,0,0,'Middlecamp'),
(1061003,89,1,21,0,10611,267,0x10,0,0,0,0,0,0,0,0,'Shorty'),
(1061003,89,1,21,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1061003,89,1,21,0,10803,266,0x10,0,0,0,0,0,0,0,0,'Wheeler'),
(1061003,93,3,0,0,10804,268,0x10,0,0,0,0,0,0,0,5.13852,'Middlecamp'),
(1061003,93,3,0,0,10803,266,0x10,0,0,0,0,0,0,0,4.77803,'Wheeler'),
(1061003,93,3,0,0,10611,267,0x10,0,0,0,0,0,0,0,2.844887,'Shorty'),
(1061003,93,3,0,0,0,8,8,0,0,0,0,0,0,0,2.844887,''),
(1061003,94,25,0,0,10805,272,0x10,0,0,0,0,0,0,0,0,'RUN OFF'),
(1061003,95,1,4,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1061003,95,1,4,0,10611,267,0x10,0,0,0,0,0,0,0,0,'Shorty'),
(1061003,95,16,6256,2,0,0,0,0,0,0,0,0,0,0,0,''),
(1061003,95,3,0,0,10805,272,0x10,0,0,0,0,-6077.43,-213.2565,424.0502,5.59936,'Klemmy'),
(1061003,105,10,11875,180000,0,0,0,0,0,0,0,-6076,-215,424,0,'summon 1st Mortar Team Target Dummy'),
(1061003,106,25,1,0,10805,272,0x10,0,0,0,0,0,0,0,0,'RUN ON'),
(1061003,108,3,0,0,10805,272,0x10,0,0,0,0,-6065.903,-202.2976,424.3693,5,'Klemmy'),
(1061003,111,3,0,0,10805,272,0x10,0,0,0,0,0,0,0,5.59936,'Klemmy'),
(1061003,113,1,3,0,10805,272,0x10,0,0,0,0,0,0,0,0,'Klemmy'),
(1061003,115,3,0,0,10611,267,0x10,0,0,0,0,0,0,0,4.54215,'Shorty'),
(1061003,116,3,0,0,10805,272,0x10,0,0,0,0,0,0,0,4.0985,'Klemmy'),
(1061003,116,1,16,0,10611,267,0x10,0,0,0,0,0,0,0,0,'Shorty'),
(1061003,117,1,69,0,10611,267,0x10,0,0,0,0,0,0,0,0,'Shorty'),
(1061003,122,1,0,0,10611,267,0x10,0,0,0,0,0,0,0,0,'Shorty'),
(1061003,124,3,0,0,10611,267,0x10,0,0,0,0,0,0,0,2.844887,'Shorty'),
(1061003,125,3,0,0,10804,268,0x10,0,0,0,0,0,0,0,2.9147,'Middlecamp'),
(1061003,125,3,0,0,10803,266,0x10,0,0,0,0,0,0,0,3.01942,'Wheeler'),
(1061003,125,1,25,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1061003,126,15,18655,0,10611,267,0x10,0,0,0,0,0,0,0,0,'Shorty'),
(1061003,128,16,7316,2,0,0,0,0,0,0,0,0,0,0,0,'sound'),
(1061003,130,15,16786,0,10611,267,0x10,0,0,0,0,0,0,0,0,'Shorty'), 
(1061003,130,15,5,0,11875,100,7,0,0,0,0,0,0,0,0,''),
(1061003,133,1,17,0,10611,267,0x10,0,0,0,0,0,0,0,0,'Shorty'),
(1061003,134,25,0,0,10805,272,0x10,0,0,0,0,0,0,0,0,'RUN OFF'),
(1061003,136,3,0,0,10611,267,0x10,0,0,0,0,0,0,0,4.54215,'Shorty'),
(1061003,136,3,0,0,10805,272,0x10,0,0,0,0,-6077.43,-213.2565,424.0502,5.59936,'Klemmy'),
(1061003,137,1,1,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1061003,137,16,6252,2,0,0,0,0,0,0,0,0,0,0,0,''),
(1061003,138,1,4,0,10611,267,0x10,0,0,0,0,0,0,0,0,'Shorty'),
(1061003,141,3,0,0,10611,267,0x10,0,0,0,0,0,0,0,2.844887,'Shorty'),
(1061003,146,10,11875,180000,0,0,0,0,0,0,0,-6076,-215,424,0,'summon 2nd Mortar Team Target Dummy'),
(1061003,148,3,0,0,10805,272,0x10,0,0,0,0,-6071.88,-212.831,422.929,5,'Klemmy'),
(1061003,150,3,0,0,10805,272,0x10,0,0,0,0,0,0,0,6.04228,'Klemmy'),
(1061003,151,25,1,0,10805,272,0x10,0,0,0,0,0,0,0,0,'RUN ON'),
(1061003,152,1,66,0,10805,272,0x10,0,0,0,0,0,0,0,0,'Klemmy'),
(1061003,152,3,0,0,10611,267,0x10,0,0,0,0,0,0,0,4.54215,'Shorty'),
(1061003,154,3,0,0,10805,272,0x10,0,0,0,0,-6065.903,-202.2976,424.3693,5,'Klemmy'),
(1061003,154,28,8,0,10611,267,0x10,0,0,0,0,0,0,0,0,'STATE_KNEEL'),
(1061003,156,16,6254,2,0,0,0,0,0,0,0,0,0,0,0,''),
(1061003,157,3,0,0,10805,272,0x10,0,0,0,0,0,0,0,4.0985,'Klemmy'),
(1061003,161,28,0,0,10611,267,0x10,0,0,0,0,0,0,0,0,'STATE_STAND'),
(1061003,162,3,0,0,10611,267,0x10,0,0,0,0,0,0,0,2.844887,'Shorty'),
(1061003,163,1,25,0,10611,267,0x10,0,0,0,0,0,0,0,0,'Shorty'),
(1061003,163,16,6255,2,0,0,0,0,0,0,0,0,0,0,0,''),
(1061003,164,15,18655,0,10611,267,0x10,0,0,0,0,0,0,0,0,'Shorty'),
(1061003,165,16,7316,2,0,0,0,0,0,0,0,0,0,0,0,'sound'),
(1061003,166,15,16786,0,10611,267,0x10,0,0,0,0,0,0,0,0,'Shorty'), 
(1061003,166,15,5,0,11875,100,7,0,0,0,0,0,0,0,0,''),
(1061003,167,3,0,0,10611,267,0x10,0,0,0,0,0,0,0,4.54215,'Shorty'),
(1061003,167,25,0,0,10805,272,0x10,0,0,0,0,0,0,0,0,'RUN OFF'),
(1061003,168,1,25,0,10611,267,0x10,0,0,0,0,0,0,0,0,'Shorty'),
(1061003,168,16,6251,2,0,0,0,0,0,0,0,0,0,0,0,'sound'),
(1061003,169,3,0,0,10804,268,0x10,0,0,0,0,0,0,0,5.13852,'Middlecamp'),
(1061003,169,3,0,0,10805,272,0x10,0,0,0,0,-6077.43,-213.2565,424.0502,5.59936,'Klemmy'),
(1061003,170,1,21,0,10804,268,0x10,0,0,0,0,0,0,0,0,'Middlecamp'),
(1061003,170,3,0,0,10803,266,0x10,0,0,0,0,0,0,0,4.77803,'Wheeler'),
(1061003,171,3,0,0,10611,267,0x10,0,0,0,0,0,0,0,2.844887,'Shorty'),
(1061003,171,1,4,0,10803,266,0x10,0,0,0,0,0,0,0,0,'Wheeler'),
(1061003,178,10,12385,180000,0,0,0,0,0,0,0,-6076,-215,424,0,'summon Mortar Team Advanced Target Dummy'),
(1061003,180,3,0,0,10805,272,0x10,0,0,0,0,-6071.88,-212.831,422.929,5,'Klemmy'),
(1061003,182,3,0,0,10805,272,0x10,0,0,0,0,0,0,0,6.04228,'Klemmy'),
(1061003,182,15,18655,0,10611,267,0x10,0,0,0,0,0,0,0,0,'Shorty'),
(1061003,182,1,25,0,10805,272,0x10,0,0,0,0,0,0,0,0,'Klemmy'),
(1061003,183,1,11,0,10805,272,0x10,0,0,0,0,0,0,0,0,'Klemmy'),
(1061003,183,1,15,0,10611,267,0x10,0,0,0,0,0,0,0,0,'Shorty'),
(1061003,183,1,5,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1061003,184,16,6258,2,0,0,0,0,0,0,0,0,0,0,0,'sound'),
(1061003,184,25,1,0,10805,272,0x10,0,0,0,0,0,0,0,0,'RUN ON'),
(1061003,185,16,7316,2,0,0,0,0,0,0,0,0,0,0,0,'sound'),
(1061003,185,3,0,0,10804,268,0x10,0,0,0,0,0,0,0,2.9147,'Middlecamp'),
(1061003,185,3,0,0,10803,266,0x10,0,0,0,0,0,0,0,3.01942,'Wheeler'),
(1061003,185,3,0,0,10805,272,0x10,0,0,0,0,-6064.07,-209.851,421.98,6.10275,'Klemmy'),
(1061003,186,15,16786,0,10611,267,0x10,0,0,0,0,0,0,0,0,'Shorty'), 
(1061003,186,15,5,0,12385,100,7,0,0,0,0,0,0,0,0,''),
(1061003,187,1,10,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1061003,187,1,10,0,10611,267,0x10,0,0,0,0,0,0,0,0,'Shorty'),
(1061003,187,3,0,0,10805,272,0x10,0,0,0,0,-6061.97,-218.956,421.085,5.92054,'Klemmy'),
(1061003,190,3,0,0,10805,272,0x10,0,0,0,0,-6040.96,-221.929,414.921,5.92054,'Klemmy'),
(1061003,196,1,14,0,10805,272,0x10,0,0,0,0,0,0,0,0,'Klemmy'),
(1061003,196,1,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1061003,196,1,0,0,10611,267,0x10,0,0,0,0,0,0,0,0,'Shorty'),
(1061003,198,1,11,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1061003,198,1,11,0,10611,267,0x10,0,0,0,0,0,0,0,0,'Shorty'),
(1061003,199,1,11,0,10804,268,0x10,0,0,0,0,0,0,0,0,'Middlecamp'),
(1061003,199,1,11,0,10803,266,0x10,0,0,0,0,0,0,0,0,'Wheeler'),
(1061003,199,1,14,0,10805,272,0x10,0,0,0,0,0,0,0,0,'Klemmy'),
(1061003,200,1,11,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1061003,200,1,11,0,10611,267,0x10,0,0,0,0,0,0,0,0,'Shorty'),
(1061003,201,1,11,0,10804,268,0x10,0,0,0,0,0,0,0,0,'Middlecamp'),
(1061003,201,1,11,0,10803,266,0x10,0,0,0,0,0,0,0,0,'Wheeler'),
(1061003,202,3,0,0,10805,272,0x10,0,0,0,0,-6007.301758,-200.348206,406.777496,3.282219,'Klemmy'),
(1061003,202,3,0,0,10611,267,0x10,0,0,0,0,-6007.458984,-202.157593,407.447937,2,'Shorty'),
(1061003,203,3,0,0,0,0,0,0,0,0,0,-6009.25,-202.649994,406.982605,2,'angus'),
(1061003,203,3,0,0,10804,268,0x10,0,0,0,0,-6010.668151495,-199.434006,406.792480,5.532694,'Middlecamp'),
(1061003,203,3,0,0,10803,266,0x10,0,0,0,0,-6008.527832,-199.145203,406.687225,4.372177,'Wheeler'),
(1061003,212,3,0,0,10805,272,0x10,0,0,0,0,0,0,0,3.282219,'Klemmy'),
(1061003,216,3,0,0,10803,266,0x10,0,0,0,0,0,0,0,4.372177,'Wheeler'),
(1061003,228,3,0,0,0,0,0,0,0,0,0,0,0,0,1.58825,'angus'),
(1061003,219,3,0,0,10804,268,0x10,0,0,0,0,0,0,0,5.532694,'Middlecamp'),
(1061003,220,3,0,0,1243,265,0x10,0,0,0,0,0,0,0,0.03490658,'Hegnar'),
(1061003,220,3,0,0,10611,267,0x10,0,0,0,0,0,0,0,2.478368,'Shorty'),
(1061004,0,21,0,0,0,0,0,0,0,0,0,0,0,0,0,'Angus - unactive'),
(1061004,0,21,0,0,10805,272,0x10,0,0,0,0,0,0,0,0,'Klemmy - unactive'),
(1061004,0,21,0,0,10611,267,0x10,0,0,0,0,0,0,0,0,'Shorty - unactive'),
(1061004,1,21,0,0,10803,266,0x10,0,0,0,0,0,0,0,0,'Wheeler - unactive'),
(1061004,1,21,0,0,10804,268,0x10,0,0,0,0,0,0,0,0,'Middlecamp - unactive');
DELETE FROM db_script_string WHERE entry BETWEEN 2000005730 AND 2000005745;
INSERT INTO db_script_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8, sound, type, language, emote, comment) VALUES
(2000005730,'%s picks the orc target...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,25,NULL),
(2000005731,'%s misses...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,6,NULL),
(2000005732,'%s takes a more careful aim...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,6247,2,0,0,NULL),
(2000005733,'%s misses again...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,NULL),
(2000005734,'%s casually points at the orc target...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,25,NULL),
(2000005735,'%s hits!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,NULL),
(2000005736,'%s takes aim at the bottles...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,NULL),
(2000005737,'%s misses...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,15,NULL),
(2000005738,'%s takes aim at the bottles again...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,NULL),
(2000005739,'%s misses again...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,18,NULL),
(2000005740,'%s quickly shoots the middle target dead center...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,NULL),
(2000005741,'%s then takes aim at the bottles...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,NULL),
(2000005742,'%s only hits the side of the box!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,NULL),
(2000005743,'%s quickly shoots the orc dummy...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,NULL),
(2000005744,'%s turns to the paper target...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,NULL),
(2000005745,'%s shoots from the hip at the bottles...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,NULL);
-- spells updates 
DELETE FROM spell_target_position WHERE id IN (16572,16767,16768,16772,16775,16776,16777,16778,16779,16780,16786,18634);
INSERT INTO spell_target_position (id, target_map, target_position_x, target_position_y, target_position_z, target_orientation) VALUES 
(16572,0,-6046.85,-207.329,418.304,0),
(16767,0,-6046.73,-207.159,417.267,0),
(16768,0,-6051.39,-206.749,418.159,0),
(16772,0,-6046.84,-204.535,416.897,0),
(16775,0,-6044.47,-205.783,417.267,0),
(16776,0,-6044.54,-205.562,417.663,0),
(16777,0,-6044.53,-202.912,416.756,0),
(16778,0,-6042.18,-204.949,416.336,0),
(16779,0,-6042.02,-204.134,416.894,0),
(16780,0,-6044.79,-196.959,419.19,0),
(16786,0,-6078.3,-211.89,424.197,0),
(18634,0,-6076,-215,424,0);
-- spell should have target
DELETE FROM spell_script_target WHERE entry = 18655;
INSERT INTO spell_script_target (entry, type, targetEntry) VALUES
(18655,0,176557);
DELETE FROM dbscripts_on_spell WHERE id = 18655;
-- Roland Geardabbler -- stats updated (based on X-Savior stats board) 100% corrected
UPDATE creature_template SET MinLevelHealth = 2762, MaxLevelHealth = 2762, MinLevelMana = 3575, MaxLevelMana = 3575, HealthMultiplier = 2.3, PowerMultiplier = 1, UnitClass = 8 WHERE entry = 8394;
-- Hezrul Bloodmark  (unique npc)
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 13990;
UPDATE creature_template SET MovementType = 2 WHERE entry = 3396;
DELETE FROM creature_movement_template WHERE entry = 3396;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(3396,1,-1145.94,-2025.81,91.8127,0,0,0,0,0,0,0,0,0,0,0.535909,0,0),
(3396,2,-1109.87,-1999.72,86.8538,0,0,0,0,0,0,0,0,0,0,0.681207,0,0),
(3396,3,-1068.51,-1962.03,89.5984,0,0,0,0,0,0,0,0,0,0,0.783309,0,0),
(3396,4,-1050.84,-1946.6,92.1747,0,0,0,0,0,0,0,0,0,0,0.696915,0,0),
(3396,5,-1028.03,-1936.14,90.9833,0,0,0,0,0,0,0,0,0,0,0.147922,0,0),
(3396,6,-1000.62,-1947.3,91.8085,0,0,0,0,0,0,0,0,0,0,5.83578,0,0),
(3396,7,-989.498,-1965.68,91.4196,0,0,0,0,0,0,0,0,0,0,5.82007,0,0),
(3396,8,-975.014,-1989.78,90.3225,0,0,0,0,0,0,0,0,0,0,5.58052,0,0),
(3396,9,-947.048,-2017.7,85.9028,0,0,0,0,0,0,0,0,0,0,6.01485,0,0),
(3396,10,-913.754,-2023.23,84.7262,0,0,0,0,0,0,0,0,0,0,5.92295,0,0),
(3396,11,-896.969,-2035.67,81.834,0,0,0,0,0,0,0,0,0,0,5.23573,0,0),
(3396,12,-888.286,-2053.13,81.0782,10000,0,0,0,0,0,0,0,0,0,4.9687,0,0),
(3396,13,-881.169,-2066.39,82.8913,0,0,0,0,0,0,0,0,0,0,4.49276,0,0),
(3396,14,-896.265,-2085.67,86.5982,0,0,0,0,0,0,0,0,0,0,3.74663,0,0),
(3396,15,-919.527,-2102.03,86.1471,0,0,0,0,0,0,0,0,0,0,3.56128,0,0),
(3396,16,-938.943,-2103.84,85.2055,0,0,0,0,0,0,0,0,0,0,3.27697,0,0),
(3396,17,-977.091,-2112.99,82.8457,0,0,0,0,0,0,0,0,0,0,3.62647,0,0),
(3396,18,-996.166,-2129.23,84.339,0,0,0,0,0,0,0,0,0,0,4.14876,0,0),
(3396,19,-1028.04,-2167.41,84.444,0,0,0,0,0,0,0,0,0,0,4.02231,0,0),
(3396,20,-1052.2,-2223.07,84.7852,0,0,0,0,0,0,0,0,0,0,4.21473,0,0),
(3396,21,-1061.31,-2265.33,88.5924,0,0,0,0,0,0,0,0,0,0,4.13776,0,0),
(3396,22,-1079.04,-2292.94,91.0261,0,0,0,0,0,0,0,0,0,0,3.3288,0,0),
(3396,23,-1117.46,-2298.19,90.3452,0,0,0,0,0,0,0,0,0,0,2.68164,0,0),
(3396,24,-1137.66,-2278.07,86.5678,0,0,0,0,0,0,0,0,0,0,1.97006,0,0),
(3396,25,-1155.54,-2237.66,85.6437,0,0,0,0,0,0,0,0,0,0,1.86796,0,0),
(3396,26,-1191.45,-2177.87,90.7451,0,0,0,0,0,0,0,0,0,0,2.20961,0,0),
(3396,27,-1217.34,-2140.72,92.6515,0,0,0,0,0,0,0,0,0,0,2.0761,0,0),
(3396,28,-1228.96,-2114.76,92.2165,0,0,0,0,0,0,0,0,0,0,1.41793,0,0),
(3396,29,-1218.87,-2087.08,91.4139,0,0,0,0,0,0,0,0,0,0,1.11634,0,0),
(3396,30,-1202.37,-2062.52,93.2409,0,0,0,0,0,0,0,0,0,0,0.729139,0,0),
(3396,31,-1166.88,-2042.01,92.1803,0,0,0,0,0,0,0,0,0,0,0.552424,0,0);
-- Xan'tish <Snake Vendor>
UPDATE creature SET MovementType = 2 WHERE guid = 3476;
DELETE FROM creature_movement WHERE id = 3476;
UPDATE creature_template SET MovementType = 2 WHERE entry = 8404; -- now move him to template (unique npc)
DELETE FROM creature_movement_template WHERE entry = 8404;
INSERT INTO creature_movement_template (entry,point,position_x,position_y,position_z,waittime,script_id,textid1,textid2,textid3,textid4,textid5,emote,spell,wpguid,orientation,model1,model2) VALUES
(8404,1,1543.59,-4162,40.09,0,0,0,0,0,0,0,0,0,0,5.25211,0,0),
(8404,2,1543.59,-4162,40.09,0,0,0,0,0,0,0,0,0,0,5.25211,0,0),
(8404,3,1548.66,-4170.54,39.878,0,0,0,0,0,0,0,0,0,0,4.91597,0,0),
(8404,4,1549.69,-4182.55,40.6116,0,0,0,0,0,0,0,0,0,0,4.66386,0,0),
(8404,5,1544.56,-4204.67,42.5118,0,0,0,0,0,0,0,0,0,0,4.00727,0,0),
(8404,6,1541.77,-4209.83,42.6101,0,0,0,0,0,0,0,0,0,0,3.79758,0,0),
(8404,7,1535.78,-4211.44,42.2174,0,0,0,0,0,0,0,0,0,0,3.2745,0,0),
(8404,8,1526.93,-4211.96,41.3994,0,0,0,0,0,0,0,0,0,0,3.37893,0,0),
(8404,9,1518.28,-4215.47,40.5925,0,0,0,0,0,0,0,0,0,0,4.0206,0,0),
(8404,10,1531.65,-4212.06,41.8567,0,0,0,0,0,0,0,0,0,0,0.069258,0,0),
(8404,11,1545.37,-4209.67,42.9739,0,0,0,0,0,0,0,0,0,0,0.108934,0,0),
(8404,12,1575.68,-4208.31,43.6414,0,0,0,0,0,0,0,0,0,0,0.418381,0,0),
(8404,13,1581.05,-4205.01,42.1625,0,0,0,0,0,0,0,0,0,0,1.02235,0,0),
(8404,14,1582.41,-4200.09,41.6332,0,0,0,0,0,0,0,0,0,0,1.50145,0,0),
(8404,15,1577.94,-4182.56,39.0467,0,0,0,0,0,0,0,0,0,0,1.43312,0,0),
(8404,16,1577.95,-4166.1,36.4201,0,0,0,0,0,0,0,0,0,0,1.54979,0,0),
(8404,17,1581.97,-4153.16,34.3183,0,0,0,0,0,0,0,0,0,0,1.25527,0,0),
(8404,18,1585.48,-4145.38,33.4993,0,0,0,0,0,0,0,0,0,0,1.12567,0,0),
(8404,19,1604.63,-4121.54,29.6292,0,0,0,0,0,0,0,0,0,0,0.600243,0,0),
(8404,20,1629.61,-4107.81,29.851,0,0,0,0,0,0,0,0,0,0,0.388186,0,0),
(8404,21,1664.44,-4095.19,34.6566,0,0,0,0,0,0,0,0,0,0,0.333208,0,0),
(8404,22,1699.89,-4087.74,38.7137,0,0,0,0,0,0,0,0,0,0,0.187909,0,0),
(8404,23,1709.97,-4084.71,40.3433,0,0,0,0,0,0,0,0,0,0,0.466726,0,0),
(8404,24,1732.35,-4069.04,44.7046,0,0,0,0,0,0,0,0,0,0,0.729834,0,0),
(8404,25,1737.52,-4062.58,44.6143,0,0,0,0,0,0,0,0,0,0,1.11075,0,0),
(8404,26,1744.09,-4042.98,44.2706,0,0,0,0,0,0,0,0,0,0,1.21678,0,0),
(8404,27,1745.69,-4021.55,45.8444,0,0,0,0,0,0,0,0,0,0,1.62519,0,0),
(8404,28,1741.55,-3993.82,46.9013,0,0,0,0,0,0,0,0,0,0,1.73514,0,0),
(8404,29,1738.06,-3982.79,47.6495,0,0,0,0,0,0,0,0,0,0,2.00611,0,0),
(8404,30,1727.15,-3960.55,48.8178,0,0,0,0,0,0,0,0,0,0,2.05323,0,0),
(8404,31,1716.72,-3941.62,49.6707,0,0,0,0,0,0,0,0,0,0,2.22995,0,0),
(8404,32,1712.4,-3937.89,49.7629,0,0,0,0,0,0,0,0,0,0,2.72082,0,0),
(8404,33,1708.1,-3938.4,50.5155,0,0,0,0,0,0,0,0,0,0,4.8359,0,0),
(8404,34,1710.22,-3944.82,50.3793,0,0,0,0,0,0,0,0,0,0,5.29143,0,0),
(8404,35,1728.4,-3966.85,48.3152,0,0,0,0,0,0,0,0,0,0,5.31499,0,0),
(8404,36,1742.65,-3994.21,47.0203,0,0,0,0,0,0,0,0,0,0,4.766,0,0),
(8404,37,1745.13,-4021.8,45.8787,0,0,0,0,0,0,0,0,0,0,4.70709,0,0),
(8404,38,1743.39,-4040.77,44.4939,0,0,0,0,0,0,0,0,0,0,4.61677,0,0),
(8404,39,1738.21,-4058.59,44.3596,0,0,0,0,0,0,0,0,0,0,4.36545,0,0),
(8404,40,1733.13,-4070.14,44.4479,0,0,0,0,0,0,0,0,0,0,3.8895,0,0),
(8404,41,1711.87,-4085.21,40.1182,0,0,0,0,0,0,0,0,0,0,3.63026,0,0),
(8404,42,1691.56,-4091.83,37.8552,0,0,0,0,0,0,0,0,0,0,3.42998,0,0),
(8404,43,1655.99,-4099.88,33.3077,0,0,0,0,0,0,0,0,0,0,3.48104,0,0),
(8404,44,1629.32,-4109.29,29.6458,0,0,0,0,0,0,0,0,0,0,3.5635,0,0),
(8404,45,1608.56,-4119.25,29.608,0,0,0,0,0,0,0,0,0,0,3.78734,0,0),
(8404,46,1598.77,-4127.94,30.6464,0,0,0,0,0,0,0,0,0,0,3.97262,0,0),
(8404,47,1586.65,-4144.41,33.1692,0,0,0,0,0,0,0,0,0,0,4.09828,0,0),
(8404,48,1579.47,-4159.36,35.4998,0,0,0,0,0,0,0,0,0,0,4.37709,0,0),
(8404,49,1576.2,-4176.22,38.1288,0,0,0,0,0,0,0,0,0,0,4.6402,0,0),
(8404,50,1577.91,-4192.41,40.5278,0,0,0,0,0,0,0,0,0,0,4.84047,0,0),
(8404,51,1578.51,-4205.14,42.5391,0,0,0,0,0,0,0,0,0,0,4.34568,0,0),
(8404,52,1575.8,-4208.68,43.6726,0,0,0,0,0,0,0,0,0,0,3.43462,0,0),
(8404,53,1563.73,-4208.41,43.619,0,0,0,0,0,0,0,0,0,0,2.9948,0,0),
(8404,54,1547.49,-4208.4,43.0629,0,0,0,0,0,0,0,0,0,0,3.24612,0,0),
(8404,55,1527.74,-4212.69,41.5202,0,0,0,0,0,0,0,0,0,0,3.3443,0,0),
(8404,56,1516.82,-4216.26,40.4675,0,0,0,0,0,0,0,0,0,0,3.5917,0,0),
(8404,57,1539.83,-4210.73,42.5457,0,0,0,0,0,0,0,0,0,0,0.257683,0,0),
(8404,58,1543,-4207.62,42.651,0,0,0,0,0,0,0,0,0,0,1.09413,0,0),
(8404,59,1549.16,-4188.49,41.2349,0,0,0,0,0,0,0,0,0,0,1.36117,0,0),
(8404,60,1550.57,-4176.65,40.3661,0,0,0,0,0,0,0,0,0,0,1.58501,0,0),
(8404,61,1547.16,-4166.1,39.8663,0,0,0,0,0,0,0,0,0,0,2.02483,0,0),
(8404,62,1540.48,-4157.99,40.4082,0,0,0,0,0,0,0,0,0,0,2.63351,0,0),
(8404,63,1534.96,-4155.77,40.5611,0,0,0,0,0,0,0,0,0,0,2.90055,0,0),
(8404,64,1526.11,-4155.11,40.6068,0,0,0,0,0,0,0,0,0,0,3.23042,0,0),
(8404,65,1499.67,-4154.97,41.0505,0,0,0,0,0,0,0,0,0,0,2.90055,0,0),
(8404,66,1485.95,-4150.33,40.6375,0,0,0,0,0,0,0,0,0,0,2.8063,0,0),
(8404,67,1501.73,-4155.09,40.9359,0,0,0,0,0,0,0,0,0,0,6.13404,0,0),
(8404,68,1526.68,-4154.89,40.6253,0,0,0,0,0,0,0,0,0,0,0.0471973,0,0);
-- correct spawns for Xan'tish snakes
UPDATE creature SET position_x = 1524.162231, position_y = -4155.138184, position_z = 40.617981, orientation = 0.074240 WHERE guid = 3571;
UPDATE creature SET position_x = 1524.510864, position_y = -4153.323730, position_z = 40.792473, orientation = 0.023189 WHERE guid = 3560;
UPDATE creature SET position_x = 1524.748779, position_y = -4156.221680, position_z = 40.517262, orientation = 0.019262 WHERE guid = 3477;
-- link snakes with Xan'tish
DELETE FROM creature_linking WHERE guid IN (3571, 3560, 3477);
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(3571, 3476, 656),
(3560, 3476, 656),
(3477, 3476, 656);
-- Sen'jin Watcher
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 6401;
DELETE FROM creature_movement WHERE id = 6401;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(6401,1,-827.616,-4936.48,20.8528,0,0,0,0,0,0,0,0,0,0,2.32393,0,0),
(6401,2,-830.761,-4929.45,20.5111,0,0,0,0,0,0,0,0,0,0,2.19434,0,0),
(6401,3,-839.201,-4923.22,20.6271,0,0,0,0,0,0,0,0,0,0,2.70721,0,0),
(6401,4,-841.734,-4919.66,20.5596,0,0,0,0,0,0,0,0,0,0,1.7663,0,0),
(6401,5,-841.262,-4914.79,20.2692,0,0,0,0,0,0,0,0,0,0,1.22202,0,0),
(6401,6,-838.219,-4907.74,19.9134,0,0,0,0,0,0,0,0,0,0,0.803401,0,0),
(6401,7,-830.196,-4901.08,19.8305,0,0,0,0,0,0,0,0,0,0,0.782196,0,0),
(6401,8,-820.589,-4896.57,19.2993,0,0,0,0,0,0,0,0,0,0,6.09361,0,0),
(6401,9,-813.357,-4898.34,19.1296,0,0,0,0,0,0,0,0,0,0,5.87763,0,0),
(6401,10,-805.803,-4902.86,19.3516,0,0,0,0,0,0,0,0,0,0,6.22734,0,0),
(6401,11,-799.058,-4902.18,19.4843,0,0,0,0,0,0,0,0,0,0,0.382402,0,0),
(6401,12,-795.003,-4900.82,19.5072,0,0,0,0,0,0,0,0,0,0,6.10638,0,0),
(6401,13,-791.825,-4901.95,19.5425,0,0,0,0,0,0,0,0,0,0,5.56682,0,0),
(6401,14,-789.253,-4903.92,19.5929,0,0,0,0,0,0,0,0,0,0,5.22282,0,0),
(6401,15,-789.067,-4907.64,19.6142,0,0,0,0,0,0,0,0,0,0,4.38245,0,0),
(6401,16,-790.609,-4909.58,19.5996,0,0,0,0,0,0,0,0,0,0,3.71643,0,0),
(6401,17,-794.697,-4910.41,19.548,0,0,0,0,0,0,0,0,0,0,3.3795,0,0),
(6401,18,-802.157,-4910.6,19.3913,0,0,0,0,0,0,0,0,0,0,3.5028,0,0),
(6401,19,-807.364,-4913.22,19.2282,0,0,0,0,0,0,0,0,0,0,3.85623,0,0),
(6401,20,-817.404,-4923.08,19.4963,0,0,0,0,0,0,0,0,0,0,4.15076,0,0),
(6401,21,-821.698,-4931.91,20.2532,0,0,0,0,0,0,0,0,0,0,4.71153,0,0),
(6401,22,-819.679,-4936.64,20.7199,0,0,0,0,0,0,0,0,0,0,4.82776,0,0),
(6401,23,-821.131,-4940.8,21.2849,0,0,0,0,0,0,0,0,0,0,3.98032,0,0);
-- Razor Hill Grunt -- update
UPDATE creature SET spawndist = 5, MovementType = 1 WHERE guid  IN (10278, 10279, 8424, 6388, 8417, 10276, 7668, 10274, 10427, 10273, 7669, 6385);
-- update for - Horizon Team
UPDATE creature_template SET FactionAlliance = 35, FactionHorde = 35 WHERE entry IN (8394, 8387, 8388, 8389, 8478);
UPDATE creature_template SET EquipmentTemplateId = 1989 WHERE entry IN (8388, 8389);
UPDATE creature_template SET EquipmentTemplateId = 694 WHERE entry IN (8387, 8478);
UPDATE creature SET spawndist = 2, MovementType = 1 WHERE guid = 35901;
-- DeathGuard Bartrand
UPDATE creature SET spawndist = 1, MovementType = 1 WHERE guid = 28498;
-- Mindless Zombie
UPDATE creature SET position_x = 1900.229, position_y = 1551.08, position_z = 88.96, orientation = 5.97 WHERE guid = 44961;
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 44961;
DELETE FROM creature_movement WHERE id = 44961;
INSERT INTO creature_movement VALUES
(44961,1,1900.229248,1551.080688,88.962784,40000,0,0,0,0,0,0,0,0,0,5.972022,0,0),
(44961,2,1906.845459,1549.275757,88.963142,0,0,0,0,0,0,0,0,0,0,0.059717,0,0),
(44961,3,1918.237671,1550.205078,86.896423,0,0,0,0,0,0,0,0,0,0,1.092514,0,0),
(44961,4,1921.960083,1559.946167,86.194336,0,0,0,0,0,0,0,0,0,0,0.815268,0,0),
(44961,5,1934.780640,1577.855835,82.626656,40000,0,0,0,0,0,0,0,0,0,0.907945,0,0),
(44961,6,1915.648682,1587.774658,84.535027,0,0,0,0,0,0,0,0,0,0,3.187170,0,0),
(44961,7,1889.429932,1586.552246,88.860100,4000,150101,0,0,0,0,0,0,0,0,2.765410,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 150101;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES 
(150101,0,26,0,0,1736,20,0x01,0,0,0,0,0,0,0,0,''),
(150101,1,22,21,0x01,0,0,0,0,0,0,0,0,0,0,0,'');


-- ---------------
-- TBC UPDATES
-- ---------------


-- ---------------
-- New Buddy system
-- ---------------
-- Gruk
UPDATE creature SET MovementType = 2 WHERE id = 14850;
UPDATE creature_template SET MovementType = 2 WHERE Entry = 14850;
DELETE FROM `creature_movement_template` WHERE entry = 14850;
INSERT INTO `creature_movement_template` VALUES 
(14850, 1, -533.574, -2985, 92.8914, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.544762, 0, 0),
(14850, 2, -532.475, -2982.79, 92.9373, 8000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.31524, 0, 0),
(14850, 3, -535.363, -2986.68, 92.8727, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.69735, 0, 0),
(14850, 4, -542.795, -2987.18, 92.979, 5000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.52828, 0, 0),
(14850, 5, -539.589, -2979.67, 93.1421, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.89151, 0, 0),
(14850, 6, -540.857, -2972.26, 93.2185, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.82397, 0, 0),
(14850, 7, -542.509, -2968.74, 91.6666, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.02817, 0, 0),
(14850, 8, -556.492, -2958.45, 91.8089, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.13165, 0, 0),
(14850, 9, -560.314, -2959.11, 91.6711, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.79061, 0, 0),
(14850, 10, -563.527, -2961.73, 91.6705, 10000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.97203, 0, 0),
(14850, 11, -554.859, -2957.95, 91.9882, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6.10988, 0, 0),
(14850, 12, -542.145, -2969.4, 91.6672, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.08337, 0, 0),
(14850, 13, -541.034, -2970.88, 92.7831, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.09751, 0, 0),
(14850, 14, -540.203, -2974.5, 93.2449, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.88703, 0, 0),
(14850, 15, -538.437, -2986.25, 92.9349, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.35984, 0, 0),
(14850, 16, -534.474, -2989.05, 92.9337, 11000, 1485001, 0, 0, 0, 0, 0, 0, 0, 0, 6.24497, 0, 0),
(14850, 17, -537.863, -2989.07, 92.9417, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.62114, 0, 0),
(14850, 18, -541.218, -2972.43, 93.2172, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.00617, 0, 0),
(14850, 19, -542.574, -2969.56, 91.6668, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.05958, 0, 0),
(14850, 20, -555.277, -2959.6, 91.8103, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.32643, 0, 0),
(14850, 21, -557.443, -2961.87, 91.6668, 3000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.01915, 0, 0),
(14850, 22, -549.293, -2960.81, 91.7707, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.48313, 0, 0),
(14850, 23, -541.477, -2969.22, 91.667, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.97576, 0, 0),
(14850, 24, -540.882, -2970.61, 92.726, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.10614, 0, 0),
(14850, 25, -540.171, -2974.45, 93.2474, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.64511, 0, 0),
(14850, 26, -538.8, -2988.17, 92.9165, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6.27953, 0, 0),
(14850, 27, -534.023, -2988.81, 92.9258, 12000, 1485002, 0, 0, 0, 0, 0, 0, 0, 0, 6.22469, 0, 0),
(14850, 28, -535.851, -2988.2, 92.9109, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.23408, 0, 0),
(14850, 29, -537.077, -2984.78, 92.9547, 240000, 1485003, 0, 0, 0, 0, 0, 0, 0, 0, 2.08407, 0, 0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1485001,1485002,1485003);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1485001,3,0,0,0,0,0,0,2000005314,0,0,0,0,0,0,0,''),
(1485001,8,0,0,0,14859,5,4,2000005315,0,0,0,0,0,0,0,''),
(1485001,12,0,0,0,0,0,0,2000005316,0,0,0,0,0,0,0,''),
(1485002,3,0,0,0,0,0,0,2000005317,0,0,0,0,0,0,0,''),
(1485002,7,0,0,0,14859,5,4,2000005318,0,0,0,0,0,0,0,''),
(1485002,12,0,0,0,0,0,0,2000005319,0,0,0,0,0,0,0,''),
(1485003,0,20,1,0,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 1:random'),
(1485003,235,20,2,0,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 2:waypoint');
-- Peon
UPDATE creature SET MovementType = 2 WHERE guid IN (13775, 13765);
DELETE FROM creature_movement WHERE id IN (13775, 13765);
INSERT INTO `creature_movement` VALUES 
(13775, 1, -629.313, -3161, 92.3242, 0, 1490101, 0, 0, 0, 0, 0, 0, 0, 0, 3.79019, 0, 0),
(13775, 2, -624.911, -3156.44, 91.7832, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.483361, 0, 0),
(13775, 3, -617.56, -3155.6, 91.7512, 240000, 1490102, 0, 0, 0, 0, 0, 69, 0, 0, 0.161653, 0, 0),
(13775, 4, -625.854, -3158.22, 91.9782, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.5153, 0, 0),
(13775, 5, -629.313, -3161, 92.3242, 130000, 1490103, 0, 0, 0, 0, 0, 0, 0, 0, 3.79019, 0, 0),
(13765, 1, -639.86, -3175.6, 91.7083, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.56559, 0, 0),
(13765, 2, -627.271, -3169.21, 91.6669, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.112415, 0, 0),
(13765, 3, -614.674, -3165.51, 91.6669, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.306409, 0, 0),
(13765, 4, -607.817, -3164.31, 93.1189, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.25143, 0, 0),
(13765, 5, -587.388, -3158.92, 93.4263, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.286774, 0, 0),
(13765, 6, -576.599, -3154.58, 93.8075, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.557736, 0, 0),
(13765, 7, -571.365, -3151.34, 94.8152, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6.02175, 0, 0),
(13765, 8, -564.887, -3153.91, 95.0999, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.57643, 0, 0),
(13765, 9, -553.953, -3164.09, 93.1727, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.479202, 0, 0),
(13765, 10, -541.98, -3160.04, 93.95, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6.08144, 0, 0),
(13765, 11, -529.886, -3162.36, 95.9101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.258499, 0, 0),
(13765, 12, -521.379, -3157.69, 95.9552, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.851473, 0, 0),
(13765, 13, -521.466, -3145.38, 95.8337, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.55126, 0, 0),
(13765, 14, -523.326, -3144.34, 95.7099, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.62333, 0, 0),
(13765, 15, -519.801, -3144.68, 95.9606, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6.24794, 0, 0),
(13765, 16, -523.171, -3143.23, 95.4919, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.73329, 0, 0),
(13765, 17, -520.434, -3146.8, 95.7923, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.33296, 0, 0),
(13765, 18, -520.364, -3145.86, 95.8864, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.49629, 0, 0),
(13765, 19, -522.242, -3146.07, 96.0035, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.26344, 0, 0),
(13765, 20, -522.345, -3142.28, 95.2757, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.59839, 0, 0),
(13765, 21, -520.654, -3154.36, 96.1309, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.84601, 0, 0),
(13765, 22, -527.546, -3161.7, 95.8161, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.10714, 0, 0),
(13765, 23, -536.396, -3160.94, 95.1931, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.03646, 0, 0),
(13765, 24, -542.822, -3160.06, 93.8577, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.45979, 0, 0),
(13765, 25, -553.217, -3163.03, 93.301, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.95949, 0, 0),
(13765, 26, -567.69, -3151.91, 95.1406, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.38203, 0, 0),
(13765, 27, -607.564, -3163.99, 93.117, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.41345, 0, 0),
(13765, 28, -623.988, -3170.78, 91.6667, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.57053, 0, 0),
(13765, 29, -639.236, -3178.37, 91.6692, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.69679, 0, 0),
(13765, 30, -637.266, -3184.88, 91.7491, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.08241, 0, 0),
(13765, 31, -637.907, -3183.19, 91.7071, 240000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.16911, 0, 0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1490101,1490102,1490103);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1490101,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,'RUN ON'),
(1490102,0,25,0,0,0,0,0,0,0,0,0,0,0,0,0,'RUN OFF'),
(1490103,0,20,1,0,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 1:random');
-- Darrowshire Spirit
DELETE FROM dbscripts_on_gossip WHERE id = 3141;
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(3141,0,8,11064,1,0,0,0,0,0,0,0,0,0,0,0,''),
(3141,2,29,1,2,0,0,0,0,0,0,0,0,0,0,0,'');
-- William and Donna
DELETE FROM `creature_movement` WHERE `id` = (SELECT `guid` FROM `creature` WHERE `id` = 2533);
UPDATE `creature_template` SET `MovementType` = 2 WHERE `Entry` = 2533; 
DELETE FROM `creature_movement_template` WHERE `entry` = 2533;
INSERT INTO `creature_movement_template` VALUES
(2533, 1, -8733.41, 543.728, 101.116, 0, 253301, 0, 0, 0, 0, 0, 0, 0, 0, 5.46732, 0, 0),
(2533, 2, -8725.34, 534.844, 100.453, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.40449, 0, 0),
(2533, 3, -8714.18, 521.498, 97.421, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6.19225, 0, 0),
(2533, 4, -8707.18, 524.198, 97.6176, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.591569, 0, 0),
(2533, 5, -8697.23, 530.827, 97.7614, 0, 253302, 0, 0, 0, 0, 0, 0, 0, 0, 1.00547, 0, 0),
(2533, 6, -8687.88, 542.844, 97.811, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.779279, 0, 0),
(2533, 7, -8675.18, 551.755, 97.3729, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.230286, 0, 0),
(2533, 8, -8657.96, 553.011, 96.9465, 0, 253303, 0, 0, 0, 0, 0, 0, 0, 0, 5.88437, 0, 0),
(2533, 9, -8648.08, 547.85, 97.643, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.55843, 0, 0),
(2533, 10, -8624.85, 522.649, 101.967, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.79248, 0, 0),
(2533, 11, -8610.91, 513.903, 103.747, 0, 253304, 0, 0, 0, 0, 0, 0, 0, 0, 0.384225, 0, 0),
(2533, 12, -8604.89, 520.309, 105.797, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.876668, 0, 0),
(2533, 13, -8601.2, 526.633, 106.492, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.714876, 0, 0),
(2533, 14, -8590.77, 531.44, 105.252, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.640263, 0, 0),
(2533, 15, -8581.29, 540.021, 102.125, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.877453, 0, 0),
(2533, 16, -8579.12, 546.674, 101.778, 0, 253305, 0, 0, 0, 0, 0, 0, 0, 0, 1.70919, 0, 0),
(2533, 17, -8580.32, 559.278, 102.069, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.2519, 0, 0),
(2533, 18, -8588.96, 575.064, 102.82, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.37461, 0, 0),
(2533, 19, -8582.75, 589.124, 103.668, 0, 253306, 0, 0, 0, 0, 0, 0, 0, 0, 1.08951, 0, 0),
(2533, 20, -8566.82, 611.285, 102.59, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.40462, 0, 0),
(2533, 21, -8533.56, 635.552, 100.229, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.445483, 0, 0),
(2533, 22, -8513.97, 643.983, 100.217, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.20968, 0, 0),
(2533, 23, -8510.35, 656.028, 100.301, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.73406, 0, 0),
(2533, 24, -8517.21, 666.05, 102.437, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.1511, 0, 0),
(2533, 25, -8521.74, 672.851, 102.667, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.13539, 0, 0),
(2533, 26, -8524.42, 675.718, 102.326, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.30033, 0, 0),
(2533, 27, -8531.3, 685.385, 97.8431, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.82969, 0, 0),
(2533, 28, -8541.85, 687.825, 97.6784, 0, 253302, 0, 0, 0, 0, 0, 0, 0, 0, 3.35669, 0, 0),
(2533, 29, -8552.67, 682.594, 97.1024, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.88998, 0, 0),
(2533, 30, -8577.11, 661.474, 97.5854, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.3991, 0, 0),
(2533, 31, -8608.15, 654.85, 98.8096, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.36454, 0, 0),
(2533, 32, -8629.19, 653.554, 100.235, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.97499, 0, 0),
(2533, 33, -8654.57, 660.178, 100.847, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.52652, 0, 0),
(2533, 34, -8665.71, 670.475, 100.155, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.84872, 0, 0),
(2533, 35, -8672.8, 685.114, 98.7419, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.36709, 0, 0),
(2533, 36, -8698.36, 713.988, 97.0169, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.21001, 0, 0),
(2533, 37, -8708.25, 728.268, 97.492, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.3231, 0, 0),
(2533, 38, -8718.65, 734.381, 97.9503, 0, 253304, 0, 0, 0, 0, 0, 0, 0, 0, 3.50199, 0, 0),
(2533, 39, -8730.64, 723.596, 101.609, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.88683, 0, 0),
(2533, 40, -8735.61, 722.485, 101.57, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.07533, 0, 0),
(2533, 41, -8742.81, 712.763, 98.4742, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.878, 0, 0),
(2533, 42, -8738.42, 700.471, 98.7241, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.36278, 0, 0),
(2533, 43, -8773.16, 671.396, 103.093, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.56228, 0, 0),
(2533, 44, -8772.8, 664.546, 103.274, 0, 253303, 0, 0, 0, 0, 0, 0, 0, 0, 5.11205, 0, 0),
(2533, 45, -8762.12, 651.776, 103.758, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.85523, 0, 0),
(2533, 46, -8758.49, 635.638, 103.007, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.64318, 0, 0),
(2533, 47, -8759.99, 620.822, 100.132, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.03057, 0, 0),
(2533, 48, -8768.57, 607.87, 97.0531, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.67904, 0, 0),
(2533, 49, -8798.75, 589.255, 97.3095, 0, 253305, 0, 0, 0, 0, 0, 0, 0, 0, 2.33758, 0, 0),
(2533, 50, -8809.17, 605.466, 96.069, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.43654, 0, 0),
(2533, 51, -8831.01, 625.161, 93.9218, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.79487, 0, 0),
(2533, 52, -8830.74, 639.957, 94.4121, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.888521, 0, 0),
(2533, 53, -8821.88, 644.411, 94.3238, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.063068, 0, 0),
(2533, 54, -8813.26, 640.453, 94.2291, 0, 253306, 0, 0, 0, 0, 0, 0, 0, 0, 5.3488, 0, 0),
(2533, 55, -8810.61, 632.167, 94.2291, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.34035, 0, 0),
(2533, 56, -8816.76, 623.035, 94.1619, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.38453, 0, 0),
(2533, 57, -8830.32, 626.323, 93.9729, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.41692, 0, 0),
(2533, 58, -8846.47, 645.899, 96.5695, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.95982, 0, 0),
(2533, 59, -8850.39, 660.621, 97.1509, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.23018, 0, 0),
(2533, 60, -8831.93, 673.177, 98.3737, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.704666, 0, 0),
(2533, 61, -8824.49, 680.863, 97.3123, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.13802, 0, 0),
(2533, 62, -8844.91, 720.915, 97.2993, 0, 253302, 0, 0, 0, 0, 0, 0, 0, 0, 1.20732, 0, 0),
(2533, 63, -8828.21, 731.196, 98.2819, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.315107, 0, 0),
(2533, 64, -8801.01, 745.202, 97.6082, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.057497, 0, 0),
(2533, 65, -8776.81, 742.568, 99.4879, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.74928, 0, 0),
(2533, 66, -8762.33, 732.152, 98.6952, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.43276, 0, 0),
(2533, 67, -8740.56, 705.858, 98.5695, 0, 253303, 0, 0, 0, 0, 0, 0, 0, 0, 5.43276, 0, 0),
(2533, 68, -8730.61, 691.737, 98.7125, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.07933, 0, 0),
(2533, 69, -8725.98, 677.292, 98.6944, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.27019, 0, 0),
(2533, 70, -8712.98, 665.468, 99.0123, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.86806, 0, 0),
(2533, 71, -8706.49, 628.033, 100.55, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.86728, 0, 0),
(2533, 72, -8703.35, 612.108, 99.7968, 0, 253305, 0, 0, 0, 0, 0, 0, 0, 0, 4.4196, 0, 0),
(2533, 73, -8710.51, 595.182, 98.6897, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.4732, 0, 0),
(2533, 74, -8724.98, 587.729, 98.2775, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.99784, 0, 0),
(2533, 75, -8749.35, 561.41, 97.3987, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.77225, 0, 0),
(2533, 76, -8747.65, 555.985, 97.7188, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.74849, 0, 0),
(2533, 77, -8739.23, 550.631, 100.051, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.73514, 0, 0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (253301,253302,253303,253304,253305,253306);
INSERT INTO dbscripts_on_creature_movement VALUES
(253301,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,'RUN ON'),
(253301,1,0,0,0,0,0,0,2000005059,0,0,0,0,0,0,0,''),
(253301,2,31,2532,15,0,0,0,0,0,0,0,0,0,0,0,''), -- check if creature is alive
(253301,3,0,0,0,2532,15,4,2000005063,0,0,0,0,0,0,0,''),
(253302,1,0,0,0,0,0,0,2000005057,0,0,0,0,0,0,0,''),
(253302,2,31,2532,15,0,0,0,0,0,0,0,0,0,0,0,''), -- check if creature is alive
(253302,3,0,0,0,2532,15,4,2000005062,0,0,0,0,0,0,0,''),
(253303,1,0,0,0,0,0,0,2000005058,0,0,0,0,0,0,0,''),
(253303,2,31,2532,15,0,0,0,0,0,0,0,0,0,0,0,''), -- check if creature is alive
(253303,3,0,0,0,2532,15,4,2000005062,0,0,0,0,0,0,0,''),
(253304,1,0,0,0,0,0,0,2000005059,0,0,0,0,0,0,0,''),
(253304,2,31,2532,15,0,0,0,0,0,0,0,0,0,0,0,''), -- check if creature is alive
(253304,3,0,0,0,2532,15,4,2000005063,0,0,0,0,0,0,0,''),
(253305,1,0,0,0,0,0,0,2000005060,0,0,0,0,0,0,0,''),
(253305,2,31,2532,15,0,0,0,0,0,0,0,0,0,0,0,''), -- check if creature is alive
(253305,3,0,0,0,2532,15,4,2000005062,0,0,0,0,0,0,0,''),
(253306,1,0,0,0,0,0,0,2000005061,0,0,0,0,0,0,0,''),
(253306,2,31,2532,15,0,0,0,0,0,0,0,0,0,0,0,''), -- check if creature is alive
(253306,3,0,0,0,2532,15,4,2000005062,0,0,0,0,0,0,0,'');
DELETE FROM db_script_string WHERE entry BETWEEN 2000005057 AND 2000005077;
INSERT INTO `db_script_string` VALUES
(2000005057, 'Crybaby! Crybaby!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL),
(2000005058, 'Baby wants her dolly!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL),
(2000005059, 'I wonder if your dolly can swim!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL),
(2000005060, 'Ha ha! I have Betsy!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL),
(2000005061, 'I have your dolly! Nyah nyah!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL),
(2000005062, 'Gimmie my dolly!!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL),
(2000005063, 'Don\'t hurt Betsy, you meanie!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL);
-- Defias Thug
UPDATE `creature` SET `MovementType` = 2 WHERE guid IN (80149, 80155, 80170, 80171, 80181, 80190, 80208, 80241, 80251);
DELETE FROM  `creature_movement` WHERE id IN (80149, 80155, 80170, 80171, 80181, 80190, 80208, 80241, 80251);
INSERT INTO `creature_movement` VALUES 
(80149, 1, -9008.89, -320.603, 75.8279, 1000, 3801, 0, 0, 0, 0, 0, 0, 0, 0, 2.8812, 0, 0),
(80149, 2, -8981.22, -335.138, 73.3474, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.82645, 0, 0),
(80149, 3, -8946.51, -338.891, 71.1134, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.82409, 0, 0),
(80149, 4, -8912.77, -352.085, 72.5823, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.88143, 0, 0),
(80149, 5, -8881.49, -355.84, 73.1462, 0, 3802, 0, 0, 0, 0, 0, 0, 0, 0, 6.17595, 0, 0),
(80149, 6, -8910.65, -346.602, 71.1023, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.81837, 0, 0),
(80149, 7, -8883.13, -352.739, 72.9499, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.75397, 0, 0),
(80149, 8, -8911.38, -347.166, 71.3269, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.95582, 0, 0),
(80149, 9, -8947.63, -337.566, 70.9275, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.87728, 0, 0),
(80149, 10, -9008.89, -320.603, 75.8279, 25000, 3803, 0, 0, 0, 0, 0, 0, 0, 0, 2.8812, 0, 0),
(80155, 1, -9025.53, -299.696, 75.0459, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.45269, 0, 0),
(80155, 2, -9016.9, -297.422, 74.4308, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.233721, 0, 0),
(80155, 3, -9015.13, -291.781, 73.5974, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.27045, 0, 0),
(80155, 4, -9026.94, -271.142, 72.4678, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.09904, 0, 0),
(80155, 5, -9039.09, -242.895, 71.9128, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.9616, 0, 0),
(80155, 6, -9059.39, -227.342, 71.575, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.5153, 0, 0),
(80155, 7, -9075.02, -218.743, 71.2872, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.65275, 0, 0),
(80155, 8, -9085.93, -222.701, 72.2177, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.52454, 0, 0),
(80155, 9, -9093.21, -222.315, 72.7065, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.08864, 0, 0),
(80155, 10, -9114.78, -205.272, 72.07, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.53101, 0, 0),
(80155, 11, -9111.57, -212.122, 72.9965, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.14639, 0, 0),
(80155, 12, -9088.61, -221.306, 72.2148, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.94356, 0, 0),
(80155, 13, -9077.99, -229.229, 72.9536, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.64511, 0, 0),
(80155, 14, -9069.11, -247.032, 73.202, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.18565, 0, 0),
(80155, 15, -9044.76, -265.328, 74.0282, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.66474, 0, 0),
(80155, 16, -9035.01, -278.624, 74.8661, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.35059, 0, 0),
(80155, 17, -9034.51, -288.397, 75.4714, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.73012, 0, 0),
(80170, 1, -9115.98, -266.025, 74.1248, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.03626, 0, 0),
(80170, 2, -9125.56, -278.875, 72.2526, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.45802, 0, 0),
(80170, 3, -9129.41, -294.825, 73.2769, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.98424, 0, 0),
(80170, 4, -9124.66, -319.784, 72.5256, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.12344, 0, 0),
(80170, 5, -9132.55, -330.434, 72.592, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.57505, 0, 0),
(80170, 6, -9134.41, -342.089, 72.6255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.86703, 0, 0),
(80170, 7, -9128.14, -346.185, 72.8717, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.88666, 0, 0),
(80170, 8, -9116.38, -370.935, 73.7603, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6.0241, 0, 0),
(80170, 9, -9102.72, -374.224, 74.0545, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.39892, 0, 0),
(80170, 10, -9094, -382.27, 73.604, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.61667, 0, 0),
(80170, 11, -9094.88, -401.923, 73.7872, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.46213, 0, 0),
(80170, 12, -9113.64, -397.93, 72.6565, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.89036, 0, 0),
(80170, 13, -9138.29, -381.572, 72.2653, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.42088, 0, 0),
(80170, 14, -9137.24, -366.872, 72.7817, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.48843, 0, 0),
(80170, 15, -9140.94, -339.388, 72.5887, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.34234, 0, 0),
(80170, 16, -9134.42, -317.788, 73.3578, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.656068, 0, 0),
(80170, 17, -9111.39, -305.531, 73.8998, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.747175, 0, 0),
(80170, 18, -9096.96, -293.809, 72.477, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.95276, 0, 0),
(80170, 19, -9097.89, -279.315, 73.162, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.58893, 0, 0),
(80171, 1, -9120.29, -275.579, 72.9006, 2000, 3801, 0, 0, 0, 0, 0, 0, 0, 0, 1.03043, 0, 0),
(80171, 2, -9112.23, -263.542, 74.4268, 3000, 3802, 0, 0, 0, 0, 0, 0, 0, 0, 1.06342, 0, 0),
(80171, 3, -9110.18, -259.698, 74.7637, 0, 3801, 0, 0, 0, 0, 0, 0, 0, 0, 3.91441, 0, 0),
(80171, 4, -9120.29, -269.848, 73.5204, 4000, 3802, 0, 0, 0, 0, 0, 0, 0, 0, 3.94322, 0, 0),
(80181, 1, -9131.36, -306.832, 73.5301, 0, 3801, 0, 0, 0, 0, 0, 0, 0, 0, 4.49767, 0, 0),
(80181, 2, -9132.83, -313.89, 73.306, 4000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.49767, 0, 0),
(80181, 3, -9124.91, -379.208, 73.2856, 3000, 3802, 0, 0, 0, 0, 0, 0, 0, 0, 4.81183, 0, 0),
(80181, 4, -9125.01, -372.703, 73.5785, 0, 3801, 0, 0, 0, 0, 0, 0, 0, 0, 1.77234, 0, 0),
(80181, 5, -9138.42, -339.389, 72.5674, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.2202, 0, 0),
(80181, 6, -9123.32, -311.799, 72.985, 4000, 3802, 0, 0, 0, 0, 0, 0, 0, 0, 1.2202, 0, 0),
(80190, 1, -9078.75, -329.187, 73.4526, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.89927, 0, 0),
(80190, 2, -9068.84, -314.693, 73.4526, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.988203, 0, 0),
(80190, 3, -9081.25, -302.185, 73.3844, 15000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.3548, 0, 0),
(80190, 4, -9080.31, -304.052, 73.4159, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.1783, 0, 0),
(80190, 5, -9081.24, -320.947, 73.4503, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.6246, 0, 0),
(80190, 6, -9077.38, -331.647, 73.4521, 15000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.23327, 0, 0),
(80208, 1, -9090.16, -369.966, 73.5186, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.50818, 0, 0),
(80208, 2, -9076.38, -383.678, 73.4065, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.50818, 0, 0),
(80208, 3, -9065.42, -381.357, 73.5318, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.304919, 0, 0),
(80208, 4, -9050.47, -366.982, 73.6663, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.721179, 0, 0),
(80208, 5, -9031.6, -350.094, 74.6923, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.729033, 0, 0),
(80208, 6, -9022.1, -337.869, 74.3695, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.886113, 0, 0),
(80208, 7, -9021.18, -327.998, 74.1554, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.86001, 0, 0),
(80208, 8, -9037.5, -309.707, 73.9363, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.27627, 0, 0),
(80208, 9, -9050.92, -294.498, 73.4894, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.24485, 0, 0),
(80208, 10, -9062.32, -284.3, 73.604, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.41371, 0, 0),
(80208, 11, -9069.43, -284.488, 73.7859, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.33577, 0, 0),
(80208, 12, -9084.72, -295.664, 73.1163, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.78816, 0, 0),
(80208, 13, -9087.3, -298.094, 73.0015, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.94917, 0, 0),
(80208, 14, -9088.29, -305.716, 73.233, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.54999, 0, 0),
(80208, 15, -9108.74, -320.343, 73.0187, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.70569, 0, 0),
(80208, 16, -9118.74, -331.375, 72.8484, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.98844, 0, 0),
(80208, 17, -9117.13, -341.892, 73.1439, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.07149, 0, 0),
(80241, 1, -8885.08, -374.603, 71.0746, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.36694, 0, 0),
(80241, 2, -8901.94, -360.476, 71.7319, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.05809, 0, 0),
(80241, 3, -8933.13, -351.635, 72.2375, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.07791, 0, 0),
(80241, 4, -8944.82, -341.741, 71.5509, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.50438, 0, 0),
(80241, 5, -8986.96, -341.127, 74.1487, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.98093, 0, 0),
(80241, 6, -8998.24, -349.032, 75.7814, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.84487, 0, 0),
(80241, 7, -8997.03, -365.847, 74.0457, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.55305, 0, 0),
(80241, 8, -9004.04, -384.599, 73.1531, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6.00604, 0, 0),
(80241, 9, -8987.35, -392.129, 70.8631, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6.26679, 0, 0),
(80241, 10, -8969.67, -392.297, 70.3341, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6.05473, 0, 0),
(80241, 11, -8950.05, -384.725, 70.6881, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.54438, 0, 0),
(80241, 12, -8931.36, -381.973, 70.5979, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.87331, 0, 0),
(80241, 13, -8915.51, -390.168, 69.4492, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6.27465, 0, 0),
(80241, 14, -8879.68, -391.891, 67.1277, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.034659, 0, 0),
(80241, 15, -8869.76, -381.949, 70.5956, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.19626, 0, 0),
(80241, 16, -8869.7, -374.034, 71.4233, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.09319, 0, 0),
(80251, 1, -8878.29, -410.994, 65.6802, 1000, 3801, 0, 0, 0, 0, 0, 0, 0, 0, 4.63836, 0, 0),
(80251, 2, -8880.02, -399.363, 66.0983, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.83464, 0, 0),
(80251, 3, -8898.18, -391.582, 68.6285, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.16417, 0, 0),
(80251, 4, -8914.49, -391.059, 69.3006, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.22326, 0, 0),
(80251, 5, -8928.27, -375.636, 71.218, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.22857, 0, 0),
(80251, 6, -8958.87, -373.826, 72.3354, 5000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.34245, 0, 0),
(80251, 7, -8921.43, -376.858, 71.1848, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.534655, 0, 0),
(80251, 8, -8909.08, -366.763, 72.135, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6.05679, 0, 0),
(80251, 9, -8870.04, -371.407, 71.997, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.63836, 0, 0),
(80251, 10, -8878.29, -410.994, 65.6802, 0, 3802, 0, 0, 0, 0, 0, 0, 0, 0, 4.63836, 0, 0),
(80251, 11, -8878.29, -410.994, 65.6802, 25000, 3803, 0, 0, 0, 0, 0, 0, 0, 0, 4.63836, 0, 0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (3801,3802,3803);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(3801,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,'Defias Thug - RUN ON'),
(3802,0,25,0,0,0,0,0,0,0,0,0,0,0,0,0,'Defias Thug - RUN OFF'),
(3803,0,20,1,5,0,0,0,0,0,0,0,0,0,0,0,'Defias Thug - movement chenged to 1:random'),
(3803,20,20,2,0,0,0,0,0,0,0,0,0,0,0,0,'Defias Thug - movement chenged to 2:waypoint');
-- Wretched Ghoul
UPDATE creature SET MovementType = 2 WHERE guid IN (44958, 44962, 44963, 44965);
DELETE FROM `creature_movement` WHERE id IN (44958, 44962, 44963, 44965);
INSERT INTO `creature_movement` VALUES 
(44958, 1, 1908.16, 1561.51, 87.9566, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.576077, 0, 0),
(44958, 2, 1923.33, 1571.39, 85.1808, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.876885, 0, 0),
(44958, 3, 1926.58, 1584, 83.058, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.7697, 0, 0),
(44958, 4, 1910.97, 1588.5, 85.4029, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.1192, 0, 0),
(44958, 5, 1894.6, 1587.11, 88.0001, 5000, 150201, 0, 0, 0, 0, 0, 0, 0, 0, 2.89772, 0, 0),
(44962, 1, 1970.38, 1496.6, 86.5755, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.58563, 0, 0),
(44962, 2, 1959.61, 1505.71, 88.0769, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.631, 0, 0),
(44962, 3, 1933.58, 1520.06, 88.0768, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.61451, 0, 0),
(44962, 4, 1918.64, 1531.43, 86.9021, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.85345, 0, 0),
(44962, 5, 1918.2, 1546.97, 86.9222, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.39007, 0, 0),
(44962, 6, 1921.22, 1557.97, 86.371, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.0401, 0, 0),
(44962, 7, 1936.24, 1578.17, 82.4023, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.740866, 0, 0),
(44962, 8, 1950.07, 1584.96, 81.1354, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.082702, 0, 0),
(44962, 9, 1967.7, 1583.2, 81.7346, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6.00382, 0, 0),
(44962, 10, 1975.87, 1575.03, 79.1618, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.40299, 0, 0),
(44962, 11, 1993.59, 1557.52, 78.3874, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.4022, 0, 0),
(44962, 12, 1998.18, 1550.03, 78.1416, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.24198, 0, 0),
(44962, 13, 2003.49, 1535.84, 76.7181, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.06134, 0, 0),
(44962, 14, 2007.71, 1522.96, 75.7106, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.90033, 0, 0),
(44962, 15, 2005.73, 1501.61, 72.9365, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.05996, 0, 0),
(44962, 16, 2000.68, 1496.71, 73.0049, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.50311, 0, 0),
(44962, 17, 1987.96, 1493.4, 82.1718, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.36489, 0, 0),
(44962, 18, 1978.23, 1488.28, 85.0991, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.67512, 0, 0),
(44962, 19, 1966.66, 1484.12, 83.4741, 50000, 150202, 0, 0, 0, 0, 0, 0, 0, 0, 3.17639, 0, 0),
(44963, 1, 2006.05, 1454.44, 64.1648, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.63095, 0, 0),
(44963, 2, 2006.37, 1434.88, 60.6175, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.96082, 0, 0),
(44963, 3, 2011.69, 1419.43, 59.1989, 10000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.1336, 0, 0),
(44963, 4, 2010.56, 1450.87, 63.3095, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.22703, 0, 0),
(44963, 5, 2023.36, 1471.91, 70.0838, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.09273, 0, 0),
(44963, 6, 2026.54, 1483.65, 74.5369, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.30478, 0, 0),
(44963, 7, 2034.93, 1512.63, 77.4423, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.66999, 0, 0),
(44963, 8, 2034.23, 1542.4, 78.9033, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.792704, 0, 0),
(44963, 9, 2044.79, 1559.33, 77.3526, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.764311, 0, 0),
(44963, 10, 2055.48, 1569.07, 76.6675, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.660492, 0, 0),
(44963, 11, 2066.95, 1582.56, 72.7916, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.93284, 0, 0),
(44963, 12, 2059.89, 1592.67, 69.8003, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.69938, 0, 0),
(44963, 13, 2044.41, 1601.97, 70.767, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.98134, 0, 0),
(44963, 14, 2019.69, 1604.92, 72.013, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.03632, 0, 0),
(44963, 15, 2005.95, 1607.29, 75.285, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.94207, 0, 0),
(44963, 16, 1994.46, 1609.71, 80.6842, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.93422, 0, 0),
(44963, 17, 1990.74, 1608.39, 81.8524, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.89869, 0, 0),
(44963, 18, 1988.38, 1602.39, 82.3258, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.82119, 0, 0),
(44963, 19, 1994.32, 1596.89, 81.5804, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.58557, 0, 0),
(44963, 20, 1988.21, 1580.99, 81.4986, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.83757, 0, 0),
(44963, 21, 1985.21, 1580.47, 81.6659, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.95598, 0, 0),
(44963, 22, 2000.68, 1557.37, 78.3015, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.71486, 0, 0),
(44963, 23, 2005.03, 1528.91, 76.1858, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.85231, 0, 0),
(44963, 24, 2008.91, 1517.57, 75.1868, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.61904, 0, 0),
(44963, 25, 2008.44, 1478, 69.2912, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.6913, 0, 0),
(44965, 1, 1972.64, 1595.26, 82.325, 30000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.48871, 0, 0),
(44965, 2, 1972.51, 1594.35, 82.3245, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.33198, 0, 0),
(44965, 3, 1968.3, 1586.97, 82.1956, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.36752, 0, 0),
(44965, 4, 1951.04, 1587.19, 81.5231, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.64363, 0, 0),
(44965, 5, 1938.35, 1579.9, 81.948, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.29491, 0, 0),
(44965, 6, 1922.04, 1586.48, 83.6347, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.95876, 0, 0),
(44965, 7, 1904.48, 1587.06, 86.3556, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.13783, 0, 0),
(44965, 8, 1893.63, 1584.73, 88.2344, 5000, 150201, 0, 0, 0, 0, 0, 0, 0, 0, 2.6878, 0, 0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (150201,150202);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(150201,1,26,1,0,1736,20,0,0,0,0,0,0,0,0,0,'W.Ghuol - Attack on Guards'),
(150201,0,22,21,1,0,0,0,0,0,0,0,0,0,0,0,'W.Ghuol - Faction change'),
(150202,0,20,1,0,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 1:random'),
(150202,45,20,2,0,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 2:waypoint');
-- Distracting Jarven(q.308)
DELETE FROM dbscripts_on_quest_end WHERE id = 308;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(308,0,0,0,0,0,0,0,2000000012,0,0,0,0,0,0,0,''),
(308,0,29,2,2,0,0,0,0,0,0,0,0,0,0,0,'1373 - npc_flag removed'),
(308,1,20,2,0,0,0,0,0,0,0,0,0,0,0,0,'1373 - movement chenged to 2:waypoint'),
(308,12,9,35875,55,0,0,0,0,0,0,0,-5607.24,-547.934,392.985,0.471239,''),
(308,23,0,0,0,0,0,0,2000000056,0,0,0,0,0,0,0,'');
DELETE FROM `db_script_string` WHERE `entry` = 2000000012;
INSERT INTO `db_script_string` VALUES
(2000000012, 'Ah, that sure does hit the spot! I think i\'ll get myself a couple more...can you watch these barrels for me, $N?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL);
-- Collection of Goods(q.7642)
DELETE FROM dbscripts_on_quest_end WHERE id = 7642;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(7642,0,29,3,2,0,0,0,0,0,0,0,0,0,0,0,'1416 - npc_flag removed'),
(7642,2,0,0,0,0,0,0,2000000063,0,0,0,0,0,0,0,''),
(7642,4,20,2,0,0,0,0,0,0,0,0,0,0,0,0,'1416 - movement chenged to 2:waypoint'),
(7642,105,29,3,1,0,0,0,0,0,0,0,0,0,0,0,'1416 - npc_flag added');
-- Deathguard Phillip
UPDATE creature_movement_template SET waittime = 2000, script_id = 173901 WHERE entry = 1739 AND point = 7;
DELETE FROM dbscripts_on_creature_movement WHERE id IN (173901,173902);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(173901,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,'Phillip - RUN ON'),
(173902,0,25,0,0,0,0,0,0,0,0,0,0,0,0,0,'Phillip - RUN OFF');
-- Deathguard Oliver
DELETE FROM dbscripts_on_creature_movement WHERE id = 173701;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(173701,0,20,1,5,0,0,0,0,0,0,0,0,0,0,0,'Oliver movement changed to 1:random'),
(173701,35,20,2,0,0,0,0,0,0,0,0,0,0,0,0,'Oliver movement changed to 2:waypoint');
-- Tormented Spirit
DELETE FROM dbscripts_on_creature_movement WHERE id = 153301;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(153301,0,20,1,5,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 1:random'),
(153301,175,20,2,0,0,0,0,0,0,0,0,0,0,0,0,'movement changed to 2:waypoint');

-- ---------------
-- Creature_movement(template) prepared for unnused colums drop
-- ---------------
-- creature_movement_template: 100% completed 
-- Jarven Thunderbrew
DELETE FROM creature_movement_template WHERE entry = 1373;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(1373,1,-5601.64,-541.38,392.42,0,0,0,0,0,0,0,0,0,0,0.5,0,0),
(1373,2,-5597.94,-542.04,392.42,0,0,0,0,0,0,0,0,0,0,5.5,0,0),
(1373,3,-5597.95,-548.43,395.48,0,0,0,0,0,0,0,0,0,0,4.7,0,0),
(1373,4,-5605.31,-549.33,399.09,0,0,0,0,0,0,0,0,0,0,3.1,0,0),
(1373,5,-5607.55,-546.63,399.09,0,0,0,0,0,0,0,0,0,0,1.5,0,0),
(1373,6,-5597.52,-538.75,399.09,0,0,0,0,0,0,0,0,0,0,1.5,0,0),
(1373,7,-5597.62,-530.24,399.65,0,0,0,0,0,0,0,0,0,0,3,0,0),
(1373,8,-5603.67,-529.91,399.65,20000,0,0,0,0,0,0,0,0,0,4.2,0,0),
(1373,9,-5603.67,-529.91,399.65,0,0,0,0,0,0,0,0,0,0,4.2,0,0),
(1373,10,-5597.62,-530.24,399.65,0,0,0,0,0,0,0,0,0,0,3,0,0),
(1373,11,-5597.52,-538.75,399.09,0,0,0,0,0,0,0,0,0,0,1.5,0,0),
(1373,12,-5607.55,-546.63,399.09,0,0,0,0,0,0,0,0,0,0,1.5,0,0),
(1373,13,-5605.31,-549.33,399.09,0,0,0,0,0,0,0,0,0,0,3.1,0,0),
(1373,14,-5597.95,-548.43,395.48,0,0,0,0,0,0,0,0,0,0,4.7,0,0),
(1373,15,-5597.94,-542.04,392.42,0,0,0,0,0,0,0,0,0,0,5.5,0,0),
(1373,16,-5601.64,-541.38,392.42,1000,137301,0,0,0,0,0,0,0,0,0,0,0),
(1373,17,-5605.96,-544.451,392.43,0,0,0,0,0,0,0,0,0,0,0.5,0,0),
(1373,18,-5605.96,-544.451,392.43,2000,137302,0,0,0,0,0,0,0,0,0.977384,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (137301,137302); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(137301,0,0,0,0,0,0,0,2000000013,0,0,0,0,0,0,0,''),
(137302,0,0,0,0,0,0,0,2000000014,0,0,0,0,0,0,0,''),
(137302,1,29,2,1,0,0,0,0,0,0,0,0,0,0,0,'1373 - npc_flag added'),
(137302,2,20,1,0,0,0,0,0,0,0,0,0,0,0,0,'1373 - movement chenged to 0:idle');
DELETE FROM `db_script_string` WHERE `entry` IN (2000000013, 2000000014);
INSERT INTO `db_script_string` VALUES
(2000000013, 'How goes the barrel watching...?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL),
(2000000014, 'Well, back to business for me. But it sure was nice taking that short break, and it\'s always nice drinking Thunder Ale!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL);
-- Grimand Elmore
DELETE FROM creature_movement_template WHERE entry = 1416;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(1416,1,-8393.09,687.41,95.27,0,0,0,0,0,0,0,0,0,0,3.72,0,0),
(1416,2,-8400.51,681.85,95.96,0,0,0,0,0,0,0,0,0,0,5,0,0),
(1416,3,-8388.72,646.85,94.82,0,0,0,0,0,0,0,0,0,0,3.92,0,0),
(1416,4,-8422.25,618.12,95.46,10000,141601,0,0,0,0,0,0,0,0,3.2,0,0), 
(1416,5,-8421.99,617.93,95.45,9000,141602,0,0,0,0,0,0,0,0,5.34,0,0), 
(1416,6,-8388.72,646.85,94.82,0,0,0,0,0,0,0,0,0,0,1.98295,0,0),
(1416,7,-8400.51,681.85,95.96,0,0,0,0,0,0,0,0,0,0,0.798564,0,0),
(1416,8,-8393.09,687.41,95.27,0,0,0,0,0,0,0,0,0,0,6.03867,0,0),
(1416,9,-8387,685.202,95.356,0,0,0,0,0,0,0,0,0,0,2.47925,0,0),
(1416,10,-8387,685.202,95.356,2000,141603,0,0,0,0,0,0,0,0,2.47925,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (141601,141602,141603); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(141601,3,1,69,0,0,0,0,0,0,0,0,0,0,0,0,''),
(141601,9,1,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(141602,3,1,233,0,0,0,0,0,0,0,0,0,0,0,0,''),
(141602,8,1,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(141602,9,0,0,0,0,0,0,2000000064,0,0,0,0,0,0,0,''),
(141603,2,20,1,0,0,0,0,0,0,0,0,0,0,0,0,'1416 - movement chenged to 0:idle');
-- Nurse Lillian
UPDATE creature SET MovementType = 2 WHERE id = 5042;
UPDATE creature_template SET MovementType = 2 WHERE entry = 5042;
DELETE FROM creature_movement_template WHERE entry = 5042;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(5042,1,-8759.62,812.343,97.635,0,0,0,0,0,0,0,0,0,0,3.86606,0,0),
(5042,2,-8761.61,810.579,97.635,0,0,0,0,0,0,0,0,0,0,2.0785,0,0),
(5042,3,-8762.09,811.25,97.635,15000,141601,0,0,0,0,0,0,0,0,2.08714,0,0),
(5042,4,-8765.12,809.343,97.635,0,0,0,0,0,0,0,0,0,0,2.33218,0,0),
(5042,5,-8768.82,813.976,97.635,0,0,0,0,0,0,0,0,0,0,0.817934,0,0),
(5042,6,-8765.6,816.682,97.635,0,0,0,0,0,0,0,0,0,0,5.0206,0,0),
(5042,7,-8765.49,816.11,97.635,15000,0,0,0,0,0,0,0,0,0,4.90279,0,0),
(5042,8,-8766.14,815.698,97.635,0,0,0,0,0,0,0,0,0,0,3.76789,0,0),
(5042,9,-8762.85,818.44,97.635,0,0,0,0,0,0,0,0,0,0,6.00235,0,0),
(5042,10,-8757.2,817.107,97.635,0,0,0,0,0,0,0,0,0,0,5.2413,0,0),
(5042,11,-8755.51,815.287,97.635,0,0,0,0,0,0,0,0,0,0,5.48793,0,0),
(5042,12,-8755.65,815.128,97.635,15000,0,0,0,0,0,0,0,0,0,4.32318,0,0),
(5042,13,-8755.62,815.616,97.635,0,0,0,0,0,0,0,0,0,0,2.83609,0,0),
(5042,14,-8766.1,820.151,97.635,0,0,0,0,0,0,0,0,0,0,3.84219,0,0),
(5042,15,-8766.37,820.027,97.635,15000,141601,0,0,0,0,0,0,0,0,3.58301,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 504201; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(141601,5,0,0,0,0,0,0,2000000034,2000000035,2000000036,0,0,0,0,0,'');
INSERT INTO `db_script_string` VALUES
(2000000034, 'Let me help you with those.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL),
(2000000035, 'Drink this, it will help.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL),
(2000000036, 'You\'re going to be just fine.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL);
-- Bartleby <Drunk> -- not req. no more.
DELETE FROM creature_movement_template WHERE entry = 6090;
UPDATE creature_template SET MovementType = 0 WHERE entry = 6090;
-- Erk
UPDATE creature SET MovementType = 2 WHERE id = 14857;
UPDATE creature_template SET MovementType = 2 WHERE entry = 14857;
DELETE FROM creature_movement_template WHERE entry = 14857;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(14857,1,-29.4619,-2615.94,97.1569,2000,1485701,0,0,0,0,0,0,0,0,2.81206,0,0),
(14857,2,-25.8713,-2613.07,97.2377,10000,1485702,0,0,0,0,0,0,0,0,0.434565,0,0),
(14857,3,-19.1492,-2619.64,97.2062,0,0,0,0,0,0,0,0,0,0,5.9402,0,0),
(14857,4,-11.7613,-2621.95,95.72,0,0,0,0,0,0,0,0,0,0,0.001017,0,0),
(14857,5,-9.08595,-2621.67,94.9584,0,0,0,0,0,0,0,0,0,0,0.104689,0,0),
(14857,6,-3.63306,-2621.64,92.1312,0,0,0,0,0,0,0,0,0,0,0.006514,0,0),
(14857,7,3.79072,-2621.66,89.8122,35000,1485703,0,0,0,0,0,0,0,0,0.018295,0,0),
(14857,8,-0.125211,-2621.11,91.288,0,0,0,0,0,0,0,0,0,0,4.4955,0,0),
(14857,9,-4.09707,-2636.68,91.9798,0,0,0,0,0,0,0,0,0,0,3.88053,0,0),
(14857,10,-9.7202,-2640.14,95.6607,0,0,0,0,0,0,0,0,0,0,3.69832,0,0),
(14857,11,-21.9055,-2647.23,95.8334,0,0,0,0,0,0,0,0,0,0,2.72835,0,0),
(14857,12,-29.9285,-2641.6,96.0804,0,0,0,0,0,0,0,0,0,0,2.42597,0,0),
(14857,13,-33.6012,-2638.69,96.4458,0,0,0,0,0,0,0,0,0,0,2.25083,0,0),
(14857,14,-33.7544,-2634.78,96.275,0,0,0,0,0,0,0,0,0,0,1.4403,0,0),
(14857,15,-31.7804,-2631.54,95.9905,0,0,0,0,0,0,0,0,0,0,0.610917,0,0),
(14857,16,-30.3169,-2631.18,95.9409,0,0,0,0,0,0,0,0,0,0,0.021083,0,0),
(14857,17,-29.1425,-2632.01,95.9483,11000,1485704,0,0,0,0,0,0,0,0,5.85468,0,0),
(14857,18,-32.0825,-2632.89,96.0727,0,0,0,0,0,0,0,0,0,0,3.654,0,0),
(14857,19,-32.9846,-2638.7,96.3846,0,0,0,0,0,0,0,0,0,0,4.78104,0,0),
(14857,20,-31.5213,-2644.06,96.1429,0,0,0,0,0,0,0,0,0,0,5.35438,0,0),
(14857,21,-24.4697,-2646.37,95.8326,0,0,0,0,0,0,0,0,0,0,6.02855,0,0),
(14857,22,-18.6414,-2646.82,95.8326,0,0,0,0,0,0,0,0,0,0,0.601453,0,0),
(14857,23,-9.77005,-2641.35,95.5894,0,0,0,0,0,0,0,0,0,0,0.554329,0,0),
(14857,24,-8.47826,-2640.57,95.2277,0,0,0,0,0,0,0,0,0,0,0.522913,0,0),
(14857,25,-3.89023,-2637.86,92.0007,0,0,0,0,0,0,0,0,0,0,0.467935,0,0),
(14857,26,4.77875,-2632.61,89.838,20000,1485705,0,0,0,0,0,0,0,0,0.48757,0,0),
(14857,27,4.56817,-2635.55,90.4474,0,0,0,0,0,0,0,0,0,0,5.1604,0,0),
(14857,28,10.7483,-2640.52,90.3865,0,0,0,0,0,0,0,0,0,0,5.61985,0,0),
(14857,29,34.7806,-2655.09,91.9127,0,0,0,0,0,0,0,0,0,0,5.74159,0,0),
(14857,30,53.317,-2671.72,91.6669,0,0,0,0,0,0,0,0,0,0,5.2193,0,0),
(14857,31,63.5888,-2689.05,92.9446,0,0,0,0,0,0,0,0,0,0,4.81483,0,0),
(14857,32,60.2265,-2698.29,92.0961,0,0,0,0,0,0,0,0,0,0,4.02158,0,0),
(14857,33,55.9701,-2699.55,91.9007,0,0,0,0,0,0,0,0,0,0,2.39266,0,0),
(14857,34,55.0459,-2698.41,91.9447,20000,1485706,0,0,0,0,0,0,0,0,2.02666,0,0),
(14857,35,45.8985,-2702.47,91.7002,0,0,0,0,0,0,0,0,0,0,3.10109,0,0),
(14857,36,31.0409,-2703.29,91.6676,0,0,0,0,0,0,0,0,0,0,2.65891,0,0),
(14857,37,23.5055,-2699.47,91.7346,0,0,0,0,0,0,0,0,0,0,2.2937,0,0),
(14857,38,10.4826,-2681.7,91.7507,0,0,0,0,0,0,0,0,0,0,2.18767,0,0),
(14857,49,-0.678281,-2668.66,91.9212,0,0,0,0,0,0,0,0,0,0,2.2937,0,0),
(14857,40,-8.81453,-2659.54,95.5593,0,0,0,0,0,0,0,0,0,0,2.31726,0,0),
(14857,41,-14.4874,-2643.52,95.8315,0,0,0,0,0,0,0,0,0,0,1.86173,0,0),
(14857,42,-17.0888,-2620.45,96.3303,0,0,0,0,0,0,0,0,0,0,2.72331,0,0),
(14857,43,-19.1079,-2619.6,97.1972,0,0,0,0,0,0,0,0,0,0,2.74138,0,0),
(14857,44,-29.4619,-2615.94,97.1569,0,0,0,0,0,0,0,0,0,0,2.81206,0,0),
(14857,45,-29.4619,-2615.94,97.1569,240000,1485707,0,0,0,0,0,0,0,0,2.81206,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1485701,1485702,1485703,1485704,1485705,1485706,1485707);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1485701,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,'RUN ON'),
(1485702,0,25,0,0,0,0,0,0,0,0,0,0,0,0,0,'RUN OFF'),
(1485702,5,0,0,0,0,0,0,2000000186,0,0,0,0,0,0,0,''),
(1485703,3,0,0,0,0,0,0,2000000187,0,0,0,0,0,0,0,''),
(1485703,31,0,0,0,0,0,0,2000000188,0,0,0,0,0,0,0,''),
(1485704,10,0,0,0,0,0,0,2000000189,0,0,0,0,0,0,0,''),
(1485705,15,0,0,0,0,0,0,2000000190,0,0,0,0,0,0,0,''),
(1485705,18,25,1,0,0,0,0,0,0,0,0,0,0,0,0,'RUN ON'),
(1485706,0,25,0,0,0,0,0,0,0,0,0,0,0,0,0,'RUN OFF'),
(1485706,3,0,0,0,0,0,0,2000000191,0,0,0,0,0,0,0,''),
(1485706,8,0,0,0,14893,5,4,2000000192,0,0,0,0,0,0,0,''),
(1485706,9,1,21,0,14893,5,0,0,0,0,0,0,0,0,0,''),
(1485706,14,1,7,0,3501,5,0,0,0,0,0,0,0,0,0,''),
(1485706,14,1,7,0,14893,5,0,0,0,0,0,0,0,0,0,''),
(1485706,21,0,0,0,0,0,0,2000005010,0,0,0,0,0,0,0,''),
(1485707,0,20,1,0,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 1:random'),
(1485707,235,20,2,0,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 2:waypoint');
INSERT INTO `db_script_string` VALUES
(2000000186, 'Hmmm... Where is my fishing hook? Oh, there it is.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL),
(2000000187, 'Let\'s see if the fish are biting.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL),
(2000000188, 'Hmmm... I think I need better bait. I\'ll check my father\'s wagon.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL),
(2000000189, 'Quillboar scraps! These should do the trick. Fish love Quillboar.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL),
(2000000190, 'Caught one! I\'ll see if any of the guards are hungry. Come on Fang!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL),
(2000000191, 'I caught a fish if you are hungry...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL),
(2000000192, 'A nice catch it is at that! You bring honor to the Horde boy, We thank you!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL);
-- Okla
UPDATE creature SET MovementType = 2 WHERE id = 14873;
UPDATE creature_template SET MovementType = 2 WHERE entry = 14873;
DELETE FROM creature_movement_template WHERE entry = 14873;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(14873,1,270.076,-3036.6,97.6192,0,0,0,0,0,0,0,0,0,0,3.69769,0,0),
(14873,2,262.171,-3043.45,96.5053,21000,1487301,0,0,0,0,0,0,0,0,4.01577,0,0),
(14873,3,251.328,-3055.55,96.1454,0,0,0,0,0,0,0,0,0,0,4.326,0,0),
(14873,4,246.888,-3070.92,95.2793,0,0,0,0,0,0,0,0,0,0,4.4713,0,0),
(14873,5,242.449,-3081.3,91.82,0,0,0,0,0,0,0,0,0,0,4.18071,0,0),
(14873,6,232.826,-3106.67,93.3165,0,0,0,0,0,0,0,0,0,0,4.37706,0,0),
(14873,7,226.41,-3120.76,93.3475,0,0,0,0,0,0,0,0,0,0,4.37392,0,0),
(14873,8,213.921,-3151.01,91.2851,5000,1487302,0,0,0,0,0,0,0,0,1.33448,0,0),
(14873,9,221.681,-3147.9,91.374,5000,0,0,0,0,0,0,0,0,0,0.340951,0,0),
(14873,10,214.549,-3134.64,91.9876,0,0,0,0,0,0,0,0,0,0,2.04134,0,0),
(14873,11,210.931,-3139.95,91.6514,0,0,0,0,0,0,0,0,0,0,1.95494,0,0),
(14873,12,214.059,-3139.64,91.7,0,0,0,0,0,0,0,0,0,0,0.097475,0,0),
(14873,13,213.426,-3131.78,92.1297,10000,1487305,0,0,0,0,0,0,0,0,1.66434,0,0),
(14873,14,220.194,-3140.72,91.7517,0,0,0,0,0,0,0,0,0,0,5.37928,0,0),
(14873,15,225.395,-3139.1,92.0847,0,0,0,0,0,0,0,0,0,0,0.325237,0,0),
(14873,16,220.857,-3140.83,91.7662,0,0,0,0,0,0,0,0,0,0,3.5061,0,0),
(14873,17,218.769,-3132.79,92.4983,5000,0,0,0,0,0,0,0,0,0,1.78215,0,0),
(14873,18,226.814,-3137.56,92.169,10000,1487306,0,0,0,0,0,0,0,0,5.7327,0,0),
(14873,19,225.496,-3132.89,92.7818,0,0,0,0,0,0,0,0,0,0,1.84498,0,0),
(14873,20,213.603,-3148.39,91.4489,0,0,0,0,0,0,0,0,0,0,4.02839,0,0),
(14873,21,219.055,-3151.2,91.2139,5000,0,0,0,0,0,0,0,0,0,5.82302,0,0),
(14873,22,220.469,-3141.93,91.6344,0,0,0,0,0,0,0,0,0,0,1.40909,0,0),
(14873,23,214.852,-3148.32,91.4558,0,0,0,0,0,0,0,0,0,0,3.67889,0,0),
(14873,24,218.373,-3144.99,91.5714,10000,1487307,0,0,0,0,0,0,0,0,2.13165,0,0),
(14873,25,224.091,-3149.02,91.2304,0,0,0,0,0,0,0,0,0,0,5.66987,0,0),
(14873,26,224.591,-3145.02,91.4801,5000,0,0,0,0,0,0,0,0,0,1.33054,0,0),
(14873,27,219.022,-3147.38,91.4735,0,0,0,0,0,0,0,0,0,0,3.58071,0,0),
(14873,28,220.167,-3139.75,91.8958,4000,0,0,0,0,0,0,0,0,0,1.40516,0,0),
(14873,29,225.033,-3133.14,92.8028,10000,1487308,0,0,0,0,0,0,0,0,0.6551,0,0),
(14873,30,222.021,-3128.32,93.0422,0,0,0,0,0,0,0,0,0,0,2.13558,0,0),
(14873,31,228.338,-3126.35,92.9595,2000,0,0,0,0,0,0,0,0,0,0.337014,0,0),
(14873,32,229.495,-3129.22,92.6818,3000,0,0,0,0,0,0,0,0,0,5.09653,0,0),
(14873,33,232.12,-3128.11,92.5988,0,0,0,0,0,0,0,0,0,0,0.399846,0,0),
(14873,34,227.003,-3137.58,92.1461,3000,0,0,0,0,0,0,0,0,0,4.25615,0,0),
(14873,35,220.002,-3132.38,92.659,10000,1487309,0,0,0,0,0,0,0,0,1.85283,0,0),
(14873,36,225.874,-3102.36,93.6962,0,0,0,0,0,0,0,0,0,0,1.38159,0,0),
(14873,37,233.086,-3085.54,91.6788,0,0,0,0,0,0,0,0,0,0,1.15775,0,0),
(14873,38,235.152,-3069.81,91.8706,0,0,0,0,0,0,0,0,0,0,1.33447,0,0),
(14873,39,239.821,-3061.03,95.4022,0,0,0,0,0,0,0,0,0,0,1.05173,0,0),
(14873,40,256.123,-3047.91,96.2473,3000,1487303,0,0,0,0,0,0,0,0,0.652743,0,0),
(14873,41,267.05,-3039.04,96.9212,0,0,0,0,0,0,0,0,0,0,0.647245,0,0),
(14873,42,271.093,-3035.98,97.6501,0,0,0,0,0,0,0,0,0,0,0.647245,0,0),
(14873,43,278.975,-3029.68,97.3919,3000,1487302,0,0,0,0,0,0,0,0,0.670807,0,0),
(14873,44,280.125,-3029.01,97.3502,240000,1487304,0,0,0,0,0,0,0,0,3.76837,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 1487301 AND 1487309;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1487301,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,'RUN ON'),
(1487301,5,0,0,0,0,0,0,2000005320,0,0,0,0,0,0,0,''),
(1487301,13,0,0,0,5907,30,4,2000005321,0,0,0,0,0,0,0,''),
(1487301,20,0,0,0,0,0,0,2000005322,0,0,0,0,0,0,0,''),
(1487302,0,25,0,0,0,0,0,0,0,0,0,0,0,0,0,'RUN OFF'),
(1487303,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,'RUN ON'),
(1487304,0,20,1,0,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 1:random'),
(1487304,235,20,2,0,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 2:waypoint'),
(1487305,9,0,0,0,0,0,0,2000005323,0,0,0,0,0,0,0,''),
(1487306,9,0,0,0,0,0,0,2000005324,0,0,0,0,0,0,0,''),
(1487307,9,0,0,0,0,0,0,2000005325,0,0,0,0,0,0,0,''),
(1487308,9,0,0,0,0,0,0,2000005326,0,0,0,0,0,0,0,''),
(1487309,9,0,0,0,0,0,0,2000005327,0,0,0,0,0,0,0,'');
DELETE FROM `db_script_string` WHERE `entry` BETWEEN 2000005320 AND 2000005327;
INSERT INTO `db_script_string` VALUES
(2000005320, 'Can I go collect more rocks for my necklace, Papa?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL),
(2000005321, 'Yes you may, Okla. But do not stray too far from home.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL),
(2000005322, 'Dabu! I will be careful Papa!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL),
(2000005323, 'Ooohh... This rock is nice and colorful. Let\'s see if I can find more like it...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL),
(2000005324, 'Hmm... That rock is nice, but too small.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL),
(2000005325, 'This is a shiney rock. I\'ll put it in my bucket. Ok, I just need a few more...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL),
(2000005326, 'I bet my friend Gruk would like this rock for the spear he is making! It\'s very sharp... I hope he likes it.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL),
(2000005327, 'There... That should be enough rocks to make a necklace. I should probably get home now anyway.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL);
-- Opus
UPDATE creature SET MovementType = 2 WHERE id = 10262;
UPDATE creature_template SET MovementType = 2 WHERE entry = 10262;
DELETE FROM creature_movement WHERE id = 4567;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(4567,1,-7455.58,-2194.28,165.373,60000,0,0,0,0,0,0,0,0,0,3.40339,0,0),
(4567,2,-7455.58,-2194.28,165.373,1000,1026201,0,0,0,0,0,0,0,0,3.40339,0,0),
(4567,3,-7455.58,-2194.28,165.373,180000,0,0,0,0,0,0,0,0,0,3.40339,0,0),
(4567,4,-7455.58,-2194.28,165.373,1000,1026202,0,0,0,0,0,0,0,0,3.40339,0,0),
(4567,5,-7455.58,-2194.28,165.373,120000,0,0,0,0,0,0,0,0,0,3.40339,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1026201,1026202); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1026201,1,0,0,0,0,0,0,2000005001,2000005002,2000005003,2000005004,0,0,0,0,''),
(1026202,1,0,0,0,0,0,0,2000005005,2000005006,2000005007,2000005008,0,0,0,0,'');
-- Thomas Miller <Baker> - c.3518
DELETE FROM creature_movement WHERE id = 79723;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(79723,1,-8831.81,543.054,96.8538,0,0,0,0,0,0,0,0,0,0,0,0,0),
(79723,2,-8823.8,554.302,95.1343,0,0,0,0,0,0,0,0,0,0,0,0,0),
(79723,3,-8816.18,563.58,94.1516,0,0,0,0,0,0,0,0,0,0,0,0,0),
(79723,4,-8812.27,575.284,94.8673,0,0,0,0,0,0,0,0,0,0,0,0,0),
(79723,5,-8798.45,588.131,97.2749,0,0,0,0,0,0,0,0,0,0,0,0,0),
(79723,6,-8781.38,601.002,97.395,0,0,0,0,0,0,0,0,0,0,0,0,0),
(79723,7,-8770.7,609.208,97.2416,0,0,0,0,0,0,0,0,0,0,0,0,0),
(79723,8,-8761.96,617.745,99.1796,0,0,0,0,0,0,0,0,0,0,0,0,0),
(79723,9,-8757.63,628.577,102.216,0,0,0,0,0,0,0,0,0,0,0,0,0),
(79723,10,-8759.15,642.457,103.654,0,0,0,0,0,0,0,0,0,0,0,0,0),
(79723,11,-8770.64,661.869,103.528,0,0,0,0,0,0,0,0,0,0,0,0,0),
(79723,12,-8787.04,680.217,102.245,0,0,0,0,0,0,0,0,0,0,0,0,0),
(79723,13,-8804.12,683.305,100.683,0,0,0,0,0,0,0,0,0,0,0,0,0),
(79723,14,-8815.72,680.448,98.2183,0,0,0,0,0,0,0,0,0,0,0,0,0),
(79723,15,-8831.55,674.228,98.3358,0,0,0,0,0,0,0,0,0,0,0,0,0),
(79723,16,-8843.12,667.22,97.8051,0,0,0,0,0,0,0,0,0,0,0,0,0),
(79723,17,-8852.2,659.229,96.9603,0,0,0,0,0,0,0,0,0,0,0,0,0),
(79723,18,-8841.74,637.862,95.1661,0,0,0,0,0,0,0,0,0,0,0,0,0),
(79723,19,-8834.06,634.756,94.3203,0,0,0,0,0,0,0,0,0,0,0,0,0),
(79723,20,-8817.96,641.332,94.2293,0,0,0,0,0,0,0,0,0,0,0,0,0),
(79723,21,-8811.88,634.469,94.2293,0,0,0,0,0,0,0,0,0,0,0,0,0),
(79723,22,-8813.45,625.373,94.1306,60000,0,0,0,0,0,0,0,0,0,0,0,0),
(79723,23,-8827.66,620.367,94.2332,0,0,0,0,0,0,0,0,0,0,0,0,0),
(79723,24,-8846.61,601.6,92.6069,0,0,0,0,0,0,0,0,0,0,0,0,0),
(79723,25,-8859.18,589.015,92.709,0,0,0,0,0,0,0,0,0,0,0,0,0),
(79723,26,-8874.99,572.27,93.4734,0,0,0,0,0,0,0,0,0,0,0,0,0),
(79723,27,-8883.26,572.174,92.8046,0,0,0,0,0,0,0,0,0,0,0,0,0),
(79723,28,-8886.9,579.094,92.9168,0,0,0,0,0,0,0,0,0,0,0,0,0),
(79723,29,-8889.38,585.29,93.3191,0,0,0,0,0,0,0,0,0,0,0,0,0),
(79723,30,-8869.45,596.649,92.4409,0,0,0,0,0,0,0,0,0,0,0,0,0),
(79723,31,-8860.44,601.856,92.161,0,0,0,0,0,0,0,0,0,0,0,0,0),
(79723,32,-8847.27,610.523,92.6533,0,0,0,0,0,0,0,0,0,0,0,0,0),
(79723,33,-8837.06,617.396,93.0252,0,0,0,0,0,0,0,0,0,0,0,0,0),
(79723,34,-8834.75,618.401,93.3229,0,0,0,0,0,0,0,0,0,0,0,0,0),
(79723,35,-8827.87,621.207,94.1001,0,0,0,0,0,0,0,0,0,0,0,0,0),
(79723,36,-8809.26,603.528,96.2749,0,0,0,0,0,0,0,0,0,0,0,0,0),
(79723,37,-8806.62,593.729,97.1852,0,0,0,0,0,0,0,0,0,0,0,0,0),
(79723,38,-8820.32,573.328,94.1915,0,0,0,0,0,0,0,0,0,0,0,0,0),
(79723,39,-8830.69,558.865,94.8851,0,0,0,0,0,0,0,0,0,0,0,0,0),
(79723,40,-8834.06,549.867,96.194,0,0,0,0,0,0,0,0,0,0,0,0,0),
(79723,41,-8831.28,543.109,96.8344,60000,0,0,0,0,0,0,0,0,0,0,0,0);
DELETE FROM db_script_string WHERE entry IN (2000005099,2000005100,2000005101,2000005102); -- all done by OOC in ACID - entry can be reused.
-- Northshire Peasant #1 c.11260
UPDATE creature_movement SET script_id = 1126002, emote = 0 WHERE id = 80119 AND point = 1;
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1126001,1126002); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1126001,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1126002,1,1,234,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- Northshire Peasant #2 c.11260
UPDATE creature_movement SET waittime = 1000, script_id = 1126001, emote = 0 WHERE id = 80127 AND point = 1;
UPDATE creature_movement SET script_id = 1126002, emote = 0 WHERE id = 80127 AND point = 7;
-- Northshire Peasant #3 c.11260
UPDATE creature_movement SET waittime = 1000, script_id = 1126001, emote = 0 WHERE id = 80137 AND point = 1;
UPDATE creature_movement SET script_id = 1126002, emote = 0 WHERE id = 80137 AND point = 5;
-- Northshire Peasant #4 c.11260
UPDATE creature_movement SET waittime = 1000, script_id = 1126001, emote = 0 WHERE id = 80145 AND point = 1;
UPDATE creature_movement SET script_id = 1126002, emote = 0 WHERE id = 80145 AND point = 4;
-- Northshire Peasant #5 c.11260
UPDATE creature_movement SET waittime = 1000, script_id = 1126001, emote = 0 WHERE id = 80262 AND point = 1;
UPDATE creature_movement SET script_id = 1126002, emote = 0 WHERE id = 80262 AND point = 9;
-- Ol' Emma c.3520
UPDATE creature_movement SET waittime = 0, script_id = 352001, textid1 = 0 WHERE id = 79796 AND point = 7;
UPDATE creature_movement SET waittime = 0, script_id = 352002, textid1 = 0 WHERE id = 79796 AND point = 10;
UPDATE creature_movement SET waittime = 0, script_id = 352003, textid1 = 0 WHERE id = 79796 AND point = 13;
UPDATE creature_movement SET waittime = 0, script_id = 352004, textid1 = 0 WHERE id = 79796 AND point = 16;
UPDATE creature_movement SET waittime = 0, script_id = 352005, textid1 = 0 WHERE id = 79796 AND point = 22;
UPDATE creature_movement SET waittime = 0, script_id = 352006, textid1 = 0 WHERE id = 79796 AND point = 27;
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 352001 AND 352006; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(352001,0,0,0,0,0,0,0,2000005103,0,0,0,0,0,0,0,''),
(352002,0,0,0,0,0,0,0,2000005104,0,0,0,0,0,0,0,''),
(352003,0,0,0,0,0,0,0,2000005105,0,0,0,0,0,0,0,''),
(352004,0,0,0,0,0,0,0,2000005106,0,0,0,0,0,0,0,''),
(352005,0,0,0,0,0,0,0,2000005107,0,0,0,0,0,0,0,''),
(352006,0,0,0,0,0,0,0,2000005108,0,0,0,0,0,0,0,'');
-- Flik c.14860
UPDATE creature_movement SET script_id = 1486001, textid1 = 0, textid2 = 0 WHERE id = 56625 AND point = 7;
DELETE FROM dbscripts_on_creature_movement WHERE id = 1486001; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1486001,1,0,0,0,0,0,0,2000005035,2000005218,0,0,0,0,0,0,'');
-- Erich Lohan c.3627
UPDATE creature_movement SET script_id = 362701, textid1 = 0 WHERE id = 90445 AND point = 2;
UPDATE creature_movement SET script_id = 362702, textid1 = 0 WHERE id = 90445 AND point = 4;
UPDATE creature_movement SET script_id = 362703, textid1 = 0 WHERE id = 90445 AND point = 7;
UPDATE creature_movement SET script_id = 362704, textid1 = 0 WHERE id = 90445 AND point = 12;
UPDATE creature_movement SET script_id = 362705, textid1 = 0 WHERE id = 90445 AND point = 17;
UPDATE creature_movement SET script_id = 362706, textid1 = 0 WHERE id = 90445 AND point = 21;
UPDATE creature_movement SET script_id = 362707, textid1 = 0 WHERE id = 90445 AND point = 26;
UPDATE creature_movement SET script_id = 362708, textid1 = 0 WHERE id = 90445 AND point = 30;
UPDATE creature_movement SET script_id = 362709, textid1 = 0 WHERE id = 90445 AND point = 35;
UPDATE creature_movement SET script_id = 362710, textid1 = 0 WHERE id = 90445 AND point = 39;
UPDATE creature_movement SET script_id = 362711, textid1 = 0 WHERE id = 90445 AND point = 43;
UPDATE creature_movement SET script_id = 362712, textid1 = 0 WHERE id = 90445 AND point = 47;
UPDATE creature_movement SET script_id = 362713, textid1 = 0 WHERE id = 90445 AND point = 52;
UPDATE creature_movement SET script_id = 362714, textid1 = 0 WHERE id = 90445 AND point = 57;
UPDATE creature_movement SET script_id = 362715, textid1 = 0 WHERE id = 90445 AND point = 61;
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 362701 AND 362715; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(362701,0,0,0,0,0,0,0,2000005185,0,0,0,0,0,0,0,''),
(362702,0,0,0,0,0,0,0,2000005186,0,0,0,0,0,0,0,''),
(362703,0,0,0,0,0,0,0,2000005187,0,0,0,0,0,0,0,''),
(362704,0,0,0,0,0,0,0,2000005188,0,0,0,0,0,0,0,''),
(362705,0,0,0,0,0,0,0,2000005189,0,0,0,0,0,0,0,''),
(362706,0,0,0,0,0,0,0,2000005190,0,0,0,0,0,0,0,''),
(362707,0,0,0,0,0,0,0,2000005191,0,0,0,0,0,0,0,''),
(362708,0,0,0,0,0,0,0,2000005192,0,0,0,0,0,0,0,''),
(362709,0,0,0,0,0,0,0,2000005193,0,0,0,0,0,0,0,''),
(362710,0,0,0,0,0,0,0,2000005194,0,0,0,0,0,0,0,''),
(362711,0,0,0,0,0,0,0,2000005195,0,0,0,0,0,0,0,''),
(362712,0,0,0,0,0,0,0,2000005196,0,0,0,0,0,0,0,''),
(362713,0,0,0,0,0,0,0,2000005197,0,0,0,0,0,0,0,''),
(362714,0,0,0,0,0,0,0,2000005198,0,0,0,0,0,0,0,''),
(362715,0,0,0,0,0,0,0,2000005199,0,0,0,0,0,0,0,'');
-- Vectus c.10432
-- UPDATE creature SET MovementType = 2 WHERE id = 10432;
DELETE FROM creature_movement WHERE id = 48805;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(48805,1,143.481,99.0964,104.659,300000,0,0,0,0,0,0,0,0,0,3.26377,0,0),
(48805,2,143.481,99.0964,104.659,21000,1043201,0,0,0,0,0,0,0,0,3.26377,0,0),
(48805,3,143.481,99.0964,104.659,30000,0,0,0,0,0,0,0,0,0,3.26377,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 1043201; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1043201,1,0,0,0,0,0,0,2000005027,0,0,0,0,0,0,0,''),
(1043201,10,0,0,0,0,0,0,2000005028,0,0,0,0,0,0,0,''),
(1043201,20,0,0,0,0,0,0,2000005029,0,0,0,0,0,0,0,'');
-- Junior Apothecary Holland <Royal Apothecary Society> c.10665
UPDATE creature_movement SET script_id = 1066501, textid1 = 0 WHERE id = 28412 AND point = 5;
DELETE FROM dbscripts_on_creature_movement WHERE id = 1066501; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1066501,1,0,0,0,0,0,0,2000005018,0,0,0,0,0,0,0,''); 
-- Caretaker Alen <The Argent Dawn> c.11038
UPDATE creature_movement SET script_id = 1103801, textid1 = 0, textid2 = 0, textid3 = 0, textid4 = 0 WHERE id = 54749 AND point = 2;
UPDATE creature_movement SET script_id = 1103802, textid1 = 0, textid2 = 0, textid3 = 0, textid4 = 0 WHERE id = 54749 AND point = 6;
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1103801,1103802); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1103801,1,0,0,0,0,0,0,2000005031,2000005214,2000005228,2000005233,0,0,0,0,''),
(1103802,1,0,0,0,0,0,0,2000005032,2000005215,2000005229,2000005234,0,0,0,0,'');
-- Justin c.1368
UPDATE creature_movement SET script_id = 136801, textid1 = 0 WHERE id = 79815 AND point = 3;
UPDATE creature_movement SET script_id = 136802, textid1 = 0 WHERE id = 79815 AND point = 7;
UPDATE creature_movement SET script_id = 136803, textid1 = 0 WHERE id = 79815 AND point = 10;
UPDATE creature_movement SET script_id = 136804, textid1 = 0 WHERE id = 79815 AND point = 13;
UPDATE creature_movement SET script_id = 136805, textid1 = 0 WHERE id = 79815 AND point = 16;
UPDATE creature_movement SET script_id = 136806, textid1 = 0 WHERE id = 79815 AND point = 18;
UPDATE creature_movement SET script_id = 136807, textid1 = 0 WHERE id = 79815 AND point = 19;
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 136801 AND 136807; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(136801,0,0,0,0,0,0,0,2000005109,0,0,0,0,0,0,0,''),
(136802,0,0,0,0,0,0,0,2000005110,0,0,0,0,0,0,0,''),
(136803,0,0,0,0,0,0,0,2000005111,0,0,0,0,0,0,0,''),
(136804,0,0,0,0,0,0,0,2000005112,0,0,0,0,0,0,0,''),
(136805,0,0,0,0,0,0,0,2000005113,0,0,0,0,0,0,0,''),
(136806,0,0,0,0,0,0,0,2000005114,0,0,0,0,0,0,0,''),
(136807,0,0,0,0,0,0,0,2000005115,0,0,0,0,0,0,0,'');
-- Roman c.1371
UPDATE creature_movement SET script_id = 137101, textid1 = 0 WHERE id = 79816 AND point = 2;
UPDATE creature_movement SET script_id = 137102, textid1 = 0 WHERE id = 79816 AND point = 5;
UPDATE creature_movement SET script_id = 137103, textid1 = 0 WHERE id = 79816 AND point = 8;
UPDATE creature_movement SET script_id = 137104, textid1 = 0 WHERE id = 79816 AND point = 11;
UPDATE creature_movement SET script_id = 137105, textid1 = 0 WHERE id = 79816 AND point = 14;
UPDATE creature_movement SET script_id = 137106, textid1 = 0 WHERE id = 79816 AND point = 17;
UPDATE creature_movement SET script_id = 137107, textid1 = 0 WHERE id = 79816 AND point = 20;
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 137101 AND 137107; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(137101,0,0,0,0,0,0,0,2000005116,0,0,0,0,0,0,0,''),
(137102,0,0,0,0,0,0,0,2000005117,0,0,0,0,0,0,0,''),
(137103,0,0,0,0,0,0,0,2000005118,0,0,0,0,0,0,0,''),
(137104,0,0,0,0,0,0,0,2000005119,0,0,0,0,0,0,0,''),
(137105,0,0,0,0,0,0,0,2000005120,0,0,0,0,0,0,0,''),
(137106,0,0,0,0,0,0,0,2000005121,0,0,0,0,0,0,0,''),
(137107,0,0,0,0,0,0,0,2000005122,0,0,0,0,0,0,0,'');
-- Brandon c.1370
UPDATE creature_movement SET script_id = 137001, textid1 = 0 WHERE id = 79817 AND point = 1;
UPDATE creature_movement SET script_id = 137002, textid1 = 0 WHERE id = 79817 AND point = 4;
UPDATE creature_movement SET script_id = 137003, textid1 = 0 WHERE id = 79817 AND point = 7;
UPDATE creature_movement SET script_id = 137004, textid1 = 0 WHERE id = 79817 AND point = 10;
UPDATE creature_movement SET script_id = 137005, textid1 = 0 WHERE id = 79817 AND point = 13;
UPDATE creature_movement SET script_id = 137006, textid1 = 0 WHERE id = 79817 AND point = 16;
UPDATE creature_movement SET script_id = 137007, textid1 = 0 WHERE id = 79817 AND point = 17;
UPDATE creature_movement SET script_id = 137008, textid1 = 0 WHERE id = 79817 AND point = 19;
UPDATE creature_movement SET script_id = 137009, textid1 = 0 WHERE id = 79817 AND point = 20;
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 137001 AND 137009; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(137001,0,0,0,0,0,0,0,2000005123,0,0,0,0,0,0,0,''),
(137002,0,0,0,0,0,0,0,2000005124,0,0,0,0,0,0,0,''),
(137003,0,0,0,0,0,0,0,2000005125,0,0,0,0,0,0,0,''),
(137004,0,0,0,0,0,0,0,2000005126,0,0,0,0,0,0,0,''),
(137005,0,0,0,0,0,0,0,2000005127,0,0,0,0,0,0,0,''),
(137006,0,0,0,0,0,0,0,2000005128,0,0,0,0,0,0,0,''),
(137007,0,0,0,0,0,0,0,2000005129,0,0,0,0,0,0,0,''),
(137008,0,0,0,0,0,0,0,2000005130,0,0,0,0,0,0,0,''),
(137009,0,0,0,0,0,0,0,2000005131,0,0,0,0,0,0,0,'');
-- Crildor c.5782
UPDATE creature_movement SET waittime = 60000, script_id = 578201, emote = 0 WHERE id = 46816 AND point = 1;
UPDATE creature_movement SET waittime = 60000, script_id = 578201, emote = 0 WHERE id = 46816 AND point = 22;
UPDATE creature_movement SET waittime = 60000, script_id = 578201, emote = 0 WHERE id = 46816 AND point = 53;
DELETE FROM dbscripts_on_creature_movement WHERE id = 578201; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(578201,3,28,1,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_SIT'),
(578201,58,28,0,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_STAND');
-- Flik c.14860
UPDATE creature_movement SET script_id = 1486001, textid1 = 0, textid2 = 0 WHERE id = 56625 AND point = 6;
-- Curator Thorius c.8256
UPDATE creature_movement SET script_id = 825601, emote = 0 WHERE id = 1887 AND point = 15;
UPDATE creature_movement SET script_id = 825602, textid1 = 0 WHERE id = 1887 AND point = 16;
DELETE FROM dbscripts_on_creature_movement WHERE id IN (825601,825602); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(825601,3,1,11,0,0,0,0,0,0,0,0,0,0,0,0,''),
(825602,1,0,0,0,0,0,0,2000005000,0,0,0,0,0,0,0,'');
-- Miss Danna <School Mistress> c.3513
UPDATE creature_movement SET script_id = 351301, textid1 = 0, emote = 0 WHERE id = 84028 AND point = 20;
UPDATE creature_movement SET emote = 0 WHERE id = 84028 AND point = 21;
UPDATE creature_movement SET textid1 = 0, emote = 0 WHERE id = 84028 AND point = 23;
UPDATE creature_movement SET textid1 = 0, emote = 0 WHERE id = 84028 AND point = 24;
UPDATE creature_movement SET textid1 = 0, emote = 0 WHERE id = 84028 AND point = 24;
UPDATE creature_movement SET script_id = 351302, textid1 = 0 WHERE id = 84028 AND point = 38;
UPDATE creature_movement SET script_id = 351303, textid1 = 0 WHERE id = 84028 AND point = 39;
UPDATE creature_movement SET emote = 0 WHERE id = 84028 AND point = 40;
UPDATE creature_movement SET script_id = 351304, textid1 = 0, emote = 0 WHERE id = 84028 AND point = 41;
UPDATE creature_movement SET emote = 0 WHERE id = 84028 AND point = 43;
UPDATE creature_movement SET script_id = 351305, textid1 = 0 WHERE id = 84028 AND point = 57;
UPDATE creature_movement SET script_id = 351306, textid1 = 0 WHERE id = 84028 AND point = 58;
UPDATE creature_movement SET script_id = 351307, textid1 = 0, emote = 0 WHERE id = 84028 AND point = 59;
UPDATE creature_movement SET emote = 0 WHERE id = 84028 AND point = 60;
UPDATE creature_movement SET emote = 0 WHERE id = 84028 AND point = 61;
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 351301 AND 351307; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(351301,2,0,0,0,0,0,0,2000005134,0,0,0,0,0,0,0,''),
(351301,11,1,1,0,0,0,0,0,0,0,0,0,0,0,0,''),
(351301,30,0,0,0,0,0,0,2000005135,0,0,0,0,0,0,0,''),
(351301,40,0,0,0,0,0,0,2000005136,0,0,0,0,0,0,0,''),
(351302,0,0,0,0,0,0,0,2000005137,0,0,0,0,0,0,0,''),
(351303,0,0,0,0,0,0,0,2000005138,0,0,0,0,0,0,0,''),
(351304,1,0,0,0,0,0,0,2000005139,0,0,0,0,0,0,0,''),
(351304,15,1,1,0,0,0,0,0,0,0,0,0,0,0,0,''),
(351305,1,0,0,0,0,0,0,2000005140,0,0,0,0,0,0,0,''),
(351306,1,0,0,0,0,0,0,2000005141,0,0,0,0,0,0,0,''),
(351307,1,0,0,0,0,0,0,2000005142,0,0,0,0,0,0,0,''),
(351307,9,1,1,0,0,0,0,0,0,0,0,0,0,0,0,''),
(351307,17,1,1,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- Jimmy c.3512
UPDATE creature_movement SET script_id = 351201, textid1 = 0, emote = 0 WHERE id = 87082 AND point = 24;
DELETE FROM dbscripts_on_creature_movement WHERE id = 351201; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(351201,1,0,0,0,0,0,0,2000005167,0,0,0,0,0,0,0,'');
UPDATE db_script_string SET emote = 1 WHERE entry = 2000005167;
-- Steven c.3511
UPDATE creature_movement SET script_id = 351101, textid1 = 0 WHERE id = 87089 AND point = 42;
UPDATE creature_movement SET emote = 0 WHERE id = 87089 AND point = 43;
DELETE FROM dbscripts_on_creature_movement WHERE id = 351101; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(351101,9,0,0,0,0,0,0,2000005168,0,0,0,0,0,0,0,'');
UPDATE db_script_string SET emote = 1 WHERE entry IN (2000005134,2000005135,2000005136,2000005139,2000005142,2000005167,2000005168);
-- Shatterspear Troll c.10919
UPDATE creature_movement SET script_id = 1091901, emote = 0 WHERE id = 85375 AND point = 1;
UPDATE creature_movement SET script_id = 1091901, emote = 0 WHERE id = 85375 AND point = 2;
UPDATE creature_movement SET script_id = 1091901, emote = 0 WHERE id = 85378 AND point = 1;
UPDATE creature_movement SET script_id = 1091901, emote = 0 WHERE id = 85378 AND point = 2;
UPDATE creature_movement SET script_id = 1091901, emote = 0 WHERE id = 85379 AND point = 1;
UPDATE creature_movement SET script_id = 1091901, emote = 0 WHERE id = 85379 AND point = 2;
UPDATE creature_movement SET script_id = 1091901, emote = 0 WHERE id = 85380 AND point = 1;
UPDATE creature_movement SET script_id = 1091901, emote = 0 WHERE id = 85380 AND point = 2;
UPDATE creature_movement SET script_id = 1091901, emote = 0 WHERE id = 85529 AND point = 1;
UPDATE creature_movement SET script_id = 1091901, emote = 0 WHERE id = 85529 AND point = 2;
UPDATE creature_movement SET script_id = 1091901, emote = 0 WHERE id = 85530 AND point = 1;
UPDATE creature_movement SET script_id = 1091901, emote = 0 WHERE id = 85530 AND point = 2;
UPDATE creature_movement SET script_id = 1091901, emote = 0 WHERE id = 85545 AND point = 1;
UPDATE creature_movement SET script_id = 1091901, emote = 0 WHERE id = 85545 AND point = 2;
UPDATE creature_movement SET script_id = 1091901, emote = 0 WHERE id = 85546 AND point = 1;
UPDATE creature_movement SET script_id = 1091901, emote = 0 WHERE id = 85546 AND point = 2;
UPDATE creature_movement SET script_id = 1091901, emote = 0 WHERE id = 85547 AND point = 1;
UPDATE creature_movement SET script_id = 1091901, emote = 0 WHERE id = 85547 AND point = 2;
UPDATE creature_movement SET script_id = 1091901, emote = 0 WHERE id = 85548 AND point = 1;
UPDATE creature_movement SET script_id = 1091901, emote = 0 WHERE id = 85548 AND point = 2;
UPDATE creature_movement SET script_id = 1091901, emote = 0 WHERE id = 85549 AND point = 1;
UPDATE creature_movement SET script_id = 1091901, emote = 0 WHERE id = 85549 AND point = 2;
UPDATE creature_movement SET script_id = 1091901, emote = 0 WHERE id = 85550 AND point = 1;
UPDATE creature_movement SET script_id = 1091901, emote = 0 WHERE id = 85550 AND point = 2;
UPDATE creature_movement SET script_id = 1091901, emote = 0 WHERE id = 85551 AND point = 1;
UPDATE creature_movement SET script_id = 1091901, emote = 0 WHERE id = 85551 AND point = 2;
UPDATE creature_movement SET script_id = 1091901, emote = 0 WHERE id = 85552 AND point = 1;
UPDATE creature_movement SET script_id = 1091901, emote = 0 WHERE id = 85552 AND point = 2;
UPDATE creature_movement SET script_id = 1091901, emote = 0 WHERE id = 85553 AND point = 1;
UPDATE creature_movement SET script_id = 1091901, emote = 0 WHERE id = 85553 AND point = 2;
UPDATE creature_movement SET script_id = 1091901, emote = 0 WHERE id = 85554 AND point = 1;
UPDATE creature_movement SET script_id = 1091901, emote = 0 WHERE id = 85554 AND point = 2;
UPDATE creature_movement SET script_id = 1091901, emote = 0 WHERE id = 85555 AND point = 1;
UPDATE creature_movement SET script_id = 1091901, emote = 0 WHERE id = 85555 AND point = 2;
UPDATE creature_movement SET script_id = 1091901, emote = 0 WHERE id = 85561 AND point = 1;
UPDATE creature_movement SET script_id = 1091901, emote = 0 WHERE id = 85561 AND point = 2;
UPDATE creature_movement SET script_id = 1091901, emote = 0 WHERE id = 85562 AND point = 1;
UPDATE creature_movement SET script_id = 1091901, emote = 0 WHERE id = 85562 AND point = 2;
DELETE FROM dbscripts_on_creature_movement WHERE id = 1091901; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1091901,0,1,10,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- Shatterspear Drummer c.11196
UPDATE creature_movement SET script_id = 1119601, emote = 0 WHERE id = 85558 AND point = 1;
UPDATE creature_movement SET script_id = 1119601, emote = 0 WHERE id = 85558 AND point = 3;
UPDATE creature_movement SET script_id = 1119601, emote = 0 WHERE id = 85559 AND point = 1;
UPDATE creature_movement SET waittime = 3500 WHERE id = 85559 AND point = 2;
UPDATE creature_movement SET script_id = 1119601, emote = 0 WHERE id = 85559 AND point = 3;
UPDATE creature_movement SET script_id = 1119601, emote = 0 WHERE id = 85560 AND point = 1;
UPDATE creature_movement SET script_id = 1119601, emote = 0 WHERE id = 85560 AND point = 3;
DELETE FROM dbscripts_on_creature_movement WHERE id = 1119601; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1119601,0,1,36,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- Dockmaster c.6846
UPDATE creature_movement SET script_id = 684601, textid1 = 0 WHERE id = 80737 AND point = 6;
DELETE FROM dbscripts_on_creature_movement WHERE id = 684601; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(684601,1,0,0,0,0,0,0,2000005132,0,0,0,0,0,0,0,'');
UPDATE db_script_string SET emote = 5 WHERE entry = 2000005132;
-- Peon c.14901
DELETE FROM creature_movement WHERE id = 13775;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(13775,1,-629.313,-3161,92.3242,0,1490101,0,0,0,0,0,0,0,0,3.79019,0,0),
(13775,2,-624.911,-3156.44,91.7832,0,0,0,0,0,0,0,0,0,0,0.483361,0,0),
(13775,3,-617.56,-3155.6,91.7512,0,1490102,0,0,0,0,0,0,0,0,0.161653,0,0),
(13775,4,-617.56,-3155.6,91.7512,240000,1490104,0,0,0,0,0,0,0,0,0.161653,0,0),
(13775,5,-625.854,-3158.22,91.9782,0,0,0,0,0,0,0,0,0,0,3.5153,0,0),
(13775,6,-629.313,-3161,92.3242,130000,1490103,0,0,0,0,0,0,0,0,3.79019,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 1490101 AND 1490104; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1490101,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,'RUN ON'),
(1490102,0,25,0,0,0,0,0,0,0,0,0,0,0,0,0,'RUN OFF'),
(1490103,0,20,1,0,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 1:random'),
(1490103,128,20,2,0,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 2:waypoint'),
(1490104,3,1,69,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1490104,235,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- Horde Guard c.3501
UPDATE creature_movement SET script_id = 350101, emote = 0 WHERE id = 19411 AND point = 8;
DELETE FROM dbscripts_on_creature_movement WHERE id = 350101; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(350101,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- Karlee Chaddis c.2330 + Paige Chaddis c.2331 and Gil c.3504
DELETE FROM creature_movement WHERE id = 90439;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(90439,10,-8899.88,815.041,89.3389,0,0,0,0,0,0,0,0,0,0,1.61278,0,0),
(90439,9,-8899.1,801.189,87.6105,2000,0,0,0,0,0,0,0,0,0,0.905926,0,0),
(90439,8,-8906.29,794.423,87.3173,0,0,0,0,0,0,0,0,0,0,1.03552,0,0),
(90439,7,-8907.48,788.261,87.7863,0,0,0,0,0,0,0,0,0,0,2.23875,0,0),
(90439,6,-8883.45,758.191,95.4731,2000,0,0,0,0,0,0,0,0,0,2.48536,0,0),
(90439,5,-8879.54,756.138,96.2687,0,0,0,0,0,0,0,0,0,0,2.91262,0,0),
(90439,4,-8870.51,760.372,96.7027,0,0,0,0,0,0,0,0,0,0,2.45148,0,0),
(90439,3,-8866.15,756.326,97.8264,2000,0,0,0,0,0,0,0,0,0,2.16089,0,0),
(90439,2,-8860.26,747.938,99.9222,0,0,0,0,0,0,0,0,0,0,2.15696,0,0),
(90439,1,-8856.26,741.91,100.666,0,0,0,0,0,0,0,0,0,0,2.15696,0,0),
(90439,11,-8899.09,826.687,92.5864,0,0,0,0,0,0,0,0,0,0,1.612,0,0),
(90439,12,-8905.65,841.38,95.4271,4000,0,0,0,0,0,0,0,0,0,2.0691,0,0),
(90439,13,-8905.3,845.868,95.7969,0,0,0,0,0,0,0,0,0,0,1.25386,0,0),
(90439,14,-8898.15,863.912,96.2546,0,0,0,0,0,0,0,0,0,0,1.15097,0,0),
(90439,15,-8893.39,873.065,98.9773,2000,0,0,0,0,0,0,0,0,0,1.18867,0,0),
(90439,16,-8888.58,889.208,102.944,0,0,0,0,0,0,0,0,0,0,1.23108,0,0),
(90439,17,-8888.8,897.531,105.943,0,0,0,0,0,0,0,0,0,0,1.85783,0,0),
(90439,18,-8896.33,913.303,110.988,2000,0,0,0,0,0,0,0,0,0,2.08559,0,0),
(90439,19,-8904.33,926.304,114.899,0,0,0,0,0,0,0,0,0,0,2.1657,0,0),
(90439,20,-8919.41,948.481,117.337,2000,0,0,0,0,0,0,0,0,0,2.38247,0,0),
(90439,21,-8966.43,954.028,117.362,0,0,0,0,0,0,0,0,0,0,3.01629,0,0),
(90439,22,-8982.42,966.381,116.043,4000,0,0,0,0,0,0,0,0,0,2.73433,0,0),
(90439,23,-8999.42,964.996,116.326,0,0,0,0,0,0,0,0,0,0,3.39643,0,0),
(90439,24,-9012.36,953.626,116.256,2000,0,0,0,0,0,0,0,0,0,4.26115,0,0),
(90439,25,-9008.41,945.283,116.895,0,0,0,0,0,0,0,0,0,0,5.53821,0,0),
(90439,26,-9000.86,940.914,117.094,0,0,0,0,0,0,0,0,0,0,5.82645,0,0),
(90439,27,-8998.38,939.901,117.094,2000,0,0,0,0,0,0,0,0,0,5.91284,0,0),
(90439,28,-8996.34,945.169,117.097,22000,233001,0,0,0,0,0,0,0,0,1.17061,0,0),
(90439,29,-8999.05,940.572,117.096,0,0,0,0,0,0,0,0,0,0,4.25251,0,0),
(90439,30,-9002.62,941.706,117.095,0,0,0,0,0,0,0,0,0,0,2.66993,0,0),
(90439,31,-9012.38,947.61,116.227,2000,0,0,0,0,0,0,0,0,0,2.48301,0,0),
(90439,32,-9012.45,951.694,116.246,0,0,0,0,0,0,0,0,0,0,1.07008,0,0),
(90439,33,-9004.83,961.988,116.276,0,0,0,0,0,0,0,0,0,0,0.834459,0,0),
(90439,34,-8998.64,965.802,116.292,4000,0,0,0,0,0,0,0,0,0,0.086759,0,0),
(90439,35,-8983.94,966.422,116.028,0,0,0,0,0,0,0,0,0,0,0.063197,0,0),
(90439,36,-8980.01,965.284,116.256,0,0,0,0,0,0,0,0,0,0,5.80289,0,0),
(90439,37,-8957.87,953.377,117.299,2000,0,0,0,0,0,0,0,0,0,5.77933,0,0),
(90439,38,-8920.67,947.641,117.337,0,0,0,0,0,0,0,0,0,0,6.1304,0,0),
(90439,39,-8900.95,920.6,113.443,0,0,0,0,0,0,0,0,0,0,5.2806,0,0),
(90439,40,-8894.54,911.478,110.762,2000,0,0,0,0,0,0,0,0,0,0.551718,0,0),
(90439,41,-8877.53,920.808,107.603,0,0,0,0,0,0,0,0,0,0,0.508521,0,0),
(90439,42,-8854.97,933.374,101.999,0,0,0,0,0,0,0,0,0,0,0.508521,0,0),
(90439,43,-8848.88,930.711,102.495,3000,0,0,0,0,0,0,0,0,0,0.572924,0,0),
(90439,44,-8834.61,940.936,105.143,0,0,0,0,0,0,0,0,0,0,0.576851,0,0),
(90439,45,-8818.28,953.205,100.678,0,0,0,0,0,0,0,0,0,0,0.576065,0,0),
(90439,46,-8815.14,952.722,100.867,4000,0,0,0,0,0,0,0,0,0,5.93091,0,0),
(90439,47,-8804.01,942.261,101.241,0,0,0,0,0,0,0,0,0,0,0.612193,0,0),
(90439,48,-8802.37,936.981,101.242,0,0,0,0,0,0,0,0,0,0,5.3827,0,0),
(90439,49,-8777.24,909.299,100.262,3000,0,0,0,0,0,0,0,0,0,5.43768,0,0),
(90439,50,-8766.76,893.892,101.386,0,0,0,0,0,0,0,0,0,0,5.57355,0,0),
(90439,51,-8737.03,892.761,101.221,0,0,0,0,0,0,0,0,0,0,6.22072,0,0),
(90439,52,-8731.93,886.272,101.744,3000,0,0,0,0,0,0,0,0,0,5.39605,0,0),
(90439,53,-8723.13,875.04,102.678,0,0,0,0,0,0,0,0,0,0,5.39605,0,0),
(90439,54,-8712.31,861.661,97.2752,0,0,0,0,0,0,0,0,0,0,5.39605,0,0),
(90439,55,-8712.2,853.618,96.8655,3000,0,0,0,0,0,0,0,0,0,4.39388,0,0),
(90439,56,-8725.87,834.533,96.149,0,0,0,0,0,0,0,0,0,0,4.1614,0,0),
(90439,57,-8726.58,813.587,97.0276,4000,0,0,0,0,0,0,0,0,0,4.89182,0,0),
(90439,58,-8717.15,795.784,97.0391,4000,0,0,0,0,0,0,0,0,0,4.9201,0,0),
(90439,59,-8721.79,782.622,97.8839,0,0,0,0,0,0,0,0,0,0,4.11114,0,0),
(90439,60,-8732.2,766.047,98.0898,0,0,0,0,0,0,0,0,0,0,4.3444,0,0),
(90439,61,-8724.93,751.443,98.2043,2000,0,0,0,0,0,0,0,0,0,5.41804,0,0),
(90439,62,-8713.3,732.548,97.8146,4000,0,0,0,0,0,0,0,0,0,5.42668,0,0),
(90439,63,-8699.05,715.705,97.0168,0,0,0,0,0,0,0,0,0,0,5.42668,0,0),
(90439,64,-8661.63,744.699,96.6531,2000,0,0,0,0,0,0,0,0,0,0.754345,0,0),
(90439,65,-8660.26,765.872,96.6997,0,0,0,0,0,0,0,0,0,0,1.31041,0,0),
(90439,66,-8634.36,787.361,96.6525,2000,0,0,0,0,0,0,0,0,0,0.685231,0,0),
(90439,67,-8632.43,787.372,96.6512,2000,0,0,0,0,0,0,0,0,0,0.394633,0,0),
(90439,68,-8606.16,761.17,96.7387,0,0,0,0,0,0,0,0,0,0,5.49894,0,0),
(90439,69,-8592.08,756.77,96.651,1000,0,0,0,0,0,0,0,0,0,5.91598,0,0),
(90439,70,-8579.7,737.671,96.7114,4000,0,0,0,0,0,0,0,0,0,4.61379,0,0),
(90439,71,-8594.53,717.706,96.6514,0,0,0,0,0,0,0,0,0,0,4.03574,0,0),
(90439,72,-8581.67,697.638,97.0168,0,0,0,0,0,0,0,0,0,0,5.41254,0,0),
(90439,73,-8561.08,673.827,97.0168,2000,0,0,0,0,0,0,0,0,0,0.603542,0,0),
(90439,74,-8536.53,690.079,97.6665,0,0,0,0,0,0,0,0,0,0,5.39731,0,0),
(90439,75,-8528.41,679.123,100.793,0,0,0,0,0,0,0,0,0,0,5.3439,0,0),
(90439,76,-8517.6,662.84,102.123,2000,0,0,0,0,0,0,0,0,0,5.3439,0,0),
(90439,77,-8510.36,651.605,100.292,0,0,0,0,0,0,0,0,0,0,5.24573,0,0),
(90439,78,-8516.68,643.439,100.134,2000,0,0,0,0,0,0,0,0,0,3.75426,0,0),
(90439,79,-8557.25,615.273,102.337,2000,0,0,0,0,0,0,0,0,0,3.42125,0,0),
(90439,80,-8563.65,615.408,102.278,0,0,0,0,0,0,0,0,0,0,3.78646,0,0),
(90439,81,-8583.79,586.194,103.594,0,0,0,0,0,0,0,0,0,0,4.3598,0,0),
(90439,82,-8584.4,560.743,101.871,4000,0,0,0,0,0,0,0,0,0,5.1397,0,0),
(90439,83,-8578.23,543.501,101.782,0,0,0,0,0,0,0,0,0,0,3.81238,0,0),
(90439,84,-8593.35,530.953,105.659,2000,0,0,0,0,0,0,0,0,0,3.80845,0,0),
(90439,85,-8609.85,515.571,103.841,2000,0,0,0,0,0,0,0,0,0,3.97025,0,0),
(90439,86,-8616.86,517.629,103.218,0,0,0,0,0,0,0,0,0,0,2.3162,0,0),
(90439,87,-8657.5,553.006,96.9502,2000,0,0,0,0,0,0,0,0,0,2.64214,0,0),
(90439,88,-8673.57,552.873,97.2864,2000,0,0,0,0,0,0,0,0,0,3.2249,0,0),
(90439,89,-8713.67,519.808,97.1597,0,0,0,0,0,0,0,0,0,0,2.19446,0,0),
(90439,90,-8717.22,524.985,98.1892,0,0,0,0,0,0,0,0,0,0,2.27221,0,0),
(90439,91,-8745.36,557.023,97.6718,2000,0,0,0,0,0,0,0,0,0,2.37371,0,0),
(90439,92,-8745,566.133,97.4006,0,0,0,0,0,0,0,0,0,0,1.01418,0,0),
(90439,93,-8738.14,576.508,97.5043,0,0,0,0,0,0,0,0,0,0,2.44518,0,0),
(90439,94,-8769.94,608.175,97.1405,2000,0,0,0,0,0,0,0,0,0,2.38706,0,0),
(90439,95,-8795.54,589.658,97.4546,4000,0,0,0,0,0,0,0,0,0,2.33208,0,0),
(90439,96,-8832.6,630.401,94.0918,0,0,0,0,0,0,0,0,0,0,2.28496,0,0),
(90439,97,-8851.55,661.112,97.1319,0,0,0,0,0,0,0,0,0,0,0.659181,0,0),
(90439,98,-8824.74,678.622,97.5366,10000,0,0,0,0,0,0,0,0,0,1.97629,0,0),
(90439,99,-8847.34,726.835,97.6974,10000,0,0,0,0,0,0,0,0,0,2.05091,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 233001; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(233001,2,0,0,0,0,0,0,2000005180,0,0,0,0,0,0,0,''),
(233001,7,0,0,0,2331,30,7,2000005183,0,0,0,0,0,0,0,'force buddy to: say text'),
(233001,12,0,0,0,0,0,0,2000005181,0,0,0,0,0,0,0,''),
(233001,15,0,0,0,3504,30,7,2000005184,0,0,0,0,0,0,0,'force buddy to: say text'),
(233001,19,0,0,0,0,0,0,2000005182,0,0,0,0,0,0,0,'');
UPDATE db_script_string SET emote = 1 WHERE entry IN (2000005180,2000005181,2000005182,2000005183,2000005184);
UPDATE creature SET MovementType = 0, spawndist = 0 WHERE guid = 90443; -- Gil c.3504
DELETE FROM creature_movement WHERE id = 90443;
UPDATE creature SET position_x = -8856.097656, position_y = 740.346375, position_z = 100.655151, orientation = 2.094842, MovementType = 0, spawndist = 0  WHERE guid = 90440; -- Paige Chaddis correct spawn point
DELETE FROM creature_movement WHERE id = 90440; -- Paige Chaddis c.2331
DELETE FROM creature_linking_template WHERE entry IN (2331,3504); -- link between 'Karlee Chaddis' with 'Gil + Paige Chaddis'
INSERT INTO creature_linking_template (entry, map, master_entry, flag, search_range) VALUES    
(2331,0,2330,656,20),
(3504,0,2330,656,20);
-- Janey Anship c.1413 -- script redone completly - all randomized texts added ;)
DELETE FROM creature_movement WHERE id = 86596;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(86596,1,-8953.9,862.547,104.957,0,0,0,0,0,0,0,0,0,0,6.10494,0,0),
(86596,2,-8932.12,857.927,100.803,750,0,0,0,0,0,0,0,0,0,6.06331,0,0),
(86596,3,-8909.04,850.187,96.281,0,0,0,0,0,0,0,0,0,0,5.95964,0,0),
(86596,4,-8896.57,865.822,96.8556,0,0,0,0,0,0,0,0,0,0,0.87497,0,0),
(86596,5,-8890.18,881.888,101.184,0,0,0,0,0,0,0,0,0,0,1.19227,0,0),
(86596,6,-8888.17,893.701,104.619,0,141301,0,0,0,0,0,0,0,0,1.40276,0,0), -- Janey Anship
(86596,7,-8894.17,909.79,110.395,0,0,0,0,0,0,0,0,0,0,1.9274,0,0),
(86596,8,-8870.31,923.272,105.91,0,0,0,0,0,0,0,0,0,0,0.503477,0,0),
(86596,9,-8855.94,931.187,101.845,0,0,0,0,0,0,0,0,0,0,0.503477,0,0),
(86596,10,-8843.91,933.491,104.097,500,0,0,0,0,0,0,0,0,0,0.189317,0,0),
(86596,11,-8816.65,953.442,100.743,0,141304,0,0,0,0,0,0,0,0,0.530966,0,0), -- Lisan Pierce
(86596,12,-8767.52,895.508,101.256,0,0,0,0,0,0,0,0,0,0,5.41064,0,0),
(86596,13,-8753.45,892,101.896,0,0,0,0,0,0,0,0,0,0,6.03896,0,0),
(86596,14,-8740.3,893.588,101.375,0,0,0,0,0,0,0,0,0,0,0.120202,0,0),
(86596,15,-8726.64,877.216,102.712,0,0,0,0,0,0,0,0,0,0,5.4075,0,0),
(86596,16,-8711.78,859.391,96.9622,1250,0,0,0,0,0,0,0,0,0,5.4075,0,0),
(86596,17,-8714.17,851.672,96.7801,1250,0,0,0,0,0,0,0,0,0,4.41162,0,0),
(86596,18,-8724.59,835.118,96.1396,0,0,0,0,0,0,0,0,0,0,4.15087,0,0),
(86596,19,-8727.53,820.133,97.0495,0,0,0,0,0,0,0,0,0,0,4.51843,0,0),
(86596,20,-8723.35,807.987,97.2959,0,0,0,0,0,0,0,0,0,0,5.02973,0,0),
(86596,21,-8717.8,795.688,96.9682,0,0,0,0,0,0,0,0,0,0,5.13654,0,0),
(86596,22,-8720.86,784.235,97.7513,0,0,0,0,0,0,0,0,0,0,4.45167,0,0),
(86596,23,-8730.39,769.812,98.1267,750,0,0,0,0,0,0,0,0,0,4.13751,0,0),
(86596,24,-8729.96,761.621,98.2494,0,0,0,0,0,0,0,0,0,0,4.76583,0,0),
(86596,25,-8726.06,753.976,98.2668,0,141306,0,0,0,0,0,0,0,0,5.18366,0,0), -- Suzanne
(86596,26,-8714.42,737.952,97.8087,0,0,0,0,0,0,0,0,0,0,5.34074,0,0),
(86596,27,-8728.74,725.086,101.267,0,0,0,0,0,0,0,0,0,0,3.87362,0,0),
(86596,28,-8738.14,715.533,100.152,500,0,0,0,0,0,0,0,0,0,4.05897,0,0),
(86596,29,-8742.74,709.527,98.3091,0,0,0,0,0,0,0,0,0,0,4.05897,0,0),
(86596,30,-8737.21,700.627,98.6984,0,141302,0,0,0,0,0,0,0,0,5.26849,0,0), --  Janey Anship
(86596,31,-8776.23,670.457,103.093,0,0,0,0,0,0,0,0,0,0,3.83749,0,0),
(86596,32,-8760.45,646.994,103.883,0,0,0,0,0,0,0,0,0,0,5.30462,0,0),
(86596,33,-8759.11,627.771,101.892,0,0,0,0,0,0,0,0,0,0,4.78861,0,0),
(86596,34,-8763.21,616.245,98.6119,0,0,0,0,0,0,0,0,0,0,4.37078,0,0),
(86596,35,-8779.99,602.334,97.3893,0,0,0,0,0,0,0,0,0,0,3.87048,0,0),
(86596,36,-8793.37,590.39,97.5755,500,0,0,0,0,0,0,0,0,0,3.87048,0,0),
(86596,37,-8815.81,615.518,94.9978,0,0,0,0,0,0,0,0,0,0,2.29968,0,0),
(86596,38,-8849.81,659.507,97.1312,0,0,0,0,0,0,0,0,0,0,2.21721,0,0),
(86596,39,-8834.43,672.377,98.2964,0,0,0,0,0,0,0,0,0,0,0.696682,0,0),
(86596,40,-8825.5,677.093,97.6638,0,0,0,0,0,0,0,0,0,0,0.486195,0,0),
(86596,41,-8838.31,708.928,97.6485,500,0,0,0,0,0,0,0,0,0,1.95332,0,0),
(86596,42,-8851.32,736.847,100.505,0,0,0,0,0,0,0,0,0,0,2.00673,0,0),
(86596,43,-8870.66,759.965,96.6871,0,0,0,0,0,0,0,0,0,0,2.26748,0,0),
(86596,44,-8880.96,756.982,96.1098,0,0,0,0,0,0,0,0,0,0,3.42359,0,0),
(86596,45,-8909.67,790.199,87.4738,0,0,0,0,0,0,0,0,0,0,2.27062,0,0),
(86596,46,-8918.12,784.468,87.4199,0,141307,0,0,0,0,0,0,0,0,3.73775,0,0), -- Suzanne
(86596,47,-8930.34,773.156,87.9818,0,0,0,0,0,0,0,0,0,0,3.89482,0,0),
(86596,48,-8961.17,770.851,93.8524,0,0,0,0,0,0,0,0,0,0,3.21624,0,0),
(86596,49,-8980.98,783.189,98.0365,0,0,0,0,0,0,0,0,0,0,2.58478,0,0),
(86596,50,-8990.43,800.731,102.354,0,0,0,0,0,0,0,0,0,0,2.08448,0,0),
(86596,51,-8994.98,823.243,104.806,0,0,0,0,0,0,0,0,0,0,1.77032,0,0),
(86596,52,-8990.49,849.74,105.812,0,0,0,0,0,0,0,0,0,0,1.40276,0,0),
(86596,53,-8992.48,859.067,105.647,12000,0,0,0,0,0,0,0,0,0,5.51011,0,0),
(86596,54,-8992.48,859.067,105.647,12000,0,0,0,0,0,0,0,0,0,5.51011,0,0),
(86596,55,-8992.48,859.067,105.647,12000,141305,0,0,0,0,0,0,0,0,5.51011,0,0), -- Lisan Pierce
(86596,56,-8992.48,859.067,105.647,12000,0,0,0,0,0,0,0,0,0,5.51011,0,0),
(86596,57,-8992.48,859.067,105.647,12000,0,0,0,0,0,0,0,0,0,5.51011,0,0),
(86596,58,-8992.48,859.067,105.647,12000,0,0,0,0,0,0,0,0,0,5.51011,0,0),
(86596,59,-8992.48,859.067,105.647,12000,141303,0,0,0,0,0,0,0,0,5.51011,0,0), -- Janey Anship
(86596,60,-8992.48,859.067,105.647,12000,0,0,0,0,0,0,0,0,0,5.51011,0,0),
(86596,61,-8992.48,859.067,105.647,12000,0,0,0,0,0,0,0,0,0,5.51011,0,0),
(86596,62,-8992.48,859.067,105.647,12000,0,0,0,0,0,0,0,0,0,5.51011,0,0),
(86596,63,-8992.48,859.067,105.647,12000,0,0,0,0,0,0,0,0,0,5.51011,0,0);
UPDATE creature SET MovementType = 0, spawndist = 0 WHERE guid = 86597; -- Lisan Pierce c.1414 
DELETE FROM creature_movement WHERE id = 86597;
UPDATE creature SET MovementType = 0, spawndist = 0 WHERE guid = 89294; -- Suzanne c.1415
DELETE FROM creature_movement WHERE id = 89294;
DELETE FROM creature_linking_template WHERE entry IN (1414,1415); -- link between 'Janey Anship' with 'Lisan Pierce + Suzanne'
INSERT INTO creature_linking_template (entry, map, master_entry, flag, search_range) VALUES    
(1414,0,1413,656,30),
(1415,0,1413,656,30);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 141301 AND 141307; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
-- for Janey Anship
(141301,1,0,0,0,0,0,0,2000005148,2000005149,2000005150,2000005151,0,0,0,0,''),
(141301,4,0,0,0,1414,30,7,2000005156,2000005157,2000005158,2000005159,0,0,0,0,'force buddy to: say text'),
(141301,8,0,0,0,1415,30,7,2000005164,2000005165,2000005166,2000005169,0,0,0,0,'force buddy to: say text'),
(141302,1,0,0,0,0,0,0,2000005152,2000005153,2000005154,2000005155,0,0,0,0,''),
(141302,4,0,0,0,1415,30,7,2000005160,2000005161,2000005162,2000005163,0,0,0,0,'force buddy to: say text'),
(141302,8,0,0,0,1414,30,7,2000005170,2000005171,2000005172,2000005173,0,0,0,0,'force buddy to: say text'),
(141303,1,0,0,0,0,0,0,2000005149,2000005151,2000005153,2000005155,0,0,0,0,''),
(141303,4,0,0,0,1414,30,7,2000005156,2000005158,2000005160,2000005162,0,0,0,0,'force buddy to: say text'),
(141303,8,0,0,0,1415,30,7,2000005164,2000005172,2000005170,2000005166,0,0,0,0,'force buddy to: say text'),
-- for Lisan Pierce
(141304,1,0,0,0,1414,30,7,2000005148,2000005149,2000005150,2000005151,0,0,0,0,'force buddy to: say text'),
(141304,4,0,0,0,0,0,0,2000005156,2000005157,2000005158,2000005159,0,0,0,0,''),
(141304,8,0,0,0,1415,30,7,2000005164,2000005165,2000005166,2000005169,0,0,0,0,'force buddy to: say text'),
(141305,1,0,0,0,1414,30,7,2000005152,2000005153,2000005154,2000005155,0,0,0,0,'force buddy to: say text'),
(141305,4,0,0,0,1415,30,7,2000005160,2000005161,2000005162,2000005163,0,0,0,0,'force buddy to: say text'),
(141305,8,0,0,0,0,0,0,2000005170,2000005171,2000005172,2000005173,0,0,0,0,''),
-- for Suzanne
(141306,1,0,0,0,1415,30,7,2000005152,2000005153,2000005154,2000005155,0,0,0,0,'force buddy to: say text'),
(141306,4,0,0,0,1414,30,7,2000005160,2000005161,2000005162,2000005163,0,0,0,0,'force buddy to: say text'),
(141306,8,0,0,0,0,0,0,2000005170,2000005171,2000005172,2000005173,0,0,0,0,''),
(141307,1,0,0,0,1415,30,7,2000005148,2000005149,2000005150,2000005151,0,0,0,0,'force buddy to: say text'),
(141307,4,0,0,0,0,0,0,2000005156,2000005157,2000005158,2000005159,0,0,0,0,''),
(141307,8,0,0,0,1414,30,7,2000005170,2000005171,2000005172,2000005173,0,0,0,0,'force buddy to: say text');
DELETE FROM db_script_string WHERE entry BETWEEN 2000005148 AND 2000005166; -- already in DB (but we had to sort them correctly + remove duplicates)
INSERT INTO db_script_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8, sound, type, language, emote, comment) VALUES
-- first set
(2000005148,'If we reverse the Essence flows perhaps we can alter the polarity.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(2000005149,'Why can\'t we just shift the array to compensate for the variance in the flux?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(2000005150,'So then the array of magics would cascade into a chain reaction of positively charged energies.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(2000005151,'The magical wards at that sholud be supported enough by the energy flux to certain the entity.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(2000005152,'Maginor says that twisting alternating flows of positive energy actually creates a much more stable flow.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(2000005153,'The portal will shift slightly, at this point if you cast a binding cantrip you will solidify it in place.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(2000005154,'When the positively aligned energies collide with the negatively charged energies, they don\'t negate one another.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(2000005155,'Putting in twelve centers of focus might allow the magical energies to form more solidly, adding the necessary stability.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
-- 2nd set
(2000005156,'I think not, I don\'t need to be blown up again.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(2000005157,'I suppose that could work, if we had twenty people to cast it with.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(2000005158,'But wouldn\'t that mean crossing the streams? Isn\'t that really bad?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(2000005159,'But what if the resulting frequency shift were to send magical feedback up the flows?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(2000005160,'But isn\'t that what caused the initial problems with Adept Syleria\'s magical formula?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(2000005161,'That will unbalance the magical focus, though, and cause a reverse vibration in the ether.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(2000005162,'Wouldn\'t that cause the weave to unravel if not properly anchored before starting the casting?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(2000005163,'The resultant energies could collapse though, and that could cause an energy flux that would give you a migraine for weeks.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
-- 3rd set
(2000005164,'At least we wouldn\'t be around to have to clean it up.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(2000005165,'Wow, all of this for a love potion. Hope he\'s worth it.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(2000005166,'Only if we didn\'t follow the proper initialization procedures.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL);
DELETE FROM db_script_string WHERE entry BETWEEN 2000005169 AND 2000005173; -- already in DB (but we had to sort them correctly + remove duplicates) 
INSERT INTO db_script_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8, sound, type, language, emote, comment) VALUES
(2000005169,'What if we used three focuses in Tyrean pattern? That should solve it.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(2000005170,'Always so negative. The chances of that happening are between zero and none.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(2000005171,'If we use the Surian theory, then yes, but not if we go with the Y\'serian approach.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(2000005172,'But if we stabilize it with an anchor thread at the appropriate energy crux then it should work.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(2000005173,'If we use the appropriate sequence we should be ok. Will just take some serious studying before we start.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL);
DELETE FROM db_script_string WHERE entry BETWEEN 2000005174 AND 2000005179;

-- ---------------
-- Schmoo_fix
-- ---------------

-- Den (ru_mangos.ru) - small corrections to start-orientation
UPDATE battleground_template SET HordeStartO = 0.00391 WHERE id = 2;
UPDATE battleground_template SET AllianceStartO = 3.91992, HordeStartO = 0.88828 WHERE id = 3;
-- stfx - original author Kinzcool (xyz confirmed)
-- Drop stupid ReqSpellCast from a quest
DELETE FROM skinning_loot_template WHERE entry = 12899;
INSERT INTO skinning_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id) VALUES
(12899, 8170, 55, 1, 1, 1, 0),
(12899, 15414, 25, 1, 1, 1, 0),
(12899, 8165, 11, 1, 1, 1, 0),
(12899, 8171, 4, 1, 1, 1, 0);
