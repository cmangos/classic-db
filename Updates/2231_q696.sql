-- Quest: Attack on the Tower 696

-- Trelane's Chest, Trelane's Footlocker, Trelane's Lockbox
UPDATE `gameobject_template` SET `flags` = 4 WHERE `entry` IN (2716,2717,2718);
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = -100 WHERE `entry` IN (2177,2178,2179) AND `item` IN (4530,4531,4532);
