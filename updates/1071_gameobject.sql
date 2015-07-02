
SET @GUID := '267';
SET @POOL := '25470';
SET @ENTRY := '175785';

DELETE FROM `gameobject` WHERE `id`=@ENTRY;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(@GUID + 0, @ENTRY, '229', '-10.52417', '-391.3383', '48.82137', '0', '0', '0', '-0.8746195', '0.4848101', '0', '0', '1'),
(@GUID + 1, @ENTRY, '229', '-12.27355', '-446.6286', '-18.64427', '0', '0', '0', '0.9170599', '0.3987495', '0', '0', '1'),
(@GUID + 2, @ENTRY, '229', '-18.37604', '-299.2709', '31.61826', '0', '0', '0', '0.9996567', '0.02620165', '0', '0', '1'),
(@GUID + 3, @ENTRY, '229', '-16.12174', '-492.5576', '90.65852', '0', '0', '0', '0.3665009', '0.93041770', '0', '0', '1');

DELETE FROM `pool_template` WHERE `entry`=@POOL;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES
(@POOL, '1', 'LBRS - Inconspicuous Documents');

DELETE FROM `pool_gameobject_template` WHERE `id`=@ENTRY OR `pool_entry`=@POOL;
INSERT INTO `pool_gameobject_template` (`id`, `pool_entry`, `chance`, `description`) VALUES
(@ENTRY, @POOL, '0', 'LBRS - Inconspicuous Documents');
