-- Fixed drop chance of item 12219 (Unadorned Seal of Ascension) in Blackrock Spire
-- as it should drop without players having the quest and even when they have complete it
-- Source: http://www.wowhead.com/item=12219#comments
-- Data from UDB
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 10 WHERE `item` = 12219;
