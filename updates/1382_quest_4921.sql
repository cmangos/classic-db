-- Quest 4921
UPDATE creature_template SET GossipMenuId=2871 WHERE entry=10668;
DELETE FROM gossip_menu WHERE entry IN (2871,2872);
INSERT INTO gossip_menu (entry, text_id) VALUE
(2871, 3557),
(2872, 3558);
DELETE FROM conditions WHERE condition_entry=1147;
INSERT INTO conditions (condition_entry,type,value1,value2) VALUE
(1147,9,4921,0);
DELETE FROM gossip_menu_option WHERE menu_id=2871;
INSERT INTO gossip_menu_option (menu_id,id,option_icon,option_text,option_id,npc_option_npcflag,action_menu_id,action_poi_id,action_script_id,box_coded,box_money,box_text,condition_id) VALUES
(2871, 0, 0, 'I inspect the body further.', 1, 1, 2872, 0, 2871, 0, 0, NULL, 1147);
DELETE FROM dbscripts_on_gossip WHERE id=2871;
INSERT INTO dbscripts_on_gossip (id,delay,command,datalong,datalong2,buddy_entry,search_radius,data_flags,dataint,dataint2,dataint3,dataint4,x,y,z,o,comments) VALUES
(2871,0,8,10668,0,0,0,0,0,0,0,0,0,0,0,0,'Quest 4921 - Kill credit');
