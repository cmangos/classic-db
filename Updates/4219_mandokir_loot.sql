
DELETE FROM `creature_loot_template` WHERE (`entry` = '11382') and (`item` = '34088');
DELETE FROM `reference_loot_template` WHERE (`entry` = '34088');

UPDATE `creature_loot_template` SET `groupid` = '2' WHERE (`entry` = '11382') and (`item` = '19872'); -- Swift Razzashi Raptor

INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
('11382', '19863', '0', '3', '1', '1', '0', 'Primalist\'s Seal'),
('11382', '19866', '0', '3', '1', '1', '0', 'Warblade of the Hakkari'),
('11382', '19867', '0', '3', '1', '1', '0', 'Bloodlord\'s Defender'),
('11382', '19869', '0', '2', '1', '1', '0', 'Blooddrenched Grips'),
('11382', '19870', '0', '3', '1', '1', '0', 'Hakkari Loa Cloak'),
('11382', '19873', '0', '2', '1', '1', '0', 'Overlord\'s Crimson Band'),
('11382', '19874', '0', '2', '1', '1', '0', 'Halberd of Smiting'),
('11382', '19877', '0', '3', '1', '1', '0', 'Animist\'s Leggings'),
('11382', '19878', '0', '2', '1', '1', '0', 'Bloodsoaked Pauldrons'),
('11382', '19893', '0', '3', '1', '1', '0', 'Zanzil\'s Seal'),
('11382', '19895', '0', '2', '1', '1', '0', 'Bloodtinged Kilt'),
('11382', '20038', '0', '2', '1', '1', '0', 'Mandokir\'s Sting');
