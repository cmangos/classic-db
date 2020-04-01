
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(134841, 1, 413.3077, 200.4674, 11.29827, 0.2617994, 1000, 1144401),
(134842, 1, 425.7026, 203.4549, 11.29044, 3.351032, 1000, 1144401),
(134843, 1, 324.0116, 296.4007, 11.28979, 1.361357, 1000, 1144401),
(134844, 1, 325.6994, 305.3538, 11.28618, 4.537856, 1000, 1144401),
(134845, 1, 288.657, 317.8485, 2.936365, 2.426008, 1000, 1144401),
(134848, 1, 279.3066, 325.2711, 2.936392, 5.654867, 1000, 1144401),
(134849, 1, 478.2079, 183.6329, 2.852934, 100, 15000, 0),
(134849, 2, 437.5125, 171.9268, 2.852332, 100, 0, 0),
(134849, 3, 401.818, 167.3551, 2.849695, 100, 0, 0),
(134849, 4, 372.311, 165.4776, 2.853187, 100, 0, 0),
(134849, 5, 328.938, 169.844, 2.85461, 100, 15000, 0),
(134849, 6, 372.311, 165.4776, 2.853187, 100, 0, 0),
(134849, 7, 401.818, 167.3551, 2.849695, 100, 0, 0),
(134849, 8, 437.5125, 171.9268, 2.852332, 100, 0, 0),
-- (134849, X, 328.007, 336.8176, 2.852737, 100, 0, 0),
-- (134849, X, 372.0167, 342.6097, 2.857273, 100, 0, 0),
(134854, 1, 273.0064, 195.1208, 2.936266, 0.8552113, 1000, 1144401),
(134855, 1, 280.5277, 204.3547, 2.936328, 4.066617, 1000, 1144401),
(134900, 1, 568.2037, 479.5251, 29.54745, 3.228859, 15000, 1144801),
(134900, 2, 568.2037, 479.5251, 29.54745, 3.228859, 28000, 1144802),
(134900, 3, 568.2037, 479.5251, 29.54745, 3.228859, 10000, 1001);

DELETE FROM dbscripts_on_creature_movement WHERE id IN (1001, 1144401, 1144801, 1144802);
INSERT INTO dbscripts_on_creature_movement (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(1144401, 0, 1, 193, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Gordok Mage-Lord - EMOTE_STATE_SPELLPRECAST'),
(1144401, 0, 15, 21227, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Gordok Mage-Lord - Cast Fire & Ice Channeling'),
(1144801, 0, 1, 193, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Gordok Warlock - EMOTE_STATE_SPELLPRECAST'),
(1144801, 0, 15, 21157, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Gordok Warlock - Cast Dark Channeling'),
(1144802, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Gordok Warlock - Remove EmoteState'),
(1144802, 0, 47, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Gordok Warlock - Interrupt Channelling');
INSERT INTO dbscripts_on_creature_movement VALUES
(1001, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'GENERIC EMOTE - EMOTE_ONESHOT_TALK');

UPDATE dbscripts_on_creature_movement SET id=1424101 WHERE id=14241;
UPDATE creature_movement_template SET script_id=1424101 WHERE script_id=14241;

DELETE FROM creature_linking WHERE master_guid=134849;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(138245, 134849, 515), -- Gordok Mastiff -> creature_spawn_entry
(138244, 134849, 515); -- Gordok Mastiff -> creature_spawn_entry


INSERT INTO creature_spawn_entry (guid, entry) VALUES
(134796, 11441),(134796, 11444), -- Gordok Brute, Gordok Mage-Lord
(134810, 11441),(134810, 11444), -- Gordok Brute, Gordok Mage-Lord
(134816, 11441),(134816, 11444), -- Gordok Brute, Gordok Mage-Lord
(134828, 11441),(134828, 11444), -- Gordok Brute, Gordok Mage-Lord
(134830, 11441),(134830, 11444), -- Gordok Brute, Gordok Mage-Lord
(134838, 11441),(134838, 11444), -- Gordok Brute, Gordok Mage-Lord
(134839, 11441),(134839, 11444), -- Gordok Brute, Gordok Mage-Lord
(134840, 11441),(134840, 11444), -- Gordok Brute, Gordok Mage-Lord
(134849, 11441),(134849, 11444), -- Gordok Brute, Gordok Mage-Lord
(134857, 11441),(134857, 11444), -- Gordok Brute, Gordok Mage-Lord
(134863, 11444),(134863, 11445), -- Gordok Mage-Lord, Gordok Captain
(134878, 11445),(134878, 11450), -- Gordok Captain, Gordok Reaver
(134881, 11445),(134881, 11450), -- Gordok Captain, Gordok Reaver
(138688, 11445),(138688, 11450), -- Gordok Captain, Gordok Reaver
(138691, 11445),(138691, 11450); -- Gordok Captain, Gordok Reaver


UPDATE creature SET position_x=402.4501, position_y=333.2374, position_z=2.9312, orientation=0.1919862, spawndist=0, MovementType=0 WHERE guid=134787;
UPDATE creature SET position_x=439.6423, position_y=134.5616, position_z=-2.498702, orientation=6.195919, spawndist=0, MovementType=0 WHERE guid=134788;
UPDATE creature SET position_x=450.0711, position_y=134.0441, position_z=-2.49898, orientation=3.141593, spawndist=0, MovementType=0 WHERE guid=134789;
UPDATE creature SET position_x=445.0385, position_y=350.6879, position_z=2.936266, orientation=1.623156, spawndist=0, MovementType=0 WHERE guid=134791;
UPDATE creature SET position_x=289.2883, position_y=-75.33929, position_z=-3.803657, orientation=0.8552113, spawndist=0, MovementType=0 WHERE guid=134792;
UPDATE creature SET position_x=297.3685, position_y=-66.73808, position_z=-3.803757, orientation=3.926991, spawndist=0, MovementType=0 WHERE guid=134793;
UPDATE creature SET position_x=404.4417, position_y=180.2827, position_z=2.935195, orientation=5.393067, spawndist=0, MovementType=0 WHERE guid=134794;
UPDATE creature SET position_x=367.0829, position_y=36.71098, position_z=-24.71184, orientation=4.642576, spawndist=0, MovementType=0 WHERE guid=134795;
UPDATE creature SET id=0, position_x=375.4648, position_y=26.51105, position_z=-25.88804, orientation=3.054326, spawndist=0, MovementType=0 WHERE guid=134796;
UPDATE creature SET position_x=312.0857, position_y=182.9168, position_z=2.936266, orientation=4.363323, spawndist=0, MovementType=0 WHERE guid=134798;
UPDATE creature SET position_x=326.9124, position_y=360.9676, position_z=2.936264, orientation=4.747295, spawndist=0, MovementType=0 WHERE guid=134799;
DELETE FROM creature WHERE guid=134802;
UPDATE creature SET position_x=387.5461, position_y=135.5619, position_z=-2.500082, orientation=2.007129, spawndist=0, MovementType=0 WHERE guid=134803;
UPDATE creature SET position_x=391.7116, position_y=102.5856, position_z=-3.803625, orientation=0.541052, spawndist=0, MovementType=0 WHERE guid=134806;
UPDATE creature SET position_x=262.4022, position_y=94.82716, position_z=-2.476256, orientation=3.211406, spawndist=0, MovementType=0 WHERE guid=134807;
UPDATE creature SET position_x=431.2707, position_y=75.95171, position_z=-23.55553, orientation=3.769911, spawndist=0, MovementType=0 WHERE guid=134808;
UPDATE creature SET id=0, position_x=321.9129, position_y=132.8773, position_z=-2.499381, orientation=5.375614, spawndist=0, MovementType=0 WHERE guid=134810;
UPDATE creature SET position_x=292.9315, position_y=264.7318, position_z=2.949892, orientation=3.700098, spawndist=0, MovementType=0 WHERE guid=134812;
UPDATE creature SET position_x=281.8838, position_y=257.9881, position_z=2.936396, orientation=0.541052, spawndist=0, MovementType=0 WHERE guid=134813;
UPDATE creature SET position_x=469.7606, position_y=66.34957, position_z=-3.80288, orientation=4.276057, spawndist=0, MovementType=0 WHERE guid=134814;
UPDATE creature SET id=0, position_x=352.2921, position_y=219.2057, position_z=11.28707, orientation=4.607669, spawndist=0, MovementType=0 WHERE guid=134816;
UPDATE creature SET position_x=484.7899, position_y=192.5361, position_z=2.936266, orientation=3.228859, spawndist=0, MovementType=0 WHERE guid=134817;
UPDATE creature SET position_x=357.1012, position_y=-105.2332, position_z=-3.803097, orientation=3.735005, spawndist=0, MovementType=0 WHERE 134820;
UPDATE creature SET id=0, position_x=387.2497, position_y=210.4741, position_z=11.21666, orientation=3.16332, spawndist=0, MovementType=2 WHERE guid=134828;
UPDATE creature SET id=0, position_x=378.439, position_y=136.1332, position_z=-2.500672, orientation=0.9250245, spawndist=0, MovementType=0 WHERE guid=134830;
UPDATE creature SET position_x=325.9401, position_y=124.5112, position_z=-3.80362, orientation=1.884956, spawndist=0, MovementType=0 WHERE 134831;
UPDATE creature SET position_x=338.8075, position_y=208.3373, position_z=11.2875, orientation=1.37881, spawndist=0, MovementType=0 WHERE 134836;
UPDATE creature SET id=0, position_x=278.2903, position_y=32.93099, position_z=-2.463458, orientation=0.05235988, spawndist=0, MovementType=0 WHERE guid=134838;
UPDATE creature SET id=0, position_x=356.3083, position_y=27.84384, position_z=-24.9039, orientation=6.230825, spawndist=0, MovementType=0 WHERE guid=134839;
UPDATE creature SET id=0, position_x=364.3454, position_y=17.36258, position_z=-25.50375, orientation=1.361357, spawndist=0, MovementType=0 WHERE guid=134840;
UPDATE creature SET position_x=413.3077, position_y=200.4674, position_z=11.29827, orientation=0.2617994, spawndist=0, MovementType=2 WHERE guid=134841;
UPDATE creature SET position_x=425.7026, position_y=203.4549, position_z=11.29044, orientation=3.351032, spawndist=0, MovementType=2 WHERE guid=134842;
UPDATE creature SET position_x=324.0116, position_y=296.4007, position_z=11.28979, orientation=1.361357, spawndist=0, MovementType=2 WHERE guid=134843;
UPDATE creature SET position_x=325.6994, position_y=305.3538, position_z=11.28618, orientation=4.537856, spawndist=0, MovementType=2 WHERE guid=134844;
UPDATE creature SET position_x=288.657, position_y=317.8485, position_z=2.936365, orientation=2.426008, spawndist=0, MovementType=2 WHERE guid=134845;
UPDATE creature SET position_x=279.3066, position_y=325.2711, position_z=2.936392, orientation=5.654867, spawndist=0, MovementType=2 WHERE guid=134848;
UPDATE creature SET id=0, position_x=431.546, position_y=171.163, position_z=2.85225, orientation=3.26898, spawndist=0, MovementType=2 WHERE guid=134849;
UPDATE creature SET position_x=273.0064, position_y=195.1208, position_z=2.936266, orientation=0.8552113, spawndist=0, MovementType=2 WHERE guid=134854;
UPDATE creature SET position_x=280.5277, position_y=204.3547, position_z=2.936328, orientation=4.066617, spawndist=0, MovementType=2 WHERE guid=134855;
UPDATE creature SET id=0, position_x=333.9316, position_y=132.6447, position_z=-2.499607, orientation=3.403392, spawndist=0, MovementType=0 WHERE guid=134857;
UPDATE creature SET position_x=462.9791, position_y=55.93761, position_z=-3.803281, orientation=0.541052, spawndist=0, MovementType=0 WHERE guid=134858;
UPDATE creature SET position_x=349.2118, position_y=-110.3002, position_z=-3.802744, orientation=0.7330383, spawndist=0, MovementType=0 WHERE guid=134859;
UPDATE creature SET id=0, position_x=735.3275, position_y=423.8296, position_z=28.26327, orientation=0.7504916, spawndist=0, MovementType=0 WHERE guid=134863;
UPDATE creature SET position_x=299.9161, position_y=40.06476, position_z=-3.872801, orientation=3.804818, spawndist=0, MovementType=0 WHERE guid=134865;
UPDATE creature SET position_x=384.0755, position_y=144.6527, position_z=0.6549533, orientation=4.572762, spawndist=0, MovementType=0 WHERE guid=134868;
UPDATE creature SET position_x=471.769, position_y=192.8617, position_z=2.936265, orientation=6.126106, spawndist=0, MovementType=0 WHERE guid=134870;
UPDATE creature SET position_x=479.4824, position_y=59.17846, position_z=-3.802891, orientation=3.246312, spawndist=0, MovementType=0 WHERE guid=134871;
UPDATE creature SET position_x=350.4513, position_y=203.0751, position_z=11.2928, orientation=1.448623, spawndist=0, MovementType=0 WHERE guid=134873;
UPDATE creature SET position_x=692.1948, position_y=511.4172, position_z=28.25944, orientation=2.879793, spawndist=0, MovementType=0 WHERE guid=134875;
UPDATE creature SET id=0, position_x=743.1786, position_y=436.3795, position_z=28.2657, orientation=4.171337, spawndist=0, MovementType=0 WHERE guid=134878;
UPDATE creature SET position_x=667.4837, position_y=467.3045, position_z=29.53911, orientation=4.206244, spawndist=0, MovementType=0 WHERE guid=134879;
UPDATE creature SET position_x=676.6294, position_y=460.3466, position_z=29.54076, orientation=3.193953, spawndist=0, MovementType=0 WHERE guid=134880;
UPDATE creature SET id=0, position_x=681.03, position_y=504.2748, position_z=29.54369, orientation=1.48353, spawndist=0, MovementType=0 WHERE guid=134881;
UPDATE creature SET position_x=759.7064, position_y=415.4781, position_z=40.47935, orientation=0.7504916, spawndist=0, MovementType=0 WHERE guid=134887;
UPDATE creature SET position_x=819.916, position_y=391.3661, position_z=40.47974, orientation=1.48353, spawndist=0, MovementType=0 WHERE guid=134888;
UPDATE creature SET position_x=851.739, position_y=398.0955, position_z=40.4801, orientation=1.850049, spawndist=0, MovementType=0 WHERE guid=134894;
UPDATE creature SET position_x=879.2692, position_y=413.4346, position_z=40.48005, orientation=2.234021, spawndist=0, MovementType=0 WHERE guid=134886;
UPDATE creature SET position_x=902.9901, position_y=442.1404, position_z=40.47932, orientation=2.687807, spawndist=0, MovementType=0 WHERE guid=134895;
UPDATE creature SET position_x=910.4691, position_y=460.2422, position_z=40.47942, orientation=2.932153, spawndist=0, MovementType=0 WHERE guid=134882;
UPDATE creature SET position_x=909.9156, position_y=505.7044, position_z=40.47896, orientation=3.473205, spawndist=0, MovementType=0 WHERE guid=134892;
UPDATE creature SET position_x=879.4672, position_y=549.7817, position_z=40.48005, orientation=4.08407, spawndist=0, MovementType=0 WHERE guid=134891;
DELETE FROM creature WHERE guid=134872;
UPDATE creature SET position_x=814.4763, position_y=570.5228, position_z=40.47901, orientation=4.869469, spawndist=0, MovementType=0 WHERE guid=134890;
UPDATE creature SET position_x=794.6888, position_y=394.9196, position_z=40.47979, orientation=1.204277, spawndist=0, MovementType=0 WHERE guid=134896;
UPDATE creature SET position_x=764.541, position_y=548.9177, position_z=40.48211, orientation=5.445427, spawndist=0, MovementType=0 WHERE guid=134889;
UPDATE creature SET position_x=379.6252, position_y=466.8335, position_z=-7.148942, orientation=5.77704, spawndist=0, MovementType=0 WHERE guid=134897;
UPDATE creature SET position_x=581.5032, position_y=596.2776, position_z=-4.671438, orientation=0.05235988, spawndist=0, MovementType=0 WHERE guid=134898;
UPDATE creature SET position_x=593.0096, position_y=596.731, position_z=-4.671435, orientation=3.159046, spawndist=0, MovementType=0 WHERE guid=134899;
UPDATE creature SET position_x=568.2037, position_y=479.5251, position_z=29.54745, orientation=3.228859, spawndist=0, MovementType=2 WHERE guid=134900;
UPDATE creature SET position_x=518.0403, position_y=562.2125, position_z=27.99943, orientation=5.218534, spawndist=0, MovementType=0 WHERE guid=134901;
UPDATE creature SET position_x=476.9982, position_y=565.5482, position_z=27.99794, orientation=5.445427, spawndist=0, MovementType=0 WHERE guid=134902;
UPDATE creature SET position_x=580.365, position_y=565.4648, position_z=-4.671439, orientation=0.03490658, spawndist=0, MovementType=0 WHERE guid=134903;
UPDATE creature SET position_x=480.8124, position_y=600.1201, position_z=-25.32026, orientation=1.134464, spawndist=0, MovementType=0 WHERE guid=134904;
UPDATE creature SET position_x=483.9907, position_y=607.7557, position_z=-25.32137, orientation=4.380776, spawndist=0, MovementType=0 WHERE guid=134905;
UPDATE creature SET position_x=579.373, position_y=590.7312, position_z=-25.3194, orientation=1.884956, spawndist=0, MovementType=0 WHERE guid=134906;
UPDATE creature SET position_x=572.4007, position_y=599.5096, position_z=-25.31939, orientation=5.497787, spawndist=0, MovementType=0 WHERE guid=134907;
UPDATE creature SET position_x=548.9331, position_y=575.9268, position_z=-4.67144, orientation=2.286381, spawndist=0, MovementType=0 WHERE guid=134908;
UPDATE creature SET position_x=425.4136, position_y=543.0265, position_z=-18.26003, orientation=3.612832, spawndist=0, MovementType=0 WHERE guid=134909;
UPDATE creature SET position_x=584.8333, position_y=544.572, position_z=-25.31589, orientation=2.286381, spawndist=0, MovementType=0 WHERE guid=134910;
UPDATE creature SET position_x=577.4434, position_y=549.1484, position_z=-25.31517, orientation=5.375614, spawndist=0, MovementType=0 WHERE guid=134911;
UPDATE creature SET position_x=387.4085, position_y=462.7724, position_z=-7.148942, orientation=2.687807, spawndist=0, MovementType=0 WHERE guid=138677;
UPDATE creature SET position_x=419.015, position_y=538.2688, position_z=-18.26003, orientation=0.4886922, spawndist=0, MovementType=0 WHERE guid=138678;
UPDATE creature SET position_x=530.1689, position_y=580.4394, position_z=-25.3194, orientation=1.413717, spawndist=0, MovementType=0 WHERE guid=138679;
UPDATE creature SET position_x=530.2059, position_y=600.8753, position_z=-25.3194, orientation=4.869469, spawndist=0, MovementType=0 WHERE guid=138680;
UPDATE creature SET position_x=593.2279, position_y=565.1199, position_z=-4.671438, orientation=3.106686, spawndist=0, MovementType=0 WHERE guid=138681;
UPDATE creature SET position_x=484.1014, position_y=523.8082, position_z=27.99765, orientation=1.448623, spawndist=0, MovementType=0 WHERE guid=138682;
UPDATE creature SET position_x=497.7333, position_y=523.8073, position_z=27.99824, orientation=1.64061, spawndist=0, MovementType=0 WHERE guid=138683;
UPDATE creature SET position_x=480.2641, position_y=558.1676, position_z=27.99527, orientation=1.850049, spawndist=0, MovementType=0 WHERE guid=138684;
UPDATE creature SET position_x=485.1412, position_y=564.9458, position_z=27.99509, orientation=3.211406, spawndist=0, MovementType=0 WHERE guid=138685;
UPDATE creature SET position_x=565.9363, position_y=486.7255, position_z=29.54745, orientation=4.258604, spawndist=0, MovementType=0 WHERE guid=138686;
UPDATE creature SET position_x=559.2202, position_y=477.3137, position_z=29.54745, orientation=0.8552113, spawndist=0, MovementType=0 WHERE guid=138687;
UPDATE creature SET id=0, position_x=688.4595, position_y=505.9162, position_z=29.55295, orientation=2.303835, spawndist=0, MovementType=0 WHERE guid=138688;
UPDATE creature SET position_x=541.6948, position_y=582.7413, position_z=-4.671439, orientation=5.67232, spawndist=0, MovementType=0 WHERE guid=138689;
UPDATE creature SET position_x=522.9578, position_y=554.5036, position_z=28.00058, orientation=2.199115, spawndist=0, MovementType=0 WHERE guid=138690;
UPDATE creature SET id=0, position_x=748.483, position_y=433.161, position_z=28.26648, orientation=3.560472, spawndist=0, MovementType=0 WHERE guid=138691;
UPDATE creature SET position_x=435.91, position_y=168.07, position_z=2.8522, orientation=3.27681, spawndist=0, MovementType=0 WHERE guid=138244;
UPDATE creature SET position_x=435.82, position_y=174.59, position_z=2.8522, orientation=3.38357, spawndist=0, MovementType=0 WHERE guid=138245;
UPDATE creature SET position_x=409.139, position_y=327.11, position_z=2.93415, orientation=6.0912, spawndist=0, MovementType=0 WHERE guid=138294;
UPDATE creature SET position_x=408.077, position_y=23.4038, position_z=-25.356, orientation=5.84685, spawndist=0, MovementType=0 WHERE guid=138255;
UPDATE creature SET position_x=413.974, position_y=15.749, position_z=-25.0879, orientation=2.54818, spawndist=0, MovementType=0 WHERE guid=138258;
UPDATE creature SET position_x=347.183, position_y=-67.9546, position_z=-25.8799, orientation=0.77538, spawndist=0, MovementType=0 WHERE guid=138334;
DELETE FROM creature WHERE guid IN (138242, 138330, 138331, 138243);

SET @CGUID := 4290000; -- creatures
INSERT INTO creature (guid, id, map, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, DeathState, MovementType) VALUES
(@CGUID+977, 13160, 429, 469.4645, -108.7307, -3.88623, 6.055382, 7200, 7200, 2, 0, 0, 1), -- Carrion Swarmer
(@CGUID+978, 13160, 429, 471.6138, -98.86472, -3.886138, 3.208938, 7200, 7200, 2, 0, 0, 1), -- Carrion Swarmer
(@CGUID+979, 13160, 429, 451.7102, -99.98319, -3.886858, 5.917731, 7200, 7200, 2, 0, 0, 1), -- Carrion Swarmer
(@CGUID+980, 13160, 429, 458.3592, -93.29666, -3.887129, 1.556009, 7200, 7200, 2, 0, 0, 1), -- Carrion Swarmer
(@CGUID+981, 13160, 429, 456.7164, -111.2952, -3.886013, 0.127128, 7200, 7200, 2, 0, 0, 1), -- Carrion Swarmer
(@CGUID+982, 13160, 429, 464.6766, -102.3018, -3.886676, 1.821618, 7200, 7200, 2, 0, 0, 1), -- Carrion Swarmer
(@CGUID+983, 13160, 429, 472.5949, -91.53717, -3.88604, 1.895309, 7200, 7200, 2, 0, 0, 1), -- Carrion Swarmer
(@CGUID+984, 13160, 429, 462.2313, -87.23843, -3.886815, 2.551586, 7200, 7200, 2, 0, 0, 1), -- Carrion Swarmer
(@CGUID+985, 13160, 429, 473.4278, -82.64647, -3.885948, 5.771993, 7200, 7200, 2, 0, 0, 1), -- Carrion Swarmer
(@CGUID+986, 13160, 429, 464.4823, -80.97841, -3.886624, 4.527874, 7200, 7200, 2, 0, 0, 1), -- Carrion Swarmer
(@CGUID+1064, 13160, 429, 483.631, 274.1594, 2.829807, 1.804002, 7200, 7200, 2, 0, 0, 1), -- Carrion Swarmer
(@CGUID+1065, 13160, 429, 479.2558, 284.4207, 2.852273, 3.698274, 7200, 7200, 2, 0, 0, 1), -- Carrion Swarmer
(@CGUID+1066, 13160, 429, 479.6031, 293.4077, 2.852857, 4.163345, 7200, 7200, 2, 0, 0, 1), -- Carrion Swarmer
(@CGUID+1067, 13160, 429, 475.8732, 277.585, 2.851943, 4.839149, 7200, 7200, 2, 0, 0, 1), -- Carrion Swarmer
(@CGUID+1068, 13160, 429, 477.5657, 282.8532, 2.852231, 2.53009, 7200, 7200, 2, 0, 0, 1), -- Carrion Swarmer
(@CGUID+1069, 13160, 429, 470.8649, 286.7577, 2.85287, 2.215841, 7200, 7200, 2, 0, 0, 1), -- Carrion Swarmer
(@CGUID+1070, 13160, 429, 468.5847, 294.3693, 2.852882, 0.662907, 7200, 7200, 2, 0, 0, 1), -- Carrion Swarmer
(@CGUID+1071, 13160, 429, 468.7993, 280.4746, 2.852868, 3.095573, 7200, 7200, 2, 0, 0, 1), -- Carrion Swarmer
(@CGUID+1072, 13160, 429, 476.467, 291.735, 2.852862, 4.770678, 7200, 7200, 2, 0, 0, 1), -- Carrion Swarmer
(@CGUID+1073, 13160, 429, 472.4048, 295.3147, 2.852875, 4.433242, 7200, 7200, 2, 0, 0, 1); -- Carrion Swarmer

INSERT INTO dbscripts_on_gossip (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(574001, 1000, 29, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Mizzle - npc_flag added');
