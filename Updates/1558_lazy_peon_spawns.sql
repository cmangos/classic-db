DELETE FROM creature_movement WHERE id IN (3345, 3346, 3347, 3348, 6523, 6524, 6525, 6526, 6527, 7372, 7373, 7374, 7375, 7376);

-- Spawn points
UPDATE creature SET position_x = -228.4774, position_y = -4283.625, position_z = 65.1967, orientation = 2.894468 WHERE guid = 3345;
UPDATE creature SET position_x = -329.9962, position_y = -4433.717, position_z = 54.78109, orientation = 5.104826 WHERE guid = 3346;
UPDATE creature SET position_x = -231.6027, position_y = -4452.809, position_z = 63.93166, orientation = 4.117736 WHERE guid = 3347;
UPDATE creature SET position_x = -507.4363, position_y = -4376.153, position_z = 46.37408, orientation = 6.219275 WHERE guid = 3348;

UPDATE creature SET position_x = -320.966064, position_y = -4127.114746, position_z = 51.772881, orientation = 3.5617 WHERE guid = 6523;
UPDATE creature SET position_x = -635.911, position_y = -4477.310, position_z = 46.4219, orientation = 2.255680 WHERE guid = 6524;
UPDATE creature SET position_x = -762.9033, position_y = -4322.073, position_z = 46.41716, orientation = 3.038773 WHERE guid = 6525;
UPDATE creature SET position_x = -370.2837, position_y = -4015.476, position_z = 50.76045, orientation = 2.492314 WHERE guid = 6526;
UPDATE creature SET position_x = -754.0301, position_y = -4144.65, position_z = 38.48037, orientation = 0.5896973 WHERE guid = 6527;

UPDATE creature SET position_x = -209.5101, position_y = -4227.287, position_z = 63.72701, orientation = 1.119552 WHERE guid = 7372;
UPDATE creature SET position_x = -773.777405, position_y = -4201.205566, position_z = 45.349792, orientation = 5.097115 WHERE guid = 7373;
UPDATE creature SET position_x = -628.4796, position_y = -4340.696, position_z = 41.84069, orientation = 2.213485 WHERE guid = 7374;
UPDATE creature SET position_x = -269.336365, position_y = -4144.420410, position_z = 55.177433, orientation = 4.241836 WHERE guid = 7375;
UPDATE creature SET position_x = -506.5265, position_y = -4466.791, position_z = 54.47487, orientation = 3.655769 WHERE guid = 7376;

-- Tree waypoints
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(3345, 1, -225.614, -4284.88, 65.0956, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.00395, 0, 0),
(3346, 1, -334.424, -4439.34, 54.6275, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.45416, 0, 0),
(3347, 1, -229.428, -4449.48, 63.3728, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.016658, 0, 0),
(3348, 1, -510.965, -4372.57, 45.6692, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.480042, 0, 0),
(6523, 1, -320.191, -4122.77, 51.3316, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.09659, 0, 0),
(6524, 1, -634.882, -4480.31, 46.2619, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.71333, 0, 0),
(6525, 1, -757.896, -4324.19, 45.1184, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.3012, 0, 0),
(6526, 1, -375.545, -4018.32, 50.3465, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.86373, 0, 0),
(6527, 1, -754.196, -4141.18, 39.4156, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.54425, 0, 0),
(7372, 1, -213.599, -4220.75, 62.2392, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.93932, 0, 0),
(7373, 1, -775.806, -4196.64, 44.5941, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.26289, 0, 0),
(7374, 1, -622.255, -4348.61, 41.0623, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.83115, 0, 0),
(7375, 1, -265.354, -4145.13, 55.767, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.78542, 0, 0),
(7376, 1, -498.072, -4455.45, 51.0777, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.27999, 0, 0);
