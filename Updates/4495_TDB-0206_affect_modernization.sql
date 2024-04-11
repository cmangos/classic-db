-- healing way
DELETE FROM spell_affect WHERE entry=29203;
INSERT INTO spell_affect(entry, effectId, SpellFamilyMask) VALUES
(29203,0,0x000000000040);

-- blessing of light
DELETE FROM spell_affect WHERE entry=19977;
INSERT INTO spell_affect(entry, effectId, SpellFamilyMask) VALUES
(19977,0,0x0000000080000000),
(19977,1,0x0000000040000000);

