-- add  Korra waypoints and scripts
UPDATE creature SET movementtype=2 WHERE id=3888;
UPDATE creature_template_addon SET bytes1=0 WHERE entry=3888; -- UNIT_STAND_STATE_SLEEP
DELETE FROM creature_movement_template WHERE entry=3888;
INSERT INTO creature_movement_template (entry, point, positionx, positiony, positionz, orientation, waittime, scriptid) VALUES
(3888, 1, 2768.44, -411.098, 111.463, 1.62316, 480000, 388803),
(3888, 2, 2768.44, -411.098, 111.463, 100, 2000, 388801),
(3888, 3, 2766.91, -407.248, 111.471, 100, 6000, 388802),
(3888, 4, 2763.06, -402.483, 111.482, 100, 0, 0),
(3888, 5, 2763.35, -399.281, 111.479, 100, 0, 0),
(3888, 6, 2762.86, -396.496, 111.235, 100, 10000, 0),
(3888, 7, 2756.46, -418.976, 111.475, 100, 0, 0),
(3888, 8, 2754.08, -425.621, 111.475, 100, 0, 0),
(3888, 9, 2748.49, -435.343, 111.474, 100, 0, 0),
(3888, 10, 2736.83, -432.064, 111.874, 100, 189000, 388803),
(3888, 11, 2736.83, -432.064, 111.874, 100, 2000, 388801),
(3888, 12, 2743.72, -433.638, 111.458, 100, 0, 0),
(3888, 13, 2751.9, -428.987, 111.474, 100, 0, 0),
(3888, 14, 2759.19, -415.571, 111.48, 100, 0, 0),
(3888, 15, 2768.07, -415.291, 111.459, 100, 0, 0);

DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 388801 AND 388803;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, dataint, comments) VALUES
(388801, 0, 28, 0, 0, 'Korra - Set UNIT_STAND_STATE_STAND'),
(388802, 2, 0, 0, 1296, 'Korra - Emote'),
(388803, 2, 28, 3, 0, 'Korra - Set UNIT_STAND_STATE_SLEEP');

UPDATE broadcast_text SET ChatTypeID=2 WHERE id=1296;
