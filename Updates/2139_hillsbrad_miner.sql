-- All NPCs 2269 (Hillsbrad Miner) should have mining emote (handle in addon template)
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id=2269);
