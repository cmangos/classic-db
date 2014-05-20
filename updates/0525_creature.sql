SET @GUID := 88503;
SET @STIN := 140263;

SET @DIST := 5;
SET @ANGL := 90;

SET @HC := (SIN(((180 - @ANGL) / 2) * PI() / 180) * @DIST);
SET @C1 := (SQRT(POWER(@DIST, 2) - POWER(@HC, 2)));

DELETE FROM `creature` WHERE `id` = 15325 AND `map` = 509; -- HiveZara Wasp
DELETE FROM `creature` WHERE `id` = 15934 AND `map` = 509; -- HiveZara Hornet

SET @X := (SELECT `position_x` FROM `creature` WHERE `guid` = @STIN + 0);
SET @Y := (SELECT `position_y` FROM `creature` WHERE `guid` = @STIN + 0);
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@GUID + 0, 15325, 509, 0, 0, (@X - @HC), (@Y + @C1), 31.907261, 0, 3520, 0, 0, 50128, 0, 0, 0),
(@GUID + 1, 15325, 509, 0, 0, (@X - @HC), (@Y - @C1), 31.907133, 0, 3520, 0, 0, 50128, 0, 0, 0);

SET @X := (SELECT `position_x` FROM `creature` WHERE `guid` = @STIN + 1);
SET @Y := (SELECT `position_y` FROM `creature` WHERE `guid` = @STIN + 1);
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@GUID + 2, 15325, 509, 0, 0, (@X - @HC), (@Y + @C1), 31.907997, 0, 3520, 0, 0, 50128, 0, 0, 0),
(@GUID + 3, 15325, 509, 0, 0, (@X - @HC), (@Y - @C1), 31.907181, 0, 3520, 0, 0, 50128, 0, 0, 0);

SET @X := (SELECT `position_x` FROM `creature` WHERE `guid` = @STIN + 2);
SET @Y := (SELECT `position_y` FROM `creature` WHERE `guid` = @STIN + 2);
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@GUID + 4, 15325, 509, 0, 0, (@X - @HC), (@Y + @C1), 31.907444, 0, 3520, 0, 0, 50128, 0, 0, 0),
(@GUID + 5, 15325, 509, 0, 0, (@X - @HC), (@Y - @C1), 31.907513, 0, 3520, 0, 0, 50128, 0, 0, 0);

SET @X := (SELECT `position_x` FROM `creature` WHERE `guid` = @STIN + 3);
SET @Y := (SELECT `position_y` FROM `creature` WHERE `guid` = @STIN + 3);
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@GUID + 6, 15325, 509, 0, 0, (@X - @HC), (@Y + @C1), 31.907257, 0, 3520, 0, 0, 50128, 0, 0, 0),
(@GUID + 7, 15325, 509, 0, 0, (@X - @HC), (@Y - @C1), 31.907475, 0, 3520, 0, 0, 50128, 0, 0, 0);

SET @X := (SELECT `position_x` FROM `creature` WHERE `guid` = @STIN + 4);
SET @Y := (SELECT `position_y` FROM `creature` WHERE `guid` = @STIN + 4);
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@GUID + 8, 15325, 509, 0, 0, (@X - @HC), (@Y + @C1), 31.907475, 0, 3520, 0, 0, 50128, 0, 0, 0),
(@GUID + 9, 15325, 509, 0, 0, (@X - @HC), (@Y - @C1), 31.911547, 0, 3520, 0, 0, 50128, 0, 0, 0);

SET @X := (SELECT `position_x` FROM `creature` WHERE `guid` = @STIN + 5);
SET @Y := (SELECT `position_y` FROM `creature` WHERE `guid` = @STIN + 5);
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@GUID + 10, 15325, 509, 0, 0, (@X - @HC), (@Y + @C1), 25.516979, 0, 3520, 0, 0, 50128, 0, 0, 0),
(@GUID + 11, 15325, 509, 0, 0, (@X - @HC), (@Y - @C1), 23.751820, 0, 3520, 0, 0, 50128, 0, 0, 0);

SET @X := (SELECT `position_x` FROM `creature` WHERE `guid` = @STIN + 6);
SET @Y := (SELECT `position_y` FROM `creature` WHERE `guid` = @STIN + 6);
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@GUID + 12, 15325, 509, 0, 0, (@X - @HC), (@Y + @C1), 20.836456, 0, 3520, 0, 0, 50128, 0, 0, 0),
(@GUID + 13, 15325, 509, 0, 0, (@X - @HC), (@Y - @C1), 21.386658, 0, 3520, 0, 0, 50128, 0, 0, 0);

SET @X := (SELECT `position_x` FROM `creature` WHERE `guid` = @STIN + 7);
SET @Y := (SELECT `position_y` FROM `creature` WHERE `guid` = @STIN + 7);
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@GUID + 14, 15325, 509, 0, 0, (@X - @HC), (@Y + @C1), 24.245667, 0, 3520, 0, 0, 50128, 0, 0, 0),
(@GUID + 15, 15325, 509, 0, 0, (@X - @HC), (@Y - @C1), 29.970631, 0, 3520, 0, 0, 50128, 0, 0, 0);

SET @X := (SELECT `position_x` FROM `creature` WHERE `guid` = @STIN + 8);
SET @Y := (SELECT `position_y` FROM `creature` WHERE `guid` = @STIN + 8);
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@GUID + 16, 15325, 509, 0, 0, (@X - @HC), (@Y + @C1), 21.382578, 0, 3520, 0, 0, 50128, 0, 0, 0),
(@GUID + 17, 15325, 509, 0, 0, (@X - @HC), (@Y - @C1), 21.380653, 0, 3520, 0, 0, 50128, 0, 0, 0);

SET @X := (SELECT `position_x` FROM `creature` WHERE `guid` = @STIN + 9);
SET @Y := (SELECT `position_y` FROM `creature` WHERE `guid` = @STIN + 9);
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@GUID + 18, 15325, 509, 0, 0, (@X - @HC), (@Y + @C1), 31.907103, 0, 3520, 0, 0, 50128, 0, 0, 0),
(@GUID + 19, 15325, 509, 0, 0, (@X - @HC), (@Y - @C1), 31.909124, 0, 3520, 0, 0, 50128, 0, 0, 0);
