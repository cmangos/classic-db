-- Respawn Dustwallow Marsh Rare Mobs using CCSDB, VMangos, TrinityCore
DELETE FROM `creature_addon` WHERE `guid` = 31612; -- Creature (GUID: 31612) does not exist but has a record in `creature_addon` c.14230 (b2_1_flags 0/16, doesnt matter)
DELETE FROM `creature` WHERE `id` BETWEEN 14230 AND 14237;
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
-- Burgle Eye 14230
(191433, 14230, 1, -2357.19, -4077.67, 6.78764, 1.16663, 18000, 28800, 10, 1), -- WPs?
(191434, 14230, 1, -2703.59, -4255.08, 7.4448, 5.11574, 18000, 28800, 10, 1),
(191435, 14230, 1, -2587.64, -4014.07, 7.02476, 2.52975, 18000, 28800, 10, 1),
(191436, 14230, 1, -2979.75, -4331.81, 10.9415, 0.964388, 18000, 28800, 10, 1),
-- Drogoth the Roamer 14231
(191437, 14231, 1, -2703.8, -3123.47, 38.1372, 2.73824, 18000, 28800, 10, 1), -- WPs
(191438, 14231, 1, -2700.64, -3052.18, 38.183, 2.62899, 18000, 28800, 10, 1),
(191439, 14231, 1, -2608.36, -3011.72, 29.4168, 0.0195422, 18000, 28800, 10, 1),
(191440, 14231, 1, -2769.55, -3040.72, 34.8546, 1.80725, 18000, 28800, 10, 1),
(191441, 14231, 1, -2750.74, -3075.69, 29.9532, 2.21352, 18000, 28800, 10, 1),
(191442, 14231, 1, -2740.71, -3018.02, 37.1624, 2.27421, 18000, 28800, 10, 1),
(191443, 14231, 1, -2740.71, -3018.02, 37.1624, 2.27421, 18000, 28800, 10, 1),
(191444, 14231, 1, -2639.03, -3026.1, 27.8827, 2.20688, 18000, 28800, 10, 1),
(191445, 14231, 1, -2800.88, -3121.34, 28.9155, 2.29019, 18000, 28800, 10, 1),
(191446, 14231, 1, -2608.36, -3011.72, 29.4168, 0.0195422, 18000, 28800, 10, 1),
-- Dart 14232
(191447, 14232, 1, -2600.31, -3454.6, 33.139, 2.46374, 18000, 28800, 10, 1), -- WPs
(191448, 14232, 1, -2709.5, -3530.38, 34.4606, 5.1551, 18000, 28800, 10, 1),
(191449, 14232, 1, -2660.32, -3491.51, 33.5401, 2.60921, 18000, 28800, 10, 1),
(191450, 14232, 1, -2592.01, -3498.18, 33.5195, 3.04692, 18000, 28800, 10, 1),
(191451, 14232, 1, -2714.64, -3489.85, 34.85, 4.46, 18000, 28800, 10, 1),
-- Ripscale 14233
(191452, 14233, 1, -3969.57, -3182.07, 28.8974, 3.08685, 37800, 57600, 10, 1), -- WPs
(191453, 14233, 1, -4040.93, -3557.63, 28.5225, 5.65789, 37800, 57600, 10, 1),
(191454, 14233, 1, -3795.77, -2958.63, 28.6474, 5.12267, 37800, 57600, 10, 1),
(191455, 14233, 1, -3779.78, -3273.46, 28.6474, 0.340187, 37800, 57600, 10, 1),
(191456, 14233, 1, -4453.28, -3973.02, 29.4314, 2.39624, 37800, 57600, 10, 1), -- TDB
-- Hayoc 14234
(191457, 14234, 1, -4376.98, -3878.91, 48.3463, 3.21946, 43200, 86400, 5, 1), -- WPs
(191458, 14234, 1, -4219.99, -3708.12, 59.9719, 2.94094, 43200, 86400, 5, 1),
-- The Rot 14235
(191459, 14235, 1, -4100.05, -3683.57, 44.854, 2.56508, 75600, 115200, 5, 1), -- WPs
(191460, 14235, 1, -3926.89, -3745.08, 37.6384, 6.21675, 75600, 115200, 5, 1),
(191461, 14235, 1, -3814.24, -3650.64, 37.9552, 3.72094, 75600, 115200, 5, 1),
(191462, 14235, 1, -3985.36, -3723.25, 41.8631, 4.24192, 75600, 115200, 5, 1),
(191463, 14235, 1, -4042.09, -3753.6, 43.2492, 6.26622, 75600, 115200, 5, 1),
-- Lord Angler 14236
(191464, 14236, 1, -4183.3, -3912.85, -8.54785, 1.52582, 75600, 115200, 7, 1), -- WP
(191465, 14236, 1, -4201.15, -3973.48, -13.3196, 5.33559, 75600, 115200, 7, 1),
(191466, 14236, 1, -4282.74, -3923.41, -5.72519, 4.98676, 75600, 115200, 7, 1),
(191467, 14236, 1, -4190, -4011, -9, 4.337, 75600, 115200, 7, 1),
(191468, 14236, 1, -4250.64, -3849.09, -6.71606, 5.12114, 75600, 115200, 7, 1),
-- Oozeworm 14237
(191469, 14237, 1, -4207.99, -2911.04, 44.9497, 2.051, 172800, 259200, 10, 1), -- WP?
(191470, 14237, 1, -4240.73, -2866.63, 37.1291, 5.23007, 172800, 259200, 10, 1),
(191471, 14237, 1, -4240.14, -3028.64, 44.0589, 4.23654, 172800, 259200, 10, 1),
(191472, 14237, 1, -4513.47, -2809.81, 34.1713, 1.66829, 172800, 259200, 10, 1),
(191473, 14237, 1, -4408.82, -2861.63, 28.7375, 2.12787, 172800, 259200, 10, 1);

DELETE FROM `pool_template` WHERE `entry` IN (SELECT `pool_entry` FROM `pool_creature_template` WHERE `Id` BETWEEN 14230 AND 14237); -- 1019,1206
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES
(1221, 1, 'Burgle Eye (14230)'),
(1222, 1, 'Drogoth the Roamer (14231)'),
(1223, 1, 'Dart (14232)'),
(1224, 1, 'Ripscale (14233)'),
(1225, 1, 'Hayoc (14234)'),
(1226, 1, 'The Rot (14235)'),
(1227, 1, 'Lord Angler (14236)'),
(1228, 1, 'Oozeworm (14237)');

DELETE FROM `pool_creature_template` WHERE `Id` BETWEEN 14230 AND 14237;
INSERT INTO `pool_creature_template` (`id`, `pool_entry`, `chance`, `description`) VALUES
(14230, 1221, 0, 'Burgle Eye (14230)'),
(14231, 1222, 0, 'Drogoth the Roamer (14231)'),
(14232, 1223, 0, 'Dart (14232)'),
(14233, 1224, 0, 'Ripscale (14233)'),
(14234, 1225, 0, 'Hayoc (14234)'),
(14235, 1226, 0, 'The Rot (14235)'),
(14236, 1227, 0, 'Lord Angler (14236)'),
(14237, 1228, 0, 'Oozeworm (14237)');

-- SELECT * FROM creature_template where meleebaseattacktime IN (15,16,41,76,120,174,239,316,406,512,538,573,608,642,677,713,748,782,817,852,888,922,957,992,1026,1061,1097,1130,1165,1200,1234,1270,1304,1340,1373,1480,1593,1709,1834,1964,2101,2246,2397,2557,2725,2780,2835,2888,2944,2999,3052,3108,3163,3216,3271,3327,3380,3435,3489,3791,4091,4391,4691,4991,5291,5591,5892,6192,6492,6792,7089,7387,7684,7981,8278,15,21,37,67,105,150,205,268,342,426,450,479,507,537,566,596,625,652,683,712,740,770,800,829,858,887,916,946,975,1004,1033,1063,1091,1121,1149,1234,1325,1418,1517,1619,1727,1841,1958,2082,2211,2255,2300,2344,2389,2432,2477,2522,2566,2610,2654,2699,2744,2788,2832,3075,3316,3555,3795,4036,4275,4515,4755,4995,5235,5474,5714,5954,6194,6434,6674,5,16,20,40,65,96,132,172,219,270,286,305,325,344,363,383,402,422,442,460,480,499,519,538,557,577,596,616,635,654,674,694,712,732,751,803,858,915,974,1035,1098,1165,1234,1304,1378,1406,1434,1462,1490,1518,1546,1574,1602,1630,1658,1686,1714,1742,1770,1923,2073,2223,2374,2525,2675,2826,2976,3126,3277,3427,3577,3728,3878,4028,4178);
-- Someone used CLS "BaseArmor" as MeleeBaseAttackTime, still some left i couldnt find fast.
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 1200 WHERE `entry` = 767;
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000 WHERE `entry` = 1204;
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000 WHERE `entry` = 1436;
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 1200 WHERE `entry` = 2017;
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000 WHERE `entry` = 2056;
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 800 WHERE `entry` = 2173;
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 1200 WHERE `entry` = 2384;
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 1200 WHERE `entry` = 2385;
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000 WHERE `entry` = 2605;
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000 WHERE `entry` = 3844;
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 1200 WHERE `entry` = 3862;
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000 WHERE `entry` = 3913;
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 1200 WHERE `entry` = 4124;
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000 WHERE `entry` = 4264;
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 1200 WHERE `entry` = 4534;
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2300 WHERE `entry` = 4845;
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000 WHERE `entry` = 4947;
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000 WHERE `entry` = 5044;
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2300 WHERE `entry` = 5255;
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 1000 WHERE `entry` = 5409;
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000 WHERE `entry` = 5666;
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 1200 WHERE `entry` = 5766;
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 1200 WHERE `entry` = 5807;
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000 WHERE `entry` = 6109;
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 1200 WHERE `entry` = 6243;
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2300 WHERE `entry` = 7076;
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000 WHERE `entry` = 7366;
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000 WHERE `entry` = 7398;
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000 WHERE `entry` = 7412;
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000 WHERE `entry` = 7465;
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 1200 WHERE `entry` = 8299;
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000 WHERE `entry` = 8608;
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000 WHERE `entry` = 8656;
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000 WHERE `entry` = 8657;
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000 WHERE `entry` = 8658;
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000 WHERE `entry` = 8933;
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 3200 WHERE `entry` = 9196;
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 1300 WHERE `entry` = 9236;
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2400 WHERE `entry` = 9456;
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000 WHERE `entry` = 9604;
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 1400 WHERE `entry` = 9708;
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 1200 WHERE `entry` = 10077;
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000 WHERE `entry` = 10221;
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2300 WHERE `entry` = 10317;
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 1200 WHERE `entry` = 10475;
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 1200 WHERE `entry` = 10639;
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000 WHERE `entry` = 10954;
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000 WHERE `entry` = 11279;
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 1200 WHERE `entry` = 11374;
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 800 WHERE `entry` = 11460;
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 1200 WHERE `entry` = 11878;
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000 WHERE `entry` = 11937;
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000 WHERE `entry` = 12369;
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000 WHERE `entry` = 12397;
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000 WHERE `entry` = 12921;
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2800 WHERE `entry` = 13535;
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000 WHERE `entry` = 13538;
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000 WHERE `entry` = 13550;
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000 WHERE `entry` = 14081;
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000 WHERE `entry` = 14233;
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000 WHERE `entry` = 14435;
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000 WHERE `entry` = 14485;
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 800 WHERE `entry` = 14880;
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2500 WHERE `entry` = 15203;
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 3000 WHERE `entry` = 15205;
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000 WHERE `entry` = 15305;
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 800 WHERE `entry` = 15323;
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 1200 WHERE `entry` = 15369;
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 1200 WHERE `entry` = 15505;
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 1200 WHERE `entry` = 15516;
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000 WHERE `entry` = 15554;
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000 WHERE `entry` = 15702;
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000 WHERE `entry` = 15974;
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000 WHERE `entry` = 15975;
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000 WHERE `entry` = 15976;
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 1000 WHERE `entry` = 15977;
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 1200 WHERE `entry` = 15978;
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000 WHERE `entry` = 15979;
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 1800 WHERE `entry` = 15989;
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 1250 WHERE `entry` = 16011;
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 750 WHERE `entry` = 16028;
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 1200 WHERE `entry` = 16216;

