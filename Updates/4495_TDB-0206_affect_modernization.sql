-- healing way
DELETE FROM spell_affect WHERE entry=29203;
INSERT INTO spell_affect(entry, effectId, SpellFamilyMask) VALUES
(29203,0,0x000000000040);


