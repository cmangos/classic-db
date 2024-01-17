-- Blasted Lands - Updates

-- Felguard Sentry 6011 & Felhound 6010
-- This is WOTLK (TDB - need to confirm) only update ... as data we had was from Classic era or.. custom made
-- IM going to use waypoint_path id = group id - to keep sync with all work i did before

-- Align with WDB so even if paths, spawns are different data aligns.
UPDATE `waypoint_path` SET `PathId` = 149 WHERE `PathId` = 11;
UPDATE `waypoint_path_name` SET `PathId` = 149 WHERE `PathId` = 11;

UPDATE `waypoint_path` SET `PathId` = 150 WHERE `PathId` = 12;
UPDATE `waypoint_path_name` SET `PathId` = 150 WHERE `PathId` = 12;

UPDATE `waypoint_path` SET `PathId` = 151 WHERE `PathId` = 13;
UPDATE `waypoint_path_name` SET `PathId` = 151 WHERE `PathId` = 13;

UPDATE `waypoint_path` SET `PathId` = 152 WHERE `PathId` = 14;
UPDATE `waypoint_path_name` SET `PathId` = 152 WHERE `PathId` = 14;

UPDATE `waypoint_path` SET `PathId` = 153 WHERE `PathId` = 15;
UPDATE `waypoint_path_name` SET `PathId` = 153 WHERE `PathId` = 15;

UPDATE `spawn_group_formation` SET `PathId` = `Id` WHERE `Id` IN (149,150,151,152,153);

-- Helboar 5993
-- poss corrected
UPDATE creature SET position_x = -11759.515625, position_y = -3019.687988, position_z = 25.533550 WHERE guid = 3842;
UPDATE creature SET position_x = -11750.381836, position_y = -2905.866455, position_z = 5.561323 WHERE guid = 3843;

-- Servant of Grol 7669
UPDATE creature SET spawndist = 1, MovementType = 1 WHERE guid = 2671; -- confirmed
DELETE FROM creature_addon where guid = 2671;
UPDATE creature SET position_x = -11540.997, position_y = -2896.7283, position_z = 10.740564, spawndist = 0, MovementType = 4 WHERE guid = 3102;
DELETE FROM creature_movement WHERE id IN (3102);
INSERT INTO creature_movement (id, Point, PositionX, PositionY, PositionZ, Orientation, WaitTime, ScriptId) VALUES
(3102,1,-11540.997,-2896.7283,10.740564,100,0,0),
(3102,2,-11534.626,-2880.435,12.028532,100,0,0),
(3102,3,-11525.544,-2860.7937,8.775274,100,1000,0);

-- Dreadscorn 8304 - 140323 in classic/tbcmangos
-- https://github.com/cmangos/tbc-db/blob/e92c8e17ed3b626377a6b4a6ad4e5e952fcf6f47/Updates/0031_CDB-4370_blasted_lands_dreadscorn.sql#L7
-- debateable how going forward such things should be implemented. . .
DELETE FROM `spawn_group_entry` WHERE `id` = 267;
UPDATE `creature` SET `id` = 8304 WHERE `guid` = 140323;
DELETE FROM `creature_movement` WHERE (`id` = 140323);
DELETE FROM creature_movement_template WHERE entry = 8304;
INSERT INTO creature_movement_template (Entry, Point, PositionX, PositionY, PositionZ, Orientation, WaitTime, ScriptId) VALUES
(8304,1,-11316.973,-2552.8352,95.91068,100,1000,0),
(8304,2,-11335.366,-2554.8655,88.2449 ,100,0,0),
(8304,3,-11365.778,-2561.9358,79.450714,100,0,0),
(8304,4,-11384.299,-2576.9668,71.83986,100,0,0),
(8304,5,-11399.067,-2588.9163,63.19728,100,0,0),
(8304,6,-11409.63,-2600.8242,56.29765 ,100,0,0),
(8304,7,-11437.685,-2633.0461,33.58943,100,0,0),
(8304,8,-11459.067,-2666.5598,12.92333,100,0,0),
(8304,9,-11461.736,-2699.5422,6.892065,100,1000,0);

-- Dreadlord 8716
-- missing added
DELETE FROM creature_addon WHERE guid IN (3220,3641); -- free for all 3 dbs
DELETE FROM creature_movement WHERE id IN (3220,3641);
DELETE FROM game_event_creature WHERE guid IN (3220,3641);
DELETE FROM game_event_creature_data WHERE guid IN (3220,3641);
DELETE FROM creature_battleground WHERE guid IN (3220,3641);
DELETE FROM creature_linking WHERE guid IN (3220,3641);
DELETE FROM creature where guid IN (3220,3641);
INSERT INTO creature (guid, id, map, spawnMask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES
(3220,8716,0,1,-12193.036,-2755.4004,22.25879,2.28638,900,900,0,0);

-- Felguard Elite 8717 & Manahound 8718
UPDATE creature SET position_x = -12049.108, position_y = -2688.916, position_z = -15.1847, spawndist = 0, movementtype = 0 WHERE guid IN (2652,2653,2654);
DELETE FROM `spawn_group` WHERE id IN (96,19907);
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(19907, 'Blasted Lands - Felguard Elite 8717 & Manahound 8718 x2 - Patrol 1', 0, 0, 0, 0x01);
DELETE FROM `spawn_group_spawn` WHERE id IN (96,19907);
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(19907, 2652, 0),
(19907, 2653, 1),
(19907, 2654, 2);
DELETE FROM `spawn_group_formation` WHERE id IN (96,19907);
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(19907, 3, 4, 0, 19907, 4, 'Blasted Lands - Felguard Elite 8717 & Manahound 8718 x2 - Patrol 1');
DELETE FROM `waypoint_path_name` WHERE PathId IN (10,19907); -- 10	Blasted Lands - Felguard Elite (3) Patrol 001
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(19907,'Blasted Lands - Felguard Elite 8717 & Manahound 8718 x2 - Patrol 1');
DELETE FROM `waypoint_path` WHERE PathId IN (10,19907);
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(19907,1 ,-12049.108,-2688.916,-15.1847,100,1000,0), -- may not be first one - missing data
(19907,2 ,-12066.638,-2677.1897,-17.734993,100,0,0),
(19907,3 ,-12069.657,-2659.7883,-27.266823,100,0,0),
(19907,4 ,-12085.815,-2644.886,-30.504372 ,100,0,0),
(19907,5 ,-12092.525,-2621.2083,-31.583084,100,0,0),
(19907,6 ,-12108.282,-2596.691,-27.212606 ,100,0,0),
(19907,7 ,-12136.488,-2595.9531,-22.733866,100,0,0),
(19907,8 ,-12165.878,-2573.602,-19.353739 ,100,0,0),
(19907,9 ,-12190.698,-2563.4023,-11.425358,100,0,0),
(19907,10,-12209.847,-2563.6272,-9.187963 ,100,0,0),
(19907,11,-12246.797,-2564.6792,-4.8659587,100,0,0),
(19907,12,-12285.951,-2583.535,2.4066503  ,100,0,0),
(19907,13,-12311.38,-2600.5813,5.9698353  ,100,0,0),
(19907,14,-12313.063,-2630.3755,9.696398  ,100,0,0),
(19907,15,-12306.794,-2654.352,6.0152597  ,100,0,0),
(19907,16,-12295.419,-2673.4883,5.798772  ,100,0,0),
(19907,17,-12275.004,-2681.0186,3.3380785 ,100,0,0),
(19907,18,-12253.709,-2688.5603,5.1798754 ,100,0,0),
(19907,19,-12245.828,-2712.8213,9.152658  ,100,0,0),
(19907,20,-12197.875,-2730.1118,10.567487,100,1000,0);

-- Nethergarde Cleric 6000
UPDATE creature SET position_x = -10893.877, position_y = -3254.511, position_z = 67.38293, spawndist = 0, MovementType = 4 WHERE guid = 2976; -- linear
UPDATE creature SET position_x = -10970.400, position_y = -3362.6899, position_z = 65.6759, spawndist = 0, MovementType = 4 WHERE guid = 3666; -- linear
UPDATE creature SET position_x = -11108.942, position_y = -3356.9956, position_z = 55.209175, spawndist = 0, MovementType = 4 WHERE guid = 3690; -- linear
DELETE FROM creature_movement WHERE id IN (2976,3666,3690);
INSERT INTO creature_movement (id, Point, PositionX, PositionY, PositionZ, Orientation, WaitTime, ScriptId) VALUES
-- 2976
(2976,1,-10893.877,-3254.511,67.38293,100,1000,0),
(2976,2,-10907.401,-3269.2522,61.07353,100,0,0),
(2976,3,-10912.513,-3290.809,55.264935,100,0,0),
(2976,4,-10908.767,-3305.223,59.124935,100,0,0),
(2976,5,-10899.967,-3325.5134,64.99931,100,0,0),
(2976,6,-10884.459,-3322.227,70.676315,100,0,0),
(2976,7,-10875.254,-3309.6438,79.40434,100,0,0),
(2976,8,-10871.776,-3290.6006,88.20466,100,1000,0),
-- 3666 - corrected
(3666,1,-10970.400,-3362.6899,65.6759,100,1000,0),
(3666,2,-11017.309,-3451.6975,64.9648 ,100,0,0),
(3666,3,-10996.593,-3432.0933,62.11512,100,0,0),
(3666,4,-10997.302,-3402.636,61.99012 ,100,0,0),
(3666,5,-10997.425,-3372.1438,62.86281,100,0,0),
(3666,6,-11046.845,-3453.581,66.146164,100,0,0),
(3666,7,-11075.724,-3470.6775,65.03184,100,0,0),
(3666,8,-11089.165,-3467.7651,65.03184,100,0,0),
(3666,9,-11104.951,-3446.4133,65.07927,100,1000,0),
-- 3690 - corrected
(3690,1,-11108.942,-3356.9956,55.209175,100,1000,0),
(3690,2,-11100.467,-3338.871,54.469917 ,100,0,0),
(3690,3,-11087.349,-3323.8806,50.62861 ,100,0,0),
(3690,4,-11075.781,-3303.1804,48.95307 ,100,0,0),
(3690,5,-11064.932,-3301.4395,50.147663,100,0,0),
(3690,6,-11055.422,-3300.556,51.430134 ,100,0,0),
(3690,7,-11043.081,-3293.3396,53.24697 ,100,1000,0);

-- Nethergarde Engineer 5997 & Nethergarde Foreman 5998
UPDATE creature SET position_x = -10907.106, position_y = -3179.639, position_z = 49.09751, spawndist = 0, MovementType = 4 WHERE guid = 3863; -- linear
UPDATE creature SET position_x = -10766.128, position_y = -3124.3157, position_z = 36.469063, spawndist = 0, MovementType = 4 WHERE guid = 3878; -- linear
UPDATE creature SET position_x = -10708.568, position_y = -3294.3884, position_z = -7.9201093, spawndist = 0, MovementType = 4 WHERE guid = 3775; -- linear
UPDATE creature SET position_x = -10685.372, position_y = -3524.7156, position_z = -31.3056, spawndist = 0, MovementType = 4 WHERE guid = 3774; -- linear
UPDATE creature SET position_x = -10659.11, position_y = -3595.9583, position_z = -7.4565773, spawndist = 0, MovementType = 4 WHERE guid = 2831; -- linear
UPDATE creature SET position_x = -10809.995, position_y = -3580.722, position_z = -11.798237, spawndist = 0, MovementType = 4 WHERE guid = 3781; -- linear
UPDATE creature SET position_x = -10534.50, position_y = -3295, position_z = 2.344393, spawndist = 0, MovementType = 4 WHERE guid = 3786; -- linear
UPDATE creature SET position_x = -10597.946, position_y = -3300.626, position_z = 4.4919586, spawndist = 0, MovementType = 4 WHERE guid = 3713; -- linear
DELETE FROM creature_movement WHERE id IN (3863,3878,3775,3774,2831,3781,3786,3713);
INSERT INTO creature_movement (id, Point, PositionX, PositionY, PositionZ, Orientation, WaitTime, ScriptId) VALUES
-- 3863 - corrected
(3863,1 ,-10907.106,-3179.639,49.09751,100,1000,0),
(3863,2 ,-10891.712,-3176.916,49.452724 ,100,0,0),
(3863,3 ,-10858.604,-3173.4778,48.15338 ,100,0,0),
(3863,4 ,-10832.375,-3169.8516,43.579834,100,0,0),
(3863,5 ,-10807.046,-3155.2468,37.99383 ,100,0,0),
(3863,6 ,-10791.864,-3127.9133,40.25387 ,100,0,0),
(3863,7 ,-10794.367,-3102.3418,42.996094,100,0,0),
(3863,8 ,-10806.505,-3077.621,45.29592  ,100,0,0),
(3863,9 ,-10823.819,-3055.8965,47.029457,100,0,0),
(3863,10,-10839.575,-3034.816,48.925587 ,100,0,0),
(3863,11,-10854.795,-3030.3762,48.605743,100,1000,0),
-- 3878 - corrected
(3878,1 ,-10766.128,-3124.3157,36.469063,100,1000,0),
(3878,2 ,-10731.893,-3130.831,34.2597   ,100,0,0),
(3878,3 ,-10694.435,-3144.5034,23.221888,100,0,0),
(3878,4 ,-10667.884,-3173.2087,20.685173,100,0,0),
(3878,5 ,-10652.567,-3194.8425,23.740799,100,0,0),
(3878,6 ,-10662.423,-3201.6743,22.227491,100,0,0),
(3878,7 ,-10672.705,-3199.9275,21.233946,100,0,0),
(3878,8 ,-10693.39,-3169.2764,21.430164 ,100,0,0),
(3878,9 ,-10712.425,-3150.8499,29.727856,100,0,0),
(3878,10,-10728.997,-3124.7092,34.09694 ,100,0,0),
(3878,11,-10764.614,-3112.061,36.23918,100,1000,0),
-- 3775
(3775,1,-10708.568,-3294.3884,-7.9201093,100,1000,0),
(3775,2,-10703.488,-3335.2266,-7.583639 ,100,0,0),
(3775,3,-10740.072,-3332.619,-10.254399 ,100,0,0),
(3775,4,-10743.076,-3351.3782,-9.875658 ,100,0,0),
(3775,5,-10721.832,-3362.5537,-11.473009,100,0,0),
(3775,6,-10710.935,-3382.6335,-11.528957,100,0,0),
(3775,7,-10720.708,-3415.9504,-15.087488,100,0,0),
(3775,8,-10742.735,-3433.804,-17.875326,100,1000,0),
-- 3774
(3774,1,-10685.372,-3524.7156,-31.3056,100,1000,0),
(3774,2,-10696.927,-3558.1013,-32.26817 ,100,0,0),
(3774,3,-10721.146,-3562.9343,-29.296434,100,0,0),
(3774,4,-10741.92,-3549.3164,-31.492886 ,100,0,0),
(3774,5,-10755.646,-3528.3186,-29.961952,100,0,0),
(3774,6,-10761.886,-3495.7832,-23.744547,100,0,0),
(3774,7,-10761.249,-3458.3833,-20.172815,100,0,0),
(3774,8,-10778.485,-3448.5999,-20.23393,100,1000,0),
-- 2831
(2831,1,-10659.11,-3595.9583,-7.4565773,100,1000,0),
(2831,2,-10648.918,-3601.9312,-7.575261,100,0,0),
(2831,3,-10623.882,-3611.828,-11.034247,100,0,0),
(2831,4,-10610.732,-3595.9353,-13.190447,100,0,0),
(2831,5,-10605.161,-3566.4893,-12.28532,100,0,0),
(2831,6,-10588.46,-3527.6562,-6.807689,100,0,0),
(2831,7,-10595.714,-3508.7134,-0.98286813,100,0,0),
(2831,8,-10605.061,-3480.2493,2.7109523,100,1000,0),
-- 3781
(3781,1,-10809.995,-3580.722,-11.798237,100,1000,0),
(3781,2,-10768.241,-3598.697,-12.728107 ,100,0,0),
(3781,3,-10762.276,-3627.711,-11.737767 ,100,0,0),
(3781,4,-10736.123,-3636.6907,-11.798807,100,0,0),
(3781,5,-10691.554,-3639.069,-11.125942 ,100,0,0),
(3781,6,-10674.279,-3654.201,-12.713397 ,100,0,0),
(3781,7,-10649.498,-3627.0425,-11.002993,100,0,0),
(3781,8,-10628.709,-3632.1562,-13.05544,100,1000,0),
-- 3786
(3786,1 ,-10534.50,-3295,2.344393,100,1000,0),
(3786,2 ,-10556.396,-3302.8086,2.0840335 ,100,0,0),
(3786,3 ,-10564.22,-3336.0085,3.420667   ,100,0,0),
(3786,4 ,-10558.843,-3369.3357,-2.155574 ,100,0,0),
(3786,5 ,-10557.354,-3389.2852,-2.322438 ,100,0,0),
(3786,6 ,-10561.133,-3409.6477,-1.1932617,100,0,0),
(3786,7 ,-10564.332,-3435.7976,-2.0890288,100,0,0),
(3786,8 ,-10566.467,-3455.78,-2.188403   ,100,0,0),
(3786,9 ,-10551.718,-3475.8198,-5.1744204,100,0,0),
(3786,10,-10565.211,-3501.1973,-6.207753,100,1000,0),
-- 3713
(3713,1 ,-10597.946,-3300.626,4.4919586,100,1000,0),
(3713,2 ,-10596.802,-3282.3687,4.8780622,100,0,0),
(3713,3 ,-10577.827,-3281.6516,2.7242875,100,0,0),
(3713,4 ,-10549.464,-3273.902,0.5566197 ,100,0,0),
(3713,5 ,-10548.055,-3238.7231,5.5423594,100,0,0),
(3713,6 ,-10555.398,-3210.4087,7.2043467,100,0,0),
(3713,7 ,-10571.047,-3206.229,6.9450674 ,100,0,0),
(3713,8 ,-10584.643,-3185.2192,9.782501 ,100,0,0),
(3713,9 ,-10608.864,-3155.8135,16.152325,100,0,0),
(3713,10,-10633.101,-3128.157,22.372782 ,100,0,0),
(3713,11,-10642.776,-3106.1147,24.459536,100,1000,0);
