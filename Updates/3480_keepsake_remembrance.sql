-- Reinsert Keepsake of Remembrance 176630 & add pooling (+2 spawns)(+2 NEW spawns)
-- https://tbc.wowhead.com/object=176630/keepsake-of-remembrance#comments
DELETE FROM gameobject WHERE id=176630;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state) VALUES
(88337, 176630, 0, -1720.33, -1529, 55.8142, 0.331611, 0, 0, 0.165047, 0.986286, 300, 300, 255, 1),
(89485, 176630, 0, -1680.13, -1562.57, 56.2585, -1.98967, 0, 0, -0.838669, 0.544641, 300, 300, 255, 1),
-- NEW
(88335, 176630, 0, -1638.89, -1926.25, 73.9605, 5.44543, 0, 0, -0.406736, 0.913545, 300, 300, 100, 1),
(88336, 176630, 0, -1718.62, -1857.48, 81.317, 4.43314, 0, 0, -0.798635, 0.601815, 300, 300, 100, 1);

UPDATE gameobject SET spawntimesecsmin=30, spawntimesecsmax=60, animprogress=100, state=1 WHERE id=176630;

DELETE FROM pool_gameobject_template WHERE id=176630;
INSERT INTO pool_gameobject_template (id, pool_entry, chance, description) VALUES
(176630, 1845, 0, 'Arathi Highlands - Keepsake of Remembrance (176630)');

DELETE FROM pool_template WHERE entry=1845;
INSERT INTO pool_template (entry, max_limit, description) VALUES
(1845, 1, 'Arathi Highlands - Keepsake of Remembrance (176630)'); -- 5 max
