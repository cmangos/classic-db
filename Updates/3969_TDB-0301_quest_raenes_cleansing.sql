-- Add Quest End Scripts for Raene's Cleansing series
-- Based on PTR
-- Quest Raene's Cleansing (Part 5) Entry: 1027
DELETE FROM dbscripts_on_quest_end WHERE id = '1027';
INSERT INTO `dbscripts_on_quest_end` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `x`, `y`, `z`, `o`, `comments`) VALUES 
('1027', '0', '0', '21', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0','Shaeldryn - Set Active'),
('1027', '0', '1', '29', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0','Shaeldryn - Remove NPC Flags'),
('1027', '0', '2', '0', '0', '0', '0', '0', '0', '0', '1380', '0', '0', '0', '0','Shaeldryn - Say Text'),
('1027', '0', '3', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0','Shaeldryn - Emote Talk'),
('1027', '5000', '0', '1', '11', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0','Shaeldryn - Emote Laugh'),
('1027', '5000', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0','Shaeldryn - Emote Talk'),
('1027', '5000', '2', '0', '0', '0', '0', '0', '0', '0', '1381', '0', '0', '0', '0','Shaeldryn - Say Text'),
('1027', '10000', '0', '1', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0','Shaeldryn - Emote Question'),
('1027', '10000', '1', '0', '0', '0', '0', '0', '0', '0', '1382', '0', '0', '0', '0','Shaeldryn - Say Text'),
('1027', '15000', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0','Shaeldryn - Emote Talk'),
('1027', '15000', '1', '0', '0', '0', '0', '0', '0', '0', '1383', '0', '0', '0', '0','Shaeldryn - Say Text'),
('1027', '15000', '2', '21', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0','Shaeldryn - Remove Active'),
('1027', '15000', '3', '29', '2', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0','Shaeldryn - Add NPC Flags');

UPDATE `quest_template` SET `CompleteScript`='1027' WHERE `entry`='1027';

-- Quest Raen's Cleansing (Part 6) Entry: 1028
-- Gameobject Spawns
DELETE FROM gameobject WHERE `guid` IN (157000, 157001, 157002, 157003, 157004, 157005);
SET @OGUID := 157000; -- gameobjects
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`) VALUES 
(@OGUID, '19538', '1', '2779.4626', '-1552.0814', '265.36655', '5.2010827', '0', '0', '-0.51503754', '0.8571676','-17', '-17'),
(@OGUID+1, '19538', '1', '2780.1143', '-1552.7924', '266.25015', '0.6632232', '0', '0', '0.32556725', '0.94551885','-17', '-17'),
(@OGUID+2, '19539', '1', '2779.817', '-1552.4688', '263.9365', '4.8520174', '0', '0', '-0.6560583', '0.7547102','-12', '-12'),
(@OGUID+3, '19539', '1', '2781.136', '-1553.9073', '267.73993', '4.537859', '0', '0', '-0.76604366', '0.6427886','-12', '-12'),
(@OGUID+4, '19540', '1', '2780.244', '-1552.9341', '264.41736', '4.8345633', '0', '0', '-0.6626196', '0.7489561','-9', '-9'),
(@OGUID+5, '19540', '1', '2782.0308', '-1554.467', '266.99606', '5.375615', '0', '0', '-0.4383707', '0.89879423','-9', '-9');

DELETE FROM dbscripts_on_quest_end WHERE id = '1028';
INSERT INTO `dbscripts_on_quest_end` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `comments`) VALUES 
('1028', '0', '0', '9', @OGUID, '17', 'Raenes Cleansing - Respawn Gameobject'),
('1028', '0', '1', '9', @OGUID+1, '17', 'Raenes Cleansing - Respawn Gameobject'),
('1028', '0', '2', '9', @OGUID+2, '12', 'Raenes Cleansing - Respawn Gameobject'),
('1028', '0', '3', '9', @OGUID+3, '12', 'Raenes Cleansing - Respawn Gameobject'),
('1028', '0', '4', '9', @OGUID+4, '9', 'Raenes Cleansing - Respawn Gameobject'),
('1028', '0', '5', '9', @OGUID+5, '9', 'Raenes Cleansing - Respawn Gameobject');

UPDATE `quest_template` SET `CompleteScript`='1028' WHERE `entry`='1028';