
UPDATE `creature_loot_template` SET `maxcount` = '1' WHERE (`entry` = '11380') and (`item` = '34089');

INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
('11380', '34091', '100', '1', '-34091', '1', '0', '');

INSERT INTO `reference_loot_template_names` (`entry`, `name`) VALUES
('34091', 'Zul\'Gurub (Boss Loot) - Jin\'do the Hexxer - Epic Items (Group 2)');

INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
('34091', '19875', '0', '1', '1', '1', '0', 'Bloodstained Coif'),
('34091', '19890', '0', '1', '1', '1', '0', 'Jin\'do\'s Hexxer'),
('34091', '19891', '0', '1', '1', '1', '0', 'Jin\'do\'s Bag of Whammies'),
('34091', '19892', '0', '1', '1', '1', '0', 'Animist\'s Boots'),
('34091', '19894', '0', '1', '1', '1', '0', 'Bloodsoaked Gauntlets'),
('34091', '19929', '0', '1', '1', '1', '0', 'Bloodtinged Gloves');

DELETE FROM `reference_loot_template` WHERE (`entry` = '34089') and (`item` = '19875');
DELETE FROM `reference_loot_template` WHERE (`entry` = '34089') and (`item` = '19890');
DELETE FROM `reference_loot_template` WHERE (`entry` = '34089') and (`item` = '19891');
DELETE FROM `reference_loot_template` WHERE (`entry` = '34089') and (`item` = '19892');
DELETE FROM `reference_loot_template` WHERE (`entry` = '34089') and (`item` = '19894');
DELETE FROM `reference_loot_template` WHERE (`entry` = '34089') and (`item` = '19929');
