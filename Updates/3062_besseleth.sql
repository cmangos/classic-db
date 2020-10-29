-- Add additional spawn location for Besseleth 11921
-- new spawn had slight movement at spawn location so adding it to both
DELETE FROM creature WHERE id = 11921;
INSERT INTO creature (guid, id, map, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES
(29441, 11921, 1, 574.7124, 574.0642, 79.49241, 0.230765745043754577, 300, 300, 3, 1), -- new spawn (2009-05-22-02-53_9901_MIHASYA.sqlite) free guid in wotlk and classic-db
(29447, 11921, 1, 511.902, 708.578, 80.4939, 3.54302, 300, 300, 3, 1); -- reinsert to get rid of modelid

DELETE FROM pool_creature_template WHERE id = 11921;
INSERT INTO pool_creature_template (id, pool_entry, chance, description) VALUES (11921, 1252, 0, 'Besseleth (11921)');
DELETE FROM pool_template WHERE entry = 1252;
INSERT INTO pool_template (entry, max_limit, description) VALUES (1252, 1, 'Besseleth (11921)');

UPDATE creature_template_addon SET auras='3417' WHERE entry=11921;
