DELETE FROM npc_text_broadcast_text WHERE Id IN(7748);
INSERT INTO npc_text_broadcast_text(Id,Prob0,BroadcastTextId0) VALUES
(7748,1,10689);
DELETE FROM gossip_menu WHERE entry IN(6532) AND text_id=7748;
INSERT INTO gossip_menu(entry, text_id, script_id, condition_id) VALUES
(6532,7748,0,8063);
DELETE FROM conditions WHERE condition_entry IN(8063) AND type=9;
INSERT INTO conditions(condition_entry, type, value1, value2, value3, value4, flags, comments) VALUES
('8063', '9', '8285', '0', '0', '0', '0', 'Quest ID 8285 Taken'); -- the deserter

