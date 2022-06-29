-- Start script for Quest 'A Humble Task'
DELETE FROM `dbscripts_on_quest_start` WHERE id = '753';
INSERT INTO dbscripts_on_quest_start(id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, datafloat, x, y, z, o, speed, condition_id, comments) VALUES
(753,0,0,0,0,0,0,0,0,0,1528,0,0,0,0,0,0,0,0,0,0,'Greatmother Hawkwind - Say Text'),
(753,40000,0,31,2991,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'A Humble Task - Spam Prevention');

UPDATE `quest_template` SET `StartScript`='753' WHERE `entry`='753';

-- This text should be a TextEmote
UPDATE `broadcast_text` SET `ChatTypeID`='2' WHERE (`Id`='1528');
