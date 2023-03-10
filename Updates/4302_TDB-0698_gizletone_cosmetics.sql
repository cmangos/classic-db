-- Cosmetic changes for gizletone caravane quests
SET @PATH := 11626;

-- Rigger Gizelton escort path, handled from cork gizelton
DELETE FROM waypoint_path WHERE `PathId` = @PATH;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES 
(@PATH,1,-1801.914,2119.0034,63.560505,100,0,0),
(@PATH,2,-1810.7902,2078.3909,63.401627,100,4000,@PATH*100+1),
(@PATH,3,-1816.9923,2054.5361,61.938225,100,0,0),
(@PATH,4,-1822.944,2030.7257,60.685627,100,0,0),
(@PATH,5,-1816.3925,2007.9742,59.560993,100,0,0),
(@PATH,6,-1814.1073,1975.726,59.057068,100,0,0),
(@PATH,7,-1799.5269,1949.4952,61.032635,100,4000,@PATH*100+2),
(@PATH,8,-1790.5145,1934.6228,60.532635,100,0,0),
(@PATH,9,-1764.6362,1920.6259,59.05458,100,0,0),
(@PATH,10,-1741.3418,1917.0265,59.031143,100,0,0),
(@PATH,11,-1716.7275,1914.8219,60.198032,100,0,0),
(@PATH,12,-1692.4161,1897.5751,60.753498,100,0,0),
(@PATH,13,-1683.7384,1865.2205,59.051758,100,4000,@PATH*100+3),
(@PATH,14,-1670.078,1838.1758,59.051758,100,0,0),
(@PATH,15,-1652.9604,1814.2552,59.015537,100,0,0),
(@PATH,16,-1638.2079,1791.6965,59.049915,100,0,0),
(@PATH,17,-1626.2396,1772.372,59.049908,100,0,0),
(@PATH,18,-1612.442,1756.7096,59.049908,100,0,0),
(@PATH,19,-1594.4856,1738.609,59.049908,100,0,0),
(@PATH,20,-1578.2975,1728.3235,59.049915,100,5000,@PATH*100+4),
(@PATH,21,-1578.2975,1728.3235,59.049915,100,1000,0);

-- Movement Scripts
-- Rigger Gizelton Escort
DELETE FROM `dbscripts_on_creature_movement` WHERE id = @PATH*100+4;
INSERT INTO dbscripts_on_creature_movement(id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, datafloat, x, y, z, o, speed, condition_id, comments) VALUES
-- Finnished
(@PATH*100+4,4000,0,0,0,0,0,11626,20,0,7333,0,0,0,0,0,0,0,0,0,0,'Rigger Gizelton - Say Text'),
-- Quest finished - change faction and run mode from group members
(@PATH*100+4, 2000, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cork - run on'),
(@PATH*100+4, 2000, 0, 25, 1, 0, 0, 11626, 28728, 23, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Rigger - run on'),
(@PATH*100+4, 2000, 0, 29, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cork remove questgiver/gossip status'),
(@PATH*100+4, 2000, 0, 29, 3, 0, 0, 11626, 28728, 23, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Rigger remove questgiver/gossip status'),
(@PATH*100+4, 2000, 0, 25, 1, 0, 0, 11564, 27290, 23, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Kodo1 - run on'),
(@PATH*100+4, 2000, 0, 25, 1, 0, 0, 11564, 27289, 23, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Kodo2 - run on'),
(@PATH*100+4, 1000, 0, 22, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cork - restore faction'),
(@PATH*100+4, 1000, 0, 22, 0, 0, 0, 11626, 28728, 23, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Rigger - restore faction'),
(@PATH*100+4, 1000, 0, 22, 0, 0, 0, 11564, 27290, 23, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Kodo1 - restore faction'),
(@PATH*100+4, 1000, 0, 22, 0, 0, 0, 11564, 27289, 23, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Kodo2 - restore faction');

-- Cork Gizelton Escort
SET @PATH := 11625; 
DELETE FROM `dbscripts_on_creature_movement` WHERE id = @PATH*100+4;
INSERT INTO dbscripts_on_creature_movement(id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, datafloat, x, y, z, o, speed, condition_id, comments) VALUES
-- Finnished
(@PATH*100+4,3000,0,0,0,0,0,0,0,0,7334,0,0,0,0,0,0,0,0,0,0,'Cork Gizelton - Say Text'),
-- Quest finished - change faction and run mode from group members
(@PATH*100+4, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cork - run on'),
(@PATH*100+4, 2000, 0, 25, 1, 0, 0, 11626, 28728, 23, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Rigger - run on'),
(@PATH*100+4, 2000, 0, 29, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cork remove questgiver/gossip status'),
(@PATH*100+4, 2000, 0, 29, 3, 0, 0, 11626, 28728, 23, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Rigger remove questgiver/gossip status'),
(@PATH*100+4, 2000, 0, 25, 1, 0, 0, 11564, 27290, 23, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Kodo1 - run on'),
(@PATH*100+4, 2000, 0, 25, 1, 0, 0, 11564, 27289, 23, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Kodo2 - run on'),
(@PATH*100+4, 2000, 0, 22, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cork - restore faction'),
(@PATH*100+4, 2000, 0, 22, 0, 0, 0, 11626, 28728, 23, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Rigger - restore faction'),
(@PATH*100+4, 2000, 0, 22, 0, 0, 0, 11564, 27290, 23, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Kodo1 - restore faction'),
(@PATH*100+4, 2000, 0, 22, 0, 0, 0, 11564, 27289, 23, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Kodo2 - restore faction');

DELETE FROM waypoint_path WHERE `PathId` = @PATH;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES 
(@PATH,1,-704.3797,1220.9111,90.309364,100,0,0),
(@PATH,2,-721.16693,1212.9861,91.5369,100,0,0),
(@PATH,3,-740.45575,1202.2765,94.277596,100,0,0),
(@PATH,4,-760.05615,1190.1895,97.26354,100,0,0),
(@PATH,5,-789.20953,1177.5332,98.75634,100,5000,@PATH*100+1),
-- First Wave
(@PATH,6,-836.5305,1183.9674,99.751144,100,0,0),
(@PATH,7,-861.55945,1186.5748,98.876144,100,0,0),
(@PATH,8,-896.2703,1183.0945,96.01368,100,0,0),
(@PATH,9,-932.4053,1182.7817,91.809265,100,5000,@PATH*100+2),
-- 2nd Wave
(@PATH,10,-988.54425,1180.0825,89.788155,100,0,0),
(@PATH,11,-1025.0879,1181.4548,89.864685,100,0,0),
(@PATH,12,-1060.4539,1186.5679,89.86469,100,0,0),
(@PATH,13,-1104.6459,1188.3339,89.8647,100,0,0),
(@PATH,14,-1116.9138,1189.4043,89.97874,100,5000,@PATH*100+3),
-- 3rd Wave
(@PATH,15,-1147.3495,1192.0446,91.57926,100,0,0),
(@PATH,16,-1177.8832,1199.1436,95.581436,100,0,0),
(@PATH,17,-1208.9868,1207.3119,100.70928,100,0,0),
-- Quest Finished 
(@PATH,18,-1243.2097,1211.5519,106.35681,100,5000,@PATH*100+4),
(@PATH,19,-1243.2097,1211.5519,106.35681,100,1000,0);

