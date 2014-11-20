-- Fixed drop chance of item 5339 (Serpent Bloom) in Wailing Caverns
-- Though a quest objective, it is lootable by everyone and should have a 100% drop chance
-- Also removed wrong loot content in GO 13891 (Serpent Bloom)
-- Thanks TheTrueAnimal for reporting, Sinoxan for researching. This closes #674 
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = 100 WHERE `item` = 5339;
DELETE FROM `gameobject_loot_template` WHERE `entry` = 2772 AND `item` <> 5339;
