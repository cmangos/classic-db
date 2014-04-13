-- Battleguard Sartura

SET @SART := 87648;
SET @GUA1 := 87649;
SET @GUA2 := 87650;
SET @GUA3 := 87651;

DELETE FROM `creature_linking` WHERE `guid` IN (@GUA1, @GUA2, @GUA3);
INSERT INTO `creature_linking` (`guid`, `master_guid`, `flag`) VALUES
(@GUA1, @SART, 1671),
(@GUA2, @SART, 1671),
(@GUA3, @SART, 1671);
