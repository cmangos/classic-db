-- Fixing loot table of item 5523 (Small Barnacled Clam)
-- Removing random items from loot table of Small Barnacled Clam
-- Setting Clam Meat to drop 100%, instead of 99.8%
-- Source: http://wowpedia.org/Clams
DELETE FROM `item_loot_template` WHERE `entry` = 5523 AND `item` NOT IN (5498, 5503);
UPDATE `item_loot_template` SET `ChanceOrQuestChance` = 100 WHERE `entry` = 5523 AND `item` = 5503;
UPDATE `item_loot_template` SET `groupid` = 1 WHERE `entry` = 5523 AND `item` = 5498;