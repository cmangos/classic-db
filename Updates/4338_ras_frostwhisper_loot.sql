
DELETE FROM `reference_loot_template` WHERE (`entry` IN (35029, 35030));

INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
('35029', '13952', '0', '1', '1', '1', '0', 'Iceblade Hacker'),
('35029', '14340', '0', '1', '1', '1', '0', 'Freezing Lich Robes'),
('35029', '14503', '0', '1', '1', '1', '0', 'Death\'s Clutch'),
('35029', '14522', '0', '1', '1', '1', '0', 'Maelstrom Leggings'),
('35029', '14525', '0', '1', '1', '1', '0', 'Boneclenched Gauntlets'),
('35029', '16689', '0', '1', '1', '1', '0', 'Magister\'s Mantle'),

('35030', '14487', '0', '1', '1', '1', '0', 'Bonechill Hammer'),
('35030', '14502', '0', '1', '1', '1', '0', 'Frostbite Girdle'),
('35030', '18693', '0', '1', '1', '1', '0', 'Shivery Handwraps'),
('35030', '18694', '0', '1', '1', '1', '0', 'Shadowy Mail Greaves'),
('35030', '18695', '0', '1', '1', '1', '0', 'Spellbound Tome'),
('35030', '18696', '0', '1', '1', '1', '0', 'Intricately Runed Shield');
