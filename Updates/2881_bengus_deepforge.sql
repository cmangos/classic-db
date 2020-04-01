UPDATE gossip_menu_option SET option_broadcast_text=3266 WHERE menu_id=593 AND id=0;
UPDATE gossip_menu_option SET action_menu_id=590, option_broadcast_text=3267 WHERE menu_id=593 AND id=1;
UPDATE gossip_menu_option SET action_menu_id=592, option_broadcast_text=3271 WHERE menu_id=593 AND id=2;

DELETE FROM gossip_menu WHERE entry=592;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(592, 1130, 0, 0);

UPDATE gossip_menu_option SET action_menu_id=589, option_broadcast_text=3269 WHERE menu_id=590;
DELETE FROM gossip_menu_option WHERE menu_id=592;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_broadcast_text, option_id, npc_option_npcflag, action_menu_id, condition_id) VALUES
(592, 0, 0, 'Can you give me directions?', 3269, 1, 1, 591, 0);

DELETE FROM gossip_menu WHERE entry=591;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(591, 1131, 0, 0);
