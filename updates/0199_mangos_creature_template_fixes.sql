DELETE FROM `creature_addon` WHERE `guid` IN (6095, 6096); -- remove uneccessary addon from tesla coils

-- Shade of Naxxramas (before Razuvious)
-- Source http://www.youtube.com/watch?v=agWfYn0piY8
UPDATE `creature` SET `MovementType` = 2 WHERE `guid` = 88407;
DELETE FROM `creature_movement` WHERE `id` = 88407;
INSERT INTO `creature_movement` VALUES (88407, 1, 2903.97, -3293.77, 298.73, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.96, 0, 0);
INSERT INTO `creature_movement` VALUES (88407, 2, 2854.105, -3335.93, 298.15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.75, 0, 0);

-- Deathknight Cavaliers (before Razuvious)
-- Source http://www.youtube.com/watch?v=agWfYn0piY8
UPDATE `creature` SET `MovementType` = 2 WHERE `guid` = 154229;
DELETE FROM `creature_movement` WHERE `id` = 154229;
INSERT INTO `creature_movement` VALUES (154229, 1, 2931.33, -3190.24, 273.38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.123, 0, 0);
INSERT INTO `creature_movement` VALUES (154229, 2, 2820.41, -3190.24, 273.79, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6.239, 0, 0);

UPDATE `creature` SET `MovementType` = 2 WHERE `guid` = 88466;
DELETE FROM `creature_movement` WHERE `id` = 88466;
INSERT INTO `creature_movement` VALUES (88466, 1, 2933.03, -3186.32, 273.55, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.123, 0, 0);
INSERT INTO `creature_movement` VALUES (88466, 2, 2822.11, -3186.32, 273.79, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6.239, 0, 0);

UPDATE `creature` SET `MovementType` = 2 WHERE `guid` = 88465;
DELETE FROM `creature_movement` WHERE `id` = 88465;
INSERT INTO `creature_movement` VALUES (88465, 1, 2932.46, -3194.52, 273.56, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.123, 0, 0);
INSERT INTO `creature_movement` VALUES (88465, 2, 2821.54, -3194.52, 273.79, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6.239, 0, 0);


-- Deathknight Cavaliers (Razuvious -> Gothikk corridor)
-- Source http://www.youtube.com/watch?v=agWfYn0piY8
UPDATE `creature` SET `MovementType` = 2 WHERE `guid` = 88473;
DELETE FROM `creature_movement` WHERE `id` = 88473;
INSERT INTO `creature_movement` VALUES (88473, 1, 2790.79, -3374.48, 267.86, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.56, 0, 0);
INSERT INTO `creature_movement` VALUES (88473, 2, 2790.79, -3283.31, 267.94, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.8, 0, 0);

UPDATE `creature` SET `MovementType` = 2 WHERE `guid` = 88474;
DELETE FROM `creature_movement` WHERE `id` = 88474;
INSERT INTO `creature_movement` VALUES (88474, 1, 2785.81, -3374.53, 267.86, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.56, 0, 0);
INSERT INTO `creature_movement` VALUES (88474, 2, 2785.81, -3283.36, 267.94, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.8, 0, 0);
