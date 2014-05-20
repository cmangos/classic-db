SET @GUID := 88640; -- HiveZara Stinger #2

-- -------------------------------------------

SET @BOSS := (SELECT `guid` FROM `creature` WHERE `id` = 15369); -- Ayamiss the Hunter

DELETE FROM `creature_linking` WHERE `guid` BETWEEN @GUID + 0 AND @GUID + 27;

INSERT INTO `creature_linking` (`guid`, `master_guid`, `flag`) VALUES
(@GUID + 00, @BOSS, 1024),
(@GUID + 07, @BOSS, 1024),
(@GUID + 14, @BOSS, 1024),
(@GUID + 21, @BOSS, 1024),

(@GUID + 01, @GUID + 00, 1667),
(@GUID + 02, @GUID + 00, 1667),
(@GUID + 03, @GUID + 00, 1667),
(@GUID + 04, @GUID + 00, 1667),
(@GUID + 05, @GUID + 00, 1667),
(@GUID + 06, @GUID + 00, 1667),

(@GUID + 08, @GUID + 07, 1667),
(@GUID + 09, @GUID + 07, 1667),
(@GUID + 10, @GUID + 07, 1667),
(@GUID + 11, @GUID + 07, 1667),
(@GUID + 12, @GUID + 07, 1667),
(@GUID + 13, @GUID + 07, 1667),

(@GUID + 15, @GUID + 14, 1667),
(@GUID + 16, @GUID + 14, 1667),
(@GUID + 17, @GUID + 14, 1667),
(@GUID + 18, @GUID + 14, 1667),
(@GUID + 19, @GUID + 14, 1667),
(@GUID + 20, @GUID + 14, 1667),

(@GUID + 22, @GUID + 21, 1667),
(@GUID + 23, @GUID + 21, 1667),
(@GUID + 24, @GUID + 21, 1667),
(@GUID + 25, @GUID + 21, 1667),
(@GUID + 26, @GUID + 21, 1667),
(@GUID + 27, @GUID + 21, 1667);
