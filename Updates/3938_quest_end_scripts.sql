-- Add Quest End Scripts for Fallen Sky Lake series
-- Based on TBC PTR 

-- Bathran's Hair entry: 1010
DELETE FROM dbscripts_on_quest_end WHERE id='1010';
INSERT INTO dbscripts_on_quest_end (id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, x, y, z, comments) VALUES 
('1010', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1307', '0', '0', '0', 'Bathrans Hair - Orendil Broadleaf - Say Text'),
('1010', '4000', '0', '0', '0', '0', '0', '0', '0', '0', '1308', '0', '0', '0', 'Bathrans Hair - Orendil Broadleaf - Say Text');

UPDATE quest_template SET CompleteScript='1010', OfferRewardEmote2='0' WHERE entry=1010;

-- Orendil's Cure Entry: 1020
DELETE FROM dbscripts_on_quest_end WHERE id='1020';
INSERT INTO dbscripts_on_quest_end (id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, x, y, z, o, comments) VALUES 
('1020', '0', '0', '21', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0','Orendils Cure - Pelturas Whitemoon - Set Active'),
('1020', '0', '1', '29', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0','Orendils Cure - Pelturas Whitemoon - Remove NPC Flags'),
('1020', '0', '2', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.671241','Orendils Cure - Pelturas Whitemoon - Turn to Relera Whitemoon'), 
('1020', '100', '0', '1', '16', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0','Orendils Cure - Pelturas Whitemoon - Emote Kneel'),
('1020', '100', '1', '0', '0', '0', '0', '0', '0', '0', '1335', '0', '0', '0', '0','Orendils Cure - Pelturas Whitemoon - Say Text'),
('1020', '4000', '0', '0', '0', '0', '0', '3892', '5', '0', '1336', '0', '0', '0','0', 'Orendils Cure - Relera Whitemoon - Say Text'),
('1020', '6000', '0', '36', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0','Orendils Cure - Pelturas Whitemoon - Reset facing'),
('1020', '11000', '0', '0', '0', '0', '0', '3892', '5', '0', '1337', '0', '0', '0','0', 'Orendils Cure - Relera Whitemoon - Say Text'),
('1020', '15000', '0', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.671241','Orendils Cure - Pelturas Whitemoon - Turn to Relera Whitemoon'), 
('1020', '16000', '0', '0', '0', '0', '0', '0', '0', '0', '1338', '0', '0', '0', '0','Orendils Cure - Pelturas Whitemoon - Say Text'),
('1020', '19000', '0', '0', '0', '0', '0', '0', '0', '0', '1339', '0', '0', '0', '0','Orendils Cure - Pelturas Whitemoon - Say Text'),
('1020', '21000', '0', '36', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0','Orendils Cure - Pelturas Whitemoon - Turn to Player'),
('1020', '21000', '1', '1', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0','Orendils Cure - Pelturas Whitemoon - Emote Bow'),
('1020', '23000', '0', '36', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0','Orendils Cure - Pelturas Whitemoon - Reset facing'),
('1020', '25000', '0', '21', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0','Orendils Cure - Pelturas Whitemoon - Remove Active'),
('1020', '25000', '1', '29', '2', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0','Orendils Cure - Pelturas Whitemoon - Add NPC Flags');

UPDATE quest_template SET CompleteScript='1020', OfferRewardEmote2='0'WHERE entry=1020;

-- Elunes Tear Entry: 1033
DELETE FROM dbscripts_on_quest_end WHERE id='1033';
INSERT INTO dbscripts_on_quest_end (id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, x, y, z, o, comments) VALUES 
('1033', '0', '0', '21', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0','Elunes Tear - Pelturas Whitemoon - Set Active'),
('1033', '0', '1', '29', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0','Elunes Tear - Pelturas Whitemoon - Remove NPC Flags'),
('1033', '0', '2', '0', '0', '0', '0', '0', '0', '0', '1438', '0', '0', '0', '0','Elunes Tear - Pelturas Whitemoon - Say Text'),
('1033', '4000', '0', '3', '0', '0', '0', '0', '0', '0', '0', '2682.64', '-456.486', '109.3018', '0','Elunes Tear - Pelturas Whitemoon - Move'),
('1033', '5000', '0', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.63741','Elunes Tear - Pelturas Whitemoon - Move'),
('1033', '6000', '0', '1', '16', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0','Elunes Tear - Pelturas Whitemoon - Emote Kneel'),
('1033', '6000', '1', '0', '0', '0', '0', '0', '0', '0', '1439', '0', '0', '0', '0','Elunes Tear - Pelturas Whitemoon - Say text'),
('1033', '10000', '1', '0', '0', '0', '0', '0', '0', '0', '1440', '0', '0', '0', '0','Elunes Tear - Pelturas Whitemoon - Say text'),
('1033', '13000', '0', '3', '0', '0', '0', '0', '0', '0', '0', '2682.136', '-454.80768', '109.3018', '0','Elunes Tear - Pelturas Whitemoon - Move'),
('1033', '16000', '0', '29', '2', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0','Elunes Tear - Pelturas Whitemoon - Add NPC Flags'),
('1033', '16000', '1', '0', '0', '0', '0', '3892', '5', '0', '1441', '0', '0', '0', '0','Elunes Tear - Relera Whitemoon - Say Text'),
('1033', '19000', '0', '0', '0', '0', '0', '3892', '5', '0', '1442', '0', '0', '0', '0','Elunes Tear - Relera Whitemoon - Say Text'),
('1033', '19000', '0', '21', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0','Elunes Tear - Pelturas Whitemoon - Remove Active');

UPDATE quest_template SET CompleteScript=1033, OfferRewardEmote2='0' WHERE entry=1033;

-- The Ruins of Stardust Entry: 1034
DELETE FROM dbscripts_on_quest_end WHERE id='1034';
INSERT INTO dbscripts_on_quest_end (id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, x, y, z, o, comments) VALUES 
('1034', '0', '0', '21', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0','Ruins of Stardust - Pelturas Whitemoon - Set Active'),
('1034', '0', '1', '29', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0','Ruins of Stardust - Pelturas Whitemoon - Remove NPC Flags'),
('1034', '5000', '0', '3', '0', '0', '0', '0', '0', '0', '0', '2682.45', '-456.275', '109.3018', '0','Ruins of Stardust - Pelturas Whitemoon - Move'),
('1034', '6000', '0', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '6.05629','Ruins of Stardust - Pelturas Whitemoon - Move'),
('1034', '6100', '1', '1', '16', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0','Ruins of Stardust - Pelturas Whitemoon - Emote Kneel'),
('1034', '6100', '0', '0', '0', '0', '0', '0', '0', '0', '1443', '0', '0', '0', '0','Ruins of Stardust - Pelturas Whitemoon - Say text'),
('1034', '11000', '0', '3', '0', '0', '0', '0', '0', '0', '0', '2682.136', '-454.80768', '109.3018', '0','Ruins of Stardust - Pelturas Whitemoon - Move'),
('1034', '12000', '0', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.88495','Ruins of Stardust - Pelturas Whitemoon - Move'),
('1034', '14000', '0', '29', '2', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0','Ruins of Stardust - Pelturas Whitemoon - Add NPC Flags'),
('1034', '14000', '0', '0', '0', '0', '0', '0', '0', '0', '1444', '0', '0', '0', '0','Ruins of Stardust - Pelturas Whitemoon - Say Text'),
('1034', '14000', '0', '21', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0','Ruins of Stardust - Pelturas Whitemoon - Remove Active');

UPDATE quest_template SET CompleteScript=1034, OfferRewardEmote2='0' WHERE entry=1034;

-- Fallen Sky Lake Entry: 1035
DELETE FROM dbscripts_on_quest_end WHERE id='1035';
INSERT INTO dbscripts_on_quest_end (id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, x, y, z, o, comments) VALUES 
('1035', '0', '0', '21', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0','Fallen Sky Lake - Pelturas Whitemoon - Set Active'),
('1035', '0', '1', '29', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0','Fallen Sky Lake - Pelturas Whitemoon - Remove NPC Flags'),
('1035', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1346', '0', '0', '0', '0','Fallen Sky Lake - Pelturas Whitemoon - Say text'),
('1035', '4000', '0', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.67231','Fallen Sky Lake - Pelturas Whitemoon - Move'),
('1035', '4100', '0', '1', '16', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0','Fallen Sky Lake - Pelturas Whitemoon - Emote Kneel'),
('1035', '4100', '1', '0', '0', '0', '0', '0', '0', '0', '1347', '0', '0', '0', '0','Fallen Sky Lake - Pelturas Whitemoon - Say text'),
('1035', '7000', '0', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.88495','Fallen Sky Lake - Pelturas Whitemoon - Move'),
('1035', '12000', '0', '0', '0', '0', '0', '3892', '5', '0', '1349', '0', '0', '0', '0','Fallen Sky Lake - Relera Whitemoon - Say text'),
('1035', '16000', '0', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.6712','Fallen Sky Lake - Pelturas Whitemoon - Move'),
('1035', '16000', '1', '0', '0', '0', '0', '0', '0', '0', '1350', '0', '0', '0', '0','Fallen Sky Lake - Pelturas Whitemoon - Say text'),
('1035', '19000', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0','Fallen Sky Lake - Pelturas Whitemoon - Emote Talk'),
('1035', '19000', '1', '0', '0', '0', '0', '0', '0', '0', '1351', '0', '0', '0', '0','Fallen Sky Lake - Pelturas Whitemoon - Say text'),
('1035', '22000', '0', '0', '0', '0', '0', '0', '0', '0', '1352', '0', '0', '0', '0','Fallen Sky Lake - Pelturas Whitemoon - Say text'),
('1035', '25000', '0', '36', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0','Fallen Sky Lake - Pelturas Whitemoon - Turn to Player'),
('1035', '25000', '1', '1', '18', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0','Fallen Sky Lake - Pelturas Whitemoon - Emote OneShotCry'),
('1035', '25000', '2', '0', '0', '0', '0', '0', '0', '0', '1353', '0', '0', '0', '0','Fallen Sky Lake - Pelturas Whitemoon - Say text'),
('1035', '29000', '0', '1', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0','Fallen Sky Lake - Pelturas Whitemoon - Emote Bow'),
('1035', '31000', '0', '36', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0','Orendils Cure - Pelturas Whitemoon - Reset facing'),
('1035', '31000', '1', '21', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0','Fallen Sky Lake - Pelturas Whitemoon - Set Active'),
('1035', '31000', '2', '29', '2', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0','Fallen Sky Lake - Pelturas Whitemoon - Remove NPC Flags');

UPDATE quest_template SET CompleteScript=1035, OfferRewardEmote2='0' WHERE entry=1035;

-- This text should be an emote
UPDATE broadcast_text SET ChatTypeID='2' WHERE (Id='1336');
UPDATE broadcast_text SET ChatTypeID='2' WHERE (Id='1441');
UPDATE broadcast_text SET ChatTypeID='2' WHERE (Id='1438');
UPDATE broadcast_text SET ChatTypeID='2' WHERE (Id='1443');
UPDATE broadcast_text SET ChatTypeID='2' WHERE (Id='1444');
UPDATE broadcast_text SET ChatTypeID='2' WHERE (Id='1346'); 
UPDATE broadcast_text SET ChatTypeID='2' WHERE (Id='1352');
