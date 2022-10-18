-- Random DB Errors fixed

-- DB-SCRIPTS: Process table `dbscripts_on_creature_movement` id 150101, command 26 has buddy 1736 not found in range 20 of searcher Creature (Entry: 1502 Counter: 41905) DBGuid: 41905 (data-flags 1), skipping.
-- DB-SCRIPTS: Process table `dbscripts_on_creature_movement` id 150201, command 26 source can not attack (Attacker: Creature (Entry: 1736 Counter: 28711) DBGuid: 28711, Target: Creature (Entry: 1502 Counter: 44808) DBGuid: 44808)
DELETE FROM dbscripts_on_creature_movement WHERE id IN (150101,150201);
INSERT INTO dbscripts_on_creature_movement (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(150101,1,22,634,1,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(150101,2,31,1736,40,0,0,0,0,0,0,0,0,0,0,0,0,'search for 1736'),
(150101,100,26,0,0,0,1736,40,1,0,0,0,0,0,0,0,0,''),
(150201,1,22,21,1,0,0,0,0x04,0,0,0,0,0,0,0,0,'W.Ghuol - Faction change'),
(150201,2,31,1736,40,0,0,0,0,0,0,0,0,0,0,0,0,'W.Ghuol - search for 1736'),
(150201,100,26,1,0,0,1736,40,1,0,0,0,0,0,0,0,0,'W.Ghuol - Attack on Guards');

-- DB-SCRIPTS: Process table `dbscripts_on_creature_movement` id 1066601, command 40 has buddy 175566 not found in range 5 of searcher Creature (Entry: 10666 Counter: 28413) DBGuid: 28413 (data-flags 1), skipping.
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1066601);
INSERT INTO dbscripts_on_creature_movement (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(1066601,1,31,175566,40,0,0,0,1025,0,0,0,0,0,0,0,0,'Gordo - Terminate Script if go.entry 175566 not found in 40 range'),
(1066601,9,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Gordo - active'),
(1066601,10,32,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'Gordo - Set Pause Waypoints'),
(1066601,11,36,0,0,0,175566,40,1025,0,0,0,0,0,0,0,0,'Gordo - Face go.entry 175566'),
(1066601,1000,16,6273,2,0,0,0,0,0,0,0,0,0,0,0,0,'Gordo - Play Sound'),
(1066601,2000,37,0,0,0,175566,40,1025,2,0,0,0,0,0,0,3,'Gordo - Run to Gloom Weed go.entry 175566'),
(1066601,7000,45,9998,0,0,0,0,0,0,0,0,0,0,0,0,0,'Gordo - Start Relay Script'), -- make sure object is still there... use relay instead
(1066601,9000,32,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Gordo - Set Unpause Waypoints'),
(1066601,9001,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Gordo - unactive');

DELETE FROM dbscripts_on_relay WHERE id IN (9998);
INSERT INTO dbscripts_on_relay (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(9998,1,31,175566,40,0,0,0,1025,0,0,0,0,0,0,0,0,'Gordo - Terminate Script if go.entry 175566 not found in 40 range'),
(9998,10,1,36,0,0,0,0,0,0,0,0,0,0,0,0,0,'Gordo - EMOTE_ONESHOT_ATTACK1H'),
(9998,11,0,0,0,0,0,0,0,6893,0,0,0,0,0,0,0,'Gordo - Text'),
(9998,100,40,0,0,0,175566,5,1,0,0,0,0,0,0,0,0,'Gordo - Despawn Gloom Weed');

-- DB-SCRIPTS: Process table `dbscripts_on_creature_movement` id 1067602, command 35 has buddy 10682 not found in range 20 of searcher Creature (Entry: 10676 Counter: 9010456) DBGuid: 3254 (data-flags 7), skipping.
UPDATE `dbscripts_on_creature_movement` SET `priority` = 1 WHERE `id` = 1067602 AND `delay` IN (0,60000) AND `command` = 35;
DELETE FROM `dbscripts_on_creature_movement` WHERE `id` = 1067602 AND `delay` IN (0,60000) AND `command` = 31;
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(1067602,0,0,31,10682,20,0,0,0,0,0,0,0,0,0,0,0,0,'Raider Jhash (10676) - search for 10682'),
(1067602,60000,0,31,10682,20,0,0,0,0,0,0,0,0,0,0,0,0,'Raider Jhash (10676) - search for 10682');

-- DB-SCRIPTS: Process table `dbscripts_on_creature_movement` id 1067603, command 1 has buddy 10682 not found in range 20 of searcher Creature (Entry: 10676 Counter: 9010456) DBGuid: 3254 (data-flags 7), skipping.
UPDATE `dbscripts_on_creature_movement` SET `priority` = 1 WHERE `id` = 1067603 AND `delay` = 1000 AND `command` = 1 AND `buddy_entry` = 0;
UPDATE `dbscripts_on_creature_movement` SET `priority` = 2 WHERE `id` = 1067603 AND `delay` = 1000 AND `command` = 1 AND `buddy_entry` = 10682;
DELETE FROM `dbscripts_on_creature_movement` WHERE `id` = 1067602 AND `delay` = 1000 AND `command` = 31;
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(1067603,1000,0,31,10682,20,0,0,0,0,0,0,0,0,0,0,0,0,'Raider Jhash (10676) - search for 10682');

