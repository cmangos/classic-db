-- Of Forgotten Memories (quest 5781)
-- Loose Dirt Mound (entry 177240, guid 45881)
DELETE FROM dbscripts_on_event WHERE id=5759 AND delay=1000;
INSERT INTO dbscripts_on_event (id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(5759, 1000, 0, 31, 11886, 100, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 'search for 11886 - terminate if alive');
