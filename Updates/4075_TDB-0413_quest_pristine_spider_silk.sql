-- End script for Quest 'Pristine Spider Silk'
DELETE FROM `dbscripts_on_quest_end` WHERE id = '1940';
INSERT INTO dbscripts_on_quest_end(id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, datafloat, x, y, z, o, speed, condition_id, comments) VALUES
(1940,0,0,21,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Wynne Larson - Set Active'),
(1940,0,1,29,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Wynne Larson - Remove QuestFlags'),
(1940,0,2,0,0,0,0,0,0,0,2649,0,0,0,0,0,0,0,0,0,0,'Wynne Larson - Say Text'),
(1940,2000,0,20,2,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Wynne Larson - Start Movement');

DELETE FROM `dbscripts_on_creature_movement` WHERE id IN (194001, 194002);
INSERT INTO dbscripts_on_creature_movement(id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, datafloat, x, y, z, o, speed, condition_id, comments) VALUES
(194001,0,0,1,133,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Wynne Larson - Emote State'),
(194001,3000,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Wynne Larson - Emote State'),
(194001,3000,1,0,0,0,0,0,0,0,2651,0,0,0,0,0,0,0,0,0,0,'Wynne Larson - Say Text'),
(194001,3000,2,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Wynne Larson - Emote talk'),
(194002,1000,0,1,133,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Wynne Larson - Emote State'),
(194002,1000,1,0,0,0,0,0,0,0,2650,0,0,0,0,0,0,0,0,0,0,'Wynne Larson - Say Text'),
(194002,5000,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Wynne Larson - Emote State'),
(194002,6000,0,1,71,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Wynne Larson - Emote OneShotCheerNoSheathe'),
(194002,6000,1,0,0,0,0,0,0,0,2648,0,0,0,0,0,0,0,0,0,0,'Wynne Larson - Say Text'),
(194002,7000,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Wynne Larson - Set Run'),
(194003,1000,0,25,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Wynne Larson - Set Walk'),
(194003,1000,1,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Wynne Larson - Change Movement'),
(194003,1000,2,21,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Wynne Larson - Remove Active'),
(194003,1000,3,29,2,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Wynne Larson - Add QuestFlags');

UPDATE `quest_template` SET `CompleteScript`='1940' WHERE `entry`='1940';

-- Wynne Larso Waypoints
SET @PATH := 1309;
DELETE FROM creature_movement_template WHERE `Entry` = @PATH;
INSERT INTO `creature_movement_template` (`Entry`, `PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`, `Comment`) VALUES
(@PATH,1,1,-8964.726,824.7132,109.59288,100,1000,0, 'Custom - Pathfinding issue'), 
(@PATH,1,2,-8964.726,824.7132,109.59288,3.857177,3000,194001, 'Custom - Pathfinding issue'),
(@PATH,1,3,-8960.203,818.88196,109.59288,100,0,0, 'Custom - Pathfinding issue'),
(@PATH,1,4,-8958.916, 816.926, 109.446,100,1000,0, 'Custom - Pathfinding issue'),
(@PATH,1,5,-8958.916, 816.926, 109.446,3.804817,10000,194002, 'Custom - Pathfinding issue'),
(@PATH,1,6,-8962.3916, 823.182, 109.446, 100, 0, 0, 'Custom - Pathfinding issue'),
(@PATH,1,7,-8963.137, 822.567, 109.445, 100, 0, 0, 'Custom - Pathfinding issue'),
(@PATH,1,8,-8963.137, 822.567, 109.445,3.700098,1000,194003, 'Custom - Pathfinding issue');
