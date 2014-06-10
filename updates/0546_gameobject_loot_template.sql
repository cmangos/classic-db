-- Players were unable to loot Lost Supplies (begins quest) from Scattered Crate (Swamp of Sorrow)
-- Thanks Neotmiren for pointing. This closes #465 
UPDATE `gameobject_loot_template` SET `entry` = 28604, `ChanceOrQuestChance` = 100 WHERE `item` = 6172; -- the chance to loot Lost Supplies was 0.02%

UPDATE `gameobject_template` SET `data1` = 28604 WHERE `entry` = 28604;
