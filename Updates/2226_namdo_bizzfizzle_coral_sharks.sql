-- Namdo Bizzfizzle
DELETE FROM creature WHERE guid=87022;
INSERT INTO creature (guid, id, map, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
(87022, 2683, 0, 0, 0, -4923.1, 725.529, 253.1, 6.21499, 300, 300, 0, 0, 664, 0, 0, 0);

-- Coral Shark
DELETE FROM creature WHERE guid IN (170051,170052);
INSERT INTO creature (guid, id, map, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
(170051, 5434, 0, 0, 0, -11170, -4093.91, -5.86852, 4.3931, 300, 300, 0, 0, 6717, 0, 0, 2),
(170052, 5434, 1, 0, 0, -4158.29, -4547.67, -6.97583, 5.22403, 300, 300, 0, 0, 6717, 0, 0, 2);

DELETE FROM creature_movement WHERE id IN (170051,170052);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(170051, 1, -11175.4, -4102.79, -9.10943, 4.32634, 0, 0),
(170051, 2, -11181.6, -4131.85, -8.30176, 4.49914, 0, 0),
(170051, 3, -11190.3, -4184.73, -8.7279, 4.60516, 0, 0),

(170052, 1, -4187.63, -4614.2, -8.1346, 4.30119, 0, 0),
(170052, 2, -4185.98, -4695.78, -8.45387, 4.76064, 0, 0),
(170052, 3, -4205.68, -4740.42, -7.87031, 4.04987, 0, 0),
(170052, 4, -4216.77, -4776.76, -10.4417, 4.65855, 0, 0),
(170052, 5, -4296.55, -4834.03, -4.87228, 2.45552, 0, 0),
(170052, 6, -4237.93, -4790.58, -10.9209, 0.857235, 0, 0),
(170052, 7, -4188.01, -4689.84, -10.2558, 1.54053, 0, 0);
