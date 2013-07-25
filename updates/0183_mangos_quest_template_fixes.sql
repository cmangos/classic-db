-- correct minLevel and Level for quests in Durotar
UPDATE `quest_template` SET `MinLevel` = 4 WHERE `entry` = 806;
-- Source: http://www.wowwiki.com/Quest:Dark_Storms?oldid=160794
UPDATE `quest_template` SET `MinLevel` = 8, `QuestLevel` = 13 WHERE `entry` = 809;
-- Source: http://www.wowwiki.com/Quest:Ak%27Zeloth?oldid=160792
UPDATE `quest_template` SET `MinLevel` = 7 WHERE `entry` = 812;
-- Source: http://www.wowwiki.com/Quest:Need_for_a_Cure?oldid=102476
UPDATE `quest_template` SET `MinLevel` = 7 WHERE `entry` = 813;
-- Source: http://www.wowwiki.com/Quest:Finding_the_Antidote?direction=prev&oldid=412244
UPDATE `quest_template` SET `MinLevel` = 5 WHERE `entry` = 825;
-- Source: http://www.wowwiki.com/Quest:From_The_Wreckage....?oldid=823238
UPDATE `quest_template` SET `MinLevel` = 7 WHERE `entry` = 827;
-- Source: http://www.wowwiki.com/Quest:Skull_Rock?oldid=368146
UPDATE `quest_template` SET `MinLevel` = 6 WHERE `entry` = 828;
UPDATE `quest_template` SET `QuestLevel` = 12 WHERE `entry` = 828;
-- Source: http://www.wowwiki.com/Quest:Margoz?oldid=159935
UPDATE `quest_template` SET `MinLevel` = 3 WHERE `entry` = 831;
-- Source: http://www.wowwiki.com/Quest:The_Admiral%27s_Orders?direction=next&oldid=477901
UPDATE `quest_template` SET `MinLevel` = 8 WHERE `entry` = 924;
-- Source: http://www.wowwiki.com/Quest:The_Demon_Seed?oldid=102498
