-- Added missing equipment to creatures 15502 (Andorgos), 15503 (Kandrostrasz) & 15504 (Vethsera) in Temple of Ahn'Qiraj
-- Source: UDB/DBC files

-- Added missing equipment entries
DELETE FROM `creature_equip_template_raw` WHERE `entry` IN (2409, 2410, 2411);
INSERT INTO `creature_equip_template_raw` VALUES
(2409, 23173, 0, 0, 33492482, 0, 0, 13, 0, 0),
(2410, 24490, 0, 0, 285346306, 0, 0, 2, 0, 0),
(2411, 30516, 0, 0, 33492482, 0, 0, 1805, 0, 0);

-- Linked them to NPCs
UPDATE `creature_template` SET `EquipmentTemplateId` = 2409 WHERE `Entry` = 15502;
UPDATE `creature_template` SET `EquipmentTemplateId` = 2410 WHERE `Entry` = 15503;
UPDATE `creature_template` SET `EquipmentTemplateId` = 2411 WHERE `Entry` = 15504;

DELETE FROM `creature_template_addon` WHERE `entry` = 15503;
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES
(15503, 0, 0, 0, 16, 0, 0, NULL);
