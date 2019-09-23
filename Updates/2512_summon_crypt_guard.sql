-- Add position for spell 29508 (Summon Crypt Guard)
DELETE FROM spell_target_position WHERE id=29508;
INSERT INTO spell_target_position (`id`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`) VALUES
(29508, 533, 3333.5, -3475.9, 287.1, 3.17);
