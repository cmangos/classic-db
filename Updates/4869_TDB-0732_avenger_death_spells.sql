UPDATE broadcast_text SET ChatTypeID=2 WHERE Id IN(19414);

DELETE FROM spell_script_target WHERE entry IN(36485,15782);
INSERT INTO spell_script_target VALUES
(15782, 1, 7434, 0);
-- (36485, 1, 21267, 0);

