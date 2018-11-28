-- Remove 100y spell focus which gives way too large range and was spawned in two villages it shouldn't be. (Only Hiri'watha and Zun'watha should have it)
DELETE FROM gameobject WHERE id IN(142698, 142700);
-- Use the 25y spell focus and spawn it in both villages. (Note that since this object is not sent in sniffs the coordinates are guesswork)
INSERT INTO `gameobject` (`guid`,`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES 
(160192,142700, 0, -28.2615, -2478.17, 121.688, 2.26446, 0, 0, 0.905361, 0.424642, 25, 25, 100, 1),
(160193,142700, 0, -32.1218, -2803.7, 122.306, 4.21774, 0, 0, 0.858697, -0.512484, 25, 25, 100, 1);
