
DELETE FROM `reference_loot_template` WHERE (`entry` = '34043');
DELETE FROM `creature_loot_template` WHERE (`entry` = '15989') and (`item` = '34043');

INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
('15989', '23040', '0', '3', '1', '1', '0', 'Glyph of Deflection'),
('15989', '23041', '0', '3', '1', '1', '0', 'Slayer\'s Crest'),
('15989', '23043', '0', '3', '1', '1', '0', 'The Face of Death'),
('15989', '23045', '0', '3', '1', '1', '0', 'Shroud of Dominion'),
('15989', '23046', '0', '4', '1', '1', '0', 'The Restrained Essence of Sapphiron'),
('15989', '23047', '0', '4', '1', '1', '0', 'Eye of the Dead'),
('15989', '23048', '0', '4', '1', '1', '0', 'Sapphiron\'s Right Eye'),
('15989', '23049', '0', '4', '1', '1', '0', 'Sapphiron\'s Left Eye'),
('15989', '23050', '0', '4', '1', '1', '0', 'Cloak of the Necropolis'),
('15989', '23242', '0', '3', '1', '1', '0', 'Claw of the Frost Wyrm');
