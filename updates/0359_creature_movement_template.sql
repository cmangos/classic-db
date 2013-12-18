-- Improved waypoint movement of creature 15931 (Grobbulus) in Naxxramas to make it
-- spawn three creatures 16375 (Sewage Slime) instead of one
-- Also moved waypoint movement from creature_movement to creature_movement_template
-- as creature 15931 is unique
-- Source: http://www.youtube.com/watch?v=agWfYn0piY8
DELETE FROM `creature_movement` WHERE `id` = 88303;
DELETE FROM `creature_movement_template` WHERE `entry` = 15931;
INSERT INTO `creature_movement_template` VALUES 
(15931, 1, 3205.45, -3341.86, 320.177, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.55799, 0, 0),
(15931, 2, 3205.57, -3306.46, 320.333, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.10619, 0, 0),
(15931, 3, 3180.08, -3306.33, 320.095, 60000, 1593101, 0, 0, 0, 0, 0, 0, 0, 0, 3.16902, 0, 0),
(15931, 4, 3205.57, -3306.46, 320.333, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.10619, 0, 0),
(15931, 5, 3205.45, -3341.86, 320.177, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.55799, 0, 0),
(15931, 6, 3205.06, -3377.29, 311.328, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.72411, 0, 0),
(15931, 7, 3218.09, -3387.23, 311.328, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.086909, 0, 0),
(15931, 8, 3227.38, -3377.29, 311.328, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.57074, 0, 0),
(15931, 9, 3228.32, -3341.07, 292.596, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.57466, 0, 0),
(15931, 10, 3228.81, -3309.42, 292.596, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6.24464, 0, 0),
(15931, 11, 3255.3, -3310.34, 292.596, 60000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6.27998, 0, 0),
(15931, 12, 3228.81, -3309.42, 292.596, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6.24464, 0, 0),
(15931, 13, 3228.32, -3341.07, 292.596, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.57466, 0, 0),
(15931, 14, 3228.05, -3378.03, 311.326, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.57074, 0, 0),
(15931, 15, 3218.09, -3387.23, 311.328, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.086909, 0, 0),
(15931, 16, 3205.06, -3377.29, 311.328, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.55799, 0, 0);
-- Movement script for Grobbulus
DELETE FROM `dbscripts_on_creature_movement` WHERE `id` = 1593101;
INSERT INTO `dbscripts_on_creature_movement` VALUES
(1593101, 1, 15, 28280, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'cast summon sewage slime'),
(1593101, 3, 15, 28280, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'cast summon sewage slime'),
(1593101, 5, 15, 28280, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'cast summon sewage slime');

-- Make the creature 16375 (Sewage Slime) moves randomly and fixes its size
UPDATE `creature_template` SET `MovementType` = 1, `scale` = 2 WHERE `entry` = 16375;
-- Removed wrong spawns of creature 16375 (Sewage Slime): they are summoned by the script above
DELETE FROM `creature` WHERE `id` = 16375;
