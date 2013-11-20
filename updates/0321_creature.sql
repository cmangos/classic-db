-- Added missing spawns for creatures in Blackrock Spire - upper part
-- Thanks to Schmoozerd and UDB team for providing the data
-- Small adjustements in Furnace done on the basis of the following sources:
-- http://www.youtube.com/watch?v=TBIW6H049O4
-- http://www.youtube.com/watch?v=asKYQoMPbks

-- Starting value for adding guid
SET @GUID := 160107;

-- Removed some creatures 9096 (Rage Talon Dragonspawn) used as placeholders in Blackrock Spire
DELETE FROM `creature` WHERE `guid` IN (40500, 40503); -- The Rookery
DELETE FROM `creature` WHERE `guid` IN (40495, 40496, 40497); -- Hall of Blackhand
-- Added missing creature 9096 (Rage Talon Dragonspawn) in Blackrock Spire
DELETE FROM `creature` WHERE `guid` BETWEEN @GUID + 1 AND @GUID + 21;
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `MovementType`) VALUES
(@GUID + 1, 9096, 229, 102.492, -284.08, 106.436, 4.725485, 10800, 0, 0),
(@GUID + 2, 9096, 229, 100.7426, -246.0053, 106.5189, 2.6529, 10800, 0, 0), -- Movementtype = 2 GUID 137106
(@GUID + 3, 9096, 229, 94.51865, -256.7027, 91.53693, 6.265732, 10800, 5, 1),
(@GUID + 4, 9096, 229, 101.678, -237.6665, 106.5189, 3.543018, 10800, 0, 0),
(@GUID + 5, 9096, 229, 96.17891, -268.5404, 91.53113, 1.37881, 10800, 5, 1),
(@GUID + 6, 9096, 229, 137.036, -318.309, 70.9563, 5.080409, 10800, 5, 1),
(@GUID + 7, 9096, 229, 150.6437, -315.3913, 70.95632, 5.666023, 10800, 5, 1), -- Movementtype = 2 GUID 137105
(@GUID + 8, 9096, 229, 195.7419, -314.7504, 76.88738, 3.929739, 10800, 5, 1),
(@GUID + 9, 9096, 229, 197.9655, -292.8118, 76.93224, 0.638528, 10800, 5, 1),
(@GUID + 10, 9096, 229, 136.2818, -308.6823, 111.0732, 0.2792527, 10800, 0, 0), -- Movementtype = 2 GUID 137109
(@GUID + 11, 9096, 229, 165.5209, -394.9214, 122.0586, 4.677482, 10800, 0, 0),
(@GUID + 12, 9096, 229, 167.774, -338.6554, 111.0341, 2.792527, 10800, 0, 0),
(@GUID + 13, 9096, 229, 157.819, -330.4721, 70.95632, 3.125505, 10800, 5, 1),
(@GUID + 14, 9096, 229, 138.3156, -395.0861, 122.0586, 4.764749, 10800, 0, 0),
(@GUID + 15, 9096, 229, 128.0204, -315.29, 111.0291, 2.984513, 10800, 0, 0),
(@GUID + 16, 9096, 229, 136.0372, -338.2075, 111.0436, 0.6457718, 10800, 0, 0),
(@GUID + 17, 9096, 229, 151.483, -266.668, 110.941, 1.569194, 10800, 0, 0),
(@GUID + 18, 9096, 229, 96.49685, -428.0061, 110.9230, 3.170282, 10800, 0, 0),
(@GUID + 19, 9096, 229, 97.91753, -333.6807, 106.5189, 1.937315, 10800, 0, 0),
(@GUID + 20, 9096, 229, 164.673, -366.137, 116.844, 0.0181202, 10800, 0, 0), -- patrol stairs to stadium
(@GUID + 21, 9096, 229, 103.0981, -364.3394, 116.9257, 5.864306, 10800, 0, 0);
UPDATE `creature` SET `curhealth` = 14250 WHERE `id` = 9096 AND `curhealth` = 1;

-- Removed some creatures 9817 (Blackhand Dreadweaver) used as placeholders in Blackrock Spire
DELETE FROM `creature` WHERE `guid` IN (40461); -- Hall of Blackhand
-- Added missing creature 9817 (Blackhand Dreadweaver) in Blackrock Spire
DELETE FROM `creature` WHERE `guid` BETWEEN @GUID + 22 AND @GUID + 41;
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `MovementType`) VALUES
(@GUID + 22, 9817, 229, 156.734, -340.574, 110.949, 5.090967, 10800, 0, 0),
(@GUID + 23, 9817, 229, 163.5033, -247.5138, 111.0259, 2.094395, 120, 0, 0),
(@GUID + 24, 9817, 229, 234.3241, -306.7642, 77.06055, 2.443461, 10800, 0, 0),
(@GUID + 25, 9817, 229, 232.8397, -297.4911, 77.05457, 4.08407, 10800, 0, 0),
(@GUID + 26, 9817, 229, 154.4286, -289.456, 71.02977, 6.178465, 10800, 0, 0),
(@GUID + 27, 9817, 229, 159.0432, -288.5959, 71.03185, 3.647738, 10800, 0, 0),
(@GUID + 28, 9817, 229, 125.0334, -346.3581, 71.04615, 1.605703, 10800, 0, 0),
(@GUID + 29, 9817, 229, 124.8717, -334.5226, 71.04309, 4.694936, 10800, 0, 0),
(@GUID + 30, 9817, 229, 159.0061, -347.0225, 71.01292, 0.8028514, 10800, 0, 0),
(@GUID + 31, 9817, 229, 190.6331, -263.9589, 77.03324, 0.9599311, 10800, 0, 0),
(@GUID + 32, 9817, 229, 128.3215, -295.0452, 71.06125, 3.874631, 10800, 0, 0),
(@GUID + 33, 9817, 229, 120.1661, -295.0486, 71.06183, 5.497787, 10800, 0, 0),
(@GUID + 34, 9817, 229, 215.5195, -337.7329, 76.95243, 3.106686, 10800, 0, 0),
(@GUID + 35, 9817, 229, 223.1600, -257.4265, 82.30175, 4.680404, 10800, 0, 0),
(@GUID + 36, 9817, 229, 228.4100, -257.5811, 82.12907, 4.680535, 10800, 0, 0),
(@GUID + 37, 9817, 229, 90.02657, -367.4056, 117.5185, 2.513274, 10800, 0, 0),
(@GUID + 38, 9817, 229, 172.8786, -365.4455, 116.9258, 2.844887, 10800, 0, 0),
(@GUID + 39, 9817, 229, 85.73412, -373.6244, 116.9257, 0.6806784, 10800, 0, 0),
(@GUID + 40, 9817, 229, 92.40339, -419.8844, 110.9227, 2.609511, 10800, 0, 0),
(@GUID + 41, 9817, 229, 178.1133, -364.0896, 116.9258, 4.956735, 10800, 0, 0);
UPDATE `creature` SET `curhealth` = 7018, `curmana` = 2369 WHERE `id` = 9817 AND `curhealth` = 1;

-- Removed some creatures 9818 (Blackhand Summoner) used as placeholders in Blackrock Spire
DELETE FROM `creature` WHERE `guid` IN (40253, 40260, 40261, 40262); -- Dragonspire Hall
DELETE FROM `creature` WHERE `guid` IN (40462); -- Hall of Blackhand
-- Added missing creature 9818 (Blackhand Summoner) in Blackrock Spire
DELETE FROM `creature` WHERE `guid` BETWEEN @GUID + 42 AND @GUID + 56;
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `MovementType`) VALUES
(@GUID + 42, 9818, 229, 159.2686, -245.6127, 111.0261, 6.230825, 10800, 0, 0),
(@GUID + 43, 9818, 229, 223.7043, -297.4843, 77.05145, 5.462881, 10800, 0, 0),
(@GUID + 44, 9818, 229, 224.405, -307.493, 77.05062, 0.7853982, 10800, 0, 0),
(@GUID + 45, 9818, 229, 156.8146, -283.3402, 71.03544, 1.989675, 10800, 0, 0),
(@GUID + 46, 9818, 229, 119.0283, -340.4413, 71.04595, 0.03490658, 10800, 0, 0),
(@GUID + 47, 9818, 229, 130.4315, -340.0683, 71.04311, 3.176499, 10800, 0, 0),
(@GUID + 48, 9818, 229, 188.856, -258.8772, 77.03584, 6.073746, 10800, 0, 0),
(@GUID + 49, 9818, 229, 121.7191, -301.5765, 71.05598, 0.7504916, 10800, 0, 0),
(@GUID + 50, 9818, 229, 151.1029, -358.37, 71.02174, 1.204277, 10800, 0, 0),
(@GUID + 51, 9818, 229, 212.1373, -339.7923, 76.98627, 1.151917, 10800, 0, 0),
(@GUID + 52, 9818, 229, 225.9884, -257.4800, 82.11469, 4.679579, 10800, 0, 0),
(@GUID + 53, 9818, 229, 85.63914, -366.9501, 116.9257, 0.8028514, 10800, 0, 0),
(@GUID + 54, 9818, 229, 169.9159, -367.1415, 116.9258, 1.134464, 10800, 0, 0),
(@GUID + 55, 9818, 229, 89.04749, -420.6036, 110.9223, 0.948393, 10800, 0, 0),
(@GUID + 56, 9818, 229, 179.9948, -365.8944, 116.9258, 3.193953, 10800, 0, 0);
UPDATE `creature` SET `curhealth` = 7009, `curmana` = 2369 WHERE `id` = 9818 AND `curhealth` = 1;
-- Updated position of some creatures 9818 (Blackhand Summoner)
UPDATE `creature` SET `position_x` = 222.6662, `position_y` = -334.5855, `orientation` = 3.071779 WHERE `guid` = 40263; -- Dragonspire Hall

-- Removed some creatures 9819 (Blackhand Veteran) used as placeholders in Blackrock Spire
DELETE FROM `creature` WHERE `guid` IN (40251, 40252, 40259, 40258, 40256, 40257, 40255, 40254, 40264, 40265, 40267, 40266, 40268, 40269, 40270, 40271); -- Dragonspire Hall
DELETE FROM `creature` WHERE `guid` IN (40460, 40469, 40470, 40468, 40466, 40481, 40471, 40482, 40467, 40488, 40487, 40489, 40490, 40486, 40485, 40483, 40484, 40459); -- Hall of Blackhand
DELETE FROM `creature` WHERE `guid` IN (40514, 40603, 40602, 40601, 41814, 40509, 40508, 40510, 40506, 40505, 40507, 41674, 41775, 41779); -- Blackrock Stadium
-- Added missing creature 9819 (Blackhand Veteran) in Blackrock Spire
DELETE FROM `creature` WHERE `guid` BETWEEN @GUID + 57 AND @GUID + 86;
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `MovementType`) VALUES
(@GUID + 57, 9819, 229, 168.4311, -288.5739, 111.0254, 2.9147, 10800, 0, 0),
(@GUID + 58, 9819, 229, 168.5296, -282.2072, 111.0254, 3.385939, 10800, 0, 0),
(@GUID + 59, 9819, 229, 168.4671, -285.3575, 111.0254, 3.159046, 10800, 0, 0),
(@GUID + 60, 9819, 229, 162.6301, -243.0735, 111.0344, 4.328416, 10800, 0, 0),
(@GUID + 61, 9819, 229, 142.8618, -272.0843, 111.0268, 6.213372, 10800, 0, 0),
(@GUID + 62, 9819, 229, 142.9729, -277.8913, 111.0271, 0.1396263, 10800, 0, 0),
(@GUID + 63, 9819, 229, 142.9025, -275.0304, 111.027, 0.03490658, 10800, 0, 0),
(@GUID + 64, 9819, 229, 156.7554, -271.7094, 110.9435, 4.770749, 10800, 0, 0),
-- (@GUID + 65, 9819, 229, 106.9291, -367.2758, 116.9257, 2.303835, 10800, 0, 0),
(@GUID + 66, 9819, 229, 157.2487, -291.7521, 71.0334, 1.692969, 10800, 0, 0),
(@GUID + 68, 9819, 229, 157.8796, -359.2906, 71.02557, 1.53589, 10800, 0, 0),
(@GUID + 69, 9819, 229, 194.6152, -255.9485, 77.01945, 4.310963, 10800, 0, 0),
(@GUID + 70, 9819, 229, 195.222, -271.9126, 77.03062, 3.787364, 10800, 0, 0),
(@GUID + 71, 9819, 229, 191.3293, -272.0098, 77.03062, 5.61996, 10800, 0, 0),
(@GUID + 72, 9819, 229, 122.0519, -293.1574, 71.06183, 5.497787, 10800, 0, 0),
(@GUID + 73, 9819, 229, 150.5144, -354.0578, 71.0197, 5.218534, 10800, 0, 0),
(@GUID + 75, 9819, 229, 141.7095, -299.4828, 111.0321, 0.03490658, 10800, 0, 0),
(@GUID + 76, 9819, 229, 141.7628, -302.2434, 111.0316, 0.122173, 10800, 0, 0),
(@GUID + 78, 9819, 229, 170.606, -362.3532, 116.9241, 4.869469, 10800, 0, 0),
(@GUID + 79, 9819, 229, 177.8305, -367.561, 116.9258, 1.151917, 10800, 0, 0),
(@GUID + 80, 9819, 229, 141.7921, -296.8099, 111.0314, 6.230825, 10800, 0, 0),
(@GUID + 81, 9819, 229, 161.5384, -320.8773, 111.0252, 3.124139, 10800, 0, 0),
(@GUID + 82, 9819, 229, 161.4713, -314.9981, 111.0225, 3.193953, 10800, 0, 0),
(@GUID + 83, 9819, 229, 161.4485, -317.8856, 111.0226, 3.176499, 10800, 0, 0),
(@GUID + 84, 9819, 229, 149.2005, -252.0454, 110.9076, 1.204277, 10800, 0, 0),
(@GUID + 85, 9819, 229, 91.74207, -416.0454  , 110.9227, 4.096267, 10800, 0, 0),
(@GUID + 86, 9819, 229, 149.2485, -249.0366, 110.9079, 4.869469, 10800, 0, 0);
UPDATE `creature` SET `curhealth` = 8807 WHERE `id` = 9819 AND `curhealth` = 1;

-- Added missing creature 10083 (Rage Talon Flamescale) in Blackrock Spire
DELETE FROM `creature` WHERE `guid` BETWEEN @GUID + 87 AND @GUID + 95;
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `MovementType`) VALUES
(@GUID + 87, 10083, 229, 161.3142, -393.6487, 122.0585, 4.869469, 10800, 0, 0),
(@GUID + 88, 10083, 229, 161.3396, -343.4354, 111.0393, 1.850049, 10800, 0, 0),
(@GUID + 89, 10083, 229, 142.5931, -342.274, 111.0407, 1.396263, 10800, 0, 0),
(@GUID + 90, 10083, 229, 141.6982, -394.8291, 122.0586, 4.869469, 10800, 0, 0),
(@GUID + 91, 10083, 229, 136.424, -316.1892, 111.0637, 0.01745329, 10800, 0, 0),
(@GUID + 92, 10083, 229, 128.2937, -309.3793, 111.0322, 3.351032, 10800, 0, 0),
(@GUID + 93, 10083, 229, 82.90606, -282.6959, 91.90397, 0.9113182, 10800, 0, 0),
(@GUID + 94, 10083, 229, 77.61088, -316.8818, 91.4465, 5.772816, 10800, 0, 0),
(@GUID + 95, 10083, 229, 102.8018, -332.1205, 106.5189, 2.216568, 10800, 0, 0);
UPDATE `creature` SET `curhealth` = 6737, `curmana` = 7860 WHERE `id` = 10083 AND `curhealth` = 1;

-- Removed creature 10264 (Solakar Flamewreath) used as placeholder in Blackrock Spire
DELETE FROM `creature` WHERE `id` = 10264; -- The Rookery


-- Removed some creatures 10317 (Blackhand Elite) used as placeholders in Blackrock Spire
DELETE FROM `creature` WHERE `guid` IN (42639, 42638); -- Hordemar City
DELETE FROM `creature` WHERE `guid` IN (42187, 42567, 42568); -- The Furnace
-- Added missing creature 10317 (Blackhand Elite) in Blackrock Spire
DELETE FROM `creature` WHERE `guid` BETWEEN @GUID + 96 AND @GUID + 109;
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `MovementType`) VALUES
(@GUID + 96, 10317, 229, 164.4339, -285.2661, 111.0259, 0, 10800, 0, 0),
(@GUID + 97, 10317, 229, -9.265498, -265.8029, 111.0268, 5.67232, 10800, 0, 0),
(@GUID + 98, 10317, 229, 30.4171, -332.9069, 111.0268, 4.764749, 10800, 0, 0),
(@GUID + 99, 10317, 229, 37.33317, -333.7789, 111.0268, 4.660029, 10800, 0, 0),
(@GUID + 100, 10317, 229, 24.43517, -268.222, 111.0268, 2.830616, 10800, 0, 0), -- patrol spire throne
(@GUID + 101, 10317, 229, 16.4384, -269.5063, 111.0268, 0.9215531, 10800, 0, 0), -- patrol spire throne
(@GUID + 102, 10317, 229, -13.77616, -274.9259, 111.0268, 5.899213, 10800, 0, 0),
(@GUID + 103, 10317, 229, 146.2753, -275.0636, 111.0268, 3.106686, 10800, 0, 0),
(@GUID + 104, 10317, 229, 158.3353, -317.9063, 110.7346, 0.03490658, 10800, 0, 0),
(@GUID + 105, 10317, 229, 144.6011, -299.4391, 110.7352, 3.089233, 10800, 0, 0),
(@GUID + 106, 10317, 229, 97.5200, -480.1342, 116.8424, 5.562609, 10800, 0, 0),
(@GUID + 107, 10317, 229, 38.3995, -449.6728, 110.948, 0.364839, 10800, 0, 0),
(@GUID + 108, 10317, 229, 34.6060, -492.8468, 110.9516, 4.411984, 10800, 0, 0),
(@GUID + 109, 10317, 229, 29.507, -385.5553, 110.7477, 5.427974, 10800, 0, 0);
UPDATE `creature` SET `curhealth` = 15217 WHERE `id` = 10317 AND `curhealth` = 1;

-- Removed some creatures 10742 (Blackhand Assassin) used as placeholders in Blackrock Spire
DELETE FROM `creature` WHERE `guid` IN (41819, 41820); -- Blackrock Stadium
DELETE FROM `creature` WHERE `guid` IN (42161, 42160, 42162); -- The Furnace
-- Added missing creature 10318 (Blackhand Assassin) in Blackrock Spire
DELETE FROM `creature` WHERE `guid` BETWEEN @GUID + 110 AND @GUID + 117 OR `guid` = @GUID + 149 ;
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `MovementType`) VALUES
(@GUID + 110, 10318, 229, 38.16403, -385.4801, 110.7979, 4.18879, 10800, 0, 0),
(@GUID + 111, 10318, 229, -8.141677, -341.8935, 111.0268, 0.7679449, 10800, 0, 0),
(@GUID + 112, 10318, 229, 40.84847, -453.1529, 110.941, 0.95231, 10800, 0, 0),
(@GUID + 113, 10318, 229, 29.73360, -492.83734, 110.9517, 5.056011, 10800, 0, 0),
(@GUID + 114, 10318, 229, 26.20737, -471.86945, 110.9556, 3.101782, 10800, 0, 0), -- sits
(@GUID + 115, 10318, 229, 21.38501, -471.68692, 110.9556, 0.001029, 10800, 0, 0), -- sits
(@GUID + 116, 10318, 229, 41.0048, -479.188, 110.932, 5.056011, 10800, 0, 0), -- patrol furnace
(@GUID + 149, 10318, 229, 100.64773, -480.0204, 116.8428, 3.133371, 10800, 0, 0),
(@GUID + 117, 10318, 229, -5.026564, -352.5426, 111.0268, 0.9599311, 10800, 0, 0);
UPDATE `creature` SET `curhealth` = 15176 WHERE `id` = 10318 AND `curhealth` = 1;

-- Removed some creatures 10319 (Blackhand Iron Guard) used as placeholders in Blackrock Spire
DELETE FROM `creature` WHERE `guid` IN (42652, 42651); -- Hordemar City
DELETE FROM `creature` WHERE `guid` IN (42664, 42663, 42662); -- Spire Throne
-- Added missing creature 10319 (Blackhand Iron Guard) in Blackrock Spire
DELETE FROM `creature` WHERE `guid` BETWEEN @GUID + 118 AND @GUID + 133 OR `guid` = @GUID + 148;
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `MovementType`) VALUES
(@GUID + 118, 10319, 229, 40.01204, -434.5385, 110.9586, 1.527626, 10800, 0, 0),
(@GUID + 119, 10319, 229, 27.93552, -434.2590, 110.9576, 1.553183, 10800, 0, 0),
(@GUID + 120, 10319, 229, -3.292078, -259.9108, 111.0268, 5.480334, 10800, 0, 0),
(@GUID + 121, 10319, 229, 40.66904, -330.5275, 111.0268, 4.625123, 10800, 0, 0),
(@GUID + 123, 10319, 229, 16.72593, -259.3386, 111.0275, 5.445958, 10800, 0, 0), -- patrol spire throne
(@GUID + 124, 10319, 229, -18.40473, -338.1862, 111.0268, 0.5934119, 10800, 0, 0),
(@GUID + 125, 10319, 229, 30.47825, -381.1838, 110.7657, 4.974188, 10800, 0, 0),
(@GUID + 126, 10319, 229, 122.0500, -471.5799, 117.0200, 4.68000, 10800, 0, 0),
(@GUID + 127, 10319, 229, 112.3700, -478.2800, 117.0200, 1.64000, 10800, 0, 0),
(@GUID + 128, 10319, 229, 11.56313, -465.0264, 110.9390, 2.76657, 10800, 0, 0),
(@GUID + 129, 10319, 229, 11.78699, -459.40210, 110.9390, 3.40745, 10800, 0, 0),
(@GUID + 130, 10319, 229, 23.24152, -470.1227, 110.9556, 4.591829, 10800, 0, 0), -- sits
(@GUID + 131, 10319, 229, 83.5422, -474.662, 116.842, 4.68000, 10800, 0, 0), -- patrol furnace
(@GUID + 132, 10319, 229, 33.2388, -451.331, 110.947, 1.64000, 10800, 0, 0), -- patrol furnace
(@GUID + 148, 10319, 229, 137.876, -449.432, 121.975, 1.64000, 10800, 0, 0), -- patrol stadium
(@GUID + 133, 10319, 229, 37.02849, -381.1516, 110.7679, 4.29351, 10800, 0, 0);
UPDATE `creature` SET `curhealth` = 12205 WHERE `id` = 10319 AND `curhealth` = 1;

-- Removed some creatures 10366 (Rage Talon Dragon Guard) used as placeholders in Blackrock Spire
DELETE FROM `creature` WHERE `guid` IN (40274, 40273, 40277, 40276, 40275); -- Dragonspire Hall
DELETE FROM `creature` WHERE `guid` IN (40498, 40499); -- The Rookery
DELETE FROM `creature` WHERE `guid` IN (40493, 40494, 40492, 40491); -- Blackhand Hall
DELETE FROM `creature` WHERE `guid` IN (40517, 40516, 40518, 41320, 41780); -- Blackrock Stadium
DELETE FROM `creature` WHERE `guid` IN (42161, 42155, 42156, 42157, 42153, 42154); -- The Furnace
-- Added missing creature 10366 (Rage Talon Dragon Guard) in Blackrock Spire
DELETE FROM `creature` WHERE `guid` BETWEEN @GUID + 134 AND @GUID + 135;
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `MovementType`) VALUES
(@GUID + 134, 10366, 229, 30.76082, -498.28076, 110.951, 1.603402, 10800, 0, 0),
(@GUID + 135, 10366, 229, 44.86666, -448.33764, 110.937, 3.66744, 10800, 0, 0);
UPDATE `creature` SET `curhealth` = 18116 WHERE `id` = 10366 AND `curhealth` = 1;

-- Removed some creatures 10742 (Blackhand Dragon Handler) used as placeholders in Blackrock Spire
DELETE FROM `creature` WHERE `guid` IN (45830); -- Hall of Blackhand
DELETE FROM `creature` WHERE `guid` IN (45829, 45828, 45826, 45827, 45823, 45824); -- Blackrock Stadium
DELETE FROM `creature` WHERE `guid` IN (45825); -- The Furnace

-- Removed some creatures 10371 (Rage Talon Captain) used as placeholders in Blackrock Spire
DELETE FROM `creature` WHERE `guid` IN (42572); -- The Furnace
-- Added missing creature 10371 (Rage Talon Captain) in Blackrock Spire
DELETE FROM `creature` WHERE `guid` BETWEEN @GUID + 136 AND @GUID + 140;
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `MovementType`) VALUES
(@GUID + 136, 10371, 229, 33.96815, -327.5372, 111.0268, 4.729842, 10800, 0, 0),
(@GUID + 137, 10371, 229, 20.24981, -263.2449, 111.0268, 3.651049, 10800, 0, 0), -- patrol spire throne
(@GUID + 138, 10371, 229, -16.02218, -263.3353, 111.0268, 5.707227, 10800, 0, 0),
(@GUID + 139, 10371, 229, 8.654872, -449.8909, 110.9367, 5.462850, 10800, 0, 0),
(@GUID + 140, 10371, 229, -10.69427, -350.008, 111.0268, 0.8552113, 10800, 0, 0);
UPDATE `creature` SET `curhealth` = 19323 WHERE `id` = 10371 AND `curhealth` = 1;

-- Removed some creatures 10372 (Rage Talon Fire Tongue) used as placeholders in Blackrock Spire
DELETE FROM `creature` WHERE `guid` IN (40504, 40456, 40455, 40457); -- The Rookery
DELETE FROM `creature` WHERE `guid` IN (41811, 41823); -- Blackrock Stadium
DELETE FROM `creature` WHERE `guid` IN (42570, 42571, 42569); -- The Furnace
-- Added missing creature 10372 (Rage Talon Fire Tongue) in Blackrock Spire
DELETE FROM `creature` WHERE `guid` BETWEEN @GUID + 141 AND @GUID + 147;
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `MovementType`) VALUES
(@GUID + 141, 10372, 229, -6.880112, -252.3705, 111.0268, 5.427974, 10800, 0, 0),
(@GUID + 142, 10372, 229, 26.41263, -327.4144, 111.0268, 4.799655, 10800, 0, 0),
(@GUID + 143, 10372, 229, -15.58145, -344.3149, 111.0268, 0.715585, 10800, 0, 0),
(@GUID + 144, 10372, 229, 16.28238, -449.7946, 110.9481, 4.058556, 10800, 0, 0),
(@GUID + 145, 10372, 229, 6.224937, -461.4758, 110.932, 0.005890, 10800, 0, 0),
(@GUID + 146, 10372, 229, 23.00492, -476.6295, 110.956, 1.521713, 10800, 0, 0),
(@GUID + 147, 10372, 229, 23.71802, -258.2444, 111.0308, 3.460374, 10800, 0, 0); -- patrol spire throne
UPDATE `creature` SET `curhealth` = 18247 WHERE `id` = 10372 AND `curhealth` = 1;
