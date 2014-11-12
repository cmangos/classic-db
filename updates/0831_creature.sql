-- Added missing NPC 12797 (Grunt Korf) and 12798 (Grunt Bek'rah) in Orgrimmar
-- Source: UDB
DELETE FROM `creature` WHERE `guid` IN (125681, 125682);
INSERT INTO `creature` VALUES
(125682, 12797, 1, 0, 0, 1643.48, -4217.4, 56.381908, 0.446869, 300, 0, 0, 4079, 0, 0, 0),
(125681, 12798, 1, 0, 0, 1656.62, -4224.73, 56.375851, 1.68466, 300, 0, 0, 4079, 0, 0, 0);

-- Added missing equipment
SET @ENTRY := 2415;
DELETE FROM `creature_equip_template_raw` WHERE `entry` = @ENTRY;
INSERT INTO `creature_equip_template_raw` VALUES
(@ENTRY, 5290, 0, 0, 285279746, 0, 0, 2, 0, 0);

UPDATE `creature_template` SET `EquipmentTemplateId` = @ENTRY WHERE `Entry` IN (12797, 12798);
