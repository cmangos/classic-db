-- Battleguard Sartura

SET @SART :=  87648;
SET @GUA1 :=  87649;
SET @GUA2 :=  87650;
SET @GUA3 :=  87651;

UPDATE `creature` SET `position_x` = -8337.20, `position_y` = 1596.45, `position_z` = -31.2387, `orientation` = 0.923705, `spawntimesecs` = 604800, `curhealth` = 716400, `MovementType` = 2 WHERE `guid` = @SART;

UPDATE `creature` SET `position_x` = -8333.34, `position_y` = 1601.40, `position_z` = -32.4308, `orientation` = 0.923705, `spawntimesecs` = 604800, `curhealth` = 92880 WHERE `guid` = @GUA1;
UPDATE `creature` SET `position_x` = -8334.68, `position_y` = 1590.67, `position_z` = -30.7361, `orientation` = 0.923705, `spawntimesecs` = 604800, `curhealth` = 92880 WHERE `guid` = @GUA2;
UPDATE `creature` SET `position_x` = -8343.36, `position_y` = 1596.95, `position_z` = -30.7423, `orientation` = 0.923705, `spawntimesecs` = 604800, `curhealth` = 92880 WHERE `guid` = @GUA3;
