-- Add missing GO 181167 (Grand Widow Faerlina Door) in Naxxramas
DELETE FROM gameobject WHERE guid=5330203;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state) VALUES
(5330203, 181167, 533, 3121.51, -3790.91, 273.936, 6.27873, 0, 0, 0.00222603, -0.999997, 25, 25, 100, 1);
