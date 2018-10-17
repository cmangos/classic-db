-- World loot backport cleanup

-- Add loot entry for NPCs that are missing their loot
UPDATE creature_template SET LootId=4098 WHERE Entry=4098; -- Galak Pack Runner
UPDATE creature_template SET LootId=7073 WHERE Entry=7073; -- Arados the Damned
UPDATE creature_template SET LootId=7074 WHERE Entry=7074; -- Judge Thelgram
UPDATE creature_template SET LootId=3417 WHERE Entry=3417; -- Living Flame
UPDATE creature_template SET LootId=4476 WHERE Entry=4476; -- Screaming Haunt
UPDATE creature_template SET LootId=5348 WHERE Entry=5348; -- Dreamwatcher Forktongue

-- No longer used reference tables (specifically used by only one NPC)
DELETE FROM reference_loot_template WHERE entry IN (14000, 14500, 24118, 24120, 24722, 35015);

-- TBC items added to Classic NPCs tables on TBC release
DELETE FROM creature_loot_template WHERE item IN (20976, 27860, 27859, 24480, 21877, 21947, 23797, 23777, 35562, 21953, 21949, 21945, 34535, 21944, 29426, 29739, 28399, 27855, 20974, 33126, 33071, 33086, 22644, 23679, 49002);

-- Fix condition IDs that are different between TBC and Classic
UPDATE creature_loot_template SET condition_id=987 WHERE item=11515;
UPDATE creature_loot_template SET condition_id=989 WHERE item=12842;
UPDATE creature_loot_template SET condition_id=1398 WHERE item=20384;

-- No loot for NPC 1 (World Trigger)
UPDATE creature_template SET LootId=0 WHERE Entry=1;
