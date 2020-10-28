INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`, `comments`) VALUES
(343, 23, 12384, 1, 0, 0, 1, 'Player Has less of 1 Item ID 12384 in Inventory/Bank'),
(344, -1, 256, 343, 0, 0, 0, '(Quest ID 975 Rewarded AND Player Has less of 1 Item ID 12384 in Inventory/Bank)');

DELETE FROM gossip_menu_option WHERE menu_id = 2703 AND id=2;
INSERT INTO gossip_menu_option(menu_id, id, option_text, option_broadcast_text,option_id,npc_option_npcflag,action_menu_id,action_script_id,condition_id) VALUES
(2703,2,'I lost the Cache of Mau''ari. What can I do?',5758,1,1,-1,270301,344);

UPDATE gossip_menu_option SET action_script_id=0 WHERE menu_id=2703 AND id=0;

DELETE FROM dbscripts_on_gossip WHERE id IN(270301, 2703) AND command=15;
INSERT INTO dbscripts_on_gossip(id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, condition_id, comments) VALUES
('270301', '0', '0', '15', '16351', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'cast Create Cache of Mau''ari');
