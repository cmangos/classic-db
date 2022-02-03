
DELETE FROM `reference_loot_template` WHERE (`entry` = '12000');
DELETE FROM `gameobject_loot_template` WHERE (`entry` = '16719') and (`item` = '12000');

INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
('16719', '18803', '0', '2', '1', '1', '0', 'Finkle\'s Lava Dredger'),
('16719', '18805', '0', '2', '1', '1', '0', 'Core Hound Tooth'),
('16719', '18806', '0', '3', '1', '1', '0', 'Core Forged Greaves'),
('16719', '18808', '0', '2', '1', '1', '0', 'Gloves of the Hypnotic Flame'),
('16719', '18809', '0', '3', '1', '1', '0', 'Sash of Whispered Secrets'),
('16719', '18810', '0', '3', '1', '1', '0', 'Wild Growth Spaulders'),
('16719', '18811', '0', '2', '1', '1', '0', 'Fireproof Cloak'),
('16719', '18812', '0', '3', '1', '1', '0', 'Wristguards of True Flight'),
('16719', '19139', '0', '2', '1', '1', '0', 'Fireguard Shoulders'),
('16719', '19140', '0', '3', '1', '1', '0', 'Cauterizing Band');
