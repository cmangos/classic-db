-- Creating Westfall area station

-- Adding Flame of Westfall + trap

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55077, 181565, 0, -11276.900391, 1851.439941, 40.17800, 2.18846, 0, 0, 0.888575, 0.458732, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55077, 1);

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55078, 181376, 0, -11276.900391, 1851.439941, 40.17800, 2.18846, 0, 0, 0.888575, 0.458732, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55078, 1);

-- Adding Tent + decorations

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55079, 181301, 0, -11277.303711, 1836.428345, 39.835659, 3.156183, 0, 0, 0, 0, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55079, 1);

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55080, 181392, 0, -11273.5, 1837.800049, 43.394100, 0.379795, 0, 0, 0.188758, 0.982024, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55080, 1);

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55081, 181392, 0, -11281.052734, 1835.008301, 43.317999, 3.522177, 0, 0, 0.981949, -0.189147, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55081, 1);

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55082, 181302, 0, -11281.900391, 1839.619995, 40.031601, 3.317979, 0, 0, 0, -0.1891, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55082, 1);

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55083, 181302, 0, -11280.400391, 1839.640015, 40.066898, 3.48164, 0, 0, 0.985581, -0.169207, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55083, 1);

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55084, 181302, 0, -11281.288086, 1839.536621, 41.274647, 0.651846, 0, 0, 0, 0, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55084, 1);

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55085, 181306, 0, -11282.239258, 1834.550781, 39.147171, 3.58924, 0, 0, 0, 0, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55085, 1);

-- Creating Wetlands area station

-- Adding Flame of Wetlands + trap

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55086, 181567, 0, -2616.469974, -2529.409912, 79.190399, 4.55157, 0, 0, 0.761619, -0.648025, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55086, 1);

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55087, 181376, 0, -2616.469974, -2529.409912, 79.190399, 4.55157, 0, 0, 0.761619, -0.648025, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55087, 1);

-- Adding Midsummer Celebrant

INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (95014, 16781, 0, 16431, 0, -2622.926514, -2530.955322, 79.228798, 2.226024, 180, 0, 0, 0, 0, 0, 0);

INSERT INTO `game_event_creature` (`guid`,`event`) VALUES (95014,1);

INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (95014, 0, 0, 1, 16, 0, 0, NULL);

-- Creating Hillsbrad area station

-- Adding Flame of Hillsbrad + trap

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55088, 181566, 0, -325.529999, -674.729980, 54.654800, 5.56236, 0, 0, 0.352659, -0.935752, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55088, 1);

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55089, 181376, 0, -325.529999, -674.729980, 54.654800, 5.56236, 0, 0, 0.352659, -0.935752, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55089, 1);

-- Adding Tent + decorations

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55090, 181301, 0, -312.201477, -678.40100, 54.975601, 4.655217, 0, 0, 0, 0, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55090, 1);

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55091, 181392, 0, -316.066010, -679.268982, 57.778790, 3.32946, 0, 0, 0.995591, -0.0937957, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55091, 1);

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55092, 181392, 0, -308.243042, -677.538757, 58.496537, 0.211427, 0, 0, 0.105517, 0.994418, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55092, 1);

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55093, 181305, 0, -311.066833, -677.057373, 54.927109, 4.062232, 0, 0, 0, 0, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55093, 1);

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55094, 181388, 0, -311.252014, -675.838013, 55.917099, 5.327570, 0, 0, 0, 0, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55094, 1);

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55095, 181302, 0, -308.834656, -680.930725, 55.57, 2.85981, 0, 0, 0, 0, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55095, 1);

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55096, 181355, 0, -311.295410, -686.493652, 55.817631, 2.388569, 0, 0, 0, 0, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55096, 1);

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55097, 181355, 0, -306.818298, -670.257385, 54.478985, 3.209312, 0, 0, 0, 0, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55097, 1);

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55098, 181302, 0, -316.533356, -683.004761, 54.904514, 0.810702, 0, 0, 0, 0, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55098, 1);

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55099, 181302, 0, -316.510986, -683.215027, 56.147499, 1.977012, 0, 0, 0.935205, 0.549939, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55099, 1);

-- Adding Ribbon Pole

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55100, 181605, 0, -315.901855, -663.303955, 54.222061, 4.054404, 0, 0, 0, 0, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55100, 1);

-- Adding Midsummer Celebrant

INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (95015, 16781, 0, 16413, 0, -317.227783, -680.390686, 54.695543, 3.720608, 180, 0, 0, 0, 0, 0, 0);

INSERT INTO `game_event_creature` (`guid`,`event`) VALUES (95015,1);

INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (95015, 0, 0, 1, 16, 0, 0, NULL);

-- Creating Silverpine area station

-- Adding Flame of Silverpine + trap

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55101, 181564, 0, -278.221985, 1171.189941, 63.659698, 3.4908, 0, 0, 0.984796, -0.173716, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55101, 1);

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55102, 181376, 0, -278.221985, 1171.189941, 63.659698, 3.4908, 0, 0, 0.984796, -0.173716, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55102, 1);

-- Adding Tent + decorations

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55103, 181301, 0, -269.922546, 1162.896729, 63.769085, 2.38731, 0, 0, 0, 0, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55103, 1);

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55104, 181392, 0, -267.229004, 1165.739990, 67.296997, 0.80602, 0, 0, 0.392189, 0.919885, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55104, 1);

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55105, 181392, 0, -272.692996, 1159.949951, 67.247002, 3.960193, 0, 0, 0.9174, -0.397966, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55105, 1);

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55106, 181355, 0, -265.117645, 1168.118530, 63.777679, 2.848847, 0, 0, 0, 0, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55106, 1);

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55107, 181305, 0, -266.175995, 1161.180054, 63.654099, 1.32124, 0, 0, 0.613608, 0.789611, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55107, 1);

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55108, 181388, 0, -267.658569, 1160.525513, 64.645172, 1.698233, 0, 0, 0, 0, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55108, 1);

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55109, 181302, 0, -270.510132, 1159.011841, 63.684921, 3.23683, 0, 0, 0, 0, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55109, 1);

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55110, 181302, 0, -270.788361, 1169.002930, 63.717621, 3.5824, 0, 0, 0, 0, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55110, 1);

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55111, 181306, 0, -271.760193, 1162.960327, 63.779465, 2.207953, 0, 0, 0, 0, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55111, 1);

-- Adding Ribbon Pole

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55112, 181605, 0, -263.594330, 1174.463013, 63.781612, 4.517024, 0, 0, 0, 0, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55112, 1);

-- Adding Celebrants

INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (95016, 16781, 0, 16433, 0, -267.348816, 1158.932495, 63.568790, 2.188314, 180, 0, 0, 0, 0, 0, 0);

INSERT INTO `game_event_creature` (`guid`,`event`) VALUES (95016,1);

INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (95016, 0, 0, 1, 16, 0, 0, NULL);

INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (95017, 16781, 0, 16444, 0, -270.507568, 1160.886597, 63.728283, 6.276309, 180, 0, 0, 0, 0, 0, 0);

INSERT INTO `game_event_creature` (`guid`,`event`) VALUES (95017,1);

INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (95017, 0, 0, 1, 16, 0, 0, NULL);

INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (95018, 16781, 0, 16431, 0, -276.193390, 1164.746216, 63.953812, 3.185755, 180, 0, 0, 0, 0, 0, 0);

INSERT INTO `game_event_creature` (`guid`,`event`) VALUES (95018,1);

INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (95018, 0, 0, 1, 16, 0, 0, NULL);

INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (95019, 16781, 0, 16412, 0, -279.930634, 1163.624756, 64.128166, 0.314335, 180, 0, 0, 0, 0, 0, 0);

INSERT INTO `game_event_creature` (`guid`,`event`) VALUES (95019,1);

INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (95019, 0, 0, 1, 16, 0, 0, NULL);

-- Creating Plaguelands area station

-- Adding Flame of the Plaguelands + trap

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55113, 181338, 0, 1930.939941, -4411.569824, 73.882004, 4.3395, 0, 0, 0.825927, -0.563777, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55113, 1);

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55114, 181376, 0, 1930.939941, -4411.569824, 73.882004, 4.3395, 0, 0, 0.825927, -0.563777, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55114, 1);

-- Adding Tent + decorations

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55115, 181301, 0, 1918.164917, -4416.745605, 74.486679, 5.105258, 0, 0, 0, 0, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55115, 1);

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55116, 181392, 0, 1921.930054, -4415.200195, 77.996399, 0.392881, 0, 0, 0.19518, 0.980768, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55116, 1);

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55117, 181392, 0, 1914.469971, -4418.319824, 78.097504, 3.540758, 0, 0, 0.980149, -0.198261, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55117, 1);

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55118, 181305, 0, 1921.670044, -4417.410156, 74.493301, 5.205799, 0, 0, 0.513014, -0.85838, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55118, 1);

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55119, 181388, 0, 1922.946167, -4417.606934, 75.503891, 0.591722, 0, 0, 0, 0, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55119, 1);

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55120, 181306, 0, 1916.794922, -4420.214844, 74.805016, 0.590168, 0, 0, 0, 0, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55120, 1);

-- Adding Ribbon Pole

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55121, 181605, 0, 1928.430054, -4422.299805, 75.454399, 1.304875, 0, 0, 0, 0, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55121, 1);

-- Adding Celebrants

INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (95020, 16781, 0, 16433, 0, 1925.090210, -4406.501465, 73.980965, 3.741023, 180, 0, 0, 0, 0, 0, 0);

INSERT INTO `game_event_creature` (`guid`,`event`) VALUES (95020,1);

INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (95020, 0, 0, 1, 16, 0, 0, NULL);

INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (95021, 16781, 0, 16442, 0, 1922.740479, -4407.929688, 74.046410, 0.564086, 180, 0, 0, 0, 0, 0, 0);

INSERT INTO `game_event_creature` (`guid`,`event`) VALUES (95021,1);

INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (95021, 0, 0, 1, 16, 0, 0, NULL);

INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (95022, 16781, 0, 16431, 0, 1935.463745, -4415.734375, 74.295624, 3.643505, 180, 0, 0, 0, 0, 0, 0);

INSERT INTO `game_event_creature` (`guid`,`event`) VALUES (95022,1);

INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (95022, 0, 0, 1, 16, 0, 0, NULL);

INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (95023, 16781, 0, 16448, 0, 1933.085449, -4417.371582, 74.552567, 0.741458, 180, 0, 0, 0, 0, 0, 0);

INSERT INTO `game_event_creature` (`guid`,`event`) VALUES (95023,1);

INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (95023, 0, 0, 1, 16, 0, 0, NULL);

-- Creating the Hinterlands area station

-- Adding Flame of the Hinterlands + trap

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55122, 181345, 0, 97.891998, -3965.679932, 138.777003, 2.5887, 0, 0, 0.962031, 0.272939, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55122, 1);

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55123, 181376, 0, 97.891998, -3965.679932, 138.777003, 2.5887, 0, 0, 0.962031, 0.272939, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55123, 1);

-- Adding Tent + decorations

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55124, 181301, 0, 111.031998, -3961.179932, 138.227997, 0.813327, 0, 0, 0.395547, 0.918446, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55124, 1);

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55125, 181392, 0, 113.910004, -3963.889893, 141.723007, 5.52965, 0, 0, 0.367919, -0.929858, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55125, 1);

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55126, 181392, 0, 108.111458, -3958.464111, 141.820999, 2.395897, 0, 0, 0.931294, 0.364268, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55126, 1);

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55127, 181355, 0, 107.437759, -3965.104248, 138.655731, 3.198562, 0, 0, 0, 0, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55127, 1);

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55128, 181302, 0, 109.987564, -3957.429199, 138.209030, 1.09763, 0, 0, 0.521678, 0.853142, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55128, 1);

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55129, 181302, 0, 115.342453, -3960.576904, 138.420593, 0.869869, 0, 0, 0.421351, 0.906898, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55129, 1);

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55130, 181305, 0, 104.834999, -3959.060059, 138.535004, 5.436956, 0, 0, 0.410601, -0.911815, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55130, 1);

-- Adding Ribbon Pole

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55131, 181605, 0, 107.727264, -3972.540771, 137.132431, 2.511345, 0, 0, 0, 0, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55131, 1);

-- Adding Celebrants

INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (95024, 16781, 0, 16432, 0, 100.626068, -3959.244629, 138.659042, 3.500152, 180, 0, 0, 0, 0, 0, 0);

INSERT INTO `game_event_creature` (`guid`,`event`) VALUES (95024,1);

INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (95024, 0, 0, 1, 16, 0, 0, NULL);

INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (95025, 16781, 0, 16445, 0, 95.138115, -3960.265137, 138.860947, 0.185771, 180, 0, 0, 0, 0, 0, 0);

INSERT INTO `game_event_creature` (`guid`,`event`) VALUES (95025,1);

INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (95025, 0, 0, 1, 16, 0, 0, NULL);

-- Creating the Searing Gorge area station

-- Adding Flame of Searing Gorge + trap

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55132, 181341, 0, -7186.470215, -1055.660034, 240.326996, 4.48405, 0, 0, 0.783057, -0.62195, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55132, 1);

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55133, 181376, 0, -7186.470215, -1055.660034, 240.326996, 4.48405, 0, 0, 0.783057, -0.62195, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55133, 1);

-- Adding Tent + decorations

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55134, 181301, 0, -7184.084473, -1044.486816, 240.515396, 4.503677, 0, 0, 0, 0, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55134, 1);

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55135, 181392, 0, -7184.209961, -1040.709961, 244.046005, 1.378683, 0, 0, 0.636028, 0.771666, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55135, 1);

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55136, 181392, 0, -7185.910156, -1048.630005, 244.064996, 4.481006, 0, 0, 0.78003, -0.620758, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55136, 1);

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55137, 181302, 0, -7188.562988, -1044.328003, 240.668396, 4.339655, 0, 0, 0, 0, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55137, 1);

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55138, 181302, 0, -7188.533691, -1044.363525, 241.911346, 5.443135, 0, 0, 0, 0, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55138, 1);

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55139, 181302, 0, -7181.200195, -1043.089966, 240.514999, 5.113268, 0, 0, 0.552164, -0.833735, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55139, 1);

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55140, 181305, 0, -7183.810059, -1047.829956, 240.516006, 2.03168, 0, 0, 0.849924, 0.526906, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55140, 1);

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55141, 181307, 0, -7183.738281, -1047.853149, 241.507141, 2.014400, 0, 0, 0, 0, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55141, 1);

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55142, 181388, 0, -7183.057129, -1046.599365, 241.507141, 1.327177, 0, 0, 0, 0, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55142, 1);

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55143, 181306, 0, -7183.979980, -1044.109985, 240.514999, 4.802559, 0, 0, 0, 0, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55143, 1);

-- Adding Ribbon Pole

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55144, 181605, 0, -7199.019043, -1052.545288, 241.488159, 5.994596, 0, 0, 0, 0, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55144, 1);

-- Adding Celebrants

INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (95026, 16781, 0, 16433, 0, -7190.332031, -1049.587036, 240.590393, 4.655375, 180, 0, 0, 0, 0, 0, 0);

INSERT INTO `game_event_creature` (`guid`,`event`) VALUES (95026,1);

INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (95026, 0, 0, 1, 16, 0, 0, NULL);

INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (95027, 16781, 0, 16442, 0, -7180.489258, -1053.551392, 241.471237, 4.875292, 180, 0, 0, 0, 0, 0, 0);

INSERT INTO `game_event_creature` (`guid`,`event`) VALUES (95027,1);

INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (95027, 0, 0, 1, 16, 0, 0, NULL);

INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (95028, 16781, 0, 16448, 0, -7179.443848, -1057.860229, 241.513229, 1.714063, 180, 0, 0, 0, 0, 0, 0);

INSERT INTO `game_event_creature` (`guid`,`event`) VALUES (95028,1);

INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (95028, 0, 0, 1, 16, 0, 0, NULL);

-- Creating the Blasted Lands area station

-- Adding Flame of the Blasted Lands + trap

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55145, 181344, 0, -11261.270508, -3058.094238, -0.157815, 1.593153, 0, 0, 0, 0, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55145, 1);

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55146, 181376, 0, -11261.270508, -3058.094238, -0.157815, 1.593153, 0, 0, 0, 0, 180, 100, 1);
