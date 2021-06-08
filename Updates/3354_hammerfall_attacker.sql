-- Pack of Trolls attacking Hammerfall 
-- Updates
UPDATE creature SET spawntimesecsmin = 120, spawntimesecsmax = 300 WHERE guid = 140697; -- make event happen on random timer
UPDATE creature_movement SET waittime = 1000, script_id = 5 WHERE id = 140697 AND point = 1;
UPDATE creature_movement SET waittime = 0, script_id = 0 WHERE id = 140697 AND point IN (2,3);
-- links
DELETE FROM creature_linking WHERE master_guid IN (140697);
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(140693, 140697, 1+2+128+1024+512),
(140694, 140697, 1+2+128+1024+512),
(140695, 140697, 1+2+128+1024+512),
(140696, 140697, 1+2+128+1024+512);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (255301,255302);
