-- Improve Loot Table for Princess Theradras 12201
-- Part of https://github.com/cmangos/issues/issues/1981
-- Could drop 2x same blue item.
-- https://web.archive.org/web/20060216082006/http://wow.allakhazam.com/db/mob.html?wmob=12201
-- https://www.wowhead.com/classic/npc=12201/princess-theradras
-- (classic: 51 tbc+: 48)
UPDATE `creature_loot_template` SET `maxcount` = 1 WHERE `entry` = 12201 AND `mincountOrRef` = -35009;
DELETE FROM `reference_loot_template` WHERE `entry` = 35009 AND `item` IN (17707,17710,17711,17715,17766);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
-- classic only
(12201, 60262, 0.1, 0, -60262, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 49-53) - (NPC Levels: 51)'),
(12201, 60322, 0.01, 0, -60322, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 50-52) - (NPC Levels: 51)'),
(12201, 60008, 6, 0, -60008, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 51-60) - (NPC Levels: 51-63) - VANILLA NPC ONLY'),
-- classic+
-- blue grp 1
(12201, 17707, 0, 1, 1, 1, 0, 'Gemshard Heart'),
(12201, 17710, 0, 1, 1, 1, 0, 'Charstone Dirk'),
(12201, 17711, 0, 1, 1, 1, 0, 'Elemental Rockridge Leggings'),
(12201, 17715, 0, 1, 1, 1, 0, 'Eye of Theradras'),
(12201, 17766, 0, 1, 1, 1, 0, 'Princess Theradras\' Scepter'),
-- misc
(12201, 5758, 0.25, 0, 1, 1, 0, 'Mithril Lockbox'),
(12201, 4554, 3, 0, 1, 1, 0, 'Shiny Polished Stone');
-- tbc+
-- (12201, 60256, 0.1, 0, -60256, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 46-50) - (NPC Levels: 48)'),
-- (12201, 60316, 0.01, 0, -60316, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 47-49) - (NPC Levels: 48)'),
-- (12201, 60007, 6, 0, -60007, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 41-50) - (NPC Levels: 41-50)');

-- classic only
REPLACE INTO `reference_loot_template` (`item`, `entry`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `item`, 35009, 1, 0, 1, 1 FROM `reference_loot_template` WHERE `entry` = 60186; -- NPC LOOT (Green World Drop) - (Item Levels: 50-54) - (NPC Levels: 51)
-- classic+																													-- (allakhazam, cmangos, wowhead classic)
UPDATE `reference_loot_template` SET `ChanceOrQuestChance` = 25 WHERE `entry` = 35009 AND `item` = 17713; -- Blackstone Ring (18.84%, 14%, 24.56%)
UPDATE `reference_loot_template` SET `ChanceOrQuestChance` = 25 WHERE `entry` = 35009 AND `item` = 17714; -- Bracers of the Stone Princess (20.08%, 14%, 24.22%)
UPDATE `reference_loot_template` SET `ChanceOrQuestChance` = 0.5 WHERE `entry` = 35009 AND `item` = 17780; -- Blade of Eternal Darkness (0.07%, 2%, 0.3%)
UPDATE `reference_loot_template_names` SET `name` = 'Maraudon (Boss Loot) - Princess Theradras - Blackstone Ring, Bracers of the Stone Princess, Blade of Eternal Darkness & Green Items' WHERE `entry` = 35009;
-- tbc+
-- REPLACE INTO `reference_loot_template` (`item`, `entry`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
-- SELECT `item`, 35009, 1, 0, 1, 1 FROM `reference_loot_template` WHERE `entry` = 60180; -- NPC LOOT (Green World Drop) - (Item Levels: 47-52) - (NPC Levels: 48)

