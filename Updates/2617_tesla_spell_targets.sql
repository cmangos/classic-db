-- Add spell targets for Tesla Coils mechanics in Thaddius encounter in Naxxramas

-- Respective Tesla chains for Feugen and Stalagg
DELETE FROM spell_script_target WHERE entry IN (28098, 28110);
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(28098, 1, 15929, 0),
(28110, 1, 15930, 0);

DELETE FROM spell_script_target WHERE entry IN (28159, 28359);
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(28159, 1, 15928, 0), -- Shock overload -> Thaddius
(28359, 1, 16218, 0); -- Trigger Teslas -> Tesla Coil
