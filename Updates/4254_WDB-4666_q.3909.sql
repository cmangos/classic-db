-- q.3909 'The Videre Elixir'

-- Gregan Brewspewer 7775 -- gossip corrected
DELETE FROM gossip_menu WHERE entry IN (1801,1802);
INSERT INTO gossip_menu (entry,text_id) VALUES
(1801,2434),
(1802,2433);
DELETE FROM `conditions` WHERE `condition_entry` = 283; -- 283	9	3909	0	0	0	0	Quest ID 3909 Taken was linked to 1802	2434

DELETE FROM gossip_menu_option WHERE menu_id IN (1801,1802);
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_broadcast_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, box_broadcast_text, condition_id) VALUES
(1801,0,0,'How can I get Evoroot?',4827,1,1,1915,0,0,0,0,NULL,0,0),
(1802,0,0,'Can you tell me how I can get a Videre Elixir?',4721,1,1,1801,0,0,0,0,NULL,0,283),
(1802,1,1,'Buy somethin\', will ya?',4720,3,4,0,0,0,0,0,NULL,0,283); -- 157	9	3909	0	0	0	0	Quest ID 3909 Taken

-- Event
DELETE FROM dbscripts_on_event WHERE id = 3718;
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(3718,1,31,9467,50,0,0,0,0,0,0,0,0,0,0,0,0,'search for 9467'),
(3718,2,35,5,50,0,9467,50,7,0,0,0,0,0,0,0,0,'send event AI 5');

DELETE FROM dbscripts_on_relay WHERE id = 9996;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(9996,1,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Miblon Snarltooth EAI: active'),
(9996,2,36,0,0,0,164758,50,1| 0x400,0,0,0,0,0,0,0,0,'Part of Miblon Snarltooth EAI: Face summoned object'), -- 21:32:56.563
(9996,100,29,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Miblon Snarltooth EAI: Remove NPCFLags'), -- 21:32:56.891
(9996,101,25,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Miblon Snarltooth EAI: RUN ON'),
(9996,3000,37,0,0,0,164758,50,1| 0x400,0,0,0,0,0,0,0,0,'Part of Miblon Snarltooth EAI: move towards summoned object'), -- 21:32:59.688
(9996,3100,0,0,0,0,0,0,0x04,4766,0,0,0,0,0,0,0,'Part of Miblon Snarltooth EAI: say text'), -- 21:32:59.828
(9996,3101,0,0,0,0,0,0,0x04,4836,0,0,0,0,0,0,0,'Part of Miblon Snarltooth EAI: say text'), -- 21:32:59.828
(9996,3200,53,0,0,0,0,0,0,19990,1,0,0,0,0,0,0,'Part of Miblon Snarltooth EAI:Set worldstate variable to 1'), -- on
(9996,7000,0,0,0,0,0,0,0x04,4768,0,0,0,0,0,0,0,'Part of Miblon Snarltooth EAI: say text'), -- 21:33:03.078
(9996,10000,1,53,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Miblon Snarltooth EAI: emote'), -- 21:33:06.188
(9996,12000,0,0,0,0,0,0,0x04,4771,0,0,0,0,0,0,0,'Part of Miblon Snarltooth EAI: say text'),
(9996,120000,3,0,0,0,0,0,0x04,0,0,0,0,-2853.88,2340.59,39.8609,3.59538,'Part of Miblon Snarltooth EAI: return to spawn point'),
(9996,130000,3,0,0,0,0,0,0x04,0,0,0,0,0,0,0,3.59538,'Part of Miblon Snarltooth EAI: reset orientation'),
(9996,130001,53,0,0,0,0,0,0,19990,0,0,0,0,0,0,0,'Part of Miblon Snarltooth EAI: Set worldstate variable to 0'), -- off
(9996,130010,35,6,50,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Miblon Snarltooth EAI: send event AI 6'),
(9996,130020,29,1,1,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Miblon Snarltooth EAI: add NPCFLags'),
(9996,130100,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Miblon Snarltooth EAI: unactive');

-- move object to spawn groups
DELETE FROM `spawn_group` WHERE id = 19990;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(19990, 'Feralas - Ruins of Ravenwind - o.164729 despawn with Event 3718 for q.8315', 1, 0, 20541, 0x08);

DELETE FROM `spawn_group_spawn` WHERE id = 19990;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(19990, 17428, -1);

DELETE FROM conditions WHERE condition_entry IN (20541);
INSERT INTO conditions (condition_entry, `type`, value1, value2, value3, flags, comments) VALUES
(20541, 42, 19990, 0, 0, 0, 'Feralas - Ruins of Ravenwind - o.164729 despawn with Event 3718 for q.8315');

DELETE FROM worldstate_name WHERE Id=19990;
INSERT INTO worldstate_name(Id, Name) VALUES
(19990,'Feralas - Ruins of Ravenwind - o.164729 despawn with Event 3718 for q.8315');

-- text corrections
UPDATE `broadcast_text` SET `ChatTypeID`=2 WHERE Id IN (4836,4768,4771);
