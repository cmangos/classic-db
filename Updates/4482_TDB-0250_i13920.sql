-- https://www.wowhead.com/quest=5582/healthy-dragon-scale#comments:id=6196 - 12 looted 22 spawns
-- "These are an awesome bonus for rep at Revered. Last night, I picked up 5 in one run (no one else had completed the quest). That's the equivalent of 5 of the boss scourgestones!"
-- 5 looted 22 spawn = 22,7% ~ 20% - on 2006/04/28 (Patch 1.9.4)
-- https://www.wowhead.com/classic/item=13920/healthy-dragon-scale#dropped-by;comments:id=3171755
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 20 WHERE `item` = 13920; -- classic 6 chance

