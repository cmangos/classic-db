-- Remove wrong skinning loot from Hive'Ashi NPCs as they had none in Classic
UPDATE creature_template SET SkinningLootId=0 WHERE Entry IN (11698, 11721, 11722, 11723, 11724);
DELETE FROM skinning_loot_template WHERE entry IN (11698, 11721, 11722, 11723, 11724);

-- Remove wrong skinning loot from Hive'Regal NPCs as they had none in Classic
UPDATE creature_template SET SkinningLootId=0 WHERE Entry IN (11730, 11731, 11732, 11733, 11734);
DELETE FROM skinning_loot_template WHERE entry IN (11730, 11731, 11732, 11733, 11734);

-- Remove wrong skinning loot from Hive'Zora NPCs as they had none in Classic
UPDATE creature_template SET SkinningLootId=0 WHERE Entry IN (11725, 11726, 11727, 11728, 11729);
DELETE FROM skinning_loot_template WHERE entry IN (11725, 11726, 11727, 11728, 11729);
