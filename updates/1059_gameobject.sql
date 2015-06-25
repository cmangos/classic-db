-- Added missing GO 165554 (Heart of the Mountain) in Blackrock Depths
DELETE FROM `gameobject` WHERE `guid` = 1344;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(1344, 165554, 230, 802.907, -356.401, -48.9423, -0.785397, 0, 0, -0.382683, 0.92388, 120, 255, 1);
