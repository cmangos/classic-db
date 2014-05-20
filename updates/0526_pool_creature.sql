SET @GUID := 88640;

-- -------------------

SET @POOL := 25444;

DELETE FROM `pool_creature` WHERE `guid` BETWEEN @GUID + 0 AND @GUID + 27;

INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES
(@GUID + 01, @POOL + 0, 75, 'AQ20 - Hive\'Zara Stinger / Hive\'Zara Wasp'),
(@GUID + 02, @POOL + 1, 75, 'AQ20 - Hive\'Zara Stinger / Hive\'Zara Wasp'),
(@GUID + 03, @POOL + 0, 25, 'AQ20 - Hive\'Zara Stinger / Hive\'Zara Wasp'),
(@GUID + 04, @POOL + 1, 25, 'AQ20 - Hive\'Zara Stinger / Hive\'Zara Wasp'),
(@GUID + 08, @POOL + 2, 75, 'AQ20 - Hive\'Zara Stinger / Hive\'Zara Wasp'),
(@GUID + 09, @POOL + 3, 75, 'AQ20 - Hive\'Zara Stinger / Hive\'Zara Wasp'),
(@GUID + 10, @POOL + 2, 25, 'AQ20 - Hive\'Zara Stinger / Hive\'Zara Wasp'),
(@GUID + 11, @POOL + 3, 25, 'AQ20 - Hive\'Zara Stinger / Hive\'Zara Wasp'),
(@GUID + 15, @POOL + 4, 75, 'AQ20 - Hive\'Zara Stinger / Hive\'Zara Wasp'),
(@GUID + 16, @POOL + 5, 75, 'AQ20 - Hive\'Zara Stinger / Hive\'Zara Wasp'),
(@GUID + 17, @POOL + 4, 25, 'AQ20 - Hive\'Zara Stinger / Hive\'Zara Wasp'),
(@GUID + 18, @POOL + 5, 25, 'AQ20 - Hive\'Zara Stinger / Hive\'Zara Wasp'),
(@GUID + 22, @POOL + 6, 75, 'AQ20 - Hive\'Zara Stinger / Hive\'Zara Wasp'),
(@GUID + 23, @POOL + 7, 75, 'AQ20 - Hive\'Zara Stinger / Hive\'Zara Wasp'),
(@GUID + 24, @POOL + 6, 25, 'AQ20 - Hive\'Zara Stinger / Hive\'Zara Wasp'),
(@GUID + 25, @POOL + 7, 25, 'AQ20 - Hive\'Zara Stinger / Hive\'Zara Wasp');
