-- Fixed drop condition of item 12842 (Cruedly-written Log). The item was currently requiring
-- the player to have complete a quest further down the quest line started by the item
-- making it impossible to drop
-- Thanks the TrueAnimal for pointing. This closes #707
UPDATE `conditions` SET `type` = 9, `value1` = 5121 WHERE `condition_entry` = 211;
UPDATE `quest_template` SET `PrevQuestId` = 8464 WHERE `entry` = 8469; -- Winterfall Activity : prereq of Beads for Salfa
