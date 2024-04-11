
DELETE FROM `creature_loot_template` WHERE (`entry` = '6487') and (`item` = '7714');
DELETE FROM `creature_loot_template` WHERE (`entry` = '6487') and (`item` = '7713');
UPDATE `creature_loot_template` SET `item` = '35042', `ChanceOrQuestChance` = '100', `groupid` = '0', `mincountOrRef` = '-35042', `comments` = 'Scarlet Monastery (Boss Loot) - Arcanist Doan - Blue Items (Group 1)' WHERE (`entry` = '6487') and (`item` = '7711');
UPDATE `creature_loot_template` SET `item` = '35041', `ChanceOrQuestChance` = '100', `groupid` = '0', `mincountOrRef` = '-35041', `comments` = 'Scarlet Monastery (Boss Loot) - Arcanist Doan - Green Items (Group 2)' WHERE (`entry` = '6487') and (`item` = '7712');

DELETE FROM `reference_loot_template` WHERE `entry` IN (30011,30012,35041,35042);
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
('35041', '7711', '0', '1', '1', '1', '0', 'Robe of Doan'),
('35041', '7712', '0', '1', '1', '1', '0', 'Mantle of Doan'),
('35042', '7713', '0', '1', '1', '1', '0', 'Illusionary Rod'),
('35042', '7714', '0', '1', '1', '1', '0', 'Hypnotic Blade');

INSERT INTO `reference_loot_template_names` (`entry`, `name`) VALUES
('35042', 'Scarlet Monastery (Boss Loot) - Arcanist Doan - Blue Items (Group 1)'),
('35041', 'Scarlet Monastery (Boss Loot) - Arcanist Doan - Green Items (Group 2)');

