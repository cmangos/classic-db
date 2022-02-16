-- alternate gossips for head quest turnin npcs - manipulated in core
DELETE FROM gossip_menu WHERE entry IN(6027,6022,6024);
INSERT INTO gossip_menu(entry, text_id, script_id, condition_id) VALUES
('6027', '7178', '0', '0'),
('6022', '7174', '0', '0'),
('6024', '7176', '0', '0');

UPDATE creature_template SET GossipMenuId=6022 WHERE entry IN(14720);
