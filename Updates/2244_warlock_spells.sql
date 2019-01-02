-- Add affect masks for some warlock spells
DELETE FROM spell_affect WHERE entry IN(18182,28830);
INSERT INTO spell_affect(entry, effectId, SpellFamilyMask) VALUES
(18182,0,0x0000000000040000), -- Improved life tap
(28830,0,0x0000000000040000); -- Life Tap - Plagueheart Rainment 7 Piece set bonus
