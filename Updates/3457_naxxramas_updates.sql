-- Mr. Bigglesworth
UPDATE creature_template SET Faction=32 WHERE Entry=16998;

-- Portal
UPDATE gameobject_template SET flags=32, faction=114 WHERE Entry=181229;

DELETE FROM creature_movement_template WHERE entry=16998;
INSERT INTO creature_movement_template (entry, pathId, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(16998, 0, 1, 3006.610107, -3414.669922, 297.135010, 100, 0, 0),
(16998, 0, 2, 3005.110107, -3394.360107, 298.356995, 100, 1000, 1699801),
(16998, 1, 1, 2996.110107, -3395.270020, 298.356995, 100, 0, 0),
(16998, 1, 2, 2977.219971, -3405.250000, 298.295990, 100, 0, 0),
(16998, 1, 3, 2969.010010, -3418.699951, 298.356995, 100, 0, 0),
(16998, 1, 4, 2960.270020, -3433.889893, 299.557007, 100, 1000, 1699802),
(16998, 2, 1, 2967.050049, -3442.959961, 298.356995, 100, 0, 0),
(16998, 2, 2, 2983.290039, -3455.800049, 298.333008, 100, 0, 0),
(16998, 2, 3, 2991.659912, -3448.949951, 302.016998, 100, 0, 0),
(16998, 2, 4, 2997.919922, -3442.530029, 304.356995, 100, 0, 0),
(16998, 2, 5, 3005.889893, -3434.280029, 304.415009, 100, 1000, 1699803),
(16998, 3, 1, 3016.620117, -3445.300049, 303.045990, 100, 0, 0),
(16998, 3, 2, 3026.830078, -3455.459961, 298.356995, 100, 0, 0),
(16998, 3, 3, 3037.659912, -3452.389893, 298.356995, 100, 0, 0),
(16998, 3, 4, 3040.889893, -3433.780029, 298.356995, 100, 1000, 1699804),
(16998, 4, 1, 3006.790039, -3434.280029, 293.957001, 100, 1000, 1699805);

DELETE FROM dbscripts_on_creature_movement WHERE id IN (1699801,1699802,1699803,1699804,1699805);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1699801,0,20,1,5,0,0,0,8,0,0,0,0,0,0,0,0,'Mr. Bigglesworth - random movement after path 0'),
(1699801,30000,20,2,1,0,0,0,0,0,0,0,0,0,0,0,0,'Mr. Bigglesworth - continue on path 1'),
(1699802,0,20,1,5,0,0,0,8,0,0,0,0,0,0,0,0,'Mr. Bigglesworth - random movement after path 1'),
(1699802,30000,20,2,2,0,0,0,0,0,0,0,0,0,0,0,0,'Mr. Bigglesworth - continue on path 2'),
(1699803,0,20,1,5,0,0,0,8,0,0,0,0,0,0,0,0,'Mr. Bigglesworth - random movement after path 2'),
(1699803,30000,20,2,3,0,0,0,0,0,0,0,0,0,0,0,0,'Mr. Bigglesworth - continue on path 3'),
(1699804,0,20,1,5,0,0,0,8,0,0,0,0,0,0,0,0,'Mr. Bigglesworth - random movement after path 3'),
(1699804,30000,20,2,4,0,0,0,0,0,0,0,0,0,0,0,0,'Mr. Bigglesworth - continue on path 4'),
(1699805,0,20,1,5,0,0,0,8,0,0,0,0,0,0,0,0,'Mr. Bigglesworth - random movement after path 4'),
(1699805,30000,20,2,0,0,0,0,0,0,0,0,0,0,0,0,0,'Mr. Bigglesworth - continue on path 0');

UPDATE creature SET position_x=3007.709, position_y=-3432.561, position_z=293.9755, orientation=1.632283, spawndist=0, MovementType=2 WHERE id=16998;
UPDATE gameobject SET rotation2=-1, rotation3=0 WHERE id=181229;
