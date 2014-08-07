-- Fixed equipment item for creature 10996 (Fallen Hero)
-- Thanks Zingzah  for pointing. This closes #507 
UPDATE `creature_template` SET `EquipmentTemplateId` = 1199 WHERE `Entry` = 10996;
