-- Added weapon for Kirtonos Heartbreak Ref. https://www.youtube.com/watch?v=FkxkmDNnv3Y
INSERT INTO `creature_equip_template` (`entry`, `equipentry1`) VALUES ('10506', '943');
UPDATE `creature_template` SET `EquipmentTemplateId`='10506' WHERE (`Entry`='10506');