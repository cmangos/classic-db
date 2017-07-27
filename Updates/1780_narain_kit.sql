-- Fixed drop chance for items inside item 21042 (Narain's Special Kit)
-- Thanks @Lichery for pointing. This closes #106
UPDATE item_loot_template SET ChanceOrQuestChance=100 WHERE entry=21042;
