-- https://www.wowhead.com/wotlk/item=11568/torwas-pouch
-- 11568	2450	Briarthorn
-- 11568	3820	Stranglekelp
-- 11568	8838	Sungrass
-- 11568	11018	Un'Goro Soil
-- 11568	16204	Illusion Dust
DELETE FROM `item_loot_template` WHERE `entry` = 11568 AND `item` NOT IN (11569,11570); -- Preserved Threshadon Meat, Preserved Pheromone Mixture
UPDATE `item_loot_template` SET `ChanceOrQuestChance` = 100 WHERE `entry` = 11568; -- at 100%

-- https://www.wowhead.com/wotlk/item=4637/steel-lockbox#contains;150
-- 4637	8838	Sungrass
DELETE FROM `item_loot_template` WHERE `entry` = 4637 AND `item` = 8838;

-- https://www.wowhead.com/wotlk/item=5758/mithril-lockbox
-- 5758	2450	Briarthorn
DELETE FROM `item_loot_template` WHERE `entry` = 5758 AND `item` = 2450;

