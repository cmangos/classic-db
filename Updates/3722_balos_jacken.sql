DELETE FROM dbscripts_on_relay WHERE id IN (10209, 10210);
INSERT INTO dbscripts_on_relay (id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, condition_id, comments) VALUES
(10209, 0, 0, 29, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "Balos Jacken - Remove NpcFlag Questgiver"),
(10210, 0, 0, 29, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "Balos Jacken - Add NpcFlag Questgiver");
