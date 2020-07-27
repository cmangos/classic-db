-- Small fixes for Dragons of Nightmare
-- Remove static spawns: they are now fully handled by core
DELETE FROM creature WHERE id IN (14890, 14889, 14888, 14887);

-- Make path Id in DB match what is used in core
UPDATE creature_movement_template SET pathId=1 WHERE entry IN (14890, 14889, 14888, 14887);
