-- Fixed equipment template of a few NPCs
-- Thanks @Tobschinski for reporting. This closes #812
UPDATE `creature_template` SET `EquipmentTemplateId` = 1695 WHERE `Entry` = 9596; -- Bannok Grimaxe
UPDATE `creature_template` SET `EquipmentTemplateId` = 920 WHERE `Entry` = 10080; -- Sandarr Dunereaver
UPDATE `creature_template` SET `EquipmentTemplateId` = 1130 WHERE `Entry` = 11143; -- Postmaster Malown
UPDATE `creature` SET `equipment_id` = 0 WHERE `id` = 15312; -- Obsidian Nullifier
