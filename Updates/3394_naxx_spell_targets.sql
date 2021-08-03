-- Add missing spell targets in Naxxramas
DELETE FROM spell_script_target WHERE entry IN (28096, 28111, 29336);
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(28096, 1, 15929, 0), -- Stalagg Chain
(28111, 1, 15930, 0), -- Feugen Chain
(29336, 1, 17025, 0); -- Despawn Buffet
