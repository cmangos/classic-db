DELETE FROM npc_text WHERE Id IN (1259,1260);
DELETE FROM npc_text_broadcast_text WHERE Id IN (1259,1260);
INSERT INTO npc_text_broadcast_text (Id, Prob0, BroadcastTextId0) VALUES
(1259, 1, 3412),
(1260, 1, 3414);
