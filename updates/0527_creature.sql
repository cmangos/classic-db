SET @GUID := 135516; -- 30 creatures needed

-- -------------------

DELETE FROM `creature` WHERE `id`=15235 AND `map`=531; -- Vekniss Stinger
DELETE FROM `creature` WHERE `id`=15236 AND `map`=531; -- Vekniss Wasp
DELETE FROM `creature` WHERE `id`=15249 AND `map`=531; -- Qiraji Lasher
DELETE FROM `creature` WHERE `id`=15538 AND `map`=531; -- Anubisath Swarmguard

DELETE FROM `creature` WHERE `guid` BETWEEN @GUID + 0 AND @GUID + 29;

INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@GUID + 00, 15235, 531, 0, 0, -8617.822, 1770.243, -90.46841, 0, 3520, 0, 0, 64474, 0, 0, 2),
(@GUID + 05, 15235, 531, 0, 0, -8645.388, 1710.061, -90.06686, 0, 3520, 0, 0, 64474, 0, 0, 2),
(@GUID + 10, 15235, 531, 0, 0, -8717.540, 1450.804, -70.15675, 0, 3520, 0, 0, 64474, 0, 0, 2),
(@GUID + 15, 15235, 531, 0, 0, -8667.691, 1471.393, -69.88974, 0, 3520, 0, 0, 64474, 0, 0, 2),
(@GUID + 20, 15235, 531, 0, 0, -8602.222, 1420.140, -66.16376, 0, 3520, 0, 0, 64474, 0, 0, 2),
(@GUID + 25, 15235, 531, 0, 0, -8685.762, 1457.884, -69.90578, 0, 3520, 0, 0, 64474, 0, 0, 2);

SET @DIST := 5;
SET @ANGL := 140;
SET @HC := (SIN(((180 - @ANGL) / 2) * PI() / 180) * @DIST);
SET @C1 := (SQRT(POWER(@DIST, 2) - POWER(@HC, 2)));

SET @X := (SELECT `position_x` FROM `creature` WHERE `guid`=@GUID + 00);
SET @Y := (SELECT `position_y` FROM `creature` WHERE `guid`=@GUID + 00);
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@GUID + 01, 15236, 531, 0, 0, (@X - @HC), (@Y + @C1), -90.06686, 0, 3520, 0, 0, 30149, 0, 0, 0),
(@GUID + 02, 15236, 531, 0, 0, (@X - @HC), (@Y - @C1), -90.06686, 0, 3520, 0, 0, 30149, 0, 0, 0);

SET @X := (SELECT `position_x` FROM `creature` WHERE `guid`=@GUID + 05);
SET @Y := (SELECT `position_y` FROM `creature` WHERE `guid`=@GUID + 05);
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@GUID + 06, 15236, 531, 0, 0, (@X - @HC), (@Y + @C1), -90.06686, 0, 3520, 0, 0, 30149, 0, 0, 0),
(@GUID + 07, 15236, 531, 0, 0, (@X - @HC), (@Y - @C1), -90.06686, 0, 3520, 0, 0, 30149, 0, 0, 0);

SET @X := (SELECT `position_x` FROM `creature` WHERE `guid`=@GUID + 10);
SET @Y := (SELECT `position_y` FROM `creature` WHERE `guid`=@GUID + 10);
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@GUID + 11, 15236, 531, 0, 0, (@X - @HC), (@Y + @C1), -70.15675, 0, 3520, 0, 0, 30149, 0, 0, 0),
(@GUID + 12, 15236, 531, 0, 0, (@X - @HC), (@Y - @C1), -70.15675, 0, 3520, 0, 0, 30149, 0, 0, 0);

SET @X := (SELECT `position_x` FROM `creature` WHERE `guid`=@GUID + 15);
SET @Y := (SELECT `position_y` FROM `creature` WHERE `guid`=@GUID + 15);
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@GUID + 16, 15236, 531, 0, 0, (@X - @HC), (@Y + @C1), -69.88974, 0, 3520, 0, 0, 30149, 0, 0, 0),
(@GUID + 17, 15236, 531, 0, 0, (@X - @HC), (@Y - @C1), -69.88974, 0, 3520, 0, 0, 30149, 0, 0, 0);

SET @X := (SELECT `position_x` FROM `creature` WHERE `guid`=@GUID + 20);
SET @Y := (SELECT `position_y` FROM `creature` WHERE `guid`=@GUID + 20);
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@GUID + 21, 15236, 531, 0, 0, (@X - @HC), (@Y + @C1), -66.16376, 0, 3520, 0, 0, 30149, 0, 0, 0),
(@GUID + 22, 15236, 531, 0, 0, (@X - @HC), (@Y - @C1), -66.16376, 0, 3520, 0, 0, 30149, 0, 0, 0);

SET @X := (SELECT `position_x` FROM `creature` WHERE `guid`=@GUID + 25);
SET @Y := (SELECT `position_y` FROM `creature` WHERE `guid`=@GUID + 25);
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@GUID + 26, 15236, 531, 0, 0, (@X - @HC), (@Y + @C1), -69.90578, 0, 3520, 0, 0, 30149, 0, 0, 0),
(@GUID + 27, 15236, 531, 0, 0, (@X - @HC), (@Y - @C1), -69.90578, 0, 3520, 0, 0, 30149, 0, 0, 0);

SET @DIST := 4;

SET @X := (SELECT `position_x` FROM `creature` WHERE `guid`=@GUID + 00);
SET @Y := (SELECT `position_y` FROM `creature` WHERE `guid`=@GUID + 00);
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@GUID + 03, 15236, 531, 0, 0, (@X - @DIST), @Y, -90.06686, 0, 3520, 0, 0, 30149, 0, 0, 0),
(@GUID + 04, 15249, 531, 0, 0, (@X - @DIST), @Y, -90.06686, 0, 3520, 0, 0, 94255, 0, 0, 0);

SET @X := (SELECT `position_x` FROM `creature` WHERE `guid`=@GUID + 05);
SET @Y := (SELECT `position_y` FROM `creature` WHERE `guid`=@GUID + 05);
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@GUID + 08, 15236, 531, 0, 0, (@X - @DIST), @Y, -90.06686, 0, 3520, 0, 0, 30149, 0, 0, 0),
(@GUID + 09, 15249, 531, 0, 0, (@X - @DIST), @Y, -90.06686, 0, 3520, 0, 0, 94255, 0, 0, 0);

SET @X := (SELECT `position_x` FROM `creature` WHERE `guid`=@GUID + 10);
SET @Y := (SELECT `position_y` FROM `creature` WHERE `guid`=@GUID + 10);
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@GUID + 13, 15236, 531, 0, 0, (@X - @DIST), @Y, -70.15675, 0, 3520, 0, 0, 30149, 0, 0, 0),
(@GUID + 14, 15249, 531, 0, 0, (@X - @DIST), @Y, -70.15675, 0, 3520, 0, 0, 94255, 0, 0, 0);

SET @X := (SELECT `position_x` FROM `creature` WHERE `guid`=@GUID + 15);
SET @Y := (SELECT `position_y` FROM `creature` WHERE `guid`=@GUID + 15);
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@GUID + 18, 15236, 531, 0, 0, (@X - @DIST), @Y, -69.88974, 0, 3520, 0, 0, 30149, 0, 0, 0),
(@GUID + 19, 15249, 531, 0, 0, (@X - @DIST), @Y, -69.88974, 0, 3520, 0, 0, 94255, 0, 0, 0);

SET @X := (SELECT `position_x` FROM `creature` WHERE `guid`=@GUID + 20);
SET @Y := (SELECT `position_y` FROM `creature` WHERE `guid`=@GUID + 20);
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@GUID + 23, 15236, 531, 0, 0, (@X - @DIST), @Y, -66.16376, 0, 3520, 0, 0, 30149, 0, 0, 0),
(@GUID + 24, 15249, 531, 0, 0, (@X - @DIST), @Y, -66.16376, 0, 3520, 0, 0, 94255, 0, 0, 0);

SET @X := (SELECT `position_x` FROM `creature` WHERE `guid`=@GUID + 25);
SET @Y := (SELECT `position_y` FROM `creature` WHERE `guid`=@GUID + 25);
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@GUID + 28, 15236, 531, 0, 0, (@X - @DIST), @Y, -69.90578, 0, 3520, 0, 0, 30149, 0, 0, 0),
(@GUID + 29, 15249, 531, 0, 0, (@X - @DIST), @Y, -69.90578, 0, 3520, 0, 0, 94255, 0, 0, 0);
