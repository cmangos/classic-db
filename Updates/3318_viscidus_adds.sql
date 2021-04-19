-- Add targets for spells 26585 (Despawn Globs) 26608 (Despawn Toxic Slime) used in Viscidus encounter
DELETE FROM spell_script_target WHERE entry IN (26585, 26608);
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(26585, 1, 15667, 0),
(26608, 1, 15925, 0);
