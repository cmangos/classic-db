-- Correct z coordinate in niby the almighty rp script
DELETE FROM `dbscripts_on_relay` WHERE id = '14469';
INSERT INTO dbscripts_on_relay(id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, datafloat, x, y, z, o, speed, condition_id, comments) VALUES
(14469,0,0,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Niby the Almighty - Change MovementType'),
(14469,0,1,21,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Niby the Almighty - Set Active'),
(14469,0,2,20,0,0,0,14470,20,0,0,0,0,0,0,0,0,0,0,0,0,'Impsy - Change MovementType'),
(14469,1000,0,3,0,0,1,14470,20,0,0,0,0,0,0,5408.4194,-747.0932,348.03143,2.6703536,0,0,'Impsy - Move'),
(14469,1000,0,3,0,0,0,0,0,0,0,0,0,0,0,5405.9204,-747.8695,348.28326,1.483529,0,0,'Niby the Almighty - Move'),
(14469,3000,0,1,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Niby the Almighty - Emote'),
(14469,3000,1,0,0,0,0,0,0,0,9615,9616,9617,0,0,0,0,0,0,0,0,'Niby the Almighty - Say Text'),
(14469,9000,0,1,50,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Niby the Almighty - Emote SpellPreCast'),
(14469,9000,1,15,23053,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Niby the Almighty - Cast Spell'),
(14469,13000,0,0,0,0,0,0,0,0,9618,0,0,0,0,0,0,0,0,0,0,'Niby the Almighty - Say Text'),
(14469,13000,1,0,0,0,0,14470,20,0,9619,9620,9621,0,0,0,0,0,0,0,0,'Impsy - Say Text'),
(14469,18000,0,36,0,0,0,14470,20,1,0,0,0,0,0,0,0,0,0,0,0,'Niby the Almighty - Face Impsy'),
(14469,18000,1,1,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Niby the Almighty - Emote Exclamation'),
(14469,18000,2,0,0,0,0,0,0,0,9622,0,0,0,0,0,0,0,0,0,0,'Niby the Almighty - Say Text'),
(14469,22000,0,20,2,0,0,14470,20,0,2,0,0,0,0,0,0,0,0,0,0,'Impsy - Change Movement'),
(14469,22000,1,0,0,0,0,14470,20,0,9623,0,0,0,0,0,0,0,0,0,0,'Impsy - Say Text'),
(14469,22000,2,20,2,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,'Niby the Almighty - Change Movement');

