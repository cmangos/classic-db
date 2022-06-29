-- Endscript for Quest 'Bloodscalp Clan Heads'
DELETE FROM `dbscripts_on_quest_end` WHERE id = '584';
INSERT INTO dbscripts_on_quest_end(id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, datafloat, x, y, z, o, speed, condition_id, comments) VALUES
(584,0,1,21,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Bubbling Cauldron - Set Active'),
(584,0,2,0,0,0,0,2519,10,0,735,0,0,0,0,0,0,0,0,0,0,'Kinweelay - Say Text'),
(584,5000,0,3,0,0,0,2519,10,0,0,0,0,0,0,0,0,0,1.65806,0,0,'Kinweelay - Change Orientation'),
(584,5000,1,15,3644,0,0,2519,10,7,0,0,0,0,0,0,0,0,0,0,0,'Kinweelay - Cast Spell'),
(584,5000,2,0,0,0,0,2519,10,0,736,0,0,0,0,0,0,0,0,0,0,'Kinweelay - Say Text'),
(584,12000,0,36,0,0,0,2519,10,0,0,0,0,0,0,0,0,0,0,0,0,'Kinweelay - Face Player'),
(584,12000,1,0,0,0,0,2519,10,0,740,0,0,0,0,0,0,0,0,0,0,'Kinweelay - Say Text'),
(584,12000,2,21,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Bubbling Cauldron - Remove Active');

UPDATE `quest_template` SET `CompleteScript`='584' WHERE `entry`='584';

-- These texts are TextEmote
UPDATE `broadcast_text` SET `ChatTypeID`='2' WHERE (`Id`='736');


