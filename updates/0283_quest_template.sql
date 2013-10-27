-- Thanks Neotmiren for pointing and fixing
-- Quest category should be Arathi Basin instead of Arathi Highlands for two BG quests
-- Source: http://www.wowwiki.com/Quest:Claiming_Arathi_Basin_(level_29)?oldid=2388955
UPDATE `quest_template` SET `ZoneOrSort` = 3358 WHERE `entry` IN (8438, 8384);
