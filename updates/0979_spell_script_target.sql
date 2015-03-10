-- This only handles Eff0 of the spell. Currently the spell focus GO isn't despawned due to core limitations.
-- quest 6041
-- script targets (eff0 for creature, eff2 for go)
DELETE FROM spell_script_target WHERE entry=19250;
INSERT INTO spell_script_target VALUES
(19250,0,177668,1),
(19250,1,12247,4);
-- quest kill credit script (only starts for eff0)
DELETE FROM dbscripts_on_spell WHERE id IN (19250);
INSERT INTO dbscripts_on_spell (id,delay,command,datalong,data_flags,comments) VALUES
(19250,0,8,0,0,'kill credit'),
(19250,0,18,0,0,'despawn target');
