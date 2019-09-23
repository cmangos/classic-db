-- Add missing spawns for GO 154357 (Glinting Mud)
DELETE FROM gameobject WHERE guid IN (55729, 55730, 55731, 55732, 55733);
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state) VALUES
-- tbc-db + aligned spawntimesecs,animprogress
(55729, 154357, 0, -9344.8, -2042.31, 40.9412, -0.785397, 0, 0, 0, 0, 5, 5, 255, 1),
(55730, 154357, 0, -9367.63, -2094.21, 45.349, -0.593412, 0, 0, 0, 0, 5, 5, 255, 1),
(55731, 154357, 0, -9386.96, -2175.24, 41.9997, -2.75761, 0, 0, 0, 0, 5, 5, 255, 1),
(55732, 154357, 0, -9357.17, -2129.56, 42.3378, -1.18682, 0, 0, 0, 0, 5, 5, 255, 1),
(55733, 154357, 0, -9360.17, -2243.55, 45.4954, -0.645772, 0, 0, 0, 0, 5, 5, 255, 1),
-- wotlk-db
(89483, 154357, 0, -9375.87, -2303.81, 45.5523, -2.35619, 0, 0, -0.923879, 0.382686, 5, 5, 255, 1),
(89484, 154357, 0, -9316.16, -2146.72, 45.9883, -2.26892, 0, 0, -0.906306, 0.422622, 5, 5, 255, 1),
(5818, 154357, 0, -9360.54, -2372.21, 40.8664, 2.47837, 0, 0, 0.945518, 0.325568, 5, 5, 255, 1);

-- Uniformise spawntime and animation progress
UPDATE gameobject SET spawntimesecsmax=5, spawntimesecsmin=5, animprogress=255 WHERE id=154357;

-- Update naming to match TBC-DB
UPDATE pool_template SET description='Glinting Mud (154357)' WHERE entry=1174;
UPDATE pool_template SET description='Lady Sathrah (7319)' WHERE entry=1175;

-- Move Lady Sathrah pool from pool_creature to pool_creature_template
DELETE FROM pool_creature WHERE pool_entry=1175;
DELETE FROM `pool_creature_template` WHERE `id`=7319;
INSERT INTO `pool_creature_template` (`id`, `pool_entry`, `chance`, `description`) VALUES
(7319, 1175, 0, 'Lady Sathrah (7319)');

-- Move Hilary Necklace from pool_gameobject to pool_gameobject_template
DELETE FROM `pool_gameobject` WHERE pool_entry=1174;
DELETE FROM `pool_gameobject_template` WHERE `id`=154357;
INSERT INTO `pool_gameobject_template` (`id`, `pool_entry`, `chance`, `description`) VALUES
(154357, 1174, 0, 'Glinting Mud (154357)');
