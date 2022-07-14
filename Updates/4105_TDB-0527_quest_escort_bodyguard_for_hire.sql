-- Fix gizzletone Caravan Escort Quests
SET @PATH := 11625; -- Escort Waypoints ScriptDev waypoint_path will always use creature entry as pathid

DELETE FROM waypoint_path_name WHERE PathId IN (@PATH);
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES 
(@PATH, 'Kalimdor (Desolace) - Cork Gizelton (11625) - npc_cork_gizelton - Escort Path');

-- Movement Scripts
-- Cork Gizelton Escort
DELETE FROM `dbscripts_on_creature_movement` WHERE id IN (@PATH*100+1, @PATH*100+2, @PATH*100+3, @PATH*100+4);
INSERT INTO dbscripts_on_creature_movement(id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, datafloat, x, y, z, o, speed, condition_id, comments) VALUES
(@PATH*100+1,4000,0,0,0,0,0,0,0,0,7310,0,0,0,0,0,0,0,0,0,0,'Cork Gizelton - Say Text'),
(@PATH*100+1,5000,0,10,12976,0,0,0,0,0,0,0,0,0,0,-786.43414,1187.2777,98.96572,5.63741,0,0,'Cork Gizelton - Spawn Kolkar Waylayer'),
(@PATH*100+1,5000,1,10,12976,0,0,0,0,0,0,0,0,0,0,-807.9568,1169.8024,99.49422,1.06465,0,0,'Cork Gizelton - Spawn Kolkar Waylayer'),
(@PATH*100+1,5000,2,10,12977,0,0,0,0,0,0,0,0,0,0,-789.79596,1169.402,98.062645,2.111848,0,0,'Cork Gizelton - Spawn Kolkar Ambusher'),
(@PATH*100+1,5000,3,10,12977,0,0,0,0,0,0,0,0,0,0,-804.4443,1183.9391,99.642975,4.764749,0,0,'Cork Gizelton - Spawn Kolkar Ambusher'),
-- 2n Wave
(@PATH*100+2,4000,0,0,0,0,0,0,0,0,7311,0,0,0,0,0,0,0,0,0,0,'Cork Gizelton - Say Text'),
(@PATH*100+2,5000,0,10,12976,0,0,0,0,0,0,0,0,0,0,-916.6606,1172.8816,94.33801,0.61086,0,0,'Cork Gizelton - Spawn Kolkar Waylayer'),
(@PATH*100+2,5000,1,10,12976,0,0,0,0,0,0,0,0,0,0,-940.566,1172.2662,91.45885,0.541052,0,0,'Cork Gizelton - Spawn Kolkar Waylayer'),
(@PATH*100+2,5000,2,10,12977,0,0,0,0,0,0,0,0,0,0,-910.6737,1188.2268,94.70123,4.04916,0,0,'Cork Gizelton - Spawn Kolkar Ambusher'),
(@PATH*100+2,5000,3,10,12977,0,0,0,0,0,0,0,0,0,0,-930.0268,1189.6418,93.19252,5.3581609,0,0,'Cork Gizelton - Spawn Kolkar Ambusher'),
-- 3rd wave
(@PATH*100+3,4000,0,0,0,0,0,0,0,0,7312,0,0,0,0,0,0,0,0,0,0,'Cork Gizelton - Say Text'),
(@PATH*100+3,5000,0,10,12976,0,0,0,0,0,0,0,0,0,0,-1090.0768,1177.117,89.82303,1.23918,0,0,'Cork Gizelton - Spawn Kolkar Waylayer'),
(@PATH*100+3,5000,1,10,12976,0,0,0,0,0,0,0,0,0,0,-1114.5599,1197.356,89.82304,5.637413,0,0,'Cork Gizelton - Spawn Kolkar Waylayer'),
(@PATH*100+3,5000,2,10,12977,0,0,0,0,0,0,0,0,0,0,-1095.0416,1196.1388,89.82304,3.612831,0,0,'Cork Gizelton - Spawn Kolkar Ambusher'),
(@PATH*100+3,5000,3,10,12977,0,0,0,0,0,0,0,0,0,0,-1108.1927,1181.0596,89.82304,1.012290,0,0,'Cork Gizelton - Spawn Kolkar Ambusher'),
-- Finnished
(@PATH*100+4,4000,0,0,0,0,0,0,0,0,7334,0,0,0,0,0,0,0,0,0,0,'Cork Gizelton - Say Text'),
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

-- Cork Gizelton escort path
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
(@PATH,18,-1243.2097,1211.5519,106.35681,100,4000,@PATH*100+4),
(@PATH,19,-1243.2097,1211.5519,106.35681,100,5000,0);

-- Run and faction change
DELETE FROM dbscripts_on_quest_start WHERE id = 5821;
INSERT INTO `dbscripts_on_quest_start` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `datafloat`, `x`, `y`, `z`, `o`, `speed`, `condition_id`, `comments`) VALUES 
(5821, 1000, 0, 29, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Remove quest and Gossip Flag'),
(5821, 0, 0, 25, 0, 0, 0, 11564, 27290, 23, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Kodo2 - run off'),
(5821, 0, 0, 25, 0, 0, 0, 11564, 27289, 23, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Kodo1 - run off'),
(5821, 0, 0, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Rigger - run off'),
(5821, 0, 0, 25, 0, 0, 0, 11626, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Rigger - run off'),
-- [2] Object Guid: Full: 0x204CB000200B5A4000006D000028C628 Creature/0 R4908/S109 Map: 1 Entry: 11625 Low: 2672168
-- [2] FactionTemplate: 495
-- [2] Flags: 0
(5821, 0, 0, 22, 495, 33, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cork - faction update'),
-- [3] Object Guid: Full: 0x204CB000200B5A8000006D000028C628 Creature/0 R4908/S109 Map: 1 Entry: 11626 Low: 2672168
-- [3] FactionTemplate: 495
-- [3] Flags: 0
(5821, 0, 0, 22, 495, 33, 0, 11626, 60, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Rigger - faction update'),
-- [1] Object Guid: Full: 0x204CB000200B4B0000006D000228C628 Creature/0 R4908/S109 Map: 1 Entry: 11564 Low: 36226600
-- [1] FactionTemplate: 495
-- [1] Flags: 0
(5821, 0, 0, 22, 495, 33, 0, 11564, 27289, 23, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Kodo1 - faction update'),
(5821, 0, 0, 22, 495, 33, 0, 11564, 27290, 23, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Kodo2 - faction update');