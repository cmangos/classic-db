-- remove stealth on proc
DELETE FROM spell_proc_event WHERE entry=1784;
INSERT INTO spell_proc_event(entry,procEx) VALUES
(1784,0x0010000);
