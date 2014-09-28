-- 'Trial of the Sea Lion' -H -A update
-- Strange Lockbox -- corrected
UPDATE gameobject SET position_x = 848.998, position_y = 2208.29, position_z = -137.5, orientation = 1.50034, rotation2 = 0.681762, rotation3 = 0.731574 WHERE guid = 27813; -- silverpine forrest
UPDATE gameobject SET position_x = -10174.2, position_y = 2388.69, position_z = -139.4, orientation = 4.78638, rotation2 = 0.68047, rotation3 = -0.732776 WHERE guid = 27812; -- Westfall
-- missing Bubbly Fissure added
DELETE FROM gameobject WHERE guid = 24681; -- Silverpine Forest
INSERT INTO gameobject VALUES (24681, 180057, 0, 1,1,841.286, 2207.92, -136.506, 0.217779, 0, 0, 0.108674, 0.994077, 25, 255, 1);
DELETE FROM gameobject WHERE guid = 24682; -- Westfall
INSERT INTO gameobject VALUES (24682, 180057, 0, 1,1,-10170.1, 2388.58, -139.25, 3.84594, 0, 0, 0.98777, -0.15592, 25, 255, 1);
