-- Fixed missing equipment of various NPCs in Blackwing Lair and Onyxia Lair
-- Thanks Tobschinski for reporting and researching. This closes #760 and closes #762 
UPDATE `creature_template` SET `EquipmentTemplateId` = 2164 WHERE `Entry` IN (14456, 12416); -- Blackwing Guardsman, Blackwing Legionnaire
UPDATE `creature_template` SET `EquipmentTemplateId` = 1427 WHERE `Entry` = 12557; -- Grethok the Controller
UPDATE `creature_template` SET `EquipmentTemplateId` = 1371 WHERE `Entry` = 12420; -- Blackwing Mage
UPDATE `creature_template` SET `EquipmentTemplateId` = 1003 WHERE `Entry` = 12459; -- Blackwing Warlock
UPDATE `creature_template` SET `EquipmentTemplateId` = 1845 WHERE `Entry` = 12457; -- Blackwing Spellbinder
UPDATE `creature_template` SET `EquipmentTemplateId` = 1428 WHERE `Entry` = 12458; -- Blackwing Taskmaster
UPDATE `creature_template` SET `EquipmentTemplateId` = 1872 WHERE `Entry` = 12422; -- Death Talon Dragonspawn
UPDATE `creature_template` SET `EquipmentTemplateId` = 1742 WHERE `Entry` = 12467; -- Death Talon Captain
UPDATE `creature_template` SET `EquipmentTemplateId` = 155 WHERE `Entry` = 12464; -- Death Talon Seether
UPDATE `creature_template` SET `EquipmentTemplateId` = 417 WHERE `Entry` IN (12461, 14261, 14262, 14263, 14264, 14265); -- Death Talon Overseer, Blue/Green/Bronze/Red/Black Drakonid
UPDATE `creature_template` SET `EquipmentTemplateId` = 2415 WHERE `Entry` IN (12017, 14302); -- Broodlord Lashlayer, Chromatic Drakonid
UPDATE `creature_template` SET `EquipmentTemplateId` = 1184 WHERE `Entry` = 14101; -- Enraged Felguard

SET @ENTRY := 2422;

DELETE FROM `creature_equip_template_raw` WHERE `entry` BETWEEN @ENTRY AND @ENTRY + 4;
INSERT INTO `creature_equip_template_raw` VALUES
(@ENTRY, 18388, 0, 0, 33490434, 0, 0, 529, 0, 0), -- lance
(@ENTRY + 1, 20300, 0, 0, 50268674, 0, 0, 529, 0, 0), -- 2H staff
(@ENTRY + 2, 19673, 0, 0, 50267138, 0, 0, 781, 0, 0), -- one hand mace
(@ENTRY + 3, 8376, 0, 0, 33488898, 0, 0, 1037, 0, 0), -- one hand big sword
(@ENTRY + 4, 6529, 6530, 0, 50266116, 50266116, 0, 1815, 1815, 0); -- bottle right and left hand

UPDATE `creature_template` SET `EquipmentTemplateId` = @ENTRY WHERE `Entry` IN (12463, 12129); -- Death Talon Flamescale, Onyxian Warder
UPDATE `creature_template` SET `EquipmentTemplateId` = @ENTRY + 1 WHERE `Entry` = 12465; -- Death Talon Wyrmkin
UPDATE `creature_template` SET `EquipmentTemplateId` = @ENTRY + 2 WHERE `Entry` = 12468; -- Death Talon Hatcher
UPDATE `creature_template` SET `EquipmentTemplateId` = @ENTRY + 3 WHERE `Entry` = 12460; -- Death Talon Wyrmguard
UPDATE `creature_template` SET `EquipmentTemplateId` = @ENTRY + 4 WHERE `Entry` = 13996; -- Blackwing Technician
