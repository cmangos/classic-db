SET @POOL := 25460; -- 7 needed

-- --------------------------------------------------

DELETE FROM `pool_template` WHERE `entry` BETWEEN @POOL + 0 AND @POOL + 6;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES
(@POOL + 0, 1, 'Stratholme - Rockwing Gargoyle / Rockwing Screecher / Stonespine'),
(@POOL + 1, 1, 'Stratholme - Rockwing Gargoyle / Rockwing Screecher'),
(@POOL + 2, 1, 'Stratholme - Rockwing Gargoyle / Rockwing Screecher'),
(@POOL + 3, 1, 'Stratholme - Rockwing Gargoyle / Rockwing Screecher'),
(@POOL + 4, 1, 'Stratholme - Rockwing Gargoyle / Rockwing Screecher'),
(@POOL + 5, 1, 'Stratholme - Rockwing Gargoyle / Rockwing Screecher'),
(@POOL + 6, 1, 'Stratholme - Rockwing Gargoyle / Rockwing Screecher');
