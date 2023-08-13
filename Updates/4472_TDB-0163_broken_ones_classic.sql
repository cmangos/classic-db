-- Respawn Fallow Sancturary
-- Faction 51

-- 755	Lost One Mudlurker
-- https://www.wowhead.com/tbc/npc=755/lost-one-mudlurker
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|1048576, `CallForHelp` = 5 WHERE `entry` = 755;

-- 757	Lost One Fisherman
-- https://www.wowhead.com/tbc/npc=757/lost-one-fisherman
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|1048576, `CallForHelp` = 5 WHERE `entry` = 757;

-- 759	Lost One Hunter
-- https://www.wowhead.com/tbc/npc=759/lost-one-hunter
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|1048576, `CallForHelp` = 5 WHERE `entry` = 759;

-- 760	Lost One Muckdweller
-- https://www.wowhead.com/tbc/npc=760/lost-one-muckdweller
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|1048576, `CallForHelp` = 5 WHERE `entry` = 760;

-- 761	Lost One Seer
-- https://www.wowhead.com/tbc/npc=761/lost-one-seer
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|1048576, `CallForHelp` = 5 WHERE `entry` = 761;

-- 762	Lost One Riftseeker
-- https://www.wowhead.com/tbc/npc=762/lost-one-riftseeker
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|1048576, `CallForHelp` = 5 WHERE `entry` = 762;

-- 763	Lost One Chieftain
-- https://www.wowhead.com/tbc/npc=763/lost-one-chieftain
UPDATE `creature_template` SET `CallForHelp` = 5 WHERE `entry` = 763;

-- 1106	Lost One Cook
-- https://www.wowhead.com/tbc/npc=1106/lost-one-cook
UPDATE `creature_template` SET `CallForHelp` = 5 WHERE `entry` = 1106;

-- 1799	Lost Wraith
UPDATE `creature_template` SET `Faction` = 16 WHERE `entry` = 1799; -- Wraith, not lost one, unused template.

-- 5477	Noboru the Cudgel
-- https://www.wowhead.com/tbc/npc=5477/noboru-the-cudgel
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|1048576, `CallForHelp` = 5 WHERE `entry` = 5477;

-- 5622	Ongeku
-- https://www.wowhead.com/tbc/npc=5622/ongeku
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|1048576, `CallForHelp` = 5 WHERE `entry` = 5622;

-- 5979	Wretched Lost One
-- https://www.wowhead.com/tbc/npc=5979/wretched-lost-one
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|1048576, `CallForHelp` = 5 WHERE `entry` = 5979;

-- 5980	Broken One - unused

-- 5981	Portal Seeker - Blasted Lands
-- https://www.wowhead.com/tbc/npc=5981/portal-seeker
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|1048576 WHERE `entry` = 5981;

-- 6913	Lost One Rift Traveler
-- https://www.wowhead.com/tbc/npc=6913/lost-one-rift-traveler
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|1048576, `CallForHelp` = 5 WHERE `entry` = 6913;

-- 8298	Akubar the Seer - Blasted Lands
-- https://www.wowhead.com/tbc/npc=8298/akubar-the-seer
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|1048576 WHERE `entry` = 8298;

-- 17115	Cursed Lost One
-- https://www.wowhead.com/tbc/npc=17115/cursed-lost-one
-- UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|1048576, `CallForHelp` = 5 WHERE `entry` = 17115;

DELETE FROM `creature` WHERE `guid` BETWEEN 191617 AND 191698;
DELETE FROM `creature` WHERE `id` IN (755,757,759,760,761,762,763,1106,5477,5622,17115);
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
(191617, 755, 0, 1, -10178.29, -3255.72, 22.6023, 0, 300, 300, 10, 1),
(191618, 755, 0, 1, -10156.00, -3454.45, 17.4991, 0, 300, 300, 10, 1),
(191619, 755, 0, 1, -10142.09, -3224.43, 23.4018, 0, 300, 300, 10, 1),
(191620, 755, 0, 1, -10140.90, -3392.76, 18.4874, 0, 300, 300, 10, 1),
(191621, 755, 0, 1, -10119.40, -3409.05, 22.1303, 0, 300, 300, 10, 1),
(191622, 755, 0, 1, -10112.59, -3356.29, 17.7280, 0, 300, 300, 10, 1),
(191623, 755, 0, 1, -10108.20, -3275.87, 21.3256, 0, 300, 300, 10, 1),
(191624, 755, 0, 1, -10057.29, -3413.77, 20.1567, 0, 300, 300, 10, 1),
(191625, 755, 0, 1, -10056.40, -3277.44, 24.3817, 0, 300, 300, 10, 1),
(191626, 755, 0, 1, -10055.29, -3355.95, 22.8654, 0, 300, 300, 10, 1),

(191627, 757, 0, 1, -10210.2, -3217.5, 20.7978, 4.34587, 300, 300, 0, 0),
(191628, 757, 0, 1, -10115.2, -3383.27, 20.9991, 2.14675, 300, 300, 0, 0),
(191629, 757, 0, 1, -10100.1, -3232.95, 20.6241, 2.11185, 300, 300, 0, 0),
(191630, 757, 0, 1, -10090.8, -3520.74, 21.7168, 4.2586, 300, 300, 0, 0),
(191631, 757, 0, 1, -10089.5, -3455.38, 21.001, 3.97935, 300, 300, 0, 0),
(191632, 757, 0, 1, -10086.3, -3339.07, 20.4792, 2.9147, 300, 300, 0, 0),
(191633, 757, 0, 1, -10079.1, -3480.19, 24.5784, 2.33874, 300, 300, 0, 0),
(191634, 757, 0, 1, -10051.9, -3597.99, 19.6241, 2.42601, 300, 300, 0, 0),
(191635, 757, 0, 1, -10038.8, -3524.65, 21.8171, 3.76991, 300, 300, 0, 0),

(191636, 759, 0, 1, -10083.79, -3484.00, 23.2852, 0, 300, 300, 1, 1),
(191637, 759, 0, 1, -10066.2, -3502.27, 23.0046, 1.29154, 300, 300, 0, 0),
(191638, 759, 0, 1, -10030.1, -3555.21, 21.9441, 0, 300, 300, 10, 1),
(191639, 759, 0, 1, -10006.6, -3525.95, 22.0405, 0, 300, 300, 1, 1),
(191640, 759, 0, 1, -10015.00, -3487.94, 22.2940, 0, 300, 300, 10, 1),
(191641, 759, 0, 1, -9999.16, -3548.51, 22.9278, 0, 300, 300, 1, 1),
(191642, 759, 0, 1, -9997.78, -3536.58, 22.5528, 0, 300, 300, 1, 1),
(191643, 759, 0, 1, -9988.96, -3659.25, 21.9278, 0, 300, 300, 1, 1),
(191644, 759, 0, 1, -9987.35, -3544.69, 21.8028, 0, 300, 300, 1, 1),
(191645, 759, 0, 1, -9980.7, -3644.95, 21.8028, 0, 300, 300, 1, 1),
(191646, 759, 0, 1, -9972.89, -3708.02, 23.4221, 0, 300, 300, 1, 1),
(191647, 759, 0, 1, -9967.50, -3640.65, 22.7640, 0, 300, 300, 1, 1),
(191648, 759, 0, 1, -9952.90, -3729.48, 23.2377, 0, 300, 300, 1, 1),
(191649, 759, 0, 1, -9948.55, -3711.25, 22.1399, 0, 300, 300, 1, 1),

(191650, 760, 0, 1, -10110.09, -3524.04, 17.9512, 0, 300, 300, 10, 1),
(191651, 760, 0, 1, -10069.90, -3549.61, 17.4991, 0, 300, 300, 10, 1),
(191652, 760, 0, 1, -10054.40, -3569.36, 18.8810, 0, 300, 300, 10, 1),
(191653, 760, 0, 1, -10055.8, -3619.1, 20.7491, 0, 300, 300, 10, 1),
(191654, 760, 0, 1, -10026.79, -3657.85, 18.6145, 0, 300, 300, 10, 1),
(191655, 760, 0, 1, -10021, -3706, 17.4991, 0, 300, 300, 10, 1),
(191656, 760, 0, 1, -10023.29, -3624.09, 22.06909, 0, 300, 300, 10, 1),
(191657, 760, 0, 1, -9989.83, -3580.58, 21.8207, 0, 300, 300, 10, 1),
(191658, 760, 0, 1, -9945.74, -3685.83, 22.3433, 0, 300, 300, 10, 1),
(191659, 760, 0, 1, -9941.95, -3769.65, 19.6791, 0, 300, 300, 10, 1),
(191660, 760, 0, 1, -9917.75, -3650.7, 22.0407, 0, 300, 300, 10, 1),
(191661, 760, 0, 1, -9892.73, -3689.21, 22.9932, 0, 300, 300, 10, 1),
(191662, 760, 0, 1, -9885.21, -3749.62, 20.9489, 0, 300, 300, 10, 1),

(191663, 761, 0, 1, -9959.849609, -3608.060059, 21.761200, 4.136430, 300, 300, 0, 0), -- both
(191664, 761, 0, 1, -9962.230469, -3600.489990, 22.736000, 2.967060, 300, 300, 0, 0), -- both
(191665, 761, 0, 1, -9963.87, -3608.49, 21.7612, 2.79253, 300, 300, 0, 0),
(191666, 761, 0, 1, -9932.96, -3715.22, 22.8054, 2.54818, 300, 300, 0, 0),
(191667, 762, 0, 1, -9985.65, -3620.8, 22.9415, 2.98451, 300, 300, 0, 0),
(191668, 762, 0, 1, -9967.13, -3694.96, 21.7947, 3.90954, 300, 300, 0, 0),
(191669, 762, 0, 1, -9940.43, -3642.89, 23.9278, 2.23402, 300, 300, 0, 0),
(191670, 762, 0, 1, -9975.01, -3692.71, 22.1706, 1.32645, 300, 300, 0, 0),
(191671, 762, 0, 1, -9959.129883, -3704.580078, 22.294800, 2.617990, 300, 300, 0, 0),
-- 1122	1	Lost One Chieftain (763)
-- 763	1122	0	Lost One Chieftain (763)
(191672, 763, 0, 1, -9944.46, -3644.22, 23.6126, 2.42601, 37800, 57600, 0, 0),
(191673, 763, 0, 1, -9971.45, -3611.57, 21.6782, 2.16808, 37800, 57600, 10, 1),
(191674, 763, 0, 1, -9969.25, -3635.68, 22.8874, 5.48089, 37800, 57600, 10, 1),
(191675, 763, 0, 1, -9939.66, -3686.67, 21.7823, 2.06598, 37800, 57600, 10, 1),
(191676, 763, 0, 1, -9931.38, -3600.45, 23.1036, 3.09564, 37800, 57600, 10, 1),

-- 1124	1	Lost One Cook (1106)
-- 1106	1124	0	Lost One Cook (1106)
(191677, 1106, 0, 1, -9992.1, -3620.46, 22.9665, 6.16105, 18000, 28800, 0, 0),
(191678, 1106, 0, 1, -9977.24, -3656.42, 21.6787, 0.85411, 18000, 28800, 0, 0),
(191679, 1106, 0, 1, -9969.53, -3690.45, 21.6787, 1.68271, 18000, 28800, 0, 0),
(191680, 1106, 0, 1, -9969.5, -3719.2, 22.0471, 3.63029, 18000, 28800, 0, 0),
(191681, 1106, 0, 1, -9955, -3641, 21.8372, 0.849401, 18000, 28800, 0, 0),
(191682, 1106, 0, 1, -9940.43, -3654.01, 23.1482, 2.8129, 18000, 28800, 0, 0),

(191683, 5477, 0, 1, -10146.4, -3500.44, 23.0852, 3.32807, 300, 300, 0, 2), -- SPAWN_GROUP_FORMATION_TYPE_FANNED_OUT_BEHIND
(191684, 760, 0, 1, -10146.4, -3505, 23.0241, 2.31631, 300, 300, 0, 0),
(191685, 760, 0, 1, -10141.8, -3501.78, 23.0618, 3.31116, 300, 300, 0, 0),

(191686, 5622, 0, 1, -9956.73, -3715.53, 21.8028, 0, 300, 300, 1, 1), -- spawn GROUP
(191687, 5622, 0, 1, -9970.54, -3657.42, 22.5067, 0, 300, 300, 1, 1), -- spawn GROUP
(191688, 5622, 0, 1, -9952.54, -3630.95, 21.8027, 0, 300, 300, 1, 1), -- spawn GROUP
(191689, 5622, 0, 1, -9913.25, -3716.25, 22.177, 0, 300, 300, 1, 1); -- spawn GROUP
-- tbc+
-- (191690, 17115, 0, 1, -10065.9, -3519.39, 22.3573, 0, 300, 300, 5, 1),
-- (191691, 17115, 0, 1, -10015.3, -3594.82, 22.7614, 0, 300, 300, 5, 1),
-- (191692, 17115, 0, 1, -10007.7, -3665.62, 23.1004, 0, 300, 300, 5, 1),
-- (191693, 17115, 0, 1, -9982.80, -3733.84, 22.8785, 0, 300, 300, 5, 1),
-- (191694, 17115, 0, 1, -9942.39, -3586.22, 22.7243, 0, 300, 300, 0, 2), -- legit movement
-- (191695, 17115, 0, 1, -9931.62, -3667.48, 22.1778, 0, 300, 300, 5, 1),
-- (191696, 17115, 0, 1, -9911.41, -3713.06, 21.8703, 0, 300, 300, 5, 1),
-- (191697, 17115, 0, 1, -9859.74, -3719.81, 22.2838, 0, 300, 300, 5, 1),
-- (191698, 17115, 0, 1, -9999.46, -3633.47, 21.7569, 0, 300, 300, 5, 1);

DELETE FROM `creature_movement` WHERE `id` IN (38909,191694);
-- INSERT INTO `creature_movement` (`Id`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`, `Comment`) VALUES
-- (191694, 1, -9934.69, -3629.63, 21.717, 100, 0, 0, NULL),
-- (191694, 2, -9942.19, -3586.03, 22.6941, 100, 0, 0, NULL),
-- (191694, 3, -9973.63, -3566.41, 21.8488, 100, 0, 0, NULL),
-- (191694, 4, -9987.07, -3538.73, 21.678, 100, 0, 0, NULL),
-- (191694, 5, -10007.4, -3514.63, 21.7355, 100, 0, 0, NULL),
-- (191694, 6, -10006, -3496.35, 21.9784, 100, 0, 0, NULL),
-- (191694, 7, -10007.4, -3514.63, 21.7355, 100, 0, 0, NULL),
-- (191694, 8, -9987.07, -3538.73, 21.678, 100, 0, 0, NULL),
-- (191694, 9, -9973.63, -3566.41, 21.8488, 100, 0, 0, NULL),
-- (191694, 10, -9942.19, -3586.03, 22.6941, 100, 0, 0, NULL),
-- (191694, 11, -9934.69, -3629.63, 21.717, 100, 0, 0, NULL),
-- (191694, 12, -9913.24, -3645.72, 21.7146, 100, 0, 0, NULL),
-- (191694, 13, -9934.69, -3629.63, 21.717, 100, 0, 0, NULL);

DELETE FROM `pool_template` WHERE `entry` = 1123 AND `description` LIKE '%Ongeku%';
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (1123, 1, 'Ongeku (5622)');
DELETE FROM `pool_creature_template` WHERE `pool_entry` = 1123 AND `description` LIKE '%Ongeku%';
INSERT INTO `pool_creature_template` (`id`, `pool_entry`, `chance`, `description`) VALUES (5622, 1123, 0, 'Ongeku (5622)');

REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 761 FROM `creature` WHERE `guid` BETWEEN 191663 AND 191671; -- Lost One Seer
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 762 FROM `creature` WHERE `guid` BETWEEN 191663 AND 191671; -- Lost One Riftseeker
UPDATE `creature` SET `id` = 0 WHERE `guid` BETWEEN 191663 AND 191671;

UPDATE creature SET spawndist = 0, MovementType = 0 WHERE guid IN (191683,191684,191685);
DELETE FROM creature_movement WHERE id IN (43588,191683,191684,191685);
DELETE FROM `creature_movement_template` WHERE `entry` = 5477;
DELETE FROM `creature_movement` where `id` IN (43588);
DELETE FROM `creature_linking` where `master_guid` IN (43588);
DELETE FROM `spawn_group` WHERE `Id` = 19001;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(19001, 'Swamp of Sorrows - Noboru the Cudgel (3) Patrol', 0, 0, 0, 0);

DELETE FROM `spawn_group_spawn` WHERE `Id` = 19001;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(19001, 191683, 0),
(19001, 191684, 1),
(19001, 191685, 2);

DELETE FROM `spawn_group_formation` WHERE `Id` = 19001;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(19001, 4, 3, 0, 19001, 2, 'Swamp of Sorrows - Noboru the Cudgel (3) Patrol');

DELETE FROM `waypoint_path_name` WHERE `PathId` = 19001;
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(19001,'Swamp of Sorrows - Noboru the Cudgel (3) Patrol');

DELETE FROM `waypoint_path` WHERE `PathId` = 19001;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(19001, 1, -10199.3, -3489.02, 22.8962, 100, 0, 0),
(19001, 2, -10209, -3470.28, 23.3629, 100, 0, 0),
(19001, 3, -10218.2, -3447.07, 22.5072, 100, 0, 0),
(19001, 4, -10217.2, -3422.07, 20.8741, 100, 0, 0),
(19001, 5, -10212, -3382.25, 23.2532, 100, 0, 0),
(19001, 6, -10210.8, -3339.04, 24.305, 100, 0, 0),
(19001, 7, -10208.2, -3308.25, 22.0216, 100, 0, 0),
(19001, 8, -10212.2, -3288.99, 20.0313, 100, 0, 0),
(19001, 9, -10179, -3269.54, 22.2975, 100, 0, 0),
(19001, 10, -10151.5, -3240.29, 20.4441, 100, 0, 0),
(19001, 11, -10135.2, -3221.29, 22.1103, 100, 0, 0),
(19001, 12, -10111.2, -3191.96, 20.9952, 100, 0, 0),
(19001, 13, -10116.9, -3159.72, 23.3619, 100, 0, 0),
(19001, 14, -10152.5, -3146.05, 20.6287, 100, 0, 0),
(19001, 15, -10168.9, -3113.72, 22.3261, 100, 0, 0),
(19001, 16, -10202.7, -3103.91, 24.0405, 100, 0, 0),
(19001, 17, -10240.6, -3097.67, 21.9894, 100, 0, 0),
(19001, 18, -10282.7, -3092.74, 23.1742, 100, 0, 0),
(19001, 19, -10309.5, -3074.63, 23.089, 100, 0, 0),
(19001, 20, -10332, -3065.28, 23.2697, 100, 0, 0),
(19001, 21, -10319.3, -3044.58, 22.3082, 100, 0, 0),
(19001, 22, -10300.3, -3007.03, 21.1229, 100, 0, 0),
(19001, 23, -10294.1, -2991.93, 22.4369, 100, 0, 0),
(19001, 24, -10272.6, -2989.19, 22.0135, 100, 0, 0),
(19001, 25, -10239.6, -2988.48, 22.004, 100, 0, 0),
(19001, 26, -10219.9, -2974.81, 19.835, 100, 0, 0),
(19001, 27, -10189.1, -2962.12, 22.0984, 100, 0, 0),
(19001, 28, -10178.9, -2963.05, 23.438, 100, 0, 0),
(19001, 29, -10189.1, -2962.12, 22.0984, 100, 0, 0),
(19001, 30, -10219.9, -2974.81, 19.835, 100, 0, 0),
(19001, 31, -10239.5, -2988.48, 22.0182, 100, 0, 0),
(19001, 32, -10272.6, -2989.19, 22.0135, 100, 0, 0),
(19001, 33, -10294.1, -2991.93, 22.4369, 100, 0, 0),
(19001, 34, -10300.3, -3007.03, 21.1229, 100, 0, 0),
(19001, 35, -10319.3, -3044.58, 22.3082, 100, 0, 0),
(19001, 36, -10332, -3065.28, 23.2697, 100, 0, 0),
(19001, 37, -10309.5, -3074.63, 23.089, 100, 0, 0),
(19001, 38, -10282.7, -3092.74, 23.1742, 100, 0, 0),
(19001, 39, -10240.6, -3097.67, 21.9894, 100, 0, 0),
(19001, 40, -10202.7, -3103.91, 24.0405, 100, 0, 0),
(19001, 41, -10168.9, -3113.72, 22.3261, 100, 0, 0),
(19001, 42, -10152.5, -3146.05, 20.6287, 100, 0, 0),
(19001, 43, -10116.9, -3159.72, 23.3619, 100, 0, 0),
(19001, 44, -10111.2, -3191.96, 20.9952, 100, 0, 0),
(19001, 45, -10135.2, -3221.29, 22.1103, 100, 0, 0),
(19001, 46, -10151.5, -3240.29, 20.4441, 100, 0, 0),
(19001, 47, -10179, -3269.54, 22.2975, 100, 0, 0),
(19001, 48, -10212.2, -3288.99, 20.0313, 100, 0, 0),
(19001, 49, -10208.2, -3308.25, 22.0216, 100, 0, 0),
(19001, 50, -10210.8, -3339.04, 24.305, 100, 0, 0),
(19001, 51, -10212, -3382.25, 23.2532, 100, 0, 0),
(19001, 52, -10217.2, -3422.07, 20.7496, 100, 0, 0),
(19001, 53, -10218.3, -3447.07, 22.4278, 100, 0, 0),
(19001, 54, -10209, -3470.28, 23.3629, 100, 0, 0),
(19001, 55, -10199.3, -3489.02, 22.8962, 100, 0, 0),
(19001, 56, -10174.8, -3505.8, 23.7408, 100, 0, 0);

-- https://www.wowhead.com/tbc/npc=6653/huge-toad
-- https://www.wowhead.com/tbc/npc=4953/moccasin - wotlk misses guid 34145 which is used as tbc guid.
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 4953 FROM `creature` WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id` = 4953 AND `map` = 0);
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 4953 FROM `creature` WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id` = 6653 AND `map` = 0);
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 6653 FROM `creature` WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id` = 4953 AND `map` = 0);
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 6653 FROM `creature` WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id` = 6653 AND `map` = 0);
UPDATE `creature` SET `spawndist` = 10, `id` = 0 WHERE `id` IN (4953,6653);

DELETE FROM `gameobject` WHERE `guid` = 300350 AND `id` = 2857;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`) VALUES
(300350, 2857, 0, -10002, -3529.93, 22.3611, 2.72271, 0, 0, 0.978148, 0.207912, 300, 900);

DELETE FROM `pool_gameobject` WHERE `guid` = 300350 AND `pool_entry` = 31022; -- 31022	1	Swamp of Sorrows (Fallow Sanctuary) - Chest Pool
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `description`) VALUES
(300350, 31022, 'Swamp of Sorrows (Fallow Sanctuary) - Solid Chest (2857)');

UPDATE `gameobject` SET `spawntimesecsmin` = 240, `spawntimesecsmax` = 480 WHERE `id` = 22550; -- down from 600, req for rep farming.

-- https://www.wowhead.com/tbc/object=28604/scattered-crate#comments
DELETE FROM `gameobject` WHERE `id` = 28604 AND `guid` BETWEEN 191834 AND 191849;
DELETE FROM `gameobject` WHERE `id` = 28604; -- 30599,30811,30995,31008
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`) VALUES
(191834, 28604, 0, -10387.1, -2904.32, 18.8122, 2.91469, 0, 0, 0.993571, 0.113208, 240, 480), -- 600 600
(191835, 28604, 0, -10324.5, -2994.49, 19.7961, 2.07694, 0, 0, 0.861629, 0.507539, 240, 480),
(191836, 28604, 0, -10206.7, -2908.95, 19.1175, 5.81195, 0, 0, -0.233445, 0.97237, 240, 480),
(191837, 28604, 0, -10205.3, -2548.35, 26.1993, 0.209439, 0, 0, 0.104528, 0.994522, 240, 480),
(191838, 28604, 0, -10173.8, -3073.73, 20.2023, 3.194, 0, 0, -0.999657, 0.0262016, 240, 480),
(191839, 28604, 0, -10164.9, -3273.83, 18.932, 5.79449, 0, 0, -0.241921, 0.970296, 240, 480),
(191840, 28604, 0, -10147.4, -2516.78, 25.9716, 1.90241, 0, 0, 0.814116, 0.580703, 240, 480),
(191841, 28604, 0, -10129.4, -3215.96, 19.9824, 2.93214, 0, 0, 0.994521, 0.104536, 240, 480),
(191842, 28604, 0, -10098, -2334.39, 27.6958, 3.01941, 0, 0, 0.998135, 0.0610518, 240, 480),
(191843, 28604, 0, -10088.6, -3470.51, 18.838, 2.67035, 0, 0, 0.972369, 0.233448, 240, 480),
(191844, 28604, 0, -10077.2, -2446.37, 26.8379, 2.11185, 0, 0, 0.870356, 0.492424, 240, 480),
(191845, 28604, 0, -9998.53, -3528.52, 22.0725, 1.36136, 0, 0, 0.62932, 0.777146, 240, 480),
(191846, 28604, 0, -9977.94, -3693.06, 22.3174, 6.03884, 0, 0, -0.121869, 0.992546, 240, 480),
(191847, 28604, 0, -9964.91, -3651.28, 21.6919, 2.16421, 0, 0, 0.882947, 0.469473, 240, 480),
(191848, 28604, 0, -9952.99, -3599.49, 22.7174, 2.9845, 0, 0, 0.996917, 0.0784664, 240, 480),
(191849, 28604, 0, -9933.41, -3711.39, 23.1958, 5.46288, 0, 0, -0.398748, 0.91706, 240, 480);

-- https://www.wowhead.com/tbc/npc=14356/sawfin-frenzy
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|1048576 WHERE `entry` = 14356;
DELETE FROM `creature` WHERE `id` = 14356; -- reused
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
(41771, 14356, 0, 1, -10553.70, -3896.77, -5.2610, 0, 300, 300, 20, 1),
(41797, 14356, 0, 1, -10540.70, -3805.86, -0.6491, 0, 300, 300, 20, 1),
(41704, 14356, 0, 1, -10510.40, -3745.33, -1.7502, 0, 300, 300, 20, 1),
(41798, 14356, 0, 1, -10473.40, -3926.25, -1.0376, 0, 300, 300, 20, 1),
(38793, 14356, 0, 1, -10405.59, -3738.31, -1.4557, 0, 300, 300, 20, 1),
(38796, 14356, 0, 1, -10429.79, -3924.42, 0.0441, 0, 300, 300, 20, 1),
(41800, 14356, 0, 1, -10342.29, -3892.10, 2.072, 0, 300, 300, 20, 1),
(40237, 14356, 0, 1, -10317.59, -3808.75, 3.4776, 0, 300, 300, 20, 1);

-- built nonexisting loot template for Box of Supplies 6827
-- https://www.wowhead.com/tbc/item=6827/box-of-supplies#contains
-- https://web.archive.org/web/20090830115223/http://wow.allakhazam.com/db/item.html?witem=6827#Contains_Items
DELETE FROM `item_loot_template` WHERE `entry` = 6827;
INSERT INTO `item_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(6827, 1477, 15, 1, 1, 1, 0),
(6827, 2289, 15, 1, 1, 1, 0),
(6827, 1711, 10, 1, 1, 1, 0),
(6827, 2290, 10, 1, 1, 1, 0),
(6827, 4421, 5, 1, 1, 1, 0),
(6827, 4424, 5, 1, 1, 1, 0),

(6827, 1710, 10, 1, 2, 3, 0),
(6827, 3827, 10, 1, 2, 3, 0),
(6827, 3385, 5, 1, 2, 4, 0),
(6827, 929, 5, 1, 2, 4, 0),

(6827, 3358, 0, 1, 2, 4, 0),
(6827, 2453, 0, 1, 3, 5, 0),
(6827, 3818, 0, 1, 2, 4, 0),
(6827, 3356, 0, 1, 3, 5, 0),
(6827, 3357, 0, 1, 2, 4, 0),
(6827, 3355, 0, 1, 2, 4, 0),

(6827, 60444, 0.1, 0, -60444, 1, 0),
(6827, 60158, 1, 0, -60158, 1, 0),
(6827, 60234, 0.1, 0, -60234, 1, 0);

