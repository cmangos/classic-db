
DELETE FROM `creature` WHERE (`guid` IN (21001, 21002, 21003, 21004, 21005, 21006, 21007, 21008, 21009, 21017, 21018, 21019, 21021, 21023, 21025, 21027, 21753, 21754, 21755, 21756, 21757, 21758));

DELETE FROM `creature_movement` WHERE (`id` IN (21021));
UPDATE `creature` SET `MovementType` = 0 WHERE (`guid`IN (21021));

SET @CGUID := 140124;
SET @SGUID := 10203;

INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
(@CGUID + 000, 0, 1, 1, 0, -4634.09033203125, -1299.2984619140625, -44.5112724304199218, 5.323451042175292968, 300, 300, 00, 2), -- Thousand Needles - Galak Mauler | Galak Stormer | Galak Marauder (1) Patrol 004
(@CGUID + 001, 0, 1, 1, 0, -4598.83837890625, -1279.9317626953125, -50.4673690795898437, 0.157079637050628662, 300, 300, 01, 1), -- Thousand Needles - Galak Mauler | Galak Stormer | Galak Marauder (1) Wandering 023
(@CGUID + 002, 0, 1, 1, 0, -4578.27050781250, -1221.8143310546875, -55.0009460449218750, 4.813016414642333984, 300, 300, 05, 1), -- Thousand Needles - Galak Mauler | Galak Stormer | Galak Marauder (1) Wandering 024
(@CGUID + 003, 0, 1, 1, 0, -4627.45849609375, -1282.7209472656250, -51.0901489257812500, 5.777040004730224609, 300, 300, 05, 1), -- Thousand Needles - Galak Mauler | Galak Stormer | Galak Marauder (1) Wandering 025
(@CGUID + 004, 0, 1, 1, 0, -4643.78906250000, -1259.9512939453125, -51.9488258361816406, 1.169370532035827636, 300, 300, 01, 1), -- Thousand Needles - Galak Mauler | Galak Stormer | Galak Marauder (1) Wandering 026
(@CGUID + 005, 0, 1, 1, 0, -4618.63769531250, -1188.3299560546875, -53.2775421142578125, 4.677482128143310546, 300, 300, 10, 1), -- Thousand Needles - Galak Mauler | Galak Stormer | Galak Marauder (1) Wandering 027
(@CGUID + 006, 0, 1, 1, 0, -4681.33300781250, -1255.8463134765625, -51.5547409057617187, 1.168467760086059570, 300, 300, 10, 1), -- Thousand Needles - Galak Mauler | Galak Stormer | Galak Marauder (1) Wandering 028
(@CGUID + 007, 0, 1, 1, 0, -4655.72851562500, -1245.0738525390625, -52.8313407897949218, 1.494609117507934570, 300, 300, 05, 1), -- Thousand Needles - Galak Mauler | Galak Stormer | Galak Marauder (1) Wandering 029
(@CGUID + 008, 0, 1, 1, 0, -4594.64062500000, -1267.2003173828125, -52.8212356567382812, 0.218179181218147277, 300, 300, 05, 1), -- Thousand Needles - Galak Mauler | Galak Stormer | Galak Marauder (1) Wandering 030
(@CGUID + 009, 0, 1, 1, 0, -4617.98291015625, -1344.1964111328125, -41.3647155761718750, 4.346948623657226562, 300, 300, 10, 1), -- Thousand Needles - Galak Mauler | Galak Stormer | Galak Marauder (1) Wandering 031
(@CGUID + 010, 0, 1, 1, 0, -4616.76806640625, -1250.5034179687500, -52.4178237915039062, 1.135877728462219238, 300, 300, 10, 1), -- Thousand Needles - Galak Mauler | Galak Stormer | Galak Marauder (1) Wandering 032
(@CGUID + 011, 0, 1, 1, 0, -4601.85644531250, -1218.0578613281250, -54.8896903991699218, 4.819102287292480468, 300, 300, 01, 1), -- Thousand Needles - Galak Mauler | Galak Stormer | Galak Marauder (1) Wandering 033
(@CGUID + 012, 0, 1, 1, 0, -4617.68310546875, -1216.1644287109375, -54.8350296020507812, 3.832809925079345703, 300, 300, 10, 1), -- Thousand Needles - Galak Mauler | Galak Stormer | Galak Marauder (1) Wandering 034
(@CGUID + 013, 0, 1, 1, 0, -4588.97949218750, -1248.0649414062500, -53.7573547363281250, 4.707204818725585937, 300, 300, 01, 1), -- Thousand Needles - Galak Mauler | Galak Stormer | Galak Marauder (1) Wandering 035
(@CGUID + 014, 0, 1, 1, 0, -4616.18505859375, -1315.4301757812500, -48.3147583007812500, 0.719703376293182373, 300, 300, 10, 1), -- Thousand Needles - Galak Mauler | Galak Stormer | Galak Marauder (1) Wandering 036
(@CGUID + 015, 0, 1, 1, 0, -4629.79638671875, -1163.9176025390625, -47.5968055725097656, 2.185452461242675781, 300, 300, 10, 1), -- Thousand Needles - Galak Mauler | Galak Stormer | Galak Marauder (1) Wandering 037
(@CGUID + 016, 0, 1, 1, 0, -4523.32373046875, -1190.3044433593750, -57.0957794189453125, 0.447933524847030639, 300, 300, 10, 1), -- Thousand Needles - Galak Mauler | Galak Stormer | Galak Marauder (1) Wandering 038
(@CGUID + 017, 0, 1, 1, 0, -4549.90087890625, -1218.6649169921875, -55.9972877502441406, 5.014119625091552734, 300, 300, 10, 1), -- Thousand Needles - Galak Mauler | Galak Stormer | Galak Marauder (1) Wandering 039
(@CGUID + 018, 0, 1, 1, 0, -4680.76367187500, -1427.4754638671875, -50.3587188720703125, 0.638932704925537109, 300, 300, 05, 1), -- Thousand Needles - Galak Mauler | Galak Stormer | Galak Marauder (1) Wandering 040
(@CGUID + 019, 0, 1, 1, 0, -4713.47705078125, -1425.4296875000000, -51.0238494873046875, 0.506191074848175048, 300, 300, 05, 1), -- Thousand Needles - Galak Mauler | Galak Stormer | Galak Marauder (1) Wandering 041
(@CGUID + 020, 0, 1, 1, 0, -4680.52001953125, -1447.6402587890625, -50.4092941284179687, 2.213158130645751953, 300, 300, 05, 1), -- Thousand Needles - Galak Mauler | Galak Stormer | Galak Marauder (1) Wandering 042
(@CGUID + 021, 0, 1, 1, 0, -4705.70361328125, -1456.8461914062500, -49.9798469543457031, 2.490109920501708984, 300, 300, 05, 1); -- Thousand Needles - Galak Mauler | Galak Stormer | Galak Marauder (1) Wandering 043

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`, `StringId`) VALUES
(@SGUID + 000, 'Thousand Needles - Galak Mauler | Galak Stormer | Galak Marauder (1) Patrol 004', 0, 0, 0, 0, 0),
(@SGUID + 001, 'Thousand Needles - Galak Mauler | Galak Stormer | Galak Marauder (1) Wandering 023', 0, 0, 0, 0, 0),
(@SGUID + 002, 'Thousand Needles - Galak Mauler | Galak Stormer | Galak Marauder (1) Wandering 024', 0, 0, 0, 0, 0),
(@SGUID + 003, 'Thousand Needles - Galak Mauler | Galak Stormer | Galak Marauder (1) Wandering 025', 0, 0, 0, 0, 0),
(@SGUID + 004, 'Thousand Needles - Galak Mauler | Galak Stormer | Galak Marauder (1) Wandering 026', 0, 0, 0, 0, 0),
(@SGUID + 005, 'Thousand Needles - Galak Mauler | Galak Stormer | Galak Marauder (1) Wandering 027', 0, 0, 0, 0, 0),
(@SGUID + 006, 'Thousand Needles - Galak Mauler | Galak Stormer | Galak Marauder (1) Wandering 028', 0, 0, 0, 0, 0),
(@SGUID + 007, 'Thousand Needles - Galak Mauler | Galak Stormer | Galak Marauder (1) Wandering 029', 0, 0, 0, 0, 0),
(@SGUID + 008, 'Thousand Needles - Galak Mauler | Galak Stormer | Galak Marauder (1) Wandering 030', 0, 0, 0, 0, 0),
(@SGUID + 009, 'Thousand Needles - Galak Mauler | Galak Stormer | Galak Marauder (1) Wandering 031', 0, 0, 0, 0, 0),
(@SGUID + 010, 'Thousand Needles - Galak Mauler | Galak Stormer | Galak Marauder (1) Wandering 032', 0, 0, 0, 0, 0),
(@SGUID + 011, 'Thousand Needles - Galak Mauler | Galak Stormer | Galak Marauder (1) Wandering 033', 0, 0, 0, 0, 0),
(@SGUID + 012, 'Thousand Needles - Galak Mauler | Galak Stormer | Galak Marauder (1) Wandering 034', 0, 0, 0, 0, 0),
(@SGUID + 013, 'Thousand Needles - Galak Mauler | Galak Stormer | Galak Marauder (1) Wandering 035', 0, 0, 0, 0, 0),
(@SGUID + 014, 'Thousand Needles - Galak Mauler | Galak Stormer | Galak Marauder (1) Wandering 036', 0, 0, 0, 0, 0),
(@SGUID + 015, 'Thousand Needles - Galak Mauler | Galak Stormer | Galak Marauder (1) Wandering 037', 0, 0, 0, 0, 0),
(@SGUID + 016, 'Thousand Needles - Galak Mauler | Galak Stormer | Galak Marauder (1) Wandering 038', 0, 0, 0, 0, 0),
(@SGUID + 017, 'Thousand Needles - Galak Mauler | Galak Stormer | Galak Marauder (1) Wandering 039', 0, 0, 0, 0, 0),
(@SGUID + 018, 'Thousand Needles - Galak Mauler | Galak Stormer | Galak Marauder (1) Wandering 040', 0, 0, 0, 0, 0),
(@SGUID + 019, 'Thousand Needles - Galak Mauler | Galak Stormer | Galak Marauder (1) Wandering 041', 0, 0, 0, 0, 0),
(@SGUID + 020, 'Thousand Needles - Galak Mauler | Galak Stormer | Galak Marauder (1) Wandering 042', 0, 0, 0, 0, 0),
(@SGUID + 021, 'Thousand Needles - Galak Mauler | Galak Stormer | Galak Marauder (1) Wandering 043', 0, 0, 0, 0, 0);

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`, `Chance`) VALUES
(@SGUID + 000, @CGUID + 000, 0, 0),
(@SGUID + 001, @CGUID + 001, 0, 0),
(@SGUID + 002, @CGUID + 002, 0, 0),
(@SGUID + 003, @CGUID + 003, 0, 0),
(@SGUID + 004, @CGUID + 004, 0, 0),
(@SGUID + 005, @CGUID + 005, 0, 0),
(@SGUID + 006, @CGUID + 006, 0, 0),
(@SGUID + 007, @CGUID + 007, 0, 0),
(@SGUID + 008, @CGUID + 008, 0, 0),
(@SGUID + 009, @CGUID + 009, 0, 0),
(@SGUID + 010, @CGUID + 010, 0, 0),
(@SGUID + 011, @CGUID + 011, 0, 0),
(@SGUID + 012, @CGUID + 012, 0, 0),
(@SGUID + 013, @CGUID + 013, 0, 0),
(@SGUID + 014, @CGUID + 014, 0, 0),
(@SGUID + 015, @CGUID + 015, 0, 0),
(@SGUID + 016, @CGUID + 016, 0, 0),
(@SGUID + 017, @CGUID + 017, 0, 0),
(@SGUID + 018, @CGUID + 018, 0, 0),
(@SGUID + 019, @CGUID + 019, 0, 0),
(@SGUID + 020, @CGUID + 020, 0, 0),
(@SGUID + 021, @CGUID + 021, 0, 0);

INSERT INTO `spawn_group_entry` (`Id`, `Entry`, `MinCount`, `MaxCount`, `Chance`) VALUES
(@SGUID + 000, 4095, 0, 0, 0), (@SGUID + 000, 4097, 0, 0, 0), (@SGUID + 000, 4099, 0, 0, 0),
(@SGUID + 001, 4095, 0, 0, 0), (@SGUID + 001, 4097, 0, 0, 0), (@SGUID + 001, 4099, 0, 0, 0),
(@SGUID + 002, 4095, 0, 0, 0), (@SGUID + 002, 4097, 0, 0, 0), (@SGUID + 002, 4099, 0, 0, 0),
(@SGUID + 003, 4095, 0, 0, 0), (@SGUID + 003, 4097, 0, 0, 0), (@SGUID + 003, 4099, 0, 0, 0),
(@SGUID + 004, 4095, 0, 0, 0), (@SGUID + 004, 4097, 0, 0, 0), (@SGUID + 004, 4099, 0, 0, 0),
(@SGUID + 005, 4095, 0, 0, 0), (@SGUID + 005, 4097, 0, 0, 0), (@SGUID + 005, 4099, 0, 0, 0),
(@SGUID + 006, 4095, 0, 0, 0), (@SGUID + 006, 4097, 0, 0, 0), (@SGUID + 006, 4099, 0, 0, 0),
(@SGUID + 007, 4095, 0, 0, 0), (@SGUID + 007, 4097, 0, 0, 0), (@SGUID + 007, 4099, 0, 0, 0),
(@SGUID + 008, 4095, 0, 0, 0), (@SGUID + 008, 4097, 0, 0, 0), (@SGUID + 008, 4099, 0, 0, 0),
(@SGUID + 009, 4095, 0, 0, 0), (@SGUID + 009, 4097, 0, 0, 0), (@SGUID + 009, 4099, 0, 0, 0),
(@SGUID + 010, 4095, 0, 0, 0), (@SGUID + 010, 4097, 0, 0, 0), (@SGUID + 010, 4099, 0, 0, 0),
(@SGUID + 011, 4095, 0, 0, 0), (@SGUID + 011, 4097, 0, 0, 0), (@SGUID + 011, 4099, 0, 0, 0),
(@SGUID + 012, 4095, 0, 0, 0), (@SGUID + 012, 4097, 0, 0, 0), (@SGUID + 012, 4099, 0, 0, 0),
(@SGUID + 013, 4095, 0, 0, 0), (@SGUID + 013, 4097, 0, 0, 0), (@SGUID + 013, 4099, 0, 0, 0),
(@SGUID + 014, 4095, 0, 0, 0), (@SGUID + 014, 4097, 0, 0, 0), (@SGUID + 014, 4099, 0, 0, 0),
(@SGUID + 015, 4095, 0, 0, 0), (@SGUID + 015, 4097, 0, 0, 0), (@SGUID + 015, 4099, 0, 0, 0),
(@SGUID + 016, 4095, 0, 0, 0), (@SGUID + 016, 4097, 0, 0, 0), (@SGUID + 016, 4099, 0, 0, 0),
(@SGUID + 017, 4095, 0, 0, 0), (@SGUID + 017, 4097, 0, 0, 0), (@SGUID + 017, 4099, 0, 0, 0),
(@SGUID + 018, 4095, 0, 0, 0), (@SGUID + 018, 4097, 0, 0, 0), (@SGUID + 018, 4099, 0, 0, 0),
(@SGUID + 019, 4095, 0, 0, 0), (@SGUID + 019, 4097, 0, 0, 0), (@SGUID + 019, 4099, 0, 0, 0),
(@SGUID + 020, 4095, 0, 0, 0), (@SGUID + 020, 4097, 0, 0, 0), (@SGUID + 020, 4099, 0, 0, 0),
(@SGUID + 021, 4095, 0, 0, 0), (@SGUID + 021, 4097, 0, 0, 0), (@SGUID + 021, 4099, 0, 0, 0);

INSERT INTO `creature_movement` (`Id`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(@CGUID + 000, 01, -4626.77734375000, -1319.4348144531250, -44.3691062927246093, 100, 0, 0),
(@CGUID + 000, 02, -4618.69873046875, -1324.6879882812500, -44.3561668395996093, 100, 0, 0),
(@CGUID + 000, 03, -4599.56884765625, -1307.3870849609375, -44.2997207641601562, 100, 0, 0),
(@CGUID + 000, 04, -4583.25537109375, -1284.7163085937500, -47.3245925903320312, 100, 0, 0),
(@CGUID + 000, 05, -4575.62792968750, -1272.5333251953125, -48.8856277465820312, 100, 0, 0),
(@CGUID + 000, 06, -4560.17968750000, -1260.2595214843750, -49.4961738586425781, 100, 0, 0),
(@CGUID + 000, 07, -4555.17236328125, -1240.5117187500000, -53.9322090148925781, 100, 0, 0),
(@CGUID + 000, 08, -4557.10546875000, -1231.7226562500000, -55.7758865356445312, 100, 0, 0),
(@CGUID + 000, 09, -4572.55175781250, -1219.0806884765625, -55.1323356628417968, 100, 0, 0),
(@CGUID + 000, 10, -4582.22802734375, -1216.5722656250000, -54.4848747253417968, 100, 0, 0),
(@CGUID + 000, 11, -4593.06103515625, -1210.0455322265625, -53.5429801940917968, 100, 0, 0),
(@CGUID + 000, 12, -4606.60644531250, -1202.3471679687500, -54.0351638793945312, 100, 0, 0),
(@CGUID + 000, 13, -4618.53125000000, -1193.5828857421875, -53.9011917114257812, 100, 0, 0),
(@CGUID + 000, 14, -4630.15527343750, -1183.1339111328125, -49.8035354614257812, 100, 0, 0),
(@CGUID + 000, 15, -4637.80712890625, -1187.3016357421875, -46.4523124694824218, 100, 0, 0),
(@CGUID + 000, 16, -4644.80273437500, -1201.5614013671875, -46.3484649658203125, 100, 0, 0),
(@CGUID + 000, 17, -4658.44726562500, -1215.0819091796875, -44.3355255126953125, 100, 0, 0),
(@CGUID + 000, 18, -4661.85351562500, -1230.7070312500000, -49.7298126220703125, 100, 0, 0),
(@CGUID + 000, 19, -4669.48535156250, -1247.9188232421875, -52.3745460510253906, 100, 0, 0),
(@CGUID + 000, 20, -4681.65283203125, -1265.5627441406250, -51.1721534729003906, 100, 0, 0),
(@CGUID + 000, 21, -4674.92529296875, -1272.9445800781250, -45.8587837219238281, 100, 0, 0),
(@CGUID + 000, 22, -4660.54394531250, -1279.2504882812500, -45.4482231140136718, 100, 0, 0),
(@CGUID + 000, 23, -4644.48681640625, -1278.3703613281250, -46.8893852233886718, 100, 0, 0),
(@CGUID + 000, 24, -4640.61767578125, -1283.0646972656250, -46.9379692077636718, 100, 0, 0),
(@CGUID + 000, 25, -4633.73144531250, -1299.8107910156250, -44.4181938171386718, 100, 0, 0);
