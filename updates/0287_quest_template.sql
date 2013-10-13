-- Thanks Neotmiren for pointing and fixing
-- Rogue quest "Syndicate Emblems" - wrong maximum Reputation restriction, quest is unavailable
-- http://www.wowhead.com/quest=6701/syndicate-emblems
-- http://www.wowwiki.com/Syndicate?oldid=295307
UPDATE `quest_template` SET `RequiredMaxRepValue` = 2999, `QuestLevel` = -1 WHERE `entry` = 6701;
