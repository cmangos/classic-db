-- Fixed drop chance of item 4892 (Durotar Tiger Fur) which was too low
-- Thanks to TheTrueAnimal for reporting. This closes #694
-- Source: https://web.archive.org/web/20070527004201/http://wow.allakhazam.com/db/mob.html?wmob=3121
-- https://web.archive.org/web/20090212060422/http://thottbot.com/c3121
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -35 WHERE `item` = 4892;
