-- Fixed wrong equipment assigned to bosses and bosses adds in Molten Core
-- Thanks to Tobschinski for pointing. This closes #506 and contributes to #250
-- Source: retail

-- Updated creature templates with the right equipment entry
UPDATE `creature_template` SET `EquipmentTemplateId` = 1400 WHERE `Entry` = 12119; -- Flamewaker Protector
UPDATE `creature_template` SET `EquipmentTemplateId` = 1280 WHERE `Entry` = 12259; -- Gehennas
UPDATE `creature_template` SET `EquipmentTemplateId` = 832 WHERE `Entry` = 11661; -- Flamewaker
UPDATE `creature_template` SET `EquipmentTemplateId` = 96 WHERE `Entry` = 12264; -- Shazzrah
UPDATE `creature_template` SET `EquipmentTemplateId` = 94 WHERE `Entry` = 11662; -- Flamewaker Priest
UPDATE `creature_template` SET `EquipmentTemplateId` = 1752 WHERE `Entry` = 12018; -- Majordomo Executus
UPDATE `creature_template` SET `EquipmentTemplateId` = 1278 WHERE `Entry` = 11664; -- Flamewaker Elite

-- Added missing equipment template for Sulfuron Harbinger
DELETE FROM `creature_equip_template_raw` WHERE `entry` = 2413;
INSERT INTO `creature_equip_template_raw` VALUES
(2413, 7480, 0, 8927, 33490434, 0, 419500034, 529, 0, 25);

UPDATE `creature_template` SET `EquipmentTemplateId` = 2413 WHERE `Entry` = 12098; -- Sulfuron Harbinger
