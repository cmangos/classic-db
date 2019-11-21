-- higher fidelity script
DELETE FROM dbscripts_on_gossip WHERE id IN(1405) AND delay = 2 AND command = 29; -- remove npc flag modification
INSERT INTO dbscripts_on_gossip(id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
('1405', '1', '36', '0', '0',        '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', 'Screecher Spirit - turn to player'),
('1405', '1', '4', '46', '33554432', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', 'Screecher Spirit - add non_selectable'),
('1405', '2', '18', '6000', '0',     '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', 'Screecher Spirit - despawn');
