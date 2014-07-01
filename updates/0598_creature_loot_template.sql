-- Fixed all epic quest idols in Ruins of Ahn'Qiraj which were only dropping for people with the quest
-- while they should drop for everyone
-- Thanks Scotty0100 for pointing. This closes #498 
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = ABS(`ChanceOrQuestChance`) WHERE `item` BETWEEN 20866 AND 20873;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = ABS(`ChanceOrQuestChance`) WHERE `item` BETWEEN 20866 AND 20873;
