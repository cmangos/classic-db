INSERT INTO creature_spawn_entry(guid,entry) SELECT guid, 4036 FROM creature WHERE id IN(4036,4044); -- rogue flame spirit
INSERT INTO creature_spawn_entry(guid,entry) SELECT guid, 4044 FROM creature WHERE id IN(4036,4044); -- blackened basilisk
UPDATE creature SET id=0 WHERE id IN(4036,4044);

