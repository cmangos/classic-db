-- Fix drop rate of items used in quest 5725 (The Power to Destroy...) in Ragefire Chasm
-- They should be around 5% instead of 100%
UPDATE creature_loot_template SET ChanceOrQuestChance=-5 WHERE item IN (14395, 14396);
