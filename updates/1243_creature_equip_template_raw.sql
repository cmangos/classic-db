
SET @ENTRY :='2431';

UPDATE `creature_template` SET `EquipmentTemplateId`=@ENTRY WHERE `Entry`='7228';

DELETE FROM `creature_equip_template_raw` WHERE `entry`=@ENTRY;
INSERT INTO `creature_equip_template_raw` (`entry`, `equipmodel1`, `equipmodel2`, `equipmodel3`, `equipinfo1`, `equipinfo2`, `equipinfo3`, `equipslot1`, `equipslot2`, `equipslot3`) VALUES
(@ENTRY, '1595', '0', '0', '50267394', '0', '0', '273', '0', '0');
