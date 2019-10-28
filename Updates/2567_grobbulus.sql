-- Grobbulus
-- Targets for spell 30134 (Despawn Boss Adds)
DELETE FROM spell_script_target WHERE entry=30134;
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(30134, 1, 16363, 0),
(30134, 1, 16290, 0);
