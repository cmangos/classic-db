-- Champion Cyssa Dawnrose is a paladin trainer from TBC and is not present in Undercity
DELETE FROM points_of_interest WHERE entry = 271;
-- Remove Paladin option from Undercity Guardian's gossip
DELETE FROM gossip_menu_option WHERE menu_id = 2848 AND id = 1;
DELETE FROM gossip_menu WHERE entry = 8165;
DELETE FROM npc_text WHERE ID = 10107;
DELETE FROM npc_text WHERE ID = 10108;
