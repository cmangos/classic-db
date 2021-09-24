-- Complete Slagtree's Lost Tools 179908 spawns using wotlk-db guids and rotation (+2 spawns 1+ from wotlk-db, +1 spawn from sniff)
-- https://www.wowhead.com/object=179908/slagtrees-lost-tools#comments:id=312136
DELETE FROM gameobject WHERE id=179908;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state) VALUES
(88272, 179908, 0, 108.2818984985351562, -4368.33642578125, 120.4856033325195312, 1.343903660774230957, 0, 0, 0.622514665126800537, 0.78260815143585205, 300, 300, 255, 1),
(92005, 179908, 0, 216.3707122802734375, -4308.5302734375, 117.8238067626953125, 0.593411922454833984, 0, 0, 0.292371690273284912, 0.956304788589477539, 300, 300, 255, 1),
(92004, 179908, 0, 316.279022216796875, -4132.7890625, 120.2073135375976562, 0.523597955703735351, 0, 0, 0.258818626403808593, 0.965925931930541992, 300, 300, 255, 1),
(46420, 179908, 0, 374.85797119140625, -3784.89013671875, 169.83453369140625, 2.967059612274169921, 0, 0, 0.996194720268249511, 0.08715580403804779, 2, 2, 100, 1),
-- NEW and last spawn location needed, reusing tbc guid that is free in both classic and wotlk-db
(55688, 179908, 0, 472.97503662109375, -3629.263916015625, 118.7344970703125, 2.321287870407104492, 0, 0, 0.917060077190399169, 0.398749083280563354, 2, 2, 100, 1);

UPDATE gameobject SET spawntimesecsmin=180, spawntimesecsmax=300, animprogress=100, state=1 WHERE id=179908;

DELETE FROM pool_gameobject_template WHERE id=179908;
INSERT INTO pool_gameobject_template (id, pool_entry, chance, description) VALUES (179908, 1810, 0, 'The Hinterlands - Slagtree''s Lost Tools (179908)');
DELETE FROM pool_template WHERE entry=1810;
INSERT INTO pool_template (entry, max_limit, description) VALUES (1810, 1, 'The Hinterlands - Slagtree''s Lost Tools (179908)'); -- 5 max
