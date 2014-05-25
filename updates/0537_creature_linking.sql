
SET @GUID := 160258;

DELETE FROM `creature_linking` WHERE `guid` BETWEEN @GUID + 0 AND @GUID + 49;
INSERT INTO `creature_linking` (`guid`, `master_guid`, `flag`) VALUES
(@GUID + 0, @GUID + 29, 1155),
(@GUID + 1, @GUID + 29, 1155),
(@GUID + 2, @GUID + 29, 1155),
(@GUID + 3, @GUID + 29, 1155),
(@GUID + 4, @GUID + 29, 1155),
(@GUID + 25, @GUID + 29, 1155),
(@GUID + 26, @GUID + 29, 1155),
(@GUID + 27, @GUID + 29, 1155),
(@GUID + 28, @GUID + 29, 1155),

(@GUID + 5, @GUID + 34, 1155),
(@GUID + 6, @GUID + 34, 1155),
(@GUID + 7, @GUID + 34, 1155),
(@GUID + 8, @GUID + 34, 1155),
(@GUID + 9, @GUID + 34, 1155),
(@GUID + 30, @GUID + 34, 1155),
(@GUID + 31, @GUID + 34, 1155),
(@GUID + 32, @GUID + 34, 1155),
(@GUID + 33, @GUID + 34, 1155),

(@GUID + 10, @GUID + 39, 1155),
(@GUID + 11, @GUID + 39, 1155),
(@GUID + 12, @GUID + 39, 1155),
(@GUID + 13, @GUID + 39, 1155),
(@GUID + 14, @GUID + 39, 1155),
(@GUID + 35, @GUID + 39, 1155),
(@GUID + 36, @GUID + 39, 1155),
(@GUID + 37, @GUID + 39, 1155),
(@GUID + 38, @GUID + 39, 1155),

(@GUID + 15, @GUID + 44, 1155),
(@GUID + 16, @GUID + 44, 1155),
(@GUID + 17, @GUID + 44, 1155),
(@GUID + 18, @GUID + 44, 1155),
(@GUID + 19, @GUID + 44, 1155),
(@GUID + 40, @GUID + 44, 1155),
(@GUID + 41, @GUID + 44, 1155),
(@GUID + 42, @GUID + 44, 1155),
(@GUID + 43, @GUID + 44, 1155),

(@GUID + 20, @GUID + 49, 1155),
(@GUID + 21, @GUID + 49, 1155),
(@GUID + 22, @GUID + 49, 1155),
(@GUID + 23, @GUID + 49, 1155),
(@GUID + 24, @GUID + 49, 1155),
(@GUID + 45, @GUID + 49, 1155),
(@GUID + 46, @GUID + 49, 1155),
(@GUID + 47, @GUID + 49, 1155),
(@GUID + 48, @GUID + 49, 1155);
