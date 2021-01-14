-- https://github.com/vmangos/core/commit/069e9166a052e1b11a6062173022e7a697532b8e
-- Add your query below.

-- Remove incorrect Gadgetzan Bruisers
DELETE FROM `creature` WHERE `guid` IN (23576,23582,23583);

-- Add Trenton Lighthammer script (ACID)
UPDATE `creature_template_addon` SET `emote` = 0 where entry IN (7804); -- 233 Doesnt hammer all the time

-- Thousand Needles
-- Tarkreu Shadowstalker should roam
UPDATE `creature` SET `MovementType` = 1, `spawndist` = 2 WHERE `id` = 4547;

-- Nagzehn waypoints
UPDATE `creature` SET `Position_X` = -5854.42, `Position_Y` = -3418.36, `Position_Z` = -50.9324, `spawndist` = 0, `MovementType` = 2 WHERE `id` = 4545;
DELETE FROM `creature_movement_template` WHERE `entry` = 4545;
INSERT INTO `creature_movement_template` (`entry`, `point`, `PositionX`, `PositionY`, `PositionZ`, `orientation`, `waittime`, `ScriptId`) VALUES
(4545, 1, -5854.42, -3418.36, -50.9324, 100, 5000, 0),
(4545, 2, -5853.9, -3410.98, -50.9325, 100, 0, 0),
(4545, 3, -5852.32, -3407.94, -50.9325, 100, 0, 0),
(4545, 4, -5849.7, -3407.4, -50.9335, 100, 5000, 0),
(4545, 5, -5843.16, -3408.65, -50.9749, 100, 0, 0),
(4545, 6, -5840.28, -3409.66, -50.9317, 100, 0, 0),
(4545, 7, -5837.72, -3410.56, -50.9328, 100, 0, 0),
(4545, 8, -5832.82, -3415.98, -50.9326, 100, 5000, 0),
(4545, 9, -5834.44, -3418.55, -50.9325, 100, 0, 0),
(4545, 10, -5839.25, -3421.45, -50.9325, 100, 0, 0),
(4545, 11, -5850.07, -3415.56, -50.9325, 100, 0, 0);

-- Gnome Pit Crewman should roam
UPDATE `creature` SET `MovementType` = 1, `spawndist` = 0.5 WHERE `guid` IN (21557, 21559, 21558, 21556, 21555, 21552, 21551, 21553, 21554);

-- Riznek waypoints
UPDATE `creature` SET `Position_X` = -6203.1, `Position_Y` = -3954.67, `Position_Z` = -58.7497, `spawndist` = 0, `MovementType` = 2 WHERE `id` = 6495;
DELETE FROM `creature_movement_template` WHERE `entry` = 6495;
INSERT INTO `creature_movement_template` (`entry`, `point`, `PositionX`, `PositionY`, `PositionZ`, `orientation`, `waittime`, `ScriptId`) VALUES
(6495, 1, -6203.1, -3954.67, -58.7497, 100, 0, 0),
(6495, 2, -6207.52, -3958.79, -58.7497, 100, 0, 0),
(6495, 3, -6209.93, -3969.56, -58.7494, 100, 0, 0),
(6495, 4, -6208.04, -3978.33, -58.7494, 100, 0, 0),
(6495, 5, -6202.85, -3991.94, -58.7498, 100, 0, 0),
(6495, 6, -6242.02, -3996.55, -58.7496, 100, 5000, 0),
(6495, 7, -6207.74, -3994.45, -58.749, 100, 0, 0),
(6495, 8, -6202.85, -3984.7, -58.75, 100, 0, 0),
(6495, 9, -6202.17, -3980.26, -58.7494, 100, 0, 0),
(6495, 10, -6207.45, -3969.33, -58.7497, 100, 0, 0),
(6495, 11, -6209.32, -3960.58, -58.7499, 100, 0, 0),
(6495, 12, -6201.02, -3952.99, -58.7501, 100, 0, 0),
(6495, 13, -6189.44, -3943.26, -58.7497, 100, 0, 0),
(6495, 14, -6185.61, -3932.48, -58.75, 100, 0, 0),
(6495, 15, -6184.11, -3920.45, -58.7698, 100, 0, 0),
(6495, 16, -6157.86, -3917.68, -58.9962, 100, 5000, 0),
(6495, 17, -6182.1, -3917.68, -58.841, 100, 0, 0),
(6495, 18, -6187.61, -3933.56, -58.7496, 100, 0, 0),
(6495, 19, -6198.61, -3950.78, -58.7495, 100, 0, 0);

-- Make Motega Firemane more blizzlike
UPDATE `creature_movement_template` SET `Orientation` = 3.04456, `ScriptId` = 1042801 WHERE `entry` = 10428 AND `point` = 4;
DELETE FROM `dbscripts_on_creature_movement` WHERE `Id` = 1042801;
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `datafloat`, `x`, `y`, `z`, `o`, `speed`, `condition_id`, `comments`) VALUES
(1042801, 1000, 0, 28, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Curator Thorius - UNIT_STAND_STATE_KNEEL'),
(1042801, 4000, 0, 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Curator Thorius - UNIT_STAND_STATE_STAND');

-- Ferales
-- Kristy Grant should roam
UPDATE `creature` SET `Position_X` = -4507.80, `Position_Y` = -766.646, `Position_Z` = -37.5925, `MovementType` = 1, `spawndist` = 7 WHERE `id` = 11826;

-- remove incorrect feathermoon sentinel
DELETE FROM `creature` WHERE `guid` IN (49982, 49980);
DELETE FROM `creature_movement` WHERE `id` = 49982;

-- Scholar Runethorn waypoints
UPDATE `creature` SET `Position_X` = -4401.73, `Position_Y` = 3275.46, `Position_Z` = 12.2038, `spawndist` = 0, `MovementType` = 2 WHERE `id` = 14374; -- -11 with 2x 10secs waittime
DELETE FROM `creature_movement_template` WHERE `entry` = 14374;
INSERT INTO `creature_movement_template` (`entry`, `point`, `PositionX`, `PositionY`, `PositionZ`, `orientation`, `waittime`, `ScriptId`) VALUES
(14374, 1, -4401.73, 3275.46, 12.2038, 100, 0, 0),
(14374, 2, -4392.77, 3275.1, 12.4724, 100, 0, 0),
(14374, 3, -4384.07, 3273.11, 13.817, 100, 0, 0),
(14374, 4, -4374.69, 3268.01, 13.5664, 100, 0, 0),
(14374, 5, -4373.24, 3258.68, 13.0097, 100, 0, 0),
(14374, 6, -4375.08, 3246.75, 12.3088, 100, 0, 0),
(14374, 7, -4376.94, 3236.67, 12.057, 100, 0, 0),
(14374, 8, -4387.48, 3231.28, 12.1682, 100, 0, 0),
(14374, 9, -4400.85, 3225.78, 11.7373, 100, 0, 0),
(14374, 10, -4416.59, 3223.66, 11.7313, 100, 0, 0),
(14374, 11, -4428.48, 3229.35, 11.9288, 100, 0, 0),
(14374, 12, -4436.66, 3233.98, 11.87, 100, 0, 0),
(14374, 13, -4436.01, 3249.37, 11.5585, 100, 0, 0),
(14374, 14, -4434.91, 3273.68, 11.6311, 100, 0, 0),
(14374, 15, -4419.94, 3283.96, 11.7403, 100, 0, 0);

-- Feathermoon Sentinel waypoints
UPDATE `creature` SET `Position_X` = -4484.77, `Position_Y` = 3263.51, `Position_Z` = 11.8672, `spawndist` = 0, `MovementType` = 2 WHERE `guid` = 49977;
DELETE FROM `creature_movement` WHERE `Id` = 49977; -- Random Movement befor
INSERT INTO `creature_movement` (`id`, `point`, `PositionX`, `PositionY`, `PositionZ`, `orientation`, `waittime`, `ScriptId`) VALUES
(49977, 1, -4484.77, 3263.51, 11.8672, 100, 0, 0),
(49977, 2, -4491.54, 3251.08, 11.1786, 100, 0, 0),
(49977, 3, -4487.44, 3258.28, 11.7369, 100, 0, 0),
(49977, 4, -4481.44, 3270.5, 11.5519, 100, 0, 0),
(49977, 5, -4475.3, 3275.44, 11.2165, 100, 0, 0),
(49977, 6, -4460.96, 3277.62, 11.4065, 100, 0, 0),
(49977, 7, -4445.63, 3277.33, 11.8279, 100, 0, 0),
(49977, 8, -4437.97, 3273.75, 11.8462, 100, 0, 0),
(49977, 9, -4435.85, 3246.48, 11.6165, 100, 0, 0),
(49977, 10, -4438.43, 3236.27, 11.6956, 100, 0, 0),
(49977, 11, -4435.08, 3255.19, 11.3852, 100, 0, 0),
(49977, 12, -4431.14, 3277.27, 11.6342, 100, 0, 0),
(49977, 13, -4419.72, 3282.96, 11.7228, 100, 0, 0),
(49977, 14, -4410.21, 3292.79, 12.2409, 100, 0, 0),
(49977, 15, -4399.34, 3304.21, 12.964, 100, 0, 0),
(49977, 16, -4392.52, 3305.27, 12.9235, 100, 0, 0),
(49977, 17, -4403.44, 3298.51, 12.9491, 100, 0, 0),
(49977, 18, -4415.57, 3287.04, 11.9261, 100, 0, 0),
(49977, 19, -4426.13, 3279.64, 11.6309, 100, 0, 0),
(49977, 20, -4442.81, 3277.66, 11.8268, 100, 0, 0),
(49977, 21, -4453.74, 3277.67, 12.0388, 100, 0, 0),
(49977, 22, -4470.41, 3277.15, 11.1634, 100, 0, 0),
(49977, 23, -4479.1, 3273.03, 11.3787, 100, 0, 0);

-- Feathermoon Sentinel waypoints
UPDATE `creature` SET `Position_X` = -4377.73, `Position_Y` = 3242.32, `Position_Z` = 12.1581, `spawndist` = 0, `MovementType` = 2 WHERE `guid` = 49969;
DELETE FROM `creature_movement` WHERE `id` = 49969; -- -28
INSERT INTO `creature_movement` (`id`, `point`, `PositionX`, `PositionY`, `PositionZ`, `orientation`, `waittime`, `ScriptId`) VALUES
(49969, 1, -4377.73, 3242.32, 12.1581, 100, 0, 0),
(49969, 2, -4379.68, 3234.61, 11.9775, 100, 0, 0),
(49969, 3, -4396.23, 3230.53, 11.84, 100, 0, 0),
(49969, 4, -4406.19, 3226.2, 11.8572, 100, 0, 0),
(49969, 5, -4418.06, 3227.21, 11.8983, 100, 0, 0),
(49969, 6, -4428.96, 3230.97, 11.9266, 100, 0, 0),
(49969, 7, -4422.32, 3225.99, 11.8119, 100, 0, 0),
(49969, 8, -4411.22, 3225.91, 11.8463, 100, 0, 0),
(49969, 9, -4400.09, 3228.23, 11.6702, 100, 0, 0),
(49969, 10, -4386.47, 3228.73, 12.2151, 100, 0, 0),
(49969, 11, -4378.19, 3238.64, 12.0579, 100, 0, 0),
(49969, 12, -4375.01, 3258.13, 13.0296, 100, 0, 0),
(49969, 13, -4373.02, 3320.02, 12.6919, 100, 0, 0),
(49969, 14, -4375.06, 3337.42, 12.2665, 100, 0, 0),
(49969, 15, -4383.08, 3335.03, 12.2671, 100, 0, 0),
(49969, 16, -4392.16, 3328.23, 12.2662, 100, 0, 0),
(49969, 17, -4397.49, 3317.19, 12.3097, 100, 0, 0),
(49969, 18, -4395.55, 3308.57, 12.6829, 100, 0, 0),
(49969, 19, -4382.97, 3305.57, 13.8162, 100, 0, 0),
(49969, 20, -4375.5, 3299.96, 13.5609, 100, 0, 0),
(49969, 21, -4374.09, 3259.01, 13.0068, 100, 0, 0);

-- Un'Goro
-- add Bloodpetal Pest infestation event - Muigin 9119
DELETE FROM `creature` WHERE `id` = 9157; -- Bloodpetal Pest
UPDATE `creature_template` SET `MovementType`=0 WHERE `entry`=9157;
UPDATE `broadcast_text` SET `ChatTypeId` = 2 WHERE `Id` IN (4967,4969);

DELETE FROM `dbscripts_on_relay` WHERE `id` IN (9006,9007); -- might also be related to quest https://tbc.wowhead.com/quest=4143/haze-of-evil / https://tbc.wowhead.com/quest=4144/bloodpetal-sprouts
INSERT INTO `dbscripts_on_relay` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `datafloat`, `x`, `y`, `z`, `o`, `speed`, `condition_id`, `comments`) VALUES
(9006, 0, 0, 31, 9157, 100000, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Muigin - Terminate Script if Bloodpetal Pest 9157 IS found alife in range'),
(9006, 0, 1, 0, 0, 0, 0, 0, 0, 0, 4966, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'I hope this works!'),
(9006, 1000, 1, 0, 0, 0, 0, 0, 0, 0, 4967, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '%s adds the haze to the Bloodpetal sprouts.'),
(9006, 1000, 1, 10, 9157, 86400000, 0, 0, 0, 8, 1, 0, 0, 0, 0, -6213.662, -1056.375, -197.906, 0, 0, 0, 'Muigin - Spawn Bloodpetal Pest 9157'),
(9006, 1000, 1, 10, 9157, 86400000, 0, 0, 0, 8, 1, 0, 0, 0, 0, -6211.25, -1057.72, -197.9, 0, 0, 0, 'Muigin - Spawn Bloodpetal Pest 9157'),
(9006, 1000, 1, 10, 9157, 86400000, 0, 0, 0, 8, 1, 0, 0, 0, 0, -6210.807, -1053.875, -197.906, 0, 0, 0, 'Muigin - Spawn Bloodpetal Pest 9157'),
(9006, 1000, 1, 10, 9157, 86400000, 0, 0, 0, 8, 1, 0, 0, 0, 0, -6213.333, -1059.195, -197.906, 0, 0, 0, 'Muigin - Spawn Bloodpetal Pest 9157'),
(9006, 1000, 1, 10, 9157, 86400000, 0, 0, 0, 8, 1, 0, 0, 0, 0, -6210.617, -1059.143, -197.906, 0, 0, 0, 'Muigin - Spawn Bloodpetal Pest 9157'),
(9006, 4000, 1, 0, 0, 0, 0, 0, 0, 0, 4968, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Look at them go!'),
(9006, 6000, 1, 0, 0, 0, 0, 0, 0, 0, 4969, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '%s laughs as he watches the pests run off.'),

(9007, 3000, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -6190.68, -1099.47, -215.189, 0, 0, 0, 'Bloodpetal Pest - Move'),
(9007, 9000, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -6202.63, -1114.64, -220.1, 0, 0, 0, 'Bloodpetal Pest - Move'),
(9007, 12000, 0, 20, 1, 20, 0, 0, 0, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Bloodpetal Pest - MovementType 1 and Spawndist 20');

-- Silithus
-- Glibb should roam and set correct scale
UPDATE `creature` SET `Position_X` = -8015.66, `Position_Y` = 1106.42, `Position_Z` = 3.0554, `MovementType` = 1, `spawndist` = 4 WHERE `id` = 15172;

-- End of migration.

