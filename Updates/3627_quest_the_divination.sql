-- Move GUID of existing spawn for GUID 10079
UPDATE pool_gameobject SET guid=6 WHERE guid=10079;
UPDATE gameobject SET guid=6 WHERE guid=10079;

DELETE FROM dbscripts_on_quest_start WHERE id='2992';
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, datalong3, data_flags, dataint, x, y, z, o, comments) VALUES 
('2992', '0', '21', '1', '0', '0', '0', '4', '0', '0', '0', '0', 'The Divination: Thadius Grimshade - Set ActiveObject'),
('2992', '0', '29', '3', '0', '0', '0', '0', '0', '0', '0', '0', 'The Divination: Thadius Grimshade - Remove NPC Flags QUEST_GIVER and GOSSIP'),
('2992', '0', '0', '0', '0', '0', '0', '4126', '0', '0', '0', '0', 'The Divination: Thadius Grimshade - Say Text'),
('2992', '2000', '15', '5017', '0', '0', '4', '0', '0', '0', '0', '0', 'The Divination: Thadius Grimshade - Cast Spell Divining Trance'),
('2992', '8000', '0', '0', '0', '0', '0', '4128', '0', '0', '0', '0', 'The Divination: Thadius Grimshade - Say Text'),
('2992', '9000', '9', '10079', '120', '0', '0', '0', '0', '0', '0', '0', 'The Divination: Grimshade\'s Vision - Respawn GameObject'),
('2992', '9000', '29', '3', '1', '0', '0', '0', '0', '0', '0', '0', 'The Divination: Thadius Grimshade - Add NPC Flags QUEST_GIVER and GOSSIP'),
('2992', '10000', '7', '2992', '100', '0', '0', '0', '0', '0', '0', '0', 'The Divination: Player - Complete Quest'),
('2992', '10000', '21', '0', '0', '0', '0', '4', '0', '0', '0', '0', 'The Divination: Thadius Grimshade - Remove ActiveObject');

UPDATE quest_template SET StartScript=2992 WHERE entry=2992;

-- Add Grimshade's Vision gameobject.
DELETE FROM gameobject WHERE guid='10079';
INSERT INTO gameobject (guid, id, map, spawnMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state) VALUES 
('10079', '144069', '0', '1', '-10999.1', '-3484.59', '104.045', '1.18682', '0', '0', '0.559193', '0.829038', '-120', '-120', '100', '0');

UPDATE quest_template SET SpecialFlags='2' WHERE (entry='2992');
