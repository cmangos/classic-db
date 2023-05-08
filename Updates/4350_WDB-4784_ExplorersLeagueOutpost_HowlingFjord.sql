-- GENERIC RELAY for jumps added
DELETE FROM dbscripts_on_relay WHERE id = 30599;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(30599,0,20,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'GENERIC - set Idle');

