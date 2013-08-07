-- Fixed equipment for creature 11486 (Prince Tortheldrin) who should wear two swords
-- Thanks stan84 for pointing
-- Source: http://www.wowhead.com/npc=11486#screenshots
UPDATE `creature_template` SET `equipment_id` =  1203  WHERE `entry` = 11486;
DELETE FROM `creature_equip_template_raw` WHERE `entry` = 1203;
INSERT INTO `creature_equip_template_raw` VALUES (1203, 30638, 30638, 0, 33490690, 33490690, 0, 781, 781, 0);
