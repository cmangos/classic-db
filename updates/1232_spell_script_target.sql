-- Add missing spell script target for 17652
-- creature 10498
DELETE FROM spell_script_target WHERE entry IN (17652);
INSERT INTO spell_script_target (entry,type,targetEntry,inverseEffectMask) VALUES
(17652,1,11263,0);
