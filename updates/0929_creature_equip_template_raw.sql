-- Fixed equipment of NPC 13601 (Tinkerer Gizlock) in Maraudon
-- because it was using Naxxramas model
SET @ENTRY := 2421;

DELETE FROM `creature_equip_template_raw` WHERE `entry` = @ENTRY;
INSERT INTO `creature_equip_template_raw` (`entry`, `equipmodel1`, `equipmodel2`, `equipmodel3`, `equipinfo1`, `equipinfo2`, `equipinfo3`, `equipslot1`, `equipslot2`, `equipslot3`) VALUES
(@ENTRY, 19835, 21540, 20726, 33490690, 234948100, 33489666, 781, 4, 26);

UPDATE `creature_template` SET `EquipmentTemplateId` = @ENTRY WHERE `Entry` = 13601; 
