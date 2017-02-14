/*Changing respawn time to 10s for all harvest boar, fruit and fish */
UPDATE gameobject SET spawntimesecs= 10 WHERE id IN(180370, 180371, 180372, 180373, 180374);
/* Adding spawns for Boar, Fruit and Fish for each location if missing */
-- Boar
DELETE FROM gameobject WHERE guid=34188;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs, animprogress, state) VALUES
(34188, 180372, 1, 1326.97, -4416.36, 27.5984, -1.6057, 0, 0, 0.71934, -0.694658, 10, 100, 1);

-- Fish
DELETE FROM gameobject WHERE guid BETWEEN 34189 AND 34192;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs, animprogress, state) VALUES
(34189, 180371, 1, 1340.36, -4414.08, 28.0881, 1.98968, 0, 0, 0.838671, 0.544639, 10, 100, 1),
(34190, 180371, 1, 1341.04, -4421.81, 27.6249, 0.383972, 0, 0, 0.190809, 0.981627, 10, 100, 1),
(34191, 180371, 1, 1337.53, -4411.01, 28.0848, -0.680679, 0, 0, 0.333807, -0.942641, 10, 100, 1),
(34192, 180371, 1, 1329.31, -4413.13, 27.6023, 0.680678, 0, 0, 0.333807, 0.942641, 10, 100, 1);

UPDATE gameobject SET position_x= 1336.56, position_y= -4426.84, position_z= 27.6309, orientation= -2.9147, rotation2= 0.993572, rotation3= -0.113203, spawntimesecs= 10 WHERE guid= 35779;

-- Fruit
DELETE FROM gameobject WHERE guid IN (34193, 34194);
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs, animprogress, state) VALUES
(34193, 180370, 1, 1327.37, -4423.33, 27.4349, 2.53073, 0, 0, 0.953717, 0.300706, 10, 100, 1),
(34194, 180370, 1, 1330.72, -4425.71, 27.4281, 0.750492, 0, 0, 0.366501, 0.930418, 10, 100, 1);

UPDATE gameobject SET position_x= 1326.97, position_y= -4416.36, position_z= 27.5984, orientation= -1.6057, rotation2= 0.71934, rotation3= -0.694658, spawntimesecs= 10 WHERE guid= 35788;

DELETE FROM game_event_gameobject WHERE guid BETWEEN 34188 AND 34194;
INSERT INTO game_event_gameobject (guid, event) VALUES
(34188, 33),
(34189, 33),
(34190, 33),
(34191, 33),
(34192, 33),
(34193, 33),
(34194, 33);

/*Adding spawns to pools. 8 pools each with a chance of spawning either boar, fish or fruit */
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES
(35784, 1701, 33.33, 'Org Harvest Boar 1'),
(34189, 1701, 33.33, 'Org Harvest Fish 1'),
(35777, 1701, 33.34, 'Org Harvest Fruit 1'),
(35780, 1702, 33.33, 'Org Harvest Boar 2'),
(34190, 1702, 33.33, 'Org Harvest Fish 2'),
(35774, 1702, 33.34, 'Org Harvest Fruit 2'),
(35778, 1703, 33.33, 'Org Harvest Boar 3'),
(34191, 1703, 33.33, 'Org Harvest Fish 3'),
(35786, 1703, 33.34, 'Org Harvest Fruit 3'),
(35776, 1704, 33.33, 'Org Harvest Boar 4'),
(34192, 1704, 33.33, 'Org Harvest Fish 4'),
(35785, 1704, 33.34, 'Org Harvest Fruit 4'),
(35775, 1705, 33.33, 'Org Harvest Boar 5'),
(35779, 1705, 33.33, 'Org Harvest Fish 5'),
(35781, 1705, 33.34, 'Org Harvest Fruit 5'),
(34047, 1706, 33.33, 'Org Harvest Boar 6'),
(35783, 1706, 33.33, 'Org Harvest Fish 6'),
(34193, 1706, 33.34, 'Org Harvest Fruit 6'),
(35787, 1707, 33.33, 'Org Harvest Boar 7'),
(34046, 1707, 33.33, 'Org Harvest Fish 7'),
(34194, 1707, 33.34, 'Org Harvest Fruit 7'),
(34188, 1708, 33.33, 'Org Harvest Boar 8'),
(34048, 1708, 33.33, 'Org Harvest Fish 8'),
(35788, 1708, 33.34, 'Org Harvest Fruit 8');

DELETE FROM pool_template WHERE entry BETWEEN 1701 AND 1708;
INSERT INTO pool_template (entry, max_limit, description) VALUES
(1701, 1, 'Org Harvest Food 1'),
(1702, 1, 'Org Harvest Food 2'),
(1703, 1, 'Org Harvest Food 3'),
(1704, 1, 'Org Harvest Food 4'),
(1705, 1, 'Org Harvest Food 5'),
(1706, 1, 'Org Harvest Food 6'),
(1707, 1, 'Org Harvest Food 7'),
(1708, 1, 'Org Harvest Food 8');

