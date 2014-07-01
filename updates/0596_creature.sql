-- Added missing spawn of creature 5400 (Zekkis) and 5399 (Veyzhak the Cannibal)
-- Source: PSDB and YTDB
-- Thanks Neotmiren for pointing. This closes #444 

SET @GUID := 160355;
SET @POOL := 1205;

-- creature 5400 (Zekkis)
DELETE FROM `creature` WHERE `guid` BETWEEN @GUID + 0 AND @GUID + 2;
INSERT INTO `creature` VALUES
(@GUID + 0, 5400, 0, 0, 0, -10250.9, -4006.4, -99.7118, 0.401091, 28800, 0, 0, 6352, 0, 0, 0),
(@GUID + 1, 5400, 0, 0, 0, -10213.7, -4012.92, -99.7109, 3.16962, 28800, 0, 0, 6352, 0, 0, 0),
(@GUID + 2, 5400, 0, 0, 0, -10229.9, -3997.75, -109.881, 4.61083, 28800, 0, 0, 6352, 0, 0, 0);

UPDATE `creature_template` SET `Rank` = 2 WHERE `Entry` = 5400;

-- Created pool
DELETE FROM `pool_creature_template` WHERE `id` = 5400;
INSERT INTO `pool_creature_template` VALUES
(5400, @POOL, 0, 'Zekkis (5400)');

DELETE FROM `pool_template` WHERE `entry` = @POOL;
INSERT INTO `pool_template` VALUES
(@POOL, 1, 'Zekkis (5400)');

-- creature 5399 (Veyzhak the Cannibal)
DELETE FROM `creature` WHERE `guid` = @GUID + 3;
INSERT INTO `creature` VALUES
(@GUID + 3, 5399, 0, 0, 0, -10301, -4028.2, -74.8377, 2.79036, 28800, 0, 0, 6261, 0, 0, 0);

-- Added equipment for creature 5399 (Veyzhak the Cannibal)
UPDATE `creature_template` SET `EquipmentTemplateId` = 2408 WHERE `Entry` = 5399;
-- Added equipment for creature 5400 (Zekkis)
UPDATE `creature_template` SET `EquipmentTemplateId` = 613 WHERE `Entry` = 5400;
-- Added equipment for creature 9718 (Ghok Bashguud)
UPDATE `creature_template` SET `EquipmentTemplateId` = 2412 WHERE `Entry` = 9718;

-- Added missing equipment for creature 9718
-- Source: UDB + DBC files
DELETE FROM `creature_equip_template_raw` WHERE `entry` = 2412;
INSERT INTO `creature_equip_template_raw` VALUES
(2412, 25620, 21553, 0, 33490690, 234948100, 0, 781, 4, 0);

DELETE FROM `creature` WHERE `guid` BETWEEN @GUID + 4 AND @GUID + 10;
INSERT INTO `creature` VALUES
(@GUID + 4, 3652, 1, 0, 0, -621.612, -2270.82, 18.8419, 2.67112, 28800, 0, 0, 1341, 0, 0, 0), -- Trigore the Lasher
(@GUID + 5, 14237, 1, 0, 0, -4240.73, -2866.63, 37.1291, 5.23007, 28800, 0, 0, 2508, 0, 0, 0), -- Oozeworm
(@GUID + 6, 14237, 1, 0, 0, -4240.14, -3028.64, 44.0589, 4.23654, 28800, 5, 0, 2508, 0, 0, 1),
(@GUID + 7, 14237, 1, 0, 0, -4513.47, -2809.81, 34.1713, 1.66829, 28800, 5, 0, 2508, 0, 0, 1),
(@GUID + 8, 14236, 1, 0, 0, -4190, -4011, -9, 4.337, 28800, 7, 0, 6455, 0, 0, 1), -- Lord Angler
(@GUID + 9, 9718, 229, 0, 0, -94.917, -339.754, 70.9524, 1.55013, 7200, 5, 0, 8996, 0, 0, 1), -- Ghok Bashguud
(@GUID + 10, 9583, 229, 0, 0, -94.917, -339.754, 70.9524, 1.55013, 7200, 5, 0, 8569, 0, 0, 1); -- Alternate to Ghok Bashguud: Bloodaxe Veteran

-- Created pools for those rare creatures
DELETE FROM `pool_creature_template` WHERE `id` = 14237;
INSERT INTO `pool_creature_template` VALUES
(14237, @POOL + 1, 0, 'Oozeworm (14237)');

DELETE FROM `pool_creature` WHERE `guid` IN (@GUID + 9, @GUID + 10);
INSERT INTO `pool_creature` VALUES
(@GUID + 9, @POOL + 2, 30, 'Ghok Bashguud (9718) - Blackrock Spire'),
(@GUID + 10, @POOL + 2, 70, 'Alternate to Ghok Bashguud (9718) - Blackrock Spire');

DELETE FROM `pool_template` WHERE `entry` = @POOL + 1;
INSERT INTO `pool_template` VALUES
(@POOL + 1, 1, 'Oozeworm (14237)'),
(@POOL + 2, 1, 'Ghok Bashguud (9718) - Blackrock Spire');
