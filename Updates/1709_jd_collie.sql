-- J.D. Collie <Marshal Expeditions>
-- new gossip after q. 4321
-- additional menus should be available after q.4321

UPDATE gossip_menu SET condition_id = 124 WHERE entry = 2184 AND text_id = 2833;
UPDATE gossip_menu_option SET condition_id = 124 WHERE menu_id = 2184 AND id IN (0,1,2);
UPDATE gossip_menu_option SET action_menu_id = 2202 WHERE menu_id = 2184 AND id = 0; -- eastern
UPDATE gossip_menu_option SET action_menu_id = 2203 WHERE menu_id = 2184 AND id = 1; -- northern
UPDATE gossip_menu_option SET action_menu_id = 2204 WHERE menu_id = 2184 AND id = 2; -- western
-- missing gossips added
DELETE FROM gossip_menu WHERE entry IN (2202,2203,2204,2205); 
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(2202, 2834, 0, 0),
(2203, 2836, 0, 0),
(2204, 2837, 0, 0),
(2205, 2838, 0, 0);

DELETE FROM gossip_menu_option WHERE menu_id = 2184 AND ID = 3;            
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
(2184,3,0,'I lost my Crystal Pylon User\'s Manual and need another one.',1,1,2205,0,2184,0,0,'',1149);  -- book only if we missing object and only after quest

DELETE FROM conditions WHERE condition_entry IN (1148,1149); 
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(1148, 16, 11482, 1),
(1149, -1, 1148, 124);

DELETE FROM dbscripts_on_gossip WHERE id = 2184;
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2184,1,17,11482,1,0,0,0,0,0,0,0,0,0,0,0,'');