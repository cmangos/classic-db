-- Removed wrong equipment for creature 5154 (Poranna Snowbraid) in Ironforge as she should wear none
UPDATE `creature_template` SET `EquipmentTemplateId` = 0 WHERE `Entry` = 5154;
