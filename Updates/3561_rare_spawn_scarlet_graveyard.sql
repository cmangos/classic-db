-- Initial cleanup
DELETE FROM creature WHERE id IN (6488, 6489, 6490, 6547, 4293) AND map=189;
DELETE FROM creature WHERE guid=39888;

SET @CGUID := 1890000; -- creatures
SET @PGUID := 46000; -- pools

INSERT INTO creature (guid, id, map, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, DeathState, MovementType) VALUES
(@CGUID+263, 4308, 189, 1837.76, 1315.02, 19.098, 0.226893, 7200, 7200, 2, 0, 0, 1), -- Unfettered Spirit
(@CGUID+336, 6547, 189, 1757.23, 1146.14, 8.76122, 0.785398, 7200, 7200, 0, 0, 0, 0), -- Suffering Victim
(@CGUID+337, 6547, 189, 1794.24, 1144.93, 8.71928, 5.63741, 7200, 7200, 0, 0, 0, 0), -- Suffering Victim
(@CGUID+338, 4293, 189, 1805.176, 1167.855, 6.820, 0.162434, 7200, 7200, 0, 0, 0, 0), -- Scarlet Scryer
(@CGUID+339, 4293, 189, 1782.416, 1118.755, 7.490, 5.97183, 7200, 7200, 0, 0, 0, 0), -- Scarlet Scryer
(@CGUID+340, 4293, 189, 1759.67, 1146.85, 7.49036, 3.19674, 7200, 7200, 0, 0, 0, 0), -- Scarlet Scryer
(@CGUID+341, 4293, 189, 1788.68, 1145.46, 7.49084, 6.10664, 7200, 7200, 0, 0, 0, 0), -- Scarlet Scryer
(@CGUID+342, 0, 189, 1749.6, 1309.9, 18.525, 3.89208, 86400, 86400, 3, 0, 0, 1), -- Fallen Champion, Azshir the Sleepless, Ironspine
(@CGUID+343, 0, 189, 1837.61, 1314.56, 19.0921, 1.13864, 86400, 86400, 3, 0, 0, 1), -- Fallen Champion, Azshir the Sleepless, Ironspine
(@CGUID+344, 0, 189, 1848.62, 1340.43, 18.631, 4.55218, 86400, 86400, 3, 0, 0, 1), -- Fallen Champion, Azshir the Sleepless, Ironspine
(@CGUID+345, 0, 189, 1755.72, 1347.81, 19.4921, 5.04108, 86400, 86400, 3, 0, 0, 1), -- Fallen Champion, Azshir the Sleepless, Ironspine
(@CGUID+346, 0, 189, 1744.47, 1405.73, 21.7225, 1.34533, 86400, 86400, 3, 0, 0, 1), -- Fallen Champion, Azshir the Sleepless, Ironspine
(@CGUID+347, 0, 189, 1812.3, 1418.14, 8.49211, 5.07929, 86400, 86400, 3, 0, 0, 1); -- Fallen Champion, Azshir the Sleepless, Ironspine

INSERT INTO creature_spawn_entry (guid, entry) SELECT guid, 6488 FROM creature WHERE guid BETWEEN @CGUID+342 AND @CGUID+347; -- Fallen Champion
INSERT INTO creature_spawn_entry (guid, entry) SELECT guid, 6489 FROM creature WHERE guid BETWEEN @CGUID+342 AND @CGUID+347; -- Ironspine
INSERT INTO creature_spawn_entry (guid, entry) SELECT guid, 6490 FROM creature WHERE guid BETWEEN @CGUID+342 AND @CGUID+347; -- Azshir the Sleepless

INSERT INTO pool_creature (guid, pool_entry, chance, description) VALUES
(@CGUID+263, @PGUID+1, 70, 'Scarlet Monastery Graveyard Rare Spawn - (Substitute)'), -- this single spawn indicates that no rare spawn was active
(@CGUID+342, @PGUID+1, 0, 'Scarlet Monastery Graveyard Rare Spawn - Fallen Champion, Ironspine, Azshir the Sleepless (6488,6489,6490)'),
(@CGUID+343, @PGUID+1, 0, 'Scarlet Monastery Graveyard Rare Spawn - Fallen Champion, Ironspine, Azshir the Sleepless (6488,6489,6490)'),
(@CGUID+344, @PGUID+1, 0, 'Scarlet Monastery Graveyard Rare Spawn - Fallen Champion, Ironspine, Azshir the Sleepless (6488,6489,6490)'),
(@CGUID+345, @PGUID+1, 0, 'Scarlet Monastery Graveyard Rare Spawn - Fallen Champion, Ironspine, Azshir the Sleepless (6488,6489,6490)'),
(@CGUID+346, @PGUID+1, 0, 'Scarlet Monastery Graveyard Rare Spawn - Fallen Champion, Ironspine, Azshir the Sleepless (6488,6489,6490)'),
(@CGUID+347, @PGUID+1, 0, 'Scarlet Monastery Graveyard Rare Spawn - Fallen Champion, Ironspine, Azshir the Sleepless (6488,6489,6490)');
