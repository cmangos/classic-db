DELETE FROM dbscripts_on_go_use WHERE id=66908;
DELETE FROM dbscripts_on_go_template_use WHERE id=179148;
INSERT INTO dbscripts_on_go_template_use (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(179148, 1, 11, 0, 0, 0, 179116, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Open Chromaggus side door'),
(179148, 2, 25, 1, 0, 0, 14020, 70, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Set Chromaggus run=true'),
(179148, 3, 3, 0, 0, 0, 14020, 70, 0, 0, 0, 0, 0, -7484.91, -1072.98, 476.55, 2.18, 'Move Chromaggus in the center of the room');
