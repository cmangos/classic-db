DELETE FROM game_event WHERE entry IN (89,90,91,92,93,94,95,96,97,98,99);
INSERT INTO game_event (entry, schedule_type, occurence, length, holiday, description) VALUES
(89, 0, 525600, 0, 0, 'Scourge Invasion - Boss in instance activation'), -- manually activated?
(90, 0, 525600, 0, 0, 'Scourge Invasion - Attacking Winterspring'),
(91, 0, 525600, 0, 0, 'Scourge Invasion - Attacking Tanaris'),
(92, 0, 525600, 0, 0, 'Scourge Invasion - Attacking Azshara'),
(93, 0, 525600, 0, 0, 'Scourge Invasion - Attacking Blasted Lands'),
(94, 0, 525600, 0, 0, 'Scourge Invasion - Attacking Eastern Plaguelands'),
(95, 0, 525600, 0, 0, 'Scourge Invasion - Attacking Burning Steppes'),
(96, 0, 525600, 0, 0, 'Scourge Invasion - 50 Invasions Done'),
(97, 0, 525600, 0, 0, 'Scourge Invasion - 100 Invasions Done'),
(98, 0, 525600, 0, 0, 'Scourge Invasion - 150 Invasions Done'),
(99, 0, 525600, 0, 0, 'Scourge Invasion - Invasions Done');

INSERT INTO creature (guid, id, map, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, DeathState, MovementType) VALUES
(3300145, 14682, 33, -225.131, 2302.95, 94.7599, 6.02139, 604800, 604800, 0, 0, 0, 0), -- Sever
(4700263, 14686, 129, 2583.18, 695.861, 56.8033, 1.8675, 604800, 604800, 0, 0, 0, 0), -- Lady Falther'ess
(2890400, 14695, 289, 200.201, 150.839, 109.879, 5.06145, 604800, 604800, 0, 0, 0, 2), -- Lord Blackwood
(3290598, 14684, 329, 3733.27, -3480.11, 131.04, 3.05433, 604800, 604800, 0, 0, 0, 0), -- Balzaphon
(4291074, 14690, 429, -112.776, 583.823, -3.47887, 5.60251, 604800, 604800, 0, 0, 0, 0); -- Revanchion

INSERT INTO game_event_creature (guid, event) VALUES
(3300145, 89), -- Sever
(4700263, 89), -- Lady Falther'ess
(2890400, 89), -- Lord Blackwood
(3290598, 89), -- Balzaphon
(4291074, 89); -- Revanchion

INSERT INTO creature_movement_template (entry, pathId, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
-- Lord Blackwood
(14695, 0, 1, 248.659, 153.031, 109.788, 100, 0, 0),
(14695, 0, 2, 200.116, 150.961, 109.909, 100, 0, 0),
(14695, 0, 3, 199.948, 127.819, 109.922, 100, 0, 0),
(14695, 0, 4, 200.223, 151.043, 109.91, 100, 0, 0),
(14695, 0, 5, 174.822, 152.469, 109.696, 100, 0, 0),
(14695, 0, 6, 199.917, 151.078, 109.908, 100, 0, 0),
(14695, 0, 7, 224.709, 133.206, 109.722, 100, 0, 0),
(14695, 0, 8, 200.7, 151.368, 109.915, 100, 0, 0),
(14695, 0, 9, 222.267, 166.311, 109.784, 100, 0, 0),
(14695, 0, 10, 222.267, 166.311, 109.784, 100, 0, 0),
(14695, 0, 11, 200.7, 151.368, 109.915, 100, 0, 0),
(14695, 0, 12, 224.709, 133.206, 109.722, 100, 0, 0),
(14695, 0, 13, 199.917, 151.078, 109.908, 100, 0, 0),
(14695, 0, 14, 174.822, 152.469, 109.696, 100, 0, 0),
(14695, 0, 15, 200.223, 151.043, 109.91, 100, 0, 0),
(14695, 0, 16, 199.948, 127.819, 109.922, 100, 0, 0),
(14695, 0, 17, 200.116, 150.961, 109.909, 100, 0, 0);
