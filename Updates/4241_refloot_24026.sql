-- 24026	blue itemlevel 50-51 - still used in more complicated way, leave for now, not for long!
DELETE FROM `reference_loot_template` WHERE `entry` = 24026; -- Integrate into 34002 where these items are referened with very low dropchance. (most items are already included in 34002, makes no sense to have them twice!
DELETE FROM `reference_loot_template` WHERE `entry` = 34002 AND `mincountOrRef` = -24026; -- Table 'reference_loot_template' entry 24026 (reference id) not exist but used as loot id in DB.
DELETE FROM `reference_loot_template_names` WHERE `entry` = 24026;
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(34002, 13046, 0, 1, 1, 1, 0, 'Blanchard\'s Stout'),
(34002, 13065, 0, 1, 1, 1, 0, 'Wand of Allistarj'),
(34002, 13139, 0, 1, 1, 1, 0, 'Guttbuster');

