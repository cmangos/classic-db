-- Fixed drop rate of quest item 4612 (Black Drake's Heart) which was erroneously set to 100% instead of the awfully low drop rate it should have
-- Source: http://www.wowhead.com/item=4612#comments
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -2 WHERE `item` = 4612;

