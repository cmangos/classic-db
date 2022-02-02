INSERT INTO creature_spawn_entry SELECT guid, 1816 FROM creature b WHERE b.id IN(1816,1824);
INSERT INTO creature_spawn_entry SELECT guid, 1824 FROM creature b WHERE b.id IN(1816,1824);
UPDATE creature SET id=0 WHERE id IN(1816,1824);
