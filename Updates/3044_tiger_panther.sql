-- Shadowmaw Panther 684 and Stranglethorn Tigress 772
-- share same spawn points
DELETE FROM creature_spawn_entry WHERE entry IN (684, 772);
INSERT INTO creature_spawn_entry (guid,entry)
SELECT guid,id FROM creature
WHERE id in (684)
UNION
SELECT guid,772 FROM creature
WHERE id in (684)
UNION
SELECT guid,id FROM creature
WHERE id in (772)
UNION
SELECT guid,684 FROM creature
WHERE id in (772);

UPDATE creature SET id = 0 WHERE id IN (684, 772);
