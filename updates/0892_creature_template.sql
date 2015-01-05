-- Fixed faction of NPC 10080 (Sandarr Dunereaver) and 10081 (Dustwraith) in Zul'Farrak
-- They were previously friendly.
UPDATE `creature_template` SET `FactionAlliance` = 37, `FactionHorde` = 37 WHERE `Entry` IN (10080, 10081);
UPDATE `creature_template` SET `EquipmentTemplateId` = 958 WHERE `Entry` = 10082;
UPDATE `creature_template` SET `EquipmentTemplateId` = 923 WHERE `Entry` = 10081;
