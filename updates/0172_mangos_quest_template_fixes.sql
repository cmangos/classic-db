-- Correcting to high XP for Quests 5901 & 5902 (A Plague Upon Thee, part 1 & 2)
-- And min level for quest 5902. First quest in chain has MinLevel 48, so following quest should
-- have also
-- Source: http://www.wowwiki.com/Quest:A_Plague_Upon_Thee_(Horde)?oldid=825644
-- Source: http://www.wowwiki.com/Quest:A_Plague_Upon_Thee_(Horde_2)?oldid=825896
-- Note: RewMoneyMaxLevel = XP Reward * 0.6 (see: https://github.com/cmangos/issues/wiki/quest_template)
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 3390 WHERE `entry` = 5901;
UPDATE `quest_template` SET `MinLevel` = 48, `RewMoneyMaxLevel` = 1180 WHERE `entry` = 5902;

-- correct minLevel for quest 398 Wanted Maggot Eye
-- Source: http://www.wowwiki.com/Quest:Wanted:_Maggot_Eye?oldid=718115
UPDATE `quest_template` SET `MinLevel` = 4 WHERE `entry` = 398;

-- correct minLevel for quest 374 Proof of Demise
-- Source: http://www.wowwiki.com/Quest:Proof_of_Demise?oldid=98522
UPDATE `quest_template` SET `MinLevel` = 5 WHERE `entry` = 374;

-- correct minLevel for quest 372 At War With The Scarlett Crusade
-- Source: http://www.wowwiki.com/Quest:At_War_With_The_Scarlet_Crusade_(4)?oldid=528146
UPDATE `quest_template` SET `MinLevel` = 7 WHERE `entry` = 372;

-- correct minLevel for quest 371 At War With The Scarlett Crusade
-- Source: http://www.wowwiki.com/Quest:At_War_With_The_Scarlet_Crusade_(3)?oldid=98527
UPDATE `quest_template` SET `MinLevel` = 6 WHERE `entry` = 371;

-- correct minLevel for quest 370 At War With The Scarlett Crusade
-- Source: http://www.wowwiki.com/Quest:At_War_With_The_Scarlet_Crusade_(2)?oldid=98526
UPDATE `quest_template` SET `MinLevel` = 5 WHERE `entry` = 370;

-- correct minLevel for quest 361 A Letter Undelivered
-- Source: http://www.wowhead.com/quest=361
UPDATE `quest_template` SET `MinLevel` = 4 WHERE `entry` = 361;