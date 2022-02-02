DELETE FROM dbscripts_on_quest_end WHERE id='8412';
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, data_flags, dataint, x, y, z, o, comments) VALUES 
('8412', '0', '21', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'Spirit Totem: Bath\'rah the Windwatcher - Set ActiveObject'),
('8412', '0', '3', '0', '0', '0', '0', '0', '253.517', '-1459.8', '52.1418', '0', 'Spirit Totem: Bath\'rah the Windwatcher - Move'),
('8412', '0', '29', '2', '0', '0', '0', '0', '0', '0', '0', '0', 'Spirit Totem: Bath\'rah the Windwatcher - Remove NpcFlags'),
('8412', '4000', '3', '0', '0', '0', '0', '0', '254.261', '-1453.83', '51.9142', '0', 'Spirit Totem: Bath\'rah the Windwatcher - Move'),
('8412', '8000', '1', '16', '0', '0', '0', '0', '0', '0', '0', '0', 'Spirit Totem: Bath\'rah the Windwatcher - Emote OneShotKneel'),
('8412', '8000', '0', '0', '0', '0', '0', '10864', '0', '0', '0', '0', 'Spirit Totem: Bath\'rah the Windwatcher - Say Tex'),
('8412', '12000', '15', '25000', '0', '0', '4', '0', '0', '0', '0', '0', 'Spirit Totem: Bath\'rah the Windwatcher - Cast Spell Spirit Totem'),
('8412', '17000', '3', '0', '0', '0', '0', '0', '250.84', '-1470.58', '55.4637', '1.39626', 'Spirit Totem: Bath\'rah the Windwatcher - Move'),
('8412', '17000', '0', '0', '0', '0', '0', '10865', '0', '0', '0', '0', 'Spirit Totem: Bath\'rah the Windwatcher - Say Tex'),
('8412', '20000', '21', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Spirit Totem: Bath\'rah the Windwatcher - Remove ActiveObject'),
('8412', '20000', '29', '2', '1', '0', '0', '0', '0', '0', '0', '0', 'Spirit Totem: Bath\'rah the Windwatcher - Add NpcFlags');

UPDATE quest_template SET CompleteScript=8412 WHERE entry=8412;

-- Assign spell and remove gold from Spirit Totem.
UPDATE creature_template_spells SET spell1='25001' WHERE (entry='15363') AND (setId='0');
UPDATE creature_template SET MinLootGold='0', MaxLootGold='0' WHERE (Entry='60');
