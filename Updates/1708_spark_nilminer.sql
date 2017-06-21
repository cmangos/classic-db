-- Added missing gossip menu for NPC 9272 (Spark Nilminer)
-- This closes #56
DELETE FROM gossip_menu WHERE entry=2421;
INSERT INTO gossip_menu VALUES
(2421, 3380, 0, 0);

UPDATE gossip_menu_option SET action_menu_id=2421 WHERE menu_id=2422;
