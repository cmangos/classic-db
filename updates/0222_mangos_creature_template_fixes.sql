-- Adds missing equipment for NPC 9237 (War Master Voone)
-- Thanks Stan84 for pointing and fixing
-- Source: http://www.wowhead.com/npc=9237#screenshots
DELETE FROM `creature_equip_template_raw` WHERE `entry` = 967;
INSERT INTO `creature_equip_template_raw` VALUES (967, 22319, 22319, 0, 33488898, 33488898, 0, 781, 781, 0);

-- Link equipment to NPC 9237
UPDATE `creature_template` SET `equipment_id` = 967 WHERE `entry` = 9237;
