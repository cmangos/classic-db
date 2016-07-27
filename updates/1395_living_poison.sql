-- Removed all static spawns of NPC 16027 (Living Poison) in Naxxramas
-- This closes #804
DELETE FROM dbscripts_on_creature_movement WHERE id IN (SELECT DISTINCT script_id FROM creature_movement WHERE id IN (SELECT guid FROM creature WHERE id = 16027));
DELETE FROM creature_movement WHERE id IN (SELECT guid FROM creature WHERE id = 16027);
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 16027);
DELETE FROM creature WHERE id = 16027;
