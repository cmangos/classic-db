-- Fix gizzletone Caravan Escort Quests
-- https://classic.wowhead.com/npc=11626/rigger-gizelton
-- https://classic.wowhead.com/quest=5943/gizelton-caravan
SET @SGUID := 19019; -- sd scripted npcs npc_rigger_gizelton & npc_cork_gizelton, normal pathing not on sd escort.

-- Update spawn positions
-- Cork Gizelton
UPDATE `creature` SET `position_x`='-691.4602', `position_y`='1520.0903', `position_z`='90.361115', `orientation`='0.506145',`MovementType`='0' WHERE (`guid`='28714');
-- Rigger Gizelton
UPDATE `creature` SET `position_x`='-694.267', `position_y`='1524.2072', `position_z`='90.361115', `orientation`='0.261799' WHERE (`guid`='28728');
-- Gizelton Caravan Kodo - 1
UPDATE `creature` SET `position_x`='-694.2854', `position_y`='1513.5524', `position_z`='90.4186', `orientation`='5.585053' WHERE (`guid`='27290');
-- Gizelton Caravan Kodo - 2
UPDATE `creature` SET `position_x`='-700.3834', `position_y`='1522.3862', `position_z`='90.37961', `orientation`='4.642575' WHERE (`guid`='27289');

-- On Respawn script, timers based on ptr tests
-- On respawn Rigger Gizleton doesnt have any npc flags, only gets added when on Southside point or at escort.
UPDATE `creature_template` SET `NpcFlags`='0' WHERE (`Entry`='11626');

-- On respawn Cork Gizleton movement gets added after 10 minutes
UPDATE `creature_template` SET MovementType='0' WHERE (`Entry`='11625');

-- Delete old Group Setting
DELETE FROM `creature_linking` WHERE (`master_guid`='27290');
DELETE FROM `creature_linking` WHERE (`guid`='27290');
DELETE FROM `creature_linking_template` WHERE (`entry`='11626');
DELETE FROM `creature_linking` WHERE (`guid`='27289');

-- Delete old Waypoints
DELETE FROM creature_movement_template WHERE `Entry` = '11625';
DELETE FROM creature_movement WHERE `Id` = '28714';
DELETE FROM `dbscripts_on_creature_movement` WHERE `id` IN (1162556,1162577,11625197,11625209);

-- Add them into spawn_group
DELETE FROM `spawn_group` WHERE `Id` = @SGUID;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES 
(@SGUID, 'Desolace - Gizelton Caravan', '0', '4', '0', '3');

-- Don't create that formation in db as its temporary formation
DELETE FROM `spawn_group_formation` WHERE `Id` = @SGUID;

DELETE FROM `spawn_group_spawn` WHERE `Id` = @SGUID;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES 
(@SGUID, '28714', '0'),
(@SGUID, '28728', '1'),
(@SGUID, '27290', '2'),
(@SGUID, '27289', '3');

-- Start Script after respawning. Maybe add this to creature_ai_scripts
DELETE FROM creature_spawn_data_template WHERE Entry = '11625';
INSERT INTO `creature_spawn_data_template` (`Entry`, `RelayId`) VALUES ('11625', '1162501');
DELETE FROM creature_spawn_data WHERE Guid = '28714';
INSERT INTO `creature_spawn_data` (`Guid`, `Id`) VALUES ('28714', '11625');

-- Start Script
DELETE FROM `dbscripts_on_relay` WHERE id = '1162501';
INSERT INTO dbscripts_on_relay(id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, datafloat, x, y, z, o, speed, condition_id, comments) VALUES
(1162501,0,0,10,12245,613000,0,0,0,0,0,0,0,0,0,-692.7433,1522.2029,90.361115,0.558505,0,0,'Cork Gizelton - Spawn Vendor Tron'),
(1162501,0,0,29,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Cork Gizelton - Remove Quest Flag'),
(1162501,604000,0,29,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Cork Gizelton - Remove Gossip Flag'),
(1162501,604000,0,0,0,0,0,0,0,0,7505,7,0,0,0,0,0,0,0,0,0,'Cork Gizelton - Say Text'),
(1162501,615000,1,51,150,@SGUID,0,0,0,0,1,0,0,0,0,10,0,0,0,0,0,'Cork Gizelton - Create Formation'),
(1162501,616000,0,20,2,@SGUID,2,0,0,0,2,0,0,0,0,0,0,0,0,0,0, 'Cork Gizelton - Change Movement');

-- Normal Waypoints when not escorting
DELETE FROM waypoint_path WHERE `PathId` = @SGUID;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES 
(@SGUID,1,-675.7278,1517.9236,88.49945,100,0,0),
(@SGUID,2,-648.4431,1503.3954,88.49945,100,0,0),
(@SGUID,3,-624.2618,1493.4584,88.45714,100,0,0),
(@SGUID,4,-593.75134,1483.4001,88.49945,100,0,0),
(@SGUID,5,-562.1685,1471.6372,88.94281,100,0,0),
(@SGUID,6,-533.4119,1449.5094,88.49945,100,0,0),
(@SGUID,7,-520.6191,1421.216,89.20639,100,0,0),
(@SGUID,8,-518.6611,1395.0962,89.20639,100,0,0),
(@SGUID,9,-519.00665,1369.6803,89.20639,100,0,0),
(@SGUID,10,-525.37054,1341.5006,89.20639,100,0,0),
(@SGUID,11,-537.02905,1312.3337,89.216896,100,0,0),
(@SGUID,12,-550.9216,1293.5024,89.354774,100,0,0),
(@SGUID,13,-575.20264,1280.1959,89.229774,100,0,0),
(@SGUID,14,-600.5682,1272.9078,89.229774,100,0,0),
(@SGUID,15,-628.5193,1261.6598,89.25135,100,0,0),
-- Escort quest 1 22:13:06.217 4min wait time
(@SGUID,16,-672.38104,1241.8248,89.29438,100,240000,@SGUID*100+1),
(@SGUID,17,-702.0911,1222.1292,90.12284,100,0,0),
(@SGUID,18,-744.7477,1200.8258,95.18287,100,0,0),
(@SGUID,19,-771.4321,1187.901,98.25634,100,0,0),
(@SGUID,20,-803.5311,1179.235,99.54547,100,0,0),
(@SGUID,21,-832.5382,1181.3547,99.67047,100,0,0),
(@SGUID,22,-862.2913,1184.0946,98.876144,100,0,0),
(@SGUID,23,-891.7814,1182.3727,96.35499,100,0,0),
(@SGUID,24,-922.99176,1182.1969,92.99359,100,0,0),
(@SGUID,25,-952.1483,1182.7887,89.773994,100,0,0),
(@SGUID,26,-988.48364,1181.9297,89.788155,100,0,0),
(@SGUID,27,-1020.989,1180.2745,89.864685,100,0,0),
(@SGUID,28,-1060.42,1186.0337,89.86469,100,0,0), 
(@SGUID,29,-1098.744,1188.7026,89.86469,100,0,0),
(@SGUID,30,-1138.0618,1191.7788,90.572914,100,0,0),
(@SGUID,31,-1182.8483,1200.1156,96.34984,100,0,0),
(@SGUID,32,-1226.5039,1205.4863,103.83428,100,0,0),
(@SGUID,33,-1268.4879,1222.5908,108.49134,100,0,0),
(@SGUID,34,-1313.0289,1233.3356,110.09187,100,0,0),
(@SGUID,35,-1356.9825,1227.0181,111.38581,100,0,0),
(@SGUID,36,-1391.0237,1212.1951,111.57016,100,0,0),
(@SGUID,37,-1426.4119,1195.9067,112.0422,100,0,0),
(@SGUID,38,-1463.2031,1182.9951,111.01453,100,0,0),
(@SGUID,39,-1501.3677,1191.339,103.48702,100,0,0),
(@SGUID,40,-1520.6208,1226.1102,90.0666,100,0,0),
(@SGUID,41,-1519.9893,1271.3883,72.58256,100,0,0),
(@SGUID,42,-1513.6914,1313.9268,62.165665,100,0,0),
(@SGUID,43,-1498.1573,1357.5411,59.049915,100,0,0),
(@SGUID,44,-1487.2424,1404.9263,59.049915,100,0,0),
(@SGUID,45,-1487.8236,1453.8169,59.049915,100,0,0),
(@SGUID,46,-1478.8551,1496.243,59.049915,100,0,0),
(@SGUID,47,-1457.328,1537.5143,59.049915,100,0,0),
(@SGUID,48,-1444.2316,1576.5026,59.049915,100,0,0),
(@SGUID,49,-1454.3466,1618.543,59.049915,100,0,0),
(@SGUID,50,-1486.6782,1650.2642,59.049915,100,0,0),
(@SGUID,51,-1522.2386,1671.6531,59.04992,100,0,0),
(@SGUID,52,-1556.2389,1705.9105,59.04992,100,0,0),
(@SGUID,53,-1591.8552,1736.8423,59.049908,100,0,0),
(@SGUID,54,-1624.5104,1772.0619,59.049908,100,0,0),
(@SGUID,55,-1651.5245,1811.2767,59.015537,100,0,0),
(@SGUID,56,-1677.7819,1850.1833,59.051758,100,0,0),
(@SGUID,57,-1689.2744,1890.9397,60.205524,100,0,0),
(@SGUID,58,-1710.7275,1913.2617,60.63419,100,0,0),
(@SGUID,59,-1751.2269,1919.9458,59.05458,100,0,0),
(@SGUID,60,-1794.5868,1943.3805,61.032635,100,0,0),
(@SGUID,61,-1814.2975,1983.7235,59.057068,100,0,0),
(@SGUID,62,-1821.6091,2027.4595,60.435993,100,0,0),
(@SGUID,63,-1812.5547,2071.5815,63.22072,100,0,0),
(@SGUID,64,-1802.8966,2119.6067,63.560505,100,0,0),
(@SGUID,65,-1801.3325,2165.161,60.226727,100,0,0),
(@SGUID,66,-1812.3639,2205.6545,59.94646,100,0,0),
(@SGUID,67,-1836.678,2242.988,59.94646,100,0,0),
(@SGUID,68,-1847.6487,2281.6836,59.94646,100,0,0),
(@SGUID,69,-1868.8641,2323.522,59.911495,100,0,0),
(@SGUID,70,-1891.9938,2367.3472,60.173267,100,0,0),
(@SGUID,71,-1900.2064,2407.6367,59.918755,100,0,0),
(@SGUID,72,-1896.8755,2428.1907,59.94646,100,0,0),
(@SGUID,73,-1912.046,2443.871,59.94646,100,0,0),
(@SGUID,74,-1933.0764,2445.4846,59.94646,100,0,0),
(@SGUID,75,-1942.031,2435.7446,60.367874,100,0,0),
(@SGUID,76,-1938.1177,2419.8853,60.81385,100,0,0),
-- Southside wait
(@SGUID,77,-1924.2578,2408.5117,60.668755,100,616000,@SGUID*100+2),
(@SGUID,78,-1904.0231,2395.005,59.857014,100,0,0),
(@SGUID,79,-1889.7224,2362.4868,59.929607,100,0,0),
(@SGUID,80,-1876.6744,2333.6284,59.929607,100,0,0),
(@SGUID,81,-1857.4191,2306.642,59.94646,100,0,0),
(@SGUID,82,-1844.5028,2263.2466,59.94646,100,0,0),
(@SGUID,83,-1829.3954,2225.2505,59.94646,100,0,0),
(@SGUID,84,-1806.38,2200.0608,59.94646,100,0,0),
-- Escort 2
(@SGUID,85,-1803.0452,2183.6484,59.94646,100,240000,@SGUID*100+3),
(@SGUID,86,-1802.5979,2105.9092,63.560505,100,0,0),
(@SGUID,87,-1810.5092,2075.089,63.224747,100,0,0),
(@SGUID,88,-1821.3414,2042.4484,61.039787,100,0,0),
(@SGUID,89,-1817.6213,2006.4366,59.560993,100,0,0),
(@SGUID,90,-1813.1588,1972.1124,59.182068,100,0,0),
(@SGUID,91,-1794.0317,1942.0751,60.907635,100,0,0),
(@SGUID,92,-1764.0632,1920.613,59.05458,100,0,0),
(@SGUID,93,-1723.565,1916.7148,59.593906,100,0,0),
(@SGUID,94,-1695.7418,1904.3505,61.188652,100,0,0),
(@SGUID,95,-1683.8158,1869.5513,59.07967,100,0,0),
(@SGUID,96,-1666.9686,1833.8961,59.051758,100,0,0),
(@SGUID,97,-1646.0853,1804.0592,59.015537,100,0,0),
(@SGUID,98,-1619.1812,1765.5859,59.049908,100,0,0),
(@SGUID,99,-1587.1548,1734.1973,59.049908,100,0,0),
(@SGUID,100,-1551.1473,1701.2848,59.04992,100,0,0),
(@SGUID,101,-1515.6584,1667.2366,59.04992,100,0,0),
(@SGUID,102,-1472.0985,1642.029,59.049915,100,0,0),
(@SGUID,103,-1451.7255,1606.0592,59.049915,100,0,0),
(@SGUID,104,-1442.3729,1572.0759,59.049915,100,0,0),
(@SGUID,105,-1459.1107,1529.909,59.049915,100,0,0),
(@SGUID,106,-1478.3303,1491.1677,59.049915,100,0,0),
(@SGUID,107,-1490.0026,1454.6869,59.049915,100,0,0),
(@SGUID,108,-1486.0092,1416.9645,59.049915,100,0,0),
(@SGUID,109,-1490.9955,1379.0923,59.049915,100,0,0),
(@SGUID,110,-1508.8787,1333.4902,59.843616,100,0,0),
(@SGUID,111,-1516.7701,1289.3403,67.27836,100,0,0),
(@SGUID,112,-1522.9729,1246.2924,82.34855,100,0,0),
(@SGUID,113,-1517.8191,1215.1322,93.64741,100,0,0),
(@SGUID,114,-1491.792,1186.5,106.449196,100,0,0),
(@SGUID,115,-1456.9713,1186.4501,111.32605,100,0,0),
(@SGUID,116,-1419.738,1199.8627,112.1672,100,0,0),
(@SGUID,117,-1374.7692,1217.6118,111.47116,100,0,0),
(@SGUID,118,-1330.6395,1231.1997,110.704414,100,0,0),
(@SGUID,119,-1290.5557,1230.9615,109.361824,100,0,0),
(@SGUID,120,-1257.5111,1216.885,107.94812,100,0,0),
(@SGUID,121,-1228.2058,1206.8599,104.103325,100,0,0),
(@SGUID,122,-1182.9585,1201.6763,96.363266,100,0,0),
(@SGUID,123,-1137.4589,1192.5616,90.44279,100,0,0),
(@SGUID,124,-1100.8073,1188.0914,89.8647,100,0,0),
(@SGUID,125,-1055.1915,1184.5875,89.86469,100,0,0),
(@SGUID,126,-1008.0901,1178.2202,89.864685,100,0,0),
(@SGUID,127,-970.0092,1183.06,89.788155,100,0,0),
(@SGUID,128,-922.1035,1180.7637,93.01398,100,0,0),
(@SGUID,129,-878.18225,1184.7477,97.80909,100,0,0),
(@SGUID,130,-841.5321,1184.3195,99.751144,100,0,0),
(@SGUID,131,-803.15393,1177.4624,99.54547,100,0,0),
(@SGUID,132,-764.5057,1188.0039,97.64086,100,0,0),
(@SGUID,133,-729.5117,1209.4248,92.434364,100,0,0),
(@SGUID,134,-689.8377,1229.2766,89.51298,100,0,0),
(@SGUID,135,-655.1121,1249.859,89.29437,100,0,0),
(@SGUID,136,-620.4518,1263.4858,89.25135,100,0,0),
(@SGUID,137,-586.466,1274.8987,89.229774,100,0,0),
(@SGUID,138,-549.01215,1293.3293,89.229774,100,0,0),
(@SGUID,139,-530.92426,1322.5577,89.216896,100,0,0),
(@SGUID,140,-520.4021,1351.5944,89.20639,100,0,0),
(@SGUID,141,-517.1392,1380.641,89.20639,100,0,0),
(@SGUID,142,-517.5762,1420.5201,89.20639,100,0,0),
(@SGUID,143,-531.42255,1453.1138,88.49945,100,0,0),
(@SGUID,144,-558.45746,1471.7168,88.99945,100,0,0),
(@SGUID,145,-601.5401,1483.0059,88.45714,100,0,0),
(@SGUID,146,-640.8963,1497.6324,88.49945,100,0,0),
(@SGUID,147,-666.75806,1526.0831,88.49945,100,0,0),
(@SGUID,148,-684.5291,1542.2109,88.44154,100,0,0),
(@SGUID,149,-696.062,1542.2239,90.02724,100,0,0),
(@SGUID,150,-698.582,1525.7721,90.37445,100,0,0),
(@SGUID,151,-691.2446,1516.9963,90.48822,100,0,0),
(@SGUID,152,-691.2446,1516.9963,90.48822,5.707226753234863281,619000,@SGUID*100+4);

DELETE FROM waypoint_path_name WHERE PathId IN (@SGUID);
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES 
(@SGUID, 'Kalimdor (Desolace) - Cork Gizelton (11625) - npc_cork_gizelton - Normal Path');

-- Movement Scripts
-- Normal Waypoints
DELETE FROM `dbscripts_on_creature_movement` WHERE id IN (@SGUID*100+1, @SGUID*100+2, @SGUID*100+3, @SGUID*100+4);
INSERT INTO dbscripts_on_creature_movement(id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, datafloat, x, y, z, o, speed, condition_id, comments) VALUES
-- Escort 1 stop
(@SGUID*100+1,1000,0,29,2,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Cork Gizelton - Add QuestGiver Flag'),
(@SGUID*100+1,1000,0,0,0,0,0,0,0,0,7474,0,0,0,0,0,0,0,0,0,0,'Cork Gizelton - Say Text'),
-- No player took quest, remove QuestGiver flag and start waypoints again.
(@SGUID*100+1,230000,0,29,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Cork Gizelton - Remove QuestGiver Flag'),
-- Southside stop
(@SGUID*100+2,5000,0,29,1,1,0,11626,20,0,0,0,0,0,0,0,0,0,0,0,0,'Rigger Gizelton - Add Gossip Flag'),
(@SGUID*100+2,6000,0,10,12246,609000,0,0,0,0,0,0,0,0,0,-1926.6038,2412.7925,60.695602,0.1745329,0,0,'Cork Gizelton - Spawn Super-Seller 680'),
(@SGUID*100+2,605000,0,29,1,0,0,11626,20,0,0,0,0,0,0,0,0,0,0,0,0,'Rigger Gizelton - Remove Gossip Flag'),
(@SGUID*100+2,605000,1,0,0,0,0,11626,20,0,7506,0,0,0,0,0,0,0,0,0,0,'Rigger Gizelton - Say Text'),
-- Escort 2 stop
(@SGUID*100+3,0,0,29,2,1,0,11626,20,0,0,0,0,0,0,0,0,0,0,0,0,'Rigger Gizelton - Add QuestGiver Flag'),
(@SGUID*100+3,1000,0,0,0,0,0,11626,20,0,7475,0,0,0,0,0,0,0,0,0,0,'Rigger Gizelton - Say Text'),
-- No player took quest, remove QuestGiver flag and start waypoints again.
(@SGUID*100+3,230000,0,29,2,0,0,11626,20,0,0,0,0,0,0,0,0,0,0,0,0,'Rigger Gizelton - Remove QuestGiver Flag'),
-- Northside Stop
(@SGUID*100+4,5000,0,28,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Cork Gizelton - Add QuestGiver Flag'),
(@SGUID*100+4,5000,0,10,12245,613000,0,0,0,0,0,0,0,0,0,-692.7433,1522.2029,90.361115,0.55850,0,0,'Cork Gizelton - Spawn Super-Seller 680'),
(@SGUID*100+4,609000,0,0,0,0,0,0,0,0,7505,0,0,0,0,0,0,0,0,0,0,'Cork Gizelton - Say Text'),
(@SGUID*100+4,609000,1,29,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Cork Gizelton - Remove QuestGiver Flag');

-- Bonus:
-- https://tbc.wowhead.com/npc=12245/vendor-tron-1000
-- https://classic.wowhead.com/npc=12245/vendor-tron-1000
-- 31 items, some vendors have items infront of these and after (unique items)
UPDATE `npc_vendor_template` SET `slot` = 101 WHERE `entry` = 107 AND `item` = 7005; -- Skinning Knife
UPDATE `npc_vendor_template` SET `slot` = 102 WHERE `entry` = 107 AND `item` = 6256; -- Fishing Pole
UPDATE `npc_vendor_template` SET `slot` = 103 WHERE `entry` = 107 AND `item` = 6217; -- Copper Rod
UPDATE `npc_vendor_template` SET `slot` = 104 WHERE `entry` = 107 AND `item` = 5956; -- Blacksmith Hammer
UPDATE `npc_vendor_template` SET `slot` = 105 WHERE `entry` = 107 AND `item` = 2901; -- Mining Pick
UPDATE `npc_vendor_template` SET `slot` = 106 WHERE `entry` = 107 AND `item` = 2320; -- Coarse Thread
UPDATE `npc_vendor_template` SET `slot` = 107 WHERE `entry` = 107 AND `item` = 2321; -- Fine Thread
UPDATE `npc_vendor_template` SET `slot` = 108 WHERE `entry` = 107 AND `item` = 4291; -- Silken Thread
UPDATE `npc_vendor_template` SET `slot` = 109 WHERE `entry` = 107 AND `item` = 8343; -- Heavy Silken Thread
UPDATE `npc_vendor_template` SET `slot` = 110 WHERE `entry` = 107 AND `item` = 14341; -- Rune Thread
UPDATE `npc_vendor_template` SET `slot` = 111 WHERE `entry` = 107 AND `item` = 2678; -- Mild Spices
UPDATE `npc_vendor_template` SET `slot` = 112 WHERE `entry` = 107 AND `item` = 2692; -- Hot Spices
UPDATE `npc_vendor_template` SET `slot` = 113 WHERE `entry` = 107 AND `item` = 3713; -- Soothing Spices
UPDATE `npc_vendor_template` SET `slot` = 114 WHERE `entry` = 107 AND `item` = 2880; -- Weak Flux
UPDATE `npc_vendor_template` SET `slot` = 115 WHERE `entry` = 107 AND `item` = 3466; -- Strong Flux
UPDATE `npc_vendor_template` SET `slot` = 116 WHERE `entry` = 107 AND `item` = 3857; -- Coal
UPDATE `npc_vendor_template` SET `slot` = 117 WHERE `entry` = 107 AND `item` = 2928; -- Dust of Decay
UPDATE `npc_vendor_template` SET `slot` = 118 WHERE `entry` = 107 AND `item` = 2604; -- Red Dye
UPDATE `npc_vendor_template` SET `slot` = 119 WHERE `entry` = 107 AND `item` = 2325; -- Black Dye
UPDATE `npc_vendor_template` SET `slot` = 120 WHERE `entry` = 107 AND `item` = 4341; -- Yellow Dye
UPDATE `npc_vendor_template` SET `slot` = 121 WHERE `entry` = 107 AND `item` = 4342; -- Purple Dye
UPDATE `npc_vendor_template` SET `slot` = 122 WHERE `entry` = 107 AND `item` = 4340; -- Gray Dye
UPDATE `npc_vendor_template` SET `slot` = 123 WHERE `entry` = 107 AND `item` = 3371; -- Empty Vial
UPDATE `npc_vendor_template` SET `slot` = 124 WHERE `entry` = 107 AND `item` = 3372; -- Leaded Vial
UPDATE `npc_vendor_template` SET `slot` = 125 WHERE `entry` = 107 AND `item` = 8925; -- Crystal Vial
UPDATE `npc_vendor_template` SET `slot` = 126 WHERE `entry` = 107 AND `item` = 18256; -- Imbued Vial
UPDATE `npc_vendor_template` SET `slot` = 127 WHERE `entry` = 107 AND `item` = 4289; -- Salt
UPDATE `npc_vendor_template` SET `slot` = 128 WHERE `entry` = 107 AND `item` = 4399; -- Wooden Stock
UPDATE `npc_vendor_template` SET `slot` = 129 WHERE `entry` = 107 AND `item` = 4400; -- Heavy Stock
UPDATE `npc_vendor_template` SET `slot` = 130 WHERE `entry` = 107 AND `item` = 6530; -- Nightcrawlers
UPDATE `npc_vendor_template` SET `slot` = 131 WHERE `entry` = 107 AND `item` = 6532; -- Bright Baubles

UPDATE `npc_vendor` SET `maxcount` = 4 WHERE `entry` = 12245 AND `item` IN (1710,3827); -- Greater Healing Potion & Mana Potion
-- 35 items
UPDATE `npc_vendor_template` SET `slot` = 101 WHERE `entry` = 440 AND `item` = 159; -- Refreshing Spring Water
UPDATE `npc_vendor_template` SET `slot` = 102 WHERE `entry` = 440 AND `item` = 1205; -- Melon Juice
UPDATE `npc_vendor_template` SET `slot` = 104 WHERE `entry` = 440 AND `item` = 1645; -- Moonberry Juice
UPDATE `npc_vendor_template` SET `slot` = 103 WHERE `entry` = 440 AND `item` = 1708; -- Sweet Nectar
UPDATE `npc_vendor_template` SET `slot` = 107 WHERE `entry` = 440 AND `item` = 2515; -- Sharp Arrow
UPDATE `npc_vendor_template` SET `slot` = 111 WHERE `entry` = 440 AND `item` = 2519; -- Heavy Shot
UPDATE `npc_vendor_template` SET `slot` = 108 WHERE `entry` = 440 AND `item` = 3030; -- Razor Arrow
UPDATE `npc_vendor_template` SET `slot` = 112 WHERE `entry` = 440 AND `item` = 3033; -- Solid Shot
UPDATE `npc_vendor_template` SET `slot` = 115 WHERE `entry` = 440 AND `item` = 4470; -- Simple Wood
UPDATE `npc_vendor_template` SET `slot` = 116 WHERE `entry` = 440 AND `item` = 4471; -- Flint and Tinder
UPDATE `npc_vendor_template` SET `slot` = 106 WHERE `entry` = 440 AND `item` = 4497; -- Heavy Brown Bag
UPDATE `npc_vendor_template` SET `slot` = 105 WHERE `entry` = 440 AND `item` = 4498; -- Brown Leather Satchel
UPDATE `npc_vendor_template` SET `slot` = 113 WHERE `entry` = 440 AND `item` = 11284; -- Accurate Slugs
UPDATE `npc_vendor_template` SET `slot` = 109 WHERE `entry` = 440 AND `item` = 11285; -- Jagged Arrow
UPDATE `npc_vendor_template` SET `slot` = 117 WHERE `entry` = 440 AND `item` = 25873; -- Keen Throwing Knife
UPDATE `npc_vendor_template` SET `slot` = 119 WHERE `entry` = 440 AND `item` = 25876; -- Gleaming Throwing Axe
UPDATE `npc_vendor_template` SET `slot` = 110 WHERE `entry` = 440 AND `item` = 28053; -- Wicked Arrow
UPDATE `npc_vendor_template` SET `slot` = 114 WHERE `entry` = 440 AND `item` = 28060; -- Impact Shot
UPDATE `npc_vendor_template` SET `slot` = 121 WHERE `entry` = 440 AND `item` = 29009; -- Heavy Throwing Dagger
UPDATE `npc_vendor_template` SET `slot` = 122 WHERE `entry` = 440 AND `item` = 29010; -- Wicked Throwing Dagger
UPDATE `npc_vendor_template` SET `slot` = 120 WHERE `entry` = 440 AND `item` = 29013; -- Jagged Throwing Axe
-- TBC+ ?
-- DELETE FROM `npc_vendor` WHERE `entry` IN (1149,2401,2803,2806,3541,8139,11038,11555,12021,12246) AND `item` IN (25875,29014); -- Can be placed in the shared vendor_template
-- REPLACE INTO `npc_vendor_template` (`entry`, `item`, `comments`, `slot`) VALUES
-- -- 1149	Uthok
-- -- 2401	Kayren Soothallow
-- -- 2803	Malygen
-- -- 2806	Bale
-- -- 3541	Sarah Raycroft
-- -- 8139	Jabbey
-- -- 11038	Caretaker Alen
-- -- 11555	Gorn One Eye
-- -- 12021	Daeolyn Summerleaf
-- -- 12246	Super-Seller 680
-- -- https://tbc.wowhead.com/item=25875/deadly-throwing-axe#sold-by
-- (440, 25875, 'Deadly Throwing Axe', 18),
-- -- https://tbc.wowhead.com/item=29014/blacksteel-throwing-dagger#sold-by
-- (440, 29014, 'Blacksteel Throwing Dagger', 23);

-- guessed
UPDATE `npc_vendor` SET `slot` = 1 WHERE `entry` = 12245 AND `item` = 1710; -- Greater Healing Potion
UPDATE `npc_vendor` SET `slot` = 2 WHERE `entry` = 12245 AND `item` = 3827; -- Mana Potion
UPDATE `npc_vendor` SET `slot` = 3 WHERE `entry` = 12245 AND `item` = 3735; -- Recipe: Hot Lion Chops (125)
UPDATE `npc_vendor` SET `slot` = 4 WHERE `entry` = 12245 AND `item` = 5489; -- Recipe: Lean Venison (110)
UPDATE `npc_vendor` SET `slot` = 5 WHERE `entry` = 12245 AND `item` = 12228; -- Recipe: Roast Raptor (175)
UPDATE `npc_vendor` SET `slot` = 6 WHERE `entry` = 12245 AND `item` = 12231; -- Recipe: Jungle Stew (175)
UPDATE `npc_vendor` SET `slot` = 7 WHERE `entry` = 12245 AND `item` = 12232; -- Recipe: Carrion Surprise (175)
UPDATE `npc_vendor` SET `slot` = 8 WHERE `entry` = 12245 AND `item` = 12240; -- Recipe: Heavy Kodo Stew (200)

UPDATE `npc_vendor` SET `slot` = 1 WHERE `entry` = 12246 AND `item` = 1477; -- Scroll of Agility II
UPDATE `npc_vendor` SET `slot` = 2 WHERE `entry` = 12246 AND `item` = 1711; -- Scroll of Stamina II
UPDATE `npc_vendor` SET `slot` = 3 WHERE `entry` = 12246 AND `item` = 2289; -- Scroll of Strength II
UPDATE `npc_vendor` SET `slot` = 4 WHERE `entry` = 12246 AND `item` = 2290; -- Scroll of Intellect II
UPDATE `npc_vendor` SET `slot` = 5 WHERE `entry` = 12246 AND `item` = 4421; -- Scroll of Protection III
UPDATE `npc_vendor` SET `slot` = 6 WHERE `entry` = 12246 AND `item` = 4424; -- Scroll of Spirit III
UPDATE `npc_vendor` SET `slot` = 7 WHERE `entry` = 12246 AND `item` = 3734; -- Recipe: Big Bear Steak (110)
UPDATE `npc_vendor` SET `slot` = 8 WHERE `entry` = 12246 AND `item` = 12227; -- Recipe: Lean Wolf Steak (125)
UPDATE `npc_vendor` SET `slot` = 9 WHERE `entry` = 12246 AND `item` = 4609; -- Recipe: Barbecued Buzzard Wing (175)
UPDATE `npc_vendor` SET `slot` = 10 WHERE `entry` = 12246 AND `item` = 12229; -- Recipe: Hot Wolf Ribs (175)
UPDATE `npc_vendor` SET `slot` = 11 WHERE `entry` = 12246 AND `item` = 12233; -- Recipe: Mystery Stew (175)
UPDATE `npc_vendor` SET `slot` = 12 WHERE `entry` = 12246 AND `item` = 12239; -- Recipe: Dragonbreath Chili (200)

