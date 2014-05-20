SET @GUID := 88503; -- HiveZara Wasp
SET @STIN := 140263; -- HiveZara Stinger

DELETE FROM `creature_linking` WHERE `guid` BETWEEN @GUID + 0 AND @GUID + 19;
INSERT INTO `creature_linking` (`guid`, `master_guid`, `flag`) VALUES
(@GUID + 00, @STIN + 0, 1667),
(@GUID + 01, @STIN + 0, 1667),
(@GUID + 02, @STIN + 1, 1667),
(@GUID + 03, @STIN + 1, 1667),
(@GUID + 04, @STIN + 2, 1667),
(@GUID + 05, @STIN + 2, 1667),
(@GUID + 06, @STIN + 3, 1667),
(@GUID + 07, @STIN + 3, 1667),
(@GUID + 08, @STIN + 4, 1667),
(@GUID + 09, @STIN + 4, 1667),
(@GUID + 10, @STIN + 5, 1667),
(@GUID + 11, @STIN + 5, 1667),
(@GUID + 12, @STIN + 6, 1667),
(@GUID + 13, @STIN + 6, 1667),
(@GUID + 14, @STIN + 7, 1667),
(@GUID + 15, @STIN + 7, 1667),
(@GUID + 16, @STIN + 8, 1667),
(@GUID + 17, @STIN + 8, 1667),
(@GUID + 18, @STIN + 9, 1667),
(@GUID + 19, @STIN + 9, 1667);
