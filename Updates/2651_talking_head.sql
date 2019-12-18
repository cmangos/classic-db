-- Fix drop rate of item 3317 (A Talking Head) in Silverpine Forest
-- It should be around 3% instead of 100%
UPDATE creature_loot_template SET ChanceOrQuestChance=3 WHERE item=3317;
