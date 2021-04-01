DELETE FROM gossip_menu WHERE entry IN(2361);
INSERT INTO gossip_menu(entry, text_id, script_id, condition_id) VALUES
('2361', '3047', '0', '0');
DELETE FROM dbscripts_on_gossip WHERE id IN(2208) AND command IN(0);
INSERT INTO dbscripts_on_gossip VALUES
('2208', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2000000002', '0', '0', '0', '0', '0', '0', '0', '0', 'Say on cenarion beacon');
DELETE FROM dbscript_string WHERE entry IN(2000000002);
INSERT INTO dbscript_string(entry,content_default,broadcast_text_id) VALUES
(2000000002,'Here is a beacon for you, $N.  You must keep it in your possession if you are to find the corrupted items we will need.',5245);
DELETE FROM gossip_menu_option WHERE menu_id IN(20022,2207);
INSERT INTO gossip_menu_option(menu_id, id, option_icon, option_text, option_broadcast_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, box_broadcast_text, condition_id) VALUES
('2207', '0', '0', 'I need a Cenarion beacon.', '5243', '1', '1', '-1', '0', '2208', '0', '0', NULL, '0', '132'),
('2207', '1', '0', 'What plants are in Felwood that might be corrupted?', '5384', '1', '1', '2361', '0', '0', '0', '0', NULL, '0', '0');
