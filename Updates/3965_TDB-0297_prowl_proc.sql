-- prowl should proc on non damage spells
DELETE FROM spell_proc_event WHERE entry=5215;
INSERT INTO spell_proc_event(entry, procEx) VALUES
(5215,65536);

