-- Added missing GO 175966 (Enchanted Scarlet Thread) in Stratholme
-- Also put them into a pool
-- Source: YTDB
SET @GUID := 511875;
SET @POOL := 15005;
DELETE FROM `gameobject` WHERE `guid` IN (@GUID, @GUID + 1);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(@GUID, 175966, 329, 3457.5, -3111.17, 137.482, 2.023, 0, 0, 0.847629, 0.53059, 43200, 100, 1),
(@GUID + 1, 175966, 329, 3585.85, -3061.59, 136.515, 5.31, 0, 0, 0.467617, -0.883931, 43200, 100, 1);

DELETE FROM `pool_gameobject_template` WHERE `id` = 175966;
INSERT INTO `pool_gameobject_template` VALUES
(175966, @POOL, 0, 'Enchanted Scarlet Thread (175966)');

DELETE FROM `pool_template` WHERE `entry` = @POOL;
INSERT INTO `pool_template` VALUES
(@POOL, 2, 'Enchanted Scarlet Thread (175966) - Stratholme');
