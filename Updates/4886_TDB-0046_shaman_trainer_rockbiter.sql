-- Rockbiter Weapon (Rank 1) s.8017 was only in the starting zone shaman trainer template 60, add it to the city template 61 like the level 1 spells of every other class
DELETE FROM npc_trainer_template WHERE entry=61 AND spell=8017;
INSERT INTO npc_trainer_template(entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES
(61, 8017, 10, 0, 0, 1);
-- DELETE FROM npc_trainer_template WHERE entry=2050 AND spell=8017; -- AT Lists
-- INSERT INTO npc_trainer_template(entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES
-- (2050, 8017, 10, 0, 0, 1);

