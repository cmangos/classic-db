-- adds missing text
DELETE FROM dbscript_string WHERE entry IN(2000001228);
INSERT INTO dbscript_string(entry,content_default) VALUES
(2000001228,'That is the wrong answer, $N. Be off with you.');
DELETE FROM dbscripts_on_gossip WHERE id IN(476301) AND command IN(0);
INSERT INTO dbscripts_on_gossip(id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
('476301', '0', '0', '0', '0', '0', '0', '0', '0', '2000001228', '0', '0', '0', '0', '0', '0', '0', 'Say text');
UPDATE dbscripts_on_gossip SET delay=1 WHERE id IN(476301) AND command=15;
