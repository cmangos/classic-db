-- Learning spell Journeyman Blacksmith (2021) from trainers now requires blacksmith skill 
-- along with the skill level of 50
UPDATE `npc_trainer` SET `reqskill` = 164 WHERE `spell` = 2021;
