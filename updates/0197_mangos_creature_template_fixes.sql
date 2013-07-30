-- Added waypoint movement to creature 16061 (Instructor Razuvious)
-- Script is currently missing (tbd)
-- Source: http://www.youtube.com/watch?v=PQ88MOZ-gGk
UPDATE `creature_template` SET `MovementType` = 2 WHERE `entry` = 16061;
UPDATE `creature` SET `MovementType` = 2 WHERE `guid` = 88460;
DELETE FROM `creature_movement` WHERE `id` = 88460;
INSERT INTO `creature_movement` VALUES (88460, 1, 2765.25, -3088.47, 267.685, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.38872, 0, 0);
INSERT INTO `creature_movement` VALUES (88460, 2, 2780, -3090.74, 267.685, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.78048, 0, 0);
INSERT INTO `creature_movement` VALUES (88460, 3, 2783.57, -3100.87, 267.685, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.04221, 0, 0);
INSERT INTO `creature_movement` VALUES (88460, 4, 2776.59, -3109.78, 267.685, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.98977, 0, 0);
INSERT INTO `creature_movement` VALUES (88460, 5, 2765.44, -3110.8, 267.685, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.15332, 0, 0);
INSERT INTO `creature_movement` VALUES (88460, 6, 2757.56, -3100.27, 267.685, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.06162, 0, 0);

-- Added addon for combat emote to Deathnight Understudies and Deathknight. They will no longer stand idle in front of their Combat Dummy
-- Source: http://www.youtube.com/watch?v=PQ88MOZ-gGk
DELETE FROM `creature_addon` WHERE `guid` IN (88461, 88462, 88463, 88464, 88436, 88437, 88438, 88439);
INSERT INTO `creature_addon` VALUES (88461, 0, 0, 0, 0, 36, 0, '18950'); -- attack
INSERT INTO `creature_addon` VALUES (88462, 0, 0, 0, 0, 36, 0, '18950'); -- attack
INSERT INTO `creature_addon` VALUES (88463, 0, 0, 0, 0, 36, 0, '18950'); -- attack
INSERT INTO `creature_addon` VALUES (88464, 0, 0, 0, 0, 36, 0, '18950'); -- attack

INSERT INTO `creature_addon` VALUES (88436, 0, 0, 0, 0, 36, 0, '18950'); -- attack
INSERT INTO `creature_addon` VALUES (88437, 0, 0, 0, 0, 36, 0, '18950'); -- attack
INSERT INTO `creature_addon` VALUES (88438, 0, 0, 0, 0, 36, 0, '18950'); -- attack
INSERT INTO `creature_addon` VALUES (88439, 0, 0, 0, 0, 36, 0, '18950'); -- attack