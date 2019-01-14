-- added so that I don't want to kms while looking around hillsbrad for this place again - wotlk-db
DELETE FROM game_tele WHERE id=739;
INSERT INTO game_tele (id, position_x, position_y, position_z, orientation, map, name) VALUES
(739, -9.50862, -1569.46, 194.606, 5.78733, 0, 'RavenholdtManor');
