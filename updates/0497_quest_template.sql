-- Fixed quest chain sequencing of the Dreadsteed epic quest lines for warlocks:
-- some quests where not available when needed or where missing their requirements
-- Source: http://www.wowwiki.com/Dreadsteed_quest_%28removed%29
-- This close #10  
UPDATE `quest_template` SET `PrevQuestId` = 0, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 7624 WHERE `entry` = 7623;
UPDATE `quest_template` SET `PrevQuestId` = 7563, `NextQuestId` = 7629, `ExclusiveGroup` = -7564, `NextQuestInChain` = 0 WHERE `entry` = 7564;
UPDATE `quest_template` SET `PrevQuestId` = 7624, `NextQuestId` = 7629, `ExclusiveGroup` = -7564, `NextQuestInChain` = 0 WHERE `entry` = 7625;
UPDATE `quest_template` SET `PrevQuestId` = 7564, `NextQuestId` = 7630, `ExclusiveGroup` = -7626, `NextQuestInChain` = 0 WHERE `entry` IN (7626, 7627, 7628);
UPDATE `quest_template` SET `PrevQuestId` = 0, `NextQuestId` = 7631, `ExclusiveGroup` = -7629, `NextQuestInChain` = 0 WHERE `entry` IN (7629, 7630);
UPDATE `quest_template` SET `PrevQuestId` = 0 WHERE `entry` = 7631;
