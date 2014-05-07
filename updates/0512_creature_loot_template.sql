-- Fixed drop rate of starting items for quest 485 (Find OOX-09/HL!) and 2766 (Find OOX-22/FE!)
-- Previously, the items would only drop if player already have the quest making them
-- impossible to drop and as such making the quests unobtainable
-- Also fixed movement speed of the NPC (running was slower than walking)
-- This closes #423 and closes #424 
UPDATE `creature_template` SET `SpeedWalk` = 2, `SpeedRun` = 2 WHERE `Entry` IN (7807, 7806, 7784);

UPDATE `creature_loot_template` SET  `ChanceOrQuestChance` = 2 WHERE `item` IN (8704, 8705);
