/* DBScriptData
DBName: The Stockade
DBScriptName: -
DB%Complete: 86
DBComment:
EndDBScriptData */

SET @CGUID := 3400000; -- creatures
SET @OGUID := 3400000; -- gameobjects
SET @PGUID := 45100; -- pools

-- =========
-- CREATURES
-- =========

INSERT INTO `creature_movement` (`id`, `point`, `PositionX`, `PositionY`, `PositionZ`, `orientation`, `waittime`, `ScriptId`) VALUES
(@CGUID+37, 01, 75.49965, 0.029221, -25.606234, 100, 0, 0),
(@CGUID+37, 02, 89.60431, -0.262842, -25.606234, 100, 0, 0),
(@CGUID+37, 03, 102.68959, 0.410306, -25.606234, 100, 0, 0),
(@CGUID+37, 04, 115.99935, -0.355093, -25.606234, 100, 0, 0),
(@CGUID+37, 05, 127.31364, 0.261203, -25.606234, 100, 0, 0),
(@CGUID+37, 06, 150.46062, 0.392215, -25.606236, 100, 0, 0),
(@CGUID+37, 07, 127.31364, 0.261203, -25.606234, 100, 0, 0),
(@CGUID+37, 08, 115.99935, -0.355093, -25.606234, 100, 0, 0),
(@CGUID+37, 09, 102.68959, 0.410306, -25.606234, 100, 0, 0),
(@CGUID+37, 10, 89.60431, -0.262842, -25.606234, 100, 0, 0),
(@CGUID+71, 01, 129.19832, 25.995808, -30.882986, 100, 0, 0),
(@CGUID+71, 02, 129.2315, 34.076656, -33.939564, 100, 0, 0),
(@CGUID+71, 03, 129.74263, 44.341465, -33.939568, 100, 0, 0),
(@CGUID+71, 04, 132.81062, 57.19225, -33.939564, 100, 0, 0),
(@CGUID+71, 05, 135.80817, 69.7172, -33.939564, 100, 0, 0),
(@CGUID+71, 06, 140.10005, 83.22038, -33.939564, 100, 0, 0),
(@CGUID+71, 07, 136.06558, 69.47129, -33.939564, 100, 0, 0),
(@CGUID+71, 08, 133.04048, 56.991955, -33.939564, 100, 0, 0),
(@CGUID+71, 09, 129.9259, 45.16928, -33.939568, 100, 0, 0),
(@CGUID+71, 10, 129.13123, 34.17052, -33.939564, 100, 0, 0),
(@CGUID+71, 11, 129.19832, 25.995808, -30.882986, 100, 0, 0),
(@CGUID+71, 12, 129.4986, 14.451448, -26.574574, 100, 0, 0),
(@CGUID+71, 13, 129.14038, 1.833775, -25.606234, 100, 0, 0),
(@CGUID+71, 14, 129.30154, -13.469554, -26.76472, 100, 0, 0),
(@CGUID+71, 15, 128.90823, -24.004969, -30.696592, 100, 0, 0),
(@CGUID+71, 16, 129.30154, -13.469554, -26.76472, 100, 0, 0),
(@CGUID+71, 17, 129.14038, 1.833775, -25.606234, 100, 0, 0),
(@CGUID+71, 18, 129.4986, 14.451448, -26.574574, 100, 0, 0),
(@CGUID+82, 01, 128.39493, -36.251293, -33.939564, 100, 0, 0),
(@CGUID+82, 02, 127.20896, -47.669483, -33.939564, 100, 0, 0),
(@CGUID+82, 03, 124.21308, -63.74593, -33.939564, 100, 0, 0),
(@CGUID+82, 04, 119.2851, -77.55158, -33.939564, 100, 0, 0),
(@CGUID+82, 05, 113.77787, -89.621765, -33.939564, 100, 0, 0),
(@CGUID+82, 06, 119.2851, -77.55158, -33.939564, 100, 0, 0),
(@CGUID+82, 07, 124.21308, -63.74593, -33.939564, 100, 0, 0),
(@CGUID+82, 08, 127.20896, -47.669483, -33.939564, 100, 0, 0);

-- INSERT INTO `creature_movement_template` (`entry`, `pathId`, `point`, `PositionX`, `PositionY`, `PositionZ`, `orientation`, `waittime`, `ScriptId`) VALUES

-- INSERT INTO `creature_addon` (`guid`, `mount`, `stand_state`, `sheath_state`, `emote`, `moveflags`, `auras`) VALUES

REPLACE INTO `creature_template_addon` (`entry`, `mount`, `stand_state`, `sheath_state`, `emote`, `moveflags`, `auras`) VALUES
(1663, 0, 0, 1, 0, 0, '7165'), -- Dextren Ward
(1666, 0, 0, 1, 0, 0, '3418'), -- Kam Deepfury
(1696, 0, 0, 1, 0, 0, NULL), -- Targorr the Dread
(1706, 0, 0, 1, 0, 0, NULL), -- Defias Prisoner
(1707, 0, 0, 1, 0, 0, NULL), -- Defias Captive
(1708, 0, 0, 1, 0, 0, '7165'), -- Defias Inmate
(1711, 0, 0, 1, 0, 0, ''), -- Defias Convict
(1715, 0, 0, 1, 0, 0, NULL), -- Defias Insurgent
(1716, 0, 0, 1, 0, 0, ''), -- Bazil Thredd
(1717, 0, 0, 1, 0, 0, NULL), -- Hamhock
(1720, 0, 0, 1, 0, 0, NULL); -- Bruegal Ironknuckle

-- INSERT INTO `creature_linking` (`guid`, `master_guid`, `flag`) VALUES

-- INSERT INTO `creature_linking_template` (`entry`, `map`, `master_entry`, `flag`, `search_range`) VALUES

INSERT INTO `creature_spawn_entry` (`guid`, `entry`) VALUES
(@CGUID+4, 1706), (@CGUID+4, 1707), -- Defias Prisoner, Defias Captive
(@CGUID+5, 1706), (@CGUID+5, 1707), -- Defias Prisoner, Defias Captive
(@CGUID+6, 1706), (@CGUID+6, 1707), -- Defias Prisoner, Defias Captive
(@CGUID+7, 1706), (@CGUID+7, 1707), -- Defias Prisoner, Defias Captive
(@CGUID+8, 1706), (@CGUID+8, 1707), -- Defias Prisoner, Defias Captive
(@CGUID+9, 1706), (@CGUID+9, 1707), -- Defias Prisoner, Defias Captive
(@CGUID+10, 1706), (@CGUID+10, 1707), -- Defias Prisoner, Defias Captive
(@CGUID+11, 1706), (@CGUID+11, 1707), -- Defias Prisoner, Defias Captive
(@CGUID+12, 1706), (@CGUID+12, 1707), (@CGUID+12, 1708), -- Defias Prisoner, Defias Captive, Defias Inmate
(@CGUID+13, 1706), (@CGUID+13, 1707), -- Defias Prisoner, Defias Captive
(@CGUID+14, 1706), (@CGUID+14, 1707), (@CGUID+14, 1708), -- Defias Prisoner, Defias Captive, Defias Inmate
(@CGUID+15, 1706), (@CGUID+15, 1707), (@CGUID+15, 1708), -- Defias Prisoner, Defias Captive, Defias Inmate
(@CGUID+16, 1706), (@CGUID+16, 1707), (@CGUID+16, 1708), -- Defias Prisoner, Defias Captive, Defias Inmate
(@CGUID+17, 1706), (@CGUID+17, 1707), -- Defias Prisoner, Defias Captive
(@CGUID+18, 1706), (@CGUID+18, 1707), -- Defias Prisoner, Defias Captive
(@CGUID+19, 1706), (@CGUID+19, 1707), -- Defias Prisoner, Defias Captive
(@CGUID+20, 1706), (@CGUID+20, 1707), -- Defias Prisoner, Defias Captive
(@CGUID+21, 1706), (@CGUID+21, 1707), -- Defias Prisoner, Defias Captive
(@CGUID+22, 1706), (@CGUID+22, 1707), (@CGUID+22, 1708), -- Defias Prisoner, Defias Captive, Defias Inmate
(@CGUID+23, 1706), (@CGUID+23, 1707), -- Defias Prisoner, Defias Captive
(@CGUID+24, 1706), (@CGUID+24, 1707), -- Defias Prisoner, Defias Captive
(@CGUID+25, 1706), (@CGUID+25, 1707), -- Defias Prisoner, Defias Captive
(@CGUID+26, 1706), (@CGUID+26, 1707), (@CGUID+26, 1708), -- Defias Prisoner, Defias Captive, Defias Inmate
(@CGUID+27, 1706), (@CGUID+27, 1707), -- Defias Prisoner, Defias Captive
(@CGUID+28, 1706), (@CGUID+28, 1707), -- Defias Prisoner, Defias Captive
(@CGUID+29, 1706), (@CGUID+29, 1707), (@CGUID+29, 1708), -- Defias Prisoner, Defias Captive, Defias Inmate
(@CGUID+30, 1706), (@CGUID+30, 1707), -- Defias Prisoner, Defias Captive
(@CGUID+31, 1706), (@CGUID+31, 1707), (@CGUID+31, 1708), -- Defias Prisoner, Defias Captive, Defias Inmate
(@CGUID+32, 1706), (@CGUID+32, 1707), (@CGUID+32, 1708), -- Defias Prisoner, Defias Captive, Defias Inmate
(@CGUID+33, 1706), (@CGUID+33, 1707), (@CGUID+33, 1708), -- Defias Prisoner, Defias Captive, Defias Inmate
(@CGUID+34, 1706), (@CGUID+34, 1707), (@CGUID+34, 1708), -- Defias Prisoner, Defias Captive, Defias Inmate
(@CGUID+35, 1706), (@CGUID+35, 1707), (@CGUID+35, 1708), -- Defias Prisoner, Defias Captive, Defias Inmate
(@CGUID+36, 1708), (@CGUID+36, 1711), (@CGUID+36, 1715), -- Defias Inmate, Defias Convict, Defias Insurgent
(@CGUID+37, 1708), (@CGUID+37, 1711), -- Defias Inmate, Defias Convict
(@CGUID+38, 1706), (@CGUID+38, 1707), (@CGUID+38, 1708), -- Defias Prisoner, Defias Captive, Defias Inmate
(@CGUID+39, 1706), (@CGUID+39, 1707), (@CGUID+39, 1708), -- Defias Prisoner, Defias Captive, Defias Inmate
(@CGUID+40, 1706), (@CGUID+40, 1707), (@CGUID+40, 1708), -- Defias Prisoner, Defias Captive, Defias Inmate
(@CGUID+41, 1706), (@CGUID+41, 1707), (@CGUID+41, 1708), -- Defias Prisoner, Defias Captive, Defias Inmate
(@CGUID+42, 1708), (@CGUID+42, 1711), (@CGUID+42, 1715), -- Defias Inmate, Defias Convict, Defias Insurgent
(@CGUID+43, 1708), (@CGUID+43, 1711), -- Defias Inmate, Defias Convict
(@CGUID+44, 1708), (@CGUID+44, 1711), (@CGUID+44, 1715), -- Defias Inmate, Defias Convict, Defias Insurgent
(@CGUID+45, 1706), (@CGUID+45, 1707), (@CGUID+45, 1708), -- Defias Prisoner, Defias Captive, Defias Inmate
(@CGUID+46, 1706), (@CGUID+46, 1708), -- Defias Prisoner, Defias Inmate
(@CGUID+47, 1706), (@CGUID+47, 1707), (@CGUID+47, 1708), -- Defias Prisoner, Defias Captive, Defias Inmate
(@CGUID+48, 1708), (@CGUID+48, 1711), (@CGUID+48, 1715), -- Defias Inmate, Defias Convict, Defias Insurgent
(@CGUID+49, 1706), (@CGUID+49, 1707), (@CGUID+49, 1708), -- Defias Prisoner, Defias Captive, Defias Inmate
(@CGUID+50, 1706), (@CGUID+50, 1707), (@CGUID+50, 1708), -- Defias Prisoner, Defias Captive, Defias Inmate
(@CGUID+51, 1706), (@CGUID+51, 1707), (@CGUID+51, 1708), -- Defias Prisoner, Defias Captive, Defias Inmate
(@CGUID+52, 1706), (@CGUID+52, 1707), (@CGUID+52, 1708), -- Defias Prisoner, Defias Captive, Defias Inmate
(@CGUID+53, 1708), (@CGUID+53, 1711), (@CGUID+53, 1715), -- Defias Inmate, Defias Convict, Defias Insurgent
(@CGUID+54, 1708), (@CGUID+54, 1711), (@CGUID+54, 1715), -- Defias Inmate, Defias Convict, Defias Insurgent
(@CGUID+55, 1706), (@CGUID+55, 1707), (@CGUID+55, 1708), -- Defias Prisoner, Defias Captive, Defias Inmate
(@CGUID+56, 1706), (@CGUID+56, 1707), (@CGUID+56, 1708), -- Defias Prisoner, Defias Captive, Defias Inmate
(@CGUID+57, 1706), (@CGUID+57, 1708), -- Defias Prisoner, Defias Inmate
(@CGUID+58, 1706), (@CGUID+58, 1707), (@CGUID+58, 1708), -- Defias Prisoner, Defias Captive, Defias Inmate
(@CGUID+59, 1706), (@CGUID+59, 1707), (@CGUID+59, 1708), -- Defias Prisoner, Defias Captive, Defias Inmate
(@CGUID+60, 1706), (@CGUID+60, 1707), (@CGUID+60, 1708), -- Defias Prisoner, Defias Captive, Defias Inmate
(@CGUID+61, 1706), (@CGUID+61, 1708), -- Defias Prisoner, Defias Inmate
(@CGUID+62, 1706), (@CGUID+62, 1707), (@CGUID+62, 1708), -- Defias Prisoner, Defias Captive, Defias Inmate
(@CGUID+63, 1706), (@CGUID+63, 1707), (@CGUID+63, 1708), -- Defias Prisoner, Defias Captive, Defias Inmate
(@CGUID+64, 1706), (@CGUID+64, 1707), (@CGUID+64, 1708), -- Defias Prisoner, Defias Captive, Defias Inmate
(@CGUID+65, 1706), (@CGUID+65, 1707), (@CGUID+65, 1708), -- Defias Prisoner, Defias Captive, Defias Inmate
(@CGUID+66, 1706), (@CGUID+66, 1707), (@CGUID+66, 1708), -- Defias Prisoner, Defias Captive, Defias Inmate
(@CGUID+67, 1708), (@CGUID+67, 1711), (@CGUID+67, 1715), -- Defias Inmate, Defias Convict, Defias Insurgent
(@CGUID+68, 1708), (@CGUID+68, 1711), -- Defias Inmate, Defias Convict
(@CGUID+69, 1708), (@CGUID+69, 1711), (@CGUID+69, 1715), -- Defias Inmate, Defias Convict, Defias Insurgent
(@CGUID+70, 1708), (@CGUID+70, 1711), (@CGUID+70, 1715), -- Defias Inmate, Defias Convict, Defias Insurgent
(@CGUID+71, 1708), (@CGUID+71, 1711), -- Defias Inmate, Defias Convict
(@CGUID+72, 1708), (@CGUID+72, 1711), (@CGUID+72, 1715), -- Defias Inmate, Defias Convict, Defias Insurgent
(@CGUID+73, 1708), (@CGUID+73, 1711), (@CGUID+73, 1715), -- Defias Inmate, Defias Convict, Defias Insurgent
(@CGUID+74, 1708), (@CGUID+74, 1711), (@CGUID+74, 1715), -- Defias Inmate, Defias Convict, Defias Insurgent
(@CGUID+75, 1708), (@CGUID+75, 1711), (@CGUID+75, 1715), -- Defias Inmate, Defias Convict, Defias Insurgent
(@CGUID+76, 1708), (@CGUID+76, 1711), (@CGUID+76, 1715), -- Defias Inmate, Defias Convict, Defias Insurgent
(@CGUID+77, 1708), (@CGUID+77, 1711), -- Defias Inmate, Defias Convict
(@CGUID+78, 1708), (@CGUID+78, 1711), (@CGUID+78, 1715), -- Defias Inmate, Defias Convict, Defias Insurgent
(@CGUID+79, 1708), (@CGUID+79, 1711), (@CGUID+79, 1715), -- Defias Inmate, Defias Convict, Defias Insurgent
(@CGUID+80, 1708), (@CGUID+80, 1711); -- Defias Inmate, Defias Convict

INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
-- (@CGUID+1,
(@CGUID+2, 1666, 34, 142.644, -71.8536, -34.8562, 4.49228, 86400, 86400, 5, 1), -- Kam Deepfury
-- (@CGUID+3,
(@CGUID+4, 0, 34, 110.986, -29.1003, -26.4396, 4.23787, 7200, 7200, 3, 1), -- creature_spawn_entry
(@CGUID+5, 0, 34, 88.573, -15.4623, -26.4396, 4.33564, 7200, 7200, 1, 1), -- creature_spawn_entry
(@CGUID+6, 0, 34, 81.5075, -2.03578, -25.5229, 2.77507, 7200, 7200, 1, 1), -- creature_spawn_entry
(@CGUID+7, 0, 34, 110.512, -14.289, -26.4396, 2.07694, 7200, 7200, 5, 1), -- creature_spawn_entry
(@CGUID+8, 0, 34, 83.9548, 30.5974, -26.4396, 0.369557, 7200, 7200, 2, 1), -- creature_spawn_entry
(@CGUID+9, 0, 34, 131.149, 3.33946, -25.5229, 1.50787, 7200, 7200, 2, 1), -- creature_spawn_entry
(@CGUID+10, 0, 34, 93.4684, 3.03369, -25.5229, 3.50811, 7200, 7200, 1, 1), -- creature_spawn_entry
(@CGUID+11, 0, 34, 127.145, -1.40234, -25.5229, 2.26893, 7200, 7200, 3, 1), -- creature_spawn_entry
(@CGUID+12, 0, 34, 150.993, 39.1095, -34.7729, 2.50405, 7200, 7200, 3, 1), -- creature_spawn_entry
(@CGUID+13, 0, 34, 165.944, 1.0911, -25.6062, 2.88702, 7200, 7200, 3, 1), -- creature_spawn_entry
(@CGUID+14, 0, 34, 162.8465118408203125, 61.67619705200195312, -34.856231689453125, 4.814694881439208984, 7200, 7200, 3, 1), -- creature_spawn_entry
(@CGUID+15, 0, 34, 186.274, 86.9216, -33.8562, 3.42742, 7200, 7200, 3, 1), -- creature_spawn_entry
(@CGUID+16, 0, 34, 167.363, 127.883, -33.8562, 0.959931, 7200, 7200, 3, 1), -- creature_spawn_entry
(@CGUID+17, 0, 34, 94.85416412353515625, -60.1856269836425781, -34.7728996276855468, 2.015650510787963867, 7200, 7200, 1, 1), -- creature_spawn_entry
(@CGUID+18, 0, 34, 110.662, -0.797785, -25.5229, 0.30335, 7200, 7200, 1, 1), -- creature_spawn_entry
(@CGUID+19, 0, 34, 87.736, -28.9658, -26.4396, 1.5708, 7200, 7200, 1, 1), -- creature_spawn_entry
(@CGUID+20, 0, 34, 102.687, -28.8744, -26.4396, 6.02139, 7200, 7200, 3, 1), -- creature_spawn_entry
(@CGUID+21, 0, 34, 109.6220932006835937, 21.06819343566894531, -26.4395675659179687, 1.037083148956298828, 7200, 7200, 3, 1), -- creature_spawn_entry
(@CGUID+22, 0, 34, 110.493, 42.8924, -34.7729, 3.87516, 7200, 7200, 2, 1), -- creature_spawn_entry
(@CGUID+23, 0, 34, 110.413, 30.1479, -26.4396, 5.35283, 7200, 7200, 3, 1), -- creature_spawn_entry
(@CGUID+24, 0, 34, 86.8127, 21.0691, -26.4396, 4.59022, 7200, 7200, 2, 1), -- creature_spawn_entry
(@CGUID+25, 0, 34, 80.683, 16.7574, -26.4396, 2.04204, 7200, 7200, 2, 1), -- creature_spawn_entry
(@CGUID+26, 0, 34, 131.167, 40.9354, -33.8562, 1.98968, 7200, 7200, 2, 1), -- creature_spawn_entry
(@CGUID+27, 0, 34, 140.338, 3.08356, -25.5229, 5.99824, 7200, 7200, 3, 1), -- creature_spawn_entry
(@CGUID+28, 0, 34, 103.24, 12.9131, -26.4396, 1.16937, 7200, 7200, 3, 1), -- creature_spawn_entry
(@CGUID+29, 0, 34, 115.026, 46.7235, -34.7729, 4.31096, 7200, 7200, 3, 1), -- creature_spawn_entry
(@CGUID+30, 0, 34, 153.705, 3.6997, -25.6062, 5.67859, 7200, 7200, 3, 1), -- creature_spawn_entry
(@CGUID+31, 0, 34, 134.054, 70.9823, -33.8562, 6.04937, 7200, 7200, 3, 1), -- creature_spawn_entry
(@CGUID+32, 0, 34, 148.353, 65.0762, -34.7729, 5.40655, 7200, 7200, 2, 1), -- creature_spawn_entry
(@CGUID+33, 0, 34, 148.538, 103.18, -35.1896, 4.52629, 7200, 7200, 5, 1), -- creature_spawn_entry
(@CGUID+34, 0, 34, 147.452, 111.814, -35.1896, 3.40928, 7200, 7200, 5, 1), -- creature_spawn_entry
(@CGUID+35, 0, 34, 192.771, 91.34, -33.8562, 5.44344, 7200, 7200, 2, 1), -- creature_spawn_entry
(@CGUID+36, 0, 34, 117.7, -45.8883, -34.7729, 2.96333, 7200, 7200, 3, 1), -- creature_spawn_entry
(@CGUID+37, 0, 34, 75.49965, 0.029221, -25.606234, 3.49974, 7200, 7200, 0, 2), -- creature_spawn_entry
(@CGUID+38, 0, 34, 128.622, 49.0336, -33.8562, 4.17134, 7200, 7200, 2, 1), -- creature_spawn_entry
(@CGUID+39, 0, 34, 105.4, 70.095, -34.7729, 2.75762, 7200, 7200, 3, 1), -- creature_spawn_entry
(@CGUID+40, 0, 34, 100.916, 53.2517, -34.7729, 2.70526, 7200, 7200, 2, 1), -- creature_spawn_entry
(@CGUID+41, 0, 34, 100.564, 44.3137, -34.7729, 2.30383, 7200, 7200, 2, 1), -- creature_spawn_entry
(@CGUID+42, 0, 34, 123.368, -61.7398, -33.8562, 3.01942, 7200, 7200, 2, 1), -- creature_spawn_entry
(@CGUID+43, 0, 34, 96.4198, -54.7564, -34.7729, 2.51327, 7200, 7200, 3, 1), -- creature_spawn_entry
(@CGUID+44, 0, 34, 82.6119, -94.8407, -33.8562, 5.54853, 7200, 7200, 2, 1), -- creature_spawn_entry
(@CGUID+45, 0, 34, 121.623, 74.722, -34.7729, 0.645772, 7200, 7200, 3, 1), -- creature_spawn_entry
(@CGUID+46, 0, 34, 108.0577163696289062, 80.03609466552734375, -34.856231689453125, 4.546633243560791015, 7200, 7200, 2, 1), -- creature_spawn_entry
(@CGUID+47, 0, 34, 145.489, 43.3674, -34.7729, 4.00042, 7200, 7200, 5, 1), -- creature_spawn_entry
(@CGUID+48, 0, 34, 113.3332672119140625, -85.4646987915039062, -33.856231689453125, 2.478367567062377929, 7200, 7200, 1, 1), -- creature_spawn_entry
(@CGUID+49, 0, 34, 159.931, 39.9643, -34.8562, 0.52169, 7200, 7200, 2, 1), -- creature_spawn_entry
(@CGUID+50, 0, 34, 151.641, 60.1077, -34.7729, 2.38636, 7200, 7200, 2, 1), -- creature_spawn_entry
(@CGUID+51, 0, 34, 161.133, 54.0252, -34.8562, 4.38428, 7200, 7200, 3, 1), -- creature_spawn_entry
(@CGUID+52, 0, 34, 144.1897735595703125, 84.32425689697265625, -33.9395637512207031, 5.601512432098388671, 7200, 7200, 3, 1), -- creature_spawn_entry
(@CGUID+53, 0, 34, 152.804, -69.5129, -34.7729, 4.67092, 7200, 7200, 4, 1), -- creature_spawn_entry
(@CGUID+54, 0, 34, 150.261, -76.7672, -34.8562, 2.28934, 7200, 7200, 2, 1), -- creature_spawn_entry
(@CGUID+55, 0, 34, 171.119, 93.3214, -33.8562, 4.20114, 7200, 7200, 2, 1), -- creature_spawn_entry
(@CGUID+56, 0, 34, 155.673, 99.6374, -35.1896, 4.85931, 7200, 7200, 5, 1), -- creature_spawn_entry
(@CGUID+57, 0, 34, 123.941, 119.574, -33.8562, 3.60874, 7200, 7200, 3, 1), -- creature_spawn_entry
(@CGUID+58, 0, 34, 129.951, 122.361, -33.8562, 1.54336, 7200, 7200, 3, 1), -- creature_spawn_entry
(@CGUID+59, 0, 34, 156.316, 109.516, -35.1896, 2.99417, 7200, 7200, 5, 1), -- creature_spawn_entry
(@CGUID+60, 0, 34, 189.206, 87.3162, -33.8562, 0.762264, 7200, 7200, 5, 1), -- creature_spawn_entry
(@CGUID+61, 0, 34, 182.74, 95.2994, -33.8562, 1.40045, 7200, 7200, 2, 1), -- creature_spawn_entry
(@CGUID+62, 0, 34, 119.78, 128.785, -33.9396, 6.2394, 7200, 7200, 2, 1), -- creature_spawn_entry
(@CGUID+63, 0, 34, 161.07, 129.292, -33.8562, 4.39901, 7200, 7200, 2, 1), -- creature_spawn_entry
(@CGUID+64, 0, 34, 171.059, 142.025, -33.9396, 4.49541, 7200, 7200, 2, 1), -- creature_spawn_entry
(@CGUID+65, 0, 34, 168.6239013671875, 145.95428466796875, -33.8562355041503906, 2.757620096206665039, 7200, 7200, 3, 1), -- creature_spawn_entry
(@CGUID+66, 0, 34, 176.087, 142.688, -33.8562, 2.28023, 7200, 7200, 2, 1), -- creature_spawn_entry
(@CGUID+67, 0, 34, 141.424, -120.264, -33.9396, 1.87443, 7200, 7200, 2, 1), -- creature_spawn_entry
(@CGUID+68, 0, 34, 139.681, -128.899, -33.8562, 2.90953, 7200, 7200, 2, 1), -- creature_spawn_entry
(@CGUID+69, 0, 34, 70.595, -83.9379, -33.8562, 4.83093, 7200, 7200, 3, 1), -- creature_spawn_entry
(@CGUID+70, 0, 34, 111.721, -41.2636, -34.7729, 2.05949, 7200, 7200, 1, 1), -- creature_spawn_entry
(@CGUID+71, 0, 34, 129.19832, 25.995808, -30.882986, 1.50148, 7200, 7200, 0, 2), -- creature_spawn_entry
(@CGUID+72, 0, 34, 128.277130126953125, -46.9650917053222656, -33.9395637512207031, 3.596912622451782226, 7200, 7200, 5, 1), -- creature_spawn_entry
(@CGUID+73, 0, 34, 94.8542, -60.1856, -34.7729, 2.61799, 7200, 7200, 2, 1), -- creature_spawn_entry
(@CGUID+74, 0, 34, 66.9717, -90.2606, -33.8562, 5.39307, 7200, 7200, 5, 1), -- creature_spawn_entry
(@CGUID+75, 0, 34, 104.11, -55.8138, -34.7729, 4.83456, 7200, 7200, 2, 1), -- creature_spawn_entry
(@CGUID+76, 0, 34, 124.69061279296875, -68.8522796630859375, -33.856231689453125, 1.669126391410827636, 7200, 7200, 2, 1), -- creature_spawn_entry
(@CGUID+77, 0, 34, 138.566, -48.0856, -34.7729, 0.529011, 7200, 7200, 3, 1), -- creature_spawn_entry
(@CGUID+78, 0, 34, 155.148, -52.0394, -34.8562, 3.07747, 7200, 7200, 3, 1), -- creature_spawn_entry
(@CGUID+79, 0, 34, 126.276, -116.828, -33.9396, 2.39055, 7200, 7200, 4, 1), -- creature_spawn_entry
(@CGUID+80, 0, 34, 95.3684, -128.729, -33.9396, 2.07435, 7200, 7200, 3, 1), -- creature_spawn_entry
(@CGUID+81, 1715, 34, 77.8325, -88.7943, -33.8562, 1.87365, 7200, 7200, 3, 1), -- Defias Insurgent
(@CGUID+82, 1715, 34, 128.39493, -36.251293, -33.939564, 3.46348, 7200, 7200, 0, 2), -- Defias Insurgent
(@CGUID+83, 1715, 34, 99.3863, -37.6553, -34.7729, 5.84427, 7200, 7200, 3, 1), -- Defias Insurgent
(@CGUID+84, 1715, 34, 110.796, -65.9973, -34.7729, 3.56047, 7200, 7200, 2, 1), -- Defias Insurgent
(@CGUID+85, 1715, 34, 146.893, -42.7851, -34.8562, 3.56855, 7200, 7200, 3, 1), -- Defias Insurgent
(@CGUID+86, 1715, 34, 140.158, -64.5333, -34.7729, 5.99149, 7200, 7200, 3, 1), -- Defias Insurgent
(@CGUID+87, 1715, 34, 95.484619140625, -105.947319030761718, -35.1062355041503906, 0.663225114345550537, 7200, 7200, 0, 0), -- Defias Insurgent
(@CGUID+88, 1715, 34, 109.0966033935546875, -114.239013671875, -35.1062355041503906, 1.431169986724853515, 7200, 7200, 0, 0), -- Defias Insurgent
(@CGUID+89, 1715, 34, 132.264, -123.557, -33.9396, 2.95052, 7200, 7200, 2, 1), -- Defias Insurgent
(@CGUID+90, 1715, 34, 91.7954, -126.047, -33.9396, 4.01449, 7200, 7200, 2, 1), -- Defias Insurgent
(@CGUID+91, 1716, 34, 92.0066375732421875, -134.439407348632812, -33.9395637512207031, 1.362791180610656738, 86400, 86400, 3, 1), -- Bazil Thredd
(@CGUID+92, 1717, 34, 105.5229568481445312, -105.794532775878906, -35.1062355041503906, 1.099557399749755859, 86400, 86400, 0, 0), -- Hamhock
(@CGUID+94, 1663, 34, 166.789, 134.787, -33.9396, 1.78929, 86400, 86400, 5, 1), -- Dextren Ward
(@CGUID+95, 1663, 34, 179.045928955078125, 95.35980224609375, -33.9395637512207031, 3.225477933883666992, 86400, 86400, 5, 1), -- Dextren Ward
(@CGUID+96, 1663, 34, 115.4121780395507812, 123.8267364501953125, -33.856231689453125, 2.104324579238891601, 86400, 86400, 5, 1), -- Dextren Ward
(@CGUID+97, 1696, 34, 159.582, 1.25311, -25.6062, 6.25925, 86400, 86400, 2, 1), -- Targorr the Dread
(@CGUID+98, 1696, 34, 103.6666793823242187, 29.5405426025390625, -26.5228996276855468, 3.992308616638183593, 86400, 86400, 2, 1), -- Targorr the Dread
(@CGUID+99, 1696, 34, 81.52817535400390625, -28.9002456665039062, -26.4395656585693359, 2.81226658821105957, 86400, 86400, 2, 1), -- Targorr the Dread
(@CGUID+100, 1696, 34, 118.44, 71.53, -34.8561, 6.0081, 86400, 86400, 2, 1), -- Targorr the Dread
(@CGUID+101, 1720, 34, 160.050689697265625, 45.70901870727539062, -34.7729034423828125, 3.368485450744628906, 86400, 86400, 0, 0), -- Bruegal Ironknuckle
(@CGUID+102, 1720, 34, 116.8799896240234375, 67.06186676025390625, -34.7728996276855468, 0.383972436189651489, 86400, 86400, 0, 0), -- Bruegal Ironknuckle
(@CGUID+103, 1720, 34, 98.86191558837890625, -43.2932014465332031, -34.7729034423828125, 0.191986218094825744, 86400, 86400, 0, 0), -- Bruegal Ironknuckle
(@CGUID+104, 1720, 34, 157.30560302734375, -42.5938682556152343, -34.7728996276855468, 3.50811171531677246, 86400, 86400, 0, 0), -- Bruegal Ironknuckle
(@CGUID+105, 1715, 34, 160.050689697265625, 45.70901870727539062, -34.7729034423828125, 3.368485450744628906, 86400, 86400, 0, 0), -- Defias Insurgent
(@CGUID+106, 1715, 34, 116.8799896240234375, 67.06186676025390625, -34.7728996276855468, 0.383972436189651489, 86400, 86400, 0, 0), -- Defias Insurgent
(@CGUID+107, 1715, 34, 98.86191558837890625, -43.2932014465332031, -34.7729034423828125, 0.191986218094825744, 86400, 86400, 0, 0), -- Defias Insurgent
(@CGUID+108, 1715, 34, 157.30560302734375, -42.5938682556152343, -34.7728996276855468, 3.50811171531677246, 86400, 86400, 0, 0); -- Defias Insurgent

-- ===========
-- GAMEOBJECTS
-- ===========

INSERT INTO gameobject_spawn_entry (guid, entry) VALUES
(@OGUID+01, 75295), (@OGUID+01, 75298), -- Large Iron Bound Chest, Large Solid Chest
(@OGUID+02, 75295), (@OGUID+02, 75298), -- Large Iron Bound Chest, Large Solid Chest
(@OGUID+03, 75295), (@OGUID+03, 75298), -- Large Iron Bound Chest, Large Solid Chest
(@OGUID+04, 75295), (@OGUID+04, 75298), -- Large Iron Bound Chest, Large Solid Chest
(@OGUID+11, 75295), (@OGUID+11, 75298), -- Large Iron Bound Chest, Large Solid Chest
(@OGUID+12, 75295), (@OGUID+12, 75298), -- Large Iron Bound Chest, Large Solid Chest
(@OGUID+13, 75295), (@OGUID+13, 75298), -- Large Iron Bound Chest, Large Solid Chest
(@OGUID+14, 75295), (@OGUID+14, 75298); -- Large Iron Bound Chest, Large Solid Chest

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`) VALUES
-- West Wing
(@OGUID+01, 0, 34, 104.4551773071289062, 77.2554473876953125, -34.856231689453125, -0.36651757359504699, 0, 0, -0.18223476409912109, 0.98325502872467041, 86400, 86400), -- Large Iron Bound Chest, Large Solid Chest
(@OGUID+02, 0, 34, 165.321533203125, 57.666259765625, -34.856231689453125, 2.914689540863037109, 0, 0, 0.993571281433105468, 0.113208353519439697, 86400, 86400), -- Large Iron Bound Chest, Large Solid Chest
(@OGUID+03, 0, 34, 188.6029052734375, 81.584991455078125, -33.9395637512207031, 2.478367090225219726, 0, 0, 0.94551849365234375, 0.325568377971649169, 86400, 86400), -- Large Iron Bound Chest, Large Solid Chest
(@OGUID+04, 0, 34, 173.18524169921875, 146.954803466796875, -33.9395637512207031, -2.05948829650878906, 0, 0, -0.85716724395751953, 0.515038192272186279, 86400, 86400), -- Large Iron Bound Chest, Large Solid Chest
-- East Wing
(@OGUID+11, 0, 34, 92.3032073974609375, -56.1772651672363281, -34.856231689453125, -0.20943944156169891, 0, 0, -0.10452842712402343, 0.994521915912628173, 86400, 86400), -- Large Iron Bound Chest, Large Solid Chest
(@OGUID+12, 0, 34, 151.6896514892578125, -65.130950927734375, -34.856231689453125, -1.18682324886322021, 0, 0, -0.55919265747070312, 0.829037725925445556, 86400, 86400), -- Large Iron Bound Chest, Large Solid Chest
(@OGUID+13, 0, 34, 90.59210205078125, -145.882415771484375, -33.9395675659179687, 1.448622107505798339, 0, 0, 0.662619590759277343, 0.748956084251403808, 86400, 86400), -- Large Iron Bound Chest, Large Solid Chest
(@OGUID+14, 0, 34, 146.967, -121.079, -33.9396, 3.50812, 0, 0, -0.983254, 0.182238, 86400, 86400); -- Large Iron Bound Chest, Large Solid Chest

-- INSERT INTO `gameobject_addon` (`guid`, `animprogress`, `state`) VALUES

-- ======
-- EVENTS
-- ======

-- INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES
-- INSERT INTO `game_event_creature` (`guid`, `event`) VALUES
-- INSERT INTO `game_event_creature_data` (`guid`, `entry_id`, `modelid`, `equipment_id`, `spell_start`, `spell_end`, `event`) VALUES

-- ============
-- SPAWN GROUPS
-- ============

-- INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
-- INSERT INTO `spawn_group_entry` (`Id`, `Entry`, `MinCount`, `MaxCount`, `Chance`) VALUES
-- INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`, `Chance`) VALUES
-- INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
-- INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
-- INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`, `Comment`) VALUES

-- =======
-- POOLING
-- =======

-- INSERT INTO `pool_pool` (`pool_id`, `mother_pool`, `chance`, `description`) VALUES

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES
(@PGUID+1, 1, 'The Stockade - Dextren Ward (1663)'),
(@PGUID+2, 1, 'The Stockade - Targorr the Dread (1696)'),
(@PGUID+3, 1, 'The Stockade - Bruegal Ironknuckle (1720)'), -- (All Substitute should be spawned if he is not spawned)
(@PGUID+91, 1, 'The Stockade (West Wing) - Chest Pool'),
(@PGUID+92, 1, 'The Stockade (East Wing) - Chest Pool');

INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES
(@OGUID+01, @PGUID+91, 0, 'The Stockade (West Wing) - Large Iron Bound Chest, Large Solid Chest (75295,75298)'),
(@OGUID+02, @PGUID+91, 0, 'The Stockade (West Wing) - Large Iron Bound Chest, Large Solid Chest (75295,75298)'),
(@OGUID+03, @PGUID+91, 0, 'The Stockade (West Wing) - Large Iron Bound Chest, Large Solid Chest (75295,75298)'),
(@OGUID+04, @PGUID+91, 0, 'The Stockade (West Wing) - Large Iron Bound Chest, Large Solid Chest (75295,75298)'),
(@OGUID+11, @PGUID+92, 0, 'The Stockade (East Wing) - Large Iron Bound Chest, Large Solid Chest (75295,75298)'),
(@OGUID+12, @PGUID+92, 0, 'The Stockade (East Wing) - Large Iron Bound Chest, Large Solid Chest (75295,75298)'),
(@OGUID+13, @PGUID+92, 0, 'The Stockade (East Wing) - Large Iron Bound Chest, Large Solid Chest (75295,75298)'),
(@OGUID+14, @PGUID+92, 0, 'The Stockade (East Wing) - Large Iron Bound Chest, Large Solid Chest (75295,75298)');

-- INSERT INTO `pool_gameobject_template` (`id`, `pool_entry`, `chance`, `description`) VALUES

INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES
(@CGUID+101, @PGUID+3, 0, 'The Stockade - Bruegal Ironknuckle (1720)'),
(@CGUID+102, @PGUID+3, 0, 'The Stockade - Bruegal Ironknuckle (1720)'),
(@CGUID+103, @PGUID+3, 0, 'The Stockade - Bruegal Ironknuckle (1720)'),
(@CGUID+104, @PGUID+3, 0, 'The Stockade - Bruegal Ironknuckle (1720)'),
(@CGUID+105, @PGUID+3, 20, 'The Stockade - Bruegal Ironknuckle (Substitute)'),
(@CGUID+106, @PGUID+3, 20, 'The Stockade - Bruegal Ironknuckle (Substitute)'),
(@CGUID+107, @PGUID+3, 20, 'The Stockade - Bruegal Ironknuckle (Substitute)'),
(@CGUID+108, @PGUID+3, 20, 'The Stockade - Bruegal Ironknuckle (Substitute)');

INSERT INTO `pool_creature_template` (`id`, `pool_entry`, `chance`, `description`) VALUES
(1663, @PGUID+1, 0, 'The Stockade - Dextren Ward (1663)'),
(1696, @PGUID+2, 0, 'The Stockade - Targorr the Dread (1696)');

-- =========
-- DBSCRIPTS
-- =========

-- INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- INSERT INTO `dbscripts_on_creature_death` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- INSERT INTO `dbscripts_on_go_use` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- INSERT INTO `dbscripts_on_go_template_use` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- INSERT INTO `dbscripts_on_relay` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- INSERT INTO `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- INSERT INTO `dbscripts_on_spell` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- INSERT INTO `dbscripts_on_gossip` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- INSERT INTO `dbscripts_on_quest_start` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- INSERT INTO `dbscripts_on_quest_end` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- INSERT INTO `dbscript_random_templates` (`id`, `type`, `target_id`, `chance`, `comments`) VALUES


