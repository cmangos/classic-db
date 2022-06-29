-- Start script for Quest 'Stromgarde Badges'
DELETE FROM `dbscripts_on_quest_end` WHERE id = '682';
INSERT INTO dbscripts_on_quest_end(id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, datafloat, x, y, z, o, speed, condition_id, comments) VALUES
(682,0,0,21,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Captain Nials - Set Active'),
(682,0,1,3,0,0,0,0,0,0,0,0,0,0,0,-1275,-2513.586,21.479235,0,0,0,'Captain Nials - Move'),
(682,2000,0,0,0,0,0,0,0,0,873,0,0,0,0,0,0,0,0,0,0,'Captain Nials - Say Text'),
(682,5000,0,0,0,0,0,0,0,0,874,875,876,877,0,0,0,0,0,0,0,'Captain Nials - RND Say Text'), 
(682,9000,0,0,0,0,0,0,0,0,878,879,880,881,0,0,0,0,0,0,0,'Captain Nials - RND Say Text'), 
(682,12000,0,0,0,0,0,0,0,0,882,0,0,0,0,0,0,0,0,0,0,'Captain Nials - Say Text'),
(682,14000,0,0,0,0,0,0,0,0,883,0,0,0,0,0,0,0,0,0,0,'Captain Nials - Say Text'),
(682,17000,0,3,0,0,0,0,0,0,0,0,0,0,0,-1274.687,-2516.6316,21.571032,0,0,0,'Captain Nials - Move'),
(682,17000,1,0,0,0,0,0,0,0,885,0,0,0,0,0,0,0,0,0,0,'Captain Nials - Say Text'),
(682,17000,0,21,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Captain Nials - Remove Active');

UPDATE `quest_template` SET `CompleteScript`='682' WHERE `entry`='682';

-- These texts are TextEmote
UPDATE `broadcast_text` SET `ChatTypeID`='2' WHERE (`Id`='873');
UPDATE `broadcast_text` SET `ChatTypeID`='2' WHERE (`Id`='882');
