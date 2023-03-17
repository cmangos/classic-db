-- Suntara Stones Escort quest
SET @PATH := 8284;

-- Dorius Stonetender escort quest waypoints
DELETE FROM waypoint_path_name WHERE `PathId` = @PATH;
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES (@PATH, ' Searing Gorge - Suntara Stones - Escort Quest');

DELETE FROM waypoint_path WHERE `PathId` = @PATH;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES 
(@PATH,1,-7007.35,-1739.4038,234.22345,100,0,0),
(@PATH,2,-7007.5977,-1733.5464,234.22345,100,0,0),
(@PATH,3,-7008.2,-1729.9734,234.13889,100,0,0),
(@PATH,4,-7004.6772,-1725.7087,234.28781,100,0,0),
(@PATH,5,-6999.761,-1727.7898,235.76096,100,0,0),
(@PATH,6,-6994.8945,-1732.6509,238.11496,100,0,0),
(@PATH,7,-6988.7,-1736.4849,240.50157,100,0,0),
(@PATH,8,-6975.559,-1736.8402,241.82066,100,0,0),
(@PATH,9,-6966.643,-1738.5826,241.8706,100,0,0),
(@PATH,10,-6949.428,-1739.8962,241.74365,100,0,0),
(@PATH,11,-6935.871,-1737.2726,241.18848,100,0,0),
(@PATH,12,-6933.8896,-1726.99,241.93823,100,0,0),
(@PATH,13,-6933.8853,-1720.4655,242.0083,100,0,0),
(@PATH,14,-6928.8735,-1718.0385,242.51015,100,0,0),
(@PATH,15,-6922.6333,-1717.234,241.65321,100,0,0),
(@PATH,16,-6911.9966,-1716.894,241.87001,100,0,0),
(@PATH,17,-6898.189,-1721.564,243.02145,100,0,0),
(@PATH,18,-6879.2607,-1735.6318,242.21579,100,0,0),
(@PATH,19,-6875.3813,-1740.9135,244.63303,100,0,0),
(@PATH,20,-6870.965,-1744.6965,246.89084,100,0,0),
(@PATH,21,-6868.176,-1747.5645,249.3713,100,0,0),
(@PATH,22,-6864.226,-1749.0392,251.05151,100,0,0),
(@PATH,23,-6856.3267,-1751.0432,251.59106,100,0,0),
(@PATH,24,-6856.3267,-1751.0432,251.59106,6.0350,9000,@PATH*100+1),
(@PATH,25,-6857.2495,-1739.843,251.59106,100,0,0),
(@PATH,26,-6860.625,-1731.1506,251.87221,100,0,0),
(@PATH,27,-6861.4917,-1725.185,251.7599,100,0,0),
(@PATH,28,-6860.8384,-1717.3593,251.58485,100,0,0),
(@PATH,29,-6857.7095,-1709.6969,251.58485,100,0,0),
(@PATH,30,-6852.437,-1699.1887,250.47266,100,0,0),
(@PATH,31,-6849.2607,-1690.6925,250.97754,100,0,0),
(@PATH,32,-6843.33,-1683.049,251.52197,100,0,0),
(@PATH,33,-6835.1846,-1680.0264,251.52197,100,0,0),
(@PATH,34,-6828.133,-1678.4764,251.63634,100,0,0),
(@PATH,35,-6821.616,-1675.821,251.54259,100,0,0),
(@PATH,36,-6816.5176,-1672.6562,250.88634,100,4000,0),
(@PATH,37,-6816.5176,-1672.6562,250.88634,100,3000,0),
(@PATH,38,-6816.5176,-1672.6562,250.88634,5.309157848358154296,3000,@PATH*100+2),
(@PATH,39,-6809.266,-1681.4537,250.27257,100,0,0),
(@PATH,40,-6806.062,-1686.4592,253.13202,100,0,0),
(@PATH,41,-6805.2173,-1687.8234,254.06775,100,0,0),
(@PATH,42,-6803.182,-1691.2994,256.37674,100,0,0),
(@PATH,43,-6798.365,-1698.1028,259.5503,100,0,0),
(@PATH,44,-6792.0083,-1704.2106,259.56085,100,0,0),
(@PATH,45,-6785.5254,-1712.6486,259.56085,100,0,0),
(@PATH,46,-6781.8535,-1721.8246,259.56085,100,0,0),
(@PATH,47,-6778.1675,-1733.2856,259.56085,100,0,0),
(@PATH,48,-6776.8794,-1743.4701,259.57822,100,0,0),
(@PATH,49,-6775.84,-1762.4336,257.35727,100,0,0),
(@PATH,50,-6776.2915,-1771.599,256.96143,100,0,0),
(@PATH,51,-6776.532,-1781.5063,256.96143,100,0,0),
(@PATH,52,-6774.147,-1791.1455,256.96143,100,1000,0),
(@PATH,53,-6774.147,-1791.1455,256.96143,100,5000,@PATH*100+3),
(@PATH,54,-6766.577,-1800.8004,256.91608,100,0,0),
(@PATH,55,-6755.3813,-1804.1647,256.24933,100,0,0),
(@PATH,56,-6743.6665,-1809.9576,254.28375,100,0,0),
(@PATH,57,-6732.5605,-1813.1914,253.66483,100,0,0),
(@PATH,58,-6722.552,-1815.0754,252.80862,100,0,0),
(@PATH,59,-6711.7485,-1815.8403,251.64627,100,0,0),
(@PATH,60,-6696.8335,-1817.226,250.04663,100,4000,@PATH*100+4),
(@PATH,61,-6692.01,-1818.5449,249.74365,100,0,0),
(@PATH,62,-6686.947,-1819.9214,249.62256,100,0,0),
(@PATH,63,-6667.781,-1832.7863,248.3208,100,0,0),
(@PATH,64,-6660.8374,-1836.0184,247.50035,100,0,0),
(@PATH,65,-6648.6987,-1859.2858,244.85265,100,0,0),
(@PATH,66,-6638.862,-1871.7513,244.23521,100,0,0),
(@PATH,67,-6633.4673,-1886.3053,244.23521,100,0,0),
(@PATH,68,-6623.089,-1899.7131,244.39366,100,0,0),
(@PATH,69,-6605.815,-1914.2263,244.38072,100,0,0),
(@PATH,70,-6588.8276,-1919.0641,244.27594,100,0,0),
(@PATH,71,-6566.911,-1924.0061,244.27594,100,0,0),
(@PATH,72,-6544.987,-1938.3533,244.36143,100,0,0),
(@PATH,73,-6530.4478,-1956.4531,245.57872,100,0,0),
(@PATH,74,-6518.979,-1964.602,245.7152,100,0,0),
(@PATH,75,-6499.173,-1969.9186,244.36388,100,0,0),
(@PATH,76,-6483.0522,-1969.9032,244.2755,100,0,0),
(@PATH,77,-6466.489,-1967.2472,244.76877,100,0,0),
(@PATH,78,-6453.063,-1969.6393,245.11765,100,0,0),
(@PATH,79,-6442.995,-1978.2552,244.57297,100,0,0),
(@PATH,80,-6414.674,-1978.6744,247.36795,100,0,0),
(@PATH,81,-6404.737,-1978.191,247.9744,100,0,0),
(@PATH,82,-6393.585,-1979.3717,247.57613,100,0,0),
(@PATH,83,-6388.7646,-1983.4796,246.83272,100,1,@PATH*100+5);

DELETE FROM `dbscripts_on_creature_movement` WHERE id BETWEEN @PATH*100+1 AND @PATH*100+5;
INSERT INTO dbscripts_on_creature_movement(id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, datafloat, x, y, z, o, speed, condition_id, comments) VALUES
(@PATH*100+1,1000,0,0,0,0,0,0,0,0,4345,0,0,0,0,0,0,0,0,0,0,'Dorius Stonetender - Say Text'),
(@PATH*100+1,1000,1,28,8,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Dorius Stonetender - State Kneel'),
(@PATH*100+1,6000,0,10,8337,300000,1,0,0,0,8,0,0,0,0,-6853.902, -1768.343, 253.676, 1.69,0,0,'Dorius Stonetender - Spawn Dark Iron Steelshifter'),
(@PATH*100+1,6000,1,10,8337,300000,2,0,0,0,8,0,0,0,0,-6846.377, -1739.689, 252.630, 4.22,0,0,'Dorius Stonetender - Spawn Dark Iron Steelshifter'),
(@PATH*100+1,6000,2,40,0,0,0,147516,10104,17,0,0,0,0,0,0,0,0,0,0,0,'Dorius Stonetender - Despawn DarkIron GO'),
(@PATH*100+1,6000,2,40,0,0,0,147516,10108,17,0,0,0,0,0,0,0,0,0,0,0,'Dorius Stonetender - Despawn DarkIron GO'),
(@PATH*100+1,8000,1,28,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Dorius Stonetender - Remove State Kneel'),
-- maybe change it
(@PATH*100+2,0,0,0,0,0,0,0,0,0,4355,0,0,0,0,0,0,0,0,0,0,'Dorius Stonetender - Say Text'),
(@PATH*100+2,0,1,1,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Dorius Stonetender - Emote Exclamation'),
(@PATH*100+3,0,2,0,0,0,0,0,0,0,4356,0,0,0,0,0,0,0,0,0,0,'Dorius Stonetender - Say Text'),
(@PATH*100+3,0,3,10,8337,300000,3,0,0,0,8,0,0,0,0,-6795.187, -1772.727, 256.857, 5.48,0,0,'Dorius Stonetender - Spawn Dark Iron Steelshifter'),
(@PATH*100+3,0,4,10,8337,300000,4,0,0,0,8,0,0,0,0,-6805.320, -1806.258, 261.357, 0.42,0,0,'Dorius Stonetender - Spawn Dark Iron Steelshifter'),
(@PATH*100+3,0,5,40,0,0,0,147517,10120,17,0,0,0,0,0,0,0,0,0,0,0,'Dorius Stonetender - Despawn DarkIron GO'),
(@PATH*100+3,0,6,40,0,0,0,147517,10127,17,0,0,0,0,0,0,0,0,0,0,0,'Dorius Stonetender - Despawn DarkIron GO'),
(@PATH*100+3,2000,0,28,8,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Dorius Stonetender - State Kneel'),
(@PATH*100+3,4000,1,28,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Dorius Stonetender - Remove State Kneel'),
(@PATH*100+4,3000,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Dorius Stonetender - Set Run'),
(@PATH*100+4,4000,1,0,0,0,0,0,0,0,4357,0,0,0,0,0,0,0,0,0,0,'Dorius Stonetender - Say Text'),
(@PATH*100+5,0,0,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Dorius Stonetender - Change Movement'),
(@PATH*100+5,0,1,0,0,0,0,0,0,0,4363,0,0,0,0,0,0,0,0,0,0,'Dorius Stonetender - Say Text'),
(@PATH*100+5,1000,0,10,8338,10000,0,0,0,0,8,0,0,8338,0,-6369.839,-1974.8733,256.84335,3.5683,0,0,'Dorius Stonetender - Spawn Dark Iron Marksman');

-- Dorius Stonetender rp script when escort is finished
SET @RELAYID := 8284;
DELETE FROM `dbscripts_on_relay` WHERE id = @RELAYID;
INSERT INTO dbscripts_on_relay(id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, datafloat, x, y, z, o, speed, condition_id, comments) VALUES
(@RELAYID,0,0,0,0,0,0,0,0,0,4359,0,0,0,0,0,0,0,0,0,0,'Dorius Stonetender - Say Text'),
(@RELAYID,0,1,15,12218,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Dorius Stonetender - Cast Spell'),
(@RELAYID,1000,0,0,0,0,0,0,0,0,5944,0,0,0,0,0,0,0,0,0,0,'Dorius Stonetender - Say Text'),
(@RELAYID,1000,1,9,10106,300,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Dorius Stonetender - Respawn Object'),
(@RELAYID,1000,2,21,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Dorius Stonetender - Set Active'),
(@RELAYID,1000,3,28,7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Dorius Stonetender - Emote Death'),
(@RELAYID,241000,0,21,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Dorius Stonetender - Remove Active'),
(@RELAYID,241000,1,18,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Dorius Stonetender - Despawn Self');

-- Dark Iron Marksman relayscript OnSpawn
SET @RELAYID := 8338;
DELETE FROM creature_spawn_data_template WHERE Entry = @RELAYID;
INSERT INTO `creature_spawn_data_template` (`Entry`, `RelayId`, `Name`) VALUES (@RELAYID, @RELAYID, 'Dark Iron Marksman - RelayScript on Spawn');
DELETE FROM `dbscripts_on_relay` WHERE id = @RELAYID;
INSERT INTO dbscripts_on_relay(id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, datafloat, x, y, z, o, speed, condition_id, comments) VALUES
(@RELAYID,0,0,0,0,0,0,0,0,0,4358,0,0,0,0,0,0,0,0,0,0,'Dark Iron Marksman - Say Text'),
(@RELAYID,1000,0,15,12198,0,0,8284,30,0,0,0,0,0,0,0,0,0,0,0,0,'Dark Iron Marksman - Cast Spell'),
(@RELAYID,9000,0,0,0,0,0,0,0,0,4362,0,0,0,0,0,0,0,0,0,0,'Dark Iron Marksman - Say Text'),
(@RELAYID,9000,1,15,12244,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,'Dark Iron Marksman - Cast Spell');

-- Dark Iron Steelshifter waypoints
SET @PATH := 8337;
DELETE FROM creature_movement_template WHERE Entry = @PATH;
INSERT INTO `creature_movement_template` (`Entry`, `PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES 
(@PATH,1,1,-6853.902, -1768.343, 253.676,100, 1, @PATH*100+1),
(@PATH,1,2,-6855.8496,-1754.6787,251.59106,100, 1, 3),
(@PATH,2,1,-6846.377,-1739.689,252.630,100, 1, 5),
(@PATH,2,2,-6853.7925,-1748.3933,251.62465,100, 1, 3),
(@PATH,3,1,-6795.187, -1772.727, 256.857,100, 1, 5),
(@PATH,3,2,-6779.0215,-1787.7145,256.96143,100, 1, 3),
(@PATH,4,1,-6805.320, -1806.258, 261.357,100, 1, 5),
(@PATH,4,2,-6778.149,-1798.5288,256.96143,100, 1, 3);

DELETE FROM `dbscripts_on_creature_movement` WHERE id = @PATH*100+1;
INSERT INTO dbscripts_on_creature_movement(id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, datafloat, x, y, z, o, speed, condition_id, comments) VALUES
(@PATH*100+1,0,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Dark Iron Steelshifter - Set Run'),
(@PATH*100+1,0,0,0,0,0,0,0,0,0,4347,0,0,0,0,0,0,0,0,0,0,'Dark Iron Steelshifter - Say Text');

UPDATE `creature_template` SET `MovementType`='2' WHERE (`Entry`='8337');
UPDATE `creature_template` SET `MovementType`='0' WHERE (`Entry`='8338');

UPDATE gameobject SET spawntimesecsmin = '540', spawntimesecsmax = '540' WHERE guid IN (10104, 10108, 10120, 10127);

UPDATE gameobject SET spawntimesecsmin = '-540', spawntimesecsmax = '-540' WHERE guid = '10106' AND id = '175704';

UPDATE `broadcast_text` SET `ChatTypeID`='1' WHERE (`Id`='4358');
UPDATE `broadcast_text` SET `ChatTypeID`='2' WHERE Id IN (4362, 5944);