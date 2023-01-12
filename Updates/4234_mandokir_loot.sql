
UPDATE `creature_loot_template` SET `maxcount` = '1' WHERE (`entry` = '11382') and (`item` = '34088');

DELETE FROM `creature_loot_template` WHERE (`entry` = '11382') and (`item` = '19872');

INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
('11382', '34090', '100', '1', '-34090', '1', '0', '');

INSERT INTO `reference_loot_template_names` (`entry`, `name`) VALUES
('34090', 'Zul\'Gurub (Boss Loot) - Bloodlord Mandokir - Epic Items (Group 2)');

INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
('34090', '19863', '0', '1', '1', '1', '0', 'Primalist\'s Seal'),
('34090', '19866', '0', '1', '1', '1', '0', 'Warblade of the Hakkari'),
('34090', '19867', '0', '1', '1', '1', '0', 'Bloodlord\'s Defender'),
('34090', '19870', '0', '1', '1', '1', '0', 'Hakkari Loa Cloak'),
('34090', '19877', '0', '1', '1', '1', '0', 'Animist\'s Leggings'),
('34090', '19893', '0', '1', '1', '1', '0', 'Zanzil\'s Seal');

DELETE FROM `reference_loot_template` WHERE (`entry` = '34088') and (`item` = '19863');
DELETE FROM `reference_loot_template` WHERE (`entry` = '34088') and (`item` = '19866');
DELETE FROM `reference_loot_template` WHERE (`entry` = '34088') and (`item` = '19867');
DELETE FROM `reference_loot_template` WHERE (`entry` = '34088') and (`item` = '19870');
DELETE FROM `reference_loot_template` WHERE (`entry` = '34088') and (`item` = '19877');
DELETE FROM `reference_loot_template` WHERE (`entry` = '34088') and (`item` = '19893');

INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
('34088', '19872', '2', '1', '1', '1', '0', 'Swift Razzashi Raptor');
