-- Add two more Teleporter Locations for Dragons of Nightmare Locations, as static spawns were removed
DELETE FROM game_tele WHERE id IN (1431,1432);
INSERT INTO game_tele (id, position_x, position_y, position_z, orientation, map, name) VALUES
(1431, -2880.89, 1887.36, 52.62, 2.7433, 1, 'DreamBough'),
(1432, 3291.11, -3730.47, 173.46, 2.9963, 1, 'BoughShadow');
