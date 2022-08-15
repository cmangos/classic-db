DELETE FROM gossip_menu WHERE entry IN(6092,6094) AND text_id IN(7254,7253);
INSERT INTO gossip_menu VALUES
('6092', '7254', '0', '1638'),
('6094', '7253', '0', '1639');
DELETE FROM conditions WHERE condition_entry IN(1638,1639) AND type IN(23) AND value1 IN(18984,18986);
INSERT INTO conditions(condition_entry, type, value1, value2, value3, value4, flags, comments) VALUES
(1638,23,18984,1,0,0,0,'Has Dimensional Ripper - Everlook'),
(1639,23,18986,1,0,0,0,'Has Ultrasafe Transporter: Gadgetzan');
DELETE FROM npc_text_broadcast_text WHERE Id IN(7253,7254);
INSERT INTO npc_text_broadcast_text(Id,Prob0,BroadcastTextId0) VALUES
(7254,1,10000),
(7253,1,9999);


