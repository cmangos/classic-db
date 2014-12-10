-- Jenal <Ditch Digger> - gossip update
UPDATE gossip_menu_option SET action_menu_id = 1661 WHERE menu_id = 1662;
DELETE FROM gossip_menu WHERE entry = 1661;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(1661, 2314, 0, 0);
