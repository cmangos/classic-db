
SET @GUID := 134996;
SET @POOL := 25459; -- 1 needed

-- --------------------------------------------------

INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES
(@GUID + 8, @POOL, 40, 'Stratholme - Plague Ghoul / Skul'),
(@GUID + 9, @POOL, 40, 'Stratholme - Plague Ghoul / Skul'),
(@GUID + 10, @POOL, 10, 'Stratholme - Plague Ghoul / Skul'),
(@GUID + 11, @POOL, 10, 'Stratholme - Plague Ghoul / Skul');
