-- Added missing rare spawns NPCs in Zul'Farrak
-- Source: http://www.wowhead.com/npc=10080#comments
-- http://www.wowhead.com/npc=10081#comments
-- http://www.wowhead.com/npc=10082#comments

SET @GUID := 1;
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

DELETE FROM `pool_template` WHERE `entry` = @POOL + 1;
INSERT INTO `pool_template` VALUES
(@POOL + 2, 1, 'Zerillis (Zul\'Farrak)');
