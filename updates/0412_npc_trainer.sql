-- Fixed missing blacksmithing plan (Rough Grinding stone) for creature 957 (Dane Lindgren)
-- Thanks scotty0100 for pointing. This closes #268 
DELETE FROM `npc_trainer` WHERE `entry` = 957 AND `spell` = 3341;
INSERT INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES
(957, 3341, 90, 164, 25, 0);
