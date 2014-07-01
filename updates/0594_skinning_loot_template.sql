-- Added missing "Dreamscale" (item 20381) skinning loot from four worldboss Dragons
-- Thanks Neotmiren for pointing. This closes #493 
-- Source: http://www.wowwiki.com/Dreamscale

-- Fixed generic green dragon skinning template providing only 1 green scale while it should provide more
UPDATE  `skinning_loot_template` SET `maxcount` = 5 WHERE `entry` = 15412;

-- Added specific skinning template for 4 Nightmare Dragons
DELETE FROM `skinning_loot_template` WHERE `entry` = 14887;
INSERT INTO `skinning_loot_template` VALUES
(14887, 15412, 0, 1, 1, 5, 0), -- Green Dragonscale
(14887, 20381, 100, 0, 3, 5, 0); -- Dreamscale

-- Assigned this new template to the 4 Nightmare Dragons
UPDATE `creature_template` SET `SkinningLootId` = 14887 WHERE `Entry` IN (14887, 14888, 14889, 14890);
