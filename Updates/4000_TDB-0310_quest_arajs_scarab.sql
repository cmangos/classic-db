-- Endscript for Quest Arajs Scarab - Alliance
DELETE FROM `dbscripts_on_quest_end` WHERE id = '5803';
INSERT INTO dbscripts_on_quest_end(id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, datafloat, x, y, z, o, speed, condition_id, comments) VALUES
(5803,0,1,21,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Alchemist Arbington - Set Active'),
(5803,0,2,29,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Alchemist Arbington - Remove QuestFlags'),
(5803,0,3,0,0,0,0,0,0,0,7278,0,0,0,0,0,0,0,0,0,0,'Alchemist Arbington - Say Text'),
(5803,0,4,20,2,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Alchemist Arbington - Start Waypoints');

UPDATE `quest_template` SET `CompleteScript`='5803' WHERE `entry`='5803';

-- Alchemist Arbington waypoints
SET @PATH := 11056;
DELETE FROM creature_movement_template WHERE `Entry` = @PATH;
INSERT INTO `creature_movement_template` (`Entry`, `PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`, `Comment`) VALUES 
(@PATH,0,1,966.8047,-1412.9824,69.265816,100,0,0, ''),
(@PATH,0,2,963.66394,-1413.011,67.56177,100,1000,1105600, ''),
(@PATH,0,3,966.5482,-1413.6582,68.88953,100,0,0, 'Pathfinding Issue'),
(@PATH,0,4,966.5482,-1414.6582,68.13953,100,0,0, 'Pathfinding Issue'),
(@PATH,0,5,966.4325,-1416.8053,67.217285,100,0,0, ''),
(@PATH,0,6,965.1352,-1417.8662,66.552734,100,0,0, ''),
(@PATH,0,7,965.1352,-1417.8662,66.552734,4.188790321350097656,1000,1105601, '');

DELETE FROM `dbscripts_on_creature_movement` WHERE id IN (1105600, 1105601);
INSERT INTO dbscripts_on_creature_movement(id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, datafloat, x, y, z, o, speed, condition_id, comments) VALUES
(1105600,0,0,15,9744,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,'Alchemist Arbington - Cast Spell - Jarkals Translation'),
(1105601,0,0,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Alchemist Arbington - Remove WaypointMovement'),
(1105601,2000,0,0,0,0,0,0,0,0,7279,0,0,0,0,0,0,0,0,0,0,'Alchemist Arbington - Say Text'),
(1105601,2000,1,21,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Alchemist Arbington - Remove Active'),
(1105601,2000,2,29,2,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Alchemist Arbington - Add QuestFlags');

-- Endscript for Quest Arajs Scarab - Horde
DELETE FROM `dbscripts_on_quest_end` WHERE id = '5804';
INSERT INTO dbscripts_on_quest_end(id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, datafloat, x, y, z, o, speed, condition_id, comments) VALUES
(5804,0,1,21,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Apothecary Dithers - Set Active'),
(5804,0,2,29,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Apothecary Dithers - Remove QuestFlags'),
(5804,0,3,0,0,0,0,0,0,0,7278,0,0,0,0,0,0,0,0,0,0,'Apothecary Dithers - Say Text'),
(5804,1000,0,15,9744,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,'Apothecary Dithers - Cast Spell - Jarkals Translation'),
(5804,10000,0,0,0,0,0,0,0,0,7279,0,0,0,0,0,0,0,0,0,0,'Apothecary Dithers - Say Text'),
(5804,12000,1,21,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Apothecary Dithers - Remove Active'),
(5804,12000,2,29,2,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Apothecary Dithers - Add QuestFlags');

UPDATE `quest_template` SET `CompleteScript`='5804' WHERE `entry`='5804';
