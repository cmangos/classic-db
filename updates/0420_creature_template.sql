-- Fixed rank and faction of creature 2601 (Foulbelly)
-- because it is a rare elite and an ogre and not wolf
-- Source: http://www.wowwiki.com/Foulbelly
UPDATE `creature_template` SET `rank` = 2, `faction_A` = 45, `faction_H` = 45, `equipment_id` = 2405 WHERE `entry` = 2601;

-- Added missing equipment for creature 2601 (Foulbelly)
-- Based on UDB equipment
DELETE FROM `creature_equip_template_raw` WHERE `entry` = 2405;
INSERT INTO  `creature_equip_template_raw` VALUES
(2405, 13913, 0, 0, 33488898, 0, 0, 781, 0, 0);
UPDATE `creature` SET `equipment_id` = 0 WHERE `id` = 2601;

-- Fixed rank of creature 1531 (Lost Soul) in Tirisfal Glades because it is not elite, only rare
-- Source: http://wowhead.com/npc=1531#comments
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 1531;

-- Fixed rank of creature 10358 (Fellicent's Shade)
-- because it is a rare and not elite
-- Source: http://www.wowhead.com/npc=10358#comments
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 10358;

-- Fixed rank of creature 763 (Lost One Chieftain)
-- because it is a rare and not elite
-- Source: http://www.wowhead.com/npc=763#comments
-- http://www.wowwiki.com/Lost_One_Chieftain
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 763;

-- Fixed rankcreature 14226 (Kaskk)
-- because it is a rare and not elite
-- Also fixed damage output because it was too high 
-- Source: http://www.wowwiki.com/Kaskk?oldid=338522
-- TBC-DB
UPDATE `creature_template` SET `rank` = 4, `mindmg` = 57, `maxdmg` = 70, `attackpower` = 29 WHERE `entry` = 14226;
