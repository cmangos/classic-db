-- Add missing parts of [2359]

-- Fix wrong parameter for movement scripts
DELETE FROM dbscripts_on_creature_movement WHERE (id=1764701 AND command=37) OR id=1799501;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES 
(1764701, 1, 37, 10, 2, 17635, 30, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Lordaeron Soldier - move towards Lordaeron Commander'),
(1799501, 4, 24, 5228, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 'Lordaeron Veteran/Fighter - mount'); -- 5228;

-- Add movement for Horde NPCS
DELETE FROM creature_movement_template WHERE entry IN (17995, 17996);
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id) VALUES
(17995, 1, 2532.85, -4764.92, 103.617, 0, 1799501),
(17995, 2, 2501.35, -4725.99, 90.974, 0, 0),
(17995, 3, 2491.21, -4693.16, 82.363, 0, 0),
(17995, 4, 2493.06, -4655.49, 75.194, 0, 0),
(17995, 5, 2562.23, -4646.4, 79.003, 0, 0),
(17995, 6, 2699.75, -4567.38, 87.46, 0, 0),
(17995, 7, 2757.27, -4527.59, 89.08, 0, 0),
(17995, 8, 2850.87, -4417.56, 89.421, 0, 0),
(17995, 9, 2888.34, -4328.49, 90.562, 0, 0),
(17995, 10, 2913.27, -4167.14, 93.919, 0, 0),
(17995, 11, 3035.66, -4260.18, 96.141, 0, 0),
(17995, 12, 3088.54, -4250.21, 97.769, 0, 0),
(17995, 13, 3147.3, -4318.8, 130.41, 0, 0),
(17995, 14, 3163.51, -4341.18, 135.287, 0, 1763502), -- Stop, unmount and idle
(17995, 15, 3163.51, -4341.18, 135.287, 0, 0);
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id) VALUES
(17996, 1, 2532.85, -4764.92, 103.617, 0, 1799501),
(17996, 2, 2501.35, -4725.99, 90.974, 0, 0),
(17996, 3, 2491.21, -4693.16, 82.363, 0, 0),
(17996, 4, 2493.06, -4655.49, 75.194, 0, 0),
(17996, 5, 2562.23, -4646.4, 79.003, 0, 0),
(17996, 6, 2699.75, -4567.38, 87.46, 0, 0),
(17996, 7, 2757.27, -4527.59, 89.08, 0, 0),
(17996, 8, 2850.87, -4417.56, 89.421, 0, 0),
(17996, 9, 2888.34, -4328.49, 90.562, 0, 0),
(17996, 10, 2913.27, -4167.14, 93.919, 0, 0),
(17996, 11, 3035.66, -4260.18, 96.141, 0, 0),
(17996, 12, 3088.54, -4250.21, 97.769, 0, 0),
(17996, 13, 3147.3, -4318.8, 130.41, 0, 0),
(17996, 14, 3163.51, -4332.65, 135.287, 0, 1799601), -- Stop, unmount and idle
(17996, 15, 3163.51, -4332.65, 135.287, 0, 0);

-- Add scripts associated with movements for creatures 17996 (Lordaeron Fighter) and 17995 (Lordaeron Veteran)
DELETE FROM dbscripts_on_creature_movement WHERE id=1799601;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES 
(1799601, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Lordaeron Fighter - Set movement to random'),
(1799601, 1, 37, 10, 2, 17995, 30, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Lordaeron Fighter - move towards Lordaeron Veteran'),
(1799601, 0, 24, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Lordaeron Fighter - Unmount');
