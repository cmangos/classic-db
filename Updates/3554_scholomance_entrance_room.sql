
-- Cleanup previous implementation
SET @GUID := 154673;
SET @POOL  := 25493;

DELETE FROM creature WHERE guid BETWEEN @GUID + 1 AND @GUID + 41;
DELETE FROM pool_creature WHERE guid BETWEEN @GUID + 1 AND @GUID + 41;
DELETE FROM pool_template WHERE entry BETWEEN @POOL + 1 AND @POOL + 8;

SET @CGUID := 2890000; -- creatures

DELETE FROM creature_movement_template WHERE entry=11551;
INSERT INTO creature_movement_template (entry, pathId, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
-- Necrofiend 11551 - DoRespawnEntranceRoom()
(11551, 0, 1, 206.34576, 80.71886, 104.24367, 100, 0, 0),
(11551, 0, 2, 221.18945, 86.518196, 104.71484, 100, 0, 0),
(11551, 0, 3, 207.38437, 91.59038, 104.24367, 100, 0, 0),
(11551, 0, 4, 199.815, 104.76532, 104.71487, 100, 0, 0),
(11551, 0, 5, 192.9527, 90.72162, 104.24368, 100, 0, 0),
(11551, 0, 6, 178.8029, 86.62103, 104.716156, 100, 0, 0),
(11551, 0, 7, 192.99811, 81.023056, 104.24368, 100, 0, 0),
(11551, 0, 8, 199.44392, 69.74783, 104.716034, 100, 0, 0);

INSERT INTO creature_spawn_entry (guid, entry) VALUES
(@CGUID+215, 10481), (@CGUID+215, 10495), -- Reanimated Corpse, Diseased Ghoul
(@CGUID+216, 10481), (@CGUID+216, 10495), -- Reanimated Corpse, Diseased Ghoul
(@CGUID+217, 10481), (@CGUID+217, 10495), -- Reanimated Corpse, Diseased Ghoul
(@CGUID+218, 10481), (@CGUID+218, 10495), -- Reanimated Corpse, Diseased Ghoul
(@CGUID+219, 10481), (@CGUID+219, 10495), -- Reanimated Corpse, Diseased Ghoul
(@CGUID+220, 10481), (@CGUID+220, 10495), -- Reanimated Corpse, Diseased Ghoul
(@CGUID+221, 10481), (@CGUID+221, 10495), -- Reanimated Corpse, Diseased Ghoul
(@CGUID+222, 10481), (@CGUID+222, 10495); -- Reanimated Corpse, Diseased Ghoul

INSERT INTO creature (guid, id, map, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, DeathState, MovementType) VALUES
(@CGUID+215, 0, 289, 191.343, 83.4603, 104.327, 0, 7200, 7200, 3, 0, 0, 1), -- creature_spawn_entry
(@CGUID+216, 0, 289, 211.313, 88.8732, 104.327, 0, 7200, 7200, 3, 0, 0, 1), -- creature_spawn_entry
(@CGUID+217, 0, 289, 179.126, 94.6681, 104.8, 0, 7200, 7200, 3, 0, 0, 1), -- creature_spawn_entry
(@CGUID+218, 0, 289, 185.034, 80.1398, 104.799, 0, 7200, 7200, 3, 0, 0, 1), -- creature_spawn_entry
(@CGUID+219, 0, 289, 215.996, 91.7486, 104.798, 0, 7200, 7200, 3, 0, 0, 1), -- creature_spawn_entry
(@CGUID+220, 0, 289, 196.721, 91.9017, 104.327, 0, 7200, 7200, 3, 0, 0, 1), -- creature_spawn_entry
(@CGUID+221, 0, 289, 222.002, 82.2615, 104.798, 0, 7200, 7200, 3, 0, 0, 1), -- creature_spawn_entry
(@CGUID+222, 0, 289, 197.559, 79.5891, 104.327, 0, 7200, 7200, 3, 0, 0, 1), -- creature_spawn_entry
(@CGUID+253, 10485, 289, 187.034, 86.5012, 104.798, 0, 7200, 7200, 3, 0, 0, 1), -- Risen Aberration
(@CGUID+254, 10485, 289, 195.23, 85.8773, 104.327, 0, 7200, 7200, 3, 0, 0, 1), -- Risen Aberration
(@CGUID+255, 10485, 289, 217.701, 86.1711, 104.798, 0, 7200, 7200, 3, 0, 0, 1), -- Risen Aberration
(@CGUID+256, 10485, 289, 211.762, 82.7032, 104.327, 0, 7200, 7200, 3, 0, 0, 1), -- Risen Aberration
(@CGUID+257, 10485, 289, 182.377, 97.8408, 104.799, 0, 7200, 7200, 3, 0, 0, 1), -- Risen Aberration
(@CGUID+258, 10485, 289, 180.356, 102.901, 104.798, 0, 7200, 7200, 3, 0, 0, 1), -- Risen Aberration
(@CGUID+259, 10485, 289, 185.796, 74.2217, 104.799, 0, 7200, 7200, 3, 0, 0, 1), -- Risen Aberration
(@CGUID+260, 10485, 289, 179.384, 83.667, 104.8, 0, 7200, 7200, 3, 0, 0, 1), -- Risen Aberration
(@CGUID+261, 10485, 289, 221.956, 103.89, 104.798, 0, 7200, 7200, 3, 0, 0, 1), -- Risen Aberration
(@CGUID+262, 10485, 289, 221.917, 96.4046, 104.798, 0, 7200, 7200, 3, 0, 0, 1), -- Risen Aberration
(@CGUID+263, 10485, 289, 203.038, 98.6992, 104.798, 0, 7200, 7200, 3, 0, 0, 1), -- Risen Aberration
(@CGUID+264, 10485, 289, 204.37, 92.5006, 104.327, 0, 7200, 7200, 3, 0, 0, 1), -- Risen Aberration
(@CGUID+265, 10485, 289, 214.38, 73.1017, 104.798, 0, 7200, 7200, 3, 0, 0, 1), -- Risen Aberration
(@CGUID+266, 10485, 289, 220.372, 73.5207, 104.798, 0, 7200, 7200, 3, 0, 0, 1), -- Risen Aberration
(@CGUID+267, 10485, 289, 204.191, 73.0652, 104.798, 0, 7200, 7200, 3, 0, 0, 1), -- Risen Aberration
(@CGUID+268, 10485, 289, 198.144, 73.889, 104.666, 0, 7200, 7200, 3, 0, 0, 1), -- Risen Aberration
(@CGUID+320, 10495, 289, 191.688, 90.8574, 104.327, 0, 7200, 7200, 3, 0, 0, 1), -- Diseased Ghoul
(@CGUID+321, 10495, 289, 206.582, 85.9061, 104.327, 0, 7200, 7200, 3, 0, 0, 1), -- Diseased Ghoul
(@CGUID+322, 10495, 289, 187.086, 92.537, 104.767, 0, 7200, 7200, 3, 0, 0, 1), -- Diseased Ghoul
(@CGUID+323, 10495, 289, 179.885, 73.8904, 104.799, 0, 7200, 7200, 3, 0, 0, 1), -- Diseased Ghoul
(@CGUID+324, 10495, 289, 217.536, 99.4131, 104.798, 0, 7200, 7200, 3, 0, 0, 1), -- Diseased Ghoul
(@CGUID+325, 10495, 289, 197.118, 98.0816, 104.798, 0, 7200, 7200, 3, 0, 0, 1), -- Diseased Ghoul
(@CGUID+326, 10495, 289, 215.633, 79.811, 104.798, 0, 7200, 7200, 3, 0, 0, 1), -- Diseased Ghoul
(@CGUID+327, 10495, 289, 203.869, 80.8282, 104.327, 0, 7200, 7200, 3, 0, 0, 1), -- Diseased Ghoul
(@CGUID+388, 11551, 289, 247.555, 91.3432, 110.055, 3.16881, 7200, 7200, 0, 0, 0, 2), -- Necrofiend
(@CGUID+389, 11551, 289, 219.244, 134.258, 109.723, 6.26573, 7200, 7200, 0, 0, 0, 2), -- Necrofiend
(@CGUID+390, 11551, 289, 209.233, 73.2819, 104.798, 0, 7200, 7200, 0, 0, 0, 2); -- Necrofiend

INSERT INTO creature_movement (id, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(@CGUID+388, 1, 243.921, 92.1077, 109.971, 0, 0, 0),
(@CGUID+388, 2, 254.42, 92.2562, 109.971, 0, 0, 0),
(@CGUID+388, 3, 280.927, 92.7659, 109.973, 0, 0, 0),
(@CGUID+388, 4, 260.804, 91.6421, 109.971, 0, 0, 0),
(@CGUID+389, 1, 220.078, 134.415, 109.64, 0, 0, 0),
(@CGUID+389, 2, 219.736, 157.385, 109.64, 0, 0, 0),
(@CGUID+389, 3, 192.929, 165.39, 109.795, 0, 0, 0),
(@CGUID+389, 4, 181.261, 150.711, 109.599, 0, 0, 0),
(@CGUID+389, 5, 203.98, 134.359, 109.795, 0, 0, 0);
