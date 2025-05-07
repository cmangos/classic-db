-- ----------------
-- Ashenvale
-- Quest - King of the Foulweald (id 6621) new script 
-- ---------------

SET @CGUID := 180805;
SET @SGGUID := 18002;

-- Pre spawn all possible Enraged Foulweald
-- They have a 2nd respawn Timer as long worldstate is active, but there will never be more then 2 up (spawn_group.maxcount)
DELETE FROM creature WHERE guid BETWEEN @CGUID AND @CGUID+13;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
(@CGUID+0, 12921, 1, 1, 2270.493408203125, -1565.876708984375, 90.13675689697265625, 1.064650893211364746, 2, 2, 0, 2),
(@CGUID+1, 12921, 1, 1, 2275.749267578125, -1555.431396484375, 90.625579833984375, 5.148721218109130859, 2, 2, 0, 2),
(@CGUID+2, 12921, 1, 1, 2260.90869140625, -1580.7568359375, 89.36853790283203125, 3.665191411972045898, 2, 2, 0, 2),
(@CGUID+3, 12921, 1, 1, 2243.82763671875, -1587.831298828125, 87.03466796875, 2.268928050994873046, 2, 2, 0, 2),
(@CGUID+4, 12921, 1, 1, 2221.727783203125, -1586.0975341796875, 86.42975616455078125, 2.600540637969970703, 2, 2, 0, 2),
(@CGUID+5, 12921, 1, 1, 2194.233642578125, -1558.2427978515625, 86.59268951416015625, 6.021385669708251953, 2, 2, 0, 2),
(@CGUID+6, 12921, 1, 1, 2196.8896484375, -1543.912353515625, 87.6859893798828125, 0.209439516067504882, 2, 2, 0, 2),
(@CGUID+7, 12921, 1, 1, 2205.77001953125, -1528.1168212890625, 89.373870849609375, 4.852015495300292968, 2, 2, 0, 2),
(@CGUID+8, 12921, 1, 1, 2218.481689453125, -1522.0848388671875, 90.281982421875, 3.909537553787231445, 2, 2, 0, 2),
(@CGUID+9, 12921, 1, 1, 2247.58056640625, -1517.1844482421875, 89.95192718505859375, 3.490658521652221679, 2, 2, 0, 2),
(@CGUID+10, 12921, 1, 1, 2259.336181640625, -1524.765869140625, 88.920257568359375, 4.433136463165283203, 2, 2, 0, 2),
(@CGUID+11, 12921, 1, 1, 2231.140625, -1518.4185791015625, 90.31430816650390625, 1.448623299598693847, 2, 2, 0, 2),
(@CGUID+12, 12921, 1, 1, 2200.841796875, -1574.2091064453125, 85.82651519775390625, 1.117010712623596191, 2, 2, 0, 2),
-- Chief Murgut
(@CGUID+13, 12918, 1, 1, 2218.931884765625, -1587.732421875, 86.49947357177734375, 0.209439516067504882, 5, 5, 0, 2);

-- It doesnt matter WHERE the Banner gets spawned, they have a fixed waypoint where they run to and then start channeling the spell
DELETE FROM creature_movement WHERE Id BETWEEN @CGUID+0 AND @CGUID+13;
INSERT INTO `creature_movement` (`id`, `point`, `PositionX`, `PositionY`, `PositionZ`, `orientation`, `waittime`, `ScriptId`) VALUES
(@CGUID+0, 1, 2270.4934, -1565.8767, 90.137, 100, 100, 5), 
(@CGUID+0, 2, 2234.4475,-1551.5262,92.35945, 100, 1000, 1292101), 

(@CGUID+1, 1, 2275.7493, -1555.431, 90.62557, 100, 100, 5), 
(@CGUID+1, 2, 2234.4475,-1551.5262,92.35945, 100, 1000, 1292101), 

(@CGUID+2, 1, 2260.9087, -1580.7568, 89.369, 100, 100, 5), 
(@CGUID+2, 2, 2232.727,-1552.8682,92.469055, 100, 1000, 1292101), 

(@CGUID+3, 1, 2243.8276, -1587.831, 87.035, 100, 100, 5), 
(@CGUID+3, 2, 2232.727,-1552.8682,92.469055, 100, 1000, 1292101), 

(@CGUID+4, 1, 2221.727, -1586.0975, 86.4298, 100, 100, 5), 
(@CGUID+4, 2, 2232.71,-1552.8534,92.47665, 100, 1000, 1292101), 

(@CGUID+5, 1, 2194.2336, -1558.2428, 86.593, 100, 100, 5), 
(@CGUID+5, 2, 2230.9243,-1551.9463,92.98309, 100, 1000, 1292101), 

(@CGUID+6, 1, 2196.8896, -1543.912, 87.686, 100, 100, 5), 
(@CGUID+6, 2, 2230.6743,-1550.9974,93.11163, 100, 1000, 1292101), 

(@CGUID+7, 1, 2205.77, -1528.1168, 89.374, 100, 100, 5), 
(@CGUID+7, 2, 2230.6887,-1550.7437,93.12286, 100, 1000, 1292101), 

(@CGUID+8, 1, 2218.4817, -1522.0848, 90.282, 100, 100, 5), 
(@CGUID+8, 2, 2232.2832,-1548.9902,93.12237, 100, 1000, 1292101), 

(@CGUID+9, 1, 2247.581, -1517.184, 89.952, 100, 100, 5), 
(@CGUID+9, 2, 2234.1143,-1549.6089,92.9022, 100, 1000, 1292101), 

(@CGUID+10, 1, 2259.336, -1524.7659, 88.92, 100, 100, 5), 
(@CGUID+10, 2, 2232.531,-1552.0651,92.76308, 100, 1000, 1292101), 

(@CGUID+11, 1, 2231.14, -1518.4186, 90.314, 100, 100, 5), 
(@CGUID+11, 2, 2232.0093,-1547.2911,92.537704, 100, 1000, 1292101), 

(@CGUID+12, 1, 2200.8418, -1574.209, 85.827, 100, 100, 5), 
(@CGUID+12, 2, 2230.9243,-1551.9463,92.98309, 100, 1000, 1292101), 

(@CGUID+13, 1, 2218.932, -1587.7324, 86.4995, 100, 100, 5), 
(@CGUID+13, 2, 2232.6924,-1551.9048,92.78758, 100, 1000, 1291801);


DELETE FROM spawn_group WHERE Id BETWEEN @SGGUID AND @SGGUID+2;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`, `StringId`) VALUES
(@SGGUID+1, 'Ashenvale - King of the Fouldweald - Enraged Foulweald ', 0, 2, @SGGUID+1, 0, 0),
(@SGGUID+2, 'Ashenvale - King of the Fouldweald - Chief Murgut', 0, 1, @SGGUID+2, 0, 0);

DELETE FROM spawn_group_spawn WHERE Id BETWEEN @SGGUID+0 AND @SGGUID+2;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`, `Chance`) VALUES
(@SGGUID+1, @CGUID+0, -1, 0), -- Enraged Foulweald
(@SGGUID+1, @CGUID+1, -1, 0), -- Enraged Foulweald
(@SGGUID+1, @CGUID+2, -1, 0), -- Enraged Foulweald
(@SGGUID+1, @CGUID+3, -1, 0), -- Enraged Foulweald
(@SGGUID+1, @CGUID+4, -1, 0), -- Enraged Foulweald
(@SGGUID+1, @CGUID+5, -1, 0), -- Enraged Foulweald
(@SGGUID+1, @CGUID+6, -1, 0), -- Enraged Foulweald
(@SGGUID+1, @CGUID+7, -1, 0), -- Enraged Foulweald
(@SGGUID+1, @CGUID+8, -1, 0), -- Enraged Foulweald
(@SGGUID+1, @CGUID+9, -1, 0), -- Enraged Foulweald
(@SGGUID+1, @CGUID+10, -1, 0), -- Enraged Foulweald
(@SGGUID+1, @CGUID+11, -1, 0), -- Enraged Foulweald
(@SGGUID+1, @CGUID+12, -1, 0), -- Enraged Foulweald

(@SGGUID+2, @CGUID+13, -1, 0); -- Chief Murgut

DELETE FROM worldstate_name WHERE Id IN (@SGGUID+1, @SGGUID+2);
INSERT INTO `worldstate_name` (`Id`, `Name`) VALUES 
(@SGGUID+1, 'Ashenvale - King of the Fouldweald - Enraged Foulweald'),
(@SGGUID+2, 'Ashenvale - King of the Fouldweald - Chief Murgut');

DELETE FROM `conditions` WHERE `condition_entry` IN (@SGGUID+1, @SGGUID+2);
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`, `comments`) VALUES 
(@SGGUID+1, 42, @SGGUID+1, 1, 1, 0, 0, 'Ashenvale - King of the Fouldweald - Enraged Foulweald'),
(@SGGUID+2, 42, @SGGUID+2, 1, 1, 0, 0, 'Ashenvale - King of the Fouldweald - Chief Murgut');

-- Summon Karang's Banner triggers Event - 6721
DELETE FROM dbscripts_on_event WHERE id = 6721;
INSERT INTO `dbscripts_on_event` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(6721, 0, 0, 21, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'King of the Fouldweald - Karang\'s Banner - Set ActiveObject'),
(6721, 3000, 0, 53, 0, 0, 0, 0, 0, 0, @SGGUID+1, 1, 0, 0, 0, 0, 0, 0, 'King of the Fouldweald - set Enraged Foulweald WorldState to true'),
-- When the Banner gets destroyed from Enraged Foulwealds, worldstate gets changed to 0 again and last mob should not spawn
(6721, 180000, 0, 34, @SGGUID+1, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 'King of the Fouldweald - Terminate Script if Enraged Foulweald WorldState is false'),
(6721, 180001, 1, 53, 0, 0, 0, 0, 0, 0, @SGGUID+1, 0, 0, 0, 0, 0, 0, 0, 'King of the Fouldweald - Deactivate WorldState'),
(6721, 180001, 2, 13, 0, 0, 0, 178205, 100, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'King of the Fouldweald - Acivate Object'),
(6721, 180001, 3, 53, 0, 0, 0, 0, 0, 0, @SGGUID+2, 1, 0, 0, 0, 0, 0, 0, 'King of the Fouldweald - set Chief Murgut WorldState to true');


DELETE FROM dbscripts_on_creature_movement WHERE id IN (1292101, 1291801);
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(1292101, 0, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ashenvale - Enraged Foulweald - Change Movement to Idle'),
(1292101, 0, 1, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ashenvale - Enraged Foulweald - RunMode Off'),
(1292101, 0, 2, 31, 178205, 20, 0, 0, 0, 1024, 0, 0, 0, 0, 0, 0, 0, 0, 'Ashenvale - Enraged Foulweald - Terminate Script when no Karangs Banner found'),
(1292101, 1, 1, 0, 0, 0, 0, 0, 0, 0, 8398, 0, 0, 0, 0, 0, 0, 0, 'Ashenvale - Enraged Foulweald - Cast Destroy Karang\'s Banner'),
(1292101, 1, 2, 15, 20786, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ashenvale - Enraged Foulweald - Cast Destroy Karang\'s Banner'),
-- Chief Murgut
(1291801, 0, 0, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ashenvale - Enraged Foulweald - RunMode Off'),
(1291801, 0, 1, 20, 1, 4, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 'Ashenvale - Enraged Foulweald - Move Random around point');

-- Chief Murgut on Despawn or on Kill set WorldState to false
DELETE FROM dbscripts_on_relay WHERE id = 1291801;
INSERT INTO `dbscripts_on_relay` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(1291801, 0, 0, 53, 0, 0, 0, 0, 0, 0, @SGGUID+2, 0, 0, 0, 0, 0, 0, 0, 'Chief Murgut - set WorldState to false');
