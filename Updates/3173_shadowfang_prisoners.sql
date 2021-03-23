-- Fix gossip menu used by the two prisoners in Shadowfang Keep
-- Gossip entries are (still) placeholders
DELETE FROM gossip_menu WHERE entry IN (301, 302);
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(302, 799, 0, 0),
(301, 798, 0, 0);

UPDATE creature_template SET gossipMenuId=301 WHERE entry=3850;
UPDATE creature_template SET gossipMenuId=302 WHERE entry=3849;

DELETE FROM npc_text WHERE ID IN (798, 799);
DELETE FROM npc_text_broadcast_text WHERE Id IN (798, 799);
INSERT INTO npc_text_broadcast_text (Id, Prob0, Prob1, Prob2, Prob3, Prob4, Prob5, Prob6, Prob7, BroadcastTextId0, BroadcastTextId1, BroadcastTextId2, BroadcastTextId3, BroadcastTextId4, BroadcastTextId5, BroadcastTextId6, BroadcastTextId7) VALUES
(798, 1, 0, 0, 0, 0, 0, 0, 0, 2801, 0, 0, 0, 0, 0, 0, 0),
(799, 1, 0, 0, 0, 0, 0, 0, 0, 2803, 0, 0, 0, 0, 0, 0, 0);
