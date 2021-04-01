
UPDATE `creature` SET `position_x` = '-1571.4483642578125', `position_y` = '-3883.865478515625', `position_z` = '16.21256446838378906', `orientation` = '0.593411922454833984', `spawndist` = '2', `MovementType` = '1' WHERE (`guid` = '15066');

INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
('15577', '3467', '1', '0', '0', '-1707.46533203125', '-3817.541748046875', '13.30792999267578125', '5.203845024108886718', '275', '275', '2', '0', '356', '0', '0', '1'),
('15702', '3467', '1', '0', '0', '-1748.1917724609375', '-3721.454345703125', '14.27026176452636718', '1.218967676162719726', '275', '275', '2', '0', '356', '0', '0', '1');

INSERT INTO `pool_creature_template` (`id`, `pool_entry`, `chance`, `description`) VALUES
('3467', '1263', '0', 'Baron Longshore (3467)');

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES
('1263', '1', 'Baron Longshore (3467)');
