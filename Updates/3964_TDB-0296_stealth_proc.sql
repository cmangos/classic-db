-- ported from wotlk - stealth should proc on non damage spells
DELETE FROM spell_proc_event WHERE entry=1784;
INSERT INTO spell_proc_event(entry, procEx) VALUES
(1784,65536);

