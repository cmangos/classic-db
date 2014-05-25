SET @GUID := 160308;

-- -------------------

DELETE FROM `creature_linking` WHERE `guid` BETWEEN @GUID + 0 AND @GUID + 17;

INSERT INTO `creature_linking` (`guid`, `master_guid`, `flag`) VALUES
(@GUID + 00, @GUID + 13, 1155),
(@GUID + 01, @GUID + 13, 1155),
(@GUID + 06, @GUID + 13, 1155),
(@GUID + 07, @GUID + 13, 1155),
(@GUID + 12, @GUID + 13, 1155),

(@GUID + 04, @GUID + 17, 1155),
(@GUID + 05, @GUID + 17, 1155),
(@GUID + 10, @GUID + 17, 1155),
(@GUID + 11, @GUID + 17, 1155),
(@GUID + 16, @GUID + 17, 1155),

(@GUID + 02, @GUID + 15, 1155),
(@GUID + 03, @GUID + 15, 1155),
(@GUID + 08, @GUID + 15, 1155),
(@GUID + 09, @GUID + 15, 1155),
(@GUID + 14, @GUID + 15, 1155);
