-- https://github.com/cmangos/tbc-db/commit/3a4c8d9e4660978e6689cea01ff9ea40a274668b
DELETE FROM spell_bonus_data WHERE entry IN (20154,21084);
INSERT INTO spell_bonus_data (entry, direct_bonus, dot_bonus, ap_bonus, ap_dot_bonus, comments) VALUES
(20154, 0, 0, 0, 0, '');

