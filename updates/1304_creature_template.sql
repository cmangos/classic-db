-- Fixed equipment of NPC 6228 (Dark Iron Ambassador) in Gnomeregan
-- Thanks @Tobschinski for pointing and researching.
-- This closes #815 
UPDATE `creature_template` SET `EquipmentTemplateId` = 97 WHERE `Entry` = 6228;
