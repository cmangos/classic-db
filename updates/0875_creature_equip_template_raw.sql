-- Fixed equipment of many creatures in Dire Maul North
-- Thanks Tobschinski for poiting and providing data. This closes #685  

SET @ENTRY := 2416;

UPDATE `creature_template` SET `EquipmentTemplateId` = @ENTRY WHERE `Entry` = 11441; -- Gordok Brute
UPDATE `creature_template` SET `EquipmentTemplateId` = 1310 WHERE `Entry` = 14322; -- Stomper Kreeg <The Drunk> (or 1309)
UPDATE `creature_template` SET `EquipmentTemplateId` = @ENTRY + 1 WHERE `Entry` = 14326; -- Guard Mol'dar
UPDATE `creature_template` SET `EquipmentTemplateId` = @ENTRY + 2 WHERE `Entry` = 14321; -- Guard Fengus
UPDATE `creature_template` SET `EquipmentTemplateId` = @ENTRY + 3 WHERE `Entry` = 14323; -- Guard Slip'kik
UPDATE `creature_template` SET `EquipmentTemplateId` = @ENTRY + 4 WHERE `Entry` = 14325; -- Captain Kromcrush
UPDATE `creature_template` SET `EquipmentTemplateId` = 94 WHERE `Entry` =14324; -- Cho'Rush the Observer (or 95)

DELETE FROM `creature_equip_template_raw` WHERE `entry` BETWEEN @ENTRY AND @ENTRY;
INSERT INTO `creature_equip_template_raw` VALUES
(@ENTRY, 5199, 0, 0, 50267138, 0, 0, 781, 0, 0),
(@ENTRY + 1, 19126, 1755, 0, 50267138, 234948100, 0, 781, 4, 0),
(@ENTRY + 2, 7427, 1755, 0, 33488898, 234948100, 0, 781, 4, 0),
(@ENTRY + 3, 1390, 1706, 0, 33488898, 234948100, 0, 781, 4, 0),
(@ENTRY + 4, 782, 0, 0, 33489154, 0, 0, 273, 0, 0);
