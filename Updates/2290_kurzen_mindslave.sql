-- Remove static spawn point of NPC 6366 (Kurzen Mindslave) as it is summoned
DELETE FROM creature WHERE guid=769 AND id=6366; -- Kurzen Mindslave summoned by Mogh the Undying 1060
DELETE FROM creature_addon WHERE guid=769; -- also remove creature_addon
