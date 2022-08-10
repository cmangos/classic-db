UPDATE dbscripts_on_gossip SET delay=0,comments='Parqual Fintallas - Say on success' WHERE Id IN(476402) AND command IN(0);
DELETE FROM dbscripts_on_gossip WHERE id=476401 AND command=0;
INSERT INTO dbscripts_on_gossip(id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, datafloat, x, y, z, o, speed, condition_id, comments) VALUES
('476401', '0', '0', '0', '0', '0', '0', '0', '0', '0', '8394', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Parqual Fintallas - Say on fail');

