-- missing targeting data causing errors - target taken from sniffs
DELETE FROM spell_script_target WHERE entry IN(29705);
INSERT INTO spell_script_target VALUES
(29705, 1, 17066, 0);
