-- arcane concentration should not proc from wands
DELETE FROM spell_proc_event WHERE entry IN(11213);
INSERT INTO spell_proc_event(entry,procFlags) VALUES
(11213,0x00015410);
