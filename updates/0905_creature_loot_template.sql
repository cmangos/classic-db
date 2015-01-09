-- Fixed drop chance of item 20378 (Twilight Tablet Fragment) in Silithus
-- The item should not drop 100% of the time for players on the quest as
-- the main source intented are the GO on the ground
-- Thanks TheTrueAnimal for pointing. This closes #665 
-- Source: http://web.archive.org/web/20070315154609/http://www.thottbot.com/i20378
-- https://web.archive.org/web/20060720204038/http://wow.allakhazam.com/db/mob.html?wmob=11746
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -5 WHERE `item` = 20378; 
