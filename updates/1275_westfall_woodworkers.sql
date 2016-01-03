-- Sentinell Hill - Westfall
-- Westfall Woodworker
DELETE FROM creature_addon WHERE guid IN (44303,45472,45521,89860);
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) VALUES
(44303,0,0,1,16,0,0,NULL),
(45472,0,0,1,16,0,0,NULL),
(45521,0,0,1,16,0,0,NULL),
(89860,0,0,1,16,0,0,NULL);
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid IN (44303,45472,45521,89860);
DELETE FROM creature_movement WHERE id IN (44303,45472,45521,89860);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
-- 44303
(44303,1,-10662.1,1130.83,34.1967, 15000, 0,2.513274, 0, 0),
(44303,2,-10662.1,1130.83,34.1967, 90000, 667001,2.513274, 0, 0),
(44303,3,-10661.3,1113.16,34.1967, 90000, 667001,4.153883, 0, 0),
-- 45472
(45472,1,-10650.8,1128.61,34.1978, 90000, 667001,4.433136, 0, 0),
(45472,2,-10650.8,1128.61,34.1978, 10000, 0,4.433136, 0, 0),
(45472,3,-10658.8,1134.62,34.1967, 90000, 667001,2.494732, 0, 0),
-- 45521
(45521,1,-10650.1,1115.028,35.6110, 6000, 667002,2.786707, 0, 0),
(45521,2,-10646.4,1113.332,35.6268, 90000, 667001,0.8901179, 0, 0),
-- 89860
(89860,1,-10656.2,1126.87,34.1967, 90000, 667001,5.56733, 0, 0),
(89860,2,-10667.4,1121.39,34.1967, 90000, 667001,3.57242, 0, 0);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 667001 AND 667002;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(667001,3,1,69,0,0,0,0,0,0,0,0,0,0,0,0,''),
(667001,87,1,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(667002,3,1,16,0,0,0,0,0,0,0,0,0,0,0,0,'');
