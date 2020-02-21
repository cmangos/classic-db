
UPDATE `creature_movement` SET `waittime` = '10000' WHERE (`id` IN ('91940', '91946',  '92235', '92264'));

DELETE FROM `dbscripts_on_creature_movement` WHERE `id` = '855301';
INSERT INTO `dbscripts_on_creature_movement` (id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
('855301', '0', '0', '47', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Stop Channeling'),
('855301', '5000', '0', '15', '8734', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Cast Aura Blackfathom Channeling');
