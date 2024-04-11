-- Searing Gorge
-- Random Updates
-- Magma Elemental 5855 / Blazing Elemental 5850
-- missing spawn added
DELETE FROM creature_addon WHERE guid IN (727,2032);
DELETE FROM creature_movement WHERE id IN (727,2032);
DELETE FROM game_event_creature WHERE guid IN (727,2032);
DELETE FROM game_event_creature_data WHERE guid IN (727,2032);
DELETE FROM creature_battleground WHERE guid IN (727,2032);
DELETE FROM creature_linking WHERE guid IN (727,2032);
DELETE FROM creature where guid IN (727,2032);
INSERT INTO creature (guid, id, map, spawnMask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES
(727,5855,0,1,-6719.53,-1189.84,240.363,0,300,300,7,1),
(2032,5855,0,1,-7144.64,-1054.82,238.397,0,300,300,7,1);

UPDATE creature SET position_x = -7156.9297, position_y = -1407.4802, position_z = 241.69312, spawndist = 0, MovementType = 4 WHERE guid = 5915; -- linear
UPDATE creature SET position_x = -6608.683, position_y = -1302.3628, position_z = 264.2246, spawndist = 0, MovementType = 4 WHERE guid = 6789; -- linear
UPDATE creature SET position_x = -6803.047, position_y = -929.44867, position_z = 244.46275, spawndist = 0, MovementType = 4 WHERE guid = 6217; -- linear
UPDATE creature SET position_x = -7239.14, position_y = -1611.32, position_z = 275.365, spawndist = 0, MovementType = 4 WHERE guid = 6221; -- linear
UPDATE creature SET position_x = -6764.760, position_y = -1612.605, position_z = 189.481430, spawndist = 7, MovementType = 1 WHERE guid = 5735;
UPDATE creature SET position_x = -6848.160156, position_y = -1391.460693, position_z = 168.004318, spawndist = 7, MovementType = 1 WHERE guid = 5784;
-- waypoints
DELETE FROM creature_movement WHERE Id IN (5915,6789,6217,6221);
INSERT INTO creature_movement (id, point, positionx, positiony, positionz, orientation, waittime, scriptid) VALUES
-- 5915 -- moved duplicate from other area
(5915,1 ,-7156.9297,-1407.4802,241.69312,100,1000,0),
(5915,2 ,-7179.78,-1443.9401,240.91745  ,100,0,0),
(5915,3 ,-7176.5083,-1480.5468,242.84668,100,0,0),
(5915,4 ,-7175.3135,-1501.3263,241.46687,100,0,0),
(5915,5 ,-7155.7593,-1518.8125,240.51228,100,0,0),
(5915,6 ,-7130.694,-1544.8479,241.90132 ,100,0,0),
(5915,7 ,-7134.988,-1565.7788,244.94221 ,100,0,0),
(5915,8 ,-7164.297,-1579.7986,243.05586 ,100,0,0),
(5915,9 ,-7183.437,-1585.5332,241.82362 ,100,0,0),
(5915,10,-7212.708,-1598.3909,250.18394 ,100,0,0),
(5915,11,-7214.9746,-1611.699,248.6484  ,100,0,0),
(5915,12,-7213.6167,-1627.5875,246.7612 ,100,0,0),
(5915,13,-7223.9478,-1643.1489,246.73668,100,1000,0),
-- 6789
(6789,1 ,-6608.683,-1302.3628,264.2246,100,1000,0),
(6789,2 ,-6627.968,-1276.7819,262.24048 ,100,0,0),
(6789,3 ,-6637.6274,-1280.2075,259.91913,100,0,0),
(6789,4 ,-6641.3516,-1295.4297,254.98067,100,0,0),
(6789,5 ,-6648.1636,-1309.8978,249.07658,100,0,0),
(6789,6 ,-6666.968,-1337.7314,246.46596 ,100,0,0),
(6789,7 ,-6661.0967,-1360.1471,247.93614,100,0,0),
(6789,8 ,-6663.917,-1380.4147,244.9152  ,100,0,0),
(6789,9 ,-6678.058,-1405.007,241.66734  ,100,0,0),
(6789,10,-6676.9883,-1440.2173,241.28206,100,0,0),
(6789,11,-6644.845,-1472.7877,254.29544 ,100,0,0),
(6789,12,-6618.918,-1475.3031,266.08533 ,100,0,0),
(6789,13,-6603.979,-1510.1133,270.74484 ,100,0,0),
(6789,14,-6600.9263,-1537.0314,273.291  ,100,0,0),
(6789,15,-6592.542,-1569.8473,274.07983,100,1000,0),
-- 6217
(6217,1 ,-6803.047,-929.44867,244.46275,100,1000,0),
(6217,2 ,-6779.5483,-946.3338,242.76218 ,100,0,0),
(6217,3 ,-6758.768,-960.54425,242.28728 ,100,0,0),
(6217,4 ,-6747.4253,-982.50323,240.64752,100,0,0),
(6217,5 ,-6750.5337,-1012.6176,237.84988,100,0,0),
(6217,6 ,-6753.53,-1026.1322,238.35794  ,100,0,0),
(6217,7 ,-6746.212,-1044.3326,240.09598 ,100,0,0),
(6217,8 ,-6717.2124,-1051.9327,240.18286,100,0,0),
(6217,9 ,-6709.28,-1070.0206,240.93405  ,100,0,0),
(6217,10,-6694.229,-1086.2291,240.89777 ,100,0,0),
(6217,11,-6691.5283,-1114.1122,241.30095,100,0,0),
(6217,12,-6693.612,-1155.108,241.40778  ,100,0,0),
(6217,13,-6707.4507,-1181.0604,240.40224,100,1000,0),
-- 6221
(6221,1,-7239.14,-1611.32,275.365,100,1000,0),
(6221,2,-7243.642,-1601.5929,275.50455,100,0,0),
(6221,3,-7253.635,-1589.4459,277.59613,100,0,0),
(6221,4,-7252.4,-1580.02,272.98,100,0,0),
(6221,5,-7248.22,-1566.14,268.842,100,0,0),
(6221,6,-7247.203,-1551.0731,276.60074,100,0,0),
(6221,7,-7240.83,-1532.57,274.116,100,1000,0);

-- shared spawns
-- Magma Elemental 5855 / Blazing Elemental 5850 / Inferno Elemental 5852
DELETE FROM creature_spawn_entry WHERE guid IN (727,5735,5833,5626);
INSERT INTO creature_spawn_entry (guid,entry) VALUES
(727,5855),(727,5852),
(5735,5855),(5735,5850),
(5833,5855),(5833,5850),
(5626,5855),(5626,5852);
UPDATE `creature` SET `id` = 0 WHERE `guid` IN (727,5735,5833,5626);

-- Heavy War Golem 5854
DELETE FROM creature_addon WHERE guid IN (615);
DELETE FROM creature_movement WHERE id IN (615);
DELETE FROM game_event_creature WHERE guid IN (615);
DELETE FROM game_event_creature_data WHERE guid IN (615);
DELETE FROM creature_battleground WHERE guid IN (615);
DELETE FROM creature_linking WHERE guid IN (615);
DELETE FROM creature where guid IN (615);
INSERT INTO creature (guid, id, map, spawnMask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES
(615,5854,0,1,-6655.02,-1360.32,247.999,0,300,300,7,1);

-- Searing Lava Spider 5857
UPDATE creature SET position_x = -7167.985840, position_y = -1621.159668, position_z = 242.576385, spawndist = 10, MovementType = 1 WHERE guid = 5652;
UPDATE creature SET position_x = -7120.891602, position_y = -1547.004639, position_z = 243.057434, spawndist = 10, MovementType = 1 WHERE guid = 5708;
UPDATE creature SET position_x = -7144.622559, position_y = -1575.769897, position_z = 244.105652, spawndist = 10, MovementType = 1 WHERE guid = 5709;
UPDATE creature SET position_x = -7191.487793, position_y = -1462.647705, position_z = 240.318710, spawndist = 10, MovementType = 1 WHERE guid = 5612;
UPDATE creature SET position_x = -7199.270996, position_y = -1429.783447, position_z = 245.852921, spawndist = 10, MovementType = 1 WHERE guid = 5793;
UPDATE creature SET position_x = -7147.210449, position_y = -1389.008789, position_z = 240.763016, spawndist = 10, MovementType = 1 WHERE guid = 5649;

-- Greater Lava Spider 5858
UPDATE creature SET position_x = -6781.024414, position_y = -994.200623, position_z = 243.600937, spawndist = 10, MovementType = 1 WHERE guid = 5917;
UPDATE creature SET position_x = -6728.596191, position_y = -946.146729, position_z = 251.464493, spawndist = 10, MovementType = 1 WHERE guid = 5912;
UPDATE creature SET position_x = -6805.003906, position_y = -936.200806, position_z = 242.439667, spawndist = 10, MovementType = 1 WHERE guid = 5909;

-- Dark Iron Watchman 8637 / Dark Iron Geologist 5839
UPDATE creature SET spawndist = 3, MovementType = 1 WHERE guid IN (6802);
UPDATE creature SET position_x = -7027.993, position_y = -1713.8502, position_z =  241.75, orientation = 6.2657, spawndist = 0, MovementType = 0 WHERE guid = 6806;
UPDATE creature SET position_x = -7003.4116, position_y = -1743.5382, position_z =  234.22345, orientation = 0, spawndist = 0, MovementType = 2 WHERE guid = 6805;
UPDATE creature SET position_x = -7014.983398, position_y = -1737.369995, position_z = 234.098633, spawndist = 3, MovementType = 1 WHERE guid = 6808;
-- missing wp added
DELETE FROM creature_movement WHERE Id IN (6805);
INSERT INTO creature_movement (id, point, positionx, positiony, positionz, orientation, waittime, scriptid) VALUES
(6805,1 ,-7003.4116,-1743.5382,234.22345,100,2000,0),
(6805,2 ,-7008.3975,-1741.3162,234.22345,100,0,0),
(6805,3 ,-7016.044,-1735.7322,234.22345,100,0,0),
(6805,4 ,-7010.143,-1728.2706,234.13889,100,0,0),
(6805,5 ,-7004.488,-1724.1458,234.2026,100,0,0),
(6805,6 ,-6998.3716,-1730.1514,236.66135,100,0,0),
(6805,7 ,-6991.6787,-1735.554,239.80504,100,0,0),
(6805,8 ,-6984.7954,-1737.7095,241.67027,100,0,0),
(6805,9 ,-6975.59,-1737.0327,241.82066,100,0,0),
(6805,10,-6969.708,-1739.4376,242.04332,100,0,0),
(6805,11,-6965.3774,-1735.4482,241.86865,100,0,0),
(6805,12,-6960.607,-1728.6952,244.41846,100,0,0),
(6805,13,-6960.2856,-1724.1431,245.61206,100,0,0),
(6805,14,-6969.445,-1720.5964,242.99557,100,0,0),
(6805,15,-6980.29,-1716.4819,242.45383,100,0,0),
(6805,16,-6989.2563,-1715.0614,242.52414,100,0,0),
(6805,17,-6998.5513,-1715.2305,241.7844,100,0,0),
(6805,18,-7007.059,-1708.9353,242.78879,100,0,0),
(6805,19,-7013.2446,-1715.1421,241.76389,100,0,0),
(6805,20,-7019.234,-1721.9657,241.76389,100,0,0),
(6805,21,-7024.1025,-1727.5802,241.76389,100,0,0),
(6805,22,-7032.8926,-1732.3262,243.13889,100,0,0),
(6805,23,-7033.2905,-1741.0371,246.04938,100,0,0),
(6805,24,-7029.283,-1751.0309,249.99884,100,0,0),
(6805,25,-7035.721,-1758.4332,254.07916,100,0,0),
(6805,26,-7041.1113,-1761.0703,256.88556,100,0,0),
(6805,27,-7038.9106,-1766.998,261.22998,100,0,0),
(6805,28,-7026.84,-1783.7418,265.8496,100,2000,0),
(6805,29,-7038.9106,-1766.998,261.22998,100,0,0),
(6805,30,-7041.178,-1761.1023,256.92487,100,0,0),
(6805,31,-7035.721,-1758.4332,254.07916,100,0,0),
(6805,32,-7029.283,-1751.0309,249.99884,100,0,0),
(6805,33,-7033.2905,-1741.0371,246.04938,100,0,0),
(6805,34,-7032.8926,-1732.3262,243.13889,100,0,0),
(6805,35,-7024.1025,-1727.5802,241.76389,100,0,0),
(6805,36,-7019.234,-1721.9657,241.76389,100,0,0),
(6805,37,-7015.875,-1710.3209,241.76389,100,0,0),
(6805,38,-7006.6865,-1710.8341,242.41379,100,0,0),
(6805,39,-6998.8374,-1712.229,241.7844,100,0,0),
(6805,40,-6989.3345,-1719.5803,243.17307,100,0,0),
(6805,41,-6983.5796,-1721.9818,241.7844,100,0,0),
(6805,42,-6976.883,-1723.3425,241.7844,100,0,0),
(6805,43,-6976.735,-1727.4592,241.7844,100,0,0),
(6805,44,-6980.452,-1732.422,241.7844,100,0,0),
(6805,45,-6988.207,-1736.7124,240.60582,100,0,0),
(6805,46,-6996.19,-1734.1676,238.24278,100,0,0),
(6805,47,-7002.754,-1726.8757,234.69601,100,0,0),
(6805,48,-7007.8003,-1732.3151,234.13889,100,0,0);
