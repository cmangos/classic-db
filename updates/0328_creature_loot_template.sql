-- Updated drop chance of item 9279 (White Punch Card) in Gnomeregan to make it a 10% drop chance (source: UDB)
-- This item was previously a 100% drop chance QUEST item. But, this is not a 100% drop chance and NOT a quest
-- item as Horde players could also drop it while the related quest is 100% Alliance
-- Source: http://www.wowhead.com/item=9279#comments
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 10 WHERE `item` = 9279;