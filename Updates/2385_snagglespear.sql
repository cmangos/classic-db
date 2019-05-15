-- new spawn location (sniff)
DELETE FROM creature WHERE guid=99461;
INSERT INTO creature (guid, id, map, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist) VALUES
(99461, 5786, 1, 0, -2780.27, -702.809, 6.526313, 0.1570796, 19900, 19900, 0);

DELETE FROM pool_template WHERE entry=272;
INSERT INTO pool_template (entry,max_limit,description) VALUES
(272, 1, 'Snagglespear');

DELETE FROM pool_creature WHERE guid IN (26081, 99461);
INSERT INTO pool_creature (guid,pool_entry,chance,description) VALUES
(26081, 272, 0, 'Snagglespear Spawn 1'),
(99461, 272, 0, 'Snagglespear Spawn 2');
