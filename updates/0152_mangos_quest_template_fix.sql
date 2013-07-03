-- Changed XP reward for quest 804 (Sarkoth part 2) to 110XP instead of 100XP
-- Source: http://www.wowwiki.com/Quest:Sarkoth_(2)?oldid=657702
-- Thanks to Kokeszko for pointing
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 66 WHERE `entry` = 804;
