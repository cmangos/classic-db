-- (Re)Add Spawns and Pooling for Apothecary Falthis 3735
DELETE FROM `creature` WHERE `id` = 3735;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `movementtype`) VALUES
(80267, 3735, 1, 0, 0, 3861.7, -214.578, 4.53143, 1.95477, 14400, 21600, 0, 0), -- old 32913 
(80268, 3735, 1, 0, 0, 3828.21, -182.37, 1.15311, 0.873313, 14400, 21600, 0, 0), -- old 51886
(80269, 3735, 1, 0, 0, 3830.912, -212.6194, 3.763374, 1.570796, 14400, 21600, 0, 0); -- new sniff

DELETE FROM `pool_template` WHERE `entry` = 1203;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES
(1203, 1, 'Apothecary Falthis (3735)');

DELETE FROM `pool_creature_template` WHERE `id` = 3735;
INSERT INTO `pool_creature_template` (`id`, `pool_entry`, `chance`, `description`) VALUES (3735, 1203, 0, 'Apothecary Falthis (3735)');
