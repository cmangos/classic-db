-- -- Quest 'A Completed Robe' id - 4786  
DELETE FROM dbscripts_on_quest_start WHERE id = '4786';
INSERT INTO dbscripts_on_quest_start(id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, datafloat, x, y, z, o, speed, condition_id, comments) VALUES
(4786,0,1,21,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Menara Voidrender - Set Active'),
(4786,0,2,29,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Menara Voidrender - Remove QuestFlags'),
(4786,0,3,15,16633,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Menara Voidrender - Cast Spell'),
(4786,7000,1,21,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Menara Voidrender - Remove Active'),
(4786,7000,2,29,2,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Menara Voidrender - Add QuestFlags');

UPDATE `quest_template` SET `StartScript`='4786' WHERE `entry`='4786'; 
