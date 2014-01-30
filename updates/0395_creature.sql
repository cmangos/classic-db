-- Fixed and improved trash mobs in Naxxramas Arachnid Wing
-- Source: http://www.warcraftmovies.com/movieview.php?id=29654

-- Removed all creature 15977 (Poisonous Skitter) inherited from WotLK backport
-- and not relevant to Classic / TBC
DELETE FROM `creature` WHERE `id` = 15977 AND `guid` NOT IN (88331, 88330, 88333, 88332,
88328, 88327, 88326, 88329, 88325, 88344, 88345, 88349, 88350, 88351, 88352, 88353, 88354, 88355, 88356, 88357,
88322, 88323, 88324, 88316, 88315, 88320, 88319, 88317, 88318, 88321);

-- ---------------------------------------------
-- First room after grid leading to Grand Widow
-- ---------------------------------------------

SET @GUID1 := 88380;

-- Patrolling group of ten creature 15977 (Poisonous Skitter)
-- Created the moving group leader.
DELETE FROM `creature` WHERE `guid` = @GUID1;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@GUID1, 15977, 533, 0, 0, 3151.36, -3578.26, 284.089, 5.01007, 3520, 0, 0, 15415, 0, 0, 2);

-- Added movement waypoint to this creature
DELETE FROM `creature_movement` WHERE `id` = @GUID1;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES
(@GUID1, 1, 3151.36, -3578.26, 284.089, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.01007, 0, 0),
(@GUID1, 2, 3159.73, -3621.41, 280.305, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.70612, 0, 0),
(@GUID1, 3, 3153.84, -3634.42, 285.093, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.15713, 0, 0),
(@GUID1, 4, 3175.7, -3625.91, 280.303, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.74835, 0, 0),
(@GUID1, 5, 3208.41, -3637.89, 283.939, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.21092, 0, 0),
(@GUID1, 6, 3199.03, -3598.23, 280.304, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.63365, 0, 0),
(@GUID1, 7, 3204.87, -3581.66, 285.081, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.03854, 0, 0),
(@GUID1, 8, 3163.71, -3585.64, 280.305, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.01909, 0, 0);


-- Added the other spawns of the moving group
DELETE FROM `creature` WHERE `guid` BETWEEN @GUID1 + 1 AND @GUID1 + 9;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@GUID1 + 1, 15977, 533, 0, 0, 3158.52, -3584.62, 280.306, 4.84985, 3520, 0, 0, 15415, 0, 0, 0),
(@GUID1 + 2, 15977, 533, 0, 0, 3153.02, -3584.27, 281.478, 4.84985, 3520, 0, 0, 15415, 0, 0, 0),
(@GUID1 + 3, 15977, 533, 0, 0, 3153.91, -3578.73, 283.059, 4.84985, 3520, 0, 0, 15415, 0, 0, 0),
(@GUID1 + 4, 15977, 533, 0, 0, 3151.64, -3580.62, 283.189, 4.84985, 3520, 0, 0, 15415, 0, 0, 0),
(@GUID1 + 5, 15977, 533, 0, 0, 3154.72, -3579.15, 282.642, 5.28732, 3520, 0, 0, 15415, 0, 0, 0),
(@GUID1 + 6, 15977, 533, 0, 0, 3157.14, -3582.89, 280.544, 5.28732, 3520, 0, 0, 15415, 0, 0, 0),
(@GUID1 + 7, 15977, 533, 0, 0, 3156.44, -3579.35, 281.987, 5.28732, 3520, 0, 0, 15415, 0, 0, 0),
(@GUID1 + 8, 15977, 533, 0, 0, 3152.07, -3583.19, 282.169, 5.28732, 3520, 0, 0, 15415, 0, 0, 0),
(@GUID1 + 9, 15977, 533, 0, 0, 3154.64, -3582.76, 281.439, 5.28732, 3520, 0, 0, 15415, 0, 0, 0);


-- Linked them to the leader
DELETE FROM `creature_linking` WHERE `guid` BETWEEN @GUID1 + 1 AND @GUID1 + 9;
INSERT INTO `creature_linking` VALUES
(@GUID1 + 1, @GUID1, 515),
(@GUID1 + 2, @GUID1, 515),
(@GUID1 + 3, @GUID1, 515),
(@GUID1 + 4, @GUID1, 515),
(@GUID1 + 5, @GUID1, 515),
(@GUID1 + 6, @GUID1, 515),
(@GUID1 + 7, @GUID1, 515),
(@GUID1 + 8, @GUID1, 515),
(@GUID1 + 9, @GUID1, 515);

-- ---------------------------------------------
-- Small corridor leading to Grand Widow's Room
-- ---------------------------------------------


-- ---------------------------------------------
-- Cave right before Grand Widow's Room
-- ---------------------------------------------

-- Removed group of spiders in a WotLK configuration
DELETE FROM `creature` WHERE `guid` IN (88646, 88647, 88643, 88644, 88645);

SET @GUID2 := 88368;

-- Added missing group of creature 15977 (Poisonous Skitter)
DELETE FROM `creature` WHERE `guid` BETWEEN @GUID2 AND @GUID2 + 9;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@GUID2 + 0, 15977, 533, 0, 0, 3274.57, -3702.69, 280.1, 2.29809, 25, 0, 0, 15415, 0, 0, 0),
(@GUID2 + 1, 15977, 533, 0, 0, 3273.27, -3699.56, 280.639, 2.29809, 25, 0, 0, 15415, 0, 0, 0),
(@GUID2 + 2, 15977, 533, 0, 0, 3276.2, -3695.68, 280.195, 2.29809, 25, 0, 0, 15415, 0, 0, 0),
(@GUID2 + 3, 15977, 533, 0, 0, 3276.99, -3701.06, 278.638, 2.29809, 25, 0, 0, 15415, 0, 0, 0),
(@GUID2 + 4, 15977, 533, 0, 0, 3281.84, -3701.93, 276.436, 2.29809, 25, 0, 0, 15415, 0, 0, 0),
(@GUID2 + 5, 15977, 533, 0, 0, 3281.73, -3696.47, 278.567, 2.29809, 25, 0, 0, 15415, 0, 0, 0),
(@GUID2 + 6, 15977, 533, 0, 0, 3280.03, -3699.9, 278.042, 2.29809, 25, 0, 0, 15415, 0, 0, 0),
(@GUID2 + 7, 15977, 533, 0, 0, 3279.92, -3704.31, 276.803, 2.29809, 25, 0, 0, 15415, 0, 0, 0),
(@GUID2 + 8, 15977, 533, 0, 0, 3276.05, -3701.19, 279.173, 2.29809, 25, 0, 0, 15415, 0, 0, 0),
(@GUID2 + 9, 15977, 533, 0, 0, 3275.76, -3706.14, 278.677, 2.29809, 25, 0, 0, 15415, 0, 0, 0);
UPDATE `creature` SET `MovementType` = 1, `spawndist` = 3, `spawntimesecs` = 3520 WHERE `guid` BETWEEN @GUID2 AND @GUID2 + 9;

-- Added missing group of creature 16453 (Necro Stalker)
DELETE FROM `creature` WHERE `guid` BETWEEN @GUID2 + 10 AND @GUID2 + 11;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@GUID2 + 10, 16453, 533, 0, 0, 3298.93, -3710.96, 267.6, 3.15496, 3520, 7, 0, 81178, 0, 0, 1),
(@GUID2 + 11, 16453, 533, 0, 0, 3305.26, -3722.27, 268.031, 3.15496, 3520, 7, 0, 81178, 0, 0, 1);


-- ---------------------------------------------
-- Grand Widow's Room
-- ---------------------------------------------

SET @GUID3 := 88358;

-- Patrolling group of ten creature 15977 (Poisonous Skitter)
-- Created the moving group leader.
DELETE FROM `creature` WHERE `guid` = @GUID3;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@GUID3, 15977, 533, 0, 0, 3384.41, -3687.79, 259.08, 1.86376, 3520, 0, 0, 15415, 0, 0, 2);

-- Added movement waypoint to this creature
DELETE FROM `creature_movement` WHERE `id` = @GUID3;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES
(@GUID3, 1, 3384.41, -3687.79, 259.08, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.86376, 0, 0),
(@GUID3, 2, 3376.27, -3660.79, 259.081, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.83941, 0, 0),
(@GUID3, 3, 3368.88, -3642.01, 259.081, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.12294, 0, 0),
(@GUID3, 4, 3362.08, -3623.2, 260.995, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.88968, 0, 0),
(@GUID3, 5, 3368.45, -3609.45, 260.996, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.442, 0, 0),
(@GUID3, 6, 3352.24, -3596.95, 260.996, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.06071, 0, 0),
(@GUID3, 7, 3335.51, -3606.02, 260.996, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.04324, 0, 0),
(@GUID3, 8, 3342.3, -3623.63, 260.996, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.29752, 0, 0),
(@GUID3, 9, 3333.46, -3640.71, 259.085, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.21132, 0, 0),
(@GUID3, 10, 3334.25, -3675.14, 259.083, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.86948, 0, 0),
(@GUID3, 11, 3344.35, -3703.4, 259.078, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.65645, 0, 0),
(@GUID3, 12, 3334.25, -3675.14, 259.083, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.86948, 0, 0),
(@GUID3, 13, 3333.46, -3640.71, 259.085, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.21132, 0, 0),
(@GUID3, 14, 3342.3, -3623.63, 260.996, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.29752, 0, 0),
(@GUID3, 15, 3335.51, -3606.02, 260.996, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.04324, 0, 0),
(@GUID3, 16, 3352.24, -3596.95, 260.996, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.06071, 0, 0),
(@GUID3, 17, 3368.45, -3609.45, 260.996, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.442, 0, 0),
(@GUID3, 18, 3362.08, -3623.2, 260.995, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.88968, 0, 0),
(@GUID3, 19, 3368.88, -3642.01, 259.081, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.12294, 0, 0),
(@GUID3, 20, 3376.27, -3660.79, 259.081, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.83941, 0, 0);

-- Added the other spawns of the moving group
DELETE FROM `creature` WHERE `guid` BETWEEN @GUID3 + 1 AND @GUID3 + 9;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@GUID3 + 1, 15977, 533, 0, 0, 3385.51, -3695.01, 259.077, 1.77501, 25, 0, 0, 15415, 0, 0, 0),
(@GUID3 + 2, 15977, 533, 0, 0, 3386.29, -3691.89, 259.078, 1.77501, 25, 0, 0, 15415, 0, 0, 0),
(@GUID3 + 3, 15977, 533, 0, 0, 3386.5, -3688.35, 259.078, 1.77501, 25, 0, 0, 15415, 0, 0, 0),
(@GUID3 + 4, 15977, 533, 0, 0, 3389.16, -3690.63, 259.075, 1.77501, 25, 0, 0, 15415, 0, 0, 0),
(@GUID3 + 5, 15977, 533, 0, 0, 3384.3, -3693.34, 259.078, 1.77501, 25, 0, 0, 15415, 0, 0, 0),
(@GUID3 + 6, 15977, 533, 0, 0, 3387.96, -3694.09, 259.076, 1.77501, 25, 0, 0, 15415, 0, 0, 0),
(@GUID3 + 7, 15977, 533, 0, 0, 3382.42, -3696.24, 259.08, 1.77501, 25, 0, 0, 15415, 0, 0, 0),
(@GUID3 + 8, 15977, 533, 0, 0, 3378.77, -3692.13, 259.081, 1.77501, 25, 0, 0, 15415, 0, 0, 0),
(@GUID3 + 9, 15977, 533, 0, 0, 3380.74, -3687.59, 259.081, 1.76873, 25, 0, 0, 15415, 0, 0, 0);


-- Linked them to the leader
DELETE FROM `creature_linking` WHERE `guid` BETWEEN @GUID3 + 1 AND @GUID3 + 9;
INSERT INTO `creature_linking` VALUES
(@GUID3 + 1, @GUID3, 515),
(@GUID3 + 2, @GUID3, 515),
(@GUID3 + 3, @GUID3, 515),
(@GUID3 + 4, @GUID3, 515),
(@GUID3 + 5, @GUID3, 515),
(@GUID3 + 6, @GUID3, 515),
(@GUID3 + 7, @GUID3, 515),
(@GUID3 + 8, @GUID3, 515),
(@GUID3 + 9, @GUID3, 515);

-- Removed creatures 16022 (Surgical Assistant) as they should only be spawned in Construct Wing
-- Added groups of creatures 15980 (Naxxramas Cultist) and 15981 (Naxxramas Acolyte)

SET @GUID4 = 88566;

-- Group 1
DELETE FROM `creature` WHERE `guid` IN (88503, 88504, 88506, 88512, 88505, 88511);
DELETE FROM `creature` WHERE `guid` BETWEEN @GUID4 + 1 AND @GUID4 + 8;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@GUID4 + 1, 15980, 533, 0, 0, 3328.95, -3646.61, 259.081, 0.931593, 25, 0, 0, 25824, 58750, 0, 0), 
(@GUID4 + 2, 15981, 533, 0, 0, 3333.83, -3650.51, 259.081, 0.931593, 25, 0, 0, 26274, 58750, 0, 0),
(@GUID4 + 3, 15980, 533, 0, 0, 3336.67, -3653.09, 259.081, 0.90646, 25, 0, 0, 25824, 58750, 0, 0),
(@GUID4 + 4, 15981, 533, 0, 0, 3331.75, -3646, 259.081, 0.922167, 25, 0, 0, 26274, 58750, 0, 0),
(@GUID4 + 5, 15981, 533, 0, 0, 3340.26, -3655.24, 259.081, 1.02809, 25, 0, 0, 26274, 58750, 0, 0),
(@GUID4 + 6, 15980, 533, 0, 0, 3340.12, -3650.41, 259.081, 1.01867, 25, 0, 0, 25824, 58750, 0, 0),
(@GUID4 + 7, 15980, 533, 0, 0, 3336.05, -3646.25, 259.081, 0.8019, 25, 0, 0, 25824, 58750, 0, 0),
(@GUID4 + 8, 15980, 533, 0, 0, 3330.77, -3642.39, 259.081, 0.8019, 25, 0, 0, 25824, 58750, 0, 0);
-- Addons
DELETE FROM `creature_addon` WHERE `guid` BETWEEN @GUID4 + 1 AND @GUID4 + 8;
INSERT INTO `creature_addon` VALUES
(@GUID4 + 1, 0, 8, 1, 16, 0, 0, NULL),
(@GUID4 + 2, 0, 8, 1, 16, 0, 0, NULL),
(@GUID4 + 3, 0, 8, 1, 16, 0, 0, NULL),
(@GUID4 + 4, 0, 8, 1, 16, 0, 0, NULL),
(@GUID4 + 5, 0, 8, 1, 16, 0, 0, NULL),
(@GUID4 + 6, 0, 8, 1, 16, 0, 0, NULL),
(@GUID4 + 7, 0, 8, 1, 16, 0, 0, NULL),
(@GUID4 + 8, 0, 8, 1, 16, 0, 0, NULL);

-- Group 2
DELETE FROM `creature` WHERE `guid` IN (88538, 88513, 88527, 88528, 88514, 88536, 88537, 88515);
DELETE FROM `creature` WHERE `guid` BETWEEN @GUID4 + 9 AND @GUID4 + 16;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@GUID4 + 9, 15980, 533, 0, 0, 3331.69, -3675.11, 259.081, 1.14702, 25, 0, 0, 25824, 58750, 0, 0),
(@GUID4 + 10, 15980, 533, 0, 0, 3328.25, -3673, 259.081, 1.03574, 25, 0, 0, 25824, 58750, 0, 0),
(@GUID4 + 11, 15981, 533, 0, 0, 3325.23, -3670.58, 259.081, 0.949346, 25, 0, 0, 26274, 58750, 0, 0),
(@GUID4 + 12, 15980, 533, 0, 0, 3321.46, -3667.21, 259.081, 1.09465, 25, 0, 0, 25824, 58750, 0, 0),
(@GUID4 + 13, 15981, 533, 0, 0, 3336.49, -3672.73, 259.081, 1.18999, 25, 0, 0, 26274, 58750, 0, 0),
(@GUID4 + 14, 15980, 533, 0, 0, 3332.61, -3670.43, 259.081, 1.07611, 25, 0, 0, 25824, 58750, 0, 0),
(@GUID4 + 15, 15980, 533, 0, 0, 3328.78, -3668.31, 259.081, 0.952798, 25, 0, 0, 25824, 58750, 0, 0),
(@GUID4 + 16, 15981, 533, 0, 0, 3325.53, -3665.4, 259.081, 1.08789, 25, 0, 0, 26274, 58750, 0, 0);
-- Addons
DELETE FROM `creature_addon` WHERE `guid` BETWEEN @GUID4 + 9 AND @GUID4 + 16;
INSERT INTO `creature_addon` VALUES
(@GUID4 + 9, 0, 8, 1, 16, 0, 0, NULL),
(@GUID4 + 10, 0, 8, 1, 16, 0, 0, NULL),
(@GUID4 + 11, 0, 8, 1, 16, 0, 0, NULL),
(@GUID4 + 12, 0, 8, 1, 16, 0, 0, NULL),
(@GUID4 + 13, 0, 8, 1, 16, 0, 0, NULL),
(@GUID4 + 14, 0, 8, 1, 16, 0, 0, NULL),
(@GUID4 + 15, 0, 8, 1, 16, 0, 0, NULL),
(@GUID4 + 16, 0, 8, 1, 16, 0, 0, NULL);

-- Group 3
DELETE FROM `creature` WHERE `guid` IN (88525, 88532, 88526, 88533, 88516);
DELETE FROM `creature` WHERE `guid` BETWEEN @GUID4 + 17 AND @GUID4 + 24;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@GUID4 + 17, 15980, 533, 0, 0, 3386.47, -3693.76, 259.077, 1.96469, 25, 0, 0, 25824, 58750, 0, 0),
(@GUID4 + 18, 15981, 533, 0, 0, 3382.5, -3695.76, 259.08, 2.00553, 25, 0, 0, 26274, 58750, 0, 0),
(@GUID4 + 19, 15980, 533, 0, 0, 3379.16, -3697.32, 259.082, 2.04873, 25, 0, 0, 25824, 58750, 0, 0),
(@GUID4 + 20, 15980, 533, 0, 0, 3389.72, -3686.78, 259.077, 2.1198, 25, 0, 0, 25824, 58750, 0, 0),
(@GUID4 + 21, 15981, 533, 0, 0, 3386.06, -3689.19, 259.078, 2.00357, 25, 0, 0, 26274, 58750, 0, 0),
(@GUID4 + 22, 15980, 533, 0, 0, 3382.5, -3691.46, 259.081, 2.00357, 25, 0, 0, 25824, 58750, 0, 0),
(@GUID4 + 23, 15980, 533, 0, 0, 3378.08, -3693.95, 259.081, 1.97215, 25, 0, 0, 25824, 58750, 0, 0),
(@GUID4 + 24, 15981, 533, 0, 0, 3373.56, -3697.9, 259.081, 1.83156, 25, 0, 0, 26274, 58750, 0, 0);
-- Addons
DELETE FROM `creature_addon` WHERE `guid` BETWEEN @GUID4 + 17 AND @GUID4 + 24;
INSERT INTO `creature_addon` VALUES
(@GUID4 + 17, 0, 8, 1, 16, 0, 0, NULL),
(@GUID4 + 18, 0, 8, 1, 16, 0, 0, NULL),
(@GUID4 + 19, 0, 8, 1, 16, 0, 0, NULL),
(@GUID4 + 20, 0, 8, 1, 16, 0, 0, NULL),
(@GUID4 + 21, 0, 8, 1, 16, 0, 0, NULL),
(@GUID4 + 22, 0, 8, 1, 16, 0, 0, NULL),
(@GUID4 + 23, 0, 8, 1, 16, 0, 0, NULL),
(@GUID4 + 24, 0, 8, 1, 16, 0, 0, NULL);

-- Group 4
DELETE FROM `creature` WHERE `guid` IN (88535, 88524, 88523, 88534, 88522, 88520, 88521);
DELETE FROM `creature` WHERE `guid` BETWEEN @GUID4 + 25 AND @GUID4 + 32;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@GUID4 + 25, 15980, 533, 0, 0, 3335.6, -3688.88, 259.089, 1.33637, 25, 0, 0, 25824, 58750, 0, 0),
(@GUID4 + 26, 15980, 533, 0, 0, 3338.4, -3684.07, 259.088, 1.33637, 25, 0, 0, 25824, 58750, 0, 0),
(@GUID4 + 27, 15980, 533, 0, 0, 3339.12, -3689.59, 259.086, 1.30417, 25, 0, 0, 25824, 58750, 0, 0),
(@GUID4 + 28, 15980, 533, 0, 0, 3351.56, -3684.78, 259.078, 1.50838, 25, 0, 0, 25824, 58750, 0, 0),
(@GUID4 + 29, 15981, 533, 0, 0, 3343.72, -3689.35, 259.082, 1.50838, 25, 0, 0, 26274, 58750, 0, 0),
(@GUID4 + 30, 15981, 533, 0, 0, 3349.46, -3687.94, 259.079, 1.50838, 25, 0, 0, 26274, 58750, 0, 0),
(@GUID4 + 31, 15981, 533, 0, 0, 3346.88, -3684.63, 259.082, 1.50838, 25, 0, 0, 26274, 58750, 0, 0),
(@GUID4 + 32, 15981, 533, 0, 0, 3342.19, -3684.87, 259.085, 1.50838, 25, 0, 0, 26274, 58750, 0, 0);
-- Addons
DELETE FROM `creature_addon` WHERE `guid` BETWEEN @GUID4 + 25 AND @GUID4 + 32;
INSERT INTO `creature_addon` VALUES
(@GUID4 + 25, 0, 8, 1, 16, 0, 0, NULL),
(@GUID4 + 26, 0, 8, 1, 16, 0, 0, NULL),
(@GUID4 + 27, 0, 8, 1, 16, 0, 0, NULL),
(@GUID4 + 28, 0, 8, 1, 16, 0, 0, NULL),
(@GUID4 + 29, 0, 8, 1, 16, 0, 0, NULL),
(@GUID4 + 30, 0, 8, 1, 16, 0, 0, NULL),
(@GUID4 + 31, 0, 8, 1, 16, 0, 0, NULL),
(@GUID4 + 32, 0, 8, 1, 16, 0, 0, NULL);

SET @GUID5 := 88623;

-- Group 5
DELETE FROM `creature` WHERE `guid` IN (88517, 88519, 88518, 88529, 88531, 88530);
DELETE FROM `creature` WHERE `guid` BETWEEN @GUID4 + 33 AND @GUID4 + 39 OR `guid` = @GUID5 + 1;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@GUID4 + 33, 15980, 533, 0, 0, 3383.18, -3669.73, 259.082, 2.11979, 25, 0, 0, 25824, 58750, 0, 0),
(@GUID4 + 34, 15981, 533, 0, 0, 3379.05, -3671.33, 259.082, 1.98706, 25, 0, 0, 26274, 58750, 0, 0),
(@GUID4 + 35, 15981, 533, 0, 0, 3373.32, -3672.19, 259.082, 1.91167, 25, 0, 0, 26274, 58750, 0, 0),
(@GUID4 + 36, 15980, 533, 0, 0, 3369.14, -3672.89, 259.082, 1.91167, 25, 0, 0, 25824, 58750, 0, 0),
(@GUID4 + 37, 15981, 533, 0, 0, 3383.28, -3666.11, 259.082, 2.06124, 25, 0, 0, 26274, 58750, 0, 0),
(@GUID4 + 38, 15980, 533, 0, 0, 3379.6, -3667.56, 259.082, 2.00941, 25, 0, 0, 25824, 58750, 0, 0),
(@GUID4 + 39, 15981, 533, 0, 0, 3374.85, -3668.9, 259.082, 1.94621, 25, 0, 0, 26274, 58750, 0, 0),
(@GUID5 + 1, 15981, 533, 0, 0, 3370.16, -3669.7, 259.082, 1.94621, 25, 0, 0, 26274, 58750, 0, 0);
-- Addons
DELETE FROM `creature_addon` WHERE `guid` BETWEEN @GUID4 + 33 AND @GUID4 + 39 OR `guid` = @GUID5 + 1;
INSERT INTO `creature_addon` VALUES
(@GUID4 + 33, 0, 8, 1, 16, 0, 0, NULL),
(@GUID4 + 34, 0, 8, 1, 16, 0, 0, NULL),
(@GUID4 + 35, 0, 8, 1, 16, 0, 0, NULL),
(@GUID4 + 36, 0, 8, 1, 16, 0, 0, NULL),
(@GUID4 + 37, 0, 8, 1, 16, 0, 0, NULL),
(@GUID4 + 38, 0, 8, 1, 16, 0, 0, NULL),
(@GUID4 + 39, 0, 8, 1, 16, 0, 0, NULL),
(@GUID5 + 1, 0, 8, 1, 16, 0, 0, NULL);

-- Group 6
DELETE FROM `creature` WHERE `guid` IN (88510, 88509, 88507, 88508, 88539, 88540);
DELETE FROM `creature` WHERE `guid` BETWEEN @GUID5 + 2 AND @GUID5 + 9;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@GUID5 + 2, 15980, 533, 0, 0, 3375, -3648.12, 259.081, 2.1952, 25, 0, 0, 25824, 58750, 0, 0),
(@GUID5 + 3, 15981, 533, 0, 0, 3377.7, -3645.84, 259.081, 2.34129, 25, 0, 0, 26274, 58750, 0, 0),
(@GUID5 + 4, 15980, 533, 0, 0, 3371.38, -3650.6, 259.081, 2.10599, 25, 0, 0, 25824, 58750, 0, 0),
(@GUID5 + 5, 15981, 533, 0, 0, 3367.62, -3652.28, 259.081, 1.93634, 25, 0, 0, 26274, 58750, 0, 0),
(@GUID5 + 6, 15980, 533, 0, 0, 3364.09, -3653.58, 259.081, 1.91514, 25, 0, 0, 25824, 58750, 0, 0),
(@GUID5 + 7, 15981, 533, 0, 0, 3376.02, -3643.45, 259.081, 2.24893, 25, 0, 0, 26274, 58750, 0, 0),
(@GUID5 + 8, 15980, 533, 0, 0, 3370.15, -3646.84, 259.081, 2.05101, 25, 0, 0, 25824, 58750, 0, 0),
(@GUID5 + 9, 15981, 533, 0, 0, 3363.16, -3649, 259.081, 1.93006, 25, 0, 0, 26274, 58750, 0, 0);
-- Addons
DELETE FROM `creature_addon` WHERE `guid` BETWEEN @GUID5 + 2 AND @GUID5 + 9;
INSERT INTO `creature_addon` VALUES
(@GUID5 + 2, 0, 8, 1, 16, 0, 0, NULL),
(@GUID5 + 3, 0, 8, 1, 16, 0, 0, NULL),
(@GUID5 + 4, 0, 8, 1, 16, 0, 0, NULL),
(@GUID5 + 5, 0, 8, 1, 16, 0, 0, NULL),
(@GUID5 + 6, 0, 8, 1, 16, 0, 0, NULL),
(@GUID5 + 7, 0, 8, 1, 16, 0, 0, NULL),
(@GUID5 + 8, 0, 8, 1, 16, 0, 0, NULL),
(@GUID5 + 9, 0, 8, 1, 16, 0, 0, NULL);

UPDATE `creature` SET `spawntimesecs` = 3250 WHERE `id` IN (15980, 15981) AND `map` = 533;

-- ---------------------------------------------
-- Small corridor leading to outer ring
-- ---------------------------------------------
