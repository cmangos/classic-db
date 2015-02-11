-- Torch will now open door in Solomance.
DELETE FROM dbscripts_on_go_template_use WHERE id = 176767;
INSERT INTO dbscripts_on_go_template_use (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(176767,1,11,45427,15,0,0,0,0,0,0,0,0,0,0,0,'');
