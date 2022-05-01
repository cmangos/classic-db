
SET @OGUID := 47713;

UPDATE `gameobject_template` SET `size` = '1.539999961853027343' WHERE (`entry` = '176784');

INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(@OGUID, '176784', '1', '1', '1550.68603515625', '-2862.28173828125', '181.7537384033203125', '3.141592741012573242', '0', '0', '-1', '0', '300', '300', '100', '1');
