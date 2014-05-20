SET @GUID := 135025; -- 3 creatures needed

-- --------------------------------------------------

DELETE FROM `creature` WHERE `guid` BETWEEN @GUID + 0 AND @GUID + 2;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@GUID + 0, 10411, 329, 4629, 0, 3480.393, -3307.106, 130.4128, 0, 900, 0, 0, 1300, 0, 0, 2),
(@GUID + 1, 10411, 329, 4629, 0, 3729.962, -3259.325, 127.9591, 0, 900, 0, 0, 1300, 0, 0, 2),
(@GUID + 2, 10411, 329, 4629, 0, 3823.748, -3625.020, 145.5289, 0, 900, 0, 0, 1300, 0, 0, 2);
