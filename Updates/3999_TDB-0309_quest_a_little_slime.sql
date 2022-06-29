-- Endscript for Quest A Little Slime Goes a Long Way
DELETE FROM `dbscripts_on_quest_end` WHERE id = '4512';
INSERT INTO dbscripts_on_quest_end(id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, datafloat, x, y, z, o, speed, condition_id, comments) VALUES
(4512,0,1,21,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Laris Geardawdle - Set Active'),
(4512,0,2,29,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Laris Geardawdle - Remove QuestFlags'),
(4512,0,4,20,2,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Laris Geardawdle - Start Waypoints');

UPDATE `quest_template` SET `CompleteScript`='4512' WHERE `entry`='4512';

-- Laris Geardawdle waypoints
SET @PATH := 9616;
DELETE FROM creature_movement_template WHERE `Entry` = @PATH;
INSERT INTO `creature_movement_template` (`Entry`, `PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES 
(@PATH,1, 1,-4691.348,-1316.5197,503.38144,100,1000,961600),
(@PATH,1, 2,-4693.7476,-1310.9523,503.38144,100,0,0),
(@PATH,1, 3,-4692.0693,-1315.1838,503.38144,100,0,0),
(@PATH,1, 4,-4692.6,-1312.6398,503.38144,100,0,0),
(@PATH,1, 5,-4692.6,-1312.6398,503.38144,2.932153224945068359,1000,961601);

DELETE FROM `dbscripts_on_creature_movement` WHERE id IN (961600, 961601);
INSERT INTO dbscripts_on_creature_movement(id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, datafloat, x, y, z, o, speed, condition_id, comments) VALUES
(961600,1000,0,0,0,0,0,0,0,0,5447,0,0,0,0,0,0,0,0,0,0,'Laris Geardawdle - Say Text'),
(961600,1000,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Laris Geardawdle - Emote Talk'),
(961601,0,0,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Laris Geardawdle - Remove WaypointMovement'),
(961601,2000,1,21,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Laris Geardawdle - Remove Active'),
(961601,2000,2,29,2,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Laris Geardawdle - Add QuestFlags');
