-- q.6129 'Curing the Sick' - H
-- q.6124 'Curing the Sick' - A
DELETE FROM dbscripts_on_relay WHERE id IN (26,27);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(26,0,44,12297,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Sickly Gazelle 12296 EAI: Update template'),
(26,10000,18,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Sickly Gazelle 12296 EAI: Force Despawn'),
(27,0,44,12299,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Sickly Deer 12298 EAI: Update template'),
(27,10000,18,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Sickly Deer 12298 EAI: Force Despawn');

