
UPDATE `creature_template` SET `EquipmentTemplateId` = '16148' WHERE (`Entry` = '16148');
REPLACE INTO `creature_equip_template` (`entry`, `equipentry1`, `equipentry2`, `equipentry3`) VALUES
('16148', '13504', '23356', '0');

UPDATE `creature_template` SET `EquipmentTemplateId` = '0' WHERE (`Entry` = '16150');
DELETE FROM `creature_equip_template` WHERE (`entry` = '16150');
