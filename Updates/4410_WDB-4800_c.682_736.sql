-- Stranglethorn Tiger 682 and Panther 736
-- share same spawn point
DELETE FROM creature_spawn_entry WHERE entry IN (682,736);
INSERT INTO creature_spawn_entry (guid,entry)
SELECT guid,id FROM creature
WHERE id in (682)
union
SELECT guid,736 FROM creature
WHERE id in (682)
union
SELECT guid,id FROM creature
WHERE id in (736)
union
SELECT guid,682 FROM creature
WHERE id in (736);
UPDATE creature SET id = 0 WHERE id IN (682,736);

