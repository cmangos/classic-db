-- Fixed reqskillvalue for Leatherworking spell 20653 "Thick Leather" and 10485 "Cured Thick Hide" spells
-- Thanks Neotmiren for pointing and fixing
-- Sources: http://www.wowwiki.com/Cured_Thick_Hide
-- 
UPDATE `npc_trainer` SET `reqskillvalue` = 200 WHERE `spell` IN (20653, 10485) AND `reqskillvalue` = 180;
