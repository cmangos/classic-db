-- Backport missing GENERIC dbscripts on movement
DELETE FROM dbscripts_on_creature_movement WHERE id=2;
INSERT INTO dbscripts_on_creature_movement (id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, condition_id, comments) VALUES (2, 0, 0, 20, 1, 5, 0, 0, 0, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'GENERIC - Set Random Movement, wander_distance 5 at Current Waypoint');
