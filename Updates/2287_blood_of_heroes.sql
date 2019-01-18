-- Add missing spawns of GO 176213 (Blood of Heroes) in Western and Eastern Plaguelands
-- Pool all spawns by zone
-- Additionnal spawns from YTDB

SET @GUID := 55787;

DELETE FROM gameobject WHERE guid BETWEEN @GUID+1 AND @GUID+37;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3) VALUES
-- Western Plaguelands spawns
(@GUID:=@GUID+1, 176213, 0, 1370.41, -1468.01, 56.067, 0.427146, 0, 0, 0.211953, 0.97728),
(@GUID:=@GUID+1, 176213, 0, 1320.89, -1551, 58.454, -3, 0, 0, -0.997495, 0.0707372),
(@GUID:=@GUID+1, 176213, 0, 1465.36, -1876, 58.71, 0, 0, 0, 0, 1),
(@GUID:=@GUID+1, 176213, 0, 1837.99, -1500, 59.567, -3, 0, 0, -0.997495, 0.0707372),
(@GUID:=@GUID+1, 176213, 0, 1364.2, -1610, 57.775, 2.164, 0, 0, 0.882899, 0.469563),
(@GUID:=@GUID+1, 176213, 0, 1386.09, -1286, 59.751, 1.309, 0, 0, 0.608763, 0.793352),
(@GUID:=@GUID+1, 176213, 0, 1414.93, -1698, 69.62, -1, 0, 0, -0.479426, 0.877583),
(@GUID:=@GUID+1, 176213, 0, 1550.84, -1588.93, 64.7935, 4.57797, 0, 0, 0.752999, -0.658022),
(@GUID:=@GUID+1, 176213, 0, 1509.77, -1391.97, 65.4078, 3.72975, 0, 0, 0.95707, -0.289857),
(@GUID:=@GUID+1, 176213, 0, 1512.56, -1470.46, 60.7589, 4.01013, 0, 0, 0.907177, -0.420749),
(@GUID:=@GUID+1, 176213, 0, 2159.83, -2442.75, 62.0804, -0.488691, 0, 0, -0.241921, 0.970296),
(@GUID:=@GUID+1, 176213, 0, 1342.56, -1382.57, 47.4207, 2.77507, 0, 0, 0.983254, 0.182238),
(@GUID:=@GUID+1, 176213, 0, 1841.09, -1816.88, 60.9563, 3.16583, 0, 0, 0.999927, -0.0121196),
(@GUID:=@GUID+1, 176213, 0, 1858.09, -1219.27, 60.6204, 2.46525, 0, 0, 0.943363, 0.331762),
(@GUID:=@GUID+1, 176213, 0, 1742.59, -1162.52, 59.5493, 2.96869, 0, 0, 0.996266, 0.0863425),
(@GUID:=@GUID+1, 176213, 0, 1743.79, -1394.19, 68.8329, 4.46881, 0, 0, 0.787776, -0.615962),
(@GUID:=@GUID+1, 176213, 0, 1155.55, -2409.15, 60.9005, 3.90568, 0, 0, 0.927905, -0.372815),
(@GUID:=@GUID+1, 176213, 0, 1151.44, -2549.15, 60.0338, 2.40634, 0, 0, 0.933182, 0.359403),
(@GUID:=@GUID+1, 176213, 0, 1718.26, -2266.83, 58.7787, 3.8122, 0, 0, 0.944311, -0.329055),
(@GUID:=@GUID+1, 176213, 0, 1553.47, -3216.61, 78.7427, 0.666682, 0, 0, 0.327202, 0.944955),
-- Eastern Plaguelands spawns
(@GUID:=@GUID+1, 176213, 0, 1846.79, -3825.26, 135.516, 1.83259, 0, 0, 0.793353, 0.608762),
(@GUID:=@GUID+1, 176213, 0, 1705.87, -4690.14, 48.9742, -3.08918, 0, 0, -0.999657, 0.0262017),
(@GUID:=@GUID+1, 176213, 0, 3111.7, -3688, 134.567, -3, 0, 0, -0.997495, 0.0707372),
(@GUID:=@GUID+1, 176213, 0, 1748.16, -4453.14, 74.2627, -2.05949, 0, 0, 0, 0),
(@GUID:=@GUID+1, 176213, 0, 1836.97, -3250.82, 118.316, 3.50904, 0, 0, 0.98317, -0.182692),
(@GUID:=@GUID+1, 176213, 0, 2047.2, -2819.94, 73.8743, 1.2683, 0, 0, 0.592494, 0.805575),
(@GUID:=@GUID+1, 176213, 0, 1632.41, -4963.24, 82.4437, 3.36925, 0, 0, 0.993529, -0.113581),
(@GUID:=@GUID+1, 176213, 0, 1677.69, -4875.3, 85.0371, 5.50317, 0, 0, 0.380196, -0.924906),
(@GUID:=@GUID+1, 176213, 0, 1965.56, -4900.35, 82.2303, 1.2628, 0, 0, 0.590277, 0.8072),
(@GUID:=@GUID+1, 176213, 0, 2167.71, -5301.92, 94.072, 5.98855, 0, 0, 0.146784, -0.989169),
(@GUID:=@GUID+1, 176213, 0, 2464.83, -4994.12, 61.153, 4.74212, 0, 0, 0.696516, -0.717541),
(@GUID:=@GUID+1, 176213, 0, 2464.2, -4801.97, 76.5713, 1.79923, 0, 0, 0.783088, 0.62191),
(@GUID:=@GUID+1, 176213, 0, 2624.55, -4176.84, 80.6057, 6.104, 0, 0, 0.0894745, -0.995989),
(@GUID:=@GUID+1, 176213, 0, 2009.29, -4140.26, 13.4622, 3.3983, 0, 0, 0.991774, -0.128001),
(@GUID:=@GUID+1, 176213, 0, 2770.67, -3702.41, 104.461, 5.06649, 0, 0, 0.571514, -0.820592),
(@GUID:=@GUID+1, 176213, 0, 2471.64, -3761, 178.266, 0.467974, 0, 0, 0.231858, 0.97275),
(@GUID:=@GUID+1, 176213, 0, 2343.02, -4334.32, 75.383, 1.11306, 0, 0, 0.528244, 0.849093);

-- Uniformise spawn time
UPDATE gameobject SET spawntimesecsmin=7200, spawntimesecsmax=7200 WHERE id=176213;

-- Add pools
SET @POOL := 6508;
SET @GUID := 55787;

DELETE FROM pool_gameobject WHERE guid BETWEEN @GUID + 1 AND @GUID + 37 OR guid IN (45512, 45514, 45934, 45936, 45853, 45868, 45892, 45736);
INSERT INTO pool_gameobject VALUES
-- Western Plaguelands
(45514, @POOL, 0, 'Blood of Heroes - Western Plaguelands'),
(45512, @POOL, 0, 'Blood of Heroes - Western Plaguelands'),
(@GUID:=@GUID+1, @POOL, 0, 'Blood of Heroes - Western Plaguelands'),
(@GUID:=@GUID+1, @POOL, 0, 'Blood of Heroes - Western Plaguelands'),
(@GUID:=@GUID+1, @POOL, 0, 'Blood of Heroes - Western Plaguelands'),
(@GUID:=@GUID+1, @POOL, 0, 'Blood of Heroes - Western Plaguelands'),
(@GUID:=@GUID+1, @POOL, 0, 'Blood of Heroes - Western Plaguelands'),
(@GUID:=@GUID+1, @POOL, 0, 'Blood of Heroes - Western Plaguelands'),
(@GUID:=@GUID+1, @POOL, 0, 'Blood of Heroes - Western Plaguelands'),
(@GUID:=@GUID+1, @POOL, 0, 'Blood of Heroes - Western Plaguelands'),
(@GUID:=@GUID+1, @POOL, 0, 'Blood of Heroes - Western Plaguelands'),
(@GUID:=@GUID+1, @POOL, 0, 'Blood of Heroes - Western Plaguelands'),
(@GUID:=@GUID+1, @POOL, 0, 'Blood of Heroes - Western Plaguelands'),
(@GUID:=@GUID+1, @POOL, 0, 'Blood of Heroes - Western Plaguelands'),
(@GUID:=@GUID+1, @POOL, 0, 'Blood of Heroes - Western Plaguelands'),
(@GUID:=@GUID+1, @POOL, 0, 'Blood of Heroes - Western Plaguelands'),
(@GUID:=@GUID+1, @POOL, 0, 'Blood of Heroes - Western Plaguelands'),
(@GUID:=@GUID+1, @POOL, 0, 'Blood of Heroes - Western Plaguelands'),
(@GUID:=@GUID+1, @POOL, 0, 'Blood of Heroes - Western Plaguelands'),
(@GUID:=@GUID+1, @POOL, 0, 'Blood of Heroes - Western Plaguelands'),
(@GUID:=@GUID+1, @POOL, 0, 'Blood of Heroes - Western Plaguelands'),
(@GUID:=@GUID+1, @POOL, 0, 'Blood of Heroes - Western Plaguelands'),
-- Eastern Plaguelands
(45934, @POOL + 1, 0, 'Blood of Heroes - Eastern Plaguelands'),
(45936, @POOL + 1, 0, 'Blood of Heroes - Eastern Plaguelands'),
(45868, @POOL + 1, 0, 'Blood of Heroes - Eastern Plaguelands'),
(45736, @POOL + 1, 0, 'Blood of Heroes - Eastern Plaguelands'),
(45892, @POOL + 1, 0, 'Blood of Heroes - Eastern Plaguelands'),
(45853, @POOL + 1, 0, 'Blood of Heroes - Eastern Plaguelands'),
(@GUID:=@GUID+1, @POOL + 1, 0, 'Blood of Heroes - Eastern Plaguelands'),
(@GUID:=@GUID+1, @POOL + 1, 0, 'Blood of Heroes - Eastern Plaguelands'),
(@GUID:=@GUID+1, @POOL + 1, 0, 'Blood of Heroes - Eastern Plaguelands'),
(@GUID:=@GUID+1, @POOL + 1, 0, 'Blood of Heroes - Eastern Plaguelands'),
(@GUID:=@GUID+1, @POOL + 1, 0, 'Blood of Heroes - Eastern Plaguelands'),
(@GUID:=@GUID+1, @POOL + 1, 0, 'Blood of Heroes - Eastern Plaguelands'),
(@GUID:=@GUID+1, @POOL + 1, 0, 'Blood of Heroes - Eastern Plaguelands'),
(@GUID:=@GUID+1, @POOL + 1, 0, 'Blood of Heroes - Eastern Plaguelands'),
(@GUID:=@GUID+1, @POOL + 1, 0, 'Blood of Heroes - Eastern Plaguelands'),
(@GUID:=@GUID+1, @POOL + 1, 0, 'Blood of Heroes - Eastern Plaguelands'),
(@GUID:=@GUID+1, @POOL + 1, 0, 'Blood of Heroes - Eastern Plaguelands'),
(@GUID:=@GUID+1, @POOL + 1, 0, 'Blood of Heroes - Eastern Plaguelands'),
(@GUID:=@GUID+1, @POOL + 1, 0, 'Blood of Heroes - Eastern Plaguelands'),
(@GUID:=@GUID+1, @POOL + 1, 0, 'Blood of Heroes - Eastern Plaguelands'),
(@GUID:=@GUID+1, @POOL + 1, 0, 'Blood of Heroes - Eastern Plaguelands'),
(@GUID:=@GUID+1, @POOL + 1, 0, 'Blood of Heroes - Eastern Plaguelands'),
(@GUID:=@GUID+1, @POOL + 1, 0, 'Blood of Heroes - Eastern Plaguelands');

-- Max spawns value is an estimation, it could be something different especially with all the spawns located in Andorhal
DELETE FROM pool_template WHERE entry IN (@POOL, @POOL + 1);
INSERT INTO pool_template VALUES
(@POOL, 5, 'Blood of Heroes - Western Plaguelands'),
(@POOL + 1, 4, 'Blood of Heroes - Eastern Plaguelands');
