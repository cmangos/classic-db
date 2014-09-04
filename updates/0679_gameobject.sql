
SET @GUID = '232227';

-- ---------------------

DELETE FROM `gameobject` WHERE `guid`=@GUID;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(@GUID, '178188', '409', '748.8392', '-985.1598', '-178.2831', '3.141593', '0', '0', '-1', '0', '604800', '255', '1');
