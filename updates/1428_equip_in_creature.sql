
UPDATE `creature` SET `equipment_id`='0' WHERE NOT `equipment_id`='0';

UPDATE `creature_template` SET `EquipmentTemplateId`='16215' WHERE `Entry`='16215';
DELETE FROM `creature_equip_template` WHERE `entry`='16215';
INSERT INTO `creature_equip_template` (`entry`, `equipentry1`, `equipentry2`, `equipentry3`) VALUES
('16215', '12959', '0', '0');

UPDATE `creature_template` SET `EquipmentTemplateId`='16216' WHERE `Entry`='16216';
DELETE FROM `creature_equip_template` WHERE `entry`='16216';
INSERT INTO `creature_equip_template` (`entry`, `equipentry1`, `equipentry2`, `equipentry3`) VALUES
('16216', '13222', '13222', '0');

UPDATE `creature_template` SET `EquipmentTemplateId`='16194' WHERE `Entry`='16194';
DELETE FROM `creature_equip_template` WHERE `entry`='16194';
INSERT INTO `creature_equip_template` (`entry`, `equipentry1`, `equipentry2`, `equipentry3`) VALUES
('16194', '11342', '0', '0');
