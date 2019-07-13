-- Remove cross maps pools
DELETE FROM pool_template WHERE entry BETWEEN 7000 AND 7025;
DELETE FROM pool_pool WHERE pool_id BETWEEN 7002 AND 7025;
DELETE FROM pool_creature WHERE pool_entry BETWEEN 7002 AND 7025;

-- Remove related NPCs
DELETE FROM creature WHERE guid BETWEEN 140491 AND 140582;
DELETE FROM creature_movement WHERE id BETWEEN 140491 AND 140582;
