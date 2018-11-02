-- Fix drop rate of item 12219 (Unadorned Seal of Ascension) in LBRS
-- It's a static drop unrelated to having or not the quest
UPDATE creature_loot_template SET ChanceOrQuestChance=5 WHERE item=12219;
