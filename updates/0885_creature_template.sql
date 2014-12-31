-- Fixed equipment of creatures 11450 (Gordok Reaver) and 14351 (Gordok Bushwacker) in Dire Maul North
-- Thanks Tobschinski for poiting and providing data. This closes #685 (again)
UPDATE `creature_template` SET `EquipmentTemplateId` = 1902 WHERE `Entry` = 14351; -- Gordok Bushwacker
UPDATE `creature_template` SET `EquipmentTemplateId` = 2164 WHERE `Entry` = 11450; -- Gordok Reaver
