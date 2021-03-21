
UPDATE `creature` SET `position_x` = '1454.1995849609375', `position_y` = '-4701.81787109375', `position_z` = '-2.62193179130554199', `orientation` = '4.572762489318847656', `spawndist` = '2', `MovementType` = '1' WHERE (`guid` = '6456');

INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
('6501', '3204', '1', '0', '0', '1470.4882812500000', '-4706.10791015625', '2.220372200012207031', '0.820304751396179199', '300', '300', '2', '0', '341', '710', '0', '1'),
('6502', '3204', '1', '0', '0', '1497.5399169921875', '-4744.13720703125', '18.01207923889160156', '6.037305831909179687', '300', '300', '2', '0', '341', '710', '0', '1');

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES
('1202', '1', 'Gazz\'uz (3204)');

INSERT INTO `pool_creature_template` (`id`, `pool_entry`, `chance`, `description`) VALUES
('3204', '1202', '0', 'Gazz\'uz (3204)');
