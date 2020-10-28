-- Small fixes for GO 176589 (Black Lotus)
-- Loosely ported from https://github.com/cmangos/tbc-db/commit/1b1a749718f2c8d268e7fabd72121a73e8056fe0

-- Remove duplicate GO 176589 (Black Lotus)
DELETE FROM gameobject WHERE guid=65289;
DELETE FROM pool_gameobject WHERE guid=65289;
DELETE FROM gameobject WHERE guid=86503;
DELETE FROM pool_gameobject WHERE guid=86503;

-- In original Classic, respawn time for Black Lotus was 60 minutes
UPDATE gameobject SET spawntimesecsmin=3600, spawntimesecsmax=3600 WHERE id=176589;

-- Synchronise some positions with TBC-DB (speaking of third digit here...)
UPDATE gameobject SET position_x=-7620.868, position_y=-709.0798, position_z=182.7417, orientation=1.466076, rotation2=0.6691303, rotation3=0.743145 WHERE guid=20275;
UPDATE gameobject SET position_x=1663.371, position_y=-5585.613, position_z=102.1935, orientation=-0.08726675 WHERE guid=45837;
UPDATE gameobject SET position_x=-7940.996, position_y=-884.0559, position_z=130.4031, orientation=-2.408554 WHERE guid=20279;
UPDATE gameobject SET position_x=6624.313, position_y=-4034.23, position_z=658.5015, orientation=-0.06981307, rotation2=-0.03489876, rotation3=0.9993908 WHERE guid=49139;
UPDATE gameobject SET position_x=-6501.717, position_y=1818.611, position_z=3.574478, orientation=-0.7853982 WHERE guid=49412;
UPDATE gameobject SET position_x=2052.077, position_y=-4498.232, position_z=74.77696, orientation=-1.762782 WHERE guid=63728;
UPDATE gameobject SET position_x=-7776.301, position_y=-2699.337, position_z=173.7873, orientation=-1.762782 WHERE guid=20282;

-- Add missing Black Lotus spawns outside Dire Maul
DELETE FROM gameobject WHERE guid IN (138610, 138611);
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state) VALUES
(138610, 176589, 1, -3774.214, 1081.148, 131.9418, 2.967041, 0, 0, 0.9961939, 0.08716504, 3600, 3600, 100, 1),
(138611, 176589, 1, -3715.259, 1084.904, 132.0633, -0.1919852, 0, 0, -0.09584522, 0.9953963, 3600, 3600, 100, 1);

SET @POOLID:=943;
DELETE FROM pool_gameobject WHERE guid IN (138610, 138611);
INSERT INTO pool_gameobject VALUES
(138610, @POOLID, 0, 'Black Lotus - Dire Maul'),
(138611, @POOLID, 0, 'Black Lotus - Dire Maul');

DELETE FROM pool_template WHERE entry=@POOLID;
INSERT INTO pool_template VALUES
(@POOLID, 1, 'MASTER Herbs Black Lotus - Dire Maul');

-- Add missing spawns in Eastern Kingdoms
DELETE FROM gameobject WHERE guid IN (138610, 138611);
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state) VALUES
(138613, 176589, 0, 2511.816, -5151.868, 74.3906, -2.44346, 0, 0, -0.9396925, 0.3420205, 3600, 3600, 100, 1), -- Eastern Plaguelands
(131395, 176589, 0, 2917.39, -3692.225, 114.8027, 0.01745246, 0, 0, 0.999391, 0.0349043, 3600, 3600, 100, 1); -- Eastern Plaguelands

DELETE FROM pool_gameobject WHERE guid IN (138613, 131395);
INSERT INTO pool_gameobject VALUES
(138613, 946, 0, 'Black Lotus - Eastern Plaguelands'),
(131395, 946, 0, 'Black Lotus - Eastern Plaguelands');

-- Add missing spawns in Kalimdor
DELETE FROM gameobject WHERE guid IN (138610, 138611);
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state) VALUES
(131397, 176589, 1, -7925.228, 1849.406, 5.347952, 0.2268928, 0, 0, 0, 0, 3600, 3600, 100, 1), -- Silithus
(132230, 176589, 1, 5487.68, -4936.528, 856.0865, -1.832596, 0, 0, 0, 0, 3600, 3600, 100, 1), -- Winterspring
(131396, 176589, 1, 5691.301, -4511.113, 764.5207, -2.91469, 0, 0, 0, 0, 3600, 3600, 100, 1); -- Winterspring

DELETE FROM pool_gameobject WHERE guid IN (131397, 132230, 131396);
INSERT INTO pool_gameobject VALUES
(132230, 944, 0, 'Black Lotus - Winterspring'),
(131396, 944, 0, 'Black Lotus - Winterspring'),
(131397, 945, 0, 'Black Lotus - Silithus');

