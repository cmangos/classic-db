-- Start script for Quest 'Cave Mushrooms'
DELETE FROM `dbscripts_on_quest_start` WHERE id = '947';
INSERT INTO dbscripts_on_quest_start(id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, datafloat, x, y, z, o, speed, condition_id, comments) VALUES
(947,0,0,36,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Barithras Moonshade - Face Player'),
(947,0,1,1,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Barithras Moonshade - Emote Bow'),
(947,0,2,0,0,0,0,0,0,0,1211,0,0,0,0,0,0,0,0,0,0,'Barithras Moonshade - Say Text'),
(947,3000,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,5.131268,0,0,'Barithras Moonshade - Set Orientation'),
(947,3000,1,1,25,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Barithras Moonshade - Emote Point'),
(947,3000,2,0,0,0,0,0,0,0,1210,0,0,0,0,0,0,0,0,0,0,'Barithras Moonshade - Say Text'),
(947,10000,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4.747295,0,0,'Barithras Moonshade - Set Orientation'),
(947,30000,0,31,3616,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Cave Mushrooms - Spam Prevention');

UPDATE `quest_template` SET `StartScript`='947' WHERE `entry`='947';

-- Delete old Conditions
-- 1222	9	944	0	0	1	0	Quest ID 944 Taken
-- 1223	2	5251	1	0	0	1	Player Has Less Than 1 of Item ID 5251 in Inventory
-- 1224	-1	1223	1222	0	0	0	(Player Has Less Than 1 of Item ID 5251 in Inventory AND Quest ID 944 Taken)
DELETE FROM conditions WHERE condition_entry IN (1222, 1223, 1224);

-- New Conditions
-- Quest 960 need quest 944 done and 949 not rewarded
-- Quest 961 needs Quest 949 rewarded and 950 not rewardeds
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `flags`, `comments`) VALUES 
('1222', '8', '949', '0', '1', 'Quest ID 949 not rewarded'),
('1223', '8', '950', '0', '1', 'Quest ID 950 not rewarded');

-- End script for Quest 'Onu is meditating' id 960
DELETE FROM `dbscripts_on_quest_end` WHERE id = '960';
INSERT INTO dbscripts_on_quest_end(id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, datafloat, x, y, z, o, speed, condition_id, comments) VALUES
(960,0,0,0,0,0,0,0,0,0,1219,0,0,0,0,0,0,0,0,0,0,'Onu is meditating - Say Text'),
(960,20000,0,31,3616,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Onu is meditating - Spam Prevention');

UPDATE `quest_template` SET `RequiredCondition`='1222', `PrevQuestId`='944', `SpecialFlags`='1', `CompleteScript`='960', `OfferRewardText`='I am meditating on your task, $N.  Meditating on reasons why the Twilight\'s Hammer and naga are here.$B$BWhen you are ready, use the phial of scrying to create a scrying bowl.  Then, contact me through the bowl.$B$BIf you have lost your phial of scrying, then here is another.' WHERE `entry`='960';

-- You get it from Onu
DELETE FROM creature_questrelation WHERE id = '3616' AND quest = '960';
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES ('3616', '960');
DELETE FROM creature_involvedrelation WHERE id = '3616' AND quest = '960';
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES ('3616', '960');

-- End script for Quest 'Onu is meditating' id 961
DELETE FROM `dbscripts_on_quest_end` WHERE id = '961';
INSERT INTO dbscripts_on_quest_end(id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, datafloat, x, y, z, o, speed, condition_id, comments) VALUES
(961,0,0,0,0,0,0,0,0,0,1219,0,0,0,0,0,0,0,0,0,0,'Onu is meditating - Say Text'),
(961,20000,0,31,3616,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Onu is meditating - Spam Prevention');

UPDATE `quest_template` SET `RequiredCondition`='1223', `PrevQuestId`='949', `SpecialFlags`='1', `CompleteScript`='961' WHERE `entry`='961';

-- This text should be a TextEmote
UPDATE `broadcast_text` SET `ChatTypeID`='2' WHERE (`Id`='1219');
