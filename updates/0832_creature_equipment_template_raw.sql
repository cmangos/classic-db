-- Added missing equipment to NPC 5124 (Sognar Cliffbeard) in Ironforge
-- Thanks Tobschinski for reporting. This closes #660
UPDATE `creature_template` SET `EquipmentTemplateId` = 515 WHERE `Entry` = 5124;
DELETE FROM `creature_addon` WHERE `guid` = (SELECT `guid` FROM `creature` WHERE `id` = 5124);

-- Fixed equipment of NPC 5669 (Helena Atwood ) in Undercity
-- Thanks Tobschinski for reporting and X-Savior and Grz3s for their help.
SET @ENTRY := 2414;
DELETE FROM `creature_equip_template_raw` WHERE `entry` = @ENTRY;
INSERT INTO `creature_equip_template_raw` VALUES
(@ENTRY, 0, 0, 1136, 0, 0, 436273922, 0, 0, 0);

UPDATE `creature_template` SET `EquipmentTemplateId` = @ENTRY WHERE `Entry` = 5669;

-- Fixed wrong equipment item model in [0646]. Thanks Tobschinski for pointing.
UPDATE `creature_equip_template_raw` SET `equipmodel3` = 22671 WHERE `entry` = 2413;
