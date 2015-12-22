-- Remade the entrance room in Scholomance
-- Thanks @evil-at-wow for all these fine data!
-- Contributes to #716 

-- Initial clean-up
DELETE FROM `creature` WHERE `guid` IN (48761, 48586, 48762, 91408, 48765, 48760, 48772, 91414, 91413, 48770, 48773, 48771, 91415, 91416, 48763, 48764, 48477, 91420,
48470, 48476, 48469, 48769, 48767, 48768, 48766, 48548, 48575, 91411, 91412, 48570, 48585, 91409, 91410, 48563, 48479, 48478, 
91418, 91417, 91419, 49018, 91384, 91402);
DELETE FROM `creature_movement` WHERE `id` IN (48761, 48586, 48762, 91408, 48765, 48760, 48772, 91414, 91413, 48770, 48773, 48771, 91415, 91416, 48763, 48764, 48477, 91420,
48470, 48476, 48469, 48769, 48767, 48768, 48766, 48548, 48575, 91411, 91412, 48570, 48585, 91409, 91410, 48563, 48479, 48478, 
91418, 91417, 91419, 49018, 91384, 91402);
DELETE FROM `creature_addon` WHERE `guid` IN (48761, 48586, 48762, 91408, 48765, 48760, 48772, 91414, 91413, 48770, 48773, 48771, 91415, 91416, 48763, 48764, 48477, 91420,
48470, 48476, 48469, 48769, 48767, 48768, 48766, 48548, 48575, 91411, 91412, 48570, 48585, 91409, 91410, 48563, 48479, 48478, 
91418, 91417, 91419, 49018, 91384, 91402);
DELETE FROM `creature_linking` WHERE `guid` IN (48761, 48586, 48762, 91408, 48765, 48760, 48772, 91414, 91413, 48770, 48773, 48771, 91415, 91416, 48763, 48764, 48477, 91420,
48470, 48476, 48469, 48769, 48767, 48768, 48766, 48548, 48575, 91411, 91412, 48570, 48585, 91409, 91410, 48563, 48479, 48478, 
91418, 91417, 91419, 49018, 91384, 91402);

SET @GUID := 154673;
SET @POOL := 25493;

-- ------------------------------
-- Patrolling Necrofiend
-- ------------------------------
DELETE FROM `creature` WHERE `guid` = @GUID + 1;
INSERT INTO `creature` VALUES
(@GUID + 1, 11551, 289, 0, 0, 209.233, 73.2819, 104.798, 0, 7200, 0, 0, 8613, 0, 0, 2);

DELETE FROM `creature_movement` WHERE `id` = @GUID + 1;
INSERT INTO `creature_movement` VALUES
(@GUID + 1, 1, 206.346, 80.7189, 104.244, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(@GUID + 1, 2, 221.189, 86.5182, 104.715, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(@GUID + 1, 3, 207.384, 91.5904, 104.244, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(@GUID + 1, 4, 199.815, 104.765, 104.715, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(@GUID + 1, 5, 192.953, 90.7216, 104.244, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(@GUID + 1, 6, 178.803, 86.621, 104.716, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(@GUID + 1, 7, 192.998, 81.0231, 104.244, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(@GUID + 1, 8, 199.444, 69.7478, 104.716, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0);

-- ------------------------------
-- Group 1
-- ------------------------------
DELETE FROM `creature` WHERE `guid` BETWEEN @GUID + 2 AND @GUID + 6;
INSERT INTO `creature` VALUES
-- 2 static Risen Aberrations
(@GUID + 2, 10485, 289, 0, 0, 187.034, 86.5012, 104.798, 0, 7200, 3, 0, 2088, 0, 0, 1),
(@GUID + 3, 10485, 289, 0, 0, 195.23, 85.8773, 104.327, 0, 7200, 3, 0, 2088, 0, 0, 1),
-- 1 Diseased Ghould
(@GUID + 4, 10495, 289, 0, 0, 191.688, 90.8574, 104.327, 0, 7200, 3, 0, 8613, 0, 0, 1),
-- 1 pool of 1 Diseased Ghould / 1 Reanimated Corpse
(@GUID + 5, 10495, 289, 0, 0, 191.343, 83.4603, 104.327, 0, 7200, 3, 0, 8613, 0, 0, 1),
(@GUID + 6, 10481, 289, 0, 0, 191.343, 83.4603, 104.327, 0, 7200, 3, 0, 1436, 0, 0, 1);

DELETE FROM `pool_creature` WHERE `guid` IN (@GUID + 5, @GUID + 6);
INSERT INTO `pool_creature` VALUES
(@GUID + 5, @POOL + 1, 0, 'Scholomance - Diseased Ghould / Reanimated Corpse'),
(@GUID + 6, @POOL + 1, 0, 'Scholomance - Diseased Ghould / Reanimated Corpse');

DELETE FROM `pool_template` WHERE `entry` = @POOL + 1;
INSERT INTO `pool_template` VALUES
(@POOL + 1, 1, 'Scholomance - Diseased Ghould / Reanimated Corpse');

-- ------------------------------
-- Group 2
-- ------------------------------
DELETE FROM `creature` WHERE `guid` BETWEEN @GUID + 7 AND @GUID + 11;
INSERT INTO `creature` VALUES
-- 2 static Risen Aberrations
(@GUID + 7, 10485, 289, 0, 0, 217.701, 86.1711, 104.798, 0, 7200, 3, 0, 2088, 0, 0, 1),
(@GUID + 8, 10485, 289, 0, 0, 211.762, 82.7032, 104.327, 0, 7200, 3, 0, 2088, 0, 0, 1),
-- 1 Diseased Ghould
(@GUID + 9, 10495, 289, 0, 0, 206.582, 85.9061, 104.327, 0, 7200, 3, 0, 8613, 0, 0, 1),
-- 1 pool of 1 Diseased Ghould / 1 Reanimated Corpse
(@GUID + 10, 10495, 289, 0, 0, 211.313, 88.8732, 104.327, 0, 7200, 3, 0, 8613, 0, 0, 1),
(@GUID + 11, 10481, 289, 0, 0, 211.313, 88.8732, 104.327, 0, 7200, 3, 0, 1436, 0, 0, 1);

DELETE FROM `pool_creature` WHERE `guid` IN (@GUID + 10, @GUID + 11);
INSERT INTO `pool_creature` VALUES
(@GUID + 10, @POOL + 2, 0, 'Scholomance - Diseased Ghould / Reanimated Corpse'),
(@GUID + 11, @POOL + 2, 0, 'Scholomance - Diseased Ghould / Reanimated Corpse');

DELETE FROM `pool_template` WHERE `entry` = @POOL + 2;
INSERT INTO `pool_template` VALUES
(@POOL + 2, 1, 'Scholomance - Diseased Ghould / Reanimated Corpse');

-- ------------------------------
-- Group 3
-- ------------------------------
DELETE FROM `creature` WHERE `guid` BETWEEN @GUID + 12 AND @GUID + 16;
INSERT INTO `creature` VALUES
-- 2 static Risen Aberrations
(@GUID + 12, 10485, 289, 0, 0, 182.377, 97.8408, 104.799, 0, 7200, 3, 0, 2088, 0, 0, 1),
(@GUID + 13, 10485, 289, 0, 0, 180.356, 102.901, 104.798, 0, 7200, 3, 0, 2088, 0, 0, 1),
-- 1 Diseased Ghould
(@GUID + 14, 10495, 289, 0, 0, 187.086, 92.537, 104.767, 0, 7200, 3, 0, 8613, 0, 0, 1),
-- 1 pool of 1 Diseased Ghould / 1 Reanimated Corpse
(@GUID + 15, 10495, 289, 0, 0, 179.126, 94.6681, 104.8, 0, 7200, 3, 0, 8613, 0, 0, 1),
(@GUID + 16, 10481, 289, 0, 0, 179.126, 94.6681, 104.8, 0, 7200, 3, 0, 1436, 0, 0, 1);

DELETE FROM `pool_creature` WHERE `guid` IN (@GUID + 15, @GUID + 16);
INSERT INTO `pool_creature` VALUES
(@GUID + 15, @POOL + 3, 0, 'Scholomance - Diseased Ghould / Reanimated Corpse'),
(@GUID + 16, @POOL + 3, 0, 'Scholomance - Diseased Ghould / Reanimated Corpse');

DELETE FROM `pool_template` WHERE `entry` = @POOL + 3;
INSERT INTO `pool_template` VALUES
(@POOL + 3, 1, 'Scholomance - Diseased Ghould / Reanimated Corpse');

-- ------------------------------
-- Group 4
-- ------------------------------
DELETE FROM `creature` WHERE `guid` BETWEEN @GUID + 17 AND @GUID + 21;
INSERT INTO `creature` VALUES
-- 2 static Risen Aberrations
(@GUID + 17, 10485, 289, 0, 0, 185.796, 74.2217, 104.799, 0, 7200, 3, 0, 2088, 0, 0, 1),
(@GUID + 18, 10485, 289, 0, 0, 179.384, 83.667, 104.8, 0, 7200, 3, 0, 2088, 0, 0, 1),
-- 1 Diseased Ghould
(@GUID + 19, 10495, 289, 0, 0, 179.885, 73.8904, 104.799, 0, 7200, 3, 0, 8613, 0, 0, 1),
-- 1 pool of 1 Diseased Ghould / 1 Reanimated Corpse
(@GUID + 20, 10495, 289, 0, 0, 185.034, 80.1398, 104.799, 0, 7200, 3, 0, 8613, 0, 0, 1),
(@GUID + 21, 10481, 289, 0, 0, 185.034, 80.1398, 104.799, 0, 7200, 3, 0, 1436, 0, 0, 1);

DELETE FROM `pool_creature` WHERE `guid` IN (@GUID + 20, @GUID + 21);
INSERT INTO `pool_creature` VALUES
(@GUID + 20, @POOL + 4, 0, 'Scholomance - Diseased Ghould / Reanimated Corpse'),
(@GUID + 21, @POOL + 4, 0, 'Scholomance - Diseased Ghould / Reanimated Corpse');

DELETE FROM `pool_template` WHERE `entry` = @POOL + 4;
INSERT INTO `pool_template` VALUES
(@POOL + 4, 1, 'Scholomance - Diseased Ghould / Reanimated Corpse');

-- ------------------------------
-- Group 5
-- ------------------------------
DELETE FROM `creature` WHERE `guid` BETWEEN @GUID + 22 AND @GUID + 26;
INSERT INTO `creature` VALUES
-- 2 static Risen Aberrations
(@GUID + 22, 10485, 289, 0, 0, 221.956, 103.89, 104.798, 0, 7200, 3, 0, 2088, 0, 0, 1),
(@GUID + 23, 10485, 289, 0, 0, 221.917, 96.4046, 104.798, 0, 7200, 3, 0, 2088, 0, 0, 1),
-- 1 Diseased Ghould
(@GUID + 24, 10495, 289, 0, 0, 217.536, 99.4131, 104.798, 0, 7200, 3, 0, 8613, 0, 0, 1),
-- 1 pool of 1 Diseased Ghould / 1 Reanimated Corpse
(@GUID + 25, 10495, 289, 0, 0, 215.996, 91.7486, 104.798, 0, 7200, 3, 0, 8613, 0, 0, 1),
(@GUID + 26, 10481, 289, 0, 0, 215.996, 91.7486, 104.798, 0, 7200, 3, 0, 1436, 0, 0, 1);

DELETE FROM `pool_creature` WHERE `guid` IN (@GUID + 25, @GUID + 26);
INSERT INTO `pool_creature` VALUES
(@GUID + 25, @POOL + 5, 0, 'Scholomance - Diseased Ghould / Reanimated Corpse'),
(@GUID + 26, @POOL + 5, 0, 'Scholomance - Diseased Ghould / Reanimated Corpse');

DELETE FROM `pool_template` WHERE `entry` = @POOL + 5;
INSERT INTO `pool_template` VALUES
(@POOL + 5, 1, 'Scholomance - Diseased Ghould / Reanimated Corpse');

-- ------------------------------
-- Group 6
-- ------------------------------
DELETE FROM `creature` WHERE `guid` BETWEEN @GUID + 27 AND @GUID + 31;
INSERT INTO `creature` VALUES
-- 2 static Risen Aberrations
(@GUID + 27, 10485, 289, 0, 0, 203.038, 98.6992, 104.798, 0, 7200, 3, 0, 2088, 0, 0, 1),
(@GUID + 28, 10485, 289, 0, 0, 204.37, 92.5006, 104.327, 0, 7200, 3, 0, 2088, 0, 0, 1),
-- 1 Diseased Ghould
(@GUID + 29, 10495, 289, 0, 0, 197.118, 98.0816, 104.798, 0, 7200, 3, 0, 8613, 0, 0, 1),
-- 1 pool of 1 Diseased Ghould / 1 Reanimated Corpse
(@GUID + 30, 10495, 289, 0, 0, 196.721, 91.9017, 104.327, 0, 7200, 3, 0, 8613, 0, 0, 1),
(@GUID + 31, 10481, 289, 0, 0, 196.721, 91.9017, 104.327, 0, 7200, 3, 0, 1436, 0, 0, 1);

DELETE FROM `pool_creature` WHERE `guid` IN (@GUID + 30, @GUID + 31);
INSERT INTO `pool_creature` VALUES
(@GUID + 30, @POOL + 6, 0, 'Scholomance - Diseased Ghould / Reanimated Corpse'),
(@GUID + 31, @POOL + 6, 0, 'Scholomance - Diseased Ghould / Reanimated Corpse');

DELETE FROM `pool_template` WHERE `entry` = @POOL + 6;
INSERT INTO `pool_template` VALUES
(@POOL + 6, 1, 'Scholomance - Diseased Ghould / Reanimated Corpse');

-- ------------------------------
-- Group 7
-- ------------------------------
DELETE FROM `creature` WHERE `guid` BETWEEN @GUID + 32 AND @GUID + 36;
INSERT INTO `creature` VALUES
-- 2 static Risen Aberrations
(@GUID + 32, 10485, 289, 0, 0, 214.38, 73.1017, 104.798, 0, 7200, 3, 0, 2088, 0, 0, 1),
(@GUID + 33, 10485, 289, 0, 0, 220.372, 73.5207, 104.798, 0, 7200, 3, 0, 2088, 0, 0, 1),
-- 1 Diseased Ghould
(@GUID + 34, 10495, 289, 0, 0, 215.633, 79.811, 104.798, 0, 7200, 3, 0, 8613, 0, 0, 1),
-- 1 pool of 1 Diseased Ghould / 1 Reanimated Corpse
(@GUID + 35, 10495, 289, 0, 0, 222.002, 82.2615, 104.798, 0, 7200, 3, 0, 8613, 0, 0, 1),
(@GUID + 36, 10481, 289, 0, 0, 222.002, 82.2615, 104.798, 0, 7200, 3, 0, 1436, 0, 0, 1);

DELETE FROM `pool_creature` WHERE `guid` IN (@GUID + 35, @GUID + 36);
INSERT INTO `pool_creature` VALUES
(@GUID + 35, @POOL + 7, 0, 'Scholomance - Diseased Ghould / Reanimated Corpse'),
(@GUID + 36, @POOL + 7, 0, 'Scholomance - Diseased Ghould / Reanimated Corpse');

DELETE FROM `pool_template` WHERE `entry` = @POOL + 7;
INSERT INTO `pool_template` VALUES
(@POOL + 7, 1, 'Scholomance - Diseased Ghould / Reanimated Corpse');

-- ------------------------------
-- Group 8
-- ------------------------------
DELETE FROM `creature` WHERE `guid` BETWEEN @GUID + 37 AND @GUID + 41;
INSERT INTO `creature` VALUES
-- 2 static Risen Aberrations
(@GUID + 37, 10485, 289, 0, 0, 204.191, 73.0652, 104.798, 0, 7200, 3, 0, 2088, 0, 0, 1),
(@GUID + 38, 10485, 289, 0, 0, 198.144, 73.889, 104.666, 0, 7200, 3, 0, 2088, 0, 0, 1),
-- 1 Diseased Ghould
(@GUID + 39, 10495, 289, 0, 0, 203.869, 80.8282, 104.327, 0, 7200, 3, 0, 8613, 0, 0, 1),
-- 1 pool of 1 Diseased Ghould / 1 Reanimated Corpse
(@GUID + 40, 10495, 289, 0, 0, 197.559, 79.5891, 104.327, 0, 7200, 3, 0, 8613, 0, 0, 1),
(@GUID + 41, 10481, 289, 0, 0, 197.559, 79.5891, 104.327, 0, 7200, 3, 0, 1436, 0, 0, 1);

DELETE FROM `pool_creature` WHERE `guid` IN (@GUID + 40, @GUID + 41);
INSERT INTO `pool_creature` VALUES
(@GUID + 40, @POOL + 8, 0, 'Scholomance - Diseased Ghould / Reanimated Corpse'),
(@GUID + 41, @POOL + 8, 0, 'Scholomance - Diseased Ghould / Reanimated Corpse');

DELETE FROM `pool_template` WHERE `entry` = @POOL + 8;
INSERT INTO `pool_template` VALUES
(@POOL + 8, 1, 'Scholomance - Diseased Ghould / Reanimated Corpse');

-- ------------------------------
-- Rats
-- ------------------------------
DELETE FROM `creature` WHERE `guid` BETWEEN @GUID + 42 AND @GUID + 44;
INSERT INTO `creature` VALUES
(@GUID + 42, 4075, 289, 0, 0, 216.771, 75.3716, 104.798, 0, 7200, 3, 0, 120, 0, 0, 1),
(@GUID + 43, 4075, 289, 0, 0, 210.642, 99.2762, 104.798, 0, 7200, 3, 0, 120, 0, 0, 1),
(@GUID + 44, 4075, 289, 0, 0, 182.771, 69.4884, 104.798, 0, 7200, 3, 0, 120, 0, 0, 1);
