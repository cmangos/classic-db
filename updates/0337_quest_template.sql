-- Fixed minlevel and quest level of some quests in the Raene's Cleansing quest chain
-- Source: http://www.wowwiki.com/Quest:Raene%27s_Cleansing?direction=prev&oldid=461090
UPDATE `quest_template` SET `MinLevel` = 15, `QuestLevel` = 19 WHERE `entry` = 991;
-- Source: http://www.wowwiki.com/Quest:Raene%27s_Cleansing_(4)?oldid=283689
UPDATE `quest_template` SET `MinLevel` = 18, `QuestLevel` = 27 WHERE `entry` = 1026;
-- Source: http://www.wowwiki.com/Quest:Raene%27s_Cleansing_(5)?oldid=283716
UPDATE `quest_template` SET `MinLevel` = 18, `QuestLevel` = 28 WHERE `entry` = 1027;
-- Source: http://www.wowwiki.com/Quest:Raene%27s_Cleansing_(6)?oldid=283754
-- Source: http://www.wowwiki.com/Quest:Raene%27s_Cleansing_(7)?oldid=283760
-- Source: http://www.wowwiki.com/Quest:Raene%27s_Cleansing_(8)?oldid=283767
-- Source: http://www.wowwiki.com/Quest:Raene%27s_Cleansing_(9)?oldid=283774
UPDATE `quest_template` SET `MinLevel` = 19, `QuestLevel` = 28 WHERE `entry` IN (1028, 1029, 1030, 1055);
-- Source: http://www.wowwiki.com/Quest:Raene%27s_Cleansing_(10)?oldid=283797
-- Source: http://www.wowwiki.com/Quest:Raene%27s_Cleansing_(11)?oldid=283806
UPDATE `quest_template` SET `MinLevel` = 23, `QuestLevel` = 30 WHERE `entry` IN (1045, 1046);
