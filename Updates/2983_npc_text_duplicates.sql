-- Remove deprecated npc_text entries that also have entries in broadcast_text
DELETE FROM npc_text WHERE id IN (8350, 8388, 8389, 8390, 8391, 8392, 8393, 8394, 8395, 8396, 8397, 8414);
