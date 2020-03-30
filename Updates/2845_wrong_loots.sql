-- Remove loot from NPCs that should have one
DELETE FROM creature_loot_template WHERE entry IN (
235, -- Salma Saldean
8996 -- Voidwalker Minion
);

UPDATE creature_template SET LootId=0 WHERE Entry IN (235, 8996);
