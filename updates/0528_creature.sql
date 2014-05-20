
-- --------------------------------------------------

SET @PATCH1 := 53943;
SET @PATCH2 := 53953;
SET @PATCH3 := 53954;

UPDATE `creature` SET `position_x` = 3658.833, `position_y` = -3494.780, `position_z` = 136.6372, `spawndist` = 0, `MovementType` = 2 WHERE `guid` = @PATCH1;
UPDATE `creature` SET `position_x` = 3560.001, `position_y` = -3333.560, `position_z` = 129.3446, `spawndist` = 0, `MovementType` = 2 WHERE `guid` = @PATCH2;
UPDATE `creature` SET `position_x` = 3659.589, `position_y` = -3336.161, `position_z` = 123.8126, `spawndist` = 0, `MovementType` = 2 WHERE `guid` = @PATCH3;
