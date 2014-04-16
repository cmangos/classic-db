-- Qiraji Mindslayer / Qiraji Slayer

SET @GUIDSTART := 93762;
SET @DISTANCE := 6;


DELETE FROM `creature` WHERE `id` IN (15250, 15246, 15249);

SET @QWARRIOR := 88035;
SET @X := (SELECT `position_x` FROM `creature` WHERE `guid`=@QWARRIOR);
SET @Y := (SELECT `position_y` FROM `creature` WHERE `guid`=@QWARRIOR);

SET @ORIENTATION := (SELECT `ORIENTATION` FROM `creature` WHERE `guid`=@QWARRIOR);

SET @B := (SELECT(@DISTANCE * SIN(PI() / 2) / SIN(@ORIENTATION) * -1));
SET @C := (SELECT SQRT(POW(@B, 2) - POW(@DISTANCE,2)));

INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `ORIENTATION`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@GUIDSTART + 0, 15250, 531, 0, 0, @X + @B, @Y + @C, -107.051811, @ORIENTATION, 28800, 0, 0, 123840, 0, 0, 0),
(@GUIDSTART + 1, 15250, 531, 0, 0, @X - @B, @Y - @C, -106.666115, @ORIENTATION, 28800, 0, 0, 123840, 0, 0, 0),
(@GUIDSTART + 2, 15250, 531, 0, 0, @X + @C, @Y - @B, -106.909103, @ORIENTATION, 28800, 0, 0, 123840, 0, 0, 0),
(@GUIDSTART + 3, 15250, 531, 0, 0, @X - @C, @Y + @B, -107.229301, @ORIENTATION, 28800, 0, 0, 123840, 0, 0, 0),
(@GUIDSTART + 4, 15246, 531, 0, 0, @X + @B, @Y + @C, -107.051811, @ORIENTATION, 28800, 0, 0, 123840, 0, 0, 0),
(@GUIDSTART + 5, 15246, 531, 0, 0, @X - @B, @Y - @C, -106.666115, @ORIENTATION, 28800, 0, 0, 123840, 0, 0, 0),
(@GUIDSTART + 6, 15246, 531, 0, 0, @X + @C, @Y - @B, -106.909103, @ORIENTATION, 28800, 0, 0, 123840, 0, 0, 0),
(@GUIDSTART + 7, 15246, 531, 0, 0, @X - @C, @Y + @B, -107.229301, @ORIENTATION, 28800, 0, 0, 123840, 0, 0, 0);

SET @QWARRIOR := 88057;
SET @X := (SELECT `position_x` FROM `creature` WHERE `guid`=@QWARRIOR);
SET @Y := (SELECT `position_y` FROM `creature` WHERE `guid`=@QWARRIOR);

INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `ORIENTATION`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@GUIDSTART + 8, 15250, 531, 0, 0, @X + @B, @Y + @C, -106.920204, @ORIENTATION, 28800, 0, 0, 123840, 0, 0, 0),
(@GUIDSTART + 9, 15250, 531, 0, 0, @X - @B, @Y - @C, -106.686241, @ORIENTATION, 28800, 0, 0, 123840, 0, 0, 0),
(@GUIDSTART + 10, 15250, 531, 0, 0, @X + @C, @Y - @B, -107.239189, @ORIENTATION, 28800, 0, 0, 123840, 0, 0, 0),
(@GUIDSTART + 11, 15250, 531, 0, 0, @X - @C, @Y + @B, -106.891800, @ORIENTATION, 28800, 0, 0, 123840, 0, 0, 0),
(@GUIDSTART + 12, 15246, 531, 0, 0, @X + @B, @Y + @C, -106.920204, @ORIENTATION, 28800, 0, 0, 123840, 0, 0, 0),
(@GUIDSTART + 13, 15246, 531, 0, 0, @X - @B, @Y - @C, -106.686241, @ORIENTATION, 28800, 0, 0, 123840, 0, 0, 0),
(@GUIDSTART + 14, 15246, 531, 0, 0, @X + @C, @Y - @B, -107.239189, @ORIENTATION, 28800, 0, 0, 123840, 0, 0, 0),
(@GUIDSTART + 15, 15246, 531, 0, 0, @X - @C, @Y + @B, -106.891800, @ORIENTATION, 28800, 0, 0, 123840, 0, 0, 0);


SET @QWARRIOR := 88039;
SET @X := (SELECT `position_x` FROM `creature` WHERE `guid`=@QWARRIOR);
SET @Y := (SELECT `position_y` FROM `creature` WHERE `guid`=@QWARRIOR);

INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `ORIENTATION`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@GUIDSTART + 16, 15250, 531, 0, 0, @X + @B, @Y + @C, -105.102516, @ORIENTATION, 28800, 0, 0, 123840, 0, 0, 0),
(@GUIDSTART + 17, 15250, 531, 0, 0, @X - @B, @Y - @C, -105.988602, @ORIENTATION, 28800, 0, 0, 123840, 0, 0, 0),
(@GUIDSTART + 18, 15250, 531, 0, 0, @X + @C, @Y - @B, -105.898041, @ORIENTATION, 28800, 0, 0, 123840, 0, 0, 0),
(@GUIDSTART + 19, 15250, 531, 0, 0, @X - @C, @Y + @B, -105.385559, @ORIENTATION, 28800, 0, 0, 123840, 0, 0, 0),
(@GUIDSTART + 20, 15246, 531, 0, 0, @X + @B, @Y + @C, -105.102516, @ORIENTATION, 28800, 0, 0, 123840, 0, 0, 0),
(@GUIDSTART + 21, 15246, 531, 0, 0, @X - @B, @Y - @C, -105.988602, @ORIENTATION, 28800, 0, 0, 123840, 0, 0, 0),
(@GUIDSTART + 22, 15246, 531, 0, 0, @X + @C, @Y - @B, -105.898041, @ORIENTATION, 28800, 0, 0, 123840, 0, 0, 0),
(@GUIDSTART + 23, 15246, 531, 0, 0, @X - @C, @Y + @B, -105.385559, @ORIENTATION, 28800, 0, 0, 123840, 0, 0, 0);

SET @QWARRIOR := 88058;
SET @X := (SELECT `position_x` FROM `creature` WHERE `guid`=@QWARRIOR);
SET @Y := (SELECT `position_y` FROM `creature` WHERE `guid`=@QWARRIOR);

INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `ORIENTATION`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@GUIDSTART + 24, 15250, 531, 0, 0, @X + @B, @Y + @C, -81.702682, @ORIENTATION, 28800, 0, 0, 123840, 0, 0, 0),
(@GUIDSTART + 25, 15250, 531, 0, 0, @X - @B, @Y - @C, -79.345657, @ORIENTATION, 28800, 0, 0, 123840, 0, 0, 0),
(@GUIDSTART + 26, 15250, 531, 0, 0, @X + @C, @Y - @B, -81.933144, @ORIENTATION, 28800, 0, 0, 123840, 0, 0, 0),
(@GUIDSTART + 27, 15250, 531, 0, 0, @X - @C, @Y + @B, -79.554100, @ORIENTATION, 28800, 0, 0, 123840, 0, 0, 0),
(@GUIDSTART + 28, 15246, 531, 0, 0, @X + @B, @Y + @C, -81.702682, @ORIENTATION, 28800, 0, 0, 123840, 0, 0, 0),
(@GUIDSTART + 29, 15246, 531, 0, 0, @X - @B, @Y - @C, -79.345657, @ORIENTATION, 28800, 0, 0, 123840, 0, 0, 0),
(@GUIDSTART + 30, 15246, 531, 0, 0, @X + @C, @Y - @B, -81.933144, @ORIENTATION, 28800, 0, 0, 123840, 0, 0, 0),
(@GUIDSTART + 31, 15246, 531, 0, 0, @X - @C, @Y + @B, -79.554100, @ORIENTATION, 28800, 0, 0, 123840, 0, 0, 0);

SET @QWARRIOR := 88036;
SET @X := (SELECT `position_x` FROM `creature` WHERE `guid`=@QWARRIOR);
SET @Y := (SELECT `position_y` FROM `creature` WHERE `guid`=@QWARRIOR);

INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `ORIENTATION`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@GUIDSTART + 32, 15250, 531, 0, 0, @X + @B, @Y + @C, -73.931129, @ORIENTATION, 28800, 0, 0, 123840, 0, 0, 0),
(@GUIDSTART + 33, 15250, 531, 0, 0, @X - @B, @Y - @C, -74.220581, @ORIENTATION, 28800, 0, 0, 123840, 0, 0, 0),
(@GUIDSTART + 34, 15250, 531, 0, 0, @X + @C, @Y - @B, -75.666104, @ORIENTATION, 28800, 0, 0, 123840, 0, 0, 0),
(@GUIDSTART + 35, 15250, 531, 0, 0, @X - @C, @Y + @B, -73.348442, @ORIENTATION, 28800, 0, 0, 123840, 0, 0, 0),
(@GUIDSTART + 36, 15246, 531, 0, 0, @X + @B, @Y + @C, -73.931129, @ORIENTATION, 28800, 0, 0, 123840, 0, 0, 0),
(@GUIDSTART + 37, 15246, 531, 0, 0, @X - @B, @Y - @C, -74.220581, @ORIENTATION, 28800, 0, 0, 123840, 0, 0, 0),
(@GUIDSTART + 38, 15246, 531, 0, 0, @X + @C, @Y - @B, -75.666104, @ORIENTATION, 28800, 0, 0, 123840, 0, 0, 0),
(@GUIDSTART + 39, 15246, 531, 0, 0, @X - @C, @Y + @B, -73.348442, @ORIENTATION, 28800, 0, 0, 123840, 0, 0, 0);

SET @QWARRIOR := 88037;
SET @X := (SELECT `position_x` FROM `creature` WHERE `guid`=@QWARRIOR);
SET @Y := (SELECT `position_y` FROM `creature` WHERE `guid`=@QWARRIOR);

INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `ORIENTATION`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@GUIDSTART + 40, 15250, 531, 0, 0, @X + @B, @Y + @C, -42.209759, @ORIENTATION, 28800, 0, 0, 123840, 0, 0, 0),
(@GUIDSTART + 41, 15250, 531, 0, 0, @X - @B, @Y - @C, -42.338993, @ORIENTATION, 28800, 0, 0, 123840, 0, 0, 0),
(@GUIDSTART + 42, 15250, 531, 0, 0, @X + @C, @Y - @B, -42.380348, @ORIENTATION, 28800, 0, 0, 123840, 0, 0, 0),
(@GUIDSTART + 43, 15250, 531, 0, 0, @X - @C, @Y + @B, -42.834133, @ORIENTATION, 28800, 0, 0, 123840, 0, 0, 0),
(@GUIDSTART + 44, 15246, 531, 0, 0, @X + @B, @Y + @C, -42.209759, @ORIENTATION, 28800, 0, 0, 123840, 0, 0, 0),
(@GUIDSTART + 45, 15246, 531, 0, 0, @X - @B, @Y - @C, -42.338993, @ORIENTATION, 28800, 0, 0, 123840, 0, 0, 0),
(@GUIDSTART + 46, 15246, 531, 0, 0, @X + @C, @Y - @B, -42.380348, @ORIENTATION, 28800, 0, 0, 123840, 0, 0, 0),
(@GUIDSTART + 47, 15246, 531, 0, 0, @X - @C, @Y + @B, -42.834133, @ORIENTATION, 28800, 0, 0, 123840, 0, 0, 0);

SET @QWARRIOR := 88038;
SET @X := (SELECT `position_x` FROM `creature` WHERE `guid`=@QWARRIOR);
SET @Y := (SELECT `position_y` FROM `creature` WHERE `guid`=@QWARRIOR);

INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `ORIENTATION`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@GUIDSTART + 48, 15250, 531, 0, 0, @X + @B, @Y + @C, -43.638119, @ORIENTATION, 28800, 0, 0, 123840, 0, 0, 0),
(@GUIDSTART + 49, 15250, 531, 0, 0, @X - @B, @Y - @C, -43.297462, @ORIENTATION, 28800, 0, 0, 123840, 0, 0, 0),
(@GUIDSTART + 50, 15250, 531, 0, 0, @X + @C, @Y - @B, -42.888660, @ORIENTATION, 28800, 0, 0, 123840, 0, 0, 0),
(@GUIDSTART + 51, 15250, 531, 0, 0, @X - @C, @Y + @B, -43.687057, @ORIENTATION, 28800, 0, 0, 123840, 0, 0, 0),
(@GUIDSTART + 52, 15246, 531, 0, 0, @X + @B, @Y + @C, -43.638119, @ORIENTATION, 28800, 0, 0, 123840, 0, 0, 0),
(@GUIDSTART + 53, 15246, 531, 0, 0, @X - @B, @Y - @C, -43.297462, @ORIENTATION, 28800, 0, 0, 123840, 0, 0, 0),
(@GUIDSTART + 54, 15246, 531, 0, 0, @X + @C, @Y - @B, -42.888660, @ORIENTATION, 28800, 0, 0, 123840, 0, 0, 0),
(@GUIDSTART + 55, 15246, 531, 0, 0, @X - @C, @Y + @B, -43.687057, @ORIENTATION, 28800, 0, 0, 123840, 0, 0, 0);

SET @QWARRIOR := 88030;
SET @X := (SELECT `position_x` FROM `creature` WHERE `guid`=@QWARRIOR);
SET @Y := (SELECT `position_y` FROM `creature` WHERE `guid`=@QWARRIOR);

INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `ORIENTATION`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@GUIDSTART + 56, 15250, 531, 0, 0, @X + @B, @Y + @C, -43.846413, @ORIENTATION, 28800, 0, 0, 123840, 0, 0, 0),
(@GUIDSTART + 57, 15250, 531, 0, 0, @X - @B, @Y - @C, -44.229507, @ORIENTATION, 28800, 0, 0, 123840, 0, 0, 0),
(@GUIDSTART + 58, 15250, 531, 0, 0, @X + @C, @Y - @B, -43.803242, @ORIENTATION, 28800, 0, 0, 123840, 0, 0, 0),
(@GUIDSTART + 59, 15250, 531, 0, 0, @X - @C, @Y + @B, -44.612328, @ORIENTATION, 28800, 0, 0, 123840, 0, 0, 0),
(@GUIDSTART + 60, 15246, 531, 0, 0, @X + @B, @Y + @C, -43.846413, @ORIENTATION, 28800, 0, 0, 123840, 0, 0, 0),
(@GUIDSTART + 61, 15246, 531, 0, 0, @X - @B, @Y - @C, -44.229507, @ORIENTATION, 28800, 0, 0, 123840, 0, 0, 0),
(@GUIDSTART + 62, 15246, 531, 0, 0, @X + @C, @Y - @B, -43.803242, @ORIENTATION, 28800, 0, 0, 123840, 0, 0, 0),
(@GUIDSTART + 63, 15246, 531, 0, 0, @X - @C, @Y + @B, -44.612328, @ORIENTATION, 28800, 0, 0, 123840, 0, 0, 0);
