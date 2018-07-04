-- Improved Gordok Ogre Tannin event in Dire Maul
-- Thanks @Tobschinski for the WP

-- -------------------------------------------
-- Gordok Bushwacker
-- -------------------------------------------

-- Fixed spawn position
UPDATE dbscripts_on_event SET x=545.9553, y=535.3183, z=25.501, o=0.006162912 WHERE id=8175;

-- Added missing script on spawn for NPC 14351 (Gordok Bushwacker)
DELETE FROM dbscripts_on_event WHERE id=8175 AND command IN (20, 25);
INSERT INTO dbscripts_on_event VALUES
(8175, 0, 25, 1, 0, 0, 14351, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Gordok Bushwacker - set run ON'),
(8175, 0, 20, 2, 0, 0, 14351, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Gordok Bushwacker - set WP movement');

-- Added missing script on movement for NPC 14351 (Gordok Bushwacker)
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1435101, 1435102);
INSERT INTO dbscripts_on_creature_movement VALUES
(1435101, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Gordok Bushwacker - set run ON'),
(1435102, 0, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Gordok Bushwacker - set run OFF'),
(1435102, 0, 20, 1, 8, 0, 0, 0, 0x08, 0, 0, 0, 0, 0, 0, 0, 0, 'Gordok Bushwacker - set random movement');

UPDATE creature_template SET MovementType=2 WHERE Entry=14351;

-- Added waypoints
DELETE FROM creature_movement_template WHERE entry=14351;
INSERT INTO creature_movement_template VALUES
(14351, 0, 1, 545.9553, 535.3183, 25.501, 100, 0, 1435101, NULL),
(14351, 0, 2, 545.9553, 535.3183, 25.501, 100, 0, 0, NULL),
(14351, 0, 3, 587.6165, 535.0733, 6.770166, 100, 0, 0, NULL),
(14351, 0, 4, 587.2323, 554.7541, -0.9583576, 100, 0, 0, NULL),
(14351, 0, 5, 590.866, 575.577, -4.755164, 100, 0, 0, NULL),
(14351, 0, 6, 595.837, 594.9178, -4.754857, 100, 0, 0, NULL),
(14351, 0, 7, 591.1803, 605.7083, -4.755144, 100, 0, 0, NULL),
(14351, 0, 8, 583.5533, 591.9974, -4.755614, 100, 0, 0, NULL),
(14351, 0, 9, 571.0203, 593.5983, -4.754771, 100, 0, 0, NULL),
(14351, 0, 10, 562.8311, 605.7693, -4.754772, 100, 0, 0, NULL),
(14351, 0, 11, 546.6707, 607.4523, -4.754772, 100, 0, 0, NULL),
(14351, 0, 12, 548.6904, 592.6816, -4.754772, 100, 0, 0, NULL),
(14351, 0, 13, 557.7985, 578.1672, -4.754772, 100, 0, 0, NULL),
(14351, 0, 14, 569.6938, 583.9719, -4.754771, 100, 0, 1435102, NULL);
