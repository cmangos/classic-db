
SET @CGUID := 140000;
SET @SGUID := 97;

DELETE FROM `creature_movement` WHERE (`id` IN (89571, 89989));
DELETE FROM `creature` WHERE (`guid` IN (89564, 89565, 89566, 89567, 89568, 89569, 89570, 89571, 89572, 89989, 89990, 89991, 89992, 89993, 89994, 89995, 89996, 90124, 90125, 90364, 90366));

INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
(@CGUID + 00, 0, 0, 1, -11295.8818359375, 1598.3314208984375, 35.89859771728515625, 1.800206303596496582, 600, 600, 2, 1), -- Skeletal Miner | Undead Excavator | Undead Dynamiter
(@CGUID + 01, 0, 0, 1, -11300.8789062500, 1586.1232910156250, 34.99457550048828125, 5.485357761383056640, 600, 600, 2, 1), -- Skeletal Miner | Undead Excavator | Undead Dynamiter
(@CGUID + 02, 0, 0, 1, -11326.1865234375, 1589.6046142578125, 35.35545349121093750, 2.197665691375732421, 600, 600, 2, 1), -- Skeletal Miner | Undead Excavator | Undead Dynamiter
(@CGUID + 03, 0, 0, 1, -11285.1591796875, 1586.8973388671875, 36.70158767700195312, 1.867618560791015625, 600, 600, 2, 1), -- Skeletal Miner | Undead Excavator | Undead Dynamiter
(@CGUID + 04, 0, 0, 1, -11309.3310546875, 1592.3833007812500, 36.42408752441406250, 1.646275043487548828, 600, 600, 2, 1), -- Skeletal Miner | Undead Excavator | Undead Dynamiter
(@CGUID + 05, 0, 0, 1, -11287.9423828125, 1596.9625244140625, 36.28068161010742187, 3.722155809402465820, 600, 600, 2, 1), -- Skeletal Miner | Undead Excavator | Undead Dynamiter
(@CGUID + 06, 0, 0, 1, -11288.2031250000, 1580.6378173828125, 36.45442962646484375, 0.000000000000000000, 600, 600, 2, 1), -- Skeletal Miner | Undead Excavator | Undead Dynamiter
(@CGUID + 07, 0, 0, 1, -11291.7148437500, 1573.1600341796875, 36.50790405273437500, 5.840511322021484375, 600, 600, 2, 1), -- Skeletal Miner | Undead Excavator | Undead Dynamiter
(@CGUID + 08, 0, 0, 1, -11294.7080078125, 1590.6357421875000, 34.32710266113281250, 4.991641521453857421, 600, 600, 2, 1), -- Skeletal Miner | Undead Excavator | Undead Dynamiter
(@CGUID + 09, 0, 0, 1, -11300.3076171875, 1553.1712646484375, 35.25799179077148437, 5.282184600830078125, 600, 600, 2, 1), -- Skeletal Miner | Undead Excavator | Undead Dynamiter
(@CGUID + 10, 0, 0, 1, -11297.3310546875, 1564.0323486328125, 35.97008514404296875, 5.577094554901123046, 600, 600, 2, 1), -- Skeletal Miner | Undead Excavator | Undead Dynamiter
(@CGUID + 11, 0, 0, 1, -11306.2402343750, 1559.9820556640625, 36.64719390869140625, 0.000000000000000000, 600, 600, 2, 1), -- Skeletal Miner | Undead Excavator | Undead Dynamiter
(@CGUID + 12, 0, 0, 1, -11319.8408203125, 1592.2789306640625, 35.82117080688476562, 0.000000000000000000, 600, 600, 2, 1), -- Skeletal Miner | Undead Excavator | Undead Dynamiter
(@CGUID + 13, 0, 0, 1, -11335.7988281250, 1541.8688964843750, 29.22183036804199218, 0.000000000000000000, 600, 600, 2, 1), -- Skeletal Miner | Undead Excavator | Undead Dynamiter
(@CGUID + 14, 0, 0, 1, -11324.4765625000, 1547.1840820312500, 28.52089691162109375, 3.660197019577026367, 600, 600, 2, 1), -- Skeletal Miner | Undead Excavator | Undead Dynamiter
(@CGUID + 15, 0, 0, 1, -11326.6250000000, 1563.4357910156250, 26.33872985839843750, 5.880512714385986328, 600, 600, 2, 1), -- Skeletal Miner | Undead Excavator | Undead Dynamiter
(@CGUID + 16, 0, 0, 1, -11343.2519531250, 1530.9266357421875, 28.52777099609375000, 0.000000000000000000, 600, 600, 2, 1), -- Skeletal Miner | Undead Excavator | Undead Dynamiter
(@CGUID + 17, 0, 0, 1, -11343.2978515625, 1564.1032714843750, 31.94324874877929687, 3.857177734375000000, 600, 600, 2, 1), -- Skeletal Miner | Undead Excavator | Undead Dynamiter
(@CGUID + 18, 0, 0, 1, -11340.8261718750, 1573.5219726562500, 33.53424835205078125, 4.489574432373046875, 600, 600, 2, 1), -- Skeletal Miner | Undead Excavator | Undead Dynamiter
(@CGUID + 19, 0, 0, 1, -11331.6552734375, 1581.0633544921875, 34.40159225463867187, 0.000000000000000000, 600, 600, 2, 1), -- Skeletal Miner | Undead Excavator | Undead Dynamiter
(@CGUID + 20, 0, 0, 1, -11344.4130859375, 1555.6947021484375, 30.96386146545410156, 0.937163352966308593, 600, 600, 2, 1), -- Skeletal Miner | Undead Excavator | Undead Dynamiter
(@CGUID + 21, 0, 0, 1, -11346.3164062500, 1543.1345214843750, 28.76841354370117187, 1.816690683364868164, 600, 600, 2, 1), -- Skeletal Miner | Undead Excavator | Undead Dynamiter
(@CGUID + 22, 0, 0, 1, -11326.7148437500, 1555.2083740234375, 27.06417465209960937, 4.817108631134033203, 600, 600, 2, 1), -- Skeletal Miner | Undead Excavator | Undead Dynamiter
(@CGUID + 23, 0, 0, 1, -11326.7548828125, 1538.9617919921875, 28.56731605529785156, 3.564728260040283203, 600, 600, 2, 1); -- Foreman Thistlenettle

INSERT INTO `spawn_group_entry` (`Id`, `Entry`, `MinCount`, `MaxCount`, `Chance`) VALUES
(@SGUID + 00, 623, 0, 0, 0), (@SGUID + 00, 624, 0, 0, 0), (@SGUID + 00, 625, 0, 0, 0),
(@SGUID + 01, 623, 0, 0, 0), (@SGUID + 01, 624, 0, 0, 0), (@SGUID + 01, 625, 0, 0, 0),
(@SGUID + 02, 623, 0, 0, 0), (@SGUID + 02, 624, 0, 0, 0), (@SGUID + 02, 625, 0, 0, 0),
(@SGUID + 03, 623, 0, 0, 0), (@SGUID + 03, 624, 0, 0, 0), (@SGUID + 03, 625, 0, 0, 0),
(@SGUID + 04, 623, 0, 0, 0), (@SGUID + 04, 624, 0, 0, 0), (@SGUID + 04, 625, 0, 0, 0),
(@SGUID + 05, 623, 0, 0, 0), (@SGUID + 05, 624, 0, 0, 0), (@SGUID + 05, 625, 0, 0, 0),
(@SGUID + 06, 623, 0, 0, 0), (@SGUID + 06, 624, 0, 0, 0), (@SGUID + 06, 625, 0, 0, 0),
(@SGUID + 07, 623, 0, 0, 0), (@SGUID + 07, 624, 0, 0, 0), (@SGUID + 07, 625, 0, 0, 0),
(@SGUID + 08, 623, 0, 0, 0), (@SGUID + 08, 624, 0, 0, 0), (@SGUID + 08, 625, 0, 0, 0),
(@SGUID + 09, 623, 0, 0, 0), (@SGUID + 09, 624, 0, 0, 0), (@SGUID + 09, 625, 0, 0, 0),
(@SGUID + 10, 623, 0, 0, 0), (@SGUID + 10, 624, 0, 0, 0), (@SGUID + 10, 625, 0, 0, 0),
(@SGUID + 11, 623, 0, 0, 0), (@SGUID + 11, 624, 0, 0, 0), (@SGUID + 11, 625, 0, 0, 0),
(@SGUID + 12, 623, 0, 0, 0), (@SGUID + 12, 624, 0, 0, 0), (@SGUID + 12, 625, 0, 0, 0),
(@SGUID + 13, 623, 0, 0, 0), (@SGUID + 13, 624, 0, 0, 0), (@SGUID + 13, 625, 0, 0, 0),
(@SGUID + 14, 623, 0, 0, 0), (@SGUID + 14, 624, 0, 0, 0), (@SGUID + 14, 625, 0, 0, 0),
(@SGUID + 15, 623, 0, 0, 0), (@SGUID + 15, 624, 0, 0, 0), (@SGUID + 15, 625, 0, 0, 0),
(@SGUID + 16, 623, 0, 0, 0), (@SGUID + 16, 624, 0, 0, 0), (@SGUID + 16, 625, 0, 0, 0),
(@SGUID + 17, 623, 0, 0, 0), (@SGUID + 17, 624, 0, 0, 0), (@SGUID + 17, 625, 0, 0, 0),
(@SGUID + 18, 623, 0, 0, 0), (@SGUID + 18, 624, 0, 0, 0), (@SGUID + 18, 625, 0, 0, 0),
(@SGUID + 19, 623, 0, 0, 0), (@SGUID + 19, 624, 0, 0, 0), (@SGUID + 19, 625, 0, 0, 0),
(@SGUID + 20, 623, 0, 0, 0), (@SGUID + 20, 624, 0, 0, 0), (@SGUID + 20, 625, 0, 0, 0),
(@SGUID + 21, 623, 0, 0, 0), (@SGUID + 21, 624, 0, 0, 0), (@SGUID + 21, 625, 0, 0, 0),
(@SGUID + 22, 623, 0, 0, 0), (@SGUID + 22, 624, 0, 0, 0), (@SGUID + 22, 625, 0, 0, 0),
(@SGUID + 23, 626, 0, 0, 0);

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`, `StringId`) VALUES
(@SGUID + 00, 'Westfall - Skeletal Miner | Undead Excavator | Undead Dynamiter (1) Wandering 000', 0, 0, 0, 0, 0),
(@SGUID + 01, 'Westfall - Skeletal Miner | Undead Excavator | Undead Dynamiter (1) Wandering 001', 0, 0, 0, 0, 0),
(@SGUID + 02, 'Westfall - Skeletal Miner | Undead Excavator | Undead Dynamiter (1) Wandering 002', 0, 0, 0, 0, 0),
(@SGUID + 03, 'Westfall - Skeletal Miner | Undead Excavator | Undead Dynamiter (1) Wandering 003', 0, 0, 0, 0, 0),
(@SGUID + 04, 'Westfall - Skeletal Miner | Undead Excavator | Undead Dynamiter (1) Wandering 004', 0, 0, 0, 0, 0),
(@SGUID + 05, 'Westfall - Skeletal Miner | Undead Excavator | Undead Dynamiter (1) Wandering 005', 0, 0, 0, 0, 0),
(@SGUID + 06, 'Westfall - Skeletal Miner | Undead Excavator | Undead Dynamiter (1) Wandering 006', 0, 0, 0, 0, 0),
(@SGUID + 07, 'Westfall - Skeletal Miner | Undead Excavator | Undead Dynamiter (1) Wandering 007', 0, 0, 0, 0, 0),
(@SGUID + 08, 'Westfall - Skeletal Miner | Undead Excavator | Undead Dynamiter (1) Wandering 008', 0, 0, 0, 0, 0),
(@SGUID + 09, 'Westfall - Skeletal Miner | Undead Excavator | Undead Dynamiter (1) Wandering 009', 0, 0, 0, 0, 0),
(@SGUID + 10, 'Westfall - Skeletal Miner | Undead Excavator | Undead Dynamiter (1) Wandering 010', 0, 0, 0, 0, 0),
(@SGUID + 11, 'Westfall - Skeletal Miner | Undead Excavator | Undead Dynamiter (1) Wandering 011', 0, 0, 0, 0, 0),
(@SGUID + 12, 'Westfall - Skeletal Miner | Undead Excavator | Undead Dynamiter (1) Wandering 012', 0, 0, 0, 0, 0),
(@SGUID + 13, 'Westfall - Skeletal Miner | Undead Excavator | Undead Dynamiter (1) Wandering 013', 0, 0, 0, 0, 0),
(@SGUID + 14, 'Westfall - Skeletal Miner | Undead Excavator | Undead Dynamiter (1) Wandering 014', 0, 0, 0, 0, 0),
(@SGUID + 15, 'Westfall - Skeletal Miner | Undead Excavator | Undead Dynamiter (1) Wandering 015', 0, 0, 0, 0, 0),
(@SGUID + 16, 'Westfall - Skeletal Miner | Undead Excavator | Undead Dynamiter (1) Wandering 016', 0, 0, 0, 0, 0),
(@SGUID + 17, 'Westfall - Skeletal Miner | Undead Excavator | Undead Dynamiter (1) Wandering 017', 0, 0, 0, 0, 0),
(@SGUID + 18, 'Westfall - Skeletal Miner | Undead Excavator | Undead Dynamiter (1) Wandering 018', 0, 0, 0, 0, 0),
(@SGUID + 19, 'Westfall - Skeletal Miner | Undead Excavator | Undead Dynamiter (1) Wandering 019', 0, 0, 0, 0, 0),
(@SGUID + 20, 'Westfall - Skeletal Miner | Undead Excavator | Undead Dynamiter (1) Wandering 020', 0, 0, 0, 0, 0),
(@SGUID + 21, 'Westfall - Skeletal Miner | Undead Excavator | Undead Dynamiter (1) Wandering 021', 0, 0, 0, 0, 0),
(@SGUID + 22, 'Westfall - Skeletal Miner | Undead Excavator | Undead Dynamiter (1) Wandering 022', 0, 0, 0, 0, 0),
(@SGUID + 23, 'Westfall - Foreman Thistlenettle (1) Wandering 000', 0, 0, 0, 0, 0);

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`, `Chance`) VALUES
(@SGUID + 00, @CGUID + 00, 0, 0),
(@SGUID + 01, @CGUID + 01, 0, 0),
(@SGUID + 02, @CGUID + 02, 0, 0),
(@SGUID + 03, @CGUID + 03, 0, 0),
(@SGUID + 04, @CGUID + 04, 0, 0),
(@SGUID + 05, @CGUID + 05, 0, 0),
(@SGUID + 06, @CGUID + 06, 0, 0),
(@SGUID + 07, @CGUID + 07, 0, 0),
(@SGUID + 08, @CGUID + 08, 0, 0),
(@SGUID + 09, @CGUID + 09, 0, 0),
(@SGUID + 10, @CGUID + 10, 0, 0),
(@SGUID + 11, @CGUID + 11, 0, 0),
(@SGUID + 12, @CGUID + 12, 0, 0),
(@SGUID + 13, @CGUID + 13, 0, 0),
(@SGUID + 14, @CGUID + 14, 0, 0),
(@SGUID + 15, @CGUID + 15, 0, 0),
(@SGUID + 16, @CGUID + 16, 0, 0),
(@SGUID + 17, @CGUID + 17, 0, 0),
(@SGUID + 18, @CGUID + 18, 0, 0),
(@SGUID + 19, @CGUID + 19, 0, 0),
(@SGUID + 20, @CGUID + 20, 0, 0),
(@SGUID + 21, @CGUID + 21, 0, 0),
(@SGUID + 22, @CGUID + 22, 0, 0),
(@SGUID + 23, @CGUID + 23, 0, 0);

