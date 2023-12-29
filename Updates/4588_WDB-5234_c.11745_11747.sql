-- Cyclone Warrior 11745 / Desert Rager 11747
-- we have wps only for 2 of them (100% they're more)
-- also i found, that they share spawn points (+ the same paths). 
-- Only question is - if theres smth more, like spawn Cyclone Warrior 
-- only when air invasion is ON.. or smth like that...
-- this need to be confirmed one day.  
DELETE FROM creature_spawn_entry WHERE entry IN (11745,11747);
INSERT INTO creature_spawn_entry (guid,entry)
SELECT guid,id FROM creature
WHERE id in (11745)
union
SELECT guid,11747 FROM creature
WHERE id in (11745)
union
SELECT guid,id FROM creature
WHERE id in (11747)
union
SELECT guid,11745 FROM creature
WHERE id in (11747);
UPDATE creature SET id = 0 WHERE id IN (11745,11747);

