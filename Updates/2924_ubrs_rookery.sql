DELETE FROM creature_movement_template WHERE entry IN (10258, 10683);
INSERT INTO creature_movement_template (entry, pathId, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(10258, 0, 1, 65.74288, -271.0012, 92.99815, 100, 0, 0),
(10258, 0, 2, 70.5515, -274.2301, 92.34054, 100, 0, 0),
(10258, 0, 3, 74.05502, -276.7673, 91.84272, 100, 0, 0),
(10258, 0, 4, 78.63022, -279.6054, 91.47189, 100, 0, 0),
(10258, 0, 5, 78.62106, -327.869, 91.45872, 100, 1, 1026404),
(10683, 0, 1, 65.74288, -271.0012, 92.99815, 100, 0, 0),
(10683, 0, 2, 70.5515, -274.2301, 92.34054, 100, 0, 0),
(10683, 0, 3, 74.05502, -276.7673, 91.84272, 100, 0, 0),
(10683, 0, 4, 78.63022, -279.6054, 91.47189, 100, 0, 0),
(10683, 0, 5, 78.62106, -327.869, 91.45872, 100, 1, 1026404);

INSERT INTO creature_linking_template (entry, map, master_entry, flag, search_range) VALUES
(10258, 229, 10264, 3, 0), -- Rookery Guardian -> Solakar Flamewreath
(10683, 229, 10264, 3, 0); -- Rookery Hatcher -> Solakar Flamewreath
