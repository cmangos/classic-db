-- Added missing equipment for creature 15471 (Lieutenant General Andorov)
-- and 15473 (Kaldorei Elite) in Ruins of Ahn'Qiraj
-- Fixed size of creature 15471 (Lieutenant General Andorov) who was too big
-- Added flag to those creatures to make them healable by players during encounter
-- Thanks Scotty0100 for reporting
-- This closes #425

-- Linked equipment template to creatures
UPDATE `creature_template` SET `EquipmentTemplateId` = 1472, `Scale` = 1, `UnitFlags` = 4096 WHERE `Entry` = 15471;
UPDATE `creature_template` SET `EquipmentTemplateId` = 149, `UnitFlags` = 4096 WHERE `Entry` = 15473;
