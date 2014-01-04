-- Fixed quest 514 (Letter to Stormpike) which was available
-- without having completing the previous quest in the quest chain
-- Source: http://www.wowwiki.com/Quest:Letter_to_Stormpike
UPDATE `quest_template` SET `PrevQuestId` = 511 WHERE `entry` = 514;
