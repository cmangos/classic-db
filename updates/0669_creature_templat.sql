-- Fixed equipment item for creature 8890 (Anvilrage Warden)
-- Thanks Stan84 for pointing. This closes #523 
UPDATE `creature_template` SET `EquipmentTemplateId` = 1825 WHERE `Entry` = 8890;
