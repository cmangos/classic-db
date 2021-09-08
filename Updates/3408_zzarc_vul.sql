
UPDATE `creature` SET `position_x` = '-11226.53', `position_y` = '-161.0184', `position_z` = '6.126283', `orientation` = '5.619960', `spawndist` = '2', `MovementType` = '1' WHERE (`guid` = '5066');
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
('5230', '300', '0', '0', '0', '-11168.17', '-141.1921', '6.588584', '6.242306', '300', '300', '2', '0', '1221', '0', '0', '1'),
('5231', '300', '0', '0', '0', '-11155.73', '-192.6735', '13.66400', '3.098214', '300', '300', '2', '0', '1221', '0', '0', '1');

INSERT INTO `pool_creature_template` (`id`, `pool_entry`, `chance`, `description`) VALUES
('300', '1267', '0', 'Zzarc\' Vul (300)');

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES
('1267', '1', 'Zzarc\' Vul (300)');
