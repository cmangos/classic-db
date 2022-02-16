-- Quest series Necklace recovery (Uldaman)
-- Quest Find the Gems and Power Source
DELETE FROM dbscripts_on_quest_end WHERE id='2339';
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, data_flags, dataint, dataint2, dataint3, dataint4,x, y, z, o, comments) VALUES 
('2339 ', '0', '29', '2', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Find the Gems and Power Source: Jarkal Mossmeld - Toggle NPC Flags'),
('2339 ', '0', '21', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Find the Gems and Power Source: Jarkal Mossmeld - Set ActiveObject'),
('2339 ', '0', '0', '0', '0', '0', '0', '3083', '0', '0', '0', '0', '0', '0', '0', 'Find the Gems and Power Source: Jarkal Mossmeld - Say Text'),
('2339 ', '2000', '15', '9744', '0', '0', '4', '0', '0', '0', '0', '0', '0', '0', '0', 'Find the Gems and Power Source: Jarkal Mossmeld - Cast Spell'),
('2339 ', '10000', '0', '0', '0', '0', '0', '3091', '0', '0', '0', '0', '0', '0', '0', 'Find the Gems and Power Source: Jarkal Mossmeld - Say Text'),
('2339 ', '12000', '29', '2', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Find the Gems and Power Source: Jarkal Mossmeld - Toggle NPC Flags'),
('2339 ', '12000', '21', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Find the Gems and Power Source: Jarkal Mossmeld - Remove ActiveObject');

UPDATE quest_template SET CompleteScript=2339 WHERE entry=2339;

-- Deliver the Gems
DELETE FROM dbscripts_on_quest_end WHERE id='2340';
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, buddy_entry, search_radius, dataint, dataint2, dataint3, dataint4,x, y, z, o, comments) VALUES 
('2340 ', '1000', '31', '6987', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Deliver the Gems:Abort Script if Malton Droffers is Not Spawned'),
('2340 ', '9000', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Deliver the Gems: Dran Droffers - Emote ONESHOT_TALK'),
('2340 ', '9000', '0', '0', '0', '0', '0', '3077', '0', '0', '0', '0', '0', '0', '0', 'Deliver the Gems: Dran Droffers - Say Text'),
('2340 ', '12000', '1', '6', '0', '6987', '10', '0', '0', '0', '0', '0', '0', '0', '0', 'Deliver the Gems: Malton Droffers - Emote ONESHOT_QUESTION'),
('2340 ', '12000', '0', '0', '0', '6987', '10', '3078', '0', '0', '0', '0', '0', '0', '0', 'Deliver the Gems: Malton Droffers - Say Text'),
('2340 ', '15000', '1', '25', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Deliver the Gems: Dran Droffers - Emote ONESHOT_POINT'),
('2340 ', '15000', '0', '0', '0', '0', '0', '3080', '0', '0', '0', '0', '0', '0', '0', 'Deliver the Gems: Dran Droffers - Say Text'),
('2340 ', '18000', '1', '4', '0', '6987', '10', '0', '0', '0', '0', '0', '0', '0', '0', 'Deliver the Gems: Malton Droffers - Emote ONESHOT_CHEER'),
('2340 ', '18000', '0', '0', '0', '6987', '10', '3079', '0', '0', '0', '0', '0', '0', '0', 'Deliver the Gems: Malton Droffers - Say Text'),
('2340 ', '21000', '1', '15', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Deliver the Gems: Dran Droffers - Emote ONESHOT_ROAR'),
('2340 ', '21000', '0', '0', '0', '0', '0', '3081', '0', '0', '0', '0', '0', '0', '0', 'Deliver the Gems: Dran Droffers - Say Text');

UPDATE quest_template SET CompleteScript=2340 WHERE entry=2340;

-- This should be Yelled
UPDATE broadcast_text SET ChatTypeID='1' WHERE (Id='3081');
