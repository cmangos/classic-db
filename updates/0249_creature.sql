-- Fixed various DB errors from previous updates
-- Updated health of creature 6729 (Morridune) spawn to match template
UPDATE `creature` SET `curhealth` = 1380, `MovementType` = 0, `spawndist` = 0 WHERE `guid` = 99967;

-- Updated health of creature 3529 (Moonrage Armorer) spawn to match template
UPDATE `creature` SET `curhealth` = 981 WHERE `guid` = 178307;

-- Removed waypoint movement from 5 creatures in Naxxramas as their movement
-- is now handled by creature linking
UPDATE `creature` SET `MovementType` = 0 WHERE `guid` IN (88425, 88398, 88399, 88441, 88442);
