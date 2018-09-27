
-- Improved Mend Pet should proc on periodic ticks not on apply
UPDATE spell_proc_event SET procFlags=262144 WHERE entry IN(19572);

-- Vile poisons wrong masks fix - now correctly work for poisons
UPDATE spell_affect SET SpellFamilyMask=(0x00010000) WHERE entry=16513 AND effectId IN(1);
UPDATE spell_affect SET SpellFamilyMask=(0x00010000|0x10000000|0x0000000000008000|0x0000000000004000) WHERE entry=16513 AND effectId IN(2);

DELETE FROM spell_bonus_data WHERE entry IN(779, 1822);
INSERT INTO spell_bonus_data(entry, direct_bonus, dot_bonus, ap_bonus, ap_dot_bonus, comments) VALUES
('1822', '0', '0', '0.01', '0.02', 'Druid - Rake'),
('779', '0', '0', '0.08', '0', 'Druid - Swipe');
