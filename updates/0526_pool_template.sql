SET @POOL := 25444;

-- ------------------

DELETE FROM `pool_template` WHERE `entry` BETWEEN @POOL AND @POOL + 7;

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES
(@POOL + 0, 1, 'AQ20 - Hive\'Zara Stinger / Hive\'Zara Wasp'),
(@POOL + 1, 1, 'AQ20 - Hive\'Zara Stinger / Hive\'Zara Wasp'),
(@POOL + 2, 1, 'AQ20 - Hive\'Zara Stinger / Hive\'Zara Wasp'),
(@POOL + 3, 1, 'AQ20 - Hive\'Zara Stinger / Hive\'Zara Wasp'),
(@POOL + 4, 1, 'AQ20 - Hive\'Zara Stinger / Hive\'Zara Wasp'),
(@POOL + 5, 1, 'AQ20 - Hive\'Zara Stinger / Hive\'Zara Wasp'),
(@POOL + 6, 1, 'AQ20 - Hive\'Zara Stinger / Hive\'Zara Wasp'),
(@POOL + 7, 1, 'AQ20 - Hive\'Zara Stinger / Hive\'Zara Wasp');
