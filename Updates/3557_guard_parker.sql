-- add guard parker waypoints
UPDATE creature SET position_x=-9609.64, position_y=-1902.4, position_z=59.823, orientation=4.08447 WHERE id=464;
DELETE FROM creature_movement_template WHERE entry=464; -- we had same points, but timing was different
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(464, 1, -9609.64, -1902.4, 59.823, 4.08447, 300000, 0),
(464, 2, -9614.26, -1902.14, 59.4534, 100, 0, 0),
(464, 3, -9625.03, -1906.27, 59.3688, 100, 0, 0),
(464, 4, -9622.17, -1909.69, 59.9193, 100, 0, 0),
(464, 5, -9598.17, -1929.43, 62.9719, 100, 0, 0),
(464, 6, -9588.01, -1942.85, 64.7999, 100, 0, 0),
(464, 7, -9582.05, -1947.67, 66.0178, 100, 5000, 0),
(464, 8, -9581.61, -1927.79, 64.057, 100, 0, 0),
(464, 9, -9589.5, -1899.4, 60.7739, 100, 0, 0),
(464, 10, -9596.89, -1879.37, 58.5883, 100, 0, 0);
