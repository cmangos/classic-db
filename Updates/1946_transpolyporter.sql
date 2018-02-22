UPDATE gameobject SET position_x=-14468.08,position_y=457.6226,position_z=15.16596,orientation=2.146753 WHERE id=142172;

DELETE FROM gossip_menu_option WHERE menu_id IN(1628) AND id = 0;
INSERT INTO gossip_menu_option(menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
(1628,0,0,'I have lost my Goblin Transponder. I need another one.',1,1,-1,0,162800,0,0,NULL,1228);

DELETE FROM conditions WHERE condition_entry IN(1228);
INSERT INTO conditions VALUES
(1228,8,2843,0,'');

DELETE FROM dbscripts_on_gossip WHERE id IN(162800);
INSERT INTO dbscripts_on_gossip(id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(162800,0,15,13325,0,0,0,0,0,0,0,0,0,0,0,0,0,'Scooty - Retreive Goblin Transponder (guesswork)');
