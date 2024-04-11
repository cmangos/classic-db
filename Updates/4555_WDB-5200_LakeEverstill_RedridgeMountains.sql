-- Lake Everstill - Redridge Mountains

-- Murloc Flesheater 422
DELETE FROM creature_addon WHERE guid IN(SELECT guid FROM creature WHERE id = 422);
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature_spawn_entry WHERE entry = 422);
DELETE FROM creature_template_addon WHERE entry IN (422);
INSERT INTO creature_template_addon (entry, sheath_state, auras) VALUES
(422,1,3394);
-- Updates
UPDATE creature SET position_x = -9345.686, position_y = -2837.1636, position_z = 60.977146, orientation = 0.3142, spawndist = 0, MovementType = 2 WHERE guid = 6187;
UPDATE creature SET position_x = -9308.947, position_y = -2800.1182, position_z = 72.65509, orientation = 1.1148, spawndist = 0, MovementType = 4 WHERE guid = 6178; -- linear
UPDATE creature SET position_x = -9308.947, position_y = -2800.1182, position_z = 72.65509, orientation = 1.1148, spawndist = 0, MovementType = 2 WHERE guid = 6181;
UPDATE creature SET spawndist = 0, MovementType = 4 WHERE guid IN (8775); -- linear
UPDATE creature SET spawndist = 2, MovementType = 1 WHERE guid IN (8770,8772,8777,8782,8783);
UPDATE creature SET spawndist = 0, MovementType = 0 WHERE guid IN (10098,10099);
DELETE FROM creature_movement WHERE Id IN (6187,6178,6181,8775);
INSERT INTO creature_movement (id, point, positionx, positiony, positionz, orientation, waittime, scriptid) VALUES
-- Murloc Scout/Murloc Tidecaller guid.6187 - part of c_s_e
(6187,1 ,-9345.686,-2837.1636,60.977146,0.3142,40000,0),
(6187,2 ,-9345.801,-2825.3774,57.407814,100,0,0),
(6187,3 ,-9348.051,-2822.3774,55.657814,100,0,0),
(6187,4 ,-9352.051,-2816.8774,54.407814,100,0,0),
(6187,5 ,-9357.916,-2809.591,49.838478,100,0,0),
(6187,6 ,-9378.004,-2813.4502,35.78196,100,0,0),
(6187,7 ,-9404.518,-2819.6323,36.706585,100,0,0),
(6187,8 ,-9421.21,-2829.9414,50.826717,100,0,0),
(6187,9 ,-9425.46,-2832.4414,54.576717,100,0,0),
(6187,10,-9431.768,-2836.4453,59.01883,100,40000,0),
(6187,11,-9395.029,-2822.173,36.6052,100,0,0),
(6187,12,-9380.883,-2798.5422,37.34774,100,0,0),
(6187,13,-9358.916,-2789.7249,54.97118,100,0,0),
(6187,14,-9344.895,-2805.8308,55.819923,100,0,0),
(6187,15,-9347.059,-2824.9592,56.796974,100,0,0),
(6187,16,-9345.708,-2834.4814,60.00913,100,0,0),
-- Murloc Scout/Murloc Tidecaller guid.6178 - part of c_s_e
(6178,1,-9308.947,-2800.1182,72.65509,1.1148,35000,0),
(6178,2,-9310.195,-2812.596,73.79059,100,0,0),
(6178,3,-9317.684,-2829.3496,69.45294,100,0,0),
(6178,4,-9325.487,-2834.427,68.72193,100,35000,0),
-- Murloc Scout/Murloc Tidecaller guid.6181 - part of c_s_e
(6181,1 ,-9349.15,-2844.8235,59.1041,0.244286,0,0),
(6181,2 ,-9358.959,-2847.252,55.934128,100,0,0),
(6181,3 ,-9362.209,-2848.752,51.934128,100,0,0),
(6181,4 ,-9374.269,-2858.1802,39.26416,100,0,0),
(6181,5 ,-9387.535,-2872.5554,39.7447,100,0,0),
(6181,6 ,-9405.903,-2859.6047,41.866974,100,0,0),
(6181,7 ,-9405.796,-2829.2327,36.706585,100,0,0),
(6181,8 ,-9386.469,-2820.4502,36.6052,100,0,0),
(6181,9 ,-9368.07,-2842.6497,41.75171,100,0,0),
(6181,10,-9359.151,-2847.4456,55.384617,100,0,0),
(6181,11,-9349.15,-2844.8235,59.1041,100,0,0),
(6181,12,-9349.15,-2844.8235,59.1041,0.244286,35000,0),
-- Murloc Flesheater/Murloc Minor Tidecaller guid.8775 - part of c_s_e
(8775,1,-9477.991,-2873.3547,81.31925,100,40000,0),
(8775,2,-9474.74,-2861.0977,77.58058,100,0,0),
(8775,3,-9473.191,-2843.2908,74.15895,100,0,0),
(8775,4,-9469.313,-2829.6892,71.941086,100,0,0),
(8775,5,-9461.998,-2824.9688,68.58078,100,40000,0);
DELETE FROM creature_spawn_data WHERE guid IN(6181,6187);
INSERT INTO creature_spawn_data(Guid,Id) VALUES
(6181,1),(6187,1); -- run

-- Lake Thresher 14357
-- path for second spawn
UPDATE creature SET position_x = -9436.168, position_y = -2441.6406, position_z = 49.508854, spawndist = 0, MovementType = 2 WHERE guid IN (29890);
DELETE FROM creature_movement WHERE Id IN (29890);
INSERT INTO creature_movement (id, point, positionx, positiony, positionz, orientation, waittime, scriptid) VALUES
(29890,1 ,-9436.168,-2441.6406,49.508854,100,0,0),
(29890,2 ,-9437.697,-2472.88,39.143837,100,0,0),
(29890,3 ,-9415.114,-2495.125,26.417841,100,0,0),
(29890,4 ,-9401.591,-2539.4958,31.803574,100,0,0),
(29890,5 ,-9412.608,-2513.1926,24.269293,100,0,0),
(29890,6 ,-9427.079,-2493.0496,30.93249,100,0,0),
(29890,7 ,-9452.574,-2508.8066,30.373438,100,0,0),
(29890,8 ,-9486.097,-2520.7246,44.874054,100,0,0),
(29890,9 ,-9502.197,-2494.5886,36.23641,100,0,0),
(29890,10,-9529.641,-2476.6172,39.38387,100,0,0),
(29890,11,-9493.771,-2469.6797,40.95665,100,0,0),
(29890,12,-9512.666,-2430.4849,53.05422,100,0,0),
(29890,13,-9475.427,-2419.3003,53.849384,100,0,0),
(29890,14,-9429.71,-2400.1233,53.9277,100,0,0);

