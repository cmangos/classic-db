-- Zandalar Headshrinker 14876
-- moved to Spawn Groups
UPDATE creature SET position_x = -11774.637, position_y = 1267.3743, position_z = 3.0744226, spawndist = 0, MovementType = 0 WHERE guid IN (286,287);

DELETE FROM creature_linking WHERE guid IN (286,287); -- old linking removed
DELETE FROM creature_movement WHERE id IN (286,287); -- moved to formation

-- moved to spawn_groups
DELETE FROM `spawn_group` WHERE id = 19950;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(19950, 'Stranglethorn Vale - Yoyamba Isle - Zandalar Headshrinker 14876 x2 - Patrol - 1', 0, 0, 0, 0x01 | 0x02);

DELETE FROM `spawn_group_spawn` WHERE id = 19950;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(19950, 286, 0),
(19950, 287, 1);

DELETE FROM `spawn_group_formation` WHERE id = 19950;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(19950, 1, 3, 0, 19950, 2, 'Stranglethorn Vale - Yoyamba Isle - Zandalar Headshrinker 14876 x2 - Patrol - 1'); -- linear

DELETE FROM `waypoint_path_name` WHERE PathId = 19950;
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(19950,'Stranglethorn Vale - Yoyamba Isle - Zandalar Headshrinker 14876 x2 - Patrol - 1');

DELETE FROM `waypoint_path` WHERE PathId = 19950;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(19950,1,-11774.637,1267.3743,3.0744226,100,0,0),
(19950,2,-11766.381,1273.7489,3.0735574,100,0,0),
(19950,3,-11747.221,1300.8188,1.4468088,100,0,0),
(19950,4,-11753.728,1292.8273,1.5671902,100,0,0),
(19950,5,-11763.868,1274.4419,2.8422341,100,0,0),
(19950,6,-11772.923,1266.058,3.1430843,100,0,0),
(19950,7,-11791.517,1258.8496,1.3310726,100,0,0),
(19950,8,-11807.458,1242.0519,1.2511787,100,0,0),
(19950,9,-11819.815,1242.7809,1.8224678,100,0,0),
(19950,10,-11830.931,1257.6998,2.0390205,100,0,0),
(19950,11,-11843.817,1287.2958,2.5998282,100,0,0),
(19950,12,-11832.772,1279.2186,1.4429481,100,0,0),
(19950,13,-11824.479,1249.0365,2.5730782,100,0,0),
(19950,14,-11809.935,1243.3855,1.3949776,100,0,0),
(19950,15,-11794.618,1260.1506,1.4565609,100,0,0);

-- DB-SCRIPTS: Process table `dbscripts_on_creature_movement` id 1491001, command 18 has buddy 14912 not found in range 20 of searcher Creature (Entry: 14910 Counter: 312) DBGuid: 312 (data-flags 0), skipping.
DELETE FROM dbscripts_on_creature_movement WHERE id = 1491001 AND delay = 245000; -- Exzhal - Despawn Captured Hakkari Zealot (14912)
DELETE FROM dbscripts_on_creature_death WHERE id IN (14912);
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(14912,0,18,5000,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'despawn Self');

