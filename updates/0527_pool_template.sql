SET @POOL := 25453;

-- ------------------

DELETE FROM `pool_template` WHERE `entry` BETWEEN @POOL + 0 AND @POOL + 5;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES
(@POOL + 0, '1', 'AQ40 - Vekniss Wasp / Qiraji Lasher'),
(@POOL + 1, '1', 'AQ40 - Vekniss Wasp / Qiraji Lasher'),
(@POOL + 2, '1', 'AQ40 - Vekniss Wasp / Qiraji Lasher'),
(@POOL + 3, '1', 'AQ40 - Vekniss Wasp / Qiraji Lasher'),
(@POOL + 4, '1', 'AQ40 - Vekniss Wasp / Qiraji Lasher'),
(@POOL + 5, '1', 'AQ40 - Vekniss Wasp / Qiraji Lasher');
