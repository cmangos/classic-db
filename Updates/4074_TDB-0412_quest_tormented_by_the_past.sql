-- End script for Quest 'Tormented By the Past'
DELETE FROM `dbscripts_on_quest_end` WHERE id = '5248';
INSERT INTO dbscripts_on_quest_end(id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, datafloat, x, y, z, o, speed, condition_id, comments) VALUES
(5248,0,0,35,5,500,0,7523,500,512,0,0,0,0,0,0,0,0,0,0,0,'Tormented By the Past - Send CustomAIEvent - Suffering Highborne'),
(5248,0,0,35,5,500,0,7524,500,512,0,0,0,0,0,0,0,0,0,0,0,'Tormented By the Past - Send CustomAIEvent - Anguished Highborne');

UPDATE `quest_template` SET `CompleteScript`='5248' WHERE `entry`='5248';

DELETE FROM `dbscripts_on_relay` WHERE id = '7523';
INSERT INTO dbscripts_on_relay(id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, datafloat, x, y, z, o, speed, condition_id, comments) VALUES
(7523,0,0,21,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Suffering Highborne - Set Active'),
(7523,5000,1,22,124,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Suffering Highborne - Set Faction'),
(7523,120000,0,22,21,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Suffering Highborne - Set Faction'),
(7523,120000,1,21,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Suffering Highborne - Remove Active');

-- Start script for Quest 'Remorseful Highborne'
DELETE FROM `dbscripts_on_quest_start` WHERE id = '5252';
INSERT INTO dbscripts_on_quest_start(id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, datafloat, x, y, z, o, speed, condition_id, comments) VALUES
(5252,0,0,0,0,0,0,0,0,0,6505,6506,6507,0,0,0,0,0,0,0,0,'Remorseful Highborne - Say RND Text'),
(5252,20000,0,31,10684,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Remorseful Highborne - Spam Prevention');

UPDATE `quest_template` SET `StartScript`='5252' WHERE `entry`='5252';

-- Should get yelled
UPDATE `broadcast_text` SET `ChatTypeID`='1' WHERE Id IN(6505, 6506, 6507);

