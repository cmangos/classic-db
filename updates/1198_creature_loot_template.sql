-- Removed wrong drop chance for item 12236 (Pure Un'Goro Sample) from NPC 7035 (Firegut Ogre)
-- This closes #798
DELETE FROM creature_loot_template WHERE entry = 7035 AND item = 12236;
