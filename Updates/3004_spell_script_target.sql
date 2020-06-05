-- Add script target for spell 16074 (Burning Felguard Spawn)
DELETE FROM spell_script_target WHERE entry=16074;
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(16074, 1, 10263, 0);
