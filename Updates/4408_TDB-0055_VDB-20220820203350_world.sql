-- Add your query below.
-- https://github.com/vmangos/core/commit/ad6c44749964f18b69547daf91e416800544b350

-- New chest guids
SET @CHEST1  := 300282;
SET @CHEST2  := 300283;
SET @CHEST3  := 300284;
SET @CHEST4  := 300285;
SET @CHEST5  := 300286;

-- Insert missing spawn location for Battered Chest (id: 2843)
-- Elwynn Forest
DELETE FROM `gameobject` WHERE `guid` BETWEEN @CHEST1 AND @CHEST5;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`) VALUES
(@CHEST1,2843,0, -8564.62, -212.033, 85.301, 2.47837, 0.945518, 0.325568,300,900),
-- Teldrassil
-- Dun Morogh
(@CHEST2,2843,0, -6550.42, 351.925, 392.339, 2.35619, 0.92388, 0.382683,300,900),
(@CHEST3,2843,0, -6524.9, 336.046, 372.736, 6.19592, -0.0436192, 0.999048,300,900),
(@CHEST4,2843,0, -6394.58, 772.351, 386.213, 5.07891, -0.566406, 0.824126,300,900),
--  Tirisfal Glades
(@CHEST5,2843,0, 2041.63, 1935.11, 106.99, 4.67748, -0.719339, 0.694659,300,900);

-- pooling
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN @CHEST1 AND @CHEST5;
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES
(@CHEST1, 31006, 0, 'Elwynn Forest (Echo Ridge Mine) - Battered Chest (2843)'),
(@CHEST2, 31002, 0, 'Dun Morogh (Coldridge Valley Cave) - Battered Chest (2843)'),
(@CHEST3, 31002, 0, 'Dun Morogh (Coldridge Valley Cave) - Battered Chest (2843)'),
(@CHEST4, 31003, 0, 'Dun Morogh (Coldridge Valley) - Battered Chest (2843)'),
(@CHEST5, 31001, 0, 'Tirisfal Glades (Night Web\'s Hollow) - Battered Chest (2843)');

-- Teldrassil adjustments (CCSDB)
UPDATE `gameobject` SET `position_x` = 10816.9, `position_y` = 896.036, `position_z` = 1336.03, `orientation` = 0.349065, `rotation2` = 0.173648, `rotation3` = 0.984808 WHERE `guid` IN (300016);
UPDATE `gameobject` SET `position_x` = 10952.6, `position_y` = 945.797, `position_z` = 1340.77, `orientation` = 4.2237, `rotation2` = -0.857167, `rotation3` = 0.515038 WHERE `guid` IN (300013);
UPDATE `gameobject` SET `position_x` = 10261.8, `position_y` = 960.933, `position_z` = 1340.95, `orientation` = 3.24635, `rotation2` = -0.998629, `rotation3` = 0.0523532 WHERE `guid` IN (300017);

-- End of migration.

