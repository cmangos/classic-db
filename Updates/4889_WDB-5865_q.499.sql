-- q.499 'Elixir of Suffering'
DELETE FROM dbscripts_on_quest_end WHERE id IN (499);
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(499,1,0,0,0,0,0,0,0x04,579,0,0,0,0,0,0,0,''),
(499,100,15,3240,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'');
-- c.2230 Umpi
UPDATE creature SET spawntimesecsmin = 30, spawntimesecsmax = 30, spawndist = 2, MovementType = 1 WHERE id = 2230;
