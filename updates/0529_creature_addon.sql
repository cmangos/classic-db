
SET @GUID := 134996;

-- --------------------------------------------------

DELETE FROM `creature_addon` WHERE `guid` IN (53293, 53601, 53290, 53675, 53650, 53676, 53594, 53674, 53600, 53299);
DELETE FROM `creature_addon` WHERE `guid` BETWEEN @GUID + 0 AND @GUID + 9;
INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES
(@GUID + 0, 0, 0, 1, 16, 0, 0, 18950),
(@GUID + 1, 0, 0, 1, 16, 0, 0, 18950),
(@GUID + 2, 0, 0, 1, 16, 0, 0, 18950),
(@GUID + 3, 0, 0, 1, 16, 0, 0, 18950),
(@GUID + 4, 0, 0, 1, 16, 0, 0, 18950),
(@GUID + 5, 0, 0, 1, 16, 0, 0, 18950),
(@GUID + 6, 0, 0, 1, 16, 0, 0, 18950),
(@GUID + 7, 0, 0, 1, 16, 0, 0, 18950),
(@GUID + 8, 0, 0, 1, 16, 0, 0, 18950),
(@GUID + 9, 0, 0, 1, 16, 0, 0, 18950);
