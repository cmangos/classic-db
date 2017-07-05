-- Fixed gossip of NPC 14741 (Huntsman Markhor)
-- This closes #88 . Thanks @M2us for reporting.
DELETE FROM gossip_menu WHERE entry=6088;
INSERT INTO gossip_menu VALUES (6088, 7242, 0, 0);

DELETE FROM gossip_menu_option WHERE menu_id=6088;
INSERT INTO gossip_menu_option VALUES
(6088, 1, 0, 'I\'d like to stable my pet here', 14, 8192, 0, 0, 0, 0, 0, NULL, 0);

UPDATE creature_template SET GossipMenuId=6088 WHERE Entry=14741;
