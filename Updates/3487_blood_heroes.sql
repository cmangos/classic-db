-- Sync Blood of Heroes GameObjects GUID with those used in TBC-DB

-- Initial cleanup
DELETE FROM pool_pool WHERE pool_id IN (
	SELECT pool_entry FROM pool_gameobject WHERE guid IN (SELECT guid FROM gameobject WHERE id=176213));
DELETE FROM pool_pool WHERE mother_pool IN (
	SELECT pool_entry FROM pool_gameobject WHERE guid IN (SELECT guid FROM gameobject WHERE id=176213));
DELETE FROM pool_gameobject WHERE guid IN (SELECT guid FROM gameobject WHERE id=176213);
DELETE FROM gameobject WHERE id=176213;

-- Note : it is best practice to use DELETE queries before INSERT or at least REPLACE but they are avoided on purpose here to help users with custom content to detect GUID/entry collisions

-- Reinsert GOs and pools using TBC-DB GUIDs/entries
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state) VALUES
(45512, 176213, 0, 2412.71, -1721.56, 107.006, 2.89725, 0, 0, 0, 0, 7200, 7200, 100, 1),
(45514, 176213, 0, 1791.37, -1834.49, 61.1652, 3.14159, 0, 0, 0, 0, 7200, 7200, 100, 1),
(45736, 176213, 0, 2192.74, -4479.21, 87.66, 3.03687, 0, 0, 0, 0, 7200, 7200, 100, 1),
(45853, 176213, 0, 2958.04, -3485.06, 146.222, -3.00197, 0, 0, 0, 0, 7200, 7200, 100, 1),
(45868, 176213, 0, 2144.03, -3241.36, 112.884, -1.74533, 0, 0, 0, 0, 7200, 7200, 100, 1),
(45892, 176213, 0, 2888.38, -4086.29, 101.381, -2.19912, 0, 0, 0, 0, 7200, 7200, 100, 1),
(45934, 176213, 0, 1873.27, -3189.56, 128.554, 0.15708, 0, 0, 0, 0, 7200, 7200, 100, 1),
(45936, 176213, 0, 2115.7, -4691.12, 74.3362, 1.15192, 0, 0, 0, 0, 7200, 7200, 100, 1),
(56281, 176213, 0, 1370.41, -1468.01, 56.067, 0.427146, 0, 0, 0.211953, 0.97728, 7200, 7200, 100, 1),
(56282, 176213, 0, 1320.89, -1551, 58.454, -3, 0, 0, -0.997495, 0.0707372, 7200, 7200, 100, 1),
(56283, 176213, 0, 1465.36, -1876, 58.71, 0, 0, 0, 0, 1, 7200, 7200, 100, 1),
(56284, 176213, 0, 1837.99, -1500, 59.567, -3, 0, 0, -0.997495, 0.0707372, 7200, 7200, 100, 1),
(56285, 176213, 0, 1364.2, -1610, 57.775, 2.164, 0, 0, 0.882899, 0.469563, 7200, 7200, 100, 1),
(56286, 176213, 0, 1386.09, -1286, 59.751, 1.309, 0, 0, 0.608763, 0.793352, 7200, 7200, 100, 1),
(56287, 176213, 0, 1414.93, -1698, 69.62, -1, 0, 0, -0.479426, 0.877583, 7200, 7200, 100, 1),
(56288, 176213, 0, 1550.84, -1588.93, 64.7935, 4.57797, 0, 0, 0.752999, -0.658022, 7200, 7200, 100, 1),
(56289, 176213, 0, 1509.77, -1391.97, 65.4078, 3.72975, 0, 0, 0.95707, -0.289857, 7200, 7200, 100, 1),
(56290, 176213, 0, 1512.56, -1470.46, 60.7589, 4.01013, 0, 0, 0.907177, -0.420749, 7200, 7200, 100, 1),
(56291, 176213, 0, 2159.83, -2442.75, 62.0804, -0.488691, 0, 0, -0.241921, 0.970296, 7200, 7200, 100, 1),
(56292, 176213, 0, 1342.56, -1382.57, 47.4207, 2.77507, 0, 0, 0.983254, 0.182238, 7200, 7200, 100, 1),
(56293, 176213, 0, 1841.09, -1816.88, 60.9563, 3.16583, 0, 0, 0.999927, -0.0121196, 7200, 7200, 100, 1),
(56294, 176213, 0, 1858.09, -1219.27, 60.6204, 2.46525, 0, 0, 0.943363, 0.331762, 7200, 7200, 100, 1),
(56295, 176213, 0, 1742.59, -1162.52, 59.5493, 2.96869, 0, 0, 0.996266, 0.0863425, 7200, 7200, 100, 1),
(56296, 176213, 0, 1743.79, -1394.19, 68.8329, 4.46881, 0, 0, 0.787776, -0.615962, 7200, 7200, 100, 1),
(56297, 176213, 0, 1155.55, -2409.15, 60.9005, 3.90568, 0, 0, 0.927905, -0.372815, 7200, 7200, 100, 1),
(56298, 176213, 0, 1151.44, -2549.15, 60.0338, 2.40634, 0, 0, 0.933182, 0.359403, 7200, 7200, 100, 1),
(56299, 176213, 0, 1718.26, -2266.83, 58.7787, 3.8122, 0, 0, 0.944311, -0.329055, 7200, 7200, 100, 1),
(56300, 176213, 0, 1553.47, -3216.61, 78.7427, 0.666682, 0, 0, 0.327202, 0.944955, 7200, 7200, 100, 1),
(56301, 176213, 0, 1846.79, -3825.26, 135.516, 1.83259, 0, 0, 0.793353, 0.608762, 7200, 7200, 100, 1),
(56302, 176213, 0, 1705.87, -4690.14, 48.9742, -3.08918, 0, 0, -0.999657, 0.0262017, 7200, 7200, 100, 1),
(56303, 176213, 0, 3111.7, -3688, 134.567, -3, 0, 0, -0.997495, 0.0707372, 7200, 7200, 100, 1),
(56304, 176213, 0, 1748.16, -4453.14, 74.2627, -2.05949, 0, 0, 0, 0, 7200, 7200, 100, 1),
(56305, 176213, 0, 1836.97, -3250.82, 118.316, 3.50904, 0, 0, 0.98317, -0.182692, 7200, 7200, 100, 1),
(56306, 176213, 0, 2047.2, -2819.94, 73.8743, 1.2683, 0, 0, 0.592494, 0.805575, 7200, 7200, 100, 1),
(56307, 176213, 0, 1632.41, -4963.24, 82.4437, 3.36925, 0, 0, 0.993529, -0.113581, 7200, 7200, 100, 1),
(56308, 176213, 0, 1677.69, -4875.3, 85.0371, 5.50317, 0, 0, 0.380196, -0.924906, 7200, 7200, 100, 1),
(56309, 176213, 0, 1965.56, -4900.35, 82.2303, 1.2628, 0, 0, 0.590277, 0.8072, 7200, 7200, 100, 1),
(56310, 176213, 0, 2167.71, -5301.92, 94.072, 5.98855, 0, 0, 0.146784, -0.989169, 7200, 7200, 100, 1),
(56311, 176213, 0, 2464.83, -4994.12, 61.153, 4.74212, 0, 0, 0.696516, -0.717541, 7200, 7200, 100, 1),
(56312, 176213, 0, 2464.2, -4801.97, 76.5713, 1.79923, 0, 0, 0.783088, 0.62191, 7200, 7200, 100, 1),
(56313, 176213, 0, 2624.55, -4176.84, 80.6057, 6.104, 0, 0, 0.0894745, -0.995989, 7200, 7200, 100, 1),
(56314, 176213, 0, 2009.29, -4140.26, 13.4622, 3.3983, 0, 0, 0.991774, -0.128001, 7200, 7200, 100, 1),
(56315, 176213, 0, 2770.67, -3702.41, 104.461, 5.06649, 0, 0, 0.571514, -0.820592, 7200, 7200, 100, 1),
(56316, 176213, 0, 2471.64, -3761, 178.266, 0.467974, 0, 0, 0.231858, 0.97275, 7200, 7200, 100, 1),
(56317, 176213, 0, 2343.02, -4334.32, 75.383, 1.11306, 0, 0, 0.528244, 0.849093, 7200, 7200, 100, 1),
(170022, 176213, 0, 1645.17, -710.922, 55.3111, 0.471238, 0, 0, 0.233445, 0.97237, 7200, 7200, 100, 1);


INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES 
(45512, 1802, 0, 'Blood of Heroes - Western Plaguelands'),
(45514, 1802, 0, 'Blood of Heroes - Western Plaguelands'),
(45736, 1803, 0, 'Blood of Heroes - Eastern Plaguelands'),
(45853, 1803, 0, 'Blood of Heroes - Eastern Plaguelands'),
(45868, 1803, 0, 'Blood of Heroes - Eastern Plaguelands'),
(45892, 1803, 0, 'Blood of Heroes - Eastern Plaguelands'),
(45934, 1803, 0, 'Blood of Heroes - Eastern Plaguelands'),
(45936, 1803, 0, 'Blood of Heroes - Eastern Plaguelands'),
(56281, 1802, 0, 'Blood of Heroes - Western Plaguelands'),
(56282, 1802, 0, 'Blood of Heroes - Western Plaguelands'),
(56283, 1802, 0, 'Blood of Heroes - Western Plaguelands'),
(56284, 1802, 0, 'Blood of Heroes - Western Plaguelands'),
(56285, 1802, 0, 'Blood of Heroes - Western Plaguelands'),
(56286, 1802, 0, 'Blood of Heroes - Western Plaguelands'),
(56287, 1802, 0, 'Blood of Heroes - Western Plaguelands'),
(56288, 1802, 0, 'Blood of Heroes - Western Plaguelands'),
(56289, 1802, 0, 'Blood of Heroes - Western Plaguelands'),
(56290, 1802, 0, 'Blood of Heroes - Western Plaguelands'),
(56291, 1802, 0, 'Blood of Heroes - Western Plaguelands'),
(56292, 1802, 0, 'Blood of Heroes - Western Plaguelands'),
(56293, 1802, 0, 'Blood of Heroes - Western Plaguelands'),
(56294, 1802, 0, 'Blood of Heroes - Western Plaguelands'),
(56295, 1802, 0, 'Blood of Heroes - Western Plaguelands'),
(56296, 1802, 0, 'Blood of Heroes - Western Plaguelands'),
(56297, 1802, 0, 'Blood of Heroes - Western Plaguelands'),
(56298, 1802, 0, 'Blood of Heroes - Western Plaguelands'),
(56299, 1802, 0, 'Blood of Heroes - Western Plaguelands'),
(56300, 1802, 0, 'Blood of Heroes - Western Plaguelands'),
(56301, 1803, 0, 'Blood of Heroes - Eastern Plaguelands'),
(56302, 1803, 0, 'Blood of Heroes - Eastern Plaguelands'),
(56303, 1803, 0, 'Blood of Heroes - Eastern Plaguelands'),
(56304, 1803, 0, 'Blood of Heroes - Eastern Plaguelands'),
(56305, 1803, 0, 'Blood of Heroes - Eastern Plaguelands'),
(56306, 1803, 0, 'Blood of Heroes - Eastern Plaguelands'),
(56307, 1803, 0, 'Blood of Heroes - Eastern Plaguelands'),
(56308, 1803, 0, 'Blood of Heroes - Eastern Plaguelands'),
(56309, 1803, 0, 'Blood of Heroes - Eastern Plaguelands'),
(56310, 1803, 0, 'Blood of Heroes - Eastern Plaguelands'),
(56311, 1803, 0, 'Blood of Heroes - Eastern Plaguelands'),
(56312, 1803, 0, 'Blood of Heroes - Eastern Plaguelands'),
(56313, 1803, 0, 'Blood of Heroes - Eastern Plaguelands'),
(56314, 1803, 0, 'Blood of Heroes - Eastern Plaguelands'),
(56315, 1803, 0, 'Blood of Heroes - Eastern Plaguelands'),
(56316, 1803, 0, 'Blood of Heroes - Eastern Plaguelands'),
(56317, 1803, 0, 'Blood of Heroes - Eastern Plaguelands'),
(170022, 1802, 0, 'Blood of Heroes - Western Plaguelands');

INSERT INTO pool_template (entry, max_limit, description) VALUES
(1802, 5, 'Western Plaguelands - Blood of Heroes (176213)'),
(1803, 4, 'Eastern Plaguelands - Blood of Heroes (176213)');
