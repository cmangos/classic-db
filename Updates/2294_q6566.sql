-- q.6566 'What the Wind Carries'
-- gossip moved to DB
DELETE FROM conditions WHERE condition_entry IN (1517);
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(1517, 9, 6566, 0);

DELETE FROM gossip_menu WHERE entry IN (3665,3666,3667,3668,3669,3670);
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(3665, 5733, 0, 0),
(3666, 5734, 0, 0),
(3667, 5735, 0, 0),
(3668, 5736, 0, 0),
(3669, 5737, 0, 0),
(3670, 5738, 0, 0);

DELETE FROM gossip_menu_option WHERE menu_id IN (3664,3665,3666,3667,3668,3669,3670);
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
(3664, 0, 0, 'Please share your wisdom with me, Warchief.', 1, 1, 3665, 0, 0, 0, 0, NULL, 1517),
(3665, 0, 0, 'What discoveries?', 1, 1, 3666, 0, 0, 0, 0, NULL, 0),
(3666, 0, 0, 'Usurper?', 1, 1, 3667, 0, 0, 0, 0, NULL, 0),
(3667, 0, 0, 'With all due respect, Warchief - why not allow them to be destroyed? Does this not strengthen our position?', 1, 1, 3668, 0, 0, 0, 0, NULL, 0),
(3668, 0, 0, 'I... I did not think of it that way, Warchief.', 1, 1, 3669, 0, 0, 0, 0, NULL, 0),
(3669, 0, 0, 'I live only to serve, Warchief! My life is empty and meaningless without your guidance.', 1, 1, 3670, 0, 0, 0, 0, NULL, 0),
(3670, 0, 0, 'Of course, Warchief!', 1, 1, -1, 0, 367001, 0, 0, NULL, 0);

DELETE FROM dbscripts_on_gossip WHERE id=367001;
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(367001, 0, 7, 6566, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'quest complete');
