-- Add missing target for spell 23415 (Blessing of Protection) used in Nefarian encounter
DELETE FROM spell_script_target WHERE entry=23415;
INSERT INTO spell_script_target (`entry`, `type`, `targetEntry`, `inverseEffectMask`) VALUES
(23415, 1, 11583, 0);
