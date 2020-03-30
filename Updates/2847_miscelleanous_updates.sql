-- Based on https://github.com/cmangos/tbc-db/commit/9282e0fac4b1429dedcd0a41b2c0cd307f6300db

-- Dire Maul
UPDATE creature_movement_template SET waittime=5000 WHERE entry IN (14483, 14482);

-- Lower Blackrock Spire
DELETE FROM creature_linking WHERE master_guid=160096;
INSERT INTO creature_linking VALUES
(160100, 160096, 3), -- Scarshield Worg -> Scarshield Raider
(160099, 160096, 3); -- Scarshield Worg -> Scarshield Raider
-- This linking should be already handled by aggro range like for all group packs in the instance, but this way, keep the DB in sync with TBC DB

-- Fix NPC having wrong gossip flag: items to sell should directly be displayed
UPDATE creature_template SET NpcFlags=6 WHERE Entry=4256;

-- adjust black lotus respawn timer
UPDATE gameobject SET spawntimesecsmin=2700, spawntimesecsmax=4500 WHERE id=176589;

-- cleanup of one point long move paths generally used for scripting purposes
-- these are all safe to assume 5 or 10 seconds
UPDATE creature_movement SET waittime=5000 WHERE id IN (3345,3346,3347,3348,6523,6524,6525,6526,6527,7372,7373,7374,7375,7376);
