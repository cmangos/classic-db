-- Added waypoint movement and paths for 3 patrols in Naxxramas Military Quarter

-- Waypoints for the Deathknight Captains in first room of Military Quarter
-- Source: http://www.youtube.com/watch?v=PQ88MOZ-gGk
SET @MASTERGUID := 88424;
SET @SLAVEGUID1 := 88425;

UPDATE `creature` SET `position_x` = 2867.81, `position_y` = -3275.33, `position_z` = 298.30, `orientation` = 4.75, `MovementType` = 2 WHERE `guid` = @SLAVEGUID1;
UPDATE `creature` SET `position_x` = 2871.87, `position_y` = -3275.17, `position_z` = 298.31, `orientation` = 4.71, `MovementType` = 2 WHERE `guid` = @MASTERGUID;

DELETE FROM `creature_movement` WHERE `id` = @MASTERGUID;
INSERT INTO `creature_movement` VALUES (@MASTERGUID, 1, 2871.87, -3275.17, 298.31, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.71, 0, 0);
INSERT INTO `creature_movement` VALUES (@MASTERGUID, 2, 2876.79, -3323.75, 298.15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.51, 0, 0);

DELETE FROM `creature_linking` WHERE `guid` = @SLAVEGUID1;
INSERT INTO `creature_linking` VALUES
(@SLAVEGUID1, @MASTERGUID, 515);

-- Waypoints for Shade of Naxxramas and the two Necro Knights in the first room
-- Source: http://www.youtube.com/watch?v=PQ88MOZ-gGk

SET @MASTERGUID := 88397;
SET @SLAVEGUID1 := 88398;
SET @SLAVEGUID2 := 88399;

UPDATE `creature` SET `MovementType` = 2 WHERE `guid` IN (@MASTERGUID, @SLAVEGUID1, @SLAVEGUID2);

DELETE FROM `creature_movement` WHERE `id` = @MASTERGUID;
INSERT INTO `creature_movement` VALUES (@MASTERGUID, 1, 2919.12, -3346.21, 298.32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.34, 0, 0);
INSERT INTO `creature_movement` VALUES (@MASTERGUID, 2, 2869.00, -3296.10, 298.14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.58, 0, 0);

DELETE FROM `creature_linking` WHERE `guid` IN (@SLAVEGUID1, @SLAVEGUID2);
INSERT INTO `creature_linking` VALUES
(@SLAVEGUID1, @MASTERGUID, 515),
(@SLAVEGUID2, @MASTERGUID, 515);

-- Waypoints for Deathknight Captain and the two Death Touched Warriors in the second room
-- Source: http://www.youtube.com/watch?v=PQ88MOZ-gGk

SET @MASTERGUID := 88440;
SET @SLAVEGUID1 := 88442;
SET @SLAVEGUID2 := 88441;

UPDATE `creature` SET `MovementType` = 2 WHERE `guid` IN (@MASTERGUID, @SLAVEGUID1, @SLAVEGUID2);

DELETE FROM `creature_movement` WHERE `id` = @MASTERGUID;
INSERT INTO `creature_movement` VALUES (@MASTERGUID, 1, 2812.05, -3177.41, 298.33, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6.01, 0, 0);
INSERT INTO `creature_movement` VALUES (@MASTERGUID, 2, 2877.82, -3214.98, 298.15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.62, 0, 0);

DELETE FROM `creature_linking` WHERE `guid` IN (@SLAVEGUID1, @SLAVEGUID2);
INSERT INTO `creature_linking` VALUES
(@SLAVEGUID1, @MASTERGUID, 515),
(@SLAVEGUID2, @MASTERGUID, 515);

