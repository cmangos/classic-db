-- Added missing equipment for creature 10812 (Grand Crusader Dathrohan ), 10811 (Archivist Galford),
-- 11032 (Malor the Zealous) & 10997 (Cannon Master Willey) in Stratholme
-- Thanks Tobschinski for reporting
-- This closes #445 

SET @ENTRY := 2406;

-- Added missing equipment template (backported from UDB) with use of wowhead visuals
DELETE FROM `creature_equip_template_raw` WHERE `entry` in (@ENTRY, @ENTRY + 1);
INSERT INTO `creature_equip_template_raw` VALUES
(@ENTRY, 15467, 0, 0, 50267394, 0, 0, 273, 0, 0),
(@ENTRY + 1, 19132, 19132, 18298, 33488898, 33488898, 436273922, 781, 781, 26);

-- Linked equipment template to creatures
UPDATE `creature_template` SET `EquipmentTemplateId` = 1258 WHERE `Entry` = 10812;
UPDATE `creature_template` SET `EquipmentTemplateId` = 1112 WHERE `Entry` = 10811;
UPDATE `creature_template` SET `EquipmentTemplateId` = @ENTRY WHERE `Entry` = 11032;
UPDATE `creature_template` SET `EquipmentTemplateId` = @ENTRY + 1 WHERE `Entry` = 10997;
