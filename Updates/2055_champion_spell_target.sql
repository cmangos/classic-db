-- Added missing spell target for spell 21090 (Champion)
DELETE FROM spell_script_target WHERE entry=21090;
INSERT INTO spell_script_target VALUES
(21090, 1, 11663, 0),
(21090, 1, 11664, 0);
