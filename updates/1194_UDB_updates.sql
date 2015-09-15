
-- Remy "Two Times"
UPDATE creature_template SET npcFlags = 3, GossipMenuId = 5032 WHERE entry = 241;
DELETE FROM gossip_menu WHERE entry = 5032;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(5032, 6157, 0, 0);
DELETE FROM npc_text WHERE ID = 6157;
INSERT INTO npc_text (ID, text0_0, text0_1, lang0, prob0, em0_0, em0_1) VALUES 
(6157, 'Hey there, friend. My name\'s Remy. I\'m from Redridge to the east, and came here looking for business, looking for business. You got any...got any??', 'Hey there, friend. My name\'s Remy. I\'m from Redridge to the east, and came here looking for business, looking for business. You got any...got any??', 0, 1, 0, 0);

-- Marshal Dughan - gossip corrected
UPDATE creature_template SET npcFlags = 3, GossipMenuId = 11611 WHERE Entry = 240;
DELETE FROM gossip_menu WHERE entry IN (6159, 11611); 
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(11611, 16211, 0, 0);
-- missing text added
DELETE FROM npc_text WHERE ID IN (6157,16211);
INSERT INTO npc_text (ID, text0_0, text0_1, lang0, prob0, em0_0, em0_1) VALUES 
(16211, 'Ach, it\'s hard enough keeping order around here without all these new troubles popping up!  I hope you have good news, $n...', 'Ach, it\'s hard enough keeping order around here without all these new troubles popping up!  I hope you have good news, $n...', 0, 1, 5, 5);

-- Lanti'gah - Barrens
UPDATE creature SET position_x = -292.942444, position_y = -1909.355591, position_z = 91.666786, orientation = 2.13, spawndist = 10, MovementType = 1 WHERE guid = 13100;

-- q.4129 'The Knife Revealed'
DELETE FROM dbscripts_on_quest_end WHERE id = 4129;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(4129,0,29,131,2,0,0,0,0,0,0,0,0,0,0,0,'npcFlags removed'),
(4129,2,0,0,0,0,0,0,2000000521,0,0,0,0,0,0,0,''),
(4129,3,15,15050,0,0,0,0,0,0,0,0,0,0,0,0,''),
(4129,10,0,0,0,0,0,0,2000000522,0,0,0,0,0,0,0,''),
(4129,12,29,131,1,0,0,0,0,0,0,0,0,0,0,0,'npcFlags added');
UPDATE quest_template SET CompleteScript = 4129 WHERE entry = 4129;
DELETE FROM db_script_string WHERE entry BETWEEN 2000000521 AND 2000000522;
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000000521,'I will need to focus my energies onto this knife. By doing so, I should catch some of the stronger psychic impressions associated with it.',0,0,0,0,NULL),
(2000000522,'I... I\'ve seen enough I think... so very draining...',0,0,0,462,NULL);

-- Quintis Jonespyre
-- temp. solution (we need to find gossipID)
DELETE FROM npc_gossip WHERE npc_guid = 51258;
INSERT INTO npc_gossip (npc_guid, textid) VALUES
(51258, 2575);

-- q.2943 'Return to Troyas'
DELETE FROM dbscripts_on_quest_end WHERE id = 2943;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2943,0,29,3,2,0,0,0,0,0,0,0,0,0,0,0,'npcFlags removed'),
(2943,1,0,0,0,0,0,0,2000000523,0,0,0,0,0,0,0,''),
(2943,2,3,0,0,0,0,0,0,0,0,0,-4476.23,3230.55,13.7301,4.20931,''),
(2943,4,3,0,0,0,0,0,0,0,0,0,0,0,0,4.99471,''),
(2943,5,0,0,0,0,0,0x02,2000000524,0,0,0,0,0,0,0,''),
(2943,10,0,0,0,0,0,0,2000000525,0,0,0,0,0,0,0,''),
(2943,12,3,0,0,0,0,0,0,0,0,0,-4474.9,3232.88,13.7295,0.951991,''),
(2943,14,29,3,1,0,0,0,0,0,0,0,0,0,0,0,'npcFlags added');
UPDATE quest_template SET CompleteScript = 2943 WHERE entry = 2943;
DELETE FROM db_script_string WHERE entry BETWEEN 2000000523 AND 2000000525;
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000000523,'A History... Hmmmm... Let me examine this for a moment.',0,0,0,0,NULL),
(2000000524,'%s skims the pages of the book.',0,2,0,0,NULL),
(2000000525,'Amazing! I think I have found it, $N.',0,0,0,0,NULL);

-- q.3463 'Set Them Ablaze!'
DELETE FROM dbscripts_on_quest_end WHERE id = 3463;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(3463,1,31,8479,100,0,0,0,0,0,0,0,0,0,0,0,'search for Kalaran Windblade'),
(3463,2,18,0,0,8479,5921,7 | 0x10,0,0,0,0,0,0,0,0,'desp'),
(3463,3,10,8480,54000,0,0,0,0,0,0,0,-6679.93,-1194.36,240.297,2.96706,'summon Kalaran the Deceiver');
UPDATE quest_template SET CompleteScript = 3463 WHERE entry = 3463;

-- Kalaran Windblade
UPDATE creature SET spawntimesecs = 120 WHERE id = 8479;

-- Kalaran the Deceiver
UPDATE creature_template SET MovementType = 2 WHERE entry = 8480;
DELETE FROM creature_movement_template WHERE entry = 8480;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(8480, 1, -6679.93,-1194.36,240.297,45000,848001,2.96706,0,0),
(8480, 2, -6879.3,-1187.34,253.384,0,0,3.10877,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 848001;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(848001,1,21,1,0,0,0,0x04,0,0,0,0,0,0,0,0,'Kalaran the Deceiver - active'),
(848001,1,0,0,0,0,0,0,2000000526,0,0,0,0,0,0,0,''),
(848001,3,0,0,0,0,0,0,2000000527,0,0,0,0,0,0,0,''),
(848001,7,0,0,0,0,0,0,2000000528,0,0,0,0,0,0,0,''),
(848001,13,0,0,0,8509,20,7,2000000529,0,0,0,0,0,0,0,''),
(848001,15,3,0,0,0,0,0,0,0,0,0,0,0,0,4.65994,''),
(848001,18,0,0,0,0,0,0,2000000530,0,0,0,0,0,0,0,''),
(848001,22,0,0,0,0,0,0,2000000531,0,0,0,0,0,0,0,''),
(848001,27,0,0,0,0,0,0,2000000532,0,0,0,0,0,0,0,''),
(848001,32,0,0,0,8509,20,7,2000000533,0,0,0,0,0,0,0,''),
(848001,35,0,0,0,0,0,0,2000000534,0,0,0,0,0,0,0,''),
(848001,38,0,0,0,0,0,0,2000000535,0,0,0,0,0,0,0,''),
(848001,41,25,1,0,0,0,0,0,0,0,0,0,0,0,0,'RUN ON'),
(848001,44,0,0,0,0,0,0,2000000536,0,0,0,0,0,0,0,''),
(848001,48,21,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Kalaran the Deceiver - unactive');
DELETE FROM db_script_string WHERE entry BETWEEN 2000000526 AND 2000000536;
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000000526,'Glorious, indeed, Maltrake. It looks as if my plan worked perfectly. Wouldn\'t you say so, mortal?',0,0,0,0,NULL),
(2000000527,'%s lets loose a reptilian laugh... at least you think it\'s a laugh.',0,2,0,0,NULL),
(2000000528,'You would not have helped the legion of Blackrock had we just asked for your assistance, now would you?',0,0,0,0,NULL),
(2000000529,'What will we do with them, master? They are of no use to us anymore.',0,0,0,1,NULL),
(2000000530,'SILENCE FOOL!',0,0,0,0,NULL),
(2000000531,'They will live of only to see the fruits of their labor: the destruction and chaos that will surely ensue as the legion of Blackrock invade the gorge.',0,0,0,0,NULL),
(2000000532,'I leave you now, mortals. Alive and with these trinkets. Maltrake! Present them with the trinkets!',0,0,0,0,NULL),
(2000000533,'Right away, master!',0,0,0,0,NULL),
(2000000534,'%s begins to flap his massive wings faster. He is preparing for flight.',0,2,0,0,NULL),
(2000000535,'Oh yes, the molt - do not lose it. There are those of my kin in the Burning Steppes that would craft items that only the molt of the black dragonflight could fortify.',0,0,0,0,NULL),
(2000000536,'The legion of Blackrock comes, dwarflings! We shall scorch the earth and set fire to the heavens. None shall survive...',0,1,0,0,NULL);

-- Torwa Pathfinder
-- new gossip after q. 4289
-- additional menu should be available after q.4290
UPDATE gossip_menu SET condition_id = 1145 WHERE entry = 2188 AND text_id = 2821;
UPDATE gossip_menu_option SET condition_id = 1146 WHERE menu_id = 2188;
DELETE FROM conditions WHERE condition_entry IN (1145, 1146); 
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(1147, 8, 4289, 0),
(1146, 8, 4290, 0);


-- q.4321 'Making Sense of It'

-- first: fix start_script
DELETE FROM dbscripts_on_quest_start WHERE id = 4321;
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(4321,0,29,3,2,0,0,0,0,0,0,0,0,0,0,0,'npcFlags removed'),
(4321,1,1,6,0,0,0,0,0,0,0,0,0,0,0,0,''),
(4321,2,0,0,0,0,0,0,2000000030,0,0,0,0,0,0,0,''),
(4321,5,1,22,0,0,0,0,0,0,0,0,0,0,0,0,''),
(4321,5,7,4321,0,0,0,0,0,0,0,0,0,0,0,0,''),
(4321,6,29,3,1,0,0,0,0,0,0,0,0,0,0,0,'npcFlags added');
UPDATE quest_template SET StartScript = 4321 WHERE entry = 4321;
-- second: missing end_script added 
DELETE FROM dbscripts_on_quest_end WHERE id = 4321;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(4321,1,21,1,0,0,0,0x04,0,0,0,0,0,0,0,0,'J.D. Collie - active'),
(4321,2,9,63180,30,0,0,0,0,0,0,0,-6034.46,-1014.57,-216.735,6.07572,''),
(4321,3,0,0,0,0,0,0,2000000540,0,0,0,0,0,0,0,''),
(4321,3,3,0,0,0,0,0,0,0,0,0,0,0,0,2.36912,''),
(4321,8,0,0,0,0,0,0,2000000541,0,0,0,0,0,0,0,''),
(4321,12,3,0,0,0,0,0,0,0,0,0,0,0,0,0.872665,''),
(4321,12,0,0,0,0,0,0,2000000542,0,0,0,0,0,0,0,''),
(4321,13,21,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'J.D. Collie - unactive');
UPDATE quest_template SET CompleteScript = 4321 WHERE entry = 4321;
DELETE FROM db_script_string WHERE entry BETWEEN 2000000540 AND 2000000542;
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000000540, 'Now, let\'s see... If I am correct, then... Hmmm...', 0, 0, 0, 4, NULL),
(2000000541, 'Blue plus red... I predict...', 0, 0, 0, 0, NULL),
(2000000542, '$N, that\'s it! I have finally figured it out!', 0, 0, 0, 0, NULL);

-- missing object added - UDB free guid reused
DELETE FROM gameobject WHERE guid = 63180;
INSERT INTO gameobject VALUES ( 63180, 174683, 1, -6034.46, -1014.57, -216.735, 6.07572, 0, 0, 0.103548, -0.994624, -30, 255, 1);

-- Arathandris Silversky
-- still menu_id and text_id for this option
UPDATE gossip_menu_option SET condition_id = 5 WHERE menu_id = 2208 AND id = 1;

-- The Book of Ur
UPDATE gameobject SET spawntimesecs = 2 WHERE guid = 40667;

-- Warbringer Construct 8905
-- UnitFlags corrected
-- Not-selectable 0x2000000 & not_attackable 0x100 - are added only for 4 of them in Black Vault by aura 
UPDATE creature_template SET UnitFlags = 64 WHERE Entry = 8905;

-- Weegli Blastfuse - Script Update 
-- Ukorz Sandscalp can yell without any error.
UPDATE dbscripts_on_creature_movement SET search_radius = 37996, data_flags = 0x10 WHERE id = 760713 and delay = 5;

-- Overlord Mok'Morokk - update
-- after defeted in quest "Challenge Overlord Mok'Morokk" he should respawn quicker for other players.
UPDATE creature SET spawntimesecs = 60 WHERE guid = 31442;

