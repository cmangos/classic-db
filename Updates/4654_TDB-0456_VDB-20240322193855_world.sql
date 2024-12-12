-- Add your query below.
-- https://github.com/vmangos/core/commit/b2dfa37484017f40444419ba57e4a42fbbd9ecea

-- Pathing for Ironeye the Invincible Entry: 5935
SET @NPC := 5935;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-6080.7417,`position_y`=-4229.7075,`position_z`=-58.75004 WHERE `guid`= 51824;
DELETE FROM `creature_movement_template` WHERE `entry`=@NPC;
INSERT INTO `creature_movement_template` (`entry`,`point`,`positionx`,`positiony`,`positionz`,`orientation`,`waittime`,`scriptid`) VALUES
(@NPC,1,-6080.7417,-4229.7075,-58.75004,100,0,0),
(@NPC,2,-6106.1978,-4241.2256,-58.750034,100,0,0),
(@NPC,3,-6122.3027,-4257.7954,-58.750015,100,0,0),
(@NPC,4,-6141.871,-4281.113,-58.749958,100,0,0),
(@NPC,5,-6157.237,-4289.18,-58.75,100,0,0),
(@NPC,6,-6175.913,-4298.796,-58.75,100,0,0),
(@NPC,7,-6192.434,-4294.0586,-58.75,100,0,0),
(@NPC,8,-6206.6953,-4275.653,-58.75,100,0,0),
(@NPC,9,-6221.1743,-4261.7773,-58.750027,100,0,0),
(@NPC,10,-6242.6035,-4251.8926,-58.750023,100,0,0),
(@NPC,11,-6261.549,-4257.6387,-58.750023,100,0,0),
(@NPC,12,-6282.8076,-4258.0664,-58.750027,100,0,0),
(@NPC,13,-6298.74,-4252.9907,-58.74999,100,0,0),
(@NPC,14,-6317.256,-4256.5317,-58.749985,100,0,0),
(@NPC,15,-6332.646,-4260.78,-58.749985,100,0,0),
(@NPC,16,-6344.4326,-4271.79,-58.74999,100,0,0),
(@NPC,17,-6336.267,-4290.6455,-58.74999,100,0,0),
(@NPC,18,-6325.882,-4304.9663,-58.749992,100,0,0),
(@NPC,19,-6318.2056,-4318.908,-58.749153,100,0,0),
(@NPC,20,-6309.1313,-4332.4785,-58.67491,100,0,0),
(@NPC,21,-6283.5093,-4345.7915,-58.74953,100,0,0),
(@NPC,22,-6261.3584,-4348.2812,-58.74668,100,0,0),
(@NPC,23,-6236.18,-4348.447,-58.74997,100,0,0),
(@NPC,24,-6218.4453,-4344.2607,-58.749954,100,0,0),
(@NPC,25,-6200.5327,-4335.262,-58.749954,100,0,0),
(@NPC,26,-6189.6113,-4321.157,-58.75,100,0,0),
(@NPC,27,-6175.346,-4306.061,-58.75,100,0,0),
(@NPC,28,-6153.527,-4300.671,-58.749958,100,0,0),
(@NPC,29,-6124.0845,-4305.4404,-58.749954,100,0,0),
(@NPC,30,-6100.4165,-4303.8423,-58.749958,100,0,0),
(@NPC,31,-6083.428,-4301.7056,-58.749992,100,0,0),
(@NPC,32,-6050.7993,-4296.8423,-58.750015,100,0,0),
(@NPC,33,-6031.896,-4285.7563,-58.750015,100,0,0),
(@NPC,34,-6042.1665,-4267.974,-58.750034,100,0,0),
(@NPC,35,-6060.898,-4248.3906,-58.75004,100,0,0);
-- 0x205660002005CBC00000B400005044B8 .go xyz -6080.7417 -4229.7075 -58.75004

-- Pathing for Salt Flats Vulture Entry: 4158
SET @NPC := 45099;
-- Spawn new NPC
DELETE FROM `creature` WHERE `guid` IN (12402,12925,45075,45099,45136,45208) AND `id` IN (4158,15214); -- deleted invis
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
(45099, 4158, 1, 1, -6114.35, -4218.1772, -58.75004, 6.24209, 300, 300, 0, 2);
DELETE FROM `creature_movement` WHERE `id`=@NPC;
INSERT INTO `creature_movement` (`id`,`point`,`positionx`,`positiony`,`positionz`,`orientation`,`waittime`, `scriptid`) VALUES
(@NPC,1,-6114.35,-4218.1772,-58.75004,100,0,0),
(@NPC,2,-6142.1396,-4222.0923,-58.75003,100,0,0),
(@NPC,3,-6156.6904,-4265.2544,-58.750023,100,0,0),
(@NPC,4,-6174.191,-4264.1406,-58.750027,100,0,0),
(@NPC,5,-6195.2534,-4239.397,-58.750027,100,0,0),
(@NPC,6,-6217.428,-4247.6787,-58.750027,100,0,0),
(@NPC,7,-6227.8457,-4272.78,-58.75,100,0,0),
(@NPC,8,-6253.3013,-4289.8657,-58.749992,100,0,0),
(@NPC,9,-6269.0913,-4262.2246,-58.750027,100,0,0),
(@NPC,10,-6314.146,-4268.8765,-58.74999,100,0,0),
(@NPC,11,-6348.198,-4282.4653,-58.749985,100,0,0),
(@NPC,12,-6351.3203,-4300.557,-58.749992,100,0,0),
(@NPC,13,-6318.6626,-4314.7876,-58.749985,100,0,0),
(@NPC,14,-6305.5264,-4337.5044,-58.75,100,0,0),
(@NPC,15,-6261.8643,-4346.752,-58.74861,100,0,0),
(@NPC,16,-6232.451,-4335.691,-58.749954,100,0,0),
(@NPC,17,-6203.9185,-4339.6196,-58.74994,100,0,0),
(@NPC,18,-6190.59,-4323.354,-58.75,100,0,0),
(@NPC,19,-6155.926,-4328.1797,-58.74996,100,0,0),
(@NPC,20,-6129.8003,-4308.8687,-58.749958,100,0,0),
(@NPC,21,-6112.9336,-4295.7554,-58.749958,100,0,0),
(@NPC,22,-6100.0957,-4277.6733,-58.750008,100,0,0),
(@NPC,23,-6100.6074,-4246.09,-58.750034,100,0,0);
-- 0x2056600020040F800000B40000CECF85 .go xyz -6114.35 -4218.1772 -58.75004

-- Pathing for Flesh Golem Entry: 1805
SET @NPC := 52473;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=1346.9506,`position_y`=-1624.8699,`position_z`=57.355385 WHERE `guid`=@NPC;
DELETE FROM `creature_movement` WHERE `id`=@NPC;
INSERT INTO `creature_movement` (`id`,`point`,`positionx`,`positiony`,`positionz`,`orientation`,`waittime`, `scriptid`) VALUES
(@NPC,1,1346.9506,-1624.8699,57.355385,100,0,0),
(@NPC,2,1368.5435,-1603.7389,57.53905,100,0,0),
(@NPC,3,1377.7723,-1576.5139,58.823513,100,0,0),
(@NPC,4,1382.1422,-1546.4911,58.845856,100,0,0),
(@NPC,5,1404.9288,-1521.2911,58.149628,100,0,0),
(@NPC,6,1398.5068,-1498.1816,55.29832,100,0,0),
(@NPC,7,1422.3698,-1462.3817,53.824345,100,0,0),
(@NPC,8,1427.2174,-1444.4377,54.898552,100,0,0),
(@NPC,9,1424.9539,-1422.2397,55.68892,100,0,0),
(@NPC,10,1412.4283,-1391.2101,54.804043,100,0,0),
(@NPC,11,1401.3141,-1376.8511,53.750977,100,0,0),
(@NPC,12,1384.3846,-1354.7926,53.750343,100,0,0),
(@NPC,13,1369.6737,-1338.0256,52.804253,100,0,0),
(@NPC,14,1353.4249,-1324.2499,52.042034,100,0,0),
(@NPC,15,1355.9972,-1312.9703,53.34905,100,0,0),
(@NPC,16,1377.0181,-1300.1298,57.02207,100,0,0),
(@NPC,17,1394.1621,-1287.9883,59.68033,100,0,0),
(@NPC,18,1377.0176,-1300.1289,56.958725,100,0,0),
(@NPC,19,1355.9972,-1312.9703,53.34905,100,0,0),
(@NPC,20,1353.4249,-1324.2499,52.042034,100,0,0),
(@NPC,21,1369.6737,-1338.0256,52.804253,100,0,0),
(@NPC,22,1384.3846,-1354.7926,53.750343,100,0,0),
(@NPC,23,1401.3141,-1376.8511,53.750977,100,0,0),
(@NPC,24,1412.3359,-1391.0898,54.784958,100,0,0),
(@NPC,25,1424.9539,-1422.2397,55.68892,100,0,0),
(@NPC,26,1427.2174,-1444.4377,54.898552,100,0,0),
(@NPC,27,1422.3698,-1462.3817,53.824345,100,0,0),
(@NPC,28,1398.4666,-1498.0406,55.250805,100,0,0),
(@NPC,29,1404.9288,-1521.2911,58.149628,100,0,0),
(@NPC,30,1382.1422,-1546.4911,58.845856,100,0,0),
(@NPC,31,1377.7723,-1576.5139,58.823513,100,0,0),
(@NPC,32,1368.5435,-1603.7389,57.53905,100,0,0);
-- 0x205660000001C3400000DE00004ECF8A .go xyz 1346.9506 -1624.8699 57.355385

-- Pathing for Flesh Golem Entry: 1805
SET @NPC := 52673;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=1352.0759,`position_y`=-1297.7389,`position_z`=55.686394 WHERE `guid`=@NPC;
DELETE FROM `creature_movement` WHERE `id`=@NPC;
INSERT INTO `creature_movement` (`id`,`point`,`positionx`,`positiony`,`positionz`,`orientation`,`waittime`, `scriptid`) VALUES
(@NPC,1,1352.0759,-1297.7389,55.686394,100,0,0),
(@NPC,2,1349.26,-1339.8678,50.104862,100,0,0),
(@NPC,3,1337.594,-1364.1484,47.110104,100,0,0),
(@NPC,4,1322.2092,-1379.3774,46.07246,100,0,0),
(@NPC,5,1315.2496,-1404.4944,46.415993,100,0,0),
(@NPC,6,1328.403,-1438.4674,50.45847,100,0,0),
(@NPC,7,1341.5736,-1470.837,55.891506,100,0,0),
(@NPC,8,1360.378,-1492.6565,56.66162,100,0,0),
(@NPC,9,1364.2367,-1513.2711,57.54044,100,0,0),
(@NPC,10,1366.762,-1531.5848,57.697063,100,0,0),
(@NPC,11,1378.4156,-1544.4293,58.386543,100,0,0),
(@NPC,12,1379.8934,-1566.8397,59.08831,100,0,0),
(@NPC,13,1374.9092,-1582.0586,58.483574,100,0,0),
(@NPC,14,1368.372,-1600.4567,57.72251,100,0,0),
(@NPC,15,1370.3275,-1624.0597,58.694847,100,0,0),
(@NPC,16,1381.3091,-1629.9564,60.63743,100,0,0),
(@NPC,17,1404.7106,-1631.9456,65.21604,100,0,0),
(@NPC,18,1408.5424,-1660.0988,65.79956,100,0,0),
(@NPC,19,1421.5641,-1676.1636,68.197914,100,0,0),
(@NPC,20,1408.5424,-1660.0988,65.79956,100,0,0),
(@NPC,21,1404.7106,-1631.9456,65.21604,100,0,0),
(@NPC,22,1381.3091,-1629.9564,60.63743,100,0,0),
(@NPC,23,1370.3275,-1624.0597,58.694847,100,0,0),
(@NPC,24,1368.372,-1600.4567,57.72251,100,0,0),
(@NPC,25,1374.8898,-1582.1113,58.493008,100,0,0),
(@NPC,26,1379.8934,-1566.8397,59.08831,100,0,0),
(@NPC,27,1378.4156,-1544.4293,58.386543,100,0,0),
(@NPC,28,1366.762,-1531.5848,57.697063,100,0,0),
(@NPC,29,1364.2367,-1513.2711,57.54044,100,0,0),
(@NPC,30,1360.378,-1492.6565,56.66162,100,0,0),
(@NPC,31,1341.5736,-1470.837,55.891506,100,0,0),
(@NPC,32,1328.403,-1438.4674,50.45847,100,0,0),
(@NPC,33,1315.2496,-1404.4944,46.415993,100,0,0),
(@NPC,34,1322.2092,-1379.3774,46.07246,100,0,0),
(@NPC,35,1337.594,-1364.1484,47.110104,100,0,0),
(@NPC,36,1349.26,-1339.8678,50.104862,100,0,0);
-- 0x205660000001C3400000DE00004ECF89 .go xyz 1352.0759 -1297.7389 55.686394

-- Pathing for Gish the Unmoving Entry: 10825
SET @NPC := 10825;
UPDATE `creature` SET `spawndist`=0,`MovementType`=4,`position_x`=2730.0793,`position_y`=-4068.513,`position_z`=96.134514 WHERE `guid`= 86626;
DELETE FROM `creature_movement_template` WHERE `entry`=@NPC;
INSERT INTO `creature_movement_template` (`entry`,`point`,`positionx`,`positiony`,`positionz`,`orientation`,`waittime`,`scriptid`) VALUES
(@NPC,1,2730.0793,-4068.513,96.134514,100,0,0),
(@NPC,2,2716.4666,-4089.467,92.41655,100,0,0),
(@NPC,3,2721.4548,-4098.445,93.94249,100,0,0),
(@NPC,4,2726.4158,-4121.346,91.97764,100,0,0),
(@NPC,5,2713.9072,-4140.333,92.51868,100,0,0),
(@NPC,6,2683.0908,-4156.342,86.703445,100,0,0),
(@NPC,7,2687.3203,-4186.8594,84.56078,100,0,0),
(@NPC,8,2699.8296,-4220.261,85.59621,100,0,0),
(@NPC,9,2686.9062,-4241.416,93.05226,100,0,0),
(@NPC,10,2654.6802,-4258.8994,91.096954,100,0,0),
(@NPC,11,2643.968,-4284.5376,93.527695,100,0,0),
(@NPC,12,2611.2578,-4288.791,79.55385,100,0,0),
(@NPC,13,2580.8452,-4290.217,69.617615,100,0,0),
(@NPC,14,2547.0864,-4302.1147,74.428566,100,0,0),
(@NPC,15,2516.5703,-4307.5645,77.18063,100,0,0),
(@NPC,16,2484.2244,-4311.738,76.2066,100,0,0),
(@NPC,17,2444.264,-4329.041,74.3391,100,0,0),
(@NPC,18,2400.5942,-4346.721,78.619774,100,0,0),
(@NPC,19,2403.3867,-4384.414,74.339966,100,0,0),
(@NPC,20,2418.1116,-4412.9556,74.074104,100,0,0),
(@NPC,21,2405.3188,-4444.183,73.75288,100,0,0),
(@NPC,22,2386.8474,-4484.784,75.091095,100,0,0),
(@NPC,23,2379.4856,-4527.576,74.943375,100,0,0),
(@NPC,24,2377.3516,-4563.561,73.864685,100,0,0),
(@NPC,25,2371.6348,-4602.9946,73.622604,100,0,0),
(@NPC,26,2372.836,-4632.5405,74.30475,100,0,0),
(@NPC,27,2349.516,-4652.7007,75.20744,100,0,0),
(@NPC,28,2349.6863,-4683.745,75.7644,100,0,0),
(@NPC,29,2345.4814,-4714.6885,74.09731,100,0,0),
(@NPC,30,2345.4626,-4738.2646,77.56743,100,0,0),
(@NPC,31,2326.1658,-4766.8726,85.07955,100,0,0),
(@NPC,32,2340.9985,-4786.896,86.37433,100,0,0),
(@NPC,33,2345.4712,-4806.6943,88.2696,100,0,0),
(@NPC,34,2328.6045,-4831.029,94.17449,100,0,0),
(@NPC,35,2328.0803,-4851.301,88.56977,100,0,0),
(@NPC,36,2334.038,-4882.059,83.156364,100,0,0),
(@NPC,37,2347.5417,-4915.3325,74.47858,100,0,0),
(@NPC,38,2346.3755,-4948.5337,71.86297,100,0,0),
(@NPC,39,2345.853,-4981.762,71.02929,100,0,0),
(@NPC,40,2319.9426,-5011.8867,73.51717,100,0,0);
-- 0x20566000000A92400000DC0000504E37 .go xyz 2730.0793 -4068.513 96.134514

-- Pathing for Lord Kazzak Entry: 12397
SET @NPC := 12397;
DELETE FROM `creature` WHERE `id` = 12397;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
(156950, 12397, 0, 1, -12241.29980468750000000000, -2432.10009765625000000000, 2.93935990333557130000, 3.26503992080688480000, 172800, 345600, 0, 2);
-- DELETE FROM `game_event_creature` WHERE `guid` = 156950; -- tbc+
-- INSERT INTO `game_event_creature` (`guid`, `event`) VALUES (156950, 100); -- Before the Storm - Expansion Launch event
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-12226.763,`position_y`=-2433.5713,`position_z`=1.7650497 WHERE `guid`=156950;
DELETE FROM `creature_movement_template` WHERE `entry`=@NPC;
INSERT INTO `creature_movement_template` (`entry`,`point`,`positionx`,`positiony`,`positionz`,`orientation`,`waittime`,`scriptid`) VALUES
(@NPC,1,-12226.763,-2433.5713,1.7650497,100,0,0),
(@NPC,2,-12199.389,-2443.9436,-0.78273857,100,0,0),
(@NPC,3,-12176.748,-2463.1792,-0.68192375,100,0,0),
(@NPC,4,-12162.133,-2490.0483,1.2443819,100,0,0),
(@NPC,5,-12129.575,-2509.9036,3.5271091,100,0,0),
(@NPC,6,-12105.117,-2514.2732,3.3323827,100,45000,0),
(@NPC,7,-12134.097,-2502.787,3.9369826,100,0,0),
(@NPC,8,-12163.053,-2512.6086,0.017738817,100,0,0),
(@NPC,9,-12185.21,-2510.9187,0.13206376,100,0,0),
(@NPC,10,-12202.606,-2521.4878,0.94420856,100,0,0),
(@NPC,11,-12200.373,-2529.1758,1.5571474,100,40000,0),
(@NPC,12,-12220.614,-2521.7407,1.4189334,100,0,0),
(@NPC,13,-12254.349,-2523.1687,1.2085795,100,0,0),
(@NPC,14,-12274.052,-2542.8152,2.68905,100,0,0),
(@NPC,15,-12282.299,-2570.5627,2.3744166,100,35000,0),
(@NPC,16,-12283.778,-2530.9458,5.151241,100,0,0),
(@NPC,17,-12281.981,-2493.7773,5.0538664,100,0,0),
(@NPC,18,-12281.542,-2458.9329,4.9822454,100,0,0),
(@NPC,19,-12272.148,-2450.7114,4.260955,100,1,5),
(@NPC,20,-12260.24,-2442.2402,3.372902,5.480333805084228515,120000,6);
-- 0x20566000000C1B400000BA0000504F21 .go xyz -12226.763 -2433.5713 1.7650497

-- Pathing for Argent Dawn Infantry Entry: 16228
-- Spawn group
UPDATE creature SET `spawndist`=0,`MovementType`=0,`position_x`=2750.1484,`position_y`=-4073.8293,`position_z`=94.61037 WHERE guid IN (52699,52701);
DELETE FROM creature_movement WHERE id IN (52699,52701);
DELETE FROM `spawn_group` WHERE id = 19060;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(19060,'Eastern Plaguelands - Argent Dawn Infantry 16228 x2 - Patrol 1', 0, 0, 0, 0x01);
DELETE FROM `spawn_group_spawn` WHERE id = 19060;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(19060, 52699, 0),
(19060, 52701, 1);
DELETE FROM `spawn_group_formation` WHERE id = 19060;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(19060, 2, 4, 0, 19060, 4, 'Eastern Plaguelands - Argent Dawn Infantry 16228 x2 - Patrol 1');
DELETE FROM `waypoint_path` WHERE PathId IN (19060);
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(19060,1,2750.1484,-4073.8293,94.61037,100,0,0),
(19060,2,2746.3845,-4054.0754,95.0365,100,0,0),
(19060,3,2750.8342,-4040.674,95.69042,100,0,0),
(19060,4,2756.954,-4028.9602,96.36938,100,0,0),
(19060,5,2755.827,-4013.9993,96.456436,100,0,0),
(19060,6,2746.7075,-4011.6086,95.572395,100,0,0),
(19060,7,2728.812,-4010.6992,93.56653,100,0,0),
(19060,8,2711.836,-4014.4236,91.44728,100,0,0);
-- 0x20566000000FD9000000DC00014ECF83 .go xyz 2750.1484 -4073.8293 94.61037
DELETE FROM `waypoint_path_name` WHERE PathId IN (19060);
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(19060,'Eastern Plaguelands - Argent Dawn Infantry 16228 x2 - Patrol 1');

-- Update spawns according to sniff:
-- SELECT * FROM creature where id IN (11880,11881) order by guid; identical with tbc except surplus 44251,44252 as two more adds patrol with twilight prophet in classic
-- Twilight Avenger/Geolord 1
UPDATE `creature` SET `id` = 0, `position_x`=-7048.37,`position_y`=1219.74,`position_z`=0.432426,`orientation`=0.714684 WHERE `guid`=42994;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (42994, 11880),(42994, 11881);

-- Twilight Avenger/Geolord 2
UPDATE `creature` SET `id` = 0, `position_x`=-7000.02,`position_y`=1246.85,`position_z`=3.286,`orientation`=5.65487 WHERE `guid`=43037;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (43037, 11880),(43037, 11881);

-- Twilight Avenger/Geolord 3
UPDATE `creature` SET `id` = 0, `position_x`=-6981.23,`position_y`=1249.09,`position_z`=-0.0818057,`orientation`=3.63618 WHERE `guid`=42953;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (42953, 11880),(42953, 11881);

-- Remove waypoints and set random movement for Twilight Avenger/Geolord 4
DELETE FROM `creature_movement` WHERE `id`=42956;
UPDATE `creature` SET `id` = 0, `spawndist`=15,`MovementType`=1 WHERE `guid`=42956;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (42956, 11880),(42956, 11881);

-- Set random movement and is_spawn for Twilight Avenger/Geolord 5
DELETE FROM `creature_movement` WHERE `id`=42996;
UPDATE `creature` SET `id` = 0, `spawndist`=15,`MovementType`=1,`position_x`=-7016.16,`position_y`=1085.52,`position_z`=3.44079,`orientation`=0 WHERE `guid`=42996;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (42996, 11880),(42996, 11881);

-- Set random movement and is_spawn for Twilight Avenger/Geolord 6
DELETE FROM `creature_movement` WHERE `id`=42995;
UPDATE `creature` SET `id` = 0, `spawndist`=15,`MovementType`=1,`position_x`=-6949.04,`position_y`=1117.32,`position_z`=0.497721,`orientation`=0 WHERE `guid`=42995;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (42995, 11880),(42995, 11881);

-- Duplicate duplicate Twilight Avenger/Geolord 7
DELETE FROM `creature` WHERE `guid`=42993;

-- Delete duplicate Twilight Avenger/Geolord 8
DELETE FROM `creature` WHERE `guid`=43036;

-- Twilight Avenger/Geolord 9
UPDATE `creature` SET `id` = 0, `spawndist`=15,`MovementType`=1,`position_x`=-6985.15,`position_y`=1081.93,`position_z`=4.20541,`orientation`=0 WHERE `guid`=42970;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (42970, 11880),(42970, 11881);

-- Delete duplicate Twilight Avenger/Geolord 9
DELETE FROM `creature` WHERE `guid`=43041;

-- Remove unneeded creature_addon
-- Creature (GUID: 43036) does not exist but has a record in `creature_addon`
-- Creature (GUID: 43041) does not exist but has a record in `creature_addon`
-- SELECT * FROM creature_addon where guid IN (SELECT guid FROM creature where id IN (11880,11881,11882,11803,11804,11883)) and `stand_state` = 0 and `emote` = 0;
DELETE FROM `creature_addon` WHERE `guid` IN (42999,43002,43004,43005,43006,43007,43008,43009,43010,43011,43012,43013,43014,43015,43016,43017,43018,43019,43021,
43022,43023,43026,43027,43029,43031,43032,43033,43034,43036,43037,43038,43039,43041,43042,43043);
REPLACE INTO `creature_template_addon` (`entry`, `sheath_state`) VALUES (11881, 1);

-- Twilight Avenger/Geolord 10
UPDATE `creature` SET `id` = 0, `spawndist`=15,`MovementType`=1,`position_x`=-7052.05,`position_y`=1118.47,`position_z`=4.94603,`orientation`=0 WHERE `guid`=42997;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (42997, 11880),(42997, 11881);

-- Pathing for Twilight Avenger/Geolord Entry: 11880,11881
SET @NPC := 42992;
UPDATE `creature` SET `id` = 0, `spawndist`=0,`MovementType`=2,`position_x`=-7027.109,`position_y`=1150.3279,`position_z`=6.4466305 WHERE `guid`=@NPC;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (42992, 11880),(42992, 11881);
DELETE FROM `creature_movement` WHERE `id`=@NPC;
INSERT INTO `creature_movement` (`id`,`point`,`positionx`,`positiony`,`positionz`,`orientation`,`waittime`, `scriptid`) VALUES
(@NPC,1,-7027.109,1150.3279,6.4466305,100,0,0),
(@NPC,2,-7012.2603,1143.1754,6.581826,100,0,0),
(@NPC,3,-7000.5063,1141.953,8.80896,100,0,0),
(@NPC,4,-6992.7783,1130.6506,9.295771,100,0,0),
(@NPC,5,-6982.9395,1130.5131,8.505001,100,0,0),
(@NPC,6,-6974.928,1139.237,6.517437,100,0,0),
(@NPC,7,-6967.854,1153.5798,10.416408,100,0,0),
(@NPC,8,-6957.303,1162.9869,10.970554,100,0,0),
(@NPC,9,-6954.413,1182.5842,10.120466,100,0,0),
(@NPC,10,-6957.3794,1197.8461,9.39978,100,0,0),
(@NPC,11,-6969.861,1207.9724,7.6087193,100,0,0),
(@NPC,12,-6979.2915,1207.4105,9.365105,100,0,0),
(@NPC,13,-6996.9736,1211.4535,8.624156,100,0,0),
(@NPC,14,-7004.9043,1205.3691,7.876796,100,0,0),
(@NPC,15,-7013.64,1193.7899,7.5123014,100,0,0),
(@NPC,16,-7022.8057,1179.7672,7.523289,100,0,0),
(@NPC,17,-7022.104,1165.4275,8.792783,100,0,0);
-- 0x20566000200B9A000000CE00014ECF84 .go xyz -7027.109 1150.3279 6.4466305

-- Pathing for Twilight Geolord/Avenger Entry: 11881
SET @NPC := 43043;
UPDATE `creature` SET `id` = 0 WHERE `guid`=43043;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (43043, 11880),(43043, 11881);
DELETE FROM `creature_movement` WHERE `id`=@NPC;
INSERT INTO `creature_movement` (`id`,`point`,`positionx`,`positiony`,`positionz`,`orientation`,`waittime`, `scriptid`) VALUES
(@NPC,1,-7054.879,1170.2083,1.2795165,100,0,0),
(@NPC,2,-7063.4624,1157.3762,0.40489572,100,0,0),
(@NPC,3,-7064.0757,1142.274,1.4513805,100,0,0),
(@NPC,4,-7063.1973,1134.7804,2.2979043,100,0,0),
(@NPC,5,-7048.352,1116.4701,4.811369,100,0,0),
(@NPC,6,-7033.5186,1111.7156,4.4469175,100,0,0),
(@NPC,7,-7023.11,1105.2944,2.9240491,100,0,0),
(@NPC,8,-7013.368,1091.9794,2.1614013,100,0,0),
(@NPC,9,-7001.673,1085.7727,2.2545123,100,0,0),
(@NPC,10,-6985.394,1084.1324,3.4637282,100,0,0),
(@NPC,11,-6977.901,1083.3534,3.2175276,100,0,0),
(@NPC,12,-6962.0312,1095.8705,1.8611149,100,0,0),
(@NPC,13,-6946.3643,1109.3004,0.44034937,100,0,0),
(@NPC,14,-6945.4746,1124.7839,1.5468463,100,0,0),
(@NPC,15,-6936.933,1141.6678,4.1688423,100,0,0),
(@NPC,16,-6930.8213,1147.1066,4.5966597,100,0,0),
(@NPC,17,-6918.631,1159.8336,3.112652,100,0,0),
(@NPC,18,-6917.182,1180.3013,3.1782694,100,0,0),
(@NPC,19,-6918.2603,1196.7078,2.1701834,100,0,0),
(@NPC,20,-6917.9795,1223.1097,2.4220388,100,0,0),
(@NPC,21,-6926.3667,1236.4655,5.3643355,100,0,0),
(@NPC,22,-6944.3384,1250.7478,4.0561185,100,0,0),
(@NPC,23,-6967.205,1247.7053,-0.15249123,100,0,0),
(@NPC,24,-6980.8716,1252.9406,-0.21668285,100,0,0),
(@NPC,25,-7001.455,1245.8774,3.6264415,100,0,0),
(@NPC,26,-7016.5596,1245.8201,3.1758556,100,0,0),
(@NPC,27,-7036.189,1242.883,0.34961915,100,0,0),
(@NPC,28,-7048.4478,1230.1163,0.5989219,100,0,0),
(@NPC,29,-7057.77,1214.874,0.34909362,100,0,0),
(@NPC,30,-7052.397,1192.7838,0.55939066,100,0,0);
-- 0x20566000200B9A400000CE0002CECF84 .go xyz -7054.879 1170.2083 1.2795165

-- Pathing for Simone the Inconspicuous Entry: 14527
SET @NPC := 14527;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-7134.7847,`position_y`=-630.74493,`position_z`=-267.8451 WHERE `guid`=24439;
DELETE FROM `creature_movement_template` WHERE `entry`=@NPC;
INSERT INTO `creature_movement_template` (`entry`,`point`,`positionx`,`positiony`,`positionz`,`orientation`,`waittime`,`scriptid`) VALUES
(@NPC,1,-7134.7847,-630.74493,-267.8451,100,0,0),
(@NPC,2,-7112.881,-631.37476,-271.9652,100,0,0),
(@NPC,3,-7074.877,-605.41016,-270.40247,100,0,0),
(@NPC,4,-7054.3345,-620.15985,-271.85443,100,0,0),
(@NPC,5,-7021.897,-642.62115,-272.14703,100,0,0),
(@NPC,6,-7002.4976,-673.55975,-272.1954,100,0,0),
(@NPC,7,-6990.5757,-697.3798,-269.40195,100,0,0),
(@NPC,8,-6979.525,-745.5412,-266.0011,100,0,0),
(@NPC,9,-6988.725,-773.3251,-269.74628,100,0,0),
(@NPC,10,-7016.588,-807.87726,-271.55026,100,0,0),
(@NPC,11,-7059.4795,-813.66675,-271.31424,100,0,0),
(@NPC,12,-7071.4243,-846.7138,-272.17712,100,0,0),
(@NPC,13,-7087.3223,-863.11597,-272.22223,100,0,0),
(@NPC,14,-7112.989,-884.3573,-271.487,100,0,0),
(@NPC,15,-7150.9155,-892.54047,-270.9861,100,0,0),
(@NPC,16,-7178.579,-886.7773,-272.06827,100,0,0),
(@NPC,17,-7213.6143,-880.81396,-271.29465,100,0,0),
(@NPC,18,-7247.299,-904.3297,-272.20724,100,0,0),
(@NPC,19,-7288.475,-923.52765,-269.75653,100,0,0),
(@NPC,20,-7321.972,-926.8383,-270.41754,100,0,0),
(@NPC,21,-7355.6616,-955.1081,-271.3997,100,0,0),
(@NPC,22,-7375.4785,-987.541,-271.57358,100,0,0),
(@NPC,23,-7380.3325,-1001.1614,-271.4697,100,0,0),
(@NPC,24,-7385.1216,-1031.2078,-271.79517,100,0,0),
(@NPC,25,-7405.0635,-1054.3894,-270.45996,100,0,0),
(@NPC,26,-7439.9907,-1089.5543,-270.5445,100,0,0),
(@NPC,27,-7466.9673,-1125.9111,-271.58408,100,0,0),
(@NPC,28,-7495.1016,-1158.4141,-269.3605,100,0,0),
(@NPC,29,-7516.9517,-1177.9064,-271.45715,100,0,0),
(@NPC,30,-7513.4863,-1215.7516,-271.17224,100,0,0),
(@NPC,31,-7503.577,-1250.8982,-269.49353,100,0,0),
(@NPC,32,-7514.725,-1283.8434,-271.6494,100,0,0),
(@NPC,33,-7547.4697,-1312.8674,-271.2549,100,0,0),
(@NPC,34,-7567.815,-1341.8278,-271.96695,100,0,0),
(@NPC,35,-7602.6797,-1358.1893,-272.22223,100,0,0),
(@NPC,36,-7645.7256,-1381.2828,-269.64087,100,0,0),
(@NPC,37,-7675.2725,-1405.7223,-270.66724,100,0,0),
(@NPC,38,-7708.078,-1419.9424,-269.49112,100,0,0),
(@NPC,39,-7741.526,-1420.2039,-271.8899,100,0,0),
(@NPC,40,-7787.6704,-1425.8127,-270.825,100,0,0),
(@NPC,41,-7814.452,-1395.7693,-270.9296,100,0,0),
(@NPC,42,-7831.7734,-1374.3108,-272.02826,100,0,0),
(@NPC,43,-7858.1973,-1358.1388,-272.20828,100,0,0),
(@NPC,44,-7863.499,-1334.1305,-273.54282,100,0,0),
(@NPC,45,-7869.133,-1288.7773,-271.95776,100,0,0),
(@NPC,46,-7876.066,-1254.8944,-270.17163,100,0,0),
(@NPC,47,-7908.994,-1234.9504,-268.3065,100,0,0),
(@NPC,48,-7941.7363,-1239.0117,-271.51047,100,0,0),
(@NPC,49,-7988.922,-1240.2358,-268.93213,100,0,0),
(@NPC,50,-8010.9375,-1227.1108,-271.64957,100,0,0),
(@NPC,51,-8025.8813,-1189.5878,-271.59985,100,0,0),
(@NPC,52,-8015.186,-1152.5828,-269.59595,100,0,0),
(@NPC,53,-8012.1313,-1111.9603,-269.79248,100,0,0),
(@NPC,54,-8028.683,-1079.0793,-272.21252,100,0,0),
(@NPC,55,-8040.113,-1033.2528,-270.13815,100,0,0),
(@NPC,56,-8028.7397,-998.02606,-271.85883,100,0,0),
(@NPC,57,-8024.5713,-961.2599,-272.4614,100,0,0),
(@NPC,58,-8023.259,-928.99884,-271.51382,100,0,0),
(@NPC,59,-7997.297,-891.0057,-270.75293,100,0,0),
(@NPC,60,-7962.9575,-880.5515,-271.8003,100,0,0),
(@NPC,61,-7929.8647,-875.35187,-273.2356,100,0,0),
(@NPC,62,-7893.059,-872.51105,-269.62564,100,0,0),
(@NPC,63,-7858.724,-872.86163,-267.33008,100,0,0),
(@NPC,64,-7825.4307,-876.4685,-264.5992,100,0,0),
(@NPC,65,-7792.8794,-878.449,-267.81717,100,0,0),
(@NPC,66,-7756.059,-882.2704,-271.19907,100,0,0),
(@NPC,67,-7721.0957,-885.8583,-271.85938,100,0,0),
(@NPC,68,-7687.2944,-891.8414,-269.73077,100,0,0),
(@NPC,69,-7659.546,-899.9168,-270.932,100,0,0),
(@NPC,70,-7624.8525,-907.3125,-268.21014,100,0,0),
(@NPC,71,-7659.546,-899.9168,-270.932,100,0,0),
(@NPC,72,-7687.2944,-891.8414,-269.73077,100,0,0),
(@NPC,73,-7721.0957,-885.8583,-271.85938,100,0,0),
(@NPC,74,-7756.059,-882.2704,-271.19907,100,0,0),
(@NPC,75,-7792.842,-878.43945,-267.70602,100,0,0),
(@NPC,76,-7825.4307,-876.4685,-264.5992,100,0,0),
(@NPC,77,-7858.724,-872.86163,-267.33008,100,0,0),
(@NPC,78,-7893.059,-872.51105,-269.62564,100,0,0),
(@NPC,79,-7929.8647,-875.35187,-273.2356,100,0,0),
(@NPC,80,-7962.9575,-880.5515,-271.8003,100,0,0),
(@NPC,81,-7997.297,-891.0057,-270.75293,100,0,0),
(@NPC,82,-8023.2617,-929.00977,-271.4941,100,0,0),
(@NPC,83,-8024.5713,-961.2599,-272.4614,100,0,0),
(@NPC,84,-8028.7397,-998.02606,-271.85883,100,0,0),
(@NPC,85,-8040.113,-1033.2528,-270.13815,100,0,0),
(@NPC,86,-8028.683,-1079.0793,-272.21252,100,0,0),
(@NPC,87,-8012.1313,-1111.9603,-269.79248,100,0,0),
(@NPC,88,-8015.186,-1152.5828,-269.59595,100,0,0),
(@NPC,89,-8025.8813,-1189.5878,-271.59985,100,0,0),
(@NPC,90,-8010.9375,-1227.1108,-271.64957,100,0,0),
(@NPC,91,-7988.922,-1240.2358,-268.93213,100,0,0),
(@NPC,92,-7941.922,-1238.9512,-271.51047,100,0,0),
(@NPC,93,-7908.994,-1234.9504,-268.3065,100,0,0),
(@NPC,94,-7876.066,-1254.8944,-270.17163,100,0,0),
(@NPC,95,-7869.133,-1288.7773,-271.95776,100,0,0),
(@NPC,96,-7863.499,-1334.1305,-273.54282,100,0,0),
(@NPC,97,-7858.1973,-1358.1388,-272.20828,100,0,0),
(@NPC,98,-7831.7734,-1374.3108,-272.02826,100,0,0),
(@NPC,99,-7814.452,-1395.7693,-270.9296,100,0,0),
(@NPC,100,-7787.6704,-1425.8127,-270.825,100,0,0),
(@NPC,101,-7741.526,-1420.2039,-271.8899,100,0,0),
(@NPC,102,-7708.078,-1419.9424,-269.49112,100,0,0),
(@NPC,103,-7675.2725,-1405.7223,-270.66724,100,0,0),
(@NPC,104,-7645.7256,-1381.2828,-269.64087,100,0,0),
(@NPC,105,-7602.6797,-1358.1893,-272.22223,100,0,0),
(@NPC,106,-7567.815,-1341.8278,-271.96695,100,0,0),
(@NPC,107,-7547.4697,-1312.8674,-271.2549,100,0,0),
(@NPC,108,-7514.725,-1283.8434,-271.6494,100,0,0),
(@NPC,109,-7503.577,-1250.8982,-269.49353,100,0,0),
(@NPC,110,-7513.4863,-1215.7516,-271.17224,100,0,0),
(@NPC,111,-7516.9746,-1177.9004,-271.55573,100,0,0),
(@NPC,112,-7495.157,-1158.4603,-269.40604,100,0,0),
(@NPC,113,-7466.9673,-1125.9111,-271.58408,100,0,0),
(@NPC,114,-7439.9907,-1089.5543,-270.5445,100,0,0),
(@NPC,115,-7405.0635,-1054.3894,-270.45996,100,0,0),
(@NPC,116,-7385.1216,-1031.2078,-271.79517,100,0,0),
(@NPC,117,-7380.3325,-1001.1614,-271.4697,100,0,0),
(@NPC,118,-7375.56,-987.6084,-271.59164,100,0,0),
(@NPC,119,-7355.744,-955.1738,-271.38715,100,0,0),
(@NPC,120,-7321.972,-926.8383,-270.41754,100,0,0),
(@NPC,121,-7288.475,-923.52765,-269.75653,100,0,0),
(@NPC,122,-7247.299,-904.3297,-272.20724,100,0,0),
(@NPC,123,-7213.666,-880.8672,-271.34045,100,0,0),
(@NPC,124,-7178.579,-886.7773,-272.06827,100,0,0),
(@NPC,125,-7150.9155,-892.54047,-270.9861,100,0,0),
(@NPC,126,-7112.989,-884.3573,-271.487,100,0,0),
(@NPC,127,-7087.3223,-863.11597,-272.22223,100,0,0),
(@NPC,128,-7071.4243,-846.7138,-272.17712,100,0,0),
(@NPC,129,-7059.4795,-813.66675,-271.31424,100,0,0),
(@NPC,130,-7016.588,-807.87726,-271.55026,100,0,0),
(@NPC,131,-6988.725,-773.3251,-269.74628,100,0,0),
(@NPC,132,-6979.525,-745.5412,-266.0011,100,0,0),
(@NPC,133,-6990.5757,-697.3798,-269.40195,100,0,0),
(@NPC,134,-7002.4976,-673.55975,-272.1954,100,0,0),
(@NPC,135,-7021.897,-642.62115,-272.14703,100,0,0),
(@NPC,136,-7054.3345,-620.15985,-271.85443,100,0,0),
(@NPC,137,-7074.8813,-605.44464,-270.2986,100,0,0),
(@NPC,138,-7112.881,-631.37476,-271.9652,100,0,0);
-- 0x20566000200E2FC00000B500004ECF80 .go xyz -7134.7847 -630.74493 -267.8451

-- Pathing for Twilight Geolord Entry: 11881
SET @NPC := 43042;
UPDATE `creature` SET `id` = 0, `spawndist`=0,`MovementType`=2,`position_x`=-7047.21,`position_y`=1149.64,`position_z`=6.32304,`orientation`=4.10152 WHERE `guid`=@NPC;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (43042, 11880),(43042, 11881);
DELETE FROM `dbscripts_on_creature_movement` WHERE `id`=1188101;
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `priority`, `command`, `datalong`, `comments`) VALUES
(1188101, 0, 0, 1, 69, 'Twilight Geolord - EMOTE_STATE_USESTANDING'),
(1188101, 30000, 0, 1, 0, 'Twilight Geolord - EMOTE_STATE_NONE');
DELETE FROM `creature_movement` WHERE `id`=@NPC;
INSERT INTO `creature_movement` (`id`,`point`,`positionx`,`positiony`,`positionz`,`orientation`,`waittime`, `scriptid`) VALUES
(@NPC,1,-7046.875,1149.6351,6.258972,100,0,0),
(@NPC,2,-7046.875,1149.6351,6.258972,4.101523876190185546,30000,1188101),
(@NPC,3,-7039.751,1150.8881,6.2975,100,0,0),
(@NPC,4,-7039.751,1150.8881,6.2975,5.724679946899414062,30000,0);
-- 0x20566000200B9A400000CE0002CECF86 .go xyz -7046.875 1149.6351 6.258972

-- End of migration.

UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|1048576, `UnitFlags` = 0, `MaxLootGold` = 541 WHERE `entry` = 11803; -- Twilight Keeper Exeter
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|1048576, `UnitFlags` = 0, `MaxLootGold` = 874 WHERE `entry` = 11804; -- Twilight Keeper Havunth
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|1048576, `SpeedWalk` = 1, `MaxLootGold` = 903 WHERE `entry` = 11880; -- Twilight Avenger
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|1048576, `SpeedWalk` = 1, `MaxLootGold` = 962 WHERE `entry` = 11881; -- Twilight Geolord
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|1048576, `SpeedWalk` = 1, `MaxLootGold` = 786 WHERE `entry` = 11882; -- Twilight Stonecaller
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|1048576, `SpeedWalk` = 1, `MaxLootGold` = 1040, `EquipmentTemplateId` = 0 WHERE `entry` = 11883; -- Twilight Master
DELETE FROM `creature_equip_template` WHERE `entry` = 11883; -- https://www.wowhead.com/tbc/npc=11883/twilight-master#screenshots:id=51000
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|1048576, `PickpocketLootId` = 14479, `MaxLootGold` = 900 WHERE `entry` = 14479; -- Twilight Lord Everun
DELETE FROM `pickpocketing_loot_template` WHERE `entry` = 14479; -- https://web.archive.org/web/20071225154959/http://wow.allakhazam.com:80/db/mob.html?wmob=11883
INSERT INTO `pickpocketing_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(14479, 8932, 30, 1, 1, 1, 0, 'Alterac Swiss'),
(14479, 5432, 30, 1, 1, 1, 0, 'Hickory Pipe'),
(14479, 16885, 20, 1, 1, 1, 0, 'Heavy Junkbox'),
(14479, 8950, 20, 1, 1, 1, 0, 'Homemade Cherry Pie');
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|1048576, `UnitFlags` = 0 WHERE `entry` = 15200; -- Twilight Keeper Mayna
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|1048576, `SpeedWalk` = 1 WHERE `entry` = 15201; -- Twilight Flamereaver
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|1048576 WHERE `entry` = 15213; -- Twilight Overlord
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|1048576, `SpeedWalk` = 1, `UnitFlags` = 64 WHERE `entry` = 15308; -- Twilight Prophet
UPDATE `creature_template` SET `SpeedWalk` = 1 WHERE `entry` = 15530; -- Twilight Master Xarvos (nonexistant)
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|1048576, `UnitFlags` = 0, `MinLootGold` = 294 WHERE `entry` = 15541; -- Twilight Marauder Morna
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|1048576, `MaxLootGold` = 758 WHERE `entry` = 15542; -- Twilight Marauder

-- UPDATE `creature_template` SET `UnitFlags` = `UnitFlags`|32768 WHERE `entry` IN (11803,11804,15200,15308,15541); -- tbc+

-- Pathing for Twilight Keeper Mayna Entry: 15200
SET @NPC := 15200;
UPDATE `creature` SET `spawndist`=0,`MovementType`=4,`position_x`=-6784.38,`position_y`=1593.05,`position_z`=3.10913,`orientation`=0.698132,`MovementType`=4 WHERE `id`=15200;
DELETE FROM `creature_movement_template` WHERE `entry`=@NPC;
INSERT INTO `creature_movement_template` (`entry`,`point`,`positionx`,`positiony`,`positionz`,`orientation`,`waittime`,`scriptid`) VALUES
(@NPC,1,-6785.844, 1595.079, 3.050809,100,0,0),
(@NPC,2,-6789.174, 1602.146, 4.046167,100,0,0),
(@NPC,3,-6796.449, 1611.498, 4.046167,100,0,0),
(@NPC,4,-6805.714, 1616.752, 2.679749,100,0,0),
(@NPC,5,-6821.602, 1630.93, 1.804749,100,0,0); -- might be incomplete

UPDATE `creature` SET `position_x` = -6253.36, `position_y` = 61.094, `position_z` = 17.3447, `orientation` = 5.71693 WHERE `guid` = 42924 AND `id` = 15201;
	
UPDATE `creature` SET `position_x` = -6292.88, `position_y` = 34.177, `position_z` = -10.5022, `orientation` = 5.20962 WHERE `guid` = 42925 AND `id` = 15201;

UPDATE `creature` SET `position_x` = -6250.18, `position_y` = -5.88943, `position_z` = -10.4574, `orientation` = 4.10827 WHERE `guid` = 42926 AND `id` = 15201;

UPDATE `creature` SET `position_x` = -6274.74, `position_y` = 12.3471, `position_z` = -10.4416, `orientation` = 5.13199 WHERE `guid` = 42927 AND `id` = 15201;

UPDATE `creature` SET `position_x` = -6245.43, `position_y` = -42.8366, `position_z` = -5.05335, `orientation` = 3.55166 WHERE `guid` = 42930 AND `id` = 15201;

UPDATE `creature` SET `position_x` = -6260.24, `position_y` = -9.77062, `position_z` = 2.00612, `orientation` = 0.841844, `MovementType` = 1, `spawndist` = 3 WHERE `guid` = 42931 AND `id` = 15201;

UPDATE `creature` SET `position_x` = -6291.09, `position_y` = 104.483, `position_z` = 17.4168, `orientation` = 1.34953 WHERE `guid` = 42932 AND `id` = 15201;

UPDATE `creature` SET `id` = 0, `position_x` = -6307.29, `position_y` = 131.78, `position_z` = 15.2122, `orientation` = 2.19582 WHERE `guid` = 42934 AND `id` = 15201; -- patrol potentially 11883
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (42934, 11883),(42934, 15201); -- -6316.24, 148.08, 14.2059, 0.998519 11883 is_spawn

UPDATE `creature` SET `position_x` = -6265.44, `position_y` = 41.6294, `position_z` = 9.08736, `orientation` = 5.20988 WHERE `guid` = 42935 AND `id` = 15201;

UPDATE `creature` SET `position_x` = -6292.68, `position_y` = 65.1169, `position_z` = 11.5863, `orientation` = 4.67711 WHERE `guid` = 42936 AND `id` = 15201;

UPDATE `creature` SET `id` = 0, `position_x` = -6683.74, `position_y` = 1618.02, `position_z` = 9.90185, `orientation` = 0, `MovementType` = 1, `spawndist` = 5 WHERE `guid`=42947;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (42947, 11880),(42947, 11881);

UPDATE `creature` SET `id` = 0, `position_x` = -6989.89, `position_y` = 1220.4, `position_z` = 9.51101, `orientation` = 3.49066 WHERE `guid` = 42948 AND `id` = 11880;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (42948, 11880),(42948, 11881);

UPDATE `creature` SET `id` = 0, `position_x` = -6971.08, `position_y` = 1210.74, `position_z` = 7.88494, `orientation` = 1.78024 WHERE `guid`=42949;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (42949, 11880),(42949, 11881);

UPDATE `creature` SET `id` = 0, `position_x` = -7010.04, `position_y` = 1122.39, `position_z` = 9.82764, `orientation` = 3.1765, `MovementType` = 2 WHERE `guid`=42950;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (42950, 11880),(42950, 11881);
DELETE FROM `creature_addon` WHERE `guid` = 42950;
SET @NPC := 42950;
DELETE FROM `creature_movement` WHERE `id`=@NPC;
INSERT INTO `creature_movement` (`id`,`point`,`positionx`,`positiony`,`positionz`,`orientation`,`waittime`, `scriptid`) VALUES
(@NPC,1,-7010.04000000000000000000, 1122.39000000000000000000, 9.82764000000000000000, 100, 0,0),
(@NPC,2,-7010.04000000000000000000, 1122.39000000000000000000, 9.82764000000000000000, 3.17650000000000000000, 30000,1188101),
(@NPC,3,-7007.56, 1125.52, 9.7504,100,0,0),
(@NPC,4,-7007.56, 1125.52, 9.7504, 2.63545,30000,1188101);

UPDATE `creature` SET `id` = 0, `position_x` = -6988.46, `position_y` = 1120.13, `position_z` = 9.20966, `orientation` = 2.18166 WHERE `guid`=42952;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (42952, 11880),(42952, 11881);

UPDATE `creature` SET `id` = 0, `position_x` = -7980.81, `position_y` = 1881.95, `position_z` = 4.97301, `orientation` = 3.57284 WHERE `guid`=42957;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (42957, 11880),(42957, 11881);

UPDATE `creature` SET `id` = 0, `position_x` = -7847.19, `position_y` = 1917.05, `position_z` = 5.17033, `orientation` = 2.32135 WHERE `guid`=42958;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (42958, 11880),(42958, 11881);

DELETE FROM `creature_movement` WHERE `id` = 42959;
UPDATE `creature` SET `id` = 0, `MovementType` = 1, `spawndist` = 5, `position_x` = -7819.17, `position_y` = 1915.47, `position_z` = 5.38077, `orientation` = 0 WHERE `guid`=42959;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (42959, 11880),(42959, 11881);

UPDATE `creature` SET `id` = 0, `position_x` = -7854.11, `position_y` = 1848.14, `position_z` = 3.46302, `orientation` = 0 WHERE `guid`=42960;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (42960, 11880),(42960, 11881);

UPDATE `creature` SET `id` = 0, `position_x` = -7951.23, `position_y` = 1947.05, `position_z` = 6.9874, `orientation` = 0 WHERE `guid`=42961;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (42961, 11880),(42961, 11881);

UPDATE `creature` SET `id` = 0, `position_x` = -7884.49, `position_y` = 1946.77, `position_z` = 6.18152, `orientation` = 0 WHERE `guid`=42962;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (42962, 11880),(42962, 11881);

UPDATE `creature` SET `id` = 0, `position_x` = -7917.48, `position_y` = 1921.11, `position_z` = 3.41073, `orientation` = 0 WHERE `guid`=42963;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (42963, 11880),(42963, 11881);

UPDATE `creature` SET `position_x` = -7981.95, `position_y` = 1946.53, `position_z` = 4.77584, `orientation` = 0.585441 WHERE `guid`=42964;

UPDATE `creature` SET `id` = 0, `position_x` = -7915.24, `position_y` = 1816.77, `position_z` = 2.06949, `orientation` = 0 WHERE `guid`=42966;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (42966, 11880),(42966, 11881);

UPDATE `creature` SET `id` = 0, `position_x` = -6846.73, `position_y` = 1680.68, `position_z` = 2.57696, `orientation` = 4.42617 WHERE `guid`=42999;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (42999, 11880),(42999, 11881);

UPDATE `creature` SET `id` = 0, `position_x` = -6977.77, `position_y` = 1215.92, `position_z` = 9.1577, `orientation` = 3.78736 WHERE `guid`=43000;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (43000, 11880),(43000, 11881);

UPDATE `creature` SET `id` = 0, `position_x` = -6953.9, `position_y` = 1159.7, `position_z` = 11.0538, `orientation` = 2.63545 WHERE `guid`=43001;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (43001, 11880),(43001, 11881);

UPDATE `creature` SET `id` = 0, `position_x` = -6950.87, `position_y` = 1182.5, `position_z` = 10.2334, `orientation` = 5.02722 WHERE `guid`=43002;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (43002, 11880),(43002, 11881);

UPDATE `creature` SET `id` = 0, `position_x` = -6999.96, `position_y` = 1129.48, `position_z` = 9.23342, `orientation` = 3.28122 WHERE `guid`=43003;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (43003, 11880),(43003, 11881);

UPDATE `creature` SET `id` = 0, `position_x` = -6950.07, `position_y` = 1249.24, `position_z` = 2.88655, `orientation` = 3.88472 WHERE `guid`=43004;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (43004, 11880),(43004, 11881);

UPDATE `creature` SET `id` = 0 WHERE `guid`=43005;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (43005, 11880),(43005, 11881);

UPDATE `creature` SET `id` = 0 WHERE `guid`=43006;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (43006, 11880),(43006, 11881);

UPDATE `creature` SET `id` = 0, `position_x` = -7817.99, `position_y` = 1883.61, `position_z` = 6.04492, `orientation` = 0 WHERE `guid`=43007;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (43007, 11880),(43007, 11881);

UPDATE `creature` SET `id` = 0, `position_x` = -7918.48, `position_y` = 1948.54, `position_z` = 6.48084, `orientation` = 0 WHERE `guid`=43008;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (43008, 11880),(43008, 11881);

UPDATE `creature` SET `id` = 0, `position_x` = -7950.27, `position_y` = 1884.37, `position_z` = 2.73736, `orientation` = 0 WHERE `guid`=43009;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (43009, 11880),(43009, 11881);

UPDATE `creature` SET `id` = 0, `position_x` = -7949.62, `position_y` = 1917.65, `position_z` = 2.5103, `orientation` = 0 WHERE `guid`=43010; -- patrol?
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (43010, 11880),(43010, 11881);

UPDATE `creature` SET `id` = 0, `position_x` = -7881.99, `position_y` = 1818.56, `position_z` = 1.33014, `orientation` = 0 WHERE `guid`=43011;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (43011, 11880),(43011, 11881);

UPDATE `creature` SET `id` = 0, `position_x` = -7883.83, `position_y` = 1919.16, `position_z` = 1.97893, `orientation` = 0 WHERE `guid`=43012;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (43012, 11880),(43012, 11881);

UPDATE `creature` SET `id` = 0, `position_x` = -7883.12, `position_y` = 1886.34, `position_z` = 5.93229, `orientation` = 0 WHERE `guid`=43013;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (43013, 11880),(43013, 11881);

UPDATE `creature` SET `id` = 0, `position_x` = -7917.87, `position_y` = 1787.02, `position_z` = 2.68991, `orientation` = 5.30951 WHERE `guid`=43014;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (43014, 11880),(43014, 11881);

UPDATE `creature` SET `id` = 0, `position_x` = -6716.73, `position_y` = 1650.12, `position_z` = 11.2759, `orientation` = 0, `spawndist` = 5, `MovementType` = 1 WHERE `guid`=42976;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (42976, 11880),(42976, 11881);

UPDATE `creature` SET `id` = 0, `position_x` = -6748.9, `position_y` = 1715.75, `position_z` = 5.03024, `orientation` = 6.27001 WHERE `guid`=43021;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (43021, 11880),(43021, 11881);

UPDATE `creature` SET `id` = 0, `position_x` = -6815.91, `position_y` = 1686.39, `position_z` = 3.67111, `orientation` = 0 WHERE `guid`=43023;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (43023, 11880),(43023, 11881);

UPDATE `creature` SET `id` = 0, `position_x` = -6797.04, `position_y` = 1666.12, `position_z` = 6.0068, `orientation` = 5.00909 WHERE `guid`=43024;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (43024, 11880),(43024, 11881);

UPDATE `creature` SET `id` = 0 WHERE `guid` = 43025; -- patrol?
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (43025, 11880),(43025, 11881);

UPDATE `creature` SET `id` = 0, `position_x` = -6794.45, `position_y` = 1658.31, `position_z` = 5.91482, `orientation` = 1.90241 WHERE `guid`=43026;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (43026, 11880),(43026, 11881);

UPDATE `creature` SET `id` = 0, `position_x` = -6747.51, `position_y` = 1554.92, `position_z` = 5.44322, `orientation` = 0 WHERE `guid`=43027;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (43027, 11880),(43027, 11881);

UPDATE `creature` SET `id` = 0, `position_x` = -6749.67, `position_y` = 1588.68, `position_z` = 6.99043, `orientation` = 4.55531 WHERE `guid`=43028;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (43028, 11880),(43028, 11881);

UPDATE `creature` SET `id` = 0, `position_x` = -6750.97, `position_y` = 1617.3, `position_z` = 11.4678, `orientation` = 0, `spawndist` = 5, `MovementType` = 1 WHERE `guid`=43029;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (43029, 11880),(43029, 11881);

UPDATE `creature` SET `id` = 0, `position_x` = -6783.57, `position_y` = 1582.64, `position_z` = 3.41511, `orientation` = 3.56755 WHERE `guid`=43031;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (43031, 11880),(43031, 11881);

UPDATE `creature` SET `id` = 0, `position_x` = -6717.44, `position_y` = 1582.06, `position_z` = 8.064, `orientation` = 5.24571 WHERE `guid`=43032;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (43032, 11880),(43032, 11881);

UPDATE `creature` SET `id` = 0, `position_x` = -6716.87, `position_y` = 1552.36, `position_z` = 6.37062, `orientation` = 3.86433 WHERE `guid`=43033;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (43033, 11880),(43033, 11881);

UPDATE `creature` SET `id` = 0, `position_x` = -7019.49, `position_y` = 1181.78, `position_z` = 8.44711, `orientation` = 0 WHERE `guid`=43038;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (43038, 11880),(43038, 11881);

UPDATE `creature` SET `id` = 0, `position_x` = -6981.02, `position_y` = 1106.44, `position_z` = 6.56431, `orientation` = 5.21853 WHERE `guid`=43040;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (43040, 11880),(43040, 11881);

UPDATE `creature` SET `id` = 0, `position_x` = -7054.11, `position_y` = 1183.58, `position_z` = 0.610986, `orientation` = 0 WHERE `guid`=42990;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (42990, 11880),(42990, 11881);

UPDATE `creature` SET `position_x` = -6355.88, `position_y` = 147.31, `position_z` = 6.31777, `orientation` = 0.872665 WHERE `guid`=43069;

UPDATE `creature` SET `position_x` = -7930.07, `position_y` = 1855.87, `position_z` = 5.66979, `orientation` = 0.959931 WHERE `guid`=43072;

UPDATE `creature` SET `position_x` = -7864.98, `position_y` = 1878.78, `position_z` = 4.3038, `orientation` = 6.0912 WHERE `guid`=43073;

UPDATE `creature` SET `position_x` = -7869.61, `position_y` = 1914.33, `position_z` = 3.50343, `orientation` = 4.10152 WHERE `guid`=43074;

UPDATE `creature` SET `position_x` = -7934.37, `position_y` = 1831.82, `position_z` = 5.01009, `orientation` = 4.92183 WHERE `guid`=43075;

-- Pathing for Ralo'shan the Eternal Watcher Entry: 15169
SET @NPC := 15169; -- how much delay on gossip?
UPDATE `creature` SET `spawndist`=0,`MovementType`=4,`position_x`=-6554.167,`position_y`=87.65192,`position_z`=170.3171,`orientation`=3.484932,`MovementType`=4 WHERE `id`=15169;
DELETE FROM `creature_movement_template` WHERE `entry`=@NPC;
INSERT INTO `creature_movement_template` (`entry`,`point`,`positionx`,`positiony`,`positionz`,`orientation`,`waittime`,`scriptid`) VALUES
(@NPC,1,-6554.167, 87.65192, 170.3171, 100,1000,0),
(@NPC,2,-6546.674, 90.33128, 170.318, 100,0,0),
(@NPC,3,-6547.608, 95.86524, 170.3171, 100,1000,0);

UPDATE `creature` SET `position_x` = -6231.19, `position_y` = -51.1512, `position_z` = -5.91143, `orientation` = 5.34071 WHERE `guid`=43085;

UPDATE `creature` SET `position_x` = -6236.44, `position_y` = 19.1447, `position_z` = 8.85145, `orientation` = 6.00393 WHERE `guid`=43086;

UPDATE `creature` SET `id` = 0, `position_x` = -7884.61, `position_y` = 1852.65, `position_z` = 4.28238, `orientation` = 0 WHERE `guid`=44253;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (44253, 11880),(44253, 11881);

UPDATE `creature` SET `id` = 0, `position_x` = -7037.14, `position_y` = 1140.75, `position_z` = 7.64752, `orientation` = 3.50811, `MovementType` = 0, `spawndist` = 0 WHERE `guid`=43020;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (43020, 11880),(43020, 11881);
REPLACE INTO `creature_addon` (`guid`, `sheath_state`, `emote`) VALUES (43020, 1, 69);

UPDATE `creature` SET `id` = 0, `position_x` = -7034.05, `position_y` = 1185.29, `position_z` = 7.46238, `orientation` = 2.46091, `MovementType` = 0, `spawndist` = 0 WHERE `guid`=42989;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (42989, 11880),(42989, 11881);

UPDATE `creature` SET `id` = 0, `position_x` = -6968.25, `position_y` = 1115.51, `position_z` = 7.63138, `orientation` = 4.53786 WHERE `guid`=42998;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (42998, 11880),(42998, 11881);

UPDATE `creature` SET `id` = 0, `position_x` = -6815.44, `position_y` = 1620.44, `position_z` = 1.48636, `orientation` = 1.3461 WHERE `guid`=42980;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (42980, 11880),(42980, 11881);

UPDATE `creature` SET `id` = 0, `position_x` = -6781.04, `position_y` = 1714.53, `position_z` = 4.37676, `orientation` = 5.08439 WHERE `guid`=42975;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (42975, 11880),(42975, 11881);

UPDATE `creature` SET `id` = 0, `position_x` = -6756.36, `position_y` = 1675.29, `position_z` = 7.12572, `orientation` = 2.96706, `MovementType` = 2 WHERE `guid`=42973;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (42973, 11880),(42973, 11881);
DELETE FROM `creature_addon` WHERE `guid` = 42973;
SET @NPC := 42973;
DELETE FROM `creature_movement` WHERE `id`=@NPC;
INSERT INTO `creature_movement` (`id`,`point`,`positionx`,`positiony`,`positionz`,`orientation`,`waittime`, `scriptid`) VALUES
(@NPC,1,-6756.36000000000000000000, 1675.29000000000000000000, 7.12572000000000000000, 100, 0,0),
(@NPC,2,-6756.36000000000000000000, 1675.29000000000000000000, 7.12572000000000000000, 2.96706000000000000000,30000,1188101),
(@NPC,3,-6749.58, 1674.54, 7.04194,100,0,0),
(@NPC,4,-6749.58, 1674.54, 7.04194, 1.00568,30000,1188101);

UPDATE `creature` SET `id` = 0, `position_x` = -6749.34, `position_y` = 1650.9, `position_z` = 7.76098, `orientation` = 5.39132, `spawndist` = 0, `MovementType` = 0 WHERE `guid`=42971; -- movement? is_spawn!
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (42971, 11880),(42971, 11881);

UPDATE `creature` SET `id` = 0, `position_x` = -6715.93, `position_y` = 1682.96, `position_z` = 7.09856, `orientation` = 5.34862, `spawndist` = 5, `MovementType` = 1 WHERE `guid`=42972;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (42972, 11880),(42972, 11881);

UPDATE `creature` SET `id` = 0, `position_x` = -6684.47, `position_y` = 1650.19, `position_z` = 8.12534, `orientation` = 0, `spawndist` = 5, `MovementType` = 1 WHERE `guid`=42974;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (42974, 11880),(42974, 11881);

UPDATE `creature` SET `position_x` = -6350.9, `position_y` = 183.371, `position_z` = 5.43402, `orientation` = 5.38548 WHERE `guid`=43083;

UPDATE `creature` SET `id` = 0, `position_x` = -6482.68, `position_y` = 249.992, `position_z` = 3.54081, `orientation` = 5.03239 WHERE `guid`=43092;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (43092, 11880),(43092, 15213);

-- Pathing for Twilight Keeper Havunth Entry: 11804
SET @NPC := 11804;
DELETE FROM `creature_movement` WHERE `id` = 42747;
UPDATE `creature` SET `spawndist`=0,`MovementType`=4,`position_x`=-6925.26,`position_y`=1131.22,`position_z`=4.18033,`orientation`=5.61996,`MovementType`=4 WHERE `id`=11804;
DELETE FROM `creature_movement_template` WHERE `entry`=@NPC;
INSERT INTO `creature_movement_template` (`entry`,`point`,`positionx`,`positiony`,`positionz`,`orientation`,`waittime`,`scriptid`) VALUES
(@NPC,1,-6926.195, 1127.408, 3.616991,100,0,0),
(@NPC,2,-6931.969, 1121.17, 2.491991,100,0,0),
(@NPC,3,-6937.771, 1115.548, 0.9647331,100,0,0),
(@NPC,4,-6942.891, 1110.477, 0.5897331,100,0,0),
(@NPC,5,-6950.607, 1104.366, 0.5897331,100,0,0),
(@NPC,6,-6955.977, 1102.652, 0.5897331,100,0,0); -- might be incomplete

UPDATE `creature` SET `position_x`=-7947.3,`position_y`=1975.24,`position_z`=6.05865,`orientation`=4.66003 WHERE `id`=11803; -- is_spawn

UPDATE `creature` SET `id` = 0 WHERE `guid`=42945;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (42945, 11880),(42945, 15213);
UPDATE `creature` SET `id` = 0 WHERE `guid`=43083;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (43083, 11880),(43083, 15213);
UPDATE `creature` SET `id` = 0, `position_x`=-6315.69,`position_y`=183.199,`position_z`=8.49212,`orientation`=2.83624 WHERE `guid`=42946;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (42946, 11880),(42946, 15213);
UPDATE `creature` SET `id` = 0 WHERE `guid`=42951;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (42951, 11880),(42951, 11881);
UPDATE `creature` SET `id` = 0 WHERE `guid`=42954;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (42954, 11880),(42954, 15213);
UPDATE `creature` SET `id` = 0, `spawndist` = 10, `MovementType` = 1 WHERE `guid`=42955;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (42955, 11880),(42955, 11881);
UPDATE `creature` SET `id` = 0 WHERE `guid`=42964;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (42964, 11880),(42964, 11881);
UPDATE `creature` SET `id` = 0 WHERE `guid`=42967;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (42967, 11880),(42967, 11881);
UPDATE `creature` SET `id` = 0, `position_x`=-6782.17,`position_y`=1651.4,`position_z`=6.62664 WHERE `guid`=42977;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (42977, 11880),(42977, 11881);

UPDATE `creature` SET `id` = 0, `MovementType` = 2 WHERE `guid`=42978;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (42978, 11880),(42978, 11881);
DELETE FROM `creature_addon` WHERE `guid` = 42978;
SET @NPC := 42978;
DELETE FROM `creature_movement` WHERE `id`=@NPC;
INSERT INTO `creature_movement` (`id`,`point`,`positionx`,`positiony`,`positionz`,`orientation`,`waittime`, `scriptid`) VALUES
(@NPC,1,-6810.45996093750000000000, 1652.77001953125000000000, 6.36939001083374000000, 100, 0,0),
(@NPC,2,-6810.45996093750000000000, 1652.77001953125000000000, 6.36939001083374000000, 2.67436003684997560000,30000,1188101),
(@NPC,3,-6801.78, 1648.32, 6.43214,100,0,0),
(@NPC,4,-6801.78, 1648.32, 6.43214, 4.59022,30000,1188101);

UPDATE `creature` SET `id` = 0, `MovementType` = 2 WHERE `guid`=42979;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (42979, 11880),(42979, 11881);
DELETE FROM `creature_addon` WHERE `guid` = 42979;
SET @NPC := 42979;
DELETE FROM `creature_movement` WHERE `id`=@NPC;
INSERT INTO `creature_movement` (`id`,`point`,`positionx`,`positiony`,`positionz`,`orientation`,`waittime`, `scriptid`) VALUES
(@NPC,1,-6817.77978515625000000000,1674.48999023437500000000,6.36939001083374000000,100,0,0),
(@NPC,2,-6817.77978515625000000000,1674.48999023437500000000,6.36939001083374000000,2.75762009620666500000,30000,1188101),
(@NPC,3,-6811.51, 1673.56, 6.45273,100,0,0),
(@NPC,4,-6811.51, 1673.56, 6.45273, 0.15708,30000,1188101);

UPDATE `creature` SET `id` = 0 WHERE `guid`=42981;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (42981, 11880),(42981, 11881);
UPDATE `creature` SET `id` = 0, `position_x`=-6690.13,`position_y`=1550.85,`position_z`=8.2335,`orientation`=3.89208 WHERE `guid`=42982;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (42982, 11880),(42982, 11881);
UPDATE `creature` SET `id` = 0 WHERE `guid`=42985;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (42985, 11880),(42985, 15213);
UPDATE `creature` SET `id` = 0 WHERE `guid`=42986;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (42986, 11880),(42986, 15213);
UPDATE `creature` SET `id` = 0 WHERE `guid`=42987;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (42987, 11880),(42987, 15213);
UPDATE `creature` SET `id` = 0 WHERE `guid`=42988;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (42988, 11880),(42988, 11881);
UPDATE `creature` SET `id` = 0 WHERE `guid`=42991;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (42991, 11880),(42991, 11881);
UPDATE `creature` SET `id` = 0 WHERE `guid`=43015;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (43015, 11880),(43015, 11881);
UPDATE `creature` SET `id` = 0 WHERE `guid`=43016;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (43016, 11880),(43016, 11881);
UPDATE `creature` SET `id` = 0 WHERE `guid`=43017;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (43017, 11880),(43017, 11881);
UPDATE `creature` SET `id` = 0 WHERE `guid`=43018;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (43018, 11880),(43018, 11881);
UPDATE `creature` SET `id` = 0 WHERE `guid`=43019;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (43019, 11880),(43019, 11881);
UPDATE `creature` SET `id` = 0 WHERE `guid`=43022;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (43022, 11880),(43022, 11881);
UPDATE `creature` SET `id` = 0 WHERE `guid`=43030;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (43030, 11880),(43030, 11881);
UPDATE `creature` SET `id` = 0 WHERE `guid`=43034;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (43034, 11880),(43034, 11881);
UPDATE `creature` SET `id` = 0, `MovementType` = 2 WHERE `guid`=43035;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (43035, 11880),(43035, 11881);
DELETE FROM `creature_addon` WHERE `guid` = 43035;
SET @NPC := 43035;
DELETE FROM `creature_movement` WHERE `id`=@NPC;
INSERT INTO `creature_movement` (`id`,`point`,`positionx`,`positiony`,`positionz`,`orientation`,`waittime`, `scriptid`) VALUES
(@NPC,1,-6699.49023437500000000000,1546.80004882812500000000,8.29697036743164000000,100,0,0),
(@NPC,2,-6699.49023437500000000000,1546.80004882812500000000,8.29697036743164000000,3.64773988723754900000,30000,1188101),
(@NPC,3,-6694.64, 1546.7, 8.30536,100,0,0),
(@NPC,4,-6694.64, 1546.7, 8.30536, 0.872665,30000,1188101);

UPDATE `creature` SET `id` = 0, `position_x` = -7014.9, `position_y` = 1151.33, `position_z` = 7.3, `orientation` = 0, `MovementType` = 1, `spawndist` = 5 WHERE `guid`=43039; -- is_spawn, but z is bad 6.29402
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (43039, 11880),(43039, 11881);
UPDATE `creature` SET `id` = 0 WHERE `guid`=43082;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (43082, 11880),(43082, 15213);
UPDATE `creature` SET `id` = 0 WHERE `guid`=43087;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (43087, 11880),(43087, 15213);
UPDATE `creature` SET `id` = 0, `spawndist` = 5, `MovementType` = 1 WHERE `guid`=43088;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (43088, 11880),(43088, 15213);
UPDATE `creature` SET `id` = 0 WHERE `guid`=43089;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (43089, 11880),(43089, 15213);
UPDATE `creature` SET `id` = 0 WHERE `guid`=43090;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (43090, 11880),(43090, 15213);
UPDATE `creature` SET `id` = 0 WHERE `guid`=43091;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (43091, 11880),(43091, 15213);
UPDATE `creature` SET `id` = 0 WHERE `guid`=43093;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (43093, 11880),(43093, 15213);
UPDATE `creature` SET `id` = 0 WHERE `guid`=43094;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (43094, 11880),(43094, 15213);
UPDATE `creature` SET `id` = 0 WHERE `guid`=43095;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (43095, 11880),(43095, 15213);
UPDATE `creature` SET `id` = 0 WHERE `guid`=43096;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (43096, 11880),(43096, 15213);

-- 42928 path should be longer

-- NEW
DELETE FROM `creature` WHERE `guid` IN (42786,42787,42788) AND `id` = 0;
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
(42786, 0, 1, -7001.42, 1106.25, 10.8785, 2.67035, 300, 300, 0, 0),
(42787, 0, 1, -6984.15, 1148.35, 9.63545, 0, 300, 300, 3, 1),
(42788, 0, 1, -6482.97, 216.829, 4.56908, 0, 300, 300, 5, 1);

REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES
(42786, 11880),(42786, 11881),
(42787, 11880),(42787, 11881),
(42788, 11880),(42788, 15213);

REPLACE INTO `creature_addon` (`guid`, `sheath_state`, `stand_state`) VALUES (42786, 1, 3);

