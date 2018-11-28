-- need to always proc no matter if hit or not
DELETE FROM spell_proc_event WHERE entry IN(12966,16257);
INSERT INTO spell_proc_event(entry,procEx) VALUES
(12966,65536), -- Warrior
(16257,65536); -- Shaman
