-- Add missing targets for Magnetic Pull spells
DELETE FROM spell_script_target WHERE entry IN (28338, 28339);
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(28338, 1, 15929, 0),
(28339, 1, 15930, 0);
