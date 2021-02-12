-- Remove unused npc_text that were move to npc_text_broadcast_text
DELETE FROM npc_text WHERE ID IN (2139, 2140);
