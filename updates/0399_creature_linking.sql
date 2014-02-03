-- Linked groups of creatures 15980 (Naxxramas Cultist) and 15981 (Naxxramas Acolyte) in Naxxramas Spider Wing

SET @GUID4 := 88566;
SET @GUID5 := 88623;

-- Group 1
DELETE FROM `creature_linking` WHERE `guid` BETWEEN @GUID4 + 1 AND @GUID4 + 7;
INSERT INTO `creature_linking` VALUES
(@GUID4 + 1, @GUID4 + 8, 3),
(@GUID4 + 2, @GUID4 + 8, 3),
(@GUID4 + 3, @GUID4 + 8, 3),
(@GUID4 + 4, @GUID4 + 8, 3),
(@GUID4 + 5, @GUID4 + 8, 3),
(@GUID4 + 6, @GUID4 + 8, 3),
(@GUID4 + 7, @GUID4 + 8, 3);

-- Group 2
DELETE FROM `creature_linking` WHERE `guid` BETWEEN @GUID4 + 9 AND @GUID4 + 15;
INSERT INTO `creature_linking` VALUES
(@GUID4 + 9, @GUID4 + 16, 3),
(@GUID4 + 10, @GUID4 + 16, 3),
(@GUID4 + 11, @GUID4 + 16, 3),
(@GUID4 + 12, @GUID4 + 16, 3),
(@GUID4 + 13, @GUID4 + 16, 3),
(@GUID4 + 14, @GUID4 + 16, 3),
(@GUID4 + 15, @GUID4 + 16, 3);

-- Group 3
DELETE FROM `creature_linking` WHERE `guid` BETWEEN @GUID4 + 17 AND @GUID4 + 23;
INSERT INTO `creature_linking` VALUES
(@GUID4 + 17, @GUID4 + 24, 3),
(@GUID4 + 18, @GUID4 + 24, 3),
(@GUID4 + 19, @GUID4 + 24, 3),
(@GUID4 + 20, @GUID4 + 24, 3),
(@GUID4 + 21, @GUID4 + 24, 3),
(@GUID4 + 22, @GUID4 + 24, 3),
(@GUID4 + 23, @GUID4 + 24, 3);

-- Group 4
DELETE FROM `creature_linking` WHERE `guid` BETWEEN @GUID4 + 25 AND @GUID4 + 31;
INSERT INTO `creature_linking` VALUES
(@GUID4 + 25, @GUID4 + 32, 3),
(@GUID4 + 26, @GUID4 + 32, 3),
(@GUID4 + 27, @GUID4 + 32, 3),
(@GUID4 + 28, @GUID4 + 32, 3),
(@GUID4 + 29, @GUID4 + 32, 3),
(@GUID4 + 30, @GUID4 + 32, 3),
(@GUID4 + 31, @GUID4 + 32, 3);

-- Group 5
DELETE FROM `creature_linking` WHERE `guid` BETWEEN @GUID4 + 33 AND @GUID4 + 39;
INSERT INTO `creature_linking` VALUES
(@GUID4 + 33, @GUID5 + 1, 3),
(@GUID4 + 34, @GUID5 + 1, 3),
(@GUID4 + 35, @GUID5 + 1, 3),
(@GUID4 + 36, @GUID5 + 1, 3),
(@GUID4 + 37, @GUID5 + 1, 3),
(@GUID4 + 38, @GUID5 + 1, 3),
(@GUID4 + 39, @GUID5 + 1, 3);

-- Group 6
DELETE FROM `creature_linking` WHERE `guid` BETWEEN @GUID5 + 2 AND @GUID5 + 8;
INSERT INTO `creature_linking` VALUES
(@GUID5 + 2, @GUID5 + 9, 3),
(@GUID5 + 3, @GUID5 + 9, 3),
(@GUID5 + 4, @GUID5 + 9, 3),
(@GUID5 + 5, @GUID5 + 9, 3),
(@GUID5 + 6, @GUID5 + 9, 3),
(@GUID5 + 7, @GUID5 + 9, 3),
(@GUID5 + 8, @GUID5 + 9, 3);
