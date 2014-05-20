SET @GUID := 88640;

-- ------------------------------------------------------------------

DELETE FROM `creature` WHERE `guid` BETWEEN @GUID + 0 AND @GUID + 27;

INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@GUID + 00, 15327, 509, 0, 0, -9654.327, 1587.958, 21.51131, 0, 3520, 0, 0, 50128, 0, 0, 2),
(@GUID + 07, 15327, 509, 0, 0, -9593.868, 1602.922, 21.51135, 0, 3520, 0, 0, 50128, 0, 0, 2),
(@GUID + 14, 15327, 509, 0, 0, -9665.344, 1553.455, 21.51131, 0, 3520, 0, 0, 50128, 0, 0, 2),
(@GUID + 21, 15327, 509, 0, 0, -9643.708, 1556.367, 21.51131, 0, 3520, 0, 0, 50128, 0, 0, 2);

SET @DIST := 5;
SET @ANGL := 135;
SET @HC := (SIN(((180 - @ANGL) / 2) * PI() / 180) * @DIST);
SET @C1 := (SQRT(POWER(@DIST, 2) - POWER(@HC, 2)));

SET @X := (SELECT `position_x` FROM `creature` WHERE `guid`=@GUID + 0);
SET @Y := (SELECT `position_y` FROM `creature` WHERE `guid`=@GUID + 0);
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@GUID + 01, 15327, 509, 0, 0, (@X - @HC), (@Y + @C1), 31.907261, 0, 3520, 0, 0, 50128, 0, 0, 0),
(@GUID + 02, 15327, 509, 0, 0, (@X - @HC), (@Y - @C1), 31.907133, 0, 3520, 0, 0, 50128, 0, 0, 0),
(@GUID + 03, 15325, 509, 0, 0, (@X - @HC), (@Y + @C1), 31.907261, 0, 3520, 0, 0, 24993, 0, 0, 0),
(@GUID + 04, 15325, 509, 0, 0, (@X - @HC), (@Y - @C1), 31.907133, 0, 3520, 0, 0, 24993, 0, 0, 0);

SET @X := (SELECT `position_x` FROM `creature` WHERE `guid`=@GUID + 7);
SET @Y := (SELECT `position_y` FROM `creature` WHERE `guid`=@GUID + 7);
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@GUID + 08, 15327, 509, 0, 0, (@X - @HC), (@Y + @C1), 31.907261, 0, 3520, 0, 0, 50128, 0, 0, 0),
(@GUID + 09, 15327, 509, 0, 0, (@X - @HC), (@Y - @C1), 31.907133, 0, 3520, 0, 0, 50128, 0, 0, 0),
(@GUID + 10, 15325, 509, 0, 0, (@X - @HC), (@Y + @C1), 31.907261, 0, 3520, 0, 0, 24993, 0, 0, 0),
(@GUID + 11, 15325, 509, 0, 0, (@X - @HC), (@Y - @C1), 31.907133, 0, 3520, 0, 0, 24993, 0, 0, 0);

SET @X := (SELECT `position_x` FROM `creature` WHERE `guid`=@GUID + 14);
SET @Y := (SELECT `position_y` FROM `creature` WHERE `guid`=@GUID + 14);
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@GUID + 15, 15327, 509, 0, 0, (@X - @HC), (@Y + @C1), 31.907261, 0, 3520, 0, 0, 50128, 0, 0, 0),
(@GUID + 16, 15327, 509, 0, 0, (@X - @HC), (@Y - @C1), 31.907133, 0, 3520, 0, 0, 50128, 0, 0, 0),
(@GUID + 17, 15325, 509, 0, 0, (@X - @HC), (@Y + @C1), 31.907261, 0, 3520, 0, 0, 24993, 0, 0, 0),
(@GUID + 18, 15325, 509, 0, 0, (@X - @HC), (@Y - @C1), 31.907133, 0, 3520, 0, 0, 24993, 0, 0, 0);

SET @X := (SELECT `position_x` FROM `creature` WHERE `guid`=@GUID + 21);
SET @Y := (SELECT `position_y` FROM `creature` WHERE `guid`=@GUID + 21);
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@GUID + 22, 15327, 509, 0, 0, (@X - @HC), (@Y + @C1), 31.907261, 0, 3520, 0, 0, 50128, 0, 0, 0),
(@GUID + 23, 15327, 509, 0, 0, (@X - @HC), (@Y - @C1), 31.907133, 0, 3520, 0, 0, 50128, 0, 0, 0),
(@GUID + 24, 15325, 509, 0, 0, (@X - @HC), (@Y + @C1), 31.907261, 0, 3520, 0, 0, 24993, 0, 0, 0),
(@GUID + 25, 15325, 509, 0, 0, (@X - @HC), (@Y - @C1), 31.907133, 0, 3520, 0, 0, 24993, 0, 0, 0);

SET @DIST := 5;
SET @ANGL := 45;
SET @HC := (SIN(((180 - @ANGL) / 2) * PI() / 180) * @DIST);
SET @C1 := (SQRT(POWER(@DIST, 2) - POWER(@HC, 2)));

SET @X := (SELECT `position_x` FROM `creature` WHERE `guid`=@GUID + 0);
SET @Y := (SELECT `position_y` FROM `creature` WHERE `guid`=@GUID + 0);
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@GUID + 05, 15325, 509, 0, 0, (@X - @HC), (@Y + @C1), 31.907261, 0, 3520, 0, 0, 24993, 0, 0, 0),
(@GUID + 06, 15325, 509, 0, 0, (@X - @HC), (@Y - @C1), 31.907133, 0, 3520, 0, 0, 24993, 0, 0, 0);

SET @X := (SELECT `position_x` FROM `creature` WHERE `guid`=@GUID + 7);
SET @Y := (SELECT `position_y` FROM `creature` WHERE `guid`=@GUID + 7);
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@GUID + 12, 15325, 509, 0, 0, (@X - @HC), (@Y + @C1), 31.907261, 0, 3520, 0, 0, 24993, 0, 0, 0),
(@GUID + 13, 15325, 509, 0, 0, (@X - @HC), (@Y - @C1), 31.907133, 0, 3520, 0, 0, 24993, 0, 0, 0);

SET @X := (SELECT `position_x` FROM `creature` WHERE `guid`=@GUID + 14);
SET @Y := (SELECT `position_y` FROM `creature` WHERE `guid`=@GUID + 14);
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@GUID + 19, 15325, 509, 0, 0, (@X - @HC), (@Y + @C1), 31.907261, 0, 3520, 0, 0, 24993, 0, 0, 0),
(@GUID + 20, 15325, 509, 0, 0, (@X - @HC), (@Y - @C1), 31.907133, 0, 3520, 0, 0, 24993, 0, 0, 0);

SET @X := (SELECT `position_x` FROM `creature` WHERE `guid`=@GUID + 21);
SET @Y := (SELECT `position_y` FROM `creature` WHERE `guid`=@GUID + 21);
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@GUID + 26, 15325, 509, 0, 0, (@X - @HC), (@Y + @C1), 31.907261, 0, 3520, 0, 0, 24993, 0, 0, 0),
(@GUID + 27, 15325, 509, 0, 0, (@X - @HC), (@Y - @C1), 31.907133, 0, 3520, 0, 0, 24993, 0, 0, 0);
