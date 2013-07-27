-- Correct Vile Familiars Questline Warlock and no Warlock Questline
-- Quest 792 (Vile Familiars - no warlock version) has no race restriction but Horde even though
-- but is class restricted to non-warlocks
-- Source: http://www.wowwiki.com/Quest:Vile_Familiars?direction=next&oldid=478077
UPDATE `quest_template` SET `RequiredClasses` = 1247, `RequiredRaces` = 178 WHERE `entry` = 792;
-- Adds XP reward for quest 1485 (Vile Familiars - Warlock)
-- Source: http://www.wowwiki.com/Quest:Vile_Familiars_(Warlock)?oldid=657735
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 216 WHERE `entry` = 1485;
-- Quest 1499 (Vile Familiars - Warlock part2) has no race restriction but Horde even though
-- but is class restricted to non-warlocks. Fixes min level and add XP reward.
-- Source: http://www.wowwiki.com/Quest:Vile_Familiars_(Warlock_2)?oldid=657736
UPDATE `quest_template` SET `RequiredRaces` = 178, `MinLevel` = 1, `RewMoneyMaxLevel` = 21 WHERE `entry` = 1499;