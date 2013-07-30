-- Changed Name of Stitched Giant to Stitched Spewer.
-- (Stitched giant is the wrath name,also uses a larger different model)
-- Source: http://www.wowwiki.com/Stitched_Spewer
-- Source: http://wowd.org/creatures/16025.html]http://wowd.org/creatures/16025.html
UPDATE `creature_template` SET `name` = 'Stitched Spewer' WHERE `entry` = 16025;

-- Changed Scale on Naxxramas Combat Dummy
-- Source: http://www.youtube.com/watch?v=JIPkO0DphWk
-- Source: http://www.youtube.com/watch?v=7VcozSUZc9Y
-- Source: http://www.youtube.com/watch?v=agWfYn0piY8
-- Source: http://www.youtube.com/watch?v=KxITOD-fQ5g
-- Source: http://www.youtube.com/watch?v=PQ88MOZ-gGk
UPDATE `creature_template` SET `scale` = 1.4 WHERE `entry` = 16211;

-- Fix Death knight understudy locations
-- Source: http://www.youtube.com/watch?v=JIPkO0DphWk
-- Source: http://www.youtube.com/watch?v=7VcozSUZc9Y
-- Source: http://www.youtube.com/watch?v=agWfYn0piY8
-- Source: http://www.youtube.com/watch?v=KxITOD-fQ5g
-- Source: http://www.youtube.com/watch?v=PQ88MOZ-gGk
UPDATE `creature` SET `position_x` = 2758.28, `position_y` = -3111.99 WHERE `guid` = 88464;
UPDATE `creature` SET `position_x` = 2778.56, `position_y` = -3113.74 WHERE `guid` = 88463;
UPDATE `creature` SET `position_x` = 2782.45, `position_y` = -3088.03 WHERE `guid` = 88462;
UPDATE `creature` SET `position_x` = 2762.05, `position_y` = -3085.6 WHERE `guid` = 88461;

-- Added Naxxramas Combat Dummy Locations
-- Source: http://www.youtube.com/watch?v=JIPkO0DphWk
-- Source: http://www.youtube.com/watch?v=7VcozSUZc9Y
-- Source: http://www.youtube.com/watch?v=agWfYn0piY8
-- Source: http://www.youtube.com/watch?v=KxITOD-fQ5g
-- Source: http://www.youtube.com/watch?v=PQ88MOZ-gGk
DELETE FROM `creature` WHERE `id` = 16211 OR guid BETWEEN 154200 AND 154211;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (154200, 16211, 533, 16074, 0, 2859.65, -3180.16, 298.237, 3.24631, 3600, 0, 0, 860, 0, 0, 0);
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (154201, 16211, 533, 16074, 0, 2851.85, -3162.62, 298.236, 4.08407, 3600, 0, 0, 860, 0, 0, 0);
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (154202, 16211, 533, 16074, 0, 2827.83, -3209.98, 298.344, 0.994838, 3600, 0, 0, 860, 0, 0, 0);
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (154203, 16211, 533, 16074, 0, 2844.48, -3157.53, 298.233, 4.2237, 3600, 0, 0, 860, 0, 0, 0);
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (154204, 16211, 533, 16074, 0, 2825.51, -3154.79, 298.229, 4.5204, 3600, 0, 0, 860, 0, 0, 0);
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (154205, 16211, 533, 16074, 0, 2760.84, -3082.67, 267.768, 5.25344, 3600, 0, 0, 860, 0, 0, 0);
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (154206, 16211, 533, 16074, 0, 2860.08, -3187.86, 298.234, 3.08923, 3600, 0, 0, 860, 0, 0, 0);
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (154207, 16211, 533, 16074, 0, 2779.97, -3115.92, 267.768, 2.16421, 3600, 0, 0, 860, 0, 0, 0);
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (154208, 16211, 533, 16074, 0, 2814.28, -3154.13, 298.229, 4.76475, 3600, 0, 0, 860, 0, 0, 0);
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (154209, 16211, 533, 16074, 0, 2756.07, -3113.2, 267.768, 0.890118, 3600, 0, 0, 860, 0, 0, 0);
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (154210, 16211, 533, 16074, 0, 2835.89, -3215.61, 298.344, 1.01229, 3600, 0, 0, 860, 0, 0, 0);
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (154211, 16211, 533, 16074, 0, 2784.04, -3086.38, 267.768, 3.92699, 3600, 0, 0, 860, 0, 0, 0);
