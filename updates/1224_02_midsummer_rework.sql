-- Changing Stormwind event area

-- Changing Celebrants to Firebreathers

UPDATE `creature` SET `id`= 17038, `modelid`= 16412 WHERE `guid`= 94675;
UPDATE `creature` SET `id`= 17038, `modelid`= 16433 WHERE `guid`= 94676;

-- Removing Torch Target Braziers

DELETE FROM `gameobject` WHERE `guid` IN (50971, 50962);

DELETE FROM `game_event_gameobject` WHERE `guid` IN (50971, 50962);

-- Slight adjustment to flame position + trap

UPDATE `gameobject` SET `position_x`= -8833.23, `position_y`= 859.132, `position_z`= 98.8978, `orientation`= -2.07694 WHERE `guid`= 50981;

UPDATE `gameobject` SET `position_x`= -8833.23, `position_y`= 859.132, `position_z`= 98.8978, `orientation`= -2.07694 WHERE `guid`= 52577;

-- Adding Tent + Decorations

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55020, 181301, 0, -8828.97, 872.496, 98.6609, 1.17717, 0, 0, 0, 0, 180, 100, 1);

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55021, 181392, 0, -8830.448242, 868.839722, 102.123, 4.29844, 0, 0, 0.837326, -0.546704, 180, 100, 1);

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55022, 181392, 0, -8827.67, 876.27, 102.123, 1.20095, 0, 0, 0.565033, 0.825068, 180, 100, 1);

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55023, 181305, 0, -8825.919922, 873.322021, 98.660896, 5.907331, 0, 0, 0.565033, 0.825068, 180, 100, 1);

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55024, 181307, 0, -8827.055664, 873.295105, 99.720879, 3.714509, 0, 0, 0, 0, 180, 100, 1);

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55025, 181307, 0, -8824.352539, 873.181519, 99.716415, 1.837407, 0, 0, 0, 0, 180, 100, 1);

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55026, 181391, 0, -8825.827148, 873.296570, 99.716537, 2.698978, 0, 0, 0, 0, 180, 100, 1);

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55027, 181302, 0, -8830.484375, 876.028015, 98.566925, 6.162577, 0, 0, 0, 0, 180, 100, 1);

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55028, 181302, 0, -8827.839844, 868.646, 98.760399, 1.226356, 0, 0, 0, 0, 180, 100, 1);

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55029, 181302, 0, -8827.809570, 868.665588, 100.004204, 1.689745, 0, 0, 0, 0, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55020, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55021, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55022, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55023, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55024, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55025, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55026, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55027, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55028, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55029, 1);

-- Adding festival Loremaster, Flamekeeper and relocating 
-- Firebreathers

INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (95000, 16817, 0, 16354, 0, -8829.290039, 853.587769, 99.180504, 6.009315, 180, 0, 0, 6900, 0, 0, 0);

INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (95001, 16788, 0, 16338, 0, -8828.253906, 864.704834, 98.861595, 6.049497, 180, 0, 0, 6900, 0, 0, 0);

INSERT INTO `game_event_creature_data` (`guid`, `entry_id`, `modelid`, `equipment_id`, `spell_start`, `spell_end`, `event`) VALUES (95001, 16788, 0, 0, 29246, 29246, 1);

UPDATE `creature` SET `position_x`= -8830.818359, `position_y`= 872.003235, `position_z`= 98.649483, `orientation`= 5.974578 WHERE `guid`= 94676;

UPDATE `creature` SET `position_x`= -8825.745117, `position_y`= 870.474976, `position_z`= 98.732155, `orientation`= 2.852017 WHERE `guid`= 94675;

INSERT INTO `game_event_creature` (`guid`, `event`) VALUES (95000, 1);

INSERT INTO `game_event_creature` (`guid`, `event`) VALUES (95001, 1);

-- *************************************************************


-- Changing Ironforge event area

-- Removing Torch Target Braziers

DELETE FROM `gameobject` WHERE `guid` IN (50970, 50950, 50948, 50949, 50969);

DELETE FROM `game_event_gameobject` WHERE `guid` IN (50970, 50950, 50948, 50949, 50969);

-- Adjusting Crate positions + adding braziers

UPDATE `gameobject` SET `position_x`= -4691.859863, `position_y`= -1220.469971, `position_z`= 501.660004, `orientation`= 3.11753, `rotation2`= 0.999928, `rotation3`= 0.0120311  WHERE `guid`= 50798;

UPDATE `gameobject` SET `position_x`= -4690.669922, `position_y`= -1221.900024, `position_z`= 501.660004, `orientation`= 0, `rotation2`= 0, `rotation3`= 1 WHERE `guid`= 50768;

UPDATE `gameobject` SET `position_x`= -4691.290039, `position_y`= -1221.130005, `position_z`= 502.903015, `orientation`= 2.19469, `rotation2`= 0.89, `rotation3`= 0.455961 WHERE `guid`= 50767;

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55030, 181355, 0, -4694.629883, -1219.928467, 501.660004, 2.253594, 0, 0, 0, 0, 180, 100, 1);

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55031, 181355, 0, -4706.125, -1229.371338, 501.660004, 2.210395, 0, 0, 0, 0, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55030, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55031, 1);

-- Updating Loremaster and adding Flamekeeper

UPDATE `creature` SET `position_x`= -4702.790039, `position_y`= -1218.050049 WHERE `guid`= 94857;

INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (95002, 16788, 0, 16339, 0, -4699.388184, -1215.956421, 501.659607, 1.581940, 180, 0, 0, 6900, 0, 0, 0);

INSERT INTO `game_event_creature` (`guid`,`event`) VALUES (95002,1);

INSERT INTO `game_event_creature_data` (`guid`, `entry_id`, `modelid`, `equipment_id`, `spell_start`, `spell_end`, `event`) VALUES (95002, 16788, 0, 0, 29245, 29245, 1);

-- Changing 2 Celebrants to IF Firebreathers

UPDATE `creature` SET `id`= 17048, `position_x`= -4706.531250, `position_y`= -1221.005737, `position_z`= 501.660004, `orientation`= 4.4537, `modelid`= 16413 WHERE `guid`= 94663;

UPDATE `creature` SET `id`= 17048, `position_x`= -4693.685059, `position_y`= -1222.138672, `position_z`= 501.660004, `orientation`= 5.87741, `modelid`= 16434 WHERE `guid`= 94661;

-- Removing remaining Celebrants

DELETE FROM `creature` WHERE `guid` IN (94662, 94664);

DELETE FROM `game_event_creature` WHERE `guid` IN (94662, 94664);

DELETE FROM `creature_addon` WHERE `guid` IN (94662, 94664);

-- *************************************************************

-- Changing Darnassus Event Area

-- Removing Torch Target Braziers

DELETE FROM `gameobject` WHERE `guid` IN (50954, 50959, 50953, 50958, 50952);

DELETE FROM `game_event_gameobject` WHERE `guid` IN (50954, 50959, 50953, 50958, 50952);

-- Setting Flame of Darnassus to correct model

UPDATE `gameobject_template` SET `displayId`= 6754 WHERE `entry`= 181334;

-- Slight adjustment to Flame position

UPDATE `gameobject` SET `position_x`= 8704.969727,`position_y`= 932.635986, `position_z`= 14.726300, `orientation`= 3.40724, `rotation2`= 0.991192, `rotation3`= -0.132434 WHERE `guid`= 50985;

UPDATE `gameobject` SET `position_x`= 8704.969727,`position_y`= 932.635986, `position_z`= 14.726300, `orientation`= 3.40724, `rotation2`= 0.991192, `rotation3`= -0.132434 WHERE `guid`= 52534;

-- Slight adjustment of Loremaster's position

UPDATE `creature` SET `position_x`= 8701.287109, `position_y`= 939.087097, `position_z`= 14.080829, `orientation`= 1.671578 WHERE `guid`= 94855;

-- Adding 2 Darn Firebreathers by changing 2 celebrant npcs

UPDATE `creature` SET `id`= 17049, `modelid`= 0, `position_x`= 8697.292969, `position_y`= 929.417908, `position_z`= 15.778015, `orientation`= 6.094326 WHERE `guid`= 94727;

UPDATE `creature` SET `id`= 17049, `modelid`= 0, `position_x`= 8700.335938, `position_y`= 928.731812, `position_z`= 15.883267, `orientation`= 2.854552 WHERE `guid`= 94529;

-- Removing 2 remaining celebrants

DELETE FROM `creature` WHERE `guid` IN (94728, 94747);

DELETE FROM `game_event_creature` WHERE `guid` IN (94728, 94747);

DELETE FROM `creature_addon` WHERE `guid` IN (94728, 94747);

-- Adding Flamekeeper

INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (95003, 16788, 1, 16338, 0, 8711.143555, 934.722717, 14.820390, 2.373151, 180, 0, 0, 6900, 0, 0, 0);

INSERT INTO `game_event_creature` (`guid`,`event`) VALUES (95003,1);

INSERT INTO `game_event_creature_data` (`guid`, `entry_id`, `modelid`, `equipment_id`, `spell_start`, `spell_end`, `event`) VALUES (95003, 16788, 0, 0, 29246, 29246, 1);

-- Adding tent,tables and decorations

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55032, 181301, 1, 8713.120117, 928.921021, 15.230100, 0.902662, 0, 0, 0.436164, 0.899867, 180, 100, 1);

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55033, 181392, 1, 8710.602656, 925.819453, 18.596324, 4.032491, 0, 0, 0.902417, -0.430863, 180, 100, 1);

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55034, 181392, 1, 8715.522656, 932.062878, 18.706324, 0.879107, 0, 0, 0.425535, 0.904942, 180, 100, 1);

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55035, 181355, 1, 8706.299805, 927.255737, 15.613177, 1.861283, 0, 0, 0, 0, 180, 100, 1);

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55036, 181355, 1, 8714.546875, 934.973267, 14.940084, 1.861283, 0, 0, 0, 0, 180, 100, 1);

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55037, 181305, 1, 8716.241211, 929.633484, 15.441314, 1.042100, 0, 0, 0, 0, 180, 100, 1);

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55038, 181302, 1, 8708.734375, 927.564148, 15.257755, 0.755429, 0, 0, 0, 0, 180, 100, 1);

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55039, 181302, 1, 8708.337891, 927.585815, 16.501081, 3.107706, 0, 0, 0, 0, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55032, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55033, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55034, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55035, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55036, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55037, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55038, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55039, 1);

-- Adjusting Ribbon Pole position

UPDATE `gameobject` SET `position_x`= 8729.666992, `position_y`= 928.159058, `position_z`= 19.578243 WHERE `guid`= 51003;

-- ***********************************************************
-- Changing Undercity Event Area

-- Adjusting Flame of the Undercity to correct model

UPDATE `gameobject_template` SET `displayId`= 6755 WHERE `entry`= 181335;

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55040, 181335, 0, 1642.060059, 239.867004, 62.591579, 0.0009408, 0, 0, 0.0004704, 1, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55040, 1);

-- Ribbon Pole

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55041, 181605, 0, 1650, 228.962006, 62.591599, 2.258957, 0, 0, 0.90419, 00.42713, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55041, 1);

-- Table, mugs, crates and braziers

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55042, 181305, 0, 1640.038696, 234.286026, 62.591599, 2.726269, 0, 0, 0, 0, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55042, 1);

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55043, 181307, 0, 1640.696655, 234.167191, 63.582661, 2.985538, 0, 0, 0, 0, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55043, 1);

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55044, 181307, 0, 1638.000366, 233.696701, 63.582962, 0.39765, 0, 0, 0, 0, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55044, 1);

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55045, 181302, 0, 1638.088501, 244.059906, 62.591518, 3.475719, 0, 0, 0, 0, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55045, 1);

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55046, 181302, 0, 1636.944336, 245.123138, 62.591648, 3.60924, 0, 0, 0.972788, -0.231698, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55046, 1);

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55047, 181302, 0, 1637.110840, 244.775665, 63.834652, 2.796351, 0, 0, 0, 0, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55047, 1);

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55048, 181355, 0, 1631.430054, 233.30995, 62.591599, .0997790, 0, 0, 0.0498688, 0.998756, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55048, 1);

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55049, 181355, 0, 1631.827271, 246.979446, 62.591541, 5.753376, 0, 0, 0, 0, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (55049, 1);

-- Adding Festival NPCs

-- Adjusting UC and TB Fireeater to match Org, they can't be    -- dummies

UPDATE `creature_template` SET `MinLevel`= 59, `MaxLevel`= 60, `MinLevelHealth`= 5800, `MaxLevelHealth`= 6800, `MinMeleeDmg`= 118, `MaxMeleeDmg`= 125, `MeleeAttackPower`= 56, `RangedAttackPower`= 100, `EquipmentTemplateId`= 0 WHERE `Entry` IN (17050, 17051);



-- Adding UC Fireeater x 3

INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (95004, 17051, 0, 0, 0, 1646.161743, 234.941940, 62.591473, 3.609430, 180, 0, 0, 5800, 0, 0, 0);

INSERT INTO `game_event_creature` (`guid`,`event`) VALUES (95004,1);

INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (95005, 17051, 0, 0, 0, 1644.038208, 233.989410, 62.591473, 0.528861, 180, 0, 0, 5800, 0, 0, 0);

INSERT INTO `game_event_creature` (`guid`,`event`) VALUES (95005,1);

INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (95008, 17051, 0, 0, 0, 1638.525146, 244.587646, 62.591881, 5.516111, 180, 0, 0, 5800, 0, 0, 0);

INSERT INTO `game_event_creature` (`guid`,`event`) VALUES (95008,1);

-- Adding Flamekeeper + Talespinner

INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (95006, 16788, 0, 0, 0, 1647.563599, 243.818588, 62.591999, 0.167576, 180, 0, 0, 0, 0, 0, 0);

INSERT INTO `game_event_creature_data` (`guid`, `entry_id`, `modelid`, `equipment_id`, `spell_start`, `spell_end`, `event`) VALUES (95006, 16788, 0, 0, 29243, 29243, 1);


INSERT INTO `game_event_creature` (`guid`,`event`) VALUES (95006,1);

INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (95007, 16818, 0, 0, 0, 1636.232788, 235.524689, 62.591728, 3.91, 180, 0, 0, 0, 0, 0, 0);

INSERT INTO `game_event_creature` (`guid`,`event`) VALUES (95007,1);


-- ***********************************************************
-- Changing Thunderbluff Event Area

-- Adjusting Flame of Thunderbluff to correct model

UPDATE `gameobject_template` SET `displayId`= 6755 WHERE `entry`= 181337;

-- Removing Torch Target Braziers

DELETE FROM `gameobject` WHERE `guid` IN (50955, 50961, 50945, 50956, 50965);

DELETE FROM `game_event_gameobject` WHERE `guid` IN (50955, 50961, 50945, 50956, 50965);

-- Adjusting flame + trap + Music Doodad position

UPDATE `gameobject` SET `position_x`= -1036.25, `position_y`= 297.622009, `position_z`= 135.535995, `orientation`= 3.7342, `rotation2`= 0.956422, `rotation3`= -0.291989 WHERE `guid` IN (50988, 52571, 50556);

-- Adjusting Ribbon Pole position

UPDATE `gameobject` SET `position_x`= -1034.626831, `position_y`= 314.926910, `position_z`= 134.5901345, `orientation`= 4.802892 WHERE `guid`= 51004;

-- Adding Festival Tent plus decorations

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55050, 181301, 1, -1025.579956, 305.342987, 135.737, 4.129651, 0, 0, 0.88043, -0.474177, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`,`event`) VALUES (55050, 1);

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55051, 181392, 1, -1027.849976, 301.919281, 139.237, 4.121787, 0, 0, 0.882286, -0.470713, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`,`event`) VALUES (55051, 1);

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55052, 181392, 1, -1023.356018, 308.676056, 139.297998, 0.988048, 0, 0, 0.474173, 0.880432, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`,`event`) VALUES (55052, 1);

UPDATE `gameobject` SET `position_x`= -1028.280029, `position_y`= 307.638, `position_z`= 135.645996, `orientation`= 5.90386, `rotation2`= 0.188526, `rotation3`= -0.982068 WHERE `guid`= 50815;

UPDATE `gameobject` SET `position_x`= -1028.713989, `position_y`= 306.373260, `position_z`= 136.635590, `orientation`= 1.218961 WHERE `guid`= 52681;

UPDATE `gameobject` SET `position_x`= -1025.785278, `position_y`= 307.362061, `position_z`= 135.710632, `orientation`= 4.408456 WHERE `guid`= 50881;

UPDATE `gameobject` SET `position_x`= -1024.372803, `position_y`= 301.703949, `position_z`= 135.746155, `orientation`= 3.941922 WHERE `guid`= 50698;

UPDATE `gameobject` SET `position_x`= -1022.721985, `position_y`= 302.327454, `position_z`= 135.745941, `orientation`= 4.00972 WHERE `guid`= 50766;

UPDATE `gameobject` SET `position_x`= -1023.349365, `position_y`= 302.138092, `position_z`= 136.989090, `orientation`= 3.404959 WHERE `guid`= 50774;

-- Adjusting position of Festival Talespinner

UPDATE `creature` SET `position_x`= -1038.963013, `position_y`= 291.748016, `position_z`= 135.723007, `orientation`= 4.214638 WHERE `guid`= 94858;

-- Changing 2 Celebrants to Fireeaters and adjusting position

UPDATE `creature` SET `id`= 17050, `modelid`= 0, `position_x`= -1044.517212, `position_y`= 298.881165, `position_z`= 135.177994, `orientation`= 0.287644 WHERE `guid`= 94627;

UPDATE `creature` SET `id`= 17050, `modelid`= 0, `position_x`= -1040.790771, `position_y`= 303.779572, `position_z`= 135.085327, `orientation`= 4.575921 WHERE `guid`= 94628;

-- Adding Festival Flamekeeper

INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (95009, 16788, 1, 0, 0, -1032.178711, 291.725474, 135.746017, 5.168897, 180, 0, 0, 0, 0, 0, 0);

INSERT INTO `game_event_creature_data` (`guid`, `entry_id`, `modelid`, `equipment_id`, `spell_start`, `spell_end`, `event`) VALUES (95009, 16788, 0, 0, 29244, 29244, 1);


INSERT INTO `game_event_creature` (`guid`,`event`) VALUES (95009,1);

-- Removing 2 remaining Celebrants

DELETE FROM `creature` WHERE `guid` IN (94531, 94547);

DELETE FROM `game_event_creature` WHERE `guid` IN (94531, 94547);

DELETE FROM `creature_addon` WHERE `guid` IN (94531, 94547);

-- ************************************************************
-- Changing Orgrimmar Event Area
-- Adjusting Flame of Orgrimmar to correct model

UPDATE `gameobject_template` SET `displayId`= 6755 WHERE `entry`= 181336;

-- Removing Torch Target Braziers

DELETE FROM `gameobject` WHERE `guid` IN (50963, 50944, 50960, 50964, 50951);

DELETE FROM `game_event_gameobject` WHERE `guid` IN (50963, 50944, 50960, 50964, 50951);

-- Adjusting flame + trap + Music Doodad position

UPDATE `gameobject` SET `position_x`= 1952.989990, `position_y`= -4271.149902, `position_z`= 30.582199, `orientation`= 4.163355, `rotation2`= 0.104528, `rotation3`= -0.994522 WHERE `guid` IN (50987, 52524, 50564);

-- Adjusting Ribbon Pole position

UPDATE `gameobject` SET `position_x`= 1970.861694, `position_y`= -4272.415039, `position_z`= 31.572199, `orientation`= 3.050056 WHERE `guid`= 51038;

-- Adding 2 braziers

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55053, 181355, 1, 1959.713501, -4274.917969, 30.922344, 4.110346, 0, 0, 0, 0, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`,`event`) VALUES (55053, 1);

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55054, 181355, 1, 1965.048462, -4280.224609, 29.808430, 3.709791, 0, 0, 0, 0, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`,`event`) VALUES (55054, 1);

-- Adding Festival Tent plus decorations

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55055, 181301, 1, 1984.260010, -4281.899902, 28.079399, 3.301377, 0, 0, 0.99681, -0.0798087, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`,`event`) VALUES (55055, 1);

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55056, 181392, 1, 1980.330688, -4282.589844, 31.505100, 3.289589, 0, 0, 0.997263, -0.0739311, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`,`event`) VALUES (55056, 1);

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (55057, 181392, 1, 1988.210205, -4281.278809, 31.555100, 0.179410, 0, 0, 0.0895847, 0.995979, 180, 100, 1);

INSERT INTO `game_event_gameobject` (`guid`,`event`) VALUES (55057, 1);

UPDATE `gameobject` SET `position_x`= 1982.112915, `position_y`= -4283.093262, `position_z`= 28.375153, `orientation`= 1.154067 WHERE `guid`= 50833;

UPDATE `gameobject` SET `position_x`= 1982.090820, `position_y`= -4284.826660, `position_z`= 29.140230, `orientation`= 1.183139 WHERE `guid`= 50923;

UPDATE `gameobject` SET `position_x`= 1980.060303, `position_y`= -4281.240723, `position_z`= 28.909554, `orientation`= 3.261298 WHERE `guid`= 50765;

UPDATE `gameobject` SET `position_x`= 1982.680054, `position_y`= -4280.770020, `position_z`= 29.966400, `orientation`= 3.09305, `rotation2`= 0.999705, `rotation3`= 0.0242711 WHERE `guid`= 50773;

-- Adjusting Festival Talespinner position

UPDATE `creature` SET `position_x`= 1946.978271, `position_y`= -4280.548828, `position_z`= 29.428894, `orientation`= 4.538936 WHERE `guid`= 94861;

-- Adding Flamekeeper

INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (95010, 16788, 1, 0, 0, 1953.880127, -4278.317383, 30.072861, 4.117185, 180, 0, 0, 0, 0, 0, 0);

INSERT INTO `game_event_creature_data` (`guid`, `entry_id`, `modelid`, `equipment_id`, `spell_start`, `spell_end`, `event`) VALUES (95010, 16788, 0, 0, 29243, 29243, 1);


INSERT INTO `game_event_creature` (`guid`,`event`) VALUES (95010,1);

-- Changing 3 Celebrants to Fireeaters and adjusting position

UPDATE `creature` SET `id`= 17041, `modelid`= 0, `position_x`= 1958.104858, `position_y`= -4279.344238, `position_z`= 29.902580, `orientation`= 4.373998 WHERE `guid`= 94629;

UPDATE `creature` SET `id`= 17041, `modelid`= 0, `position_x`= 1957.071533, `position_y`= -4283.166504, `position_z`= 29.028059, `orientation`= 1.310948 WHERE `guid`= 94630;

UPDATE `creature` SET `id`= 17041, `modelid`= 0, `position_x`= 1963.100952, `position_y`= -4291.017578, `position_z`= 27.349636, `orientation`= 2.210230 WHERE `guid`= 94530;

-- Removing remaining Celebrant

DELETE FROM `creature` WHERE `guid`= 94597;

DELETE FROM `game_event_creature` WHERE `guid`= 94597;

DELETE FROM `creature_addon` WHERE `guid`= 94597;