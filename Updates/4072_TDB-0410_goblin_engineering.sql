-- Add The Mortar: Reloaded to Goblin Engineering Trainer
-- Based on https://tbc.wowhead.com/spell=13240/the-mortar-reloaded

-- template is not used in classicmangos so use normal entry for now
-- DELETE FROM npc_trainer_template WHERE entry = '1003' AND spell = '13240';
-- INSERT INTO `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`, `condition_id`) VALUES ('1003', '13240', '1500', '202', '205', '0', '0'); -- 15s, 205skillvalue

-- not sure if https://www.wowhead.com/classic/spell=12768/goblin-mortar is the better spell, no action for now.

-- used by
-- 8126	Nixx Sprocketspring	Goblin Engineering Trainer
DELETE FROM npc_trainer WHERE entry = '8126' AND spell = '13240';
INSERT INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`, `condition_id`) VALUES ('8126', '13240', '1500', '202', '205', '0', '0'); -- 15s, 205skillvalue
-- 8738	Vazario Linkgrease	Goblin Engineering Trainer
DELETE FROM npc_trainer WHERE entry = '8738' AND spell = '13240';
INSERT INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`, `condition_id`) VALUES ('8738', '13240', '1500', '202', '205', '0', '0'); -- 15s, 205skillvalue

