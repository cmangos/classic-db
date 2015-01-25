-- Adjusted creatures spawned HP to change in template value
UPDATE `creature` SET `curhealth` = 1716 WHERE `id` = 1088;

-- Readded NPCs removed in previous commit by wrong variable set
DELETE FROM `creature` WHERE `guid` BETWEEN 1 AND 5;
INSERT INTO `creature` VALUES
(1, 2843, 0, 4481, 0, -14467.8, 468.374, 15.1064, 0.139626, 300, 0, 0, 2766, 0, 0, 0),
(2, 7853, 0, 7036, 0, -14464.9, 459.585, 15.2488, 3.735, 300, 0, 0, 1605, 0, 0, 0),
(3, 2499, 0, 7429, 0, -14355.9, 433.399, 7.55289, 1.79769, 300, 0, 0, 2284, 0, 0, 0),
(4, 2838, 0, 7181, 0, -14430.2, 410.963, 15.3606, 3.03687, 300, 0, 0, 3077, 0, 0, 0),
(5, 2839, 0, 4478, 0, -14340.6, 414.604, 6.71338, 2.19912, 300, 0, 0, 2568, 0, 0, 0);

DELETE FROM `pool_creature` WHERE  `guid` BETWEEN 1 AND 5;

-- Reapplied rev 08223 with correct values for GUID
SET @GUID := 155621;
SET @POOL := 1208;
-- ----------------------------
-- Sandarr Dunereaver (10080)
-- ----------------------------
DELETE FROM `creature` WHERE `guid` IN (@GUID, @GUID + 1);
INSERT INTO `creature` VALUES (@GUID, 10080, 209, 0, 0, 1546.25, 1017.14, 8.87683, 0.0109968, 7200, 0, 0, 5544, 0, 0, 0); -- Sandarr Dunereaver
INSERT INTO `creature` VALUES (@GUID + 1, 7269, 209, 0, 0, 1546.25, 1017.14, 8.87683, 0.0109968, 60, 5, 0, 1782, 0, 0, 1); -- Sandarr Dunereaver placeholder
DELETE FROM `pool_creature` WHERE `guid` IN (@GUID, @GUID + 1);
INSERT INTO `pool_creature` VALUES
(@GUID, @POOL, 10, 'Sandarr Dunereaver (Zul\'Farrak)'),
(@GUID + 1, @POOL, 0, 'Sandarr Dunereaver placeholder (Zul\'Farrak)');
DELETE FROM `pool_template` WHERE `entry` = @POOL;
INSERT INTO `pool_template` VALUES
(@POOL, 1, 'Sandarr Dunereaver (Zul\'Farrak)');
-- ----------------------------
-- Dustwraith (10081)
-- ----------------------------
DELETE FROM `creature` WHERE `guid` IN (@GUID + 2, @GUID + 3);
INSERT INTO `creature` VALUES (@GUID + 2, 10081, 209, 0, 0, 1627.47, 1186.85, 8.87693, 0.647954, 7200, 15, 0, 5757, 0, 0, 1); -- Dustwraith
INSERT INTO `creature` VALUES (@GUID + 3, 7269, 209, 0, 0, 1627.47, 1186.85, 8.87693, 0.647954, 60, 5, 0, 1782, 0, 0, 1); -- Dustwraith placeholder
DELETE FROM `pool_creature` WHERE `guid` IN (@GUID + 2, @GUID + 3);
INSERT INTO `pool_creature` VALUES
(@GUID + 2, @POOL + 1, 10, 'Dustwraith (Zul\'Farrak)'),
(@GUID + 3, @POOL + 1, 0, 'Dustwraith placeholder (Zul\'Farrak)');
DELETE FROM `pool_template` WHERE `entry` = @POOL + 1;
INSERT INTO `pool_template` VALUES
(@POOL + 1, 1, 'Dustwraith (Zul\'Farrak)');
-- ----------------------------
-- Zerillis (10082)
-- ----------------------------
DELETE FROM `creature` WHERE `guid` IN (@GUID + 4);
INSERT INTO `creature` VALUES (@GUID + 4, 10082, 209, 0, 0, 1628.94, 952.042, 8.87684, 5.43152, 7200, 0, 0, 5544, 0, 0, 2); -- Zerillis
UPDATE `creature_template` SET `MovementType` = 2 WHERE `Entry` = 10082;
DELETE FROM `creature_movement_template` WHERE `entry` = 10082;
INSERT INTO `creature_movement_template` VALUES
(10082, 1, 1648.93, 929.182, 9.0735, 400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10082, 2, 1676.93, 909.081, 8.8778, 400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10082, 3, 1679.64, 896.14, 8.8778, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10082, 4, 1662.26, 892.587, 8.87689, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10082, 5, 1653.05, 908.666, 8.87689, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10082, 6, 1649.56, 928.862, 8.97394, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10082, 7, 1628.18, 951.86, 8.87694, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
DELETE FROM `pool_creature` WHERE `guid` IN (@GUID + 4, 44170);
INSERT INTO `pool_creature` VALUES
(@GUID + 4, @POOL + 2, 30, 'Zerillis (Zul\'Farrak)'),
(44170, @POOL + 2, 0, 'Zerillis placeholder (Zul\'Farrak)');
DELETE FROM `pool_template` WHERE `entry` = @POOL + 2;
INSERT INTO `pool_template` VALUES
(@POOL + 2, 1, 'Zerillis (Zul\'Farrak)');

