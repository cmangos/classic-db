-- Bug Trio
DELETE FROM `creature` WHERE `guid` = 88068;
DELETE FROM `creature` WHERE `guid` = 88069;
DELETE FROM `creature` WHERE `guid` = 88070;
DELETE FROM `creature` WHERE `guid` = 88071;

UPDATE `creature` SET `position_x` = -8549.55, `position_y` = 2161.72, `position_z` = -3.6664, `orientation` = 4.46724, `curhealth` = 413920, `spawntimesecs` = 604800, `MovementType` = 2 WHERE `guid` = 87603;
UPDATE `creature` SET `position_x` = -8586.73, `position_y` = 2173.15, `position_z` = -4.33533, `orientation` = 5.056279, `curhealth` = 286560, `spawntimesecs` = 604800, `MovementType` = 0 WHERE `guid` = 87601;
UPDATE `creature` SET `position_x` = -8567.05, `position_y` = 2175.89, `position_z` = -4.066082, `orientation` = 4.36944, `curhealth` = 254720, `curmana` = 0, `spawntimesecs` = 604800, `MovementType` = 0 WHERE `guid` = 87602;
