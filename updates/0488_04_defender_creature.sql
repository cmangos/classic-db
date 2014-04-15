-- Anubisath Defender

SET @ANUB1 := 88015;
SET @ANUB2 := 88016;
SET @ANUB3 := 88017;
SET @ANUB4 := 88018;
SET @ANUB5 := 88019;

SET @TWINS := 88077;

DELETE FROM `creature` WHERE `guid`IN (@ANUB1, @ANUB2, @ANUB3, @ANUB4, @ANUB5);
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(@ANUB1, 15277, 531, 0, 0, -8760.56, 1575.33, -89.3109, 0, 43200, 0, 1, 484657, 0, 0, 2),
(@ANUB2, 15277, 531, 0, 0, -8873.33, 1518.94, -94.9602, 0, 43200, 0, 1, 484657, 0, 0, 2),
(@ANUB3, 15277, 531, 0, 0, -8918.98, 1364.06, -104.262, 0, 43200, 0, 1, 484657, 0, 0, 2),
(@ANUB4, 15277, 531, 0, 0, -8823.84, 1504.05, -94.5167, 0, 43200, 0, 1, 484657, 0, 0, 2),
(@ANUB5, 15277, 531, 0, 0, -8937.76, 1457.64, -91.8863, 0, 43200, 0, 1, 484657, 0, 0, 2);
