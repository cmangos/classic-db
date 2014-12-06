-- Added missing spawns of gameobject 175928 (Incendia Agave)
-- Uniformised respawn time for all GO (10 min)
-- Put them all into a pool as the comments highly suggest they are
-- (max limit is guesswork based on comments)
-- Thanks TheTrueAnimal for pointing. This closes #646
-- Source: YTDB
-- http://www.wowhead.com/object=175928
-- http://www.wowhead.com/item=12732

SET @GUID := 573672;
SET @POOL := 15006;

DELETE FROM `gameobject` WHERE `guid` BETWEEN @GUID AND @GUID + 10;
INSERT INTO `gameobject` VALUES
(@GUID, 175928, 1, -4961, -1995, -49, 3.142, 0, 0, 1, -0.000203653, 600, 100, 1),
(@GUID + 1, 175928, 1, -4963, -1912, -49, 3.142, 0, 0, 1, -0.000203653, 600, 100, 1),
(@GUID + 2, 175928, 1, -4962, -1901, -47, 4.762, 0, 0, 0.689351, -0.724428, 600, 100, 1),
(@GUID + 3, 175928, 1, -4966, -1954, -48, 3.142, 0, 0, 1, -0.000203653, 600, 100, 1),
(@GUID + 4, 175928, 1, -4948, -1899, -49, 3.142, 0, 0, 1, -0.000203653, 600, 100, 1),
(@GUID + 5, 175928, 1, -5038, -2019, -48, 3.142, 0, 0, 1, -0.000203653, 600, 100, 1),
(@GUID + 6, 175928, 1, -5006, -2038, -49, 0.666, 0, 0, 0.32688, 0.945066, 600, 100, 1),
(@GUID + 7, 175928, 1, -4977, -2026, -49, 3.142, 0, 0, 1, -0.000203653, 600, 100, 1),
(@GUID + 8, 175928, 1, -5100, -2066, -47, 3.142, 0, 0, 1, -0.000203653, 600, 100, 1),
(@GUID + 9, 175928, 1, -5029.36, -2045.23, -51.6448, 1.91986, 0, 0, 0.819151, 0.573577, 300, 100, 1),
(@GUID + 10, 175928, 1, -5028.41, -2000.75, -53.1136, -0.90757, 0, 0, -0.438371, 0.898794, 300, 100, 1);

UPDATE `gameobject` SET `spawntimesecs` = 600 WHERE `id` = 175928;

DELETE FROM `pool_gameobject_template` WHERE `id` = 175928;
INSERT INTO `pool_gameobject_template` VALUES
(175928, @POOL, 0, 'Incendia Agave (175928)');

DELETE FROM `pool_template` WHERE `entry` = @POOL;
INSERT INTO `pool_template` VALUES
(@POOL, 6, 'Incendia Agave (175928)');
