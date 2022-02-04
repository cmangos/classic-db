-- Quest Stones of Binding Id: 651
-- Visuals after getting the keys.
DELETE FROM dbscripts_on_event WHERE id IN (383, 384, 385);
INSERT INTO dbscripts_on_event (id, command, datalong, datalong2, comments) VALUES 
('383', '9', '15221', '62', 'Quest - Stone of West Binding - Yellow Aura spawn'),
('384', '9', '15214', '62', 'Quest - Stone of East Binding - Yellow Aura spawn'),
('385', '9', '15219', '62', 'Quest - Stone of Outer Binding - Yellow Aura spawn');

DELETE FROM dbscripts_on_quest_end WHERE id=651;
INSERT INTO dbscripts_on_quest_end (id, command, datalong, datalong2, comments) VALUES 
('651', '9', '15223', '62', 'Quest - Stone of East Binding - Yellow Aura spawn');
UPDATE quest_template SET CompleteScript=651 WHERE entry=651;
-- Object Spawns
INSERT INTO gameobject (guid, id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax) VALUES 
('15214', '2870', '-846.38556', '-3268.444', '78.038246', '2.8099754', '-620', '-62'),
('15219', '2870', '-1351.0742','-2740.2263', '59.40781', '4.520403', '-62', '-62'),
('15221', '2870', '-855.4827', '-1783.2532', '39.629177', '4.3109655', '-62', '-62'),
('15223', '2870', '-1510.17', '-2171.2039', '17.2624', '4.34587', '-62', '-62');

-- Quest Breaking the Keystone
DELETE FROM dbscripts_on_quest_end WHERE id=652;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, buddy_entry, search_radius, dataint, x, y, z, o, comments) VALUES 
('652', '1000', '10', '2763', '180000', '0', '0', '0', '-1540.4628', '-2176.2805', '17.270147', '4.4156', 'Breaking the Keystone - Spawn Thenan'),
('652', '4000', '0', '0', '0', '0', '0', '841', '0', '0', '0', '0', 'Breaking the Keystone - Thenan - Say Text'),
('652', '6000', '26', '0', '0', '2763', '50', '0', '0', '0', '0', '0', 'Breaking the Keystone - Thenan - Attack Start');

UPDATE quest_template SET CompleteScript=652 WHERE entry=652;

-- The Lost Fragments
DELETE FROM dbscripts_on_quest_start WHERE id=692;
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, buddy_entry, search_radius, dataint, x, y, z, o, comments) VALUES 
('692', '0', '3', '0', '0', '0', '0', '0', '0', '0', '0', '4.2935', 'The Lost Fragments - Theldurin - Set Orientation'),
('692', '0', '1', '25', '0', '0', '0', '0', '0', '0', '0', '0', 'The Lost Fragments - Theldurin - Emote OneShotPoint'),
('692', '0', '0', '0', '0', '0', '0', '3004', '0', '0', '0', '0', 'The Lost Fragments - Theldurin - Say Text'),
('692', '4000', '3', '0', '0', '0', '0', '0', '0', '0', '0', '1.04719', 'The Lost Fragments - Theldurin - Set Orientation');

DELETE FROM dbscripts_on_quest_end WHERE id=692;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, buddy_entry, search_radius, dataint, x, y, z, o, comments) VALUES 
('692', '0', '0', '0', '0', '0', '0', '870', '0', '0', '0', '0', 'The Lost Fragments - Theldurin - Emote Text'),
('692', '4000', '3', '0', '0', '0', '0', '0', '0', '0', '0', '4.18879', 'The Lost Fragments - Theldurin - Set Orientation'),
('692', '4000', '28', '8', '0', '0', '0', '0', '0', '0', '0', '0', 'The Lost Fragments - Theldurin - StandState Kneel'),
('692', '6000', '28', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'The Lost Fragments - Theldurin - StandState Stand'),
('692', '7000', '0', '0', '0', '0', '0', '871', '0', '0', '0', '0', 'The Lost Fragments - Theldurin - Say Text'),
('692', '10000', '3', '0', '0', '0', '0', '0', '0', '0', '0', '6.1686558', 'The Lost Fragments - Theldurin - Set Orientation'),
('692', '10000', '42', '0', '0', '0', '0', '1911', '0', '0', '0', '0', 'The Lost Fragments - Theldurin - Weapon'),
('692', '13000', '1', '4', '0', '0', '0', '0', '0', '0', '0', '0', 'The Lost Fragments - Theldurin - Emote OneShotCheer'),
('692', '13000', '0', '0', '0', '0', '0', '872', '0', '0', '0', '0', 'The Lost Fragments - Theldurin - Say Text'),
('692', '16000', '42', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'The Lost Fragments - Theldurin - Default Weapon');

UPDATE quest_template SET StartScript=692, CompleteScript=692 WHERE entry=692;
UPDATE quest_template SET DetailsEmote1='0', DetailsEmote2='0', DetailsEmote3='0', DetailsEmote4='0' WHERE (entry='692');
UPDATE broadcast_text SET ChatTypeID='2' WHERE (Id='870');

-- Summoning the Princess
UPDATE quest_template SET DetailsEmote1='0', DetailsEmote2='0', DetailsEmote3='0', DetailsEmote4='0' WHERE (entry='656');

DELETE FROM dbscripts_on_event WHERE id=420;
INSERT INTO dbscripts_on_event (id, priority, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, x, y, z, o, comments) VALUES 
('420', '0', '0', '10', '2755', '3000000', '0', '0', '0','0', '-943.4269', '-3119.6946', '49.04779', '4.46804', 'Summoning the Princess - Summon Myzrael'),
('420', '1', '0', '4', '46', '128', '2755', '50', '3', '0','0', '0', '0', '0', 'Summoning the Princess - Myzrael - Not Attackable'),
('420', '0', '3000', '36', '0', '0', '2755', '50', '3', '0', '0', '0', '0', '0', 'Summoning the Princess - Myzrael - Set Facing'),
('420', '0', '3000', '0', '0', '0', '2755', '50', '3', '842', '0', '0', '0', '0', 'Summoning the Princess - Myzrael - Say Text'),
('420', '0', '6000', '0', '0', '0', '2755', '50', '3', '843', '0', '0', '0', '0', 'Summoning the Princess - Myzrael - Say Text'),
('420', '0', '11000', '5', '46', '128', '2755', '50', '3', '0', '0', '0', '0', '0', 'Summoning the Princess - Myzrael - Attackable'),
('420', '0', '11000', '26', '0', '0', '2755', '50', '3', '0', '0', '0', '0', '0', 'Summoning the Princess - Myzrael - Attack Player'),
('420', '0', '11000', '0', '0', '0', '2755', '50', '3', '844', '0', '0', '0', '0', 'Summoning the Princess - Myzrael - Say Text');
