-- Ashenvale
-- allow Lilyn Darkriver to roam
UPDATE `creature` SET `movementtype` = 1, `spawndist` = 8 WHERE `guid` = 33281 AND `id` = 11712;

-- Warsong Scout waypoints
UPDATE `creature` SET `movementtype` = 2 WHERE `id` = 12862;
DELETE FROM `creature_movement_template` WHERE `entry` = 12862;
INSERT INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `script_id`) VALUES
(12862, 1, 2045.41, -2396.98, 87.8166, 3.42506, 600000, 0),
(12862, 2, 2054.7, -2398.71, 87.7415, 100, 0, 0),
(12862, 3, 2061.93, -2387.26, 93.3051, 100, 0, 0),
(12862, 4, 2054.02, -2383.7, 97.0729, 100, 0, 0),
(12862, 5, 2051.62, -2389.87, 100.014, 100, 0, 0),
(12862, 6, 2056.8, -2392.18, 102.376, 100, 0, 0),
(12862, 7, 2060.52, -2384.67, 104.944, 100, 0, 0),
(12862, 8, 2046.16, -2382.26, 104.939, 100, 0, 0),
(12862, 9, 2044.83, -2387.61, 108.127, 100, 0, 0),
(12862, 10, 2047.71, -2395.56, 111.446, 100, 0, 0),
(12862, 11, 2050.61, -2396.94, 111.447, 4.31096, 600000, 0),
(12862, 12, 2047.71, -2395.56, 111.445, 100, 0, 0),
(12862, 13, 2044.33, -2386.2, 107.281, 100, 0, 0),
(12862, 14, 2044.68, -2383.57, 105.934, 100, 0, 0),
(12862, 15, 2051.15, -2382.46, 104.94, 100, 0, 0),
(12862, 16, 2058.27, -2384.16, 104.944, 100, 0, 0),
(12862, 17, 2058.41, -2390.23, 103.092, 100, 0, 0),
(12862, 18, 2052.05, -2390.34, 100.238, 100, 0, 0),
(12862, 19, 2054.21, -2384.26, 97.1803, 100, 0, 0),
(12862, 20, 2061.69, -2386.99, 93.3384, 100, 0, 0),
(12862, 21, 2058.78, -2393.01, 89.9043, 100, 0, 0);

-- Splintertree Guard waypoints
UPDATE `creature` SET `movementtype` = 2 WHERE `guid` = 32615 AND `id` = 12903;
DELETE FROM `creature_movement` WHERE `id` = 32615;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `script_id`) VALUES
(32615, 1, 3380.21, 1015.3, 3.02534, 100, 0, 0),
(32615, 2, 3382.41, 1003.55, 4.43143, 100, 0, 0),
(32615, 3, 3382.22, 982.185, 5.34529, 100, 0, 0),
(32615, 4, 3370.88, 980.417, 5.45525, 100, 0, 0),
(32615, 5, 3357.04, 983.128, 5.76716, 100, 0, 0),
(32615, 6, 3329.94, 982.515, 4.02169, 100, 0, 0),
(32615, 7, 3320.08, 987.689, 3.38976, 100, 0, 0),
(32615, 8, 3314.68, 1008.12, 3.95719, 100, 0, 0),
(32615, 9, 3317.1, 1020.8, 4.28805, 100, 0, 0),
(32615, 10, 3325.82, 1037.3, 1.71897, 100, 0, 0),
(32615, 11, 3340.71, 1045.29, 1.56625, 100, 0, 0),
(32615, 12, 3362.11, 1036.96, 1.94614, 100, 0, 0),
(32615, 13, 3373.41, 1029.37, 2.36159, 100, 0, 0);

-- Bough Shadow creatures should be grouped and wander
UPDATE `creature` SET `movementtype` = 1, `spawndist` = 12 WHERE `guid` = 33240 AND `id` = 12476;
UPDATE `creature` SET /*`position_x` = 3147.93, `position_y` = -3464.64, `position_z` = 138.996,*/ `movementtype` = 1, `spawndist` = 12 WHERE `guid` = 33241 AND `id` = 12476; -- shows that this rule does not always add up, but better then nothing
UPDATE `creature` SET `movementtype` = 1, `spawndist` = 12 WHERE `guid` = 33242 AND `id` = 12476;
UPDATE `creature` SET `movementtype` = 1, `spawndist` = 12 WHERE `guid` = 33243 AND `id` = 12476;
UPDATE `creature` SET `movementtype` = 1, `spawndist` = 12 WHERE `guid` = 33244 AND `id` = 12476;
UPDATE `creature` SET `movementtype` = 1, `spawndist` = 12 WHERE `guid` = 33245 AND `id` = 12476;
UPDATE `creature` SET `movementtype` = 1, `spawndist` = 12 WHERE `guid` = 33246 AND `id` = 12476;
REPLACE INTO `creature_linking_template` (`entry`, `map`, `master_entry`, `flag`, `search_range`) VALUES
(12474, 1, 12476, 515, 10), -- Emeraldon Boughguard [Entry 12474] -> Emeraldon Oracle [Entry 12476]
(12475, 1, 12476, 515, 10); -- Emeraldon Tree Warder [Entry 12475] -> Emeraldon Oracle [Entry 12476]

-- Thunder Bluff
-- Rahauro waypoints
UPDATE `creature` SET `movementtype` = 2 WHERE `guid` = 24728 AND `id` = 11833;
DELETE FROM `creature_movement_template` WHERE `entry` = 11833;
INSERT INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `script_id`) VALUES
(11833 , 1 , -1055.44 , -215.423 , 159.03 , 5.41052 , 180000 , 0),
(11833 , 2 , -1054.79 , -217.982 , 159.03 , 100 , 0 , 0),
(11833 , 3 , -1054.95 , -221.312 , 159.03 , 100 , 0 , 0),
(11833 , 4 , -1056.49 , -224.361 , 159.03 , 100 , 0 , 0),
(11833 , 5 , -1060.74 , -226.378 , 159.031 , 100 , 0 , 0),
(11833 , 6 , -1063.79 , -226.545 , 159.03 , 100 , 0 , 0),
(11833 , 7 , -1066.76 , -226.311 , 159.031 , 100 , 0 , 0),
(11833 , 8 , -1069.25 , -224.834 , 159.031 , 100 , 0 , 0),
(11833 , 9 , -1071.37 , -219.163 , 159.03 , 4.46804 , 180000 , 0),
(11833 , 10 , -1069.25 , -224.834 , 159.031 , 100 , 0 , 0),
(11833 , 11 , -1066.76 , -226.311 , 159.031 , 100 , 0 , 0),
(11833 , 12 , -1063.79 , -226.545 , 159.03 , 100 , 0 , 0),
(11833 , 13 , -1060.74 , -226.378 , 159.031 , 100 , 0 , 0),
(11833 , 14 , -1056.49 , -224.361 , 159.03 , 100 , 0 , 0),
(11833 , 15 , -1054.95 , -221.312 , 159.03 , 100 , 0 , 0),
(11833 , 16 , -1054.79 , -217.982 , 159.03 , 100 , 0 , 0);

-- Moonglade
-- add missing Moonglade Warden
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(81, 11822, 1, 0, 0, 7546.30, -3034.33, 463.46, 1.11689, 300, 300, 0, 0, 2718, 2117, 0, 0),
(116, 11822, 1, 0, 0, 7537.79, -3029.95, 463.46, 1.10166, 300, 300, 0, 0, 2718, 2117, 0, 0);

-- allow Bessany Plainswind to roam
UPDATE `creature` SET `position_x` = 8005.35, `position_y` = -2496.49, `position_z` = 492.126, `movementtype` = 1, `spawndist` = 10 WHERE `id` = 11796;

-- Umber waypoints and script
DELETE FROM `dbscripts_on_creature_movement` WHERE `id` = 1193901;
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(1193901, 0, 0, 0, 898, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Umber 11939 - Random Texts');

DELETE FROM `dbscript_random_templates` WHERE `id` = 898;
INSERT INTO `dbscript_random_templates` (`id`, `type`, `target_id`, `chance`, `comments`) VALUES
(898, 0, 2000010001, 0, 'Umber 11939 - Random Texts'),
(898, 0, 2000010002, 0, 'Umber 11939 - Random Texts'),
(898, 0, 2000010003, 0, 'Umber 11939 - Random Texts'),
(898, 0, 2000010004, 0, 'Umber 11939 - Random Texts'),
(898, 0, 2000010005, 0, 'Umber 11939 - Random Texts');

DELETE FROM `dbscript_string` WHERE `entry` BETWEEN 2000010001 AND 2000010005;
INSERT INTO `dbscript_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `broadcast_text_id`, `comment`) VALUES
(2000010001, 'Now where did I put that companion document?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 8559, 'Umber 11939 - Random Texts'),
(2000010002, 'Quite the riveting tale.  Now I know why there was so much dust on that book.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 8560, 'Umber 11939 - Random Texts'),
(2000010003, 'So many bookshelves, so little time...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 8561, 'Umber 11939 - Random Texts'),
(2000010004, 'I should talk to Dewey about some sort of notation system to these keep books better organized.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 8562, 'Umber 11939 - Random Texts'),
(2000010005, 'A book by a goblin on gnomish military victories... and all the pages are blank.  Figures.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 8563, 'Umber 11939 - Random Texts');

UPDATE `creature` SET `movementtype` = 2 WHERE `id` = 11939;
DELETE FROM `creature_movement_template` WHERE `entry` = 11939;
INSERT INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `script_id`) VALUES
(11939, 1, 7943.56, -2417.24, 494.055, 100, 2000, 1193901),
(11939, 2, 7933.73, -2410.85, 494.053, 100, 0, 0),
(11939, 3, 7927.39, -2411.77, 493.983, 100, 0, 0),
(11939, 4, 7905.3, -2414.25, 494.573, 100, 0, 0),
(11939, 5, 7888.99, -2418.21, 495.092, 100, 0, 0),
(11939, 6, 7884.62, -2422.25, 495.761, 100, 0, 0),
(11939, 7, 7878.64, -2430.44, 494.792, 100, 0, 0),
(11939, 8, 7879.15, -2444.55, 494.631, 100, 0, 0),
(11939, 9, 7880.97, -2459.02, 495.175, 100, 0, 0),
(11939, 10, 7883.68, -2474.02, 494.396, 100, 0, 0),
(11939, 11, 7880.8, -2483.08, 494.389, 3.26377, 540000, 0),
(11939, 12, 7880.8, -2483.08, 494.389, 100, 2000, 1193901),
(11939, 13, 7884.53, -2475.5, 494.396, 100, 0, 0),
(11939, 14, 7886.79, -2463.05, 494.703, 100, 0, 0),
(11939, 15, 7884.28, -2434.58, 494.112, 100, 0, 0),
(11939, 16, 7887.25, -2426.33, 494.806, 100, 0, 0),
(11939, 17, 7897.72, -2421.08, 494.079, 100, 0, 0),
(11939, 18, 7909.3, -2418.55, 494.923, 100, 0, 0),
(11939, 19, 7925.07, -2416.59, 494.277, 100, 0, 0),
(11939, 20, 7927.98, -2413.71, 493.988, 100, 0, 0),
(11939, 21, 7943.56, -2417.24, 494.055, 4.85202, 540000, 0);

-- add waypoints to Moonglade Warden
UPDATE `creature` SET `position_x` = 7832.69, `position_y` = -2195.04, `position_z` = 469.047, `movementtype` = 2 WHERE `guid` = 42417 AND `id` = 11822;
DELETE FROM `creature_movement` WHERE `id` = 42417;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `script_id`) VALUES
(42417, 1, 7832.69, -2195.04, 469.047, 100, 0, 0),
(42417, 2, 7830.04, -2209.28, 466.542, 100, 0, 0),
(42417, 3, 7833.74, -2225.74, 466.272, 100, 0, 0),
(42417, 4, 7831, -2217.33, 466.165, 100, 0, 0),
(42417, 5, 7831.21, -2197.73, 468.354, 100, 0, 0),
(42417, 6, 7837.97, -2185.45, 473.512, 100, 0, 0),
(42417, 7, 7849.74, -2171.41, 479.488, 100, 0, 0),
(42417, 8, 7863.98, -2176.12, 478.251, 100, 0, 0),
(42417, 9, 7877.36, -2184.23, 478.795, 100, 0, 0),
(42417, 10, 7887.08, -2195.41, 480.428, 100, 0, 0),
(42417, 11, 7890.73, -2207.56, 477.363, 100, 0, 0),
(42417, 12, 7882.41, -2221.23, 471.854, 100, 0, 0),
(42417, 13, 7878.59, -2225.79, 471.396, 100, 0, 0),
(42417, 14, 7872.7, -2232.2, 470.014, 100, 0, 0),
(42417, 15, 7864.52, -2234.94, 466.034, 100, 0, 0),
(42417, 16, 7845.67, -2234.04, 465.905, 100, 0, 0),
(42417, 17, 7864.52, -2234.94, 466.034, 100, 0, 0),
(42417, 18, 7872.7, -2232.2, 470.014, 100, 0, 0),
(42417, 19, 7878.59, -2225.79, 471.396, 100, 0, 0),
(42417, 20, 7882.41, -2221.23, 471.854, 100, 0, 0),
(42417, 21, 7887.08, -2195.41, 480.428, 100, 0, 0),
(42417, 22, 7877.36, -2184.23, 478.795, 100, 0, 0),
(42417, 23, 7863.98, -2176.12, 478.251, 100, 0, 0),
(42417, 24, 7849.74, -2171.41, 479.488, 100, 0, 0),
(42417, 25, 7837.97, -2185.45, 473.512, 100, 0, 0);

-- Winterspring
-- allow Everlook Bruiser to roam
UPDATE `creature` SET `movementtype` = 1, `spawndist` = 2 WHERE `guid` IN (42281, 42288, 42290, 42285, 42286, 42287, 42291, 42280, 42278);
UPDATE `creature` SET `movementtype` = 1, `spawndist` = 0.5 WHERE `guid` = 42284; -- at desk

-- allow Umaron Stragarelm to roam
UPDATE `creature` SET `position_x` = 6723.87, `position_y` = -4708.75, `position_z` = 722.038, `movementtype` = 1, `spawndist` = 3 WHERE `guid` = 42314 AND `id` = 11757;

-- Felwood
-- allow Greta Mosshoof to roam
UPDATE `creature` SET `movementtype` = 1, `spawndist` = 5 WHERE `guid` = 39100 AND `id` = 10922;

-- allow Shialune to roam
UPDATE `creature` SET `movementtype` = 1, `spawndist` = 3 WHERE `guid` = 39663 AND `id` = 11181;

-- Azshara
-- Archmage Xylem waypoints
UPDATE `creature` SET `position_x` = 3982.08, `position_y` = -4760.25, `position_z` = 304.803, `movementtype` = 2 WHERE `guid` = 35886 AND `id` = 8379;
DELETE FROM `creature_movement_template` WHERE `entry` = 8379;
INSERT INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `script_id`) VALUES
(8379, 1, 3982.08, -4760.25, 304.803, 5.3781, 60000, 0),
(8379, 2, 3975.94, -4767.85, 304.728, 100, 0, 0),
(8379, 3, 3972.76, -4771.82, 304.716, 100, 0, 0),
(8379, 4, 3970.95, -4777.04, 304.728, 100, 0, 0),
(8379, 5, 3970.78, -4780.04, 304.712, 100, 0, 0),
(8379, 6, 3971.65, -4784.84, 304.718, 100, 0, 0),
(8379, 7, 3976.24, -4788.04, 304.717, 100, 0, 0),
(8379, 8, 3977.89, -4786.99, 304.73, 100, 0, 0),
(8379, 9, 3977.45, -4783.41, 303.731, 100, 0, 0),
(8379, 10, 3979.76, -4780.78, 301.995, 100, 0, 0),
(8379, 11, 3983.23, -4782.2, 299.606, 100, 0, 0),
(8379, 12, 3982.05, -4785.25, 297.913, 100, 0, 0),
(8379, 13, 3974.91, -4782.9, 295.922, 100, 0, 0),
(8379, 14, 3969.92, -4784.16, 296.018, 100, 10000, 0),
(8379, 15, 3974.91, -4782.9, 295.922, 100, 0, 0),
(8379, 16, 3982.05, -4785.25, 297.913, 100, 0, 0),
(8379, 17, 3983.23, -4782.2, 299.606, 100, 0, 0),
(8379, 18, 3979.76, -4780.78, 301.995, 100, 0, 0),
(8379, 19, 3977.45, -4783.41, 303.731, 100, 0, 0),
(8379, 20, 3977.89, -4786.99, 304.73, 100, 0, 0),
(8379, 21, 3976.24, -4788.04, 304.717, 100, 0, 0),
(8379, 22, 3971.65, -4784.84, 304.718, 100, 0, 0),
(8379, 23, 3970.78, -4780.04, 304.712, 100, 0, 0),
(8379, 24, 3970.95, -4777.04, 304.728, 100, 0, 0),
(8379, 25, 3972.76, -4771.82, 304.716, 100, 0, 0),
(8379, 26, 3975.94, -4767.85, 304.728, 100, 0, 0);

-- allow Loramus guardians to roam
UPDATE `creature` SET `movementtype` = 1, `spawndist` = 3 WHERE `guid` IN (35512, 35578, 35573);

-- allow Duke Hydraxis to roam
UPDATE `creature` SET `movementtype` = 1, `spawndist` = 0.5 WHERE `guid` = 36098 AND `id` = 13278;
UPDATE `creature_template` SET `SpeedWalk` = (2.5 / 2.5), `SpeedRun` = (9.027779579162597656 / 7) WHERE `entry` = 13278;

-- allow Horizon Scout Crewman to roam
UPDATE `creature` SET `movementtype` = 1, `spawndist` = 0.5 WHERE `guid` IN (35901, 35899) AND `id` = 8386;
