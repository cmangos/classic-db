

DELETE FROM `creature_loot_template` WHERE (`entry` = '14509') and (`item` = '19896');
DELETE FROM `creature_loot_template` WHERE (`entry` = '14509') and (`item` = '19897');
DELETE FROM `creature_loot_template` WHERE (`entry` = '14509') and (`item` = '19898');
DELETE FROM `creature_loot_template` WHERE (`entry` = '14509') and (`item` = '19899');
DELETE FROM `creature_loot_template` WHERE (`entry` = '14509') and (`item` = '19901');
DELETE FROM `creature_loot_template` WHERE (`entry` = '14509') and (`item` = '19902');
DELETE FROM `creature_loot_template` WHERE (`entry` = '14509') and (`item` = '20260');
DELETE FROM `creature_loot_template` WHERE (`entry` = '14509') and (`item` = '20266');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
('14509', '34092', '100', '1', '-34092', '1', '0', '');

INSERT INTO `reference_loot_template_names` (`entry`, `name`) VALUES
('34092', 'Zul\'Gurub (Boss Loot) - High Priest Thekal - Epic Items (Group 1)');

INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
('34092', '19896', '0', '1', '1', '1', '0', 'Thekal\'s Grasp'),
('34092', '19897', '0', '1', '1', '1', '0', 'Betrayer\'s Boots'),
('34092', '19898', '0', '1', '1', '1', '0', 'Seal of Jin'),
('34092', '19899', '0', '1', '1', '1', '0', 'Ritualistic Legguards'),
('34092', '19901', '0', '1', '1', '1', '0', 'Zulian Slicer'),
('34092', '19902', '2', '1', '1', '1', '0', 'Swift Zulian Tiger'),
('34092', '20260', '0', '1', '1', '1', '0', 'Seafury Leggings'),
('34092', '20266', '0', '1', '1', '1', '0', 'Peacekeeper Leggings');
