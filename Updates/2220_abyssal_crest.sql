-- Fix drop chance of item 20513 (Abyssal Crest) in Silithus: should be a 100% drop chance from elemental templars
UPDATE creature_loot_template SET ChanceOrQuestChance=100 WHERE item=20513;
