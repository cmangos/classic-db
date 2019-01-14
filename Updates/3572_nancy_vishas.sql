-- add waypoints and scripts to nancy vishas
UPDATE creature SET movementtype=2 WHERE guid=17090 AND id=3984;
DELETE FROM creature_movement_template WHERE entry=3984;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(3984, 1, 888.142, -121.85, 38.3887, 100, 22000, 398401),
(3984, 2, 891.274, -115.355, 38.3916, 100, 0, 0),
(3984, 3, 893.52, -112.311, 37.1383, 100, 0, 0),
(3984, 4, 897.72, -106.644, 35.4023, 100, 0, 0),
(3984, 5, 902.433, -100.602, 33.7449, 100, 0, 0),
(3984, 6, 906.811, -94.4563, 33.778, 100, 0, 0),
(3984, 7, 909.417, -90.5137, 33.7852, 100, 120000, 0),
(3984, 8, 909.417, -90.5137, 33.7852, 100, 4000, 398402),
(3984, 9, 904.51, -97.8801, 33.7682, 100, 0, 0),
(3984, 10, 900.044, -104.055, 34.5619, 100, 0, 0),
(3984, 11, 895.075, -110.145, 36.4831, 100, 0, 0),
(3984, 12, 891.818, -114.431, 38.3399, 100, 0, 0),
(3984, 13, 888.142, -121.85, 38.3887, 1.0821, 480000, 0);

DELETE FROM dbscripts_on_creature_movement WHERE id IN (398401,398402);
INSERT INTO dbscripts_on_creature_movement (id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, condition_id, comments) VALUES
(398401, 0, 0, 36, 0, 0, 0, 3985, 10, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Nancy Vishas - Face Grandpa Vishas (3985)'), -- delay 0, currently broken due to waypoint reached, kw will fix it, works if set to delay=1
(398401, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 1365, 0, 0, 0, 0, 0, 0, 0, 0, 'Nancy Vishas - Say Text'),
(398401, 6000, 0, 0, 0, 0, 0, 3985, 10, 0, 1366, 0, 0, 0, 0, 0, 0, 0, 0, 'Nancy Vishas - Grandpa Vishas (3985) - Say Text'),
(398401, 11000, 0, 0, 0, 0, 0, 0, 0, 0, 1367, 0, 0, 0, 0, 0, 0, 0, 0, 'Nancy Vishas - Say Text'),
(398401, 16000, 0, 0, 0, 0, 0, 3985, 10, 0, 1368, 0, 0, 0, 0, 0, 0, 0, 0, 'Nancy Vishas - Grandpa Vishas (3985) - Say Text'),
(398401, 16000, 1, 1, 11, 0, 0, 3985, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Nancy Vishas - Grandpa Vishas (3985) - EMOTE_ONESHOT_LAUGH (11)'),
(398401, 21000, 0, 0, 0, 0, 0, 0, 0, 0, 1369, 0, 0, 0, 0, 0, 0, 0, 0, 'Nancy Vishas - Say Text'),

(398402, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1370, 0, 0, 0, 0, 0, 0, 0, 0, 'Nancy Vishas - Say Text'),
(398402, 3000, 0, 0, 0, 0, 0, 0, 0, 0, 1371, 0, 0, 0, 0, 0, 0, 0, 0, 'Nancy Vishas - Say Text');

UPDATE broadcast_text SET ChatTypeID=2 WHERE Id=1370; -- textemote
