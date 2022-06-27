-- Add quest end script for quest "Felbound Ancients"
DELETE FROM dbscripts_on_quest_end WHERE id = '4441';
INSERT INTO dbscripts_on_quest_end(id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, datafloat, x, y, z, o, speed, condition_id, comments) VALUES
(4441,0,0,21,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Eridan Bluewind - Set ActiveObject'),
(4441,0,1,29,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Eridan Bluewind - Remove QuestGiver Flag'),
(4441,0,2,0,0,0,0,0,0,0,8366,0,0,0,0,0,0,0,0,0,0,'Eridan Bluewind - Say Text'),
(4441,4000,0,15,18953,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,'Eridan Bluewind - Cast Spell'),
(4441,9000,0,47,3,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,'Eridan Bluewind - Stop Casting'),
(4441,12000,0,0,0,0,0,0,0,0,8367,0,0,0,0,0,0,0,0,0,0,'Eridan Bluewind - Say Text'),
(4441,15000,0,21,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Eridan Bluewind - Remove ActiveObject'),
(4441,15000,1,29,2,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Eridan Bluewind - Add QuestGiver Flag');

UPDATE `quest_template` SET `CompleteScript`='4441' WHERE `entry`='4441';

