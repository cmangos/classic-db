-- Scripted q.3382 (A Crew Under Fire) in Azshara
-- Thx to @xfurry for tests

-- q.3382 'A Crew Under Fire'
DELETE FROM dbscripts_on_quest_start WHERE id = 3382;
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(3382,0,21,1,0,0,0,0,0,0,0,0,0,0,0,0,'Calia active'),
(3382,1,0,0,0,0,0,0,2000000466,0,0,0,0,0,0,0,''),
(3382,1,22,495,0x01,0,0,0,0,0,0,0,0,0,0,0,'temp faction'),
(3382,2,15,6245,0,8386,35900,7 | 0x10,0,0,0,0,0,0,0,0,''),
(3382,2,15,6245,0,8386,35905,7 | 0x10,0,0,0,0,0,0,0,0,''),
(3382,2,15,6245,0,8386,35906,7 | 0x10,0,0,0,0,0,0,0,0,''),
(3382,2,15,6245,0,8386,35904,7 | 0x10,0,0,0,0,0,0,0,0,''),
(3382,2,15,6245,0,8386,35903,7 | 0x10,0,0,0,0,0,0,0,0,''),
(3382,3,22,495,0x01,8386,35900,7 | 0x10,0,0,0,0,0,0,0,0,'temp faction'),
(3382,3,22,495,0x01,8386,35905,7 | 0x10,0,0,0,0,0,0,0,0,'temp faction'),
(3382,3,22,495,0x01,8386,35906,7 | 0x10,0,0,0,0,0,0,0,0,'temp faction'),
(3382,3,22,495,0x01,8386,35904,7 | 0x10,0,0,0,0,0,0,0,0,'temp faction'),
(3382,3,22,495,0x01,8386,35903,7 | 0x10,0,0,0,0,0,0,0,0,'temp faction'),
(3382,4,22,495,0x01,8381,35890,7 | 0x10,0,0,0,0,0,0,0,0,'temp faction'),
(3382,4,22,495,0x01,8378,35884,7 | 0x10,0,0,0,0,0,0,0,0,'temp faction'),
(3382,4,22,495,0x01,8382,35891,7 | 0x10,0,0,0,0,0,0,0,0,'temp faction'),
(3382,4,22,495,0x01,8382,35891,7 | 0x10,0,0,0,0,0,0,0,0,'temp faction'),
(3382,5,22,495,0x01,8386,35899,7 | 0x10,0,0,0,0,0,0,0,0,'temp faction'),
(3382,5,10,12205,300000,0,0,0,0,0,0,0,2370.83,-5893.06,10.6607,5.45564,'1st wave'),
(3382,6,10,12204,300000,0,0,0,0,0,0,0,2367.58,-5889.81,11.3931,5.36209,'1st wave'),
(3382,6,10,12204,300000,0,0,0,0,0,0,0,2369.53,-5888.84,11.2888,5.23643,'1st wave'),
(3382,6,10,12204,300000,0,0,0,0,0,0,0,2366.15,-5891.65,11.72,5.46812,'1st wave'),
(3382,59,34,317,3382,0,0,0,0,0,0,0,0,0,0,0,'Stop script if player is dead or out of range'),
(3382,59,34,318,3382,0,0,0,0,0,0,0,0,0,0,0,'Stop script if npc is dead'),
(3382,60,10,12204,300000,0,0,0,0,0,0,0,2370.83,-5893.06,10.6607,5.45564,'2nd wave'),
(3382,61,10,12204,300000,0,0,0,0,0,0,0,2367.58,-5889.81,11.3931,5.36209,'2nd wave'),
(3382,61,10,12205,300000,0,0,0,0,0,0,0,2369.53,-5888.84,11.2888,5.23643,'2nd wave'),
(3382,62,10,12204,300000,0,0,0,0,0,0,0,2366.15,-5891.65,11.72,5.46812,'2nd wave'),
(3382,114,34,317,3382,0,0,0,0,0,0,0,0,0,0,0,'Stop script if player is dead or out of range'),
(3382,114,34,318,3382,0,0,0,0,0,0,0,0,0,0,0,'Stop script if npc is dead'),
(3382,115,10,12204,300000,0,0,0,0,0,0,0,2370.83,-5893.06,10.6607,5.45564,'3rd wave'),
(3382,115,10,12205,300000,0,0,0,0,0,0,0,2367.58,-5889.81,11.3931,5.36209,'3rd wave'),
(3382,116,10,12204,300000,0,0,0,0,0,0,0,2369.53,-5888.84,11.2888,5.23643,'3rd wave'),
(3382,116,10,12204,300000,0,0,0,0,0,0,0,2366.15,-5891.65,11.72,5.46812,'3rd wave'),
(3382,169,34,317,3382,0,0,0,0,0,0,0,0,0,0,0,'Stop script if player is dead or out of range'),
(3382,169,34,318,3382,0,0,0,0,0,0,0,0,0,0,0,'Stop script if npc is dead'),
(3382,170,10,12204,300000,0,0,0,0,0,0,0,2370.83,-5893.06,10.6607,5.45564,'4th wave'),
(3382,170,10,12204,300000,0,0,0,0,0,0,0,2367.58,-5889.81,11.3931,5.36209,'4th wave'),
(3382,170,10,12204,300000,0,0,0,0,0,0,0,2369.53,-5888.84,11.2888,5.23643,'4th wave'),
(3382,170,10,12205,300000,0,0,0,0,0,0,0,2366.15,-5891.65,11.72,5.46812,'4th wave'),
(3382,224,34,317,3382,0,0,0,0,0,0,0,0,0,0,0,'Stop script if player is dead or out of range'),
(3382,224,34,318,3382,0,0,0,0,0,0,0,0,0,0,0,'Stop script if npc is dead'),
(3382,225,10,12205,300000,0,0,0,0,0,0,0,2370.83,-5893.06,10.6607,5.45564,'5th wave'),
(3382,226,10,12204,300000,0,0,0,0,0,0,0,2367.58,-5889.81,11.3931,5.36209,'5th wave'),
(3382,226,10,12204,300000,0,0,0,0,0,0,0,2369.53,-5888.84,11.2888,5.23643,'5th wave'),
(3382,227,10,12205,300000,0,0,0,0,0,0,0,2366.15,-5891.65,11.72,5.46812,'5th wave'),
(3382,279,34,317,3382,0,0,0,0,0,0,0,0,0,0,0,'Stop script if player is dead or out of range'),
(3382,279,34,318,3382,0,0,0,0,0,0,0,0,0,0,0,'Stop script if npc is dead'),
(3382,280,10,12205,300000,0,0,0,0,0,0,0,2370.83,-5893.06,10.6607,5.45564,'final wave'),
(3382,281,10,12204,300000,0,0,0,0,0,0,0,2367.58,-5889.81,11.3931,5.36209,'final wave'),
(3382,281,10,12204,300000,0,0,0,0,0,0,0,2369.53,-5888.84,11.2888,5.23643,'final wave'),
(3382,282,10,12205,300000,0,0,0,0,0,0,0,2366.15,-5891.65,11.72,5.46812,'final wave'),
(3382,334,34,317,3382,0,0,0,0,0,0,0,0,0,0,0,'Stop script if player is dead or out of range'),
(3382,334,34,318,3382,0,0,0,0,0,0,0,0,0,0,0,'Stop script if npc is dead'),
(3382,335,7,3382,0,0,0,0,0,0,0,0,0,0,0,0,'quest credit'),
(3382,337,21,0,0,0,0,0,0,0,0,0,0,0,0,0,'Calia unactive');
UPDATE quest_template SET SpecialFlags = 3, StartScript = 3382 WHERE entry = 3382;
DELETE FROM db_script_string WHERE entry = 2000000466;
INSERT INTO db_script_string (entry,content_default,sound,type,language,emote,comment) VALUES
(2000000466,'Stand Prepared! The naga won\'t wait long to press their advantage once they know we\'re alive.',0,0,0,5,'');
-- Spitelash Witch
UPDATE creature_template SET MovementType = 2 WHERE entry = 12205;
DELETE FROM creature_movement_template WHERE entry = 12205;
INSERT INTO creature_movement_template (entry,point,position_x,position_y,position_z,waittime,script_id,orientation,model1,model2) VALUES
(12205,1,2370.83,-5893.06,10.6607,1000,1220501,5.45564,0,0),
(12205,2,2377.23,-5904.07,11.067,0,0,4.84696,0,0),
(12205,3,2378.04,-5915.15,10.7378,0,0,4.5383,0,0),
(12205,4,2374.96,-5932,9.66682,0,0,4.76293,0,0),
(12205,5,2374.06,-5963.62,9.89577,300000,0,4.63726,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 1220501;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1220501,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,'RUN ON');
-- Spitelash Raider
UPDATE creature_template SET MovementType = 2 WHERE entry = 12204;
DELETE FROM creature_movement_template WHERE entry = 12204;
INSERT INTO creature_movement_template (entry,point,position_x,position_y,position_z,waittime,script_id,orientation,model1,model2) VALUES
(12204,1,2370.83,-5893.06,10.6607,1000,1220401,5.45564,0,0),
(12204,2,2379.97,-5904.9,10.7712,0,0,4.45113,0,0),
(12204,3,2376.15,-5924.8,9.84824,0,0,4.53485,0,0),
(12204,4,2373.41,-5962.79,9.70075,300000,0,4.66837,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 1220401;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1220401,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,'RUN ON');
-- Captain Vanessa Beltis
DELETE FROM gossip_menu WHERE entry = 1641;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(1641, 2293, 0, 0),
(1641, 3073, 0, 966);
DELETE FROM conditions WHERE condition_entry = 966;
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(966, 9, 3382, 0);
-- Horizon Scout Crewman
UPDATE creature SET orientation = 2.43043 WHERE guid = 35899;
