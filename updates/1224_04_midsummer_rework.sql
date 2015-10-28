-- *************************************************************
-- Adding Stations for Darkshore, Ashenvale, The Barrens and 
-- Stonetalon
-- *************************************************************

-- Creating Darkshore area station

-- Adding Flame of Darkshore + trap

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55058, 181563, 1, 4373.799805, 222.264008, 51.9646, 2.93812, 0, 0, 0.994829, 0.101563, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55058, 1);

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55068, 181376, 1, 4373.799805, 222.264008, 51.9646, 2.93812, 0, 0, 0.994829, 0.101563, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55068, 1);

-- Adding Festival Tent plus decorations

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55059, 181301, 1, 4365.770020, 229.151001, 53.441299, 2.36164, 0, 0, 0.924919, 0.380165, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`,`event`) VALUES (55059, 1);

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55060, 181392, 1, 4368.569824, 231.994995, 56.844002, 0.781851, 0, 0, 0.381044, 0.924557, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`,`event`) VALUES (55060, 1);

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55061, 181392, 1, 4362.939941, 226.328003, 56.887501, 3.915588, 0, 0, 0.926046, -0.377411, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`,`event`) VALUES (55061, 1);

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55062, 181305, 1, 4363.600098, 229.546997, 53.518799, 0.361213, 0, 0, 0.179626, 0.983735, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`,`event`) VALUES (55062, 1);

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55064, 181388, 1, 4363.402832, 229.911957, 54.511944, 1.930352, 0, 0, 0, 0, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`,`event`) VALUES (55064, 1);

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55065, 181302, 1, 4369.309082, 228.704742, 52.986015, 5.751314, 0, 0, 0, 0, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`,`event`) VALUES (55065, 1);

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55066, 181302, 1, 4367.660156, 227.104004, 52.902599, 2.04816, 0, 0, 0.854237, 0.519884, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`,`event`) VALUES (55066, 1);

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55067, 181302, 1, 4368.864746, 227.733597, 54.165325, 0.148906, 0, 0, 0, 0, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`,`event`) VALUES (55067, 1);

-- Adding Ribbon Pole

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55069, 181605, 1, 4367.744141, 217.926193, 52.576050, 0.621974, 0, 0, 0, 0, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`,`event`) VALUES (55069, 1);

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55070, 181355, 1, 4362.059082, 225.520432, 53.225056, 0.107539, 0, 0, 0, 0, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`,`event`) VALUES (55070, 1);

-- Adding Midsummer Celebrants x 3

INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (95011, 16781, 1, 16442, 0, 4376.079590, 217.106186, 51.841034, 3.325726, 180, 0, 0, 0, 0, 0, 0);

INSERT INTO `game_event_creature` (`guid`,`event`) VALUES (95011,1);

INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (95011, 0, 0, 1, 16, 0, 0, NULL);

INSERT INTO `game_event_creature_data` (`guid`, `entry_id`, `modelid`, `equipment_id`, `spell_start`, `spell_end`, `event`) VALUES (95011, 0, 16442, 0, 0, 0, 1);

INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (95012, 16781, 1, 16431, 0, 4371.717285, 216.442398, 52.289520, 0.152716, 180, 0, 0, 0, 0, 0, 0);

INSERT INTO `game_event_creature` (`guid`,`event`) VALUES (95012,1);

INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (95012, 0, 0, 1, 16, 0, 0, NULL);

INSERT INTO `game_event_creature_data` (`guid`, `entry_id`, `modelid`, `equipment_id`, `spell_start`, `spell_end`, `event`) VALUES (95012, 0, 16431, 0, 0, 0, 1);

INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (95013, 16781, 1, 16431, 0, 4373.311523, 228.445236, 52.545147, 3.934414, 180, 0, 0, 0, 0, 0, 0);

INSERT INTO `game_event_creature` (`guid`,`event`) VALUES (95013,1);

INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (95013, 0, 0, 1, 16, 0, 0, NULL);

INSERT INTO `game_event_creature_data` (`guid`, `entry_id`, `modelid`, `equipment_id`, `spell_start`, `spell_end`, `event`) VALUES (95013, 0, 16431, 0, 0, 0, 1);

-- Creating Ashenvale area station

-- Adding Flame of Ashenvale + trap

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55071, 181561, 1, 1919.910034, -2037.510010, 103.607002, 1.81061, 0, 0, 0.786613, 0.617446, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55071, 1);

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55072, 181376, 1, 1919.910034, -2037.510010, 103.607002, 1.81061, 0, 0, 0.786613, 0.617446, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55072, 1);

-- Creating The Barrens area station

-- Adding Flame of the Barrens + trap

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55073, 181560, 1, -912.270020, -3348.790039, 94.522102, 0.097327, 0, 0, 0.0486443, 0.998816, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55073, 1);

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55074, 181376, 1, -912.270020, -3348.790039, 94.522102, 0.097327, 0, 0, 0.0486443, 0.998816, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55074, 1);

-- Creating Stonetalon area station

-- Adding Flame of Stonetalon + trap

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55075, 181562, 1, 553.571543, 348.186523, 53.396599, 5.998054, 0, 0, 0, 0, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55075, 1);

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55076, 181376, 1, 553.571543, 348.186523, 53.396599, 5.998054, 0, 0, 0, 0, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55076, 1);

-- Creating the Winterspring area station

-- Adding Flame of Winterspring + trap

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55147, 181340, 1, 6492.490234, -2498.570068, 568.147021, 3.07177, 0, 0, 0.999391, 0.0349056, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55147, 1);

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55148, 181376, 1, 6492.490234, -2498.570068, 568.147021, 3.07177, 0, 0, 0.999391, 0.0349056, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55148, 1);

-- Adding Tent + decorations

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55149, 181301, 1, 6487.939941, -2489.810059, 567.856995, 3.40635, 0, 0, 0.991251, -0.131993, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55149, 1);

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55150, 181392, 1, 6491.844238, -2488.768555, 571.342004, 0.252197, 0, 0, 0, 0, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55150, 1);

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55151, 181392, 1, 6483.992188, -2490.926025, 571.377007, 3.4095, 0, 0, 0.991042, -0.133552, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55151, 1);

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55152, 181305, 1, 6490.808105, -2489.089111, 568.227539, 2.871499, 0, 0, 0, 0, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55152, 1);

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55153, 181302, 1, 6484.049316, -2488.093994, 567.636780, 1.874043, 0, 0, 0, 0, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55153, 1);

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55154, 181302, 1, 6484.025879, -2488.252441, 568.880371, 5.011691, 0, 0, 0, 0, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55154, 1);

-- Adding Ribbon Pole

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55155, 181605, 1, 6483.430664, -2476.308838, 569.403809, 3.313632, 0, 0, 0, 0, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55155, 1);

-- Creating the Azshara area station

-- Adding Flame of Azshara + trap

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55156, 181342, 1, 3879.189941, -5377.359863, 141.001999, 5.33246, 0, 0, 0.457661, -0.8891247, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55156, 1);

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55157, 181376, 1, 3879.189941, -5377.359863, 141.001999, 5.33246, 0, 0, 0.457661, -0.8891247, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55157, 1);

-- Adding Tent + decorations

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55158, 181301, 1, 3881.290039, -5389.700195, 141.324997, 4.362501, 0, 0, 0.819388, -0.573239, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55158, 1);

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55159, 181392, 1, 3877.580078, -5388.379883, 144.908005, 2.79169, 0, 0, 0.984735, 0.174059, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55159, 1);

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55160, 181392, 1, 3885.060059, -5391.129883, 144.796005, 5.94428, 0, 0, 0.168641, -0.985678, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55160, 1);

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55161, 181305, 1, 3879.149902, -5388.930176, 140.968994, 0.452771, 0, 0, 0.224457, 0.974484, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55161, 1);

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55162, 181307, 1, 3879.249023, -5389.719727, 141.960236, 5.192645, 0, 0, 0, 0, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55162, 1);

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55164, 181307, 1, 3879.585938, -5388.280762, 141.972992, 2.047124, 0, 0, 0, 0, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55164, 1);

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55165, 181302, 1, 3883.300049, -5388.390137, 141.580002, 0.51874, 0, 0, 0.256472, 0.966552, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55165, 1);

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55166, 181302, 1, 3884.469971, -5389.629883, 141.459, 0.982896, 0, 0, 0.471903, 0.88165, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55166, 1);

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55167, 181355, 1, 3886.889648, -5385.532227, 141.874496, 1.301178, 0, 0, 0, 0, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55167, 1);

-- Adding Ribbon Pole

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55168, 181605, 1, 3897.534424, -5389.211426, 139.648697, 2.659907, 0, 0, 0, 0, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55168, 1);

-- Adding Celebrants

INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (95029, 16781, 1, 16431, 0, 3880.343994, -5385.739258, 141.409454, 1.285683, 180, 0, 0, 0, 0, 0, 0);

INSERT INTO `game_event_creature` (`guid`,`event`) VALUES (95029,1);

INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (95029, 0, 0, 1, 16, 0, 0, NULL);

INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (95030, 16781, 1, 16431, 0, 3881.667725, -5382.371094, 141.834702, 4.258420, 180, 0, 0, 0, 0, 0, 0);

INSERT INTO `game_event_creature` (`guid`,`event`) VALUES (95030,1);

INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (95030, 0, 0, 1, 16, 0, 0, NULL);

-- Creating the Un'goro area station

-- Adding Flame of Un'goro + trap

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55169, 181343, 1, -7838, -2068.179932, -271.778992, 0.446949, 0, 0, 0.221619, 0.975133, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55169, 1);

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55170, 181376, 1, -7838, -2068.179932, -271.778992, 0.446949, 0, 0, 0.221619, 0.975133, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55170, 1);

-- Adding Tent + decorations

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55171, 181301, 1, -7828.620117, -2060.540039, -271.688995, 4.07473, 0, 0, 0.893116, -0.449826, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55171, 1);

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55172, 181392, 1, -7831.839844, -2058.199951, -268.192993, 2.51886, 0, 0, 0.951915, 0.306361, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55172, 1);

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55173, 181392, 1, -7825.399902, -2062.919922, -268.197998, 5.629815, 0, 0, 0.320903, -0.947112, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55173, 1);

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55174, 181302, 1, -7285.3125, -2058.766846, -271.788208, 4.933961, 0, 0, 0, 0, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55174, 1);

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55175, 181302, 1, -7826.498535, -2057.897705, -271.817932, 5.220634, 0, 0, 0, 0, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55175, 1);

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55176, 181302, 1, -7825.757324, -2058.004639, -270.616730, 1.399671, 0, 0, 0, 0, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55176, 1);

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55177, 181302, 1, -7828.419922, -2064.580078, -271.371002, 3.64936, 0, 0, 0.967944, -0.251165, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55177, 1);

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55178, 181302, 1, -7829.059570, -2066.142822, -271.318359, 3.213942, 0, 0, 0, 0, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55178, 1);

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55179, 181355, 1, -7830.569824, -2070.489990, -271.670013, 1.839018, 0, 0, 0.795305, 0.60621, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55179, 1);

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55180, 181355, 1, -7838.819824, -2058.350098, -272.071014, 4.799968, 0, 0, 0, 0, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55180, 1);

-- Adding Ribbon Pole

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55181, 181605, 1, -7823.888184, -2049.480713, -272.871582, 4.074018, 0, 0, 0, 0, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55181, 1);

-- Adding Celebrants

INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (95031, 16781, 1, 16431, 0, -7841.166016, -2061.074219, -271.908875, 0.535801, 180, 0, 0, 0, 0, 0, 0);

INSERT INTO `game_event_creature` (`guid`,`event`) VALUES (95031,1);

INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (95031, 0, 0, 1, 16, 0, 0, NULL);

INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (95032, 16781, 1, 16433, 0, -7836.196777, -2059.242676, -271.733551, 3.536021, 180, 0, 0, 0, 0, 0, 0);

INSERT INTO `game_event_creature` (`guid`,`event`) VALUES (95032,1);

INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (95032, 0, 0, 1, 16, 0, 0, NULL);

-- Creating the Silithus area station

-- Adding Flame of Silithus + trap

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55182, 181339, 1, -6395.720215, -176.996994, 7.623330, 6.27133, 0, 0, 0.00592982, -0.999982, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55182, 1);

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55183, 181376, 1, -6395.720215, -176.996994, 7.623330, 6.27133, 0, 0, 0.00592982, -0.999982, 180, 100, 1);


INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55183, 1);

-- Adding Tent + decorations

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55184, 181301, 1, -6385.990234, -179.253998, 7.901400, 2.455040, 0, 0, 0, 0, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55184, 1);

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55185, 181392, 1, -6382.850098, -181.813004, 11.367800, 5.608418, 0, 0, 0.331018, -0.943624, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55185, 1);

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55186, 181392, 1, -6389.210938, -176.719482, 11.401830, 2.439336, 0, 0, 0.938986, 0.343956, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55186, 1);

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55187, 181305, 1, -6387.890137, -182.302002, 7.673500, 2.513937, 0, 0, 0, 0, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55187, 1);

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55188, 181388, 1, -6388.390137, -182.401001, 8.663651, 2.513937, 0, 0, 0, 0, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55188, 1);

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55189, 181302, 1, -6387.562988, -175.771622, 8.371091, 4.094521, 0, 0, 0, 0, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55189, 1);

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55190, 181302, 1, -6388.382324, -177.018799, 8.267485, 3.265926, 0, 0, 0, 0, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55190, 1);

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55191, 181302, 1, -6388.369141, -176.692612, 9.500423, 3.383742, 0, 0, 0, 0, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55191, 1);

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55192, 181355, 1, -6384.713867, -189.082260, 6.954593, 1.781520, 0, 0, 0, 0, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55192, 1);

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55193, 181306, 1, -6382.580566, -178.797241, 8.224311, 3.305194, 0, 0, 0, 0, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55193, 1);

-- Adding Ribbon Pole

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55194, 181605, 1, -6391.829590, -194.590179, 5.218790, 1.686483, 0, 0, 0, 0, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55194, 1);


-- Adding Celebrants

INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (95033, 16781, 1, 16412, 0, -6392.991699, -183.166443, 7.490734, 5.225489, 180, 0, 0, 0, 0, 0, 0);

INSERT INTO `game_event_creature` (`guid`,`event`) VALUES (95033,1);

INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (95033, 0, 0, 1, 16, 0, 0, NULL);

INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (95034, 16781, 1, 16434, 0, -6392.391602, -184.935608, 7.267998, 1.883618, 180, 0, 0, 0, 0, 0, 0);

INSERT INTO `game_event_creature` (`guid`,`event`) VALUES (95034,1);

INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (95034, 0, 0, 1, 16, 0, 0, NULL);