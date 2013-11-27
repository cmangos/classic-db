-- Improved a few creatures movements in Blackrock Spire entrance
UPDATE `creature` SET `spawndist` = 0, `MovementType` = 0 WHERE `guid` IN (160072, 160081, 160044);
