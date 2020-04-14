SET @CGUID := 4290000; -- creatures
INSERT INTO creature (guid, id, map, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, DeathState, MovementType) VALUES
(@CGUID+144, 11441, 429, 468.33, 3.67, -3.9162, 0, 7200, 7200, 0, 0, 0, 2), -- Gordok Brute
(@CGUID+146, 11441, 429, 310.688, -12.7194, -3.80129, 6.19592, 7200, 7200, 0, 0, 0, 2), -- Gordok Brute
(4290148, 11441, 429, 290.0000, 43.9366, -3.8463, 4.8869, 7200, 7200, 0, 0, 0, 0); -- Gordok Brute

DELETE FROM creature_movement WHERE id=134827 and point=1;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `script_id`) VALUES
(@CGUID+144, 1, 468.33, 3.67, -3.9162, 100, 0, 0),
(@CGUID+144, 2, 469.788, 46.4686, -3.91727, 100, 0, 0),
(@CGUID+144, 3, 478.84, 75.12, -3.88, 100, 0, 0),
(@CGUID+144, 4, 460.19, 121.48, -3.88, 100, 0, 0),
(@CGUID+144, 5, 337.87, 121.03, -3.88, 100, 0, 0),
(@CGUID+144, 6, 310.87, 107.01, -3.88, 100, 0, 0),
(@CGUID+144, 7, 307.35, 30.51, -3.91, 100, 0, 0),
(@CGUID+144, 8, 303.7117, -25.2759, -3.8869, 100, 0, 0),
(@CGUID+144, 9, 301.4661, -86.08256, -3.888566, 100, 0, 0),
(@CGUID+144, 10, 303.9529, -103.7906, -3.886538, 100, 0, 0),
(@CGUID+144, 11, 328.6918, -108.4514, -3.886415, 100, 0, 0),
(@CGUID+144, 12, 349.4499, -113.0719, -3.885886, 100, 0, 0),
(@CGUID+144, 13, 373.62, -108.48, -3.8861, 100, 0, 0),
(@CGUID+144, 14, 349.4499, -113.0719, -3.885886, 100, 0, 0),
(@CGUID+144, 15, 328.6918, -108.4514, -3.886415, 100, 0, 0),
(@CGUID+144, 16, 303.9529, -103.7906, -3.886538, 100, 0, 0),
(@CGUID+144, 17, 301.4661, -86.08256, -3.888566, 100, 0, 0),
(@CGUID+144, 18, 303.7117, -25.2759, -3.8869, 100, 0, 0),
(@CGUID+144, 19, 309.03, 4.14, -3.8842, 100, 0, 0),
(@CGUID+144, 20, 336.8683, 3.981493, -20.15593, 100, 0, 0),
(@CGUID+144, 21, 354.146, 1.931919, -24.60496, 100, 0, 0),
(@CGUID+144, 22, 390.2945, 2.087241, -25.32607, 100, 0, 0),
(@CGUID+144, 23, 417.5935, 2.578588, -24.45984, 100, 0, 0),
(@CGUID+144, 24, 440.9338, 3.172982, -13.66713, 100, 0, 0),
(@CGUID+146, 1, 310.8415, -13.01986, -3.887124, 3.473205, 28000, 0),
(@CGUID+146, 2, 303.7117, -25.2759, -3.8869, 100, 0, 0),
(@CGUID+146, 3, 296.9958, -63.9747, -3.8885, 3.9112, 28000, 0),
(@CGUID+146, 4, 310.9867, -46.0561, -3.8871, 100, 0, 0),
(134827, 1, 298.47, 45.13, -3.9662, 4.0173, 30000, 0);

DELETE FROM creature_addon WHERE guid=134853;
INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES
(134853, 0, 0, 0, 0, 10, 0, NULL);

DELETE FROM creature_linking WHERE master_guid IN (4290148, 4290144) OR guid IN (134838, 134865);
INSERT INTO `creature_linking` (`guid`, `master_guid`, `flag`) VALUES
(134825, 4290148, 3), -- Gordok Brute -> Gordok Brute
(134838, 4290148, 3), -- creature_spawn_entry -> Gordok Brute
(134865, 4290148, 3), -- Gordok Mage-Lord -> Gordok Brute
(138304, @CGUID+144, 515), -- Gordok Mastiff -> Gordok Brute
(138303, @CGUID+144, 515); -- Gordok Mastiff -> Gordok Brute

INSERT INTO `creature_spawn_entry` (`guid`, `entry`) VALUES
(134795, 11441),(134795, 13036); -- Gordok Brute, Gordok Mastiff

UPDATE creature SET position_x=472.56, position_y=0.70, position_z=-3.9256, orientation=3.1376, spawndist=0, MovementType=0 WHERE guid=138303;
UPDATE creature SET position_x=464.83, position_y=0.76, position_z=-3.90, orientation=3.1376, spawndist=0, MovementType=0 WHERE guid=138304;

UPDATE creature SET id=0 WHERE guid=134795;
DELETE FROM creature WHERE guid=134801;
DELETE FROM creature WHERE guid=138207;
