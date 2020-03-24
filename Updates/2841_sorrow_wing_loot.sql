-- Correct Loot for Sorrow Wing 5928
DELETE FROM `creature_loot_template` WHERE `entry` = 5928 AND `item` IN (24048,24058,24066,24068,60138,60214);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(5928, 60138, 100, 0, -60138, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 26-30) - (NPC Levels: 27)'),
(5928, 60214, 0.05, 0, -60214, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 25-29) - (NPC Levels: 27)');
