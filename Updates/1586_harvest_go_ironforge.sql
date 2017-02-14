/* Adding spawns for Boar, Fruit and Fish for each location if missing */
-- Boar
DELETE FROM gameobject WHERE guid IN (31415, 31416, 31417);
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs, animprogress, state) VALUES
(31415, 180372, 0, -5082.25, -800.448, 496.03, -0.191986, 0, 0, 0.095846, -0.995396, 10, 100, 1),
(31416, 180372, 0, -5085.64, -799.931, 496.03, -0.226893, 0, 0, 0.113203, -0.993572, 10, 100, 1),
(31417, 180372, 0, -5089.05, -799.469, 496.03, -2.11185, 0, 0, 0.870356, -0.492423, 10, 100, 1);

UPDATE gameobject SET position_x= -5080.8, position_y= -799.561, position_z= 496.03, orientation= 1.8675, rotation2= 0.803857, rotation3= 0.594823, spawntimesecs= 10 WHERE guid= 31391;

-- Fish
DELETE FROM gameobject WHERE guid IN (31418, 31419);
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs, animprogress, state) VALUES
(31418, 180371, 0, -5077.29, -800.179, 496.03, 2.32129, 0, 0, 0.91706, 0.398749, 10, 100, 1),
(31419, 180371, 0, -5089.05, -799.469, 496.03, -2.11185, 0, 0, 0.870356, -0.492423, 10, 100, 1);

UPDATE gameobject SET position_x= -5075.2, position_y= -799.255, position_z= 496.038, orientation= -1.29154, rotation2= 0.601815, rotation3= -0.798635, spawntimesecs= 10 WHERE guid= 31965;

-- Fruit
UPDATE gameobject SET position_x= -5073.67, position_y= -799.944, position_z= 496.038, orientation= -0.15708, rotation2= 0.078459, rotation3= -0.996917, spawntimesecs= 10 WHERE guid= 29870;
UPDATE gameobject SET position_x= -5085.64, position_y= -799.931, position_z= 496.03, orientation= -0.226893, rotation2= 0.113203, rotation3= -0.993572, spawntimesecs= 10 WHERE guid= 31969;

DELETE FROM game_event_gameobject WHERE guid IN (31415, 31416, 31417, 31418, 31419);
INSERT INTO game_event_gameobject (guid, event) VALUES
(31415, 33),
(31416, 33),
(31417, 33),
(31418, 33),
(31419, 33);

/*Adding spawns to pools. 8 pools each with a chance of spawning either boar, fish or fruit */
DELETE FROM pool_gameobject WHERE guid IN (31388, 31967, 29870, 31968, 31965, 31389, 31392, 31418, 31393, 31391, 31395, 30875, 31415, 29868, 31396, 31416, 30362, 31969, 31417, 31419, 30364);
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES
(31388, 1709, 33.33, 'IF Harvest Boar 1'),
(31967, 1709, 33.33, 'IF Harvest Fish 1'),
(29870, 1709, 33.34, 'IF Harvest Fruit 1'),
(31968, 1710, 33.33, 'IF Harvest Boar 2'),
(31965, 1710, 33.33, 'IF Harvest Fish 2'),
(31389, 1710, 33.34, 'IF Harvest Fruit 2'),
(31392, 1711, 33.33, 'IF Harvest Boar 3'),
(31418, 1711, 33.33, 'IF Harvest Fish 3'),
(31393, 1711, 33.34, 'IF Harvest Fruit 3'),
(31391, 1712, 33.33, 'IF Harvest Boar 4'),
(31395, 1712, 33.33, 'IF Harvest Fish 4'),
(30875, 1712, 33.34, 'IF Harvest Fruit 4'),
(31415, 1713, 33.33, 'IF Harvest Boar 5'),
(29868, 1713, 33.33, 'IF Harvest Fish 5'),
(31396, 1713, 33.34, 'IF Harvest Fruit 5'),
(31416, 1714, 33.33, 'IF Harvest Boar 6'),
(30362, 1714, 33.33, 'IF Harvest Fish 6'),
(31969, 1714, 33.34, 'IF Harvest Fruit 6'),
(31417, 1715, 33.33, 'IF Harvest Boar 7'),
(31419, 1715, 33.33, 'IF Harvest Fish 7'),
(30364, 1715, 33.34, 'IF Harvest Fruit 7');

DELETE FROM pool_template WHERE entry BETWEEN 1709 AND 1715;
INSERT INTO pool_template (entry, max_limit, description) VALUES
(1709, 1, 'IF Harvest Food 1'),
(1710, 1, 'IF Harvest Food 2'),
(1711, 1, 'IF Harvest Food 3'),
(1712, 1, 'IF Harvest Food 4'),
(1713, 1, 'IF Harvest Food 5'),
(1714, 1, 'IF Harvest Food 6'),
(1715, 1, 'IF Harvest Food 7');
