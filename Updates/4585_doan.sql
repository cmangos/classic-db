
DELETE FROM `creature_loot_template` WHERE (`entry` = '6487') and (`item` = '7714');
DELETE FROM `creature_loot_template` WHERE (`entry` = '6487') and (`item` = '7713');
UPDATE `creature_loot_template` SET `item` = '30011', `ChanceOrQuestChance` = '100', `groupid` = '0', `mincountOrRef` = '-30011', `comments` = 'Scarlet Monastery (Boss Loot) - Arcanist Doan - Blue Items (Group 1)' WHERE (`entry` = '6487') and (`item` = '7711');
UPDATE `creature_loot_template` SET `item` = '30012', `ChanceOrQuestChance` = '100', `groupid` = '0', `mincountOrRef` = '-30012', `comments` = 'Scarlet Monastery (Boss Loot) - Arcanist Doan - Green Items (Group 2)' WHERE (`entry` = '6487') and (`item` = '7712');

INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
('30012', '7711', '0', '1', '1', '1', '0', 'Robe of Doan'),
('30012', '7712', '0', '1', '1', '1', '0', 'Mantle of Doan'),
('30011', '7713', '0', '1', '1', '1', '0', 'Illusionary Rod'),
('30011', '7714', '0', '1', '1', '1', '0', 'Hypnotic Blade');

INSERT INTO `reference_loot_template_names` (`entry`, `name`) VALUES
('30011', 'Scarlet Monastery (Boss Loot) - Arcanist Doan - Blue Items (Group 1)'),
('30012', 'Scarlet Monastery (Boss Loot) - Arcanist Doan - Green Items (Group 2)');
