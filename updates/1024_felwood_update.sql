-- Added missing spawns of rare NPC 14339 (Death Howl) in Felwood
-- Put them into a pool
-- Source: YTDB

SET @GUID := 84971;
SET @POOL := 1214;

DELETE FROM `creature` WHERE `guid` BETWEEN @GUID + 1 AND @GUID + 3;
INSERT INTO `creature` VALUES
(@GUID + 1, 14339, 1, 0, 0, 4265.29, -1110.32, 319.876, 0.659343, 28800, 5, 0, 2672, 0, 0, 1),
(@GUID + 2, 14339, 1, 0, 0, 4136.53, -1137.87, 295.424, 3.21189, 28800, 5, 0, 2672, 0, 0, 1),
(@GUID + 3, 14339, 1, 0, 0, 3711.72, -1587.78, 202.667, 2.08249, 28800, 5, 0, 2672, 0, 0, 1);
UPDATE `creature` SET `spawndist` = 5, `MovementType` = 1 WHERE `id` = 14339;

DELETE FROM `pool_creature_template` WHERE `id` = 14339;
INSERT INTO `pool_creature_template` VALUES
(14339, @POOL, 0, 'Death Howl (14339)');

DELETE FROM `pool_template` WHERE `entry` = @POOL;
INSERT INTO `pool_template` VALUES
(@POOL, 1, 'Death Howl (14339)');

-- Fixed gossip menu of NPC 11016 (Captured Arko'narin) in Felwood
-- Source: UDB
SET @CONDITION := 332;

DELETE FROM `conditions` WHERE `condition_entry` = @CONDITION;
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`) VALUES
(@CONDITION, 8, 5202, 0),
(@CONDITION + 1, 8, 5209, 0);

UPDATE `gossip_menu` SET `condition_id` = @CONDITION WHERE `entry` = 3129 AND `text_id` = 4113;
DELETE FROM `gossip_menu` WHERE `entry` = 3129 AND `text_id` = 4114;
INSERT INTO `gossip_menu` VALUES
(3129, 4114, 0, @CONDITION + 1);

-- Added missing equipment to NPC 11018 (Arko'narin) and NPC 11141 (Spirit of Trey Lightforge) in Felwood
UPDATE `creature_template` SET `EquipmentTemplateId` = 1248 WHERE `Entry` IN (11018, 11141);

-- Updated stats of NPCs 11016, 11018, 11019, 11020 & 11141 involved in quest Rescue from Jaedenar
-- Health and/or armor values were wrong or using later expansion values. They are now
-- reverted to what they were in Classic
UPDATE `creature_template` SET `MinLevelHealth` = 5361, `MaxLevelHealth` = 5361, `HealthMultiplier` = 2.6, `Armor` = 3714, `MinLootGold` = 0, `MaxLootGold` = 0, `ArmorMultiplier` = 1 WHERE `Entry` = 11018;
UPDATE `creature_template` SET `MinLevelHealth` = 4124, `MaxLevelHealth` = 4124, `HealthMultiplier` = 2, `Armor` = 2857, `ArmorMultiplier` = 1 WHERE `Entry` = 11016;
UPDATE `creature_template` SET `Armor` = 3126 WHERE `Entry` = 11141;
UPDATE `creature_template` SET `MinLevelHealth` = 3544, `MaxLevelHealth` = 3544, `HealthMultiplier` = 2, `ArmorMultiplier` = 1 WHERE `Entry` IN (11019, 11020);
