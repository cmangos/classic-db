-- Add Green Loot for Ragefire Chasm Trash
DELETE FROM `creature_loot_template` WHERE `entry` IN (11324,11323,11322,11321,11320,11319,11318,11518,11520) AND `item` IN (60111,60112,60116);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(11318, 60112, 5, 0, -60112, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 13-17) - (NPC Levels: 14)'), -- Ragefire Trogg	13	15
(11319, 60112, 5, 0, -60112, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 13-17) - (NPC Levels: 14)'), -- Ragefire Shaman	13	15
(11320, 60111, 5, 0, -60111, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 12-17) - (NPC Levels: 13-14)'), -- Earthborer	13	14
(11321, 60112, 5, 0, -60112, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 13-17) - (NPC Levels: 14)'), -- Molten Elemental	13	15
(11322, 60112, 5, 0, -60112, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 13-17) - (NPC Levels: 14)'), -- Searing Blade Cultist	13	15
(11323, 60112, 5, 0, -60112, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 13-17) - (NPC Levels: 14)'), -- Searing Blade Enforcer	13	15
(11324, 60112, 5, 0, -60112, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 13-17) - (NPC Levels: 14)'), -- Searing Blade Warlock	13	15
(11518, 60116, 2, 0, -60116, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 15-19) - (NPC Levels: 16)'), -- Jergosh the Invoker	16	16
(11520, 60116, 2, 0, -60116, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 15-19) - (NPC Levels: 16)'); -- Taragaman the Hungerer	16	16
