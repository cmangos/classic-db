-- Added missing equipment to three NPCs in Blackrock Depths
-- Watchman Doomgrip, Gorosh the Dervish and Ok'thor the Breaker

SET @ENTRY := 2427;

DELETE FROM `creature_equip_template_raw` WHERE `entry` IN (@ENTRY, @ENTRY + 1);
INSERT INTO `creature_equip_template_raw` (`entry`, `equipmodel1`, `equipmodel2`, `equipmodel3`, `equipinfo1`, `equipinfo2`, `equipinfo3`, `equipslot1`, `equipslot2`, `equipslot3`) VALUES
(@ENTRY, 19126, 19126, 0, 50267138, 50267138, 0, 781, 781, 0),
(@ENTRY + 1, 5136, 0, 0, 50267138, 0, 0, 781, 0, 0);


UPDATE `creature_template` SET `EquipmentTemplateId` = @ENTRY WHERE `Entry` = 9027;
UPDATE `creature_template` SET `EquipmentTemplateId` = 173 WHERE `Entry` = 9030;
UPDATE `creature_template` SET `EquipmentTemplateId` = @ENTRY + 1 WHERE `Entry` = 9476;
