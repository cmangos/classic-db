-- Fixed XP rewards for quests 8460, 8464, 8484 & 8485. These new values are more accurate than the ones fixed in rev0142
-- Source: http://www.wowwiki.com/Quest:The_Brokering_of_Peace_(Alliance)?oldid=1213973
-- http://www.wowwiki.com/Quest:The_Brokering_of_Peace_(Horde)?oldid=1213985
-- http://www.wowwiki.com/Quest:Timbermaw_Ally?oldid=288707
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 2640 WHERE `entry` = 8460;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 3720 WHERE `entry` = 8464;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 5970 WHERE `entry` IN (8485, 8485);

