-- Let Summoned Voidwalker get attackable 2 seconds after spawning
DELETE FROM dbscripts_on_event WHERE id='1787';
INSERT INTO dbscripts_on_event (id, delay, priority,command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint4,x, y, z, o, comments) VALUES 
('1787', '0', '0', '10', '5676', '180000', '0', '0', '0', '0', '0', '5676', '1806.13', '-4372.67', '-17.4888', '4.41785', 'The Binding: Summon Creature Summoned Voidwalker');


DELETE FROM dbscripts_on_relay WHERE id='5676';
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint4,x, y, z, o, comments) VALUES 
('5676 ', '2000', '22', '14', '0', '0', '0', '0', '0', '0','0', '0', '0', '0', '0', 'The Binding: Summoned Voidwalker - Set Faction');

DELETE FROM creature_spawn_data_template WHERE entry='5676';
INSERT INTO creature_spawn_data_template (Entry, RelayId) VALUES 
('5676', '5676');

UPDATE creature_template SET faction=35, MovementType=0 WHERE entry=5676;
