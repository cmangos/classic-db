-- Qiraji Champion

SET @QIRCH1 := 88035;
SET @QIRCH2 := 88057;
SET @QIRCH3 := 88039;
SET @QIRCH4 := 88036;
SET @QIRCH5 := 88058;
SET @QIRCH6 := 88037;
SET @QIRCH7 := 88038;
SET @QIRCH8 := 88030;

DELETE FROM `creature` WHERE `guid` IN (@QIRCH1, @QIRCH2, @QIRCH3, @QIRCH4, @QIRCH5, @QIRCH6, @QIRCH7, @QIRCH8);
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(@QIRCH1, 15252, 531, 15340, 0, -9078.48, 1388.96, -107.236, 4.86, 28800, 0, 0, 254720, 0, 0, 2),
(@QIRCH2, 15252, 531, 15340, 0, -9097.76, 1425.84, -107.122, 4.86, 28800, 0, 0, 254720, 0, 0, 2),
(@QIRCH3, 15252, 531, 15340, 0, -9093.40, 1350.50, -105.643, 4.86, 28800, 0, 0, 254720, 0, 0, 2),
(@QIRCH4, 15252, 531, 15340, 0, -9226.53, 1587.07, -74.5633, 4.86, 28800, 0, 0, 254720, 0, 0, 2),
(@QIRCH5, 15252, 531, 15340, 0, -9176.37, 1575.96, -80.7412, 4.86, 28800, 0, 0, 254720, 0, 0, 2),
(@QIRCH6, 15252, 531, 15340, 0, -9128.77, 1747.88, -42.5123, 4.86, 28800, 0, 0, 254720, 0, 0, 2),
(@QIRCH7, 15252, 531, 15340, 0, -9092.95, 1804.28, -43.6435, 4.86, 28800, 0, 0, 254720, 0, 0, 2),
(@QIRCH8, 15252, 531, 15340, 0, -9020.22, 1855.98, -44.2076, 4.86, 28800, 0, 0, 254720, 0, 0, 2);
