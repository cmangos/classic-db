-- applicable to all versions
DELETE FROM spell_bonus_data WHERE entry=5019;
INSERT INTO spell_bonus_data(entry, direct_bonus, dot_bonus, ap_bonus, ap_dot_bonus, comments) VALUES
(5019, 0, 0, 0, 0, 'Shoot - Wand');

