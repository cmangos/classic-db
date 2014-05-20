SET @GUID := 135516;
SET @POOL := 25453;

-- -------------------

DELETE FROM `pool_creature` WHERE `pool_entry` BETWEEN @POOL + 0 AND @POOL + 5;
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES
(@GUID + 03, @POOL + 0, 50, 'AQ40 - Vekniss Wasp / Qiraji Lasher'),
(@GUID + 04, @POOL + 0, 50, 'AQ40 - Vekniss Wasp / Qiraji Lasher'),

(@GUID + 08, @POOL + 1, 50, 'AQ40 - Vekniss Wasp / Qiraji Lasher'),
(@GUID + 09, @POOL + 1, 50, 'AQ40 - Vekniss Wasp / Qiraji Lasher'),

(@GUID + 13, @POOL + 2, 50, 'AQ40 - Vekniss Wasp / Qiraji Lasher'),
(@GUID + 14, @POOL + 2, 50, 'AQ40 - Vekniss Wasp / Qiraji Lasher'),

(@GUID + 18, @POOL + 3, 50, 'AQ40 - Vekniss Wasp / Qiraji Lasher'),
(@GUID + 19, @POOL + 3, 50, 'AQ40 - Vekniss Wasp / Qiraji Lasher'),

(@GUID + 23, @POOL + 4, 50, 'AQ40 - Vekniss Wasp / Qiraji Lasher'),
(@GUID + 24, @POOL + 4, 50, 'AQ40 - Vekniss Wasp / Qiraji Lasher'),

(@GUID + 28, @POOL + 5, 50, 'AQ40 - Vekniss Wasp / Qiraji Lasher'),
(@GUID + 29, @POOL + 5, 50, 'AQ40 - Vekniss Wasp / Qiraji Lasher');
