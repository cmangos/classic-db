UPDATE creature_template_addon SET auras='27614 27978' WHERE entry=16016;
UPDATE creature_template SET GossipMenuId=7082, `NpcFlags` = `NpcFlags`|1 WHERE entry IN(16016);
DELETE FROM npc_text_broadcast_text WHERE Id IN(8334,8346);
INSERT INTO npc_text_broadcast_text(Id,Prob0,BroadcastTextId0) VALUES
(8334,1,11905),
(8346,1,11933);
DELETE FROM conditions WHERE condition_entry=8000 AND type=8 AND value1=8946;
INSERT INTO conditions(condition_entry,type,value1) VALUES
(8000,8,8946);
DELETE FROM gossip_menu WHERE entry IN(7082);
INSERT INTO gossip_menu(entry, text_id, script_id, condition_id) VALUES
(7082, 8334, 0, 0),
(7082, 8346, 0, 8000); -- if quest 8946 completed

