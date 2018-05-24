-- Missing script target for spell 24958 (Despawn Putrid Mushrooms) used in Emeriss encounter
DELETE FROM spell_script_target WHERE entry=24958;
INSERT INTO spell_script_target VALUES
(24958, 0, 180517, 0);
