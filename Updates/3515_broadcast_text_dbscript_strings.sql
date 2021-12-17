-- Quest Making Sense of It in Un'Goro Crater
DELETE FROM dbscripts_on_quest_start WHERE id=4321;
DELETE FROM dbscripts_on_quest_end WHERE id=4321;
INSERT INTO dbscripts_on_quest_start (id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, condition_id, comments) VALUES 
(4321, 0, 0, 29, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'npcFlags removed'),
(4321, 1000, 0, 21, 1, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'J.D. Collie - active'),
(4321, 2000, 0, 9, 63180, 30, 0, 0, 0, 0, 0, 0, 0, 0, -6034.46, -1014.57, -216.735, 6.07572, 0, ''),
(4321, 3000, 0, 0, 0, 0, 0, 0, 0, 0, 2000000540, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(4321, 3000, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.36912, 0, ''),
(4321, 8000, 0, 0, 0, 0, 0, 0, 0, 0, 2000000541, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(4321, 12000, 0, 0, 0, 0, 0, 0, 0, 0, 2000000542, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(4321, 12000, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.872665, 0, ''),
(4321, 12000, 0, 7, 4321, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(4321, 12000, 0, 29, 3, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'npcFlags added'),
(4321, 13000, 0, 21, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'J.D. Collie - unactive');
UPDATE quest_template SET CompleteScript=0, StartScript=4321 WHERE entry=4321;

-- Cenarion Beacon in Felwood
UPDATE gossip_menu_option SET action_menu_id=2361 WHERE menu_id=2208 AND id=1;

INSERT INTO `dbscripts_on_gossip` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(2208, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2000000318, 0, 0, 0, 0, 0, 0, 0, 3, 'Say on Cenarion beacon cast (Horde)'),
(2208, 0, 0, 15, 15120, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'cast Cenarion Beacon'),
(2208, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2000000323, 0, 0, 0, 0, 0, 0, 0, 4, 'Say on Cenarion beacon cast (Alliance)');

DELETE FROM dbscript_string WHERE entry IN (2000000323, 2000000318, 2000000002);
INSERT INTO dbscript_string (entry, content_default, broadcast_text_id, language, emote) VALUES
(2000000323, 'Here is a beacon for you, $N.  You must keep it in your possession if you are to find the corrupted items we will need.', 5244, 1, 25),
(2000000318, 'Here is a beacon for you, $N.  You must keep it in your possession if you are to find the corrupted items we will need.', 5245, 7, 25);
