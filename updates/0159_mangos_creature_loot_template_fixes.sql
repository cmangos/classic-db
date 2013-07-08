-- Moved drop chance of item 5422 (Brambleweed Leggings) from reference_loot_table
-- to creature_loot_table of NPC 3672 (Boahn) with a 51% drop chance
-- Thanks to Neotmiren for pointing
-- Source: http://www.wowhead.com/item=5422
DELETE FROM `creature_loot_template` WHERE `entry` = 3672 AND `item` = 5422;
INSERT INTO `creature_loot_template` VALUES (3672, 5422, 51, 0, 1, 1, 0);
DELETE FROM `reference_loot_template` WHERE `item` = 5422;
