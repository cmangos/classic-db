
REPLACE INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
('13987', '12865', '1', '0', '0', '-4515.8670', '-2218.6753', '93.650696', '4.799655437469482421', '275', '275', '0', '0', '3150', '1097', '0', '0'),
('14076', '12865', '1', '0', '0', '-4637.1210', '-2247.0496', '83.907290', '5.375614166259765625', '275', '275', '0', '0', '3150', '1097', '0', '0'),
('14147', '12865', '1', '0', '0', '-4847.4530', '-2294.2460', '86.742920', '5.707226753234863281', '275', '275', '0', '0', '3150', '1097', '0', '0'),
('14241', '12865', '1', '0', '0', '-4486.1353', '-2069.1790', '76.035960', '1.692969322204589843', '275', '275', '0', '0', '3150', '1097', '0', '0');

REPLACE INTO `pool_creature_template` (`id`, `pool_entry`, `chance`, `description`) VALUES
('12865', '1216', '0', 'Ambassador Malcin (12865)');

REPLACE INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES
('1216', '1', 'Ambassador Malcin (12865)');
