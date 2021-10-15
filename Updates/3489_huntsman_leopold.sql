-- Fix gossip menus of NPC 16132 (Huntsman Leopold) in Light's Hope Chapel
-- Source: https://wowpedia.fandom.com/wiki/Huntsman_Leopold#Quotes

-- Add missing gossip
DELETE FROM gossip_menu WHERE entry=7110;
INSERT INTO gossip_menu VALUES
(7110, 8368, 0, 0);

-- Fix options to use the correct gossip sequence
UPDATE gossip_menu_option SET action_menu_id=7110 WHERE menu_id=7102 AND id=0;
UPDATE gossip_menu_option SET menu_id=7110, action_menu_id=7111 WHERE menu_id=7111;
