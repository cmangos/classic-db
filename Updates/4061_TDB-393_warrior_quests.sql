-- End script for Quest 'Burning Blood' id 1705
DELETE FROM `dbscripts_on_quest_end` WHERE id = '1705';
INSERT INTO dbscripts_on_quest_end(id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, datafloat, x, y, z, o, speed, condition_id, comments) VALUES
(1705,0,0,21,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Grimand Elmore - Set Active Object'),
(1705,0,1,29,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Grimand Elmore - Remove Quest Flags'),
(1705,0,2,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3.8048,0,0,'Grimand Elmore - Set Facing'),
(1705,0,3,0,0,0,0,0,0,0,2346,0,0,0,0,0,0,0,0,0,0,'Grimand Elmore - Say Text'),
(1705,0,4,1,173,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Grimand Elmore - Emote State Work'),
(1705,6000,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Grimand Elmore - Emotestate None'),
(1705,7000,1,36,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Grimand Elmore - Face Player'),
(1705,7000,2,1,6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Grimand Elmore - Emote Question'),
(1705,7000,3,0,0,0,0,0,0,0,2347,0,0,0,0,0,0,0,0,0,0,'Grimand Elmore - Say Text'),
(1705,7000,4,21,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Grimand Elmore - Remove Active Object'),
(1705,7000,5,29,2,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Grimand Elmore - Add Quest Flags');

UPDATE `quest_template` SET `CompleteScript`='1705' WHERE `entry`='1705';

-- This text should be a TextEmote
UPDATE `broadcast_text` SET `ChatTypeID`='2' WHERE (`Id`='2346');

-- End script for Quest 'Iron Coral' id 1708
DELETE FROM `dbscripts_on_quest_end` WHERE id = '1708';
INSERT INTO dbscripts_on_quest_end(id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, datafloat, x, y, z, o, speed, condition_id, comments) VALUES
(1708,0,0,21,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Klockmort Spannerspan - Set Active Object'),
(1708,0,1,29,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Klockmort Spannerspan - Remove Quest Flags'),
(1708,0,2,3,0,0,0,0,0,0,0,0,0,0,0,-4814.891,-1250.5156,501.92575,0,0,0,'Klockmort Spannerspan - Move'),
(1708,1000,0,1,173,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Klockmort Spannerspan - Emote State'),
(1708,1000,1,0,0,0,0,0,0,0,2344,0,0,0,0,0,0,0,0,0,0,'Klockmort Spannerspan - Say Text'),
(1708,7000,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Klockmort Spannerspan - Emote State'),
(1708,8000,0,36,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Klockmort Spannerspan - Face Player'),
(1708,8000,1,1,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Klockmort Spannerspan - Emote Cheer'),
(1708,8000,2,0,0,0,0,0,0,0,2345,0,0,0,0,0,0,0,0,0,0,'Klockmort Spannerspan - Say Text'),
(1708,11000,0,3,0,0,0,0,0,0,0,0,0,0,0,-4812.478,-1250.6177,501.94717,4.62512,0,0,'Klockmort Spannerspan - Move'),
(1708,14000,0,21,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Klockmort Spannerspan - Remove Active Object'),
(1708,14000,1,29,2,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Klockmort Spannerspan - Add Quest Flags');

UPDATE `broadcast_text` SET `ChatTypeID`='2' WHERE (`Id`='2344');

UPDATE `quest_template` SET `CompleteScript`='1708' WHERE `entry`='1708';

-- End script for Quest 'Sunscorched Shells' id 1710
DELETE FROM `dbscripts_on_quest_end` WHERE id = '1710';
INSERT INTO dbscripts_on_quest_end(id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, datafloat, x, y, z, o, speed, condition_id, comments) VALUES
(1710,0,0,21,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Mathiel - Set Active Object'),
(1710,0,1,29,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Mathiel - Remove Quest Flags'),
(1710,0,2,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3.45575,0,0,'Mathiel - Set Facing'),
(1710,0,3,0,0,0,0,0,0,0,2348,0,0,0,0,0,0,0,0,0,0,'Mathiel - Say Text'),
(1710,0,4,1,173,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Mathiel - Emote State Work'),
(1710,6000,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Mathiel - Emotestate None'),
(1710,7000,1,36,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Mathiel - Face Player'),
(1710,7000,2,1,6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Mathiel - Emote Question'),
(1710,7000,3,0,0,0,0,0,0,0,2349,0,0,0,0,0,0,0,0,0,0,'Mathiel - Say Text'),
(1710,7000,4,21,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Mathiel - Remove Active Object'),
(1710,7000,5,29,2,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Mathiel - Add Quest Flags');

UPDATE `quest_template` SET `CompleteScript`='1710' WHERE `entry`='1710';

-- This text should be a TextEmote
UPDATE `broadcast_text` SET `ChatTypeID`='2' WHERE (`Id`='2348');
