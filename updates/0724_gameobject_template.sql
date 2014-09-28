-- Fixed GO 177219 (Gordok Courtyard Door) in Dire Maul North
-- Thanks Metalica for pointing and fixing. This closes #563
DELETE FROM `gameobject` WHERE `id` = 177219;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(250109, 177219, 429, 385.327, 374.232, -1.25222, 1.62933, 0, 0, 0.727495, 0.686113, 25, 100, 1);
