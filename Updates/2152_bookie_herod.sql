-- https://www.wowhead.com/npc=815/bookie-herod#comments - http://wowwiki.wikia.com/wiki/Bookie_Herod?oldid=1834194
-- https://www.wowhead.com/npc=2638/syndicate-spectre#comments
-- Add Spawns - freed up guids in tbc-db due to Instance Separation (free in classic-db, not in wotlk-db)
DELETE FROM creature WHERE guid BETWEEN 1559 AND 1561;
DELETE FROM creature_addon WHERE guid BETWEEN 1559 AND 1561;
INSERT INTO creature (guid, id, map, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES
(1559, 815, 0, -11528.35, -650.7115, 31.06158, 3.572752, 900, 900, 1, 1),
(1560, 815, 0, -11503.74, -603.7401, 36.31346, 4.000028, 900, 900, 1, 1),
(1561, 815, 0, -11637.22, -629.2045, 31.47557, 4.159368, 900, 900, 1, 1);
-- Add Entry Pooling
DELETE FROM pool_creature_template WHERE id=815;
INSERT INTO pool_creature_template (id, pool_entry, chance, description) VALUES (815, 1120, 0, 'Bookie Herod (815)');
DELETE FROM pool_template WHERE entry=1120;
INSERT INTO pool_template (entry, max_limit, description) VALUES (1120, 1, 'Bookie Herod (815)');
