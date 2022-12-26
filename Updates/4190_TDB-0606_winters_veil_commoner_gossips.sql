DELETE FROM gossip_menu WHERE entry IN(7911,7907);
INSERT INTO gossip_menu(entry, text_id, script_id, condition_id) VALUES
(7911,9698,0,0),
(7907,9686,0,0);
DELETE FROM npc_text_broadcast_text WHERE Id IN(9698,9686);
INSERT INTO npc_text_broadcast_text(Id,Prob0,BroadcastTextId0) VALUES
(9698,1,16187),
(9686,1,16176);

-- Table `npc_text_broadcast_text` has record in `npc_text` (ID 9686) as well. Overwriting.
DELETE FROM npc_text WHERE id=9686; -- Greatfather Winter can be found in front of the Ironforge bank. The tree near him is where presents are given out.

