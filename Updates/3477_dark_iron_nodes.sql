-- Cleanup Dark Iron Deposit 165658 Nodes
UPDATE gameobject SET position_x=-8085.11, position_y=-1281.41, position_z=141.057, orientation=4.25861, rotation2=-0.848047, rotation3=0.529921 WHERE guid IN (72355,72356,72357,72358,72359,72354); -- pool 4159 -> pool 4140 (Burning Steppes)
UPDATE gameobject SET position_x=-8243.22, position_y=-2085.78, position_z=159.045, orientation=1.06465, rotation2=0.507538, rotation3=0.861629 WHERE guid IN (72353,72352,72351,72350,72349,72348); -- pool 4158 -> pool 4139 (Burning Steppes)
UPDATE gameobject SET position_x=-7524.61, position_y=-2585.58, position_z=141.747, orientation=2.02458, rotation2=0.848047, rotation3=0.529921 WHERE guid IN (76287,76286,76285,76284,76283); -- pool 6112 -> pool 6165 (Searing Gorge (West Section))
UPDATE gameobject SET position_x=-7784.13, position_y=-2052, position_z=143.532, orientation=1.62316, rotation2=0.725374, rotation3=0.688355 WHERE guid IN (76389,76390,76391,76392,76388); -- pool 6133 -> 6114 (Searing Gorge (West Section))
UPDATE gameobject SET position_x=-7832, position_y=-1379.85, position_z=159.736, orientation=5.2709, rotation2=-0.484809, rotation3=0.87462 WHERE guid IN (76543,76544,76545,76546,76547); -- pool 6164 -> 6114
UPDATE gameobject SET position_x=-8386.3, position_y=-2815.53, position_z=211.551, orientation=2.47837, rotation2=0.945518, rotation3=0.325568 WHERE guid IN (76357,76353,76354,76355,76356); -- pool 6126 -> 6114

-- offsets
UPDATE gameobject SET position_x=-8160.95, position_y=-2169.34, position_z=148.758, orientation=6.17847, rotation2=-0.0523357, rotation3=0.99863 WHERE guid IN (72197,72196,72195,72194,72193,72192);
UPDATE gameobject SET position_x=-7942.18, position_y=-2657.86, position_z=218.995, orientation=2.46091, rotation2=0.942641, rotation3=0.333808 WHERE guid IN (72467,72466,72465,72464,72463,72462);
UPDATE gameobject SET position_x=-7891.56, position_y=-2589.26, position_z=124.627, orientation=3.14159, rotation2=-1, rotation3=0 WHERE guid IN (72269,72268,72267,72266,72265,72264);
UPDATE gameobject SET position_x=-7855.9, position_y=-2538.82, position_z=177.637, orientation=1.95477, rotation2=0.829038, rotation3=0.559193 WHERE guid IN (72437,72436,72435,72434,72433,72432);
UPDATE gameobject SET position_x=-7814.68, position_y=-2648.13, position_z=223.628, orientation=0, rotation2=0, rotation3=1 WHERE guid IN (72143,72142,72141,72140,72139,72138);
UPDATE gameobject SET position_x=-7798.7, position_y=-2700.66, position_z=173.512, orientation=1.22173, rotation2=0.573576, rotation3=0.819152 WHERE guid IN (72347,72346,72345,72344,72343,72342);
UPDATE gameobject SET position_x=-7761.35, position_y=-1512.32, position_z=131.932, orientation=5.75959, rotation2=-0.258819, rotation3=0.965926 WHERE guid IN (72173,72172,72171,72170,72169,72168);
UPDATE gameobject SET position_x=-7685, position_y=-1650.93, position_z=144.559, orientation=0.296705, rotation2=0.147809, rotation3=0.989016 WHERE guid IN (73176,73177,73178,73179,73180,73181);
UPDATE gameobject SET position_x=-6835.71, position_y=-1484.15, position_z=208.595, orientation=1.58825, rotation2=0.71325, rotation3=0.70091 WHERE guid IN (76668,76669,76670,76671,76672);
UPDATE gameobject SET position_x=-6683.49, position_y= -1230.44, position_z=181.85, orientation=2.1293, rotation2=0.874619, rotation3=0.48481 WHERE guid IN (76268,76269,76270,76271,76272);
UPDATE gameobject SET position_x=-8266.68, position_y=-2304.53, position_z=157.275, orientation=0.837758, rotation2=0.406736, rotation3=0.913545 WHERE guid IN (72341,72340,72339,72338,72337,72336);

DELETE FROM gameobject WHERE id=165658 AND guid BETWEEN 75570 AND 75576;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state) VALUES
(75570, 165658, 0, -7885.49, -2977.03, 154.692, 0.628317, 0, 0, 0.309016, 0.951057, 45, 90, 100, 1), -- Burning Steppes
(75571, 165658, 0, -8261.54, -911.658, 160.738, 2.23402, 0, 0, 0.898793, 0.438373, 45, 90, 100, 1), -- Burning Steppes
(75572, 165658, 0, -6736.55, -1686.12, 219.236, 4.03171, 0, 0, -0.902585, 0.430512, 45, 90, 100, 1), -- Searing Gorge (East Section)
(75573, 165658, 0, -6869.47, -1410.38, 172.377, 3.50812, 0, 0, -0.983254, 0.182238, 45, 90, 100, 1), -- Searing Gorge (East Section)
(75574, 165658, 0, -6647.45, -699.644, 233.32, 4.5204, 0, 0, -0.771625, 0.636078, 45, 90, 100, 1), -- Searing Gorge (West Section)
(75575, 165658, 0, -6865.97, -1191.79, 182.557, 0.383971, 0, 0, 0.190808, 0.981627, 45, 90, 100, 1), -- Searing Gorge (West Section)
(75576, 165658, 0, -6754.19, -1363.81, 196.629, 1.90241, 0, 0, 0.814116, 0.580703, 45, 90, 100, 1); -- Searing Gorge (East Section)

-- Chance Column will be added later
REPLACE INTO gameobject_spawn_entry (guid, entry) SELECT guid AS guid, 165658 FROM gameobject WHERE gameobject.guid IN (75570,75571,75572,75573,75574,75575,75576); -- Dark Iron Deposit
REPLACE INTO gameobject_spawn_entry (guid, entry) SELECT guid AS guid, 2047 FROM gameobject WHERE gameobject.guid IN (75570,75571,75572,75573); -- Truesilver Deposit
REPLACE INTO gameobject_spawn_entry (guid, entry) SELECT guid AS guid, 1734 FROM gameobject WHERE gameobject.guid IN (75570,75571,75572,75573,75575,75576); -- Gold Vein
REPLACE INTO gameobject_spawn_entry (guid, entry) SELECT guid AS guid, 2040 FROM gameobject WHERE gameobject.guid IN (75570,75571,75572,75573,75574,75575,75576); -- Mithril Deposit
REPLACE INTO gameobject_spawn_entry (guid, entry) SELECT guid AS guid, 175404 FROM gameobject WHERE gameobject.guid IN (75571); -- Rich Thorium Vein
REPLACE INTO gameobject_spawn_entry (guid, entry) SELECT guid AS guid, 324 FROM gameobject WHERE gameobject.guid IN (75570,75574); -- Small Thorium Vein

UPDATE gameobject SET id=0 WHERE guid BETWEEN 75570 AND 75576;

-- Classic DB clean-up : move actual pool with same ID to another value in prevision of future ID sync with TBC-DB

UPDATE pool_template SET entry=50001 WHERE entry=2007;
UPDATE pool_gameobject SET pool_entry=50001 WHERE pool_entry=2007;
UPDATE pool_pool SET pool_id=50001 WHERE pool_id=2007;
UPDATE pool_pool SET mother_pool=50001 WHERE mother_pool=2007;

UPDATE pool_template SET entry=50002 WHERE entry=2021;
UPDATE pool_gameobject SET pool_entry=50002 WHERE pool_entry=2021;
UPDATE pool_pool SET pool_id=50002 WHERE pool_id=2021;
UPDATE pool_pool SET mother_pool=50002 WHERE mother_pool=2021;

UPDATE pool_template SET entry=50003 WHERE entry=2022;
UPDATE pool_gameobject SET pool_entry=50003 WHERE pool_entry=2022;
UPDATE pool_pool SET pool_id=50003 WHERE pool_id=2022;
UPDATE pool_pool SET mother_pool=50003 WHERE mother_pool=2022;

REPLACE INTO pool_gameobject (guid, pool_entry, description) VALUES
(75570, 2007, 'Burning Steppes - Mineral Node'),
(75571, 2007, 'Burning Steppes - Mineral Node'),
(75572, 2022, 'Searing Gorge (East Section) - Mineral Node'),
(75573, 2022, 'Searing Gorge (East Section) - Mineral Node'),
(75574, 2021, 'Searing Gorge (West Section) - Mineral Node'),
(75575, 2021, 'Searing Gorge (West Section) - Mineral Node'),
(75576, 2022, 'Searing Gorge (East Section) - Mineral Node');
