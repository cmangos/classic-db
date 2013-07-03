-- Changed drop chance of item 12884 (Arnak's Hoof) to make it drop only when player
-- have related quest
-- Thanks to The_Great_Sephiroth for pointing
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -100 WHERE `item` = 12884 AND `entry` = 10896;
