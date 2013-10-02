-- Updated ChanceOrQuestChance of quest item 3720 (Yeti Fur) as it was dropping all the time
-- source: http://www.wowhead.com/item=3720#comments
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -30 WHERE `item` = 3720 AND `entry` IN (2249, 2251, 2248);
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -25 WHERE `item` = 3720 AND `entry` = 2250;

-- Updated ChanceOrQuestChance of quest item 3658 (Recovered Tome) as it was dropping all the time
-- source: http://www.wowhead.com/item=3658#comments
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -15 WHERE `item` = 3658;

-- Updated ChanceOrQuestChance of quest item 2843 (Dirty Knucklebones) as it was dropping all the time
-- source: http://www.wowhead.com/item=2843#comments
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -50 WHERE `item` = 2843;
