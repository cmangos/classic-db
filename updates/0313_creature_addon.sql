SET @GUID := 160036;

-- Removed one Scarshield Acolyte on top of entrance bridge
DELETE FROM `creature` WHERE `guid` = 45838;

-- Added addons to make some of the Scarshield Legionnaire in Blackrock Spire entrance sit.
UPDATE `creature` SET `MovementType` = 0 WHERE `guid` IN (@GUID + 17, @GUID + 22, @GUID + 30, @GUID + 38, @GUID + 39, @GUID + 40, @GUID + 42, @GUID + 16, @GUID + 36);
DELETE FROM `creature_addon` WHERE `guid` IN (@GUID + 17, @GUID + 22, @GUID + 30, @GUID + 38, @GUID + 39, @GUID + 40, @GUID + 42, @GUID + 16, @GUID + 36);
INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES 
(@GUID + 17, 0, 1, 1, 16, 0, 0, NULL),
(@GUID + 22, 0, 1, 1, 16, 0, 0, NULL),
(@GUID + 30, 0, 1, 1, 16, 0, 0, NULL),
(@GUID + 38, 0, 1, 1, 16, 0, 0, NULL),
(@GUID + 39, 0, 1, 1, 16, 0, 0, NULL),
(@GUID + 42, 0, 1, 1, 16, 0, 0, NULL),
(@GUID + 40, 0, 1, 1, 16, 0, 0, NULL),
(@GUID + 16, 0, 1, 1, 16, 0, 0, NULL),
(@GUID + 36, 0, 1, 1, 16, 0, 0, NULL);
