-- Fixed quest requirements for quest 214 (Red Silk Bandanas). This partly reverts https://github.com/classicdb/database/commit/2b4dbb1c2470e7af1c243194ed18d4aacd4ce716
-- Thanks Zingzah for pointing. This closes #540 
-- Source: http://www.wowhead.com/quest=214#comments
-- http://www.wowwiki.com/Quest:Red_Silk_Bandanas
UPDATE `quest_template` SET `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 WHERE `entry` = 153;
UPDATE `quest_template` SET `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 166 WHERE `entry` = 155;
UPDATE `quest_template` SET `PrevQuestId` = 155 WHERE `entry` = 214;
