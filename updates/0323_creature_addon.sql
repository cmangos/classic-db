SET @GUID2 := 160107;

-- The following Blackhand Elite/Assassin now sit
DELETE FROM `creature_addon` WHERE `guid` IN (@GUID2 + 130, @GUID2 + 114, @GUID2 + 115);
INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES 
(@GUID2 + 130, 0, 1, 1, 16, 0, 0, NULL),
(@GUID2 + 114, 0, 1, 1, 16, 0, 0, NULL),
(@GUID2 + 115, 0, 1, 1, 16, 0, 0, NULL);