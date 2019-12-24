-- correct larvae positions for ayamiss
DELETE FROM spell_target_position WHERE Id IN(26538,26539);
INSERT INTO spell_target_position(id, target_map, target_position_x, target_position_y, target_position_z, target_orientation) VALUES
(26538,509,-9688.292,1524.927,21.735,0.8677835), -- guessed position
(26539,509,-9709,1551.2,23.98883,0.8677835);

