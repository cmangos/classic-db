-- Fix gizzletone Caravan Escort Quests
SET @PATH := 11626; -- Escort 2 Waypoints ScriptDev waypoint_path will always use creature entry as pathid.

DELETE FROM waypoint_path_name WHERE PathId IN (@PATH);
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES 
(@PATH, 'Kalimdor (Desolace) - Rigger Gizelton (11626) - npc_rigger_gizelton - Escort Path');

-- Rigger Gizelton escort path, handled from cork gizelton
DELETE FROM waypoint_path WHERE `PathId` = @PATH;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES 
(@PATH,1,-1801.914,2119.0034,63.560505,100,0,0),
(@PATH,2,-1810.7902,2078.3909,63.401627,100,5000,@PATH*100+1),
(@PATH,3,-1816.9923,2054.5361,61.938225,100,0,0),
(@PATH,4,-1822.944,2030.7257,60.685627,100,0,0),
(@PATH,5,-1816.3925,2007.9742,59.560993,100,0,0),
(@PATH,6,-1814.1073,1975.726,59.057068,100,0,0),
(@PATH,7,-1799.5269,1949.4952,61.032635,100,5000,@PATH*100+2),
(@PATH,8,-1790.5145,1934.6228,60.532635,100,0,0),
(@PATH,9,-1764.6362,1920.6259,59.05458,100,0,0),
(@PATH,10,-1741.3418,1917.0265,59.031143,100,0,0),
(@PATH,11,-1716.7275,1914.8219,60.198032,100,0,0),
(@PATH,12,-1692.4161,1897.5751,60.753498,100,0,0),
(@PATH,13,-1683.7384,1865.2205,59.051758,100,5000,@PATH*100+3),
(@PATH,14,-1670.078,1838.1758,59.051758,100,0,0),
(@PATH,15,-1652.9604,1814.2552,59.015537,100,0,0),
(@PATH,16,-1638.2079,1791.6965,59.049915,100,0,0),
(@PATH,17,-1626.2396,1772.372,59.049908,100,0,0),
(@PATH,18,-1612.442,1756.7096,59.049908,100,0,0),
(@PATH,19,-1594.4856,1738.609,59.049908,100,0,0),
(@PATH,20,-1578.2975,1728.3235,59.049915,100,4000,@PATH*100+4),
(@PATH,21,-1578.2975,1728.3235,59.049915,100,5000,0);

-- Movement Scripts
-- Rigger Gizelton Escort
DELETE FROM `dbscripts_on_creature_movement` WHERE id IN (@PATH*100+1, @PATH*100+2, @PATH*100+3, @PATH*100+4);
INSERT INTO dbscripts_on_creature_movement(id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, datafloat, x, y, z, o, speed, condition_id, comments) VALUES
(@PATH*100+1,4000,0,0,0,0,0,11626,20,0,7330,0,0,0,0,0,0,0,0,0,0,'Rigger Gizelton - Say Text'),
(@PATH*100+1,5000,0,10,4677,0,0,0,0,0,0,0,0,0,0,-1815.9644,2080.056,63.950676,0.104719,0,0,'Rigger Gizelton - Spawn Doomwarder'),
(@PATH*100+1,5000,1,10,4684,0,0,0,0,0,0,0,0,0,0,-1823.0282,2063.8467,62.518295,0.62831,0,0,'Rigger Gizelton - Spawn Nether Sorceress'),
(@PATH*100+1,5000,2,10,4676,0,0,0,0,0,0,0,0,0,0,-1812.2859,2056.6333,62.195217,1.937315,0,0,'Rigger Gizelton - Spawn Lesser Infernal'),
-- 2n Wave
(@PATH*100+2,4000,0,0,0,0,0,11626,20,0,7331,0,0,0,0,0,0,0,0,0,0,'Rigger Gizelton - Say Text'),
(@PATH*100+2,5000,0,10,4676,0,0,0,0,0,0,0,0,0,0,-1786.3375,1924.4208,59.727234,3.176499,0,0,'Rigger Gizelton - Spawn Lesser Infernal'),
(@PATH*100+2,5000,1,10,4677,0,0,0,0,0,0,0,0,0,0,-1800.8624,1935.1129,60.744423,1.32645,0,0,'Rigger Gizelton - Spawn Doomwarder'),
(@PATH*100+2,5000,2,10,4684,0,0,0,0,0,0,0,0,0,0,-1783.3813,1942.7648,60.361816,3.455751,0,0,'Rigger Gizelton - Spawn Nether Sorceress'),
-- 3rd wave
(@PATH*100+3,4000,0,0,0,0,0,11626,20,0,7332,0,0,0,0,0,0,0,0,0,0,'Rigger Gizelton - Say Text'),
(@PATH*100+3,5000,0,10,4684,0,0,0,0,0,0,0,0,0,0,-1678.4297,1838.171,59.01009,2.02458,0,0,'Rigger Gizelton - Spawn Lesser Infernal'),
(@PATH*100+3,5000,1,10,4676,0,0,0,0,0,0,0,0,0,0,-1672.9086,1859.5435,59.13584,0.453785,0,0,'Rigger Gizelton - Spawn Kolkar Waylayer'),
(@PATH*100+3,5000,2,10,4677,0,0,0,0,0,0,0,0,0,0,-1692.3892,1860.8142,59.030247,4.62512254,0,0,'Rigger Gizelton - Spawn Doomwarder'),
-- Finnished
(@PATH*100+4,4000,0,0,0,0,0,11626,20,0,7333,0,0,0,0,0,0,0,0,0,0,'Rigger Gizelton - Say Text'),
-- Quest finished - change faction and run mode from group members
(@PATH*100+4, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cork - run on'),
(@PATH*100+4, 0, 0, 25, 1, 0, 0, 11626, 28728, 23, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Rigger - run on'),
(@PATH*100+4, 0, 0, 29, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cork remove questgiver/gossip status'),
(@PATH*100+4, 0, 0, 29, 3, 0, 0, 11626, 28728, 23, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Rigger remove questgiver/gossip status'),
(@PATH*100+4, 0, 0, 25, 1, 0, 0, 11564, 27290, 23, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Kodo1 - run on'),
(@PATH*100+4, 0, 0, 25, 1, 0, 0, 11564, 27289, 23, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Kodo2 - run on'),
(@PATH*100+4, 1000, 0, 22, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cork - restore faction'),
(@PATH*100+4, 1000, 0, 22, 0, 0, 0, 11626, 28728, 23, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Rigger - restore faction'),
(@PATH*100+4, 1000, 0, 22, 0, 0, 0, 11564, 27290, 23, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Kodo1 - restore faction'),
(@PATH*100+4, 1000, 0, 22, 0, 0, 0, 11564, 27289, 23, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Kodo2 - restore faction');

-- On quest start - change faction from all group members and change to walk mode
DELETE FROM dbscripts_on_quest_start WHERE id = 5943;
INSERT INTO `dbscripts_on_quest_start` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `datafloat`, `x`, `y`, `z`, `o`, `speed`, `condition_id`, `comments`) VALUES 
(5943, 1000, 0, 29, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Remove quest and Gossip Flag'),
(5943, 0, 0, 25, 0, 0, 0, 11564, 27290, 23, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Kodo2 - run off'),
(5943, 0, 0, 25, 0, 0, 0, 11564, 27289, 23, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Kodo1 - run off'),
(5943, 0, 0, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Rigger - run off'),
(5943, 0, 0, 25, 0, 0, 0, 11625, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cork - run off'),
-- [2] Object Guid: Full: 0x204CB000200B5A4000006D000028C628 Creature/0 R4908/S109 Map: 1 Entry: 11625 Low: 2672168
-- [2] FactionTemplate: 495
-- [2] Flags: 0
(5943, 0, 0, 22, 495, 33, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Rigger - faction update'),
-- [3] Object Guid: Full: 0x204CB000200B5A8000006D000028C628 Creature/0 R4908/S109 Map: 1 Entry: 11626 Low: 2672168
-- [3] FactionTemplate: 495
-- [3] Flags: 0
(5943, 0, 0, 22, 495, 33, 0, 11625, 60, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cork - faction update'),
-- [1] Object Guid: Full: 0x204CB000200B4B0000006D000228C628 Creature/0 R4908/S109 Map: 1 Entry: 11564 Low: 36226600
-- [1] FactionTemplate: 495
-- [1] Flags: 0
(5943, 0, 0, 22, 495, 33, 0, 11564, 27289, 23, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Kodo1 - faction update'),
(5943, 0, 0, 22, 495, 33, 0, 11564, 27290, 23, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Kodo2 - faction update');