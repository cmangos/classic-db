-- Prevent unlimited spawns of Arikara 10882, spawned by q.5088
-- Also correct the spawn coordinates from sniff.
DELETE FROM dbscripts_on_go_template_use WHERE id=175944;
INSERT INTO dbscripts_on_go_template_use (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(175944, 0, 31, 10882, 80, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 'Terminate Script if Arikara (10882) found alive'),
(175944, 5, 10, 10882, 30000, 0, 0, 0, 0, 0, 0, 0, -1, -5008.078, -2115.23, 83.69985, 1.029744, 'Summon Arikara (10882)');

-- Arikara 10882
UPDATE creature_template SET MovementType=0 WHERE entry=10882;
