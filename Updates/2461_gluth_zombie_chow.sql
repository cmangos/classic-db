-- correct targeting for Gluth spell
DELETE FROM spell_script_target WHERE entry=28404;
INSERT INTO spell_script_target VALUES
(28404,1,16360,0);
