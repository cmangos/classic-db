-- Fixed creature 16027 (Living Poison) as they were level 61 in Classic
-- Assigned an AI script to the creature
-- Enable waypoint movement
-- http://www.wowhead.com/npc=16027#comments
-- http://www.wowwiki.com/Living_Poison
UPDATE `creature_template` SET `minlevel` = 61, `maxlevel` = 61, `AIName` = 'EventAI', `MovementType` = 2 WHERE `entry` = 16027;

-- Adjusted creature 16027 (Living Poison): the creatures are spread along three lines
-- marked from the falling green slime and they cross the walkway one after the other before teleporting
-- back to the beginning of the line. Related waypoint path are added below
UPDATE `creature` SET `MovementType` = 2, `spawndist` = 0, `spawntimesecs` = 10 WHERE `id` = 16027;
-- UPDATE `creature` SET `currentwaypoint` = 2 WHERE `guid` IN (128132, 128130);
-- DELETE FROM `creature` WHERE `guid` = 128127;
UPDATE `creature` SET `position_x` = 3151.98, `position_y` = -3133.71, `position_z` = 294.063 WHERE `guid` = 128134;
UPDATE `creature` SET `position_x` = 3128.88, `position_y` = -3129.69, `position_z` = 294.063 WHERE `guid` = 128126;
UPDATE `creature` SET `position_x` = 3128.88, `position_y` = -3129.69, `position_z` = 294.063 WHERE `guid` = 128130;

DELETE FROM `creature` WHERE `guid` IN (128123, 128124);
INSERT INTO `creature` VALUES
(128123, 16027, 533, 0, 0, 3148.33, -3147.28, 294.063, 4.50348, 10, 5, 0, 117297, 0, 0, 2),
(128124, 16027, 533, 0, 0, 3164.02, -3154.06, 294.063, 4.01967, 10, 5, 0, 117297, 0, 0, 2);

DELETE FROM `creature_movement` WHERE `id` IN (128125, 128126, 128127, 128128,128129,128130,128131, 128132, 128133, 128134, 128123, 128124);
INSERT INTO `creature_movement` VALUES
(128133, 1, 3128.62, -3118.06, 293.406, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.92026, 0, 0),
(128133, 2, 3128.96, -3156.31, 293.364, 0, 1602701, 0, 0, 0, 0, 0, 0, 0, 0, 4.76161, 0, 0),
(128126, 1, 3128.62, -3118.06, 293.406, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.92026, 0, 0),
(128126, 2, 3128.96, -3156.31, 293.364, 0, 1602701, 0, 0, 0, 0, 0, 0, 0, 0, 4.76161, 0, 0),
(128128, 1, 3128.62, -3118.06, 293.406, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.92026, 0, 0),
(128128, 2, 3128.96, -3156.31, 293.364, 0, 1602701, 0, 0, 0, 0, 0, 0, 0, 0, 4.76161, 0, 0),
(128127, 1, 3128.62, -3118.06, 293.406, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.92026, 0, 0),
(128127, 2, 3128.96, -3156.31, 293.364, 0, 1602701, 0, 0, 0, 0, 0, 0, 0, 0, 4.76161, 0, 0),
(128132, 1, 3154.11, -3125.35, 293.352, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.4875, 0, 0),
(128132, 2, 3145.81, -3158.1, 293.442, 0, 1602702, 0, 0, 0, 0, 0, 0, 0, 0, 4.50321, 0, 0),
(128134, 1, 3154.11, -3125.35, 293.352, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.4875, 0, 0),
(128134, 2, 3145.81, -3158.1, 293.442, 0, 1602702, 0, 0, 0, 0, 0, 0, 0, 0, 4.50321, 0, 0),
(128125, 1, 3154.11, -3125.35, 293.352, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.4875, 0, 0),
(128125, 2, 3145.81, -3158.1, 293.442, 0, 1602702, 0, 0, 0, 0, 0, 0, 0, 0, 4.50321, 0, 0),
(128123, 1, 3154.11, -3125.35, 293.352, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.4875, 0, 0),
(128123, 2, 3145.81, -3158.1, 293.442, 0, 1602702, 0, 0, 0, 0, 0, 0, 0, 0, 4.50321, 0, 0),
(128131, 1, 3175.19, -3134.8, 293.359, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.15371, 0, 0),
(128131, 2, 3158.03, -3164.36, 293.287, 0, 1602703, 0, 0, 0, 0, 0, 0, 0, 0, 4.15763, 0, 0),
(128130, 1, 3175.19, -3134.8, 293.359, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.15371, 0, 0),
(128130, 2, 3158.03, -3164.36, 293.287, 0, 1602703, 0, 0, 0, 0, 0, 0, 0, 0, 4.15763, 0, 0),
(128124, 1, 3175.19, -3134.8, 293.359, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.15371, 0, 0),
(128124, 2, 3158.03, -3164.36, 293.287, 0, 1602703, 0, 0, 0, 0, 0, 0, 0, 0, 4.15763, 0, 0),
(128129, 1, 3175.19, -3134.8, 293.359, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.15371, 0, 0),
(128129, 2, 3158.03, -3164.36, 293.287, 0, 1602703, 0, 0, 0, 0, 0, 0, 0, 0, 4.15763, 0, 0);

-- Added 3 scripts (one by waypoint line of creatures) to make the creature 16027 (Living Poison)
-- teleports back to the beginning of waypoint path once it reach the end (path is not circular)
DELETE FROM `dbscripts_on_creature_movement` WHERE `id` IN (1602701, 1602702, 1602703);
INSERT INTO `dbscripts_on_creature_movement`VALUES
(1602701, 0, 3, 0, 0, 0, 0, 8, 0, 0, 0, 0, 3128.611, -3118.980, 293.429, 0, 'teleport Living Poison to start of the movement line 1'),
(1602702, 0, 3, 0, 0, 0, 0, 8, 0, 0, 0, 0, 3154.420, -3125.450, 293.435, 0, 'teleport Living Poison to start of the movement line 2'),
(1602703, 0, 3, 0, 0, 0, 0, 8, 0, 0, 0, 0, 3175.460, -3134.27, 293.366, 0, 'teleport Living Poison to start of the movement line 3');

-- Added spell 28433 (Explode) to creature 16027 (Living Poison)
-- This spell should trigger when player goes near the creature
-- Source: http://www.wowhead.com/npc=16027#abilities
DELETE FROM `creature_ai_scripts` WHERE `id` = 1602701;
INSERT INTO `creature_ai_scripts` VALUES
(1602701, 16027, 10, 0, 100, 0, 0, 5, 0, 0, 11, 28433, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Living Poison - Cast Explode on Hostile LOS');
