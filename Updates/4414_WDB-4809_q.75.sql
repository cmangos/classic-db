-- q.75 'The Legend of Stalvan'
DELETE FROM dbscripts_on_event WHERE id IN (264);
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(264,1,31,2044,30,0,0,0,0x08,0,0,0,0,0,0,0,0,'check for 2044 - terminate if alive'),
(264,100,10,2044,300000,0,0,0,0,0,0,0,0,-9553.48,-1430.4,62.2947,4.68745,'summon Forlorn Spirit');

-- 264	3000	0	10	2044	300000	0	0	0	0	0	0	0	0	0	-9548.42	-1440.2	62.29	2.19	0	0	

