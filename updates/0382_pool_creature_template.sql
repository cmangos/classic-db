-- Put all spawns of creature 10647 (Prince Raze) in a pool
SET @POOL := 1180;

DELETE FROM `pool_creature_template` WHERE `id` = 10647;
INSERT INTO `pool_creature_template` VALUES
(10647, @POOL, 0, 'Prince Raze (10647)');

DELETE FROM `pool_template` WHERE `entry` = @POOL;
INSERT INTO `pool_template` VALUES
(@POOL, 1, 'Prince Raze (10647)');
