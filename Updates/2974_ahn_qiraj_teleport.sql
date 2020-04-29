-- Fix teleports in Temple of Ahn'Qiraj where Andorgos can teleport players to Twin Emperors or pre-C'Thun room once related encounters are defeated
DELETE FROM dbscripts_on_spell WHERE id IN (29182, 29188);
INSERT INTO dbscripts_on_spell (id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, condition_id, comments) VALUES
(29182, 0, 0, 15, 29181, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cast Teleport to Lair of the Twin Emperors'),
(29188, 0, 0, 15, 29190, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cast Teleport to Final Chamber');

UPDATE dbscripts_on_gossip SET data_flags=6 WHERE id IN (66441, 66442);
