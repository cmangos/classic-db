-- Fixed groups and patrol of creature 15977 (Poisonous Skitter) in Naxxramas Spider Quarter
-- Sources:
-- http://www.youtube.com/watch?v=IbRODBLeqk4
-- http://www.youtube.com/watch?v=agWfYn0piY8
-- http://www.youtube.com/watch?v=YtLkzm3eELs
-- http://www.youtube.com/watch?v=iA_de7CcIrQ

-- Updated speed of creature 15977 as they should move much faster than speed = 1
UPDATE `creature_template` SET `speed_walk` = 5, `speed_run` = 5 WHERE `entry` = 15977;

-- Adjusted groups of creatures 15977 because in Classic they were spread differently than in WotLK
-- They had their own group of 10 spawns: 2 static groups in the first room, one patrolling group in the
-- first room and in corridor leading to Anub'Rehkan. Current spawns spread across other mobs groups were used
DELETE FROM `creature` WHERE `guid` IN (88331, 88330, 88333, 88332, 88328, 88327, 88326, 88329, 88325, 88344);
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(88331, 15977, 533, 0, 0, 3119.5, -3577.74, 287.08, 0.583546, 3520, 0, 0, 15415, 0, 0, 0),
(88330, 15977, 533, 0, 0, 3109.21, -3582.62, 287.078, 4.40451, 3520, 0, 0, 15415, 0, 0, 0),
(88333, 15977, 533, 0, 0, 3110.29, -3570.61, 287.08, 0.607894, 3520, 0, 0, 15415, 0, 0, 0),
(88332, 15977, 533, 0, 0, 3102.75, -3580.06, 287.078, 2.35776, 3520, 0, 0, 15415, 0, 0, 0),
(88328, 15977, 533, 0, 0, 3108.9, -3579.27, 287.08, 2.35776, 3520, 0, 0, 15415, 0, 0, 0),
(88329, 15977, 533, 0, 0, 3114.62, -3584.31, 287.08, 4.08799, 3520, 0, 0, 15415, 0, 0, 0),
(88327, 15977, 533, 0, 0, 3115.43, -3577.17, 287.08, 4.08799, 3520, 0, 0, 15415, 0, 0, 0),
(88326, 15977, 533, 0, 0, 3115.92, -3571.28, 287.08, 6.11197, 3520, 0, 0, 15415, 0, 0, 0),
(88325, 15977, 533, 0, 0, 3104.37, -3571.23, 287.078, 1.35952, 3520, 0, 0, 15415, 0, 0, 0),
(88344, 15977, 533, 0, 0, 3110.08, -3574.35, 287.08, 2.13, 3520, 0, 0, 15415, 0, 0, 0);

-- Made the spawns in the two static group able to move randomly 
UPDATE `creature` SET `spawndist` = 5, `MovementType` = 1 WHERE `id` = 15977;

-- Created the moving group leader.
DELETE FROM `creature` WHERE `guid` = 88345;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(88345, 15977, 533, 0, 0, 3166.61, -3477.81, 287.135, 3.97254, 3520, 0, 0, 15415, 0, 0, 2);

-- Added movement waypoint to this creature
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES
(88345, 1, 3166.61, -3477.81, 287.135, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.97254, 0, 0),
(88345, 2, 3149.62, -3493.84, 287.066, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.97332, 0, 0),
(88345, 3, 3136.99, -3507.17, 287.069, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.91442, 0, 0),
(88345, 4, 3118.32, -3501.07, 287.075, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.69077, 0, 0),
(88345, 5, 3098.95, -3498.53, 287.075, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.65053, 0, 0),
(88345, 6, 3082.64, -3509.92, 287.076, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.10606, 0, 0),
(88345, 7, 3066.94, -3542.8, 287.076, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.55688, 0, 0),
(88345, 8, 3084.04, -3563.8, 287.072, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.8253, 0, 0),
(88345, 9, 3109.29, -3577.99, 287.079, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.09092, 0, 0),
(88345, 10, 3131.31, -3560.07, 287.08, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.702934, 0, 0),
(88345, 11, 3150.59, -3540.37, 287.08, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.33204, 0, 0),
(88345, 12, 3136.68, -3509.41, 287.072, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.873365, 0, 0),
(88345, 13, 3160, -3485.12, 287.08, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.819173, 0, 0);

-- Added the other spawns of the moving group
DELETE FROM `creature` WHERE `guid` BETWEEN 88349 AND 88357;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(88357, 15977, 533, 0, 0, 3168.29, -3480.65, 287.12, 4.34562, 3520, 0, 0, 15415, 0, 0, 0),
(88349, 15977, 533, 0, 0, 3166.44, -3473.36, 287.153, 4.05345, 3520, 0, 0, 15415, 0, 0, 0),
(88350, 15977, 533, 0, 0, 3161.54, -3479.68, 287.054, 4.05345, 3520, 0, 0, 15415, 0, 0, 0),
(88351, 15977, 533, 0, 0, 3160.8, -3483.03, 287.086, 4.05345, 3520, 0, 0, 15415, 0, 0, 0),
(88352, 15977, 533, 0, 0, 3164.73, -3477.97, 287.066, 4.05345, 3520, 0, 0, 15415, 0, 0, 0),
(88353, 15977, 533, 0, 0, 3162.07, -3476.79, 286.955, 4.05345, 3520, 0, 0, 15415, 0, 0, 0),
(88354, 15977, 533, 0, 0, 3165.78, -3482.07, 287.037, 4.05345, 3520, 0, 0, 15415, 0, 0, 0),
(88355, 15977, 533, 0, 0, 3167.7, -3483.56, 287.11, 4.05345, 3520, 0, 0, 15415, 0, 0, 0),
(88356, 15977, 533, 0, 0, 3167.98, -3478.6, 287.129, 4.72732, 3520, 0, 0, 15415, 0, 0, 0);

-- Linked them to the leader
DELETE FROM `creature_linking` WHERE `guid` BETWEEN 88349 AND 88357;
INSERT INTO `creature_linking` VALUES
(88349, 88345, 515),
(88350, 88345, 515),
(88351, 88345, 515),
(88352, 88345, 515),
(88353, 88345, 515),
(88354, 88345, 515),
(88355, 88345, 515),
(88356, 88345, 515),
(88357, 88345, 515);
