-- Completion script for quest Parts for Kravel.
DELETE FROM dbscripts_on_quest_end WHERE id='1112';
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, dataint, o, comments) VALUES 
('1112', '0', '29', '2', '0', '0', '0', 'Parts for Kravel: Kravel Koalbeard - Remove NPC Flags QUEST_GIVER'),
('1112', '0', '0', '0', '0', '1479', '0', 'Parts for Kravel: Kravel Koalbeard - Say Emoted Text'),
('1112', '1000', '9', '93887', '10', '0', '0', 'Parts for Kravel: Parts Crate - Respawn GameObject'),
('1112', '4000', '3', '0', '0', '0', '0.903906', 'Parts for Kravel: Parts Crate - Set Orientation'),
('1112', '5000', '28', '8', '0', '0', '0', 'Parts for Kravel: Parts Crate - Set Stand State to Kneel'),
('1112', '5000', '0', '0', '0', '1477', '0', 'Parts for Kravel: Parts Crate - Say Emoted Text'),
('1112', '9000', '28', '0', '0', '0', '0', 'Parts for Kravel: Parts Crate - Set Stand State to Stand'),
('1112', '10000', '0', '0', '0', '1478', '0', 'Parts for Kravel: Parts Crate - Say Text'),
('1112', '15000', '29', '2', '1', '0', '0', 'Parts for Kravel: Parts Crate - Add NPC Flags QUEST_GIVER');

-- Update position of gameobject Parts Crate.
UPDATE gameobject SET position_x=-6232.26, position_y=-3854.72, position_z=-58.7501, orientation=4.08407, rotation2=-0.891006, rotation3=0.453991 WHERE id=19878;

-- Completion script for quest Dream Dust in the Swamp.
DELETE FROM dbscripts_on_quest_end WHERE id='1116';
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, data_flags, dataint, o, comments) VALUES 
('1116', '0', '29', '2', '0', '0','0', '0', 'Dream Dust in the Swamp: Krazek - Remove NPC Flags QUEST_GIVER'),
('1116', '0', '0', '0', '0', '0','1548', '0', 'Dream Dust in the Swamp: Krazek - Say Emoted Text'),
('1116', '4000', '0', '0', '0', '0','1549', '0', 'Dream Dust in the Swamp: Krazek - Say Emoted Text'),
('1116', '4000', '15', '6903', '0','4', '0', '0', 'Dream Dust in the Swamp: Krazek - Cast Spell Krazek''s Drug'),
('1116', '7000', '0', '0', '0', '0','1550', '0', 'Dream Dust in the Swamp: Krazek - Say Text'),
('1116', '7000', '1', '34', '0', '0','0', '0', 'Dream Dust in the Swamp: Krazek - Emote OneShotWoundCritical'),
('1116', '10000', '0', '0', '0', '0','1550', '0', 'Dream Dust in the Swamp: Krazek - Say Emoted Text'),
('1116', '10000', '1', '34', '0', '0','0', '0', 'Dream Dust in the Swamp: Krazek - Emote OneShotWoundCritical'),
('1116', '12000', '0', '0', '0', '0','1551', '0', 'Dream Dust in the Swamp: Krazek - Say Text'),
('1116', '12000', '29', '2', '1', '0','0', '0', 'Dream Dust in the Swamp: Krazek - Add NPC Flags QUEST_GIVER');

-- Completion script for quest Rumors for Kravel.
DELETE FROM dbscripts_on_quest_end WHERE id='1117';
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, data_flags, dataint, o, comments) VALUES 
('1117', '0', '29', '2', '0', '0','0', '0', 'Rumors for Kravel: Kravel Koalbeard - Remove NPC Flags QUEST_GIVER'),
('1117', '0', '0', '0', '0', '0','1480', '0', 'Rumors for Kravel: Kravel Koalbeard - Say Emoted Text'),
('1117', '0', '1', '94', '0', '0','0', '0', 'Rumors for Kravel: Kravel Koalbeard - Emote OneShotDance'),
('1117', '6000', '1', '0', '0', '0','0', '0', 'Rumors for Kravel: Kravel Koalbeard - Stop Emoting'),
('1117', '8000', '1', '11', '0', '0','0', '0', 'Rumors for Kravel: Kravel Koalbeard - Emote OneShotLaugh'),
('1117', '8000', '0', '0', '0', '0','1481', '0', 'Rumors for Kravel: Kravel Koalbeard - Say Text'),
('1117', '11000', '29', '2', '1', '0','0', '0', 'Rumors for Kravel: Kravel Koalbeard - Add NPC Flags QUEST_GIVER');

-- Back to booty Bay
DELETE FROM dbscripts_on_quest_end WHERE id='1118';
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, dataint, o, comments) VALUES 
('1118', '0', '29', '2', '0', '0', '0', 'Back to Booty Bay - Crank Fizzlebub - Remove NPC Flags QUEST_GIVER'),
('1118', '0', '3', '0', '0', '0', '1.8325', 'Back to Booty Bay - Crank Fizzlebub - Set Orientation'),
('1118', '0', '0', '0', '0', '1467', '0', 'Back to Booty Bay - Crank Fizzlebub - Say Text'),
('1118', '2000', '3', '0', '0', '0', '3.17649', 'Back to Booty Bay - Crank Fizzlebub - Set Orientation'),
('1118', '6000', '3', '0', '0', '0', '2.82158', 'Back to Booty Bay - Crank Fizzlebub - Set Orientation'),
('1118', '6000', '0', '0', '0', '1468', '0', 'Back to Booty Bay - Crank Fizzlebub - SayText'),
('1118', '6000', '29', '2', '1', '0', '0', 'Back to Booty Bay - Crank Fizzlebub - Add NPC Flags QUEST_GIVER'),
('1118', '9000', '3', '0', '0', '0', '2.30383', 'Back to Booty Bay - Crank Fizzlebub - Set Orientation');

UPDATE quest_template SET CompleteScript='1118' WHERE (entry='1118');

-- This Text is an emote
UPDATE broadcast_text SET ChatTypeID='2' WHERE (Id='1467');

-- Completion script for quest Zanzil's Secret.
DELETE FROM dbscripts_on_quest_end WHERE id='621';
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, dataint, o, comments) VALUES 
('621', '0', '29', '2', '0', '0', '0', 'Zanzil''s Secret: Crank Fizzlebub - Remove NPC Flags QUEST_GIVER'),
('621', '0', '0', '0', '0', '1469', '0', 'Zanzil''s Secret: Crank Fizzlebub - Say Text'),
('621', '3000', '0', '0', '0', '1470', '0', 'Zanzil''s Secret: Crank Fizzlebub - Say Text'),
('621', '5000', '29', '2', '1', '0', '0', 'Zanzil''s Secret: Crank Fizzlebub - Add NPC Flags QUEST_GIVER');
