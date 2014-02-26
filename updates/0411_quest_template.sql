-- Added missing quest requirement for quest 214 (Red Silk Bandanas) as it needs
-- quest 155 (The Defias Brotherhood) to be completed before being available
-- Thanks Shubu for poiting. This closes #243 
-- Source: http://www.wowhead.com/quest=214
UPDATE `quest_template` SET `NextQuestId` = 214, `ExclusiveGroup` = -153, `NextQuestInChain` = 0 WHERE `entry` = 153;
UPDATE `quest_template` SET `NextQuestId` = 214, `ExclusiveGroup` = -153, `NextQuestInChain` = 0 WHERE `entry` = 155;
UPDATE `quest_template` SET `PrevQuestId` = 0 WHERE `entry` = 214;
