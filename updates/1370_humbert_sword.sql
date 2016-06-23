-- Fixed wrong drop chance of quest item 3693 (Humbert's Sword)
-- Thanks @Neotmiren for reporting, researching and fixing
-- This closes #865
UPDATE creature_loot_template SET ChanceOrQuestChance=-8 WHERE item=3693 AND ChanceOrQuestChance=-100;
