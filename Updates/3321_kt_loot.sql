
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
('15990', '22798', '0', '1', '1', '1', '0', 'Might of Menethil'),
('15990', '22799', '0', '2', '1', '1', '0', 'Soulseeker'),
('15990', '22802', '0', '1', '1', '1', '0', 'Kingsfall'),
('15990', '22812', '0', '1', '1', '1', '0', 'Nerubian Slavemaker'),
('15990', '22819', '0', '2', '1', '1', '0', 'Shield of Condemnation'),
('15990', '22821', '0', '2', '1', '1', '0', 'Doomfinger'),
('15990', '23053', '0', '1', '1', '1', '0', 'Stormrage\'s Talisman of Seething'),
('15990', '23054', '0', '1', '1', '1', '0', 'Gressil, Dawn of Ruin'),
('15990', '23056', '0', '2', '1', '1', '0', 'Hammer of the Twisting Nether'),
('15990', '23057', '0', '2', '1', '1', '0', 'Gem of Trapped Innocents'),
('15990', '23577', '0', '1', '1', '1', '0', 'The Hungering Cold');

DELETE FROM `reference_loot_template` WHERE (`entry` = '34044') and (`item` = '22798');
DELETE FROM `reference_loot_template` WHERE (`entry` = '34044') and (`item` = '22799');
DELETE FROM `reference_loot_template` WHERE (`entry` = '34044') and (`item` = '22802');
DELETE FROM `reference_loot_template` WHERE (`entry` = '34044') and (`item` = '22812');
DELETE FROM `reference_loot_template` WHERE (`entry` = '34044') and (`item` = '22819');
DELETE FROM `reference_loot_template` WHERE (`entry` = '34044') and (`item` = '22821');
DELETE FROM `reference_loot_template` WHERE (`entry` = '34044') and (`item` = '23053');
DELETE FROM `reference_loot_template` WHERE (`entry` = '34044') and (`item` = '23054');
DELETE FROM `reference_loot_template` WHERE (`entry` = '34044') and (`item` = '23056');
DELETE FROM `reference_loot_template` WHERE (`entry` = '34044') and (`item` = '23057');
DELETE FROM `reference_loot_template` WHERE (`entry` = '34044') and (`item` = '23577');
