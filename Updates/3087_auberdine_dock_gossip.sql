-- Move one gossip text to broadcast_text
DELETE FROM npc_text WHERE Id=5480;
INSERT INTO npc_text_broadcast_text (Id, Prob0, BroadcastTextId0) VALUES (5480, 1, 8106);
