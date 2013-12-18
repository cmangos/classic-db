-- Decreased drop chance of quest item 7273 (Witherbark Totem Stick) as it was dropping far too frequently
-- Drop rate guessed from comments (not exact value but still better that the actual 80%)
-- Source: http://www.wowhead.com/item=7273#comments
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -40 WHERE `item` = 7273;
