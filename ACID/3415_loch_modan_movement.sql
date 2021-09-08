-- mountaineer brokk
-- correct pathing and scripts
DELETE FROM creature_movement WHERE id = 8900;
UPDATE creature SET position_x = -4682.86, position_y = -2707.87, position_z = 318.768, orientation = 0.174533 WHERE id = 1276;
DELETE FROM creature_movement_template WHERE entry = 1276;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(1276, 1, -4682.86, -2707.87, 318.768, 0.174533, 120000, 127601),
(1276, 2, -4683.45, -2701.5, 318.892, 100, 0, 0),
(1276, 3, -4695.55, -2698.65, 318.712, 100, 0, 0),
(1276, 4, -4701.83, -2698.75, 318.747, 100, 0, 0),
(1276, 5, -4713.09, -2699.23, 319.57, 100, 0, 0),
(1276, 6, -4725.84, -2699.1, 321.837, 100, 0, 0),
(1276, 7, -4733.94, -2700.91, 323.06, 100, 0, 0),
(1276, 8, -4745.06, -2703.6, 324.518, 100, 0, 0),
(1276, 9, -4758.1, -2707.73, 325.958, 100, 0, 0),
(1276, 10, -4765.46, -2709.66, 326.34, 100, 0, 0),
(1276, 11, -4782.08, -2710.73, 326.232, 100, 0, 0),
(1276, 12, -4799.32, -2710.96, 327.048, 100, 0, 0),
(1276, 13, -4815.65, -2710.94, 327.952, 100, 0, 0),
(1276, 14, -4832.59, -2711.42, 328.971, 100, 0, 0),
(1276, 15, -4844.06, -2712.43, 328.896, 100, 0, 0),
(1276, 16, -4857.71, -2715.29, 329.206, 100, 0, 0),
(1276, 17, -4875.37, -2719.77, 329.057, 100, 0, 0),
(1276, 18, -4886.65, -2723.25, 329.059, 100, 0, 0),
(1276, 19, -4899.28, -2727.43, 329.003, 100, 0, 0),
(1276, 20, -4913.08, -2733.19, 328.671, 100, 30000, 0),
(1276, 21, -4899.3, -2728.25, 328.901, 100, 0, 0),
(1276, 22, -4887.08, -2724.43, 328.938, 100, 0, 0),
(1276, 23, -4876.19, -2720.84, 328.942, 100, 0, 0),
(1276, 24, -4858.55, -2716.24, 329.19, 100, 0, 0),
(1276, 25, -4844.22, -2713.28, 328.895, 100, 0, 0),
(1276, 26, -4832.8, -2712.19, 328.973, 100, 0, 0),
(1276, 27, -4816.25, -2711.64, 328.03, 100, 0, 0),
(1276, 28, -4799.59, -2711.58, 327.029, 100, 0, 0),
(1276, 29, -4782.75, -2711.63, 326.255, 100, 0, 0),
(1276, 30, -4767.52, -2710.21, 326.38, 100, 0, 0),
(1276, 31, -4754.88, -2707.07, 325.615, 100, 0, 0),
(1276, 32, -4743.51, -2703.28, 324.243, 100, 0, 0),
(1276, 33, -4731.75, -2701.3, 322.749, 100, 0, 0),
(1276, 34, -4725.72, -2700.93, 321.828, 100, 0, 0),
(1276, 35, -4713.9, -2699.67, 319.724, 100, 0, 0),
(1276, 36, -4698.02, -2698.69, 318.718, 100, 0, 0),
(1276, 37, -4690.26, -2701.66, 318.692, 100, 0, 0);

DELETE FROM dbscripts_on_creature_movement WHERE id = 127601;
INSERT INTO dbscripts_on_creature_movement (id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, condition_id, comments) VALUES
(127601, 120000, 0, 0, 0, 0, 0, 0, 0, 0, 2000009106, 0, 0, 0, 0, 0, 0, 0, 0, 'Mountaineer Brokk 1276 - Say on Patrol Start');

DELETE FROM dbscript_string WHERE entry = 2000009106;
INSERT INTO dbscript_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8, sound, type, language, emote, broadcast_text_id, comment) VALUES
(2000009106, 'Bout time fer me to make mah rounds.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 6, 0, 114, NULL);

-- mountaineer tyraw
-- add pathing
UPDATE creature SET movementtype= 2 WHERE id= 1330;
DELETE FROM creature_movement_template WHERE entry = 1330;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(1330, 1, -5849.87, -2623.93, 322.967, 4.36332, 300000, 0),
(1330, 2, -5855.4, -2622.75, 322.966, 100, 0, 0),
(1330, 3, -5858.91, -2624.26, 322.952, 100, 0, 0),
(1330, 4, -5859.2, -2628.2, 322.888, 100, 0, 0),
(1330, 5, -5853.35, -2636.76, 315.844, 100, 0, 0),
(1330, 6, -5849.28, -2638.34, 315.844, 100, 0, 0),
(1330, 7, -5843.21, -2634.61, 315.844, 100, 0, 0),
(1330, 8, -5842.02, -2630.5, 315.844, 100, 0, 0),
(1330, 9, -5843.46, -2627.66, 315.844, 100, 0, 0),
(1330, 10, -5847.73, -2628.23, 315.767, 100, 0, 0),
(1330, 11, -5858.69, -2636.54, 308.974, 100, 0, 0),
(1330, 12, -5881, -2651.28, 309.039, 100, 30000, 0),
(1330, 13, -5858.95, -2636.58, 308.972, 100, 0, 0),
(1330, 14, -5847.68, -2628.36, 315.751, 100, 0, 0),
(1330, 15, -5844.15, -2628, 315.842, 100, 0, 0),
(1330, 16, -5841.93, -2631.17, 315.842, 100, 0, 0),
(1330, 17, -5843.68, -2634.91, 315.842, 100, 0, 0),
(1330, 18, -5848.84, -2638.41, 315.842, 100, 0, 0),
(1330, 19, -5853.28, -2636.8, 315.844, 100, 0, 0),
(1330, 20, -5859.25, -2628.26, 322.87, 100, 0, 0),
(1330, 21, -5858.64, -2624.03, 322.952, 100, 0, 0),
(1330, 22, -5854.85, -2622.61, 322.966, 100, 0, 0);

-- mountaineer naarh
-- add pathing
UPDATE creature SET movementtype= 2 WHERE id= 1329;
DELETE FROM creature_movement_template WHERE entry = 1329;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(1329, 1, -5886.33, -2634.9, 310.668, 5.48033, 84000, 0),
(1329, 2, -5894.6, -2632.87, 311.247, 100, 0, 0),
(1329, 3, -5906.15, -2623.32, 311.803, 100, 0, 0),
(1329, 4, -5909.64, -2608.59, 312.357, 100, 0, 0),
(1329, 5, -5905.22, -2599.39, 312.012, 100, 0, 0),
(1329, 6, -5896.29, -2589.02, 309.246, 100, 0, 0),
(1329, 7, -5886.89, -2578.14, 305.472, 100, 0, 0),
(1329, 8, -5875.59, -2564.47, 306.491, 100, 30000, 0),
(1329, 9, -5888.04, -2579.18, 305.856, 100, 0, 0),
(1329, 10, -5895.6, -2588.05, 308.951, 100, 0, 0),
(1329, 11, -5907.74, -2602.11, 312.46, 100, 0, 0),
(1329, 12, -5909.78, -2612.69, 311.958, 100, 0, 0),
(1329, 13, -5906.82, -2621.52, 311.709, 100, 0, 0),
(1329, 14, -5894.56, -2634.76, 311.043, 100, 0, 0);

-- allow ozmok to roam and set correct position
UPDATE creature SET position_x = -5348.558, position_y = -2959.377, position_z = 323.6342, MovementType = 1, spawndist = 3 WHERE id = 2510; -- Mountaineer Ozmok

-- add waittime and waitposition from sniff to mountaineer ganin
UPDATE creature_movement SET position_x = -4913.53, position_y = -2728.87, position_z = 328.943, waittime = 30000, orientation = 100 WHERE id = 8267 AND point = 5;

-- allow xandar goodbeard to roam
UPDATE creature SET spawndist = 1, movementtype = 1 WHERE id = 1685;

-- allow cliff hadin to roam
UPDATE creature SET spawndist = 1, movementtype = 1 WHERE id = 1687;

-- allow irene sureshot to roam
UPDATE creature SET spawndist = 1, movementtype = 1 WHERE id = 1686;

-- allow daryl the youngling to roam
UPDATE creature SET spawndist = 1, movementtype = 1 WHERE id = 1187;

-- Bingles Blastenheimer 6577
-- add pathing and scripts
UPDATE creature SET movementtype= 2 WHERE id= 6577;
DELETE FROM creature_movement_template WHERE entry = 6577;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(6577, 1, -5368.92, -3747.12, 304.661, 2.00713, 540000, 0),
(6577, 2, -5375.95, -3731.8, 300.288, 100, 5000, 657701);

DELETE FROM dbscripts_on_creature_movement WHERE id = 657701;
INSERT INTO dbscripts_on_creature_movement (id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, condition_id, comments) VALUES
(657701, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2000009107, 0, 0, 0, 0, 0, 0, 0, 0, 'Bingles Blastenheimer 6577 - Say');

DELETE FROM dbscript_string WHERE entry = 2000009107;
INSERT INTO dbscript_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8, sound, type, language, emote, broadcast_text_id, comment) VALUES
(2000009107, 'If Gnoarn finds out about this, it\'ll be my hide!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 1, 2633, NULL);
