INSERT INTO creature_spawn_entry SELECT guid, 1817 FROM creature b WHERE b.id IN(1817,1821);
INSERT INTO creature_spawn_entry SELECT guid, 1821 FROM creature b WHERE b.id IN(1817,1821);
UPDATE creature SET id=0 WHERE id IN(1817,1821);
