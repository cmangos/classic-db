-- Leatherworking reqskillvalue is too low for Rugged Leather, Cured Rugged Hide, Rugged Armor Kit
-- Thanks Neotmiren for pointing and fixing. This closes #467 
-- Source: http://www.wowwiki.com/Rugged_Leather
UPDATE `npc_trainer` SET `reqskillvalue` = 250 WHERE `spell` IN (22332, 19147, 19148);
