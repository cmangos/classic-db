-- Fix drop rate of items 20457 (Hive'Ashi Silithid Brain), 20458 (Hive'Zora Silithid Brain) & 20459 (Hive'Regal Silithid Brain)
-- revert them to what they were in Classic times
-- Source: https://www.wowhead.com/quest=8310/breaking-the-code#comments:id=149071
UPDATE creature_loot_template SET ChanceOrQuestChance=-20 WHERE item IN (20457, 20458, 20459);
