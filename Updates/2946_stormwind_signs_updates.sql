-- Mage Quarter
UPDATE gameobject SET position_x=-8822.23, position_y=673.8281, position_z=98.45515, orientation=0.4712385, rotation2=0.2334452, rotation3=0.97237 WHERE id=2101;
UPDATE gameobject SET position_x=-8728.057, position_y=892.7573, position_z=101.1635, orientation=2.260197, rotation2=0.9044542, rotation3=0.4265707 WHERE id=2141;
-- UPDATE gameobject SET position_x=-8830.692, position_y=615.203, position_z=94.16196, orientation=2.242746, rotation2=0.9006977, rotation3=0.4344464 WHERE id=2124 AND guid=26297; -- wrong orientation
DELETE FROM gameobject WHERE guid IN (5198,5496,5517);
UPDATE gameobject SET position_x=-8737.376, position_y=706.7619, position_z=98.0946, orientation=0.6894043, rotation2=0.3379164, rotation3=0.9411761 WHERE id=2127;
-- reuse just deleted guids
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state) VALUES
(5198, 2171, 0, -8827.229, 957.5023, 99.84704, 2.260197, 0, 0, 0.9044542, 0.4265707, 120, 120, 0, 0),
(5496, 2178, 0, -8845.385, 922.9111, 101.7831, 2.068215, 0, 0, 0.8594065, 0.5112929, 120, 120, 0, 0);
UPDATE gameobject SET position_x=-8875.494, position_y=754.3299, position_z=95.86723, orientation=0.7504908, rotation2=0.3665009, rotation3=0.9304177 WHERE id=2181;
UPDATE gameobject SET position_x=-8893.698, position_y=749.7998, position_z=105.4766, orientation=5.384343, rotation2=-0.4344444, rotation3=0.9006986 WHERE id=25348 AND guid=26650;
DELETE FROM gameobject WHERE guid IN (42877,42878);
UPDATE gameobject SET position_x=-8873.054, position_y=766.2217, position_z=105.4766, orientation=5.384343, rotation2=-0.4344444, rotation3=0.9006986 WHERE id=25349;
-- reuse just deleted guids
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state) VALUES
(5517, 25350, 0, -8863.895, 943.2568, 114.3284, 0.5061446, 0, 0, 0.2503796, 0.9681478, 120, 120, 0, 0),
(42877, 25351, 0, -8851.105, 920.1844, 114.3284, 0.5061446, 0, 0, 0.2503796, 0.9681478, 120, 120, 0, 0);
UPDATE gameobject SET position_x=-8841.016, position_y=730.8612, position_z=96.68507, orientation=0.5148712, rotation2=0.2546015, rotation3=0.9670461 WHERE id=103793;

-- The Park
UPDATE gameobject SET position_x=-8707.293, position_y=909.0906, position_z=102.0303, orientation=0.6806767, rotation2=0.333806, rotation3=0.9426418 WHERE id=23299 AND guid=42862;
DELETE FROM gameobject WHERE guid IN (42860,42861);
-- reuse just deleted guids
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state) VALUES
(42878, 23300, 0, -8897.939, 909.434, 110.7002, 5.201083, 0, 0, -0.5150375, 0.8571676, 120, 120, 0, 0);
UPDATE gameobject SET position_x=-8807.998, position_y=938.9861, position_z=101.8414, orientation=5.375618, rotation2=-0.4383698, rotation3=0.8987947 WHERE id=23301;
UPDATE gameobject SET position_x=-8873.654, position_y=754.2656, position_z=96.46728, orientation=5.46288, rotation2=-0.3987494, rotation3=0.91706 WHERE id=24715 AND guid=26643;
DELETE FROM gameobject WHERE guid IN (42866,42867);
UPDATE gameobject SET position_x=-8713.174, position_y=725.9428, position_z=97.08818, orientation=0.6894043, rotation2=0.3379164, rotation3=0.9411761 WHERE id=24717;
-- entry 24718 already correct
-- reuse just deleted guids
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state) VALUES
(42860, 24719, 0, -8727.88, 894.59, 100.5635, 0.6894043, 0, 0, 0.3379164, 0.9411761, 120, 120, 0, 0),
(42861, 24720, 0, -8825.221, 959.1587, 99.84704, 5.401796, 0, 0, -0.426568, 0.9044555, 120, 120, 0, 0),
(42866, 24721, 0, -8843.097, 924.1536, 101.7831, 5.209809, 0, 0, -0.5112925, 0.8594068, 120, 120, 0, 0);
UPDATE gameobject SET position_x=-8806.953, position_y=956.3418, position_z=112.9862, orientation=3.813545, rotation2=-0.9440889, rotation3=0.3296909 WHERE id=25341 AND guid=42874;
DELETE FROM gameobject WHERE guid IN (42872,42873);
UPDATE gameobject SET position_x=-8703.753, position_y=904.8344, position_z=108.5348, orientation=5.384343, rotation2=-0.4344444, rotation3=0.9006986 WHERE id=25342 AND guid=42875;
DELETE FROM gameobject WHERE guid=42876;
-- reuse just deleted guids
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state) VALUES
(42867, 25352, 0, -8704.108, 926.3359, 113.2273, 5.384343, 0, 0, -0.4344444, 0.9006986, 120, 120, 0, 0),
(42872, 25353, 0, -8812.216, 935.5714, 108.2936, 3.813545, 0, 0, -0.9440889, 0.3296909, 120, 120, 0, 0),
(42873, 25354, 0, -8790.714, 935.9266, 112.9862, 3.813545, 0, 0, -0.9440889, 0.3296909, 120, 120, 0, 0);

-- Cathedral Square
UPDATE gameobject SET position_x=-8439.52, position_y=650.0104, position_z=93.57513, orientation=0.6632252, rotation2=0.3255682, rotation3=0.9455186 WHERE id=2098;
UPDATE gameobject SET position_x=-8779.155, position_y=666.6763, position_z=104.1385, orientation=5.384343, rotation2=-0.4344444, rotation3=0.9006986 WHERE id=2099;
UPDATE gameobject SET position_x=-8559.694, position_y=670.7176, position_z=97.82394, orientation=0.6632252, rotation2=0.3255682, rotation3=0.9455186 WHERE id=2102;
UPDATE gameobject SET position_x=-8701.677, position_y=712.7199, position_z=97.64706, orientation=5.375618, rotation2=-0.4383698, rotation3=0.8987947 WHERE id=2105;
UPDATE gameobject SET position_x=-8684.693, position_y=880.8013, position_z=97.39404, orientation=3.813545, rotation2=-0.9440889, rotation3=0.3296909 WHERE id=2106;
UPDATE gameobject SET position_x=-8828.655, position_y=616.824, position_z=94.16196, orientation=5.384343, rotation2=-0.4344444, rotation3=0.9006986 WHERE id=2110 AND guid=26299;
DELETE FROM gameobject WHERE guid IN (10674,4958,4972);
UPDATE gameobject SET position_x=-8750.625, position_y=552.144, position_z=97.59324, orientation=5.628688, rotation2=-0.3214388, rotation3=0.9469303 WHERE id=2116;
UPDATE gameobject SET position_x=-8578.515, position_y=537.0555, position_z=101.2374, orientation=0.4886912, rotation2=0.2419214, rotation3=0.9702958 WHERE id=2129;
-- reuse just deleted guids
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state) VALUES
(10674, 2131, 0, -8508.362, 659.8925, 99.9641, 0.6021398, 0, 0, 0.2965422, 0.9550198, 120, 120, 0, 0);
UPDATE gameobject SET position_x=-8839.241, position_y=730.3692, position_z=97.28513, orientation=5.227262, rotation2=-0.5037737, rotation3=0.8638357 WHERE id=2134;
UPDATE gameobject SET position_x=-8538.603, position_y=682.9554, position_z=97.19884, orientation=0.6894043, rotation2=0.3379164, rotation3=0.9411761 WHERE id=2140;
UPDATE gameobject SET position_x=-8735.543, position_y=706.5854, position_z=98.69466, orientation=5.401796, rotation2=-0.426568, rotation3=0.9044555 WHERE id=2173;
UPDATE gameobject SET position_x=-8711.341, position_y=725.7664, position_z=97.68823, orientation=5.401796, rotation2=-0.426568, rotation3=0.9044555 WHERE id=2175;
UPDATE gameobject SET position_x=-8704.93, position_y=865.7792, position_z=96.76331, orientation=3.831001, rotation2=-0.9411755, rotation3=0.3379182 WHERE id=2179;
-- reuse just deleted guids
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state) VALUES
(4958, 2186, 0, -8726.224, 892.5807, 100.5635, 3.831001, 0, 0, -0.9411755, 0.3379182, 120, 120, 0, 0);
UPDATE gameobject SET position_x=-8798.768, position_y=580.3712, position_z=96.74337, orientation=5.384343, rotation2=-0.4344444, rotation3=0.9006986 WHERE id=2190;
UPDATE gameobject SET position_x=-8556.195, position_y=666.567, position_z=103.7009, orientation=5.384343, rotation2=-0.4344444, rotation3=0.9006986 WHERE id=25338 AND guid=26522;
DELETE FROM gameobject WHERE guid=42869;
UPDATE gameobject SET position_x=-8576.981, position_y=671.7714, position_z=109.5662, orientation=5.384343, rotation2=-0.4344444, rotation3=0.9006986 WHERE id=25339 AND guid=26545;
DELETE FROM gameobject WHERE guid IN (42870,42871);
UPDATE gameobject SET position_x=-8684.513, position_y=709.8126, position_z=109.4213, orientation=3.813545, rotation2=-0.9440889, rotation3=0.3296909 WHERE id=25340;
-- reuse just deleted guids
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state) VALUES
(4972, 25355, 0, -8687.896, 885.3235, 103.556, 2.242746, 0, 0, 0.9006977, 0.4344464, 120, 120, 0, 0),
(42869, 25356, 0, -8667.109, 880.1191, 109.4213, 2.242746, 0, 0, 0.9006977, 0.4344464, 120, 120, 0, 0),
(42870, 25357, 0, -8687.7, 863.7401, 109.4213, 2.242746, 0, 0, 0.9006977, 0.4344464, 120, 120, 0, 0);
UPDATE gameobject SET position_x=-8705.894, position_y=709.3639, position_z=103.556, orientation=3.813545, rotation2=-0.9440889, rotation3=0.3296909 WHERE id=63197;
UPDATE gameobject SET position_x=-8700.689, position_y=730.1502, position_z=109.4213, orientation=3.813545, rotation2=-0.9440889, rotation3=0.3296909 WHERE id=63198;
-- reuse just deleted guids
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state) VALUES
(42871, 103794, 0, -8825.397, 957.3259, 99.24699, 3.831001, 0, 0, -0.9411755, 0.3379182, 120, 120, 0, 0);

-- Trade District
UPDATE gameobject SET position_x=-8912.029, position_y=793.9686, position_z=87.40195, orientation=3.813545, rotation2=-0.9440889, rotation3=0.3296909 WHERE id=2096;
UPDATE gameobject SET position_x=-8690.848, position_y=472.1584, position_z=96.26163, orientation=0.6632252, rotation2=0.3255682, rotation3=0.9455186 WHERE id=2108;
UPDATE gameobject SET position_x=-8752.451, position_y=551.9036, position_z=96.99319, orientation=0.9162973, rotation2=0.4422884, rotation3=0.8968729 WHERE id=2111;
UPDATE gameobject SET position_x=-8723.862, position_y=517.514, position_z=96.53547, orientation=0.6370451, rotation2=0.3131638, rotation3=0.9496992 WHERE id=2115;
UPDATE gameobject SET position_x=-8839.733, position_y=728.5948, position_z=97.00746, orientation=3.656466, rotation2=-0.9670458, rotation3=0.2546025 WHERE id=2122;
UPDATE gameobject SET position_x=-8617.8, position_y=521.9878, position_z=102.4766, orientation=0.7766718, rotation2=0.3786488, rotation3=0.9255404 WHERE id=2125;
-- free guid used
DELETE FROM gameobject WHERE guid=44700;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state) VALUES
(44700, 2128, 0, -8843.62, 922.3882, 101.183, 3.639014, 0, 0, -0.9692307, 0.2461543, 120, 120, 0, 0);
UPDATE gameobject SET position_x=-8538.779, position_y=681.1227, position_z=97.79889, orientation=2.260197, rotation2=0.9044542, rotation3=0.4265707 WHERE id=2133;
UPDATE gameobject SET position_x=-8873.719, position_y=752.4255, position_z=96.14922, orientation=3.892087, rotation2=-0.9304171, rotation3=0.3665025 WHERE id=2176;
UPDATE gameobject SET position_x=-8737.553, position_y=704.9291, position_z=98.69466, orientation=2.260197, rotation2=0.9044542, rotation3=0.4265707 WHERE id=2182;
UPDATE gameobject SET position_x=-8713.351, position_y=724.11, position_z=97.68823, orientation=2.260197, rotation2=0.9044542, rotation3=0.4265707 WHERE id=2187;
UPDATE gameobject SET position_x=-8706.763, position_y=865.9556, position_z=97.36337, orientation=2.260197, rotation2=0.9044542, rotation3=0.4265707 WHERE id=2191;

-- Dwarven District
UPDATE gameobject SET position_x=-8722.041, position_y=517.2418, position_z=96.74295, orientation=5.349435, rotation2=-0.450098, rotation3=0.8929791 WHERE id=28027 AND guid=26418;
DELETE FROM gameobject WHERE guid=14121;
UPDATE gameobject SET position_x=-8615.959, position_y=521.9717, position_z=103.0766, orientation=5.489062, rotation2=-0.3867102, rotation3=0.9222013 WHERE id=28028;
UPDATE gameobject SET position_x=-8576.754, position_y=536.5172, position_z=101.8375, orientation=5.201083, rotation2=-0.5150375, rotation3=0.8571676 WHERE id=28029;
UPDATE gameobject SET position_x=-8506.888, position_y=657.7465, position_z=99.9641, orientation=3.743738, rotation2=-0.955019, rotation3=0.2965446 WHERE id=28030;
UPDATE gameobject SET position_x=-8536.946, position_y=680.9462, position_z=97.19884, orientation=3.831001, rotation2=-0.9411755, rotation3=0.3379182 WHERE id=28031;
UPDATE gameobject SET position_x=-8711.518, position_y=723.9336, position_z=97.08818, orientation=3.831001, rotation2=-0.9411755, rotation3=0.3379182 WHERE id=28032;
UPDATE gameobject SET position_x=-8649.44, position_y=475.2334, position_z=102.9188, orientation=5.375618, rotation2=-0.4383698, rotation3=0.8987947 WHERE id=28033;
UPDATE gameobject SET position_x=-8547.066, position_y=499.2357, position_z=99.36756, orientation=5.384343, rotation2=-0.4344444, rotation3=0.9006986 WHERE id=28034;
UPDATE gameobject SET position_x=-8479.608, position_y=679.0402, position_z=111.5686, orientation=2.242746, rotation2=0.9006977, rotation3=0.4344464 WHERE id=28044 AND guid=14136;
DELETE FROM gameobject WHERE guid IN (14133,14135);
-- reuse just deleted guids
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state) VALUES
(14121, 28045, 0, -8529.818, 495.8429, 111.2916, 3.813545, 0, 0, -0.9440889, 0.3296909, 120, 120, 0, 0),
(14133, 28046, 0, -8458.723, 695.6537, 111.5686, 2.242746, 0, 0, 0.9006977, 0.4344464, 120, 120, 0, 0);
UPDATE gameobject SET position_x=-8551.272, position_y=495.7426, position_z=105.7246, orientation=3.813545, rotation2=-0.9440889, rotation3=0.3296909 WHERE id=28047;
UPDATE gameobject SET position_x=-8546.432, position_y=516.7289, position_z=111.2916, orientation=3.813545, rotation2=-0.9440889, rotation3=0.3296909 WHERE id=126046;

-- Old Town
UPDATE gameobject SET position_x=-8773.94, position_y=612.4945, position_z=97.94915, orientation=3.926996, rotation2=-0.9238787, rotation3=0.3826855 WHERE id=2100;
UPDATE gameobject SET position_x=-8828.863, position_y=614.9946, position_z=93.56191, orientation=3.813545, rotation2=-0.944088, rotation3=0.3296909 WHERE id=2112 AND guid=26312;
DELETE FROM gameobject WHERE guid=10693;
UPDATE gameobject SET position_x=-8735.72, position_y=704.7527, position_z=98.0946, orientation=3.831001, rotation2=-0.9411755, rotation3=0.3379182 WHERE id=2113;
UPDATE gameobject SET position_x=-8750.385, position_y=550.3185, position_z=96.99319, orientation=4.057892, rotation2=-0.8968725, rotation3=0.4422892 WHERE id=2119;
UPDATE gameobject SET position_x=-8798.768, position_y=580.3712, position_z=95.46523, orientation=5.384343, rotation2=-0.4344444, rotation3=0.9006986 WHERE id=2123;
UPDATE gameobject SET position_x=-8722.324, position_y=515.4337, position_z=96.73266, orientation=3.778642, rotation2=-0.9496984, rotation3=0.3131659 WHERE id=2136;
UPDATE gameobject SET position_x=-8617.815, position_y=520.1465, position_z=103.0766, orientation=2.347464, rotation2=0.9222002, rotation3=0.3867128 WHERE id=2143;
UPDATE gameobject SET position_x=-8579.054, position_y=535.2947, position_z=101.8375, orientation=2.059484, rotation2=0.8571663, rotation3=0.5150397 WHERE id=2189;
UPDATE gameobject SET position_x=-8620.571, position_y=515.0275, position_z=115.3827, orientation=0.6719503, rotation2=0.32969, rotation3=0.9440892 WHERE id=25336;
UPDATE gameobject SET position_x=-8604.144, position_y=494.3748, position_z=115.3827, orientation=0.6719503, rotation2=0.32969, rotation3=0.9440892 WHERE id=25337;
UPDATE gameobject SET position_x=-8730.095, position_y=500.0512, position_z=107.8843, orientation=2.242746, rotation2=0.9006977, rotation3=0.4344464 WHERE id=25346;
UPDATE gameobject SET position_x=-8709.441, position_y=516.4791, position_z=107.8843, orientation=2.242746, rotation2=0.9006977, rotation3=0.4344464 WHERE id=25347;
-- reuse just deleted guids
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state) VALUES
(14135, 103796, 0, -8508.698, 658.082, 100.5641, 2.172932, 0, 0, 0.8849869, 0.465616, 120, 120, 0, 0);
