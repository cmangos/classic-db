-- Vekniss Drone

SET @GUIDSTART := 100024;

DELETE FROM `creature_movement` WHERE `id` BETWEEN @GUIDSTART + 0 AND @GUIDSTART + 4;
DELETE FROM `creature_movement` WHERE `id` BETWEEN @GUIDSTART + 5 AND @GUIDSTART + 69;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES 
(@GUIDSTART + 0, 1, -7993.78, 1296.72, -73.4204, 0, 0, 0, 0, 0, 0, 0, 0, 0, 590764, 0.117071, 0, 0),
(@GUIDSTART + 0, 2, -7948.29, 1297.54, -82.3119, 0, 0, 0, 0, 0, 0, 0, 0, 0, 590765, 1.13023, 0, 0),
(@GUIDSTART + 0, 3, -7930.69, 1324.72, -90.6157, 0, 0, 0, 0, 0, 0, 0, 0, 0, 590766, 1.91563, 0, 0),
(@GUIDSTART + 0, 4, -7946.67, 1355.78, -87.8624, 0, 0, 0, 0, 0, 0, 0, 0, 0, 590767, 1.01243, 0, 0),
(@GUIDSTART + 0, 5, -7933.58, 1375.62, -76.5256, 0, 0, 0, 0, 0, 0, 0, 0, 0, 590768, 0.089586, 0, 0),
(@GUIDSTART + 0, 6, -7909.6, 1373.87, -69.8019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 590769, 1.33444, 0, 0),
(@GUIDSTART + 0, 7, -7899.51, 1411.07, -65.3926, 0, 0, 0, 0, 0, 0, 0, 0, 0, 590770, 1.40905, 0, 0),
(@GUIDSTART + 0, 8, -7893.97, 1414.54, -64.3921, 0, 0, 0, 0, 0, 0, 0, 0, 0, 590771, 0.596164, 0, 0),
(@GUIDSTART + 0, 9, -7899.51, 1411.07, -65.3926, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.40905, 0, 0),
(@GUIDSTART + 0, 10, -7909.6, 1373.87, -69.8019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.33444, 0, 0),
(@GUIDSTART + 0, 11, -7933.58, 1375.62, -76.5256, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.089586, 0, 0),
(@GUIDSTART + 0, 12, -7946.67, 1355.78, -87.8624, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.01243, 0, 0),
(@GUIDSTART + 0, 13, -7930.69, 1324.72, -90.6157, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.91563, 0, 0),
(@GUIDSTART + 0, 14, -7948.29, 1297.54, -82.3119, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.13023, 0, 0),

(@GUIDSTART + 1, 1, -7916.07, 1352.81, -80.7444, 0, 0, 0, 0, 0, 0, 0, 0, 0, 590781, 2.06095, 0, 0),
(@GUIDSTART + 1, 2, -7930.26, 1380.51, -73.8779, 0, 0, 0, 0, 0, 0, 0, 0, 0, 590782, 1.02422, 0, 0),
(@GUIDSTART + 1, 3, -7921.8, 1406.12, -65.4571, 0, 0, 0, 0, 0, 0, 0, 0, 0, 590783, 1.39729, 0, 0),
(@GUIDSTART + 1, 4, -7909.62, 1419, -67.2911, 0, 0, 0, 0, 0, 0, 0, 0, 0, 590784, 1.77428, 0, 0),
(@GUIDSTART + 1, 5, -7915.09, 1445.7, -67.3406, 0, 0, 0, 0, 0, 0, 0, 0, 0, 590785, 2.98379, 0, 0),
(@GUIDSTART + 1, 6, -7927.79, 1448, -66.2951, 0, 0, 0, 0, 0, 0, 0, 0, 0, 590786, 0.882854, 0, 0),
(@GUIDSTART + 1, 7, -7902.63, 1463.31, -64.7768, 0, 0, 0, 0, 0, 0, 0, 0, 0, 590787, 0.969248, 0, 0),
(@GUIDSTART + 1, 8, -7909.41, 1491.48, -61.6919, 0, 0, 0, 0, 0, 0, 0, 0, 0, 590788, 1.86068, 0, 0),
(@GUIDSTART + 1, 9, -7930.41, 1501.07, -63.5877, 0, 0, 0, 0, 0, 0, 0, 0, 0, 590789, 1.72715, 0, 0),
(@GUIDSTART + 1, 10, -7926.59, 1514.93, -60.3365, 0, 0, 0, 0, 0, 0, 0, 0, 0, 590790, 1.29126, 0, 0),
(@GUIDSTART + 1, 11, -7930.41, 1501.07, -63.5877, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.72715, 0, 0),
(@GUIDSTART + 1, 12, -7909.41, 1491.48, -61.6919, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.86068, 0, 0),
(@GUIDSTART + 1, 13, -7902.63, 1463.31, -64.7768, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.969248, 0, 0),
(@GUIDSTART + 1, 14, -7927.79, 1448, -66.2951, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.882854, 0, 0),
(@GUIDSTART + 1, 15, -7915.09, 1445.7, -67.3406, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.98379, 0, 0),
(@GUIDSTART + 1, 16, -7909.62, 1419, -67.2911, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.77428, 0, 0),
(@GUIDSTART + 1, 17, -7921.8, 1406.12, -65.4571, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.39729, 0, 0),
(@GUIDSTART + 1, 18, -7930.26, 1380.51, -73.8779, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.02422, 0, 0),

(@GUIDSTART + 2, 1, -7900.87, 1454.27, -65.4721, 0, 0, 0, 0, 0, 0, 0, 0, 0, 590791, 3.03484, 0, 0),
(@GUIDSTART + 2, 2, -7917.94, 1457.25, -66.8527, 0, 0, 0, 0, 0, 0, 0, 0, 0, 590792, 2.22196, 0, 0),
(@GUIDSTART + 2, 3, -7929.98, 1472.46, -65.4515, 0, 0, 0, 0, 0, 0, 0, 0, 0, 590793, 2.28086, 0, 0),
(@GUIDSTART + 2, 4, -7928.82, 1494.03, -64.3419, 0, 0, 0, 0, 0, 0, 0, 0, 0, 590794, 3.02306, 0, 0),
(@GUIDSTART + 2, 5, -7947.35, 1497.48, -63.4268, 0, 0, 0, 0, 0, 0, 0, 0, 0, 590795, 2.3162, 0, 0),
(@GUIDSTART + 2, 6, -7959.47, 1511.57, -61.9728, 0, 0, 0, 0, 0, 0, 0, 0, 0, 590796, 2.08844, 0, 0),
(@GUIDSTART + 2, 7, -7969.18, 1532.65, -62.1071, 0, 0, 0, 0, 0, 0, 0, 0, 0, 590797, 1.09883, 0, 0),
(@GUIDSTART + 2, 8, -7958.79, 1550.29, -60.5216, 0, 0, 0, 0, 0, 0, 0, 0, 0, 590798, 2.18268, 0, 0),
(@GUIDSTART + 2, 9, -7972.43, 1580.25, -61.0058, 0, 0, 0, 0, 0, 0, 0, 0, 0, 590799, 2.11985, 0, 0),
(@GUIDSTART + 2, 10, -7958.79, 1550.29, -60.5216, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.18268, 0, 0),
(@GUIDSTART + 2, 11, -7969.18, 1532.65, -62.1071, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.09883, 0, 0),
(@GUIDSTART + 2, 12, -7959.47, 1511.57, -61.9728, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.08844, 0, 0),
(@GUIDSTART + 2, 13, -7947.35, 1497.48, -63.4268, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.3162, 0, 0),
(@GUIDSTART + 2, 14, -7928.82, 1494.03, -64.3419, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.02306, 0, 0),
(@GUIDSTART + 2, 15, -7929.98, 1472.46, -65.4515, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.28086, 0, 0),
(@GUIDSTART + 2, 16, -7917.94, 1457.25, -66.8527, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.22196, 0, 0),

(@GUIDSTART + 3, 16, -8024.62, 1568.55, -65.2917, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.705655, 0, 0),
(@GUIDSTART + 3, 15, -8007.44, 1581.78, -61.8759, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.66777, 0, 0),
(@GUIDSTART + 3, 14, -8006.94, 1617.3, -56.8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.39819, 0, 0),
(@GUIDSTART + 3, 13, -8073.69, 1670.33, -51.7955, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.67053, 0, 0),
(@GUIDSTART + 3, 12, -8111.43, 1649.58, -48.601, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.73591, 0, 0),
(@GUIDSTART + 3, 11, -8145.84, 1658.82, -38.8055, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.30394, 0, 0),
(@GUIDSTART + 3, 10, -8163.23, 1681.51, -33.7126, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.62734, 0, 0),
(@GUIDSTART + 3, 9, -8182.76, 1671.98, -31.5778, 0, 0, 0, 0, 0, 0, 0, 0, 0, 590808, 3.59593, 0, 0),
(@GUIDSTART + 3, 8, -8163.23, 1681.51, -33.7126, 0, 0, 0, 0, 0, 0, 0, 0, 0, 590807, 3.62734, 0, 0),
(@GUIDSTART + 3, 7, -8145.84, 1658.82, -38.8055, 0, 0, 0, 0, 0, 0, 0, 0, 0, 590806, 2.30394, 0, 0),
(@GUIDSTART + 3, 6, -8111.43, 1649.58, -48.601, 0, 0, 0, 0, 0, 0, 0, 0, 0, 590805, 2.73591, 0, 0),
(@GUIDSTART + 3, 5, -8073.69, 1670.33, -51.7955, 0, 0, 0, 0, 0, 0, 0, 0, 0, 590804, 3.67053, 0, 0),
(@GUIDSTART + 3, 4, -8006.94, 1617.3, -56.8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 590803, 2.39819, 0, 0),
(@GUIDSTART + 3, 3, -8007.44, 1581.78, -61.8759, 0, 0, 0, 0, 0, 0, 0, 0, 0, 590802, 1.66777, 0, 0),
(@GUIDSTART + 3, 2, -8024.62, 1568.55, -65.2917, 0, 0, 0, 0, 0, 0, 0, 0, 0, 590801, 0.705655, 0, 0),
(@GUIDSTART + 3, 1, -8028.24, 1537.08, -68.551, 0, 0, 0, 0, 0, 0, 0, 0, 0, 590800, 1.25151, 0, 0),

(@GUIDSTART + 4, 1, -8178.91, 1626.81, -38.5993, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6.27461, 0, 0),
(@GUIDSTART + 4, 2, -8156.86, 1628.61, -41.7348, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6.01151, 0, 0),
(@GUIDSTART + 4, 3, -8131.6, 1618.59, -46.6591, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.108737, 0, 0),
(@GUIDSTART + 4, 4, -8090.31, 1623.18, -55.5087, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.67721, 0, 0),
(@GUIDSTART + 4, 5, -8037.92, 1573.26, -64.0358, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.53585, 0, 0),
(@GUIDSTART + 4, 6, -8023.39, 1551.75, -67.0691, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.0921, 0, 0),
(@GUIDSTART + 4, 7, -8004.35, 1591.54, -60.5781, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.94658, 0, 0),
(@GUIDSTART + 4, 8, -8019.2, 1624.19, -58.6598, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.00156, 0, 0),
(@GUIDSTART + 4, 9, -8049.47, 1650.2, -58.4037, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.677, 0, 0),
(@GUIDSTART + 4, 10, -8080.93, 1666.26, -52.5002, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.43098, 0, 0),
(@GUIDSTART + 4, 11, -8105.73, 1661.38, -48.8493, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.4035, 0, 0),
(@GUIDSTART + 4, 12, -8080.93, 1666.26, -52.5002, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.43098, 0, 0),
(@GUIDSTART + 4, 13, -8049.47, 1650.2, -58.4037, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.677, 0, 0),
(@GUIDSTART + 4, 14, -8019.2, 1624.19, -58.6598, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.00156, 0, 0),
(@GUIDSTART + 4, 15, -8004.35, 1591.54, -60.5781, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.94658, 0, 0),
(@GUIDSTART + 4, 16, -8023.39, 1551.75, -67.0691, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.0921, 0, 0),
(@GUIDSTART + 4, 17, -8037.92, 1573.26, -64.0358, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.53585, 0, 0),
(@GUIDSTART + 4, 18, -8090.31, 1623.18, -55.5087, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.67721, 0, 0),
(@GUIDSTART + 4, 19, -8131.6, 1618.59, -46.6591, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.108737, 0, 0),
(@GUIDSTART + 4, 20, -8156.86, 1628.61, -41.7348, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6.01151, 0, 0);

SET @TIMEMINE := 58000;
SET @DELTA    := 2000;
SET @TIMESTAY := 15000;

SET @SCRIPTID := 4;

DELETE FROM `dbscripts_on_creature_movement` WHERE `id` = @SCRIPTID;
INSERT INTO `dbscripts_on_creature_movement` VALUES
(@SCRIPTID, 0, 32, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Vekniss Drone - pause waypoint movement'),
(@SCRIPTID, 1, 20, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Vekniss Drone - random movement'),
(@SCRIPTID, 13, 20, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Vekniss Drone - waypoint movement'),
(@SCRIPTID, 14, 32, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Vekniss Drone - resume waypoint movement');

INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES 

(@GUIDSTART + 5, 1, (SELECT `position_x` FROM `creature` WHERE `guid`=@GUIDSTART + 5), (SELECT `position_y` FROM `creature` WHERE `guid`=@GUIDSTART + 5), (SELECT `position_z` FROM `creature` WHERE `guid`=@GUIDSTART + 5), @TIMEMINE + @DELTA * ROUND(RAND(), 3), 0, 0, 0, 0, 0, 0, 28, 0, 0, (SELECT `orientation` FROM `creature` WHERE `guid`=@GUIDSTART + 5), 0, 0),
(@GUIDSTART + 5, 2, (SELECT `position_x` FROM `creature` WHERE `guid`=@GUIDSTART + 5), (SELECT `position_y` FROM `creature` WHERE `guid`=@GUIDSTART + 5), (SELECT `position_z` FROM `creature` WHERE `guid`=@GUIDSTART + 5), @TIMESTAY, @SCRIPTID, 0, 0, 0, 0, 0, 0, 0, 0, (SELECT `orientation` FROM `creature` WHERE `guid`=@GUIDSTART + 5) + 0.00001, 0, 0),

(@GUIDSTART + 6, 1, (SELECT `position_x` FROM `creature` WHERE `guid`=@GUIDSTART + 6), (SELECT `position_y` FROM `creature` WHERE `guid`=@GUIDSTART + 6), (SELECT `position_z` FROM `creature` WHERE `guid`=@GUIDSTART + 6), @TIMEMINE + @DELTA * ROUND(RAND(), 3), 0, 0, 0, 0, 0, 0, 28, 0, 0, (SELECT `orientation` FROM `creature` WHERE `guid`=@GUIDSTART + 6), 0, 0),
(@GUIDSTART + 6, 2, (SELECT `position_x` FROM `creature` WHERE `guid`=@GUIDSTART + 6), (SELECT `position_y` FROM `creature` WHERE `guid`=@GUIDSTART + 6), (SELECT `position_z` FROM `creature` WHERE `guid`=@GUIDSTART + 6), @TIMESTAY, @SCRIPTID, 0, 0, 0, 0, 0, 0, 0, 0, (SELECT `orientation` FROM `creature` WHERE `guid`=@GUIDSTART + 6) + 0.00001, 0, 0),

(@GUIDSTART + 7, 1, (SELECT `position_x` FROM `creature` WHERE `guid`=@GUIDSTART + 7), (SELECT `position_y` FROM `creature` WHERE `guid`=@GUIDSTART + 7), (SELECT `position_z` FROM `creature` WHERE `guid`=@GUIDSTART + 7), @TIMEMINE + @DELTA * ROUND(RAND(), 3), 0, 0, 0, 0, 0, 0, 28, 0, 0, (SELECT `orientation` FROM `creature` WHERE `guid`=@GUIDSTART + 7), 0, 0),
(@GUIDSTART + 7, 2, (SELECT `position_x` FROM `creature` WHERE `guid`=@GUIDSTART + 7), (SELECT `position_y` FROM `creature` WHERE `guid`=@GUIDSTART + 7), (SELECT `position_z` FROM `creature` WHERE `guid`=@GUIDSTART + 7), @TIMESTAY, @SCRIPTID, 0, 0, 0, 0, 0, 0, 0, 0, (SELECT `orientation` FROM `creature` WHERE `guid`=@GUIDSTART + 7) + 0.00001, 0, 0),

(@GUIDSTART + 8, 1, (SELECT `position_x` FROM `creature` WHERE `guid`=@GUIDSTART + 8), (SELECT `position_y` FROM `creature` WHERE `guid`=@GUIDSTART + 8), (SELECT `position_z` FROM `creature` WHERE `guid`=@GUIDSTART + 8), @TIMEMINE + @DELTA * ROUND(RAND(), 3), 0, 0, 0, 0, 0, 0, 28, 0, 0, (SELECT `orientation` FROM `creature` WHERE `guid`=@GUIDSTART + 8), 0, 0),
(@GUIDSTART + 8, 2, (SELECT `position_x` FROM `creature` WHERE `guid`=@GUIDSTART + 8), (SELECT `position_y` FROM `creature` WHERE `guid`=@GUIDSTART + 8), (SELECT `position_z` FROM `creature` WHERE `guid`=@GUIDSTART + 8), @TIMESTAY, @SCRIPTID, 0, 0, 0, 0, 0, 0, 0, 0, (SELECT `orientation` FROM `creature` WHERE `guid`=@GUIDSTART + 8) + 0.00001, 0, 0),

(@GUIDSTART + 9, 1, (SELECT `position_x` FROM `creature` WHERE `guid`=@GUIDSTART + 9), (SELECT `position_y` FROM `creature` WHERE `guid`=@GUIDSTART + 9), (SELECT `position_z` FROM `creature` WHERE `guid`=@GUIDSTART + 9), @TIMEMINE + @DELTA * ROUND(RAND(), 3), 0, 0, 0, 0, 0, 0, 28, 0, 0, (SELECT `orientation` FROM `creature` WHERE `guid`=@GUIDSTART + 9), 0, 0),
(@GUIDSTART + 9, 2, (SELECT `position_x` FROM `creature` WHERE `guid`=@GUIDSTART + 9), (SELECT `position_y` FROM `creature` WHERE `guid`=@GUIDSTART + 9), (SELECT `position_z` FROM `creature` WHERE `guid`=@GUIDSTART + 9), @TIMESTAY, @SCRIPTID, 0, 0, 0, 0, 0, 0, 0, 0, (SELECT `orientation` FROM `creature` WHERE `guid`=@GUIDSTART + 9) + 0.00001, 0, 0),

(@GUIDSTART + 10, 1, (SELECT `position_x` FROM `creature` WHERE `guid`=@GUIDSTART + 10), (SELECT `position_y` FROM `creature` WHERE `guid`=@GUIDSTART + 10), (SELECT `position_z` FROM `creature` WHERE `guid`=@GUIDSTART + 10), @TIMEMINE + @DELTA * ROUND(RAND(), 3), 0, 0, 0, 0, 0, 0, 28, 0, 0, (SELECT `orientation` FROM `creature` WHERE `guid`=@GUIDSTART + 10), 0, 0),
(@GUIDSTART + 10, 2, (SELECT `position_x` FROM `creature` WHERE `guid`=@GUIDSTART + 10), (SELECT `position_y` FROM `creature` WHERE `guid`=@GUIDSTART + 10), (SELECT `position_z` FROM `creature` WHERE `guid`=@GUIDSTART + 10), @TIMESTAY, @SCRIPTID, 0, 0, 0, 0, 0, 0, 0, 0, (SELECT `orientation` FROM `creature` WHERE `guid`=@GUIDSTART + 10) + 0.00001, 0, 0),

(@GUIDSTART + 11, 1, (SELECT `position_x` FROM `creature` WHERE `guid`=@GUIDSTART + 11), (SELECT `position_y` FROM `creature` WHERE `guid`=@GUIDSTART + 11), (SELECT `position_z` FROM `creature` WHERE `guid`=@GUIDSTART + 11), @TIMEMINE + @DELTA * ROUND(RAND(), 3), 0, 0, 0, 0, 0, 0, 28, 0, 0, (SELECT `orientation` FROM `creature` WHERE `guid`=@GUIDSTART + 11), 0, 0),
(@GUIDSTART + 11, 2, (SELECT `position_x` FROM `creature` WHERE `guid`=@GUIDSTART + 11), (SELECT `position_y` FROM `creature` WHERE `guid`=@GUIDSTART + 11), (SELECT `position_z` FROM `creature` WHERE `guid`=@GUIDSTART + 11), @TIMESTAY, @SCRIPTID, 0, 0, 0, 0, 0, 0, 0, 0, (SELECT `orientation` FROM `creature` WHERE `guid`=@GUIDSTART + 11) + 0.00001, 0, 0),

(@GUIDSTART + 12, 1, (SELECT `position_x` FROM `creature` WHERE `guid`=@GUIDSTART + 12), (SELECT `position_y` FROM `creature` WHERE `guid`=@GUIDSTART + 12), (SELECT `position_z` FROM `creature` WHERE `guid`=@GUIDSTART + 12), @TIMEMINE + @DELTA * ROUND(RAND(), 3), 0, 0, 0, 0, 0, 0, 28, 0, 0, (SELECT `orientation` FROM `creature` WHERE `guid`=@GUIDSTART + 12), 0, 0),
(@GUIDSTART + 12, 2, (SELECT `position_x` FROM `creature` WHERE `guid`=@GUIDSTART + 12), (SELECT `position_y` FROM `creature` WHERE `guid`=@GUIDSTART + 12), (SELECT `position_z` FROM `creature` WHERE `guid`=@GUIDSTART + 12), @TIMESTAY, @SCRIPTID, 0, 0, 0, 0, 0, 0, 0, 0, (SELECT `orientation` FROM `creature` WHERE `guid`=@GUIDSTART + 12) + 0.00001, 0, 0),

(@GUIDSTART + 13, 1, (SELECT `position_x` FROM `creature` WHERE `guid`=@GUIDSTART + 13), (SELECT `position_y` FROM `creature` WHERE `guid`=@GUIDSTART + 13), (SELECT `position_z` FROM `creature` WHERE `guid`=@GUIDSTART + 13), @TIMEMINE + @DELTA * ROUND(RAND(), 3), 0, 0, 0, 0, 0, 0, 28, 0, 0, (SELECT `orientation` FROM `creature` WHERE `guid`=@GUIDSTART + 13), 0, 0),
(@GUIDSTART + 13, 2, (SELECT `position_x` FROM `creature` WHERE `guid`=@GUIDSTART + 13), (SELECT `position_y` FROM `creature` WHERE `guid`=@GUIDSTART + 13), (SELECT `position_z` FROM `creature` WHERE `guid`=@GUIDSTART + 13), @TIMESTAY, @SCRIPTID, 0, 0, 0, 0, 0, 0, 0, 0, (SELECT `orientation` FROM `creature` WHERE `guid`=@GUIDSTART + 13) + 0.00001, 0, 0),

(@GUIDSTART + 14, 1, (SELECT `position_x` FROM `creature` WHERE `guid`=@GUIDSTART + 14), (SELECT `position_y` FROM `creature` WHERE `guid`=@GUIDSTART + 14), (SELECT `position_z` FROM `creature` WHERE `guid`=@GUIDSTART + 14), @TIMEMINE + @DELTA * ROUND(RAND(), 3), 0, 0, 0, 0, 0, 0, 28, 0, 0, (SELECT `orientation` FROM `creature` WHERE `guid`=@GUIDSTART + 14), 0, 0),
(@GUIDSTART + 14, 2, (SELECT `position_x` FROM `creature` WHERE `guid`=@GUIDSTART + 14), (SELECT `position_y` FROM `creature` WHERE `guid`=@GUIDSTART + 14), (SELECT `position_z` FROM `creature` WHERE `guid`=@GUIDSTART + 14), @TIMESTAY, @SCRIPTID, 0, 0, 0, 0, 0, 0, 0, 0, (SELECT `orientation` FROM `creature` WHERE `guid`=@GUIDSTART + 14) + 0.00001, 0, 0),

(@GUIDSTART + 15, 1, (SELECT `position_x` FROM `creature` WHERE `guid`=@GUIDSTART + 15), (SELECT `position_y` FROM `creature` WHERE `guid`=@GUIDSTART + 15), (SELECT `position_z` FROM `creature` WHERE `guid`=@GUIDSTART + 15), @TIMEMINE + @DELTA * ROUND(RAND(), 3), 0, 0, 0, 0, 0, 0, 28, 0, 0, (SELECT `orientation` FROM `creature` WHERE `guid`=@GUIDSTART + 15), 0, 0),
(@GUIDSTART + 15, 2, (SELECT `position_x` FROM `creature` WHERE `guid`=@GUIDSTART + 15), (SELECT `position_y` FROM `creature` WHERE `guid`=@GUIDSTART + 15), (SELECT `position_z` FROM `creature` WHERE `guid`=@GUIDSTART + 15), @TIMESTAY, @SCRIPTID, 0, 0, 0, 0, 0, 0, 0, 0, (SELECT `orientation` FROM `creature` WHERE `guid`=@GUIDSTART + 15) + 0.00001, 0, 0),

(@GUIDSTART + 16, 1, (SELECT `position_x` FROM `creature` WHERE `guid`=@GUIDSTART + 16), (SELECT `position_y` FROM `creature` WHERE `guid`=@GUIDSTART + 16), (SELECT `position_z` FROM `creature` WHERE `guid`=@GUIDSTART + 16), @TIMEMINE + @DELTA * ROUND(RAND(), 3), 0, 0, 0, 0, 0, 0, 28, 0, 0, (SELECT `orientation` FROM `creature` WHERE `guid`=@GUIDSTART + 16), 0, 0),
(@GUIDSTART + 16, 2, (SELECT `position_x` FROM `creature` WHERE `guid`=@GUIDSTART + 16), (SELECT `position_y` FROM `creature` WHERE `guid`=@GUIDSTART + 16), (SELECT `position_z` FROM `creature` WHERE `guid`=@GUIDSTART + 16), @TIMESTAY, @SCRIPTID, 0, 0, 0, 0, 0, 0, 0, 0, (SELECT `orientation` FROM `creature` WHERE `guid`=@GUIDSTART + 16) + 0.00001, 0, 0),

(@GUIDSTART + 17, 1, (SELECT `position_x` FROM `creature` WHERE `guid`=@GUIDSTART + 17), (SELECT `position_y` FROM `creature` WHERE `guid`=@GUIDSTART + 17), (SELECT `position_z` FROM `creature` WHERE `guid`=@GUIDSTART + 17), @TIMEMINE + @DELTA * ROUND(RAND(), 3), 0, 0, 0, 0, 0, 0, 28, 0, 0, (SELECT `orientation` FROM `creature` WHERE `guid`=@GUIDSTART + 17), 0, 0),
(@GUIDSTART + 17, 2, (SELECT `position_x` FROM `creature` WHERE `guid`=@GUIDSTART + 17), (SELECT `position_y` FROM `creature` WHERE `guid`=@GUIDSTART + 17), (SELECT `position_z` FROM `creature` WHERE `guid`=@GUIDSTART + 17), @TIMESTAY, @SCRIPTID, 0, 0, 0, 0, 0, 0, 0, 0, (SELECT `orientation` FROM `creature` WHERE `guid`=@GUIDSTART + 17) + 0.00001, 0, 0),

(@GUIDSTART + 18, 1, (SELECT `position_x` FROM `creature` WHERE `guid`=@GUIDSTART + 18), (SELECT `position_y` FROM `creature` WHERE `guid`=@GUIDSTART + 18), (SELECT `position_z` FROM `creature` WHERE `guid`=@GUIDSTART + 18), @TIMEMINE + @DELTA * ROUND(RAND(), 3), 0, 0, 0, 0, 0, 0, 28, 0, 0, (SELECT `orientation` FROM `creature` WHERE `guid`=@GUIDSTART + 18), 0, 0),
(@GUIDSTART + 18, 2, (SELECT `position_x` FROM `creature` WHERE `guid`=@GUIDSTART + 18), (SELECT `position_y` FROM `creature` WHERE `guid`=@GUIDSTART + 18), (SELECT `position_z` FROM `creature` WHERE `guid`=@GUIDSTART + 18), @TIMESTAY, @SCRIPTID, 0, 0, 0, 0, 0, 0, 0, 0, (SELECT `orientation` FROM `creature` WHERE `guid`=@GUIDSTART + 18) + 0.00001, 0, 0),

(@GUIDSTART + 19, 1, (SELECT `position_x` FROM `creature` WHERE `guid`=@GUIDSTART + 19), (SELECT `position_y` FROM `creature` WHERE `guid`=@GUIDSTART + 19), (SELECT `position_z` FROM `creature` WHERE `guid`=@GUIDSTART + 19), @TIMEMINE + @DELTA * ROUND(RAND(), 3), 0, 0, 0, 0, 0, 0, 28, 0, 0, (SELECT `orientation` FROM `creature` WHERE `guid`=@GUIDSTART + 19), 0, 0),
(@GUIDSTART + 19, 2, (SELECT `position_x` FROM `creature` WHERE `guid`=@GUIDSTART + 19), (SELECT `position_y` FROM `creature` WHERE `guid`=@GUIDSTART + 19), (SELECT `position_z` FROM `creature` WHERE `guid`=@GUIDSTART + 19), @TIMESTAY, @SCRIPTID, 0, 0, 0, 0, 0, 0, 0, 0, (SELECT `orientation` FROM `creature` WHERE `guid`=@GUIDSTART + 19) + 0.00001, 0, 0),

(@GUIDSTART + 20, 1, (SELECT `position_x` FROM `creature` WHERE `guid`=@GUIDSTART + 20), (SELECT `position_y` FROM `creature` WHERE `guid`=@GUIDSTART + 20), (SELECT `position_z` FROM `creature` WHERE `guid`=@GUIDSTART + 20), @TIMEMINE + @DELTA * ROUND(RAND(), 3), 0, 0, 0, 0, 0, 0, 28, 0, 0, (SELECT `orientation` FROM `creature` WHERE `guid`=@GUIDSTART + 20), 0, 0),
(@GUIDSTART + 20, 2, (SELECT `position_x` FROM `creature` WHERE `guid`=@GUIDSTART + 20), (SELECT `position_y` FROM `creature` WHERE `guid`=@GUIDSTART + 20), (SELECT `position_z` FROM `creature` WHERE `guid`=@GUIDSTART + 20), @TIMESTAY, @SCRIPTID, 0, 0, 0, 0, 0, 0, 0, 0, (SELECT `orientation` FROM `creature` WHERE `guid`=@GUIDSTART + 20) + 0.00001, 0, 0),

(@GUIDSTART + 21, 1, (SELECT `position_x` FROM `creature` WHERE `guid`=@GUIDSTART + 21), (SELECT `position_y` FROM `creature` WHERE `guid`=@GUIDSTART + 21), (SELECT `position_z` FROM `creature` WHERE `guid`=@GUIDSTART + 21), @TIMEMINE + @DELTA * ROUND(RAND(), 3), 0, 0, 0, 0, 0, 0, 28, 0, 0, (SELECT `orientation` FROM `creature` WHERE `guid`=@GUIDSTART + 21), 0, 0),
(@GUIDSTART + 21, 2, (SELECT `position_x` FROM `creature` WHERE `guid`=@GUIDSTART + 21), (SELECT `position_y` FROM `creature` WHERE `guid`=@GUIDSTART + 21), (SELECT `position_z` FROM `creature` WHERE `guid`=@GUIDSTART + 21), @TIMESTAY, @SCRIPTID, 0, 0, 0, 0, 0, 0, 0, 0, (SELECT `orientation` FROM `creature` WHERE `guid`=@GUIDSTART + 21) + 0.00001, 0, 0),

(@GUIDSTART + 22, 1, (SELECT `position_x` FROM `creature` WHERE `guid`=@GUIDSTART + 22), (SELECT `position_y` FROM `creature` WHERE `guid`=@GUIDSTART + 22), (SELECT `position_z` FROM `creature` WHERE `guid`=@GUIDSTART + 22), @TIMEMINE + @DELTA * ROUND(RAND(), 3), 0, 0, 0, 0, 0, 0, 28, 0, 0, (SELECT `orientation` FROM `creature` WHERE `guid`=@GUIDSTART + 22), 0, 0),
(@GUIDSTART + 22, 2, (SELECT `position_x` FROM `creature` WHERE `guid`=@GUIDSTART + 22), (SELECT `position_y` FROM `creature` WHERE `guid`=@GUIDSTART + 22), (SELECT `position_z` FROM `creature` WHERE `guid`=@GUIDSTART + 22), @TIMESTAY, @SCRIPTID, 0, 0, 0, 0, 0, 0, 0, 0, (SELECT `orientation` FROM `creature` WHERE `guid`=@GUIDSTART + 22) + 0.00001, 0, 0),

(@GUIDSTART + 23, 1, (SELECT `position_x` FROM `creature` WHERE `guid`=@GUIDSTART + 23), (SELECT `position_y` FROM `creature` WHERE `guid`=@GUIDSTART + 23), (SELECT `position_z` FROM `creature` WHERE `guid`=@GUIDSTART + 23), @TIMEMINE + @DELTA * ROUND(RAND(), 3), 0, 0, 0, 0, 0, 0, 28, 0, 0, (SELECT `orientation` FROM `creature` WHERE `guid`=@GUIDSTART + 23), 0, 0),
(@GUIDSTART + 23, 2, (SELECT `position_x` FROM `creature` WHERE `guid`=@GUIDSTART + 23), (SELECT `position_y` FROM `creature` WHERE `guid`=@GUIDSTART + 23), (SELECT `position_z` FROM `creature` WHERE `guid`=@GUIDSTART + 23), @TIMESTAY, @SCRIPTID, 0, 0, 0, 0, 0, 0, 0, 0, (SELECT `orientation` FROM `creature` WHERE `guid`=@GUIDSTART + 23) + 0.00001, 0, 0),

(@GUIDSTART + 24, 1, (SELECT `position_x` FROM `creature` WHERE `guid`=@GUIDSTART + 24), (SELECT `position_y` FROM `creature` WHERE `guid`=@GUIDSTART + 24), (SELECT `position_z` FROM `creature` WHERE `guid`=@GUIDSTART + 24), @TIMEMINE + @DELTA * ROUND(RAND(), 3), 0, 0, 0, 0, 0, 0, 28, 0, 0, (SELECT `orientation` FROM `creature` WHERE `guid`=@GUIDSTART + 24), 0, 0),
(@GUIDSTART + 24, 2, (SELECT `position_x` FROM `creature` WHERE `guid`=@GUIDSTART + 24), (SELECT `position_y` FROM `creature` WHERE `guid`=@GUIDSTART + 24), (SELECT `position_z` FROM `creature` WHERE `guid`=@GUIDSTART + 24), @TIMESTAY, @SCRIPTID, 0, 0, 0, 0, 0, 0, 0, 0, (SELECT `orientation` FROM `creature` WHERE `guid`=@GUIDSTART + 24) + 0.00001, 0, 0),

(@GUIDSTART + 25, 1, (SELECT `position_x` FROM `creature` WHERE `guid`=@GUIDSTART + 25), (SELECT `position_y` FROM `creature` WHERE `guid`=@GUIDSTART + 25), (SELECT `position_z` FROM `creature` WHERE `guid`=@GUIDSTART + 25), @TIMEMINE + @DELTA * ROUND(RAND(), 3), 0, 0, 0, 0, 0, 0, 28, 0, 0, (SELECT `orientation` FROM `creature` WHERE `guid`=@GUIDSTART + 25), 0, 0),
(@GUIDSTART + 25, 2, (SELECT `position_x` FROM `creature` WHERE `guid`=@GUIDSTART + 25), (SELECT `position_y` FROM `creature` WHERE `guid`=@GUIDSTART + 25), (SELECT `position_z` FROM `creature` WHERE `guid`=@GUIDSTART + 25), @TIMESTAY, @SCRIPTID, 0, 0, 0, 0, 0, 0, 0, 0, (SELECT `orientation` FROM `creature` WHERE `guid`=@GUIDSTART + 25) + 0.00001, 0, 0),

(@GUIDSTART + 26, 1, (SELECT `position_x` FROM `creature` WHERE `guid`=@GUIDSTART + 26), (SELECT `position_y` FROM `creature` WHERE `guid`=@GUIDSTART + 26), (SELECT `position_z` FROM `creature` WHERE `guid`=@GUIDSTART + 26), @TIMEMINE + @DELTA * ROUND(RAND(), 3), 0, 0, 0, 0, 0, 0, 28, 0, 0, (SELECT `orientation` FROM `creature` WHERE `guid`=@GUIDSTART + 26), 0, 0),
(@GUIDSTART + 26, 2, (SELECT `position_x` FROM `creature` WHERE `guid`=@GUIDSTART + 26), (SELECT `position_y` FROM `creature` WHERE `guid`=@GUIDSTART + 26), (SELECT `position_z` FROM `creature` WHERE `guid`=@GUIDSTART + 26), @TIMESTAY, @SCRIPTID, 0, 0, 0, 0, 0, 0, 0, 0, (SELECT `orientation` FROM `creature` WHERE `guid`=@GUIDSTART + 26) + 0.00001, 0, 0),

(@GUIDSTART + 27, 1, (SELECT `position_x` FROM `creature` WHERE `guid`=@GUIDSTART + 27), (SELECT `position_y` FROM `creature` WHERE `guid`=@GUIDSTART + 27), (SELECT `position_z` FROM `creature` WHERE `guid`=@GUIDSTART + 27), @TIMEMINE + @DELTA * ROUND(RAND(), 3), 0, 0, 0, 0, 0, 0, 28, 0, 0, (SELECT `orientation` FROM `creature` WHERE `guid`=@GUIDSTART + 27), 0, 0),
(@GUIDSTART + 27, 2, (SELECT `position_x` FROM `creature` WHERE `guid`=@GUIDSTART + 27), (SELECT `position_y` FROM `creature` WHERE `guid`=@GUIDSTART + 27), (SELECT `position_z` FROM `creature` WHERE `guid`=@GUIDSTART + 27), @TIMESTAY, @SCRIPTID, 0, 0, 0, 0, 0, 0, 0, 0, (SELECT `orientation` FROM `creature` WHERE `guid`=@GUIDSTART + 27) + 0.00001, 0, 0),

(@GUIDSTART + 28, 1, (SELECT `position_x` FROM `creature` WHERE `guid`=@GUIDSTART + 28), (SELECT `position_y` FROM `creature` WHERE `guid`=@GUIDSTART + 28), (SELECT `position_z` FROM `creature` WHERE `guid`=@GUIDSTART + 28), @TIMEMINE + @DELTA * ROUND(RAND(), 3), 0, 0, 0, 0, 0, 0, 28, 0, 0, (SELECT `orientation` FROM `creature` WHERE `guid`=@GUIDSTART + 28), 0, 0),
(@GUIDSTART + 28, 2, (SELECT `position_x` FROM `creature` WHERE `guid`=@GUIDSTART + 28), (SELECT `position_y` FROM `creature` WHERE `guid`=@GUIDSTART + 28), (SELECT `position_z` FROM `creature` WHERE `guid`=@GUIDSTART + 28), @TIMESTAY, @SCRIPTID, 0, 0, 0, 0, 0, 0, 0, 0, (SELECT `orientation` FROM `creature` WHERE `guid`=@GUIDSTART + 28) + 0.00001, 0, 0),

(@GUIDSTART + 29, 1, (SELECT `position_x` FROM `creature` WHERE `guid`=@GUIDSTART + 29), (SELECT `position_y` FROM `creature` WHERE `guid`=@GUIDSTART + 29), (SELECT `position_z` FROM `creature` WHERE `guid`=@GUIDSTART + 29), @TIMEMINE + @DELTA * ROUND(RAND(), 3), 0, 0, 0, 0, 0, 0, 28, 0, 0, (SELECT `orientation` FROM `creature` WHERE `guid`=@GUIDSTART + 29), 0, 0),
(@GUIDSTART + 29, 2, (SELECT `position_x` FROM `creature` WHERE `guid`=@GUIDSTART + 29), (SELECT `position_y` FROM `creature` WHERE `guid`=@GUIDSTART + 29), (SELECT `position_z` FROM `creature` WHERE `guid`=@GUIDSTART + 29), @TIMESTAY, @SCRIPTID, 0, 0, 0, 0, 0, 0, 0, 0, (SELECT `orientation` FROM `creature` WHERE `guid`=@GUIDSTART + 29) + 0.00001, 0, 0),

(@GUIDSTART + 30, 1, (SELECT `position_x` FROM `creature` WHERE `guid`=@GUIDSTART + 30), (SELECT `position_y` FROM `creature` WHERE `guid`=@GUIDSTART + 30), (SELECT `position_z` FROM `creature` WHERE `guid`=@GUIDSTART + 30), @TIMEMINE + @DELTA * ROUND(RAND(), 3), 0, 0, 0, 0, 0, 0, 28, 0, 0, (SELECT `orientation` FROM `creature` WHERE `guid`=@GUIDSTART + 30), 0, 0),
(@GUIDSTART + 30, 2, (SELECT `position_x` FROM `creature` WHERE `guid`=@GUIDSTART + 30), (SELECT `position_y` FROM `creature` WHERE `guid`=@GUIDSTART + 30), (SELECT `position_z` FROM `creature` WHERE `guid`=@GUIDSTART + 30), @TIMESTAY, @SCRIPTID, 0, 0, 0, 0, 0, 0, 0, 0, (SELECT `orientation` FROM `creature` WHERE `guid`=@GUIDSTART + 30) + 0.00001, 0, 0),

(@GUIDSTART + 31, 1, (SELECT `position_x` FROM `creature` WHERE `guid`=@GUIDSTART + 31), (SELECT `position_y` FROM `creature` WHERE `guid`=@GUIDSTART + 31), (SELECT `position_z` FROM `creature` WHERE `guid`=@GUIDSTART + 31), @TIMEMINE + @DELTA * ROUND(RAND(), 3), 0, 0, 0, 0, 0, 0, 28, 0, 0, (SELECT `orientation` FROM `creature` WHERE `guid`=@GUIDSTART + 31), 0, 0),
(@GUIDSTART + 31, 2, (SELECT `position_x` FROM `creature` WHERE `guid`=@GUIDSTART + 31), (SELECT `position_y` FROM `creature` WHERE `guid`=@GUIDSTART + 31), (SELECT `position_z` FROM `creature` WHERE `guid`=@GUIDSTART + 31), @TIMESTAY, @SCRIPTID, 0, 0, 0, 0, 0, 0, 0, 0, (SELECT `orientation` FROM `creature` WHERE `guid`=@GUIDSTART + 31) + 0.00001, 0, 0),

(@GUIDSTART + 32, 1, (SELECT `position_x` FROM `creature` WHERE `guid`=@GUIDSTART + 32), (SELECT `position_y` FROM `creature` WHERE `guid`=@GUIDSTART + 32), (SELECT `position_z` FROM `creature` WHERE `guid`=@GUIDSTART + 32), @TIMEMINE + @DELTA * ROUND(RAND(), 3), 0, 0, 0, 0, 0, 0, 28, 0, 0, (SELECT `orientation` FROM `creature` WHERE `guid`=@GUIDSTART + 32), 0, 0),
(@GUIDSTART + 32, 2, (SELECT `position_x` FROM `creature` WHERE `guid`=@GUIDSTART + 32), (SELECT `position_y` FROM `creature` WHERE `guid`=@GUIDSTART + 32), (SELECT `position_z` FROM `creature` WHERE `guid`=@GUIDSTART + 32), @TIMESTAY, @SCRIPTID, 0, 0, 0, 0, 0, 0, 0, 0, (SELECT `orientation` FROM `creature` WHERE `guid`=@GUIDSTART + 32) + 0.00001, 0, 0),

(@GUIDSTART + 33, 1, (SELECT `position_x` FROM `creature` WHERE `guid`=@GUIDSTART + 33), (SELECT `position_y` FROM `creature` WHERE `guid`=@GUIDSTART + 33), (SELECT `position_z` FROM `creature` WHERE `guid`=@GUIDSTART + 33), @TIMEMINE + @DELTA * ROUND(RAND(), 3), 0, 0, 0, 0, 0, 0, 28, 0, 0, (SELECT `orientation` FROM `creature` WHERE `guid`=@GUIDSTART + 33), 0, 0),
(@GUIDSTART + 33, 2, (SELECT `position_x` FROM `creature` WHERE `guid`=@GUIDSTART + 33), (SELECT `position_y` FROM `creature` WHERE `guid`=@GUIDSTART + 33), (SELECT `position_z` FROM `creature` WHERE `guid`=@GUIDSTART + 33), @TIMESTAY, @SCRIPTID, 0, 0, 0, 0, 0, 0, 0, 0, (SELECT `orientation` FROM `creature` WHERE `guid`=@GUIDSTART + 33) + 0.00001, 0, 0),

(@GUIDSTART + 34, 1, (SELECT `position_x` FROM `creature` WHERE `guid`=@GUIDSTART + 34), (SELECT `position_y` FROM `creature` WHERE `guid`=@GUIDSTART + 34), (SELECT `position_z` FROM `creature` WHERE `guid`=@GUIDSTART + 34), @TIMEMINE + @DELTA * ROUND(RAND(), 3), 0, 0, 0, 0, 0, 0, 28, 0, 0, (SELECT `orientation` FROM `creature` WHERE `guid`=@GUIDSTART + 34), 0, 0),
(@GUIDSTART + 34, 2, (SELECT `position_x` FROM `creature` WHERE `guid`=@GUIDSTART + 34), (SELECT `position_y` FROM `creature` WHERE `guid`=@GUIDSTART + 34), (SELECT `position_z` FROM `creature` WHERE `guid`=@GUIDSTART + 34), @TIMESTAY, @SCRIPTID, 0, 0, 0, 0, 0, 0, 0, 0, (SELECT `orientation` FROM `creature` WHERE `guid`=@GUIDSTART + 34) + 0.00001, 0, 0),

(@GUIDSTART + 35, 1, (SELECT `position_x` FROM `creature` WHERE `guid`=@GUIDSTART + 35), (SELECT `position_y` FROM `creature` WHERE `guid`=@GUIDSTART + 35), (SELECT `position_z` FROM `creature` WHERE `guid`=@GUIDSTART + 35), @TIMEMINE + @DELTA * ROUND(RAND(), 3), 0, 0, 0, 0, 0, 0, 28, 0, 0, (SELECT `orientation` FROM `creature` WHERE `guid`=@GUIDSTART + 35), 0, 0),
(@GUIDSTART + 35, 2, (SELECT `position_x` FROM `creature` WHERE `guid`=@GUIDSTART + 35), (SELECT `position_y` FROM `creature` WHERE `guid`=@GUIDSTART + 35), (SELECT `position_z` FROM `creature` WHERE `guid`=@GUIDSTART + 35), @TIMESTAY, @SCRIPTID, 0, 0, 0, 0, 0, 0, 0, 0, (SELECT `orientation` FROM `creature` WHERE `guid`=@GUIDSTART + 35) + 0.00001, 0, 0),

(@GUIDSTART + 36, 1, (SELECT `position_x` FROM `creature` WHERE `guid`=@GUIDSTART + 36), (SELECT `position_y` FROM `creature` WHERE `guid`=@GUIDSTART + 36), (SELECT `position_z` FROM `creature` WHERE `guid`=@GUIDSTART + 36), @TIMEMINE + @DELTA * ROUND(RAND(), 3), 0, 0, 0, 0, 0, 0, 28, 0, 0, (SELECT `orientation` FROM `creature` WHERE `guid`=@GUIDSTART + 36), 0, 0),
(@GUIDSTART + 36, 2, (SELECT `position_x` FROM `creature` WHERE `guid`=@GUIDSTART + 36), (SELECT `position_y` FROM `creature` WHERE `guid`=@GUIDSTART + 36), (SELECT `position_z` FROM `creature` WHERE `guid`=@GUIDSTART + 36), @TIMESTAY, @SCRIPTID, 0, 0, 0, 0, 0, 0, 0, 0, (SELECT `orientation` FROM `creature` WHERE `guid`=@GUIDSTART + 36) + 0.00001, 0, 0),

(@GUIDSTART + 37, 1, (SELECT `position_x` FROM `creature` WHERE `guid`=@GUIDSTART + 37), (SELECT `position_y` FROM `creature` WHERE `guid`=@GUIDSTART + 37), (SELECT `position_z` FROM `creature` WHERE `guid`=@GUIDSTART + 37), @TIMEMINE + @DELTA * ROUND(RAND(), 3), 0, 0, 0, 0, 0, 0, 28, 0, 0, (SELECT `orientation` FROM `creature` WHERE `guid`=@GUIDSTART + 37), 0, 0),
(@GUIDSTART + 37, 2, (SELECT `position_x` FROM `creature` WHERE `guid`=@GUIDSTART + 37), (SELECT `position_y` FROM `creature` WHERE `guid`=@GUIDSTART + 37), (SELECT `position_z` FROM `creature` WHERE `guid`=@GUIDSTART + 37), @TIMESTAY, @SCRIPTID, 0, 0, 0, 0, 0, 0, 0, 0, (SELECT `orientation` FROM `creature` WHERE `guid`=@GUIDSTART + 37) + 0.00001, 0, 0),

(@GUIDSTART + 38, 1, (SELECT `position_x` FROM `creature` WHERE `guid`=@GUIDSTART + 38), (SELECT `position_y` FROM `creature` WHERE `guid`=@GUIDSTART + 38), (SELECT `position_z` FROM `creature` WHERE `guid`=@GUIDSTART + 38), @TIMEMINE + @DELTA * ROUND(RAND(), 3), 0, 0, 0, 0, 0, 0, 28, 0, 0, (SELECT `orientation` FROM `creature` WHERE `guid`=@GUIDSTART + 38), 0, 0),
(@GUIDSTART + 38, 2, (SELECT `position_x` FROM `creature` WHERE `guid`=@GUIDSTART + 38), (SELECT `position_y` FROM `creature` WHERE `guid`=@GUIDSTART + 38), (SELECT `position_z` FROM `creature` WHERE `guid`=@GUIDSTART + 38), @TIMESTAY, @SCRIPTID, 0, 0, 0, 0, 0, 0, 0, 0, (SELECT `orientation` FROM `creature` WHERE `guid`=@GUIDSTART + 38) + 0.00001, 0, 0),

(@GUIDSTART + 39, 1, (SELECT `position_x` FROM `creature` WHERE `guid`=@GUIDSTART + 39), (SELECT `position_y` FROM `creature` WHERE `guid`=@GUIDSTART + 39), (SELECT `position_z` FROM `creature` WHERE `guid`=@GUIDSTART + 39), @TIMEMINE + @DELTA * ROUND(RAND(), 3), 0, 0, 0, 0, 0, 0, 28, 0, 0, (SELECT `orientation` FROM `creature` WHERE `guid`=@GUIDSTART + 39), 0, 0),
(@GUIDSTART + 39, 2, (SELECT `position_x` FROM `creature` WHERE `guid`=@GUIDSTART + 39), (SELECT `position_y` FROM `creature` WHERE `guid`=@GUIDSTART + 39), (SELECT `position_z` FROM `creature` WHERE `guid`=@GUIDSTART + 39), @TIMESTAY, @SCRIPTID, 0, 0, 0, 0, 0, 0, 0, 0, (SELECT `orientation` FROM `creature` WHERE `guid`=@GUIDSTART + 39) + 0.00001, 0, 0),

(@GUIDSTART + 40, 1, (SELECT `position_x` FROM `creature` WHERE `guid`=@GUIDSTART + 40), (SELECT `position_y` FROM `creature` WHERE `guid`=@GUIDSTART + 40), (SELECT `position_z` FROM `creature` WHERE `guid`=@GUIDSTART + 40), @TIMEMINE + @DELTA * ROUND(RAND(), 3), 0, 0, 0, 0, 0, 0, 28, 0, 0, (SELECT `orientation` FROM `creature` WHERE `guid`=@GUIDSTART + 40), 0, 0),
(@GUIDSTART + 40, 2, (SELECT `position_x` FROM `creature` WHERE `guid`=@GUIDSTART + 40), (SELECT `position_y` FROM `creature` WHERE `guid`=@GUIDSTART + 40), (SELECT `position_z` FROM `creature` WHERE `guid`=@GUIDSTART + 40), @TIMESTAY, @SCRIPTID, 0, 0, 0, 0, 0, 0, 0, 0, (SELECT `orientation` FROM `creature` WHERE `guid`=@GUIDSTART + 40) + 0.00001, 0, 0),

(@GUIDSTART + 41, 1, (SELECT `position_x` FROM `creature` WHERE `guid`=@GUIDSTART + 41), (SELECT `position_y` FROM `creature` WHERE `guid`=@GUIDSTART + 41), (SELECT `position_z` FROM `creature` WHERE `guid`=@GUIDSTART + 41), @TIMEMINE + @DELTA * ROUND(RAND(), 3), 0, 0, 0, 0, 0, 0, 28, 0, 0, (SELECT `orientation` FROM `creature` WHERE `guid`=@GUIDSTART + 41), 0, 0),
(@GUIDSTART + 41, 2, (SELECT `position_x` FROM `creature` WHERE `guid`=@GUIDSTART + 41), (SELECT `position_y` FROM `creature` WHERE `guid`=@GUIDSTART + 41), (SELECT `position_z` FROM `creature` WHERE `guid`=@GUIDSTART + 41), @TIMESTAY, @SCRIPTID, 0, 0, 0, 0, 0, 0, 0, 0, (SELECT `orientation` FROM `creature` WHERE `guid`=@GUIDSTART + 41) + 0.00001, 0, 0),

(@GUIDSTART + 42, 1, (SELECT `position_x` FROM `creature` WHERE `guid`=@GUIDSTART + 42), (SELECT `position_y` FROM `creature` WHERE `guid`=@GUIDSTART + 42), (SELECT `position_z` FROM `creature` WHERE `guid`=@GUIDSTART + 42), @TIMEMINE + @DELTA * ROUND(RAND(), 3), 0, 0, 0, 0, 0, 0, 28, 0, 0, (SELECT `orientation` FROM `creature` WHERE `guid`=@GUIDSTART + 42), 0, 0),
(@GUIDSTART + 42, 2, (SELECT `position_x` FROM `creature` WHERE `guid`=@GUIDSTART + 42), (SELECT `position_y` FROM `creature` WHERE `guid`=@GUIDSTART + 42), (SELECT `position_z` FROM `creature` WHERE `guid`=@GUIDSTART + 42), @TIMESTAY, @SCRIPTID, 0, 0, 0, 0, 0, 0, 0, 0, (SELECT `orientation` FROM `creature` WHERE `guid`=@GUIDSTART + 42) + 0.00001, 0, 0),

(@GUIDSTART + 43, 1, (SELECT `position_x` FROM `creature` WHERE `guid`=@GUIDSTART + 43), (SELECT `position_y` FROM `creature` WHERE `guid`=@GUIDSTART + 43), (SELECT `position_z` FROM `creature` WHERE `guid`=@GUIDSTART + 43), @TIMEMINE + @DELTA * ROUND(RAND(), 3), 0, 0, 0, 0, 0, 0, 28, 0, 0, (SELECT `orientation` FROM `creature` WHERE `guid`=@GUIDSTART + 43), 0, 0),
(@GUIDSTART + 43, 2, (SELECT `position_x` FROM `creature` WHERE `guid`=@GUIDSTART + 43), (SELECT `position_y` FROM `creature` WHERE `guid`=@GUIDSTART + 43), (SELECT `position_z` FROM `creature` WHERE `guid`=@GUIDSTART + 43), @TIMESTAY, @SCRIPTID, 0, 0, 0, 0, 0, 0, 0, 0, (SELECT `orientation` FROM `creature` WHERE `guid`=@GUIDSTART + 43) + 0.00001, 0, 0),

(@GUIDSTART + 44, 1, (SELECT `position_x` FROM `creature` WHERE `guid`=@GUIDSTART + 44), (SELECT `position_y` FROM `creature` WHERE `guid`=@GUIDSTART + 44), (SELECT `position_z` FROM `creature` WHERE `guid`=@GUIDSTART + 44), @TIMEMINE + @DELTA * ROUND(RAND(), 3), 0, 0, 0, 0, 0, 0, 28, 0, 0, (SELECT `orientation` FROM `creature` WHERE `guid`=@GUIDSTART + 44), 0, 0),
(@GUIDSTART + 44, 2, (SELECT `position_x` FROM `creature` WHERE `guid`=@GUIDSTART + 44), (SELECT `position_y` FROM `creature` WHERE `guid`=@GUIDSTART + 44), (SELECT `position_z` FROM `creature` WHERE `guid`=@GUIDSTART + 44), @TIMESTAY, @SCRIPTID, 0, 0, 0, 0, 0, 0, 0, 0, (SELECT `orientation` FROM `creature` WHERE `guid`=@GUIDSTART + 44) + 0.00001, 0, 0),

(@GUIDSTART + 45, 1, (SELECT `position_x` FROM `creature` WHERE `guid`=@GUIDSTART + 45), (SELECT `position_y` FROM `creature` WHERE `guid`=@GUIDSTART + 45), (SELECT `position_z` FROM `creature` WHERE `guid`=@GUIDSTART + 45), @TIMEMINE + @DELTA * ROUND(RAND(), 3), 0, 0, 0, 0, 0, 0, 28, 0, 0, (SELECT `orientation` FROM `creature` WHERE `guid`=@GUIDSTART + 45), 0, 0),
(@GUIDSTART + 45, 2, (SELECT `position_x` FROM `creature` WHERE `guid`=@GUIDSTART + 45), (SELECT `position_y` FROM `creature` WHERE `guid`=@GUIDSTART + 45), (SELECT `position_z` FROM `creature` WHERE `guid`=@GUIDSTART + 45), @TIMESTAY, @SCRIPTID, 0, 0, 0, 0, 0, 0, 0, 0, (SELECT `orientation` FROM `creature` WHERE `guid`=@GUIDSTART + 45) + 0.00001, 0, 0),

(@GUIDSTART + 46, 1, (SELECT `position_x` FROM `creature` WHERE `guid`=@GUIDSTART + 46), (SELECT `position_y` FROM `creature` WHERE `guid`=@GUIDSTART + 46), (SELECT `position_z` FROM `creature` WHERE `guid`=@GUIDSTART + 46), @TIMEMINE + @DELTA * ROUND(RAND(), 3), 0, 0, 0, 0, 0, 0, 28, 0, 0, (SELECT `orientation` FROM `creature` WHERE `guid`=@GUIDSTART + 46), 0, 0),
(@GUIDSTART + 46, 2, (SELECT `position_x` FROM `creature` WHERE `guid`=@GUIDSTART + 46), (SELECT `position_y` FROM `creature` WHERE `guid`=@GUIDSTART + 46), (SELECT `position_z` FROM `creature` WHERE `guid`=@GUIDSTART + 46), @TIMESTAY, @SCRIPTID, 0, 0, 0, 0, 0, 0, 0, 0, (SELECT `orientation` FROM `creature` WHERE `guid`=@GUIDSTART + 46) + 0.00001, 0, 0),

(@GUIDSTART + 47, 1, (SELECT `position_x` FROM `creature` WHERE `guid`=@GUIDSTART + 47), (SELECT `position_y` FROM `creature` WHERE `guid`=@GUIDSTART + 47), (SELECT `position_z` FROM `creature` WHERE `guid`=@GUIDSTART + 47), @TIMEMINE + @DELTA * ROUND(RAND(), 3), 0, 0, 0, 0, 0, 0, 28, 0, 0, (SELECT `orientation` FROM `creature` WHERE `guid`=@GUIDSTART + 47), 0, 0),
(@GUIDSTART + 47, 2, (SELECT `position_x` FROM `creature` WHERE `guid`=@GUIDSTART + 47), (SELECT `position_y` FROM `creature` WHERE `guid`=@GUIDSTART + 47), (SELECT `position_z` FROM `creature` WHERE `guid`=@GUIDSTART + 47), @TIMESTAY, @SCRIPTID, 0, 0, 0, 0, 0, 0, 0, 0, (SELECT `orientation` FROM `creature` WHERE `guid`=@GUIDSTART + 47) + 0.00001, 0, 0),

(@GUIDSTART + 48, 1, (SELECT `position_x` FROM `creature` WHERE `guid`=@GUIDSTART + 48), (SELECT `position_y` FROM `creature` WHERE `guid`=@GUIDSTART + 48), (SELECT `position_z` FROM `creature` WHERE `guid`=@GUIDSTART + 48), @TIMEMINE + @DELTA * ROUND(RAND(), 3), 0, 0, 0, 0, 0, 0, 28, 0, 0, (SELECT `orientation` FROM `creature` WHERE `guid`=@GUIDSTART + 48), 0, 0),
(@GUIDSTART + 48, 2, (SELECT `position_x` FROM `creature` WHERE `guid`=@GUIDSTART + 48), (SELECT `position_y` FROM `creature` WHERE `guid`=@GUIDSTART + 48), (SELECT `position_z` FROM `creature` WHERE `guid`=@GUIDSTART + 48), @TIMESTAY, @SCRIPTID, 0, 0, 0, 0, 0, 0, 0, 0, (SELECT `orientation` FROM `creature` WHERE `guid`=@GUIDSTART + 48) + 0.00001, 0, 0),

(@GUIDSTART + 49, 1, (SELECT `position_x` FROM `creature` WHERE `guid`=@GUIDSTART + 49), (SELECT `position_y` FROM `creature` WHERE `guid`=@GUIDSTART + 49), (SELECT `position_z` FROM `creature` WHERE `guid`=@GUIDSTART + 49), @TIMEMINE + @DELTA * ROUND(RAND(), 3), 0, 0, 0, 0, 0, 0, 28, 0, 0, (SELECT `orientation` FROM `creature` WHERE `guid`=@GUIDSTART + 49), 0, 0),
(@GUIDSTART + 49, 2, (SELECT `position_x` FROM `creature` WHERE `guid`=@GUIDSTART + 49), (SELECT `position_y` FROM `creature` WHERE `guid`=@GUIDSTART + 49), (SELECT `position_z` FROM `creature` WHERE `guid`=@GUIDSTART + 49), @TIMESTAY, @SCRIPTID, 0, 0, 0, 0, 0, 0, 0, 0, (SELECT `orientation` FROM `creature` WHERE `guid`=@GUIDSTART + 49) + 0.00001, 0, 0),

(@GUIDSTART + 50, 1, (SELECT `position_x` FROM `creature` WHERE `guid`=@GUIDSTART + 50), (SELECT `position_y` FROM `creature` WHERE `guid`=@GUIDSTART + 50), (SELECT `position_z` FROM `creature` WHERE `guid`=@GUIDSTART + 50), @TIMEMINE + @DELTA * ROUND(RAND(), 3), 0, 0, 0, 0, 0, 0, 28, 0, 0, (SELECT `orientation` FROM `creature` WHERE `guid`=@GUIDSTART + 50), 0, 0),
(@GUIDSTART + 50, 2, (SELECT `position_x` FROM `creature` WHERE `guid`=@GUIDSTART + 50), (SELECT `position_y` FROM `creature` WHERE `guid`=@GUIDSTART + 50), (SELECT `position_z` FROM `creature` WHERE `guid`=@GUIDSTART + 50), @TIMESTAY, @SCRIPTID, 0, 0, 0, 0, 0, 0, 0, 0, (SELECT `orientation` FROM `creature` WHERE `guid`=@GUIDSTART + 50) + 0.00001, 0, 0),

(@GUIDSTART + 51, 1, (SELECT `position_x` FROM `creature` WHERE `guid`=@GUIDSTART + 51), (SELECT `position_y` FROM `creature` WHERE `guid`=@GUIDSTART + 51), (SELECT `position_z` FROM `creature` WHERE `guid`=@GUIDSTART + 51), @TIMEMINE + @DELTA * ROUND(RAND(), 3), 0, 0, 0, 0, 0, 0, 28, 0, 0, (SELECT `orientation` FROM `creature` WHERE `guid`=@GUIDSTART + 51), 0, 0),
(@GUIDSTART + 51, 2, (SELECT `position_x` FROM `creature` WHERE `guid`=@GUIDSTART + 51), (SELECT `position_y` FROM `creature` WHERE `guid`=@GUIDSTART + 51), (SELECT `position_z` FROM `creature` WHERE `guid`=@GUIDSTART + 51), @TIMESTAY, @SCRIPTID, 0, 0, 0, 0, 0, 0, 0, 0, (SELECT `orientation` FROM `creature` WHERE `guid`=@GUIDSTART + 51) + 0.00001, 0, 0),

(@GUIDSTART + 52, 1, (SELECT `position_x` FROM `creature` WHERE `guid`=@GUIDSTART + 52), (SELECT `position_y` FROM `creature` WHERE `guid`=@GUIDSTART + 52), (SELECT `position_z` FROM `creature` WHERE `guid`=@GUIDSTART + 52), @TIMEMINE + @DELTA * ROUND(RAND(), 3), 0, 0, 0, 0, 0, 0, 28, 0, 0, (SELECT `orientation` FROM `creature` WHERE `guid`=@GUIDSTART + 52), 0, 0),
(@GUIDSTART + 52, 2, (SELECT `position_x` FROM `creature` WHERE `guid`=@GUIDSTART + 52), (SELECT `position_y` FROM `creature` WHERE `guid`=@GUIDSTART + 52), (SELECT `position_z` FROM `creature` WHERE `guid`=@GUIDSTART + 52), @TIMESTAY, @SCRIPTID, 0, 0, 0, 0, 0, 0, 0, 0, (SELECT `orientation` FROM `creature` WHERE `guid`=@GUIDSTART + 52) + 0.00001, 0, 0),

(@GUIDSTART + 53, 1, (SELECT `position_x` FROM `creature` WHERE `guid`=@GUIDSTART + 53), (SELECT `position_y` FROM `creature` WHERE `guid`=@GUIDSTART + 53), (SELECT `position_z` FROM `creature` WHERE `guid`=@GUIDSTART + 53), @TIMEMINE + @DELTA * ROUND(RAND(), 3), 0, 0, 0, 0, 0, 0, 28, 0, 0, (SELECT `orientation` FROM `creature` WHERE `guid`=@GUIDSTART + 53), 0, 0),
(@GUIDSTART + 53, 2, (SELECT `position_x` FROM `creature` WHERE `guid`=@GUIDSTART + 53), (SELECT `position_y` FROM `creature` WHERE `guid`=@GUIDSTART + 53), (SELECT `position_z` FROM `creature` WHERE `guid`=@GUIDSTART + 53), @TIMESTAY, @SCRIPTID, 0, 0, 0, 0, 0, 0, 0, 0, (SELECT `orientation` FROM `creature` WHERE `guid`=@GUIDSTART + 53) + 0.00001, 0, 0),

(@GUIDSTART + 54, 1, (SELECT `position_x` FROM `creature` WHERE `guid`=@GUIDSTART + 54), (SELECT `position_y` FROM `creature` WHERE `guid`=@GUIDSTART + 54), (SELECT `position_z` FROM `creature` WHERE `guid`=@GUIDSTART + 54), @TIMEMINE + @DELTA * ROUND(RAND(), 3), 0, 0, 0, 0, 0, 0, 28, 0, 0, (SELECT `orientation` FROM `creature` WHERE `guid`=@GUIDSTART + 54), 0, 0),
(@GUIDSTART + 54, 2, (SELECT `position_x` FROM `creature` WHERE `guid`=@GUIDSTART + 54), (SELECT `position_y` FROM `creature` WHERE `guid`=@GUIDSTART + 54), (SELECT `position_z` FROM `creature` WHERE `guid`=@GUIDSTART + 54), @TIMESTAY, @SCRIPTID, 0, 0, 0, 0, 0, 0, 0, 0, (SELECT `orientation` FROM `creature` WHERE `guid`=@GUIDSTART + 54) + 0.00001, 0, 0),

(@GUIDSTART + 55, 1, (SELECT `position_x` FROM `creature` WHERE `guid`=@GUIDSTART + 55), (SELECT `position_y` FROM `creature` WHERE `guid`=@GUIDSTART + 55), (SELECT `position_z` FROM `creature` WHERE `guid`=@GUIDSTART + 55), @TIMEMINE + @DELTA * ROUND(RAND(), 3), 0, 0, 0, 0, 0, 0, 28, 0, 0, (SELECT `orientation` FROM `creature` WHERE `guid`=@GUIDSTART + 55), 0, 0),
(@GUIDSTART + 55, 2, (SELECT `position_x` FROM `creature` WHERE `guid`=@GUIDSTART + 55), (SELECT `position_y` FROM `creature` WHERE `guid`=@GUIDSTART + 55), (SELECT `position_z` FROM `creature` WHERE `guid`=@GUIDSTART + 55), @TIMESTAY, @SCRIPTID, 0, 0, 0, 0, 0, 0, 0, 0, (SELECT `orientation` FROM `creature` WHERE `guid`=@GUIDSTART + 55) + 0.00001, 0, 0),

(@GUIDSTART + 56, 1, (SELECT `position_x` FROM `creature` WHERE `guid`=@GUIDSTART + 56), (SELECT `position_y` FROM `creature` WHERE `guid`=@GUIDSTART + 56), (SELECT `position_z` FROM `creature` WHERE `guid`=@GUIDSTART + 56), @TIMEMINE + @DELTA * ROUND(RAND(), 3), 0, 0, 0, 0, 0, 0, 28, 0, 0, (SELECT `orientation` FROM `creature` WHERE `guid`=@GUIDSTART + 56), 0, 0),
(@GUIDSTART + 56, 2, (SELECT `position_x` FROM `creature` WHERE `guid`=@GUIDSTART + 56), (SELECT `position_y` FROM `creature` WHERE `guid`=@GUIDSTART + 56), (SELECT `position_z` FROM `creature` WHERE `guid`=@GUIDSTART + 56), @TIMESTAY, @SCRIPTID, 0, 0, 0, 0, 0, 0, 0, 0, (SELECT `orientation` FROM `creature` WHERE `guid`=@GUIDSTART + 56) + 0.00001, 0, 0),

(@GUIDSTART + 57, 1, (SELECT `position_x` FROM `creature` WHERE `guid`=@GUIDSTART + 57), (SELECT `position_y` FROM `creature` WHERE `guid`=@GUIDSTART + 57), (SELECT `position_z` FROM `creature` WHERE `guid`=@GUIDSTART + 57), @TIMEMINE + @DELTA * ROUND(RAND(), 3), 0, 0, 0, 0, 0, 0, 28, 0, 0, (SELECT `orientation` FROM `creature` WHERE `guid`=@GUIDSTART + 57), 0, 0),
(@GUIDSTART + 57, 2, (SELECT `position_x` FROM `creature` WHERE `guid`=@GUIDSTART + 57), (SELECT `position_y` FROM `creature` WHERE `guid`=@GUIDSTART + 57), (SELECT `position_z` FROM `creature` WHERE `guid`=@GUIDSTART + 57), @TIMESTAY, @SCRIPTID, 0, 0, 0, 0, 0, 0, 0, 0, (SELECT `orientation` FROM `creature` WHERE `guid`=@GUIDSTART + 57) + 0.00001, 0, 0),

(@GUIDSTART + 58, 1, (SELECT `position_x` FROM `creature` WHERE `guid`=@GUIDSTART + 58), (SELECT `position_y` FROM `creature` WHERE `guid`=@GUIDSTART + 58), (SELECT `position_z` FROM `creature` WHERE `guid`=@GUIDSTART + 58), @TIMEMINE + @DELTA * ROUND(RAND(), 3), 0, 0, 0, 0, 0, 0, 28, 0, 0, (SELECT `orientation` FROM `creature` WHERE `guid`=@GUIDSTART + 58), 0, 0),
(@GUIDSTART + 58, 2, (SELECT `position_x` FROM `creature` WHERE `guid`=@GUIDSTART + 58), (SELECT `position_y` FROM `creature` WHERE `guid`=@GUIDSTART + 58), (SELECT `position_z` FROM `creature` WHERE `guid`=@GUIDSTART + 58), @TIMESTAY, @SCRIPTID, 0, 0, 0, 0, 0, 0, 0, 0, (SELECT `orientation` FROM `creature` WHERE `guid`=@GUIDSTART + 58) + 0.00001, 0, 0),

(@GUIDSTART + 59, 1, (SELECT `position_x` FROM `creature` WHERE `guid`=@GUIDSTART + 59), (SELECT `position_y` FROM `creature` WHERE `guid`=@GUIDSTART + 59), (SELECT `position_z` FROM `creature` WHERE `guid`=@GUIDSTART + 59), @TIMEMINE + @DELTA * ROUND(RAND(), 3), 0, 0, 0, 0, 0, 0, 28, 0, 0, (SELECT `orientation` FROM `creature` WHERE `guid`=@GUIDSTART + 59), 0, 0),
(@GUIDSTART + 59, 2, (SELECT `position_x` FROM `creature` WHERE `guid`=@GUIDSTART + 59), (SELECT `position_y` FROM `creature` WHERE `guid`=@GUIDSTART + 59), (SELECT `position_z` FROM `creature` WHERE `guid`=@GUIDSTART + 59), @TIMESTAY, @SCRIPTID, 0, 0, 0, 0, 0, 0, 0, 0, (SELECT `orientation` FROM `creature` WHERE `guid`=@GUIDSTART + 59) + 0.00001, 0, 0),

(@GUIDSTART + 60, 1, (SELECT `position_x` FROM `creature` WHERE `guid`=@GUIDSTART + 60), (SELECT `position_y` FROM `creature` WHERE `guid`=@GUIDSTART + 60), (SELECT `position_z` FROM `creature` WHERE `guid`=@GUIDSTART + 60), @TIMEMINE + @DELTA * ROUND(RAND(), 3), 0, 0, 0, 0, 0, 0, 28, 0, 0, (SELECT `orientation` FROM `creature` WHERE `guid`=@GUIDSTART + 60), 0, 0),
(@GUIDSTART + 60, 2, (SELECT `position_x` FROM `creature` WHERE `guid`=@GUIDSTART + 60), (SELECT `position_y` FROM `creature` WHERE `guid`=@GUIDSTART + 60), (SELECT `position_z` FROM `creature` WHERE `guid`=@GUIDSTART + 60), @TIMESTAY, @SCRIPTID, 0, 0, 0, 0, 0, 0, 0, 0, (SELECT `orientation` FROM `creature` WHERE `guid`=@GUIDSTART + 60) + 0.00001, 0, 0),

(@GUIDSTART + 61, 1, (SELECT `position_x` FROM `creature` WHERE `guid`=@GUIDSTART + 61), (SELECT `position_y` FROM `creature` WHERE `guid`=@GUIDSTART + 61), (SELECT `position_z` FROM `creature` WHERE `guid`=@GUIDSTART + 61), @TIMEMINE + @DELTA * ROUND(RAND(), 3), 0, 0, 0, 0, 0, 0, 28, 0, 0, (SELECT `orientation` FROM `creature` WHERE `guid`=@GUIDSTART + 61), 0, 0),
(@GUIDSTART + 61, 2, (SELECT `position_x` FROM `creature` WHERE `guid`=@GUIDSTART + 61), (SELECT `position_y` FROM `creature` WHERE `guid`=@GUIDSTART + 61), (SELECT `position_z` FROM `creature` WHERE `guid`=@GUIDSTART + 61), @TIMESTAY, @SCRIPTID, 0, 0, 0, 0, 0, 0, 0, 0, (SELECT `orientation` FROM `creature` WHERE `guid`=@GUIDSTART + 61) + 0.00001, 0, 0),

(@GUIDSTART + 62, 1, (SELECT `position_x` FROM `creature` WHERE `guid`=@GUIDSTART + 62), (SELECT `position_y` FROM `creature` WHERE `guid`=@GUIDSTART + 62), (SELECT `position_z` FROM `creature` WHERE `guid`=@GUIDSTART + 62), @TIMEMINE + @DELTA * ROUND(RAND(), 3), 0, 0, 0, 0, 0, 0, 28, 0, 0, (SELECT `orientation` FROM `creature` WHERE `guid`=@GUIDSTART + 62), 0, 0),
(@GUIDSTART + 62, 2, (SELECT `position_x` FROM `creature` WHERE `guid`=@GUIDSTART + 62), (SELECT `position_y` FROM `creature` WHERE `guid`=@GUIDSTART + 62), (SELECT `position_z` FROM `creature` WHERE `guid`=@GUIDSTART + 62), @TIMESTAY, @SCRIPTID, 0, 0, 0, 0, 0, 0, 0, 0, (SELECT `orientation` FROM `creature` WHERE `guid`=@GUIDSTART + 62) + 0.00001, 0, 0),

(@GUIDSTART + 63, 1, (SELECT `position_x` FROM `creature` WHERE `guid`=@GUIDSTART + 63), (SELECT `position_y` FROM `creature` WHERE `guid`=@GUIDSTART + 63), (SELECT `position_z` FROM `creature` WHERE `guid`=@GUIDSTART + 63), @TIMEMINE + @DELTA * ROUND(RAND(), 3), 0, 0, 0, 0, 0, 0, 28, 0, 0, (SELECT `orientation` FROM `creature` WHERE `guid`=@GUIDSTART + 63), 0, 0),
(@GUIDSTART + 63, 2, (SELECT `position_x` FROM `creature` WHERE `guid`=@GUIDSTART + 63), (SELECT `position_y` FROM `creature` WHERE `guid`=@GUIDSTART + 63), (SELECT `position_z` FROM `creature` WHERE `guid`=@GUIDSTART + 63), @TIMESTAY, @SCRIPTID, 0, 0, 0, 0, 0, 0, 0, 0, (SELECT `orientation` FROM `creature` WHERE `guid`=@GUIDSTART + 63) + 0.00001, 0, 0),

(@GUIDSTART + 64, 1, (SELECT `position_x` FROM `creature` WHERE `guid`=@GUIDSTART + 64), (SELECT `position_y` FROM `creature` WHERE `guid`=@GUIDSTART + 64), (SELECT `position_z` FROM `creature` WHERE `guid`=@GUIDSTART + 64), @TIMEMINE + @DELTA * ROUND(RAND(), 3), 0, 0, 0, 0, 0, 0, 28, 0, 0, (SELECT `orientation` FROM `creature` WHERE `guid`=@GUIDSTART + 64), 0, 0),
(@GUIDSTART + 64, 2, (SELECT `position_x` FROM `creature` WHERE `guid`=@GUIDSTART + 64), (SELECT `position_y` FROM `creature` WHERE `guid`=@GUIDSTART + 64), (SELECT `position_z` FROM `creature` WHERE `guid`=@GUIDSTART + 64), @TIMESTAY, @SCRIPTID, 0, 0, 0, 0, 0, 0, 0, 0, (SELECT `orientation` FROM `creature` WHERE `guid`=@GUIDSTART + 64) + 0.00001, 0, 0),

(@GUIDSTART + 65, 1, (SELECT `position_x` FROM `creature` WHERE `guid`=@GUIDSTART + 65), (SELECT `position_y` FROM `creature` WHERE `guid`=@GUIDSTART + 65), (SELECT `position_z` FROM `creature` WHERE `guid`=@GUIDSTART + 65), @TIMEMINE + @DELTA * ROUND(RAND(), 3), 0, 0, 0, 0, 0, 0, 28, 0, 0, (SELECT `orientation` FROM `creature` WHERE `guid`=@GUIDSTART + 65), 0, 0),
(@GUIDSTART + 65, 2, (SELECT `position_x` FROM `creature` WHERE `guid`=@GUIDSTART + 65), (SELECT `position_y` FROM `creature` WHERE `guid`=@GUIDSTART + 65), (SELECT `position_z` FROM `creature` WHERE `guid`=@GUIDSTART + 65), @TIMESTAY, @SCRIPTID, 0, 0, 0, 0, 0, 0, 0, 0, (SELECT `orientation` FROM `creature` WHERE `guid`=@GUIDSTART + 65) + 0.00001, 0, 0),

(@GUIDSTART + 66, 1, (SELECT `position_x` FROM `creature` WHERE `guid`=@GUIDSTART + 66), (SELECT `position_y` FROM `creature` WHERE `guid`=@GUIDSTART + 66), (SELECT `position_z` FROM `creature` WHERE `guid`=@GUIDSTART + 66), @TIMEMINE + @DELTA * ROUND(RAND(), 3), 0, 0, 0, 0, 0, 0, 28, 0, 0, (SELECT `orientation` FROM `creature` WHERE `guid`=@GUIDSTART + 66), 0, 0),
(@GUIDSTART + 66, 2, (SELECT `position_x` FROM `creature` WHERE `guid`=@GUIDSTART + 66), (SELECT `position_y` FROM `creature` WHERE `guid`=@GUIDSTART + 66), (SELECT `position_z` FROM `creature` WHERE `guid`=@GUIDSTART + 66), @TIMESTAY, @SCRIPTID, 0, 0, 0, 0, 0, 0, 0, 0, (SELECT `orientation` FROM `creature` WHERE `guid`=@GUIDSTART + 66) + 0.00001, 0, 0),

(@GUIDSTART + 67, 1, (SELECT `position_x` FROM `creature` WHERE `guid`=@GUIDSTART + 67), (SELECT `position_y` FROM `creature` WHERE `guid`=@GUIDSTART + 67), (SELECT `position_z` FROM `creature` WHERE `guid`=@GUIDSTART + 67), @TIMEMINE + @DELTA * ROUND(RAND(), 3), 0, 0, 0, 0, 0, 0, 28, 0, 0, (SELECT `orientation` FROM `creature` WHERE `guid`=@GUIDSTART + 67), 0, 0),
(@GUIDSTART + 67, 2, (SELECT `position_x` FROM `creature` WHERE `guid`=@GUIDSTART + 67), (SELECT `position_y` FROM `creature` WHERE `guid`=@GUIDSTART + 67), (SELECT `position_z` FROM `creature` WHERE `guid`=@GUIDSTART + 67), @TIMESTAY, @SCRIPTID, 0, 0, 0, 0, 0, 0, 0, 0, (SELECT `orientation` FROM `creature` WHERE `guid`=@GUIDSTART + 67) + 0.00001, 0, 0),

(@GUIDSTART + 68, 1, (SELECT `position_x` FROM `creature` WHERE `guid`=@GUIDSTART + 68), (SELECT `position_y` FROM `creature` WHERE `guid`=@GUIDSTART + 68), (SELECT `position_z` FROM `creature` WHERE `guid`=@GUIDSTART + 68), @TIMEMINE + @DELTA * ROUND(RAND(), 3), 0, 0, 0, 0, 0, 0, 28, 0, 0, (SELECT `orientation` FROM `creature` WHERE `guid`=@GUIDSTART + 68), 0, 0),
(@GUIDSTART + 68, 2, (SELECT `position_x` FROM `creature` WHERE `guid`=@GUIDSTART + 68), (SELECT `position_y` FROM `creature` WHERE `guid`=@GUIDSTART + 68), (SELECT `position_z` FROM `creature` WHERE `guid`=@GUIDSTART + 68), @TIMESTAY, @SCRIPTID, 0, 0, 0, 0, 0, 0, 0, 0, (SELECT `orientation` FROM `creature` WHERE `guid`=@GUIDSTART + 68) + 0.00001, 0, 0),

(@GUIDSTART + 69, 1, (SELECT `position_x` FROM `creature` WHERE `guid`=@GUIDSTART + 69), (SELECT `position_y` FROM `creature` WHERE `guid`=@GUIDSTART + 69), (SELECT `position_z` FROM `creature` WHERE `guid`=@GUIDSTART + 69), @TIMEMINE + @DELTA * ROUND(RAND(), 3), 0, 0, 0, 0, 0, 0, 28, 0, 0, (SELECT `orientation` FROM `creature` WHERE `guid`=@GUIDSTART + 69), 0, 0),
(@GUIDSTART + 69, 2, (SELECT `position_x` FROM `creature` WHERE `guid`=@GUIDSTART + 69), (SELECT `position_y` FROM `creature` WHERE `guid`=@GUIDSTART + 69), (SELECT `position_z` FROM `creature` WHERE `guid`=@GUIDSTART + 69), @TIMESTAY, @SCRIPTID, 0, 0, 0, 0, 0, 0, 0, 0, (SELECT `orientation` FROM `creature` WHERE `guid`=@GUIDSTART + 69) + 0.00001, 0, 0);