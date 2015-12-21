-- Added missing equipment to NPC 10579 (Kirtonos the Herald) and NPC 11439 (Illusion of Jandice Barov)
SET @ENTRY := 2434;
DELETE FROM `creature_equip_template_raw` WHERE `entry` = @ENTRY;
INSERT INTO `creature_equip_template_raw` VALUES (@ENTRY, 20256, 0, 0, 50268674, 0, 0, 529, 0, 0);

UPDATE `creature_template` SET `EquipmentTemplateId` = @ENTRY WHERE `Entry` = 10579;
UPDATE `creature_template` SET `EquipmentTemplateId` = 1221 WHERE `Entry` = 11439;
