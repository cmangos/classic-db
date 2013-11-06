-- Added missing spawns for creatures in Blackrock Spire - lower part
-- Thanks to Schmoozerd and UDB team for providing the data

-- Starting value for adding guid
SET @GUID := 160036;

-- Added missing spawns for creature 9044 (Scarshield Sentry) in Blackrock Spire
DELETE FROM `creature` WHERE `guid` BETWEEN @GUID + 1 AND @GUID + 4;
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `MovementType`, `curhealth`) VALUES
(@GUID + 1, 9044, 0, -7546.973, -1279.601, 273.1603, 2.859629, 120, 0, 0, 7311),
(@GUID + 2, 9044, 0, -7573.399, -1279.34, 278.1881, 0.07181535, 120, 0, 0, 7311),
(@GUID + 3, 9044, 0, -7548.781, -1276.794, 273.1617, -0.8619677, 120, 0, 0, 7311),
(@GUID + 4, 9044, 0, -7551.301, -1278.323, 250.5321, 6.164817, 120, 0, 0, 7311);

-- Added missing spawns for creature 9045 (Scarshield Acolyte) in Blackrock Spire
DELETE FROM `creature` WHERE `guid` BETWEEN @GUID + 5 AND @GUID + 13;
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `MovementType`, `curhealth`, `curmana`) VALUES
(@GUID + 5, 9045, 229, 8.43384, -253.3768, 65.4404, 5.462881, 10800, 0, 0, 5890, 2041),
(@GUID + 6, 9045, 229, 17.80307, -277.089, 65.37582, 1.129285, 10800, 4, 1, 5890, 2041),
(@GUID + 7, 9045, 229, 57.83828, -310.1315, 54.00148, 3.577925, 10800, 0, 0, 5890, 2041),
(@GUID + 8, 9045, 229, 80.08586, -353.8658, 60.70203, 4.120926, 10800, 5, 1, 5890, 2041),
(@GUID + 9, 9045, 229, 81.98186, -315.5612, 55.78426, 5.854764, 10800, 4, 1, 5890, 2041),
(@GUID + 10, 9045, 229, 48.06245, -257.4069, 65.45917, 0.418879, 10800, 0, 0, 5890, 2041),
(@GUID + 11, 9045, 229, 107.6331, -311.3865, 54.00366, 2.670354, 10800, 0, 0, 5890, 2041),
(@GUID + 12, 9045, 229, 29.09916, -396.4953, 48.80111, 4.537856, 10800, 0, 0, 5890, 2041),
(@GUID + 13, 9045, 229, 107.4123, -329.5834, 54.00327, 5.201081, 10800, 0, 0, 5890, 2041);

-- Added missing spawns for creature 9097 (Scarshield Legionnaire) in Blackrock Spire
DELETE FROM `creature` WHERE `guid` BETWEEN @GUID + 14 AND @GUID + 42;
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `MovementType`, `curhealth`) VALUES
(@GUID + 14, 9097, 229, 69.6397, -278.3183, 60.67765, 0.296706, 10800, 0, 0, 7557),
(@GUID + 15, 9097, 229, 9.058154, -257.7314, 65.41364, 0.6981317, 10800, 0, 0, 7557),
(@GUID + 16, 9097, 229, 90.22491, -280.7222, 60.68182, 4.834562, 10800, 0, 0, 7557),
(@GUID + 17, 9097, 229, 66.23844, -274.5316, 60.73464, 6.230825, 10800, 0, 0, 7557),
(@GUID + 18, 9097, 229, 18.86105, -285.759, 65.37582, 5.177057, 10800, 5, 1, 7557),
(@GUID + 19, 9097, 229, 12.90286, -279.0003, 65.38291, 5.199259, 10800, 5, 1, 7557),
(@GUID + 20, 9097, 229, 52.84441, -312.8106, 54.00366, 0.5759587, 10800, 0, 0, 7557), -- Movementtype = 2 GUID_MASTER1
(@GUID + 21, 9097, 229, 52.18427, -307.34, 54.00189, 5.253441, 10800, 0, 0, 7557),    -- Movementtype = 2 GUID_SLAVE1
(@GUID + 22, 9097, 229, 46.6778, -270.9059, 65.36562, 3.293818, 10800, 0, 0, 7557),
(@GUID + 23, 9097, 229, 45.11492, -280.8444, 65.35492, 4.180923, 10800, 4, 1, 7557),
(@GUID + 24, 9097, 229, 74.97691, -319.4708, 55.78439, 6.201612, 10800, 4, 1, 7557),
(@GUID + 25, 9097, 229, 51.89088, -287.3514, 65.45917, 3.036873, 10800, 0, 0, 7557),
(@GUID + 26, 9097, 229, 70.94958, -282.0711, 60.60775, 3.892084, 10800, 0, 0, 7557),  -- Movementtype = 2 GUID_SOLO
(@GUID + 27, 9097, 229, 80.2358, -286.3082, 60.6998, 0.1527648, 10800, 0, 0, 7557),   -- Movementtype = 2 GUID_MASTER2
(@GUID + 28, 9097, 229, 83.9848, -287.0400, 60.6998, 3.38829, 10800, 0, 0, 7557),     -- Movementtype = 2 GUID_SLAVE2
(@GUID + 29, 9097, 229, 71.37296, -346.4238, 60.70203, 6.128241, 10800, 0, 0, 7557), 
(@GUID + 30, 9097, 229, 51.745, -307.420, 53.919, 5.666, 10800, 0, 0, 7557),
(@GUID + 32, 9097, 229, 8.843101, -326.5231, 48.85731, 5.113815, 10800, 0, 0, 7557),
(@GUID + 33, 9097, 229, 81.61091, -325.3407, 55.86715, 1.797689, 10800, 0, 0, 7557),
(@GUID + 34, 9097, 229, 30.91957, -399.6827, 48.78682, 0.6985539, 10800, 0, 0, 7557),
(@GUID + 35, 9097, 229, 90.11126, -354.3475, 60.78536, 4.485496, 10800, 0, 0, 7557),
(@GUID + 36, 9097, 229, 91.53687, -361.906, 60.78536, 2.251475, 10800, 4, 1, 7557),
(@GUID + 37, 9097, 229, 102.1723, -308.9317, 54.00215, 5.916666, 10800, 0, 0, 7557),
(@GUID + 38, 9097, 229, 107.0239, -306.3141, 54.00366, 4.223697, 10800, 0, 0, 7557),
(@GUID + 39, 9097, 229, 94.65439, -275.0468, 60.7526, 3.141593, 10800, 0, 0, 7557),
(@GUID + 40, 9097, 229, 107.2788, -324.2466, 54.00367, 3.508112, 10800, 0, 0, 7557),
(@GUID + 41, 9097, 229, 14.24938, -254.1398, 65.43549, 3.682645, 10800, 0, 0, 7557),
(@GUID + 42, 9097, 229, 6.909, -271.9775, 65.41073, 0.2094395, 10800, 0, 0, 7557);

-- Added missing spawns for creature 9098 (Scarshield Spellbinder) in Blackrock Spire
DELETE FROM `creature` WHERE `guid` BETWEEN @GUID + 43 AND @GUID + 51;
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `MovementType`, `curhealth`, `curmana`) VALUES
(@GUID + 43, 9098, 229, 57.5052, -314.9222, 54.00192, 2.268928, 10800, 0, 0, 5961, 4082),
(@GUID + 44, 9098, 229, 44.07529, -274.9777, 65.3712, 2.988129, 10800, 4, 1, 5961, 4082),
(@GUID + 45, 9098, 229, 85.10539, -358.0431, 60.70203, 3.215883, 10800, 5, 1, 5961, 4082),
(@GUID + 46, 9098, 229, 52.41355, -255.3669, 65.45917, 3.630285, 10800, 0, 0, 5961, 4082),
(@GUID + 47, 9098, 229, 12.89297, -329.7429, 48.84724, 3.159046, 10800, 0, 0, 5961, 4082),
(@GUID + 48, 9098, 229, 102.4296, -314.6978, 54.00119, 1.064651, 10800, 0, 0, 5961, 4082),
(@GUID + 49, 9098, 229, 26.08383, -398.5821, 48.82478, 6.073746, 10800, 0, 0, 5961, 4082),
(@GUID + 50, 9098, 229, 105.5064, -332.5773, 54.00275, 6.230825, 10800, 0, 0, 5961, 4082),
(@GUID + 51, 9098, 229, 14.12158, -259.2284, 65.43308, 2.356194, 10800, 0, 0, 5961, 4082);

-- Added missing spawns for creature 9197 (Spirestone Battle Mage) in Blackrock Spire
DELETE FROM `creature` WHERE `guid` BETWEEN @GUID + 52 AND @GUID + 54;
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `MovementType`, `curhealth`, `curmana`) VALUES
(@GUID + 52, 9197, 229, -22.34307, -395.9469, 48.62261, 2.792395, 10800, 0, 0, 11155, 11445),
(@GUID + 53, 9197, 229, -16.89405, -385.1013, 48.95151, 0.5934119, 10800, 0, 0, 11155, 11445),
(@GUID + 54, 9197, 229, -40.63613, -372.2156, 50.56116, 0.8552113, 10800, 0, 0, 11155, 11445);

-- Added missing spawns for creature 9199 (Spirestone Enforcer) in Blackrock Spire
DELETE FROM `creature` WHERE `guid` = 43509;
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `MovementType`, `curhealth`) VALUES
(43509, 9199, 229, -42.51399, -363.243, 31.70159, 4.258604, 10800, 0, 0, 12668);

-- Added missing spawns for creature 9216 (Spirestone Warlord) in Blackrock Spire
DELETE FROM `creature` WHERE `guid` = 45095;
DELETE FROM `creature` WHERE `guid` BETWEEN @GUID + 55 AND @GUID + 57;
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `MovementType`, `curhealth`) VALUES
(@GUID + 55, 9216, 229, -29.91201, -388.9969, 48.71117, 1.815142, 10800, 0, 0, 13936),
(@GUID + 56, 9216, 229, -44.31393, -364.7873, 52.05709, 1.832596, 10800, 0, 0, 13936),
(@GUID + 57, 9216, 229, -22.85546, -377.8695, 49.04873, 6.161012, 10800, 0, 0, 13936);

-- Added missing spawns for creature 9257 (Scarshield Warlock) in Blackrock Spire
DELETE FROM `creature` WHERE `guid` = @GUID + 58;
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `MovementType`, `curhealth`, `curmana`) VALUES
(@GUID + 58, 9257, 229, 9.251252, -332.5572, 48.79505, 1.239184, 10800, 0, 0, 5898, 2041);

-- Added missing spawns for creature 9258 (Scarshield Raider) in Blackrock Spire
DELETE FROM `creature` WHERE `guid` BETWEEN @GUID + 59 AND @GUID + 60;
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `MovementType`, `curhealth`) VALUES
(@GUID + 59, 9258, 229, 42.24044, -400.8996, 48.78902, 1.396263, 10800, 0, 0, 7527),
(@GUID + 60, 9258, 229, 18.63352, -319.5635, 48.92536, 4.694936, 10800, 0, 0, 7527);

-- Added missing spawns for creature 9416 (Scarshield Worg) in Blackrock Spire
DELETE FROM `creature` WHERE `guid` BETWEEN @GUID + 61 AND @GUID + 64;
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `MovementType`, `curhealth`) VALUES
(@GUID + 61, 9416, 229, 44.24654, -401.7499, 48.84818, 1.413717, 10800, 0, 0, 3049),
(@GUID + 62, 9416, 229, 39.97576, -401.308, 48.73395, 1.37881, 10800, 0, 0, 3049),
(@GUID + 63, 9416, 229, 15.70567, -319.6948, 48.92964, 4.817109, 10800, 0, 0, 3049),
(@GUID + 64, 9416, 229, 21.62635, -319.3075, 48.92183, 4.590216, 10800, 0, 0, 3049);

-- Added missing spawns for creature 9583 (Bloodaxe Veteran) in Blackrock Spire
DELETE FROM `creature` WHERE `guid` BETWEEN @GUID + 65 AND @GUID + 66;
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `MovementType`, `curhealth`) VALUES
(@GUID + 65, 9583, 229, -46.32569, -299.108, 71.02393, 4.764749, 10800, 0, 0, 8569),
(@GUID + 66, 9583, 229, -56.33363, -299.7574, 71.02393, 4.031711, 10800, 0, 0, 8569);

-- Added missing spawns for creature 9692 (Bloodaxe Raider) in Blackrock Spire
DELETE FROM `creature` WHERE `guid` = @GUID + 67;
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `MovementType`, `curhealth`) VALUES
(@GUID + 67, 9692, 229, -48.35127, -331.6649, 71.03225, 2.984513, 10800, 0, 0, 8227);

-- Added missing spawns for creature 9693 (Bloodaxe Evoker) in Blackrock Spire
DELETE FROM `creature` WHERE `guid` = @GUID + 68;
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `MovementType`, `curhealth`, `curmana`) VALUES
(@GUID + 68, 9693, 229, -60.75972, -336.9793, 71.02393, 5.323254, 10800, 0, 0, 6893, 2289);

-- Added missing spawns for creature 9696 (Bloodaxe Worg) in Blackrock Spire
DELETE FROM `creature` WHERE `guid` BETWEEN @GUID + 69 AND @GUID + 70;
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `MovementType`, `curhealth`) VALUES
(@GUID + 69, 9696, 229, -48.09798, -329.2088, 71.03232, 3.071779, 10800, 0, 0, 2660),
(@GUID + 70, 9696, 229, -48.49498, -335.4435, 71.03133, 2.234021, 10800, 0, 0, 2660);

-- Added missing spawns for creature 10799 (Warosh) in Blackrock Spire
DELETE FROM `creature` WHERE `guid` = @GUID + 71;
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `MovementType`, `curhealth`) VALUES
(@GUID + 71, 10799, 229, 51.9856, -449.587, 27.2408, 3.36977, 10800, 0, 0, 3857);
