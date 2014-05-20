SET @GUID := 90185;

DELETE FROM `creature` WHERE `id` = 15335 AND `map` = 509;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@GUID + 0, 15335, 509, 15463, 0, -8873.043, 1860.568, 24.121820, 0, 3520, 0, 0, 64495, 0, 0, 2),
(@GUID + 1, 15335, 509, 15463, 0, -8947.694, 2247.549, 26.538980, 0, 3520, 0, 0, 64495, 0, 0, 2),
(@GUID + 2, 15335, 509, 15463, 0, -9290.099, 1380.387, 21.482970, 0, 3520, 0, 0, 64495, 0, 0, 2),
(@GUID + 3, 15335, 509, 15463, 0, -9378.188, 1284.211, -16.61263, 0, 3520, 0, 0, 64495, 0, 0, 2),
(@GUID + 4, 15335, 509, 15463, 0, -9329.668, 1302.041, -64.38991, 0, 3520, 3, 0, 64495, 0, 0, 1);
