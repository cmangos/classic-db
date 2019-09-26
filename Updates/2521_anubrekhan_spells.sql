-- Add spells for Anub'Rekhan encounter

-- Add position for spell 29508 (Summon Crypt Guard)
DELETE FROM spell_target_position WHERE id=29508;
INSERT INTO spell_target_position (id, target_map, target_position_x, target_position_y, target_position_z, target_orientation) VALUES
(29508, 533, 3333.5, -3475.9, 287.1, 3.17);

-- Add script targets for spell 29379 (Despawn Crypt Guards)
DELETE FROM spell_script_target WHERE entry=29379;
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(29379, 1, 16573, 4),
(29379, 1, 16698, 2);

-- Add script targets for spell 28961 (Summon Corpse Scarabs)
DELETE FROM spell_script_target WHERE entry=28961;
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(28961, 2, 16573, 0);
