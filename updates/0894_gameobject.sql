
SET @GUID := '43097';

-- ---------------------

SET @KEG := '164911';
SET @MAP := '230';
SET @RESPAWN := '7' * '24' * '60' * '60';

DELETE FROM `gameobject` WHERE `id`=@KEG AND `guid` BETWEEN (@GUID + '00') AND (@GUID + '02');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(@GUID + '00', @KEG, @MAP, '914.3752', '-146.9912', '-49.75655', '0', '0', '0', '-0.9636297', '0.2672410', @RESPAWN, '100', '1'),
(@GUID + '01', @KEG, @MAP, '915.7144', '-149.2887', '-49.75705', '0', '0', '0', '-0.9681473', '0.2503814', @RESPAWN, '100', '1'),
(@GUID + '02', @KEG, @MAP, '917.0272', '-151.5825', '-49.75756', '0', '0', '0', '-0.9681473', '0.2503814', @RESPAWN, '100', '1');
