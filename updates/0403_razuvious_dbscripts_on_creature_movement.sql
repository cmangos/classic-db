-- Improved scripts for creature 16061 (Instructor Razuvious) in Naxxramas Military Wing
-- Source: http://www.youtube.com/watch?v=agWfYn0piY8

-- Added movement script to make creature 16061 (Instructor Razuvious) "instruct" one
-- of its trainee (creature 16803)
DELETE FROM `dbscripts_on_creature_movement` WHERE `id` = 1606101;
INSERT INTO `dbscripts_on_creature_movement` VALUES
(1606101, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.4396, 'Turns toward trainee'),
(1606101, 1, 1, 26, 0, 16803, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'change emote state: stand'),
(1606101, 2, 3, 0, 0, 16803, 5, 0, 0, 0, 0, 0, 0, 0, 0, 4.4563, 'Turns toward Razuvious'),
(1606101, 3, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Shouts'),
(1606101, 5, 1, 1, 0, 16803, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'talks'),
(1606101, 8, 1, 66, 0, 16803, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'salutes'),
(1606101, 11, 3, 0, 0, 16803, 5, 0, 0, 0, 0, 0, 0, 0, 0, 2.03, 'Turns toward dummy'),
(1606101, 11, 1, 333, 0, 16803, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'change emote state: train');

-- Moved waypoints for creature 16061 (Instructor Razuvious) from creature_movement to creature_movement_template
-- because the creature is unique
-- also extended the waypoints to make place for the movement script above
DELETE FROM `creature_movement` WHERE `id` = 88460;
DELETE FROM `creature_movement_template` WHERE `entry` = 16061;
INSERT INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES
(16061, 1, 2765.25, -3088.47, 267.685, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.38872, 0, 0),
(16061, 2, 2780, -3090.74, 267.685, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.78048, 0, 0),
(16061, 3, 2783.57, -3100.87, 267.685, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.04221, 0, 0),
(16061, 4, 2776.59, -3109.78, 267.685, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.98977, 0, 0),
(16061, 5, 2765.44, -3110.8, 267.685, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.15332, 0, 0),
(16061, 6, 2757.56, -3100.27, 267.685, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.06162, 0, 0),
(16061, 7, 2760.86, -3090.25, 267.685, 10000, 1606101, 0, 0, 0, 0, 0, 0, 0, 0, 1.48676, 0, 0);
