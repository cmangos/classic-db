-- Script and path for quest id 1713 (The Summoning)
-- Based on classic-db data and on this PR: https://github.com/cmangos/mangos-tbc/pull/154

UPDATE quest_template SET StartScript=1713 WHERE entry=1713;

DELETE FROM creature_movement_template WHERE entry=6176;
INSERT INTO `creature_movement_template` (`entry`,`pathId`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`textid1`,`textid2`,`textid3`,`textid4`,`textid5`,`emote`,`spell`,`orientation`,`model1`,`model2`) VALUES 
(6176,0,1,250.84,-1470.58,55.4491,1000,617601,0,0,0,0,0,0,0,100,0,0),
(6176,0,2,253.05,-1459.09,52.09,2000,0,0,0,0,0,0,0,0,100,0,0),
(6176,0,3,256.87,-1440.35,50.09,0,0,0,0,0,0,0,0,0,100,0,0),
(6176,0,4,273.74,-1433.18,50.29,0,0,0,0,0,0,0,0,0,100,0,0),
(6176,0,5,297.77,-1436.7,46.96,0,0,0,0,0,0,0,0,0,100,0,0),
(6176,0,6,329.59,-1442.08,40.31,0,0,0,0,0,0,0,0,0,100,0,0),
(6176,0,7,332.73,-1455.6,42.24,2000,6,0,0,0,0,0,0,0,100,0,0),
(6176,0,8,323.83,-1468.92,42.24,14000,617602,0,0,0,0,0,0,0,100,0,0),
(6176,0,9,332.73,-1455.6,42.24,0,0,0,0,0,0,0,0,0,100,0,0),
(6176,0,10,329.59,-1442.08,40.31,0,0,0,0,0,0,0,0,0,100,0,0),
(6176,0,11,297.77,-1436.7,46.96,0,0,0,0,0,0,0,0,0,100,0,0),
(6176,0,12,273.74,-1433.18,50.29,0,0,0,0,0,0,0,0,0,100,0,0),
(6176,0,13,256.87,-1440.35,50.09,0,0,0,0,0,0,0,0,0,100,0,0),
(6176,0,14,253.05,-1459.09,52.09,0,6,0,0,0,0,0,0,0,100,0,0);

DELETE FROM `dbscripts_on_creature_movement` WHERE `id` IN(617601,617602,617608);
INSERT INTO `dbscripts_on_creature_movement` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(617601,0,32,1,0,0,0,0,0,0,0,0,0,'Bath''rah the Windwatcher - Pause Waypoints',0,0,0,0),
(617601,1,29,2,1,0,0,0,0,0,0,0,0,'Bath''rah the Windwatcher - Add NPCFlags',0,0,0,0),
(617601,1,3,0,0,0,0,0,0,0,0,0,0,'Bath''rah the Windwatcher - Set orientation',0,0,0,1.39626),

(617602,1,3,0,0,0,0,0,0,0,0,0,0,'Bath''rah the Windwatcher - Set orientation',0,0,0,5.85258532),
(617602,2,0,0,0,0,2000005521,0,0,0,0,0,0,'Bath''rah the Windwatcher - %s begins a spell of summoning...',0,0,0,0),
(617602,2,15,8606,0,0,0,0,0,0,0,0,0,'Bath''rah the Windwatcher - Cast Summon Cyclonian',0,0,0,0),
(617602,10,25,1,0,0,0,0,0,0,0,0,0,'Bath''rah the Windwatcher - Set Run On',0,0,0,0);

DELETE FROM `dbscripts_on_quest_start` WHERE `id`=1713;
INSERT INTO `dbscripts_on_quest_start` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(1713,0,32,0,0,0,0,0,0,0,0,0,0,'Bath''rah the Windwatcher - Resume Waypoints',0,0,0,0),
(1713,0,25,1,0,0,0,0,0,0,0,0,0,'Bath''rah the Windwatcher - Set Run On',0,0,0,0),
(1713,1,0,0,0,0,2000005522,0,0,0,0,0,0,'Bath''rah the Windwatcher - Follow, $N. I will soon begin the summoning...',0,0,0,0),
(1713,1,29,2,2,0,0,0,0,0,0,0,0,'Bath''rah the Windwatcher - Remove NPCFlags',0,0,0,0);

DELETE FROM `dbscripts_on_event` WHERE `id`=1370; -- Delete the event script. Summoning is done in core
-- INSERT INTO `dbscripts_on_event` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
-- (1370,0,10,6239,300000,0,0,0,0,0,0,0,0,'Summon Cyclonian',332.821,-1473.05,42.2658,3.99963);

DELETE FROM `db_script_string` WHERE `entry` IN(2000005521,2000005522);
INSERT INTO `db_script_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) VALUES 
(2000005521, '%s begins a spell of summoning...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, 0, 0, NULL),
(2000005522, 'Follow, $N. I will soon begin the summoning...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL);

DELETE FROM spell_target_position WHERE id=8606;
INSERT INTO spell_target_position (id,target_map,target_position_x,target_position_y,target_position_z,target_orientation) VALUES
(8606,0,325.8,-1481.47,42.68,0.47);