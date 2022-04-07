DELETE FROM gossip_menu WHERE entry IN (943, 1002);
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(943, 1521, 0, 0),
(1002, 1646, 0, 0);

UPDATE gossip_menu_option SET action_menu_id=943 WHERE menu_id=942 AND id=0;
UPDATE gossip_menu_option SET action_menu_id=1002 WHERE menu_id=942 AND id=1;
