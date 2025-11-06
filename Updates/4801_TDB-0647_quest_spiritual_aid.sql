-- QuestEnd script Seeking Spiritual Aid
-- Quest ID: 5158 

-- Old script had problems with entering Water (mmaps)
-- slightly adjust timers and waypoints to sniffed ones

-- Delete OLD script
DELETE FROM dbscripts_on_quest_end WHERE id = 5158;
INSERT INTO `dbscripts_on_quest_end` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(5158, 0, 0, 21, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Islen Waterseer - Set Activeobject'),
-- Use PATH_MOTION_TYPE to ignore mmap
(5158, 0, 1, 20, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Islen Waterseer - Start Waypoints'),
(5158, 0, 2, 29, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Islen Waterseer - Remove NpcFlags');

-- GUID: Full: 0x205660002005C340000158000077F4A0 Creature/0 R5528/S344 Map: 1 Entry: 5901 Low: 7861408
DELETE FROM creature_movement_template WHERE Entry = 5901;
INSERT INTO creature_movement_template (Entry, Point, PositionX, PositionY, PositionZ, Orientation, WaitTime, ScriptId) VALUES
(5901, 1, -1342.7025, -4054.716, 3.77029, 100, 0, 0),
(5901, 2, -1344.1324, -4065.494, -0.67480236, 100, 29000, 590101),
(5901, 3, -1342.6777, -4054.6719, 3.7845263, 100, 0, 0),
(5901, 4, -1343.9987, -4047.967, 5.8027434, 100, 0, 0),
(5901, 5, -1345.1189, -4047.6067, 5.9310274, 4.345870, 1000, 590102);


DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 590101 AND 590103;
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(590101, 1000, 0, 28, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Islen Waterseer - State Kneel'), -- 10:34:37.433
(590101, 1000, 1, 0, 0, 0, 0, 0, 0, 0, 6586, 0, 0, 0, 0, 0, 0, 0, 'Islen Waterseer - Say Text'), -- 10:34:37.533
(590101, 5000, 0, 9, 50658, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Islen Waterseer - Respawn Water Manifestation Effect Object'), -- 10:34:41.437 - 10:34:51.053
(590101, 11000, 0, 10, 11256, 15000, 0, 0, 0, 0, 0, 0, 0, 0, -1344.7212, -4071.927, -0.8289547, 1.50098, 'Islen Waterseer - Spawn Manifestation of Water'), -- 10:34:47.854 -  10:35:02.283
(590101, 16000, 0, 0, 0, 0, 0, 11256, 20, 7, 6607, 0, 0, 0, 0, 0, 0, 0, 'Manifestation of Water - Say Text'), -- 10:34:52.361
(590101, 19000, 0, 15, 18113, 0, 0, 11256, 20, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Manifestation of Water - Cast Spell'),  -- 10:34:55.468
(590101, 25000, 1, 0, 0, 0, 0, 0, 0, 0, 6599, 0, 0, 0, 0, 0, 0, 0, 'Islen Waterseer - Say Text'),  -- 10:35:01.588 
(590101, 28000, 0, 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Islen Waterseer - State Stand'),
-- finish
(590102, 0, 0, 29, 3, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Islen Waterseer - Add NpcFlags'),
(590102, 0, 1, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Islen Waterseer - Idle'),
(590102, 0, 2, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Islen Waterseer - Remove Activeobject');


-- Correct spawn position for Islen Waterseer
UPDATE creature SET position_x = -1345.1189, position_y = -4047.6067, position_z = 5.8841805, orientation = 4.345870018005371093 WHERE guid = 13172 AND id = 5901;


DELETE FROM `gameobject` WHERE `guid` = 50658;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`) VALUES
(50658, 106528, 1, 1, -1344.8529052734375, -4072.302978515625, -0.92216300964355468, 4.468043327331542968, 0, 0, -0.7880105972290039, 0.615661680698394775, -10, -10);
