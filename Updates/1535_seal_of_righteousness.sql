-- All Paladin trainers should sell spell 'Seal of Righteousness' for beginers.
-- source: https://www.youtube.com/watch?v=7Whduw2cLEE (2:29)
DELETE FROM npc_trainer_template WHERE entry IN (20,21) AND spell = 21084;
INSERT INTO npc_trainer_template (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES
(20,21084,0,0,0,0),
(21,21084,0,0,0,0);
