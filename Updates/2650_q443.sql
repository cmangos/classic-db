-- Fix drop rate of item used in quest 443 (Rot Hide Ichor) in Silverpine Forest
-- They should be around 30% instead of 100%
UPDATE creature_loot_template SET ChanceOrQuestChance=-30 WHERE item=3236;
