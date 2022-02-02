INSERT INTO creature_spawn_entry SELECT guid, 9878 FROM creature b WHERE b.id IN(9878,9879);
INSERT INTO creature_spawn_entry SELECT guid, 9879 FROM creature b WHERE b.id IN(9878,9879);
UPDATE creature SET id=0 WHERE id IN(9878,9879);
