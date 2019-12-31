-- calculated in core for dynamic reasons
DELETE FROM spell_bonus_data WHERE entry IN(21084,25742);
INSERT INTO `spell_bonus_data` (`entry`, `direct_bonus`, `dot_bonus`, `ap_bonus`, `ap_dot_bonus`, `comments`) VALUES
(25742, 0, 0, 0, 0, 'Paladin - Seal of Righteousness'); -- direct_bonus was 0.1

