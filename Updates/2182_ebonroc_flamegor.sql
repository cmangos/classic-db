-- Add waypoints and script for NPC 14601 (Ebonroc) in Blackwing Lair
UPDATE creature SET MovementType=2 WHERE id=14601;
DELETE FROM creature_movement_template WHERE entry=14601;
INSERT INTO creature_movement_template (pathId,entry,point,position_x,position_y,position_z,orientation,waittime,script_id) VALUES 
(0, 14601, 1, -7358.189941,-994.320007,477.167480, 3.728120, 0, 0),
(0, 14601, 2, -7368.798340,-983.092468,477.167480, 2.401582, 0, 0),
(0, 14601, 3, -7378.296875,-977.788696,477.167603, 3.531770, 0, 0),
(0, 14601, 4, -7392.394043,-983.382996,476.911499, 3.531770, 0, 0),
(0, 14601, 5, -7405.905273,-987.830017,473.768127, 2.806062, 0, 0),
(0, 14601, 6, -7418.095215,-976.627075,469.941010, 1.464601, 0, 0),
(0, 14601, 7, -7414.411621,-963.303345,466.541077, 2.059933, 180*1000, 0),
(0, 14601, 8, -7418.095215,-976.627075,469.941010, 1.464601, 0, 0),
(0, 14601, 9, -7405.905273,-987.830017,473.768127, 2.806062, 0, 0),
(0, 14601, 10, -7392.394043,-983.382996,476.911499, 3.531770, 0, 0),
(0, 14601, 11, -7378.296875,-977.788696,477.167603, 3.531770, 0, 0),
(0, 14601, 12, -7368.798340,-983.092468,477.167480, 2.401582, 0, 0),
(0, 14601, 13, -7358.189941,-994.320007,477.167480, 3.728120, 0, 1460101);

DELETE FROM dbscripts_on_creature_movement WHERE id=1460101;
INSERT INTO dbscripts_on_creature_movement VALUES
(1460101, 1, 20, 1, 5, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 'Ebonroc - random movement'),
(1460101, 5*60, 20, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ebonroc - waypoint movement');

-- Make NPC 11981 (Flamegor) roam
UPDATE creature SET MovementType=1, spawndist=5 WHERE id=11981;
