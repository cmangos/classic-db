-- Journal of Jandice Barov
-- shouldnt be a static spawn
DELETE FROM gameobject WHERE id = 180794;
-- book must be droped by Jandice Barov on her death
DELETE FROM dbscripts_on_creature_death WHERE id = 10503;
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(10503, 1, 0, 0, 0, 0, 0, 0, 2000000612, 0, 0, 0, 0, 0, 0, 0, ''),
(10503, 1, 15, 26096, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Jandice Barov - Summon Journal of Jandice Barov on Death');
-- gossip
DELETE FROM gossip_menu WHERE entry = 6799;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(6799, 8120, 0, 0),
(6799, 8121, 0, 80),
(6799, 8122, 0, 81);
DELETE FROM gossip_menu_option WHERE menu_id = 6799;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
(6799, 0, 0, ' Decipher the pattern and learn its content.', 1, 1, -1, 0, 6799, 0, 0, NULL, 80);
DELETE FROM dbscripts_on_gossip WHERE id = 6799;
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(6799, 0, 15, 26095, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Learn Felcloth Bag');
DELETE FROM conditions WHERE condition_entry BETWEEN 77 AND 81;
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(77, 7, 197, 280),
(78, 17, 26086, 1),
(79, 17, 26086, 0),
(80, -1, 77, 78),
(81, -1, 77, 79);
-- texts added
DELETE FROM db_script_string WHERE entry = 2000000612;
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000000612,'%s loosens her grasp on the journal she had been clutching.',0,2,0,0,NULL);
DELETE FROM npc_text WHERE ID IN (8121,8122);
INSERT INTO npc_text (ID,text0_0,text0_1,lang0,prob0) VALUES
(8121,'The journal of Jandice Barov is filled with rantings and ravings about the undead. Towards the end of the book is what appears to be a tailoring pattern for the creation of a bag of some sort.','',0,1),
(8122,'UDB Missing text','',0,1);
