INSERT INTO creature_spawn_entry SELECT guid, 6516 FROM creature b WHERE b.id IN(6516,6514,6513);
INSERT INTO creature_spawn_entry SELECT guid, 6514 FROM creature b WHERE b.id IN(6516,6514,6513);
INSERT INTO creature_spawn_entry SELECT guid, 6513 FROM creature b WHERE b.id IN(6516,6514,6513);
UPDATE creature SET id=0 WHERE id IN(6516,6514,6513);
