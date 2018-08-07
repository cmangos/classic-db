-- Adds missing class skills to starter area Hunter trainers
-- This fixes https://github.com/cmangos/issues/issues/1595
DELETE FROM npc_trainer WHERE entry IN (895, 3061, 3154, 3596);
INSERT INTO npc_trainer (entry, spell, spellcost, reqlevel) VALUES
(895, 1547, 10, 1),
(895, 2003, 100, 4),
(895, 3048, 100, 6),
(895, 5298, 100, 6),
(895, 13164, 100, 4),
(3061, 1547, 10, 1),
(3061, 2003, 100, 4),
(3061, 3048, 100, 6),
(3061, 5298, 100, 6),
(3061, 13164, 100, 4),
(3154, 1547, 10, 1),
(3154, 2003, 100, 4),
(3154, 3048, 100, 6),
(3154, 5298, 100, 6),
(3154, 13164, 100, 4),
(3596, 1547, 10, 1),
(3596, 2003, 100, 4),
(3596, 3048, 100, 6),
(3596, 5298, 100, 6),
(3596, 13164, 100, 4);
