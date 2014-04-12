-- Obsidian Eradicator, creature 15262
SET @OBSERA1 := 88074;
SET @OBSERA2 := 87734;
SET @OBSERA3 := 87736;

SET @PROPHSK := 88075;

SET @OLDERA1 := 590011;
SET @OLDERA2 := 590012;

DELETE FROM `creature` WHERE `guid` IN (@OBSERA1, @OBSERA2, @OBSERA3, @OLDERA1, @OLDERA2);
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@OBSERA1, 15262, 531, 0, 0, -8193.04, 2083.5, 129.071, 0, 1800, 0, 1, 213640, 24340, 0, 2),
(@OBSERA2, 15262, 531, 0, 0, -8279.13, 2117.75, 118.176, 0, 1800, 0, 3, 213640, 24340, 0, 2),
(@OBSERA3, 15262, 531, 0, 0, -8370.5, 2054.9, 144.842, 0, 1800, 0, 1, 213640, 24340, 0, 2);
