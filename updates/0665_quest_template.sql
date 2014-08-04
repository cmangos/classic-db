-- Assigned each quest only one faction
-- Quest 7877 Horde - http://www.wowhead.com/quest=7877 (The Treasure of the Shen'dralar)
-- Quest 7462 Alliance - http://www.wowhead.com/quest=7462 (The Treasure of the Shen'dralar)
-- This closes #514 
UPDATE `quest_template` SET `RequiredRaces` = 178 WHERE `entry` = 7877; -- horde
UPDATE `quest_template` SET `RequiredRaces` = 77 WHERE `entry` = 7462; -- alliance
