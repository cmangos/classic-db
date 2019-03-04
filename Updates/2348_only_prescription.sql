-- Fix drop chance of items for quest 8620 (The Only Prescription)
-- Source: https://wow.gamepedia.com/The_Only_Prescription
-- Draconic for Dummies Chapter I
UPDATE creature_loot_template SET condition_id=97 WHERE item=21103;
-- Draconic for Dummies Chapter II
UPDATE creature_loot_template SET ChanceOrQuestChance=4, condition_id=97 WHERE item=21104 AND entry<>12396;
UPDATE creature_loot_template SET ChanceOrQuestChance=6, condition_id=97 WHERE item=21104 AND entry=12396;
-- Draconic for Dummies Chapter III
UPDATE creature_loot_template SET ChanceOrQuestChance=6, condition_id=97 WHERE item=21105;
-- Draconic for Dummies Chapter VI
UPDATE creature_loot_template SET ChanceOrQuestChance=100, condition_id=97 WHERE item=21108;
