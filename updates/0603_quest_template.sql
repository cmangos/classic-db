-- Fixed min level of quest 3788 (jonespyre's request) in Feathermoon Fortress
-- Source: http://www.wowwiki.com/Quest:Jonespyre%27s_Request
UPDATE `quest_template` SET `MinLevel` = 47 WHERE `entry` = 3788;

-- Added missing requirements for the two "jonespyre's request" quests
-- Source: http://www.wowhead.com/quest=3787#comments
UPDATE `quest_template` SET `PrevQuestId` = 3785 WHERE `entry` IN (3787, 3788);
