-- Add Pooling for Bloodsail Charts 2086 & Bloodsail Orders 2087
DELETE FROM `gameobject` WHERE `guid` IN (12154,12156,12208,55596,55597,55598) AND `id` IN (2086,2087);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(12154, 2086, 0, -14607.7, 332.715, 3.69033, 1.83259, 0, 0, 0, 0, 120, 480, 100, 1),
(12156, 2086, 0, -14686.33, 488.5407, 4.288588, -0.6632251, 0, 0, 0, 0, 120, 480, 100, 1),
(12208, 2086, 0, -14703.83, 451.0662, 0.649918, 2.775069, 0, 0, 0, 0, 120, 480, 100, 1),

(55596, 2087, 0, -14680.92, 500.4366, 2.187424, -2.35619, 0, 0, 0, 0, 120, 480, 100, 1),
(55597, 2087, 0, -14685.42, 486.4723, 4.179824, 0.4886922, 0, 0, 0, 0, 120, 480, 100, 1),
(55598, 2087, 0, -14705.23, 450.4156, 0.157641, 2.757613, 0, 0, 0, 0, 120, 480, 100, 1); -- ~up to 10mins

DELETE FROM `pool_template` WHERE `entry` IN (1804,1805);
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES
(1804, 1, 'Stranglethorn Vale - Bloodsail Charts (2086)'),
(1805, 1, 'Stranglethorn Vale - Bloodsail Orders (2087)');

DELETE FROM `pool_gameobject_template` WHERE `id` IN (2086,2087);
INSERT INTO `pool_gameobject_template` (`id`, `pool_entry`, `chance`, `description`) VALUES
(2086, 1804, 0, 'Stranglethorn Vale - Bloodsail Charts (2086)'),
(2087, 1805, 0, 'Stranglethorn Vale - Bloodsail Orders (2087)');
