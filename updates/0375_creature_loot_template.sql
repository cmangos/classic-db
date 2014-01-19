-- Fixed drop rate of item 4480 (Thundering Charm)
-- Dropped from 80% to 50% accordingly to drop rate of 
-- similar items 4479 and 4481
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 50 WHERE `item` = 4480 AND `entry` = 2762;
