
DELETE FROM `creature` WHERE (`guid` IN (2635, 2636, 2637, 2638, 2639, 2640, 2641, 2642, 2643, 2726, 2727, 2728, 2729, 2730, 2731, 2732, 2733, 2734, 2735, 2783, 2784, 2785, 2786, 3890));
DELETE FROM `creature_movement` WHERE (`id` IN (2727, 2786));

SET @CGUID := 140330;
SET @SGUID := 296;

INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
(@CGUID + 000, 0, 0, 1, -11503.7080078125, -2657.099121093750, 11.81024265289306640, 3.128424882888793945, 300, 300, 00, 4), -- Blasted Lands - Shadowsworn Enforcer | Shadowsworn Warlock | Shadowsworn Dreadweaver (1) Patrol 000
(@CGUID + 001, 0, 0, 1, -11315.3710937500, -2523.275634765625, 92.72270965576171875, 5.971440792083740234, 300, 300, 00, 4), -- Blasted Lands - Shadowsworn Enforcer | Shadowsworn Warlock | Shadowsworn Dreadweaver (1) Patrol 001
(@CGUID + 002, 0, 0, 1, -11487.0498046875, -2686.600341796875, 6.663272380828857421, 0.638427257537841796, 300, 300, 03, 1), -- Blasted Lands - Shadowsworn Enforcer | Shadowsworn Warlock | Shadowsworn Dreadweaver (1) Wandering 000
(@CGUID + 003, 0, 0, 1, -11291.3798828125, -2544.768798828125, 97.11888885498046875, 2.608599185943603515, 300, 300, 03, 1), -- Blasted Lands - Shadowsworn Enforcer | Shadowsworn Warlock | Shadowsworn Dreadweaver (1) Wandering 001
(@CGUID + 004, 0, 0, 1, -11249.0634765625, -2560.764160156250, 97.12004852294921875, 0.475604474544525146, 300, 300, 03, 1), -- Blasted Lands - Shadowsworn Enforcer | Shadowsworn Warlock | Shadowsworn Dreadweaver (1) Wandering 002
(@CGUID + 005, 0, 0, 1, -11263.7626953125, -2545.760253906250, 97.14157867431640625, 0.314159274101257324, 300, 300, 03, 1), -- Blasted Lands - Shadowsworn Enforcer | Shadowsworn Warlock | Shadowsworn Dreadweaver (1) Wandering 003
(@CGUID + 006, 0, 0, 1, -11267.2568359375, -2578.242431640625, 97.08270263671875000, 3.643196821212768554, 300, 300, 03, 1), -- Blasted Lands - Shadowsworn Enforcer | Shadowsworn Warlock | Shadowsworn Dreadweaver (1) Wandering 004
(@CGUID + 007, 0, 0, 1, -11307.2851562500, -2554.219238281250, 97.11151885986328125, 4.146343231201171875, 300, 300, 03, 1), -- Blasted Lands - Shadowsworn Enforcer | Shadowsworn Warlock | Shadowsworn Dreadweaver (1) Wandering 005
(@CGUID + 008, 0, 0, 1, -11291.2021484375, -2554.540771484375, 97.11364746093750000, 1.134464025497436523, 300, 300, 03, 1), -- Blasted Lands - Shadowsworn Enforcer | Shadowsworn Warlock | Shadowsworn Dreadweaver (1) Wandering 006
(@CGUID + 009, 0, 0, 1, -11499.9121093750, -2679.500000000000, 7.642656326293945312, 0.337039887905120849, 300, 300, 03, 1), -- Blasted Lands - Shadowsworn Enforcer | Shadowsworn Warlock | Shadowsworn Dreadweaver (1) Wandering 007
(@CGUID + 010, 0, 0, 1, -11261.5683593750, -2525.524902343750, 97.12103271484375000, 5.758703708648681640, 300, 300, 03, 1), -- Blasted Lands - Shadowsworn Enforcer | Shadowsworn Warlock | Shadowsworn Dreadweaver (1) Wandering 008
(@CGUID + 011, 0, 0, 1, -11275.2392578125, -2560.149414062500, 97.05908203125000000, 3.663902044296264648, 300, 300, 03, 1), -- Blasted Lands - Shadowsworn Enforcer | Shadowsworn Warlock | Shadowsworn Dreadweaver (1) Wandering 009
(@CGUID + 012, 0, 0, 1, -11251.1181640625, -2531.280517578125, 97.12152862548828125, 2.210228681564331054, 300, 300, 03, 1), -- Blasted Lands - Shadowsworn Enforcer | Shadowsworn Warlock | Shadowsworn Dreadweaver (1) Wandering 010
(@CGUID + 013, 0, 0, 1, -11263.2089843750, -2559.830566406250, 97.19396972656250000, 5.456665515899658203, 300, 300, 03, 1), -- Blasted Lands - Shadowsworn Enforcer | Shadowsworn Warlock | Shadowsworn Dreadweaver (1) Wandering 011
(@CGUID + 014, 0, 0, 1, -11275.3349609375, -2534.325195312500, 97.18435668945312500, 2.365579128265380859, 300, 300, 03, 1), -- Blasted Lands - Shadowsworn Enforcer | Shadowsworn Warlock | Shadowsworn Dreadweaver (1) Wandering 012
(@CGUID + 015, 0, 0, 1, -11248.6738281250, -2602.962158203125, 93.62612152099609375, 0.580654263496398925, 300, 300, 10, 1), -- Blasted Lands - Shadowsworn Enforcer | Shadowsworn Warlock | Shadowsworn Dreadweaver (1) Wandering 013
(@CGUID + 016, 0, 0, 1, -11300.9931640625, -2606.347900390625, 86.64422607421875000, 3.740213155746459960, 300, 300, 10, 1), -- Blasted Lands - Shadowsworn Enforcer | Shadowsworn Warlock | Shadowsworn Dreadweaver (1) Wandering 014
(@CGUID + 017, 0, 0, 1, -11340.7119140625, -2555.153076171875, 87.01223754882812500, 1.099617719650268554, 300, 300, 10, 1), -- Blasted Lands - Shadowsworn Enforcer | Shadowsworn Warlock | Shadowsworn Dreadweaver (1) Wandering 015
(@CGUID + 018, 0, 0, 1, -11512.9169921875, -2714.385498046875, 3.102056264877319335, 1.856806397438049316, 300, 300, 20, 1), -- Blasted Lands - Shadowsworn Enforcer | Shadowsworn Warlock | Shadowsworn Dreadweaver (1) Wandering 016
(@CGUID + 019, 0, 0, 1, -11453.4814453125, -2651.247314453125, 20.65976142883300781, 4.927828788757324218, 300, 300, 20, 1), -- Blasted Lands - Shadowsworn Enforcer | Shadowsworn Warlock | Shadowsworn Dreadweaver (1) Wandering 017
(@CGUID + 020, 0, 0, 1, -11451.2714843750, -2714.523193359375, 5.993039608001708984, 2.175625324249267578, 300, 300, 20, 1), -- Blasted Lands - Shadowsworn Enforcer | Shadowsworn Warlock | Shadowsworn Dreadweaver (1) Wandering 018
(@CGUID + 021, 0, 0, 1, -11453.8017578125, -2684.041259765625, 8.698868751525878906, 4.277317523956298828, 300, 300, 20, 1), -- Blasted Lands - Shadowsworn Enforcer | Shadowsworn Warlock | Shadowsworn Dreadweaver (1) Wandering 019
(@CGUID + 022, 0, 0, 1, -11515.3681640625, -2685.233642578125, 7.918492317199707031, 0.140774533152580261, 300, 300, 20, 1), -- Blasted Lands - Shadowsworn Enforcer | Shadowsworn Warlock | Shadowsworn Dreadweaver (1) Wandering 020
(@CGUID + 023, 0, 0, 1, -11483.4619140625, -2715.281005859375, 0.254605323076248168, 3.708266735076904296, 300, 300, 20, 1); -- Blasted Lands - Shadowsworn Enforcer | Shadowsworn Warlock | Shadowsworn Dreadweaver (1) Wandering 021

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`, `StringId`) VALUES
(@SGUID + 000, 'Blasted Lands - Shadowsworn Enforcer | Shadowsworn Warlock | Shadowsworn Dreadweaver (1) Patrol 000', 0, 0, 0, 0, 0),
(@SGUID + 001, 'Blasted Lands - Shadowsworn Enforcer | Shadowsworn Warlock | Shadowsworn Dreadweaver (1) Patrol 001', 0, 0, 0, 0, 0),
(@SGUID + 002, 'Blasted Lands - Shadowsworn Enforcer | Shadowsworn Warlock | Shadowsworn Dreadweaver (1) Wandering 000', 0, 0, 0, 0, 0),
(@SGUID + 003, 'Blasted Lands - Shadowsworn Enforcer | Shadowsworn Warlock | Shadowsworn Dreadweaver (1) Wandering 001', 0, 0, 0, 0, 0),
(@SGUID + 004, 'Blasted Lands - Shadowsworn Enforcer | Shadowsworn Warlock | Shadowsworn Dreadweaver (1) Wandering 002', 0, 0, 0, 0, 0),
(@SGUID + 005, 'Blasted Lands - Shadowsworn Enforcer | Shadowsworn Warlock | Shadowsworn Dreadweaver (1) Wandering 003', 0, 0, 0, 0, 0),
(@SGUID + 006, 'Blasted Lands - Shadowsworn Enforcer | Shadowsworn Warlock | Shadowsworn Dreadweaver (1) Wandering 004', 0, 0, 0, 0, 0),
(@SGUID + 007, 'Blasted Lands - Shadowsworn Enforcer | Shadowsworn Warlock | Shadowsworn Dreadweaver (1) Wandering 005', 0, 0, 0, 0, 0),
(@SGUID + 008, 'Blasted Lands - Shadowsworn Enforcer | Shadowsworn Warlock | Shadowsworn Dreadweaver (1) Wandering 006', 0, 0, 0, 0, 0),
(@SGUID + 009, 'Blasted Lands - Shadowsworn Enforcer | Shadowsworn Warlock | Shadowsworn Dreadweaver (1) Wandering 007', 0, 0, 0, 0, 0),
(@SGUID + 010, 'Blasted Lands - Shadowsworn Enforcer | Shadowsworn Warlock | Shadowsworn Dreadweaver (1) Wandering 008', 0, 0, 0, 0, 0),
(@SGUID + 011, 'Blasted Lands - Shadowsworn Enforcer | Shadowsworn Warlock | Shadowsworn Dreadweaver (1) Wandering 009', 0, 0, 0, 0, 0),
(@SGUID + 012, 'Blasted Lands - Shadowsworn Enforcer | Shadowsworn Warlock | Shadowsworn Dreadweaver (1) Wandering 010', 0, 0, 0, 0, 0),
(@SGUID + 013, 'Blasted Lands - Shadowsworn Enforcer | Shadowsworn Warlock | Shadowsworn Dreadweaver (1) Wandering 011', 0, 0, 0, 0, 0),
(@SGUID + 014, 'Blasted Lands - Shadowsworn Enforcer | Shadowsworn Warlock | Shadowsworn Dreadweaver (1) Wandering 012', 0, 0, 0, 0, 0),
(@SGUID + 015, 'Blasted Lands - Shadowsworn Enforcer | Shadowsworn Warlock | Shadowsworn Dreadweaver (1) Wandering 013', 0, 0, 0, 0, 0),
(@SGUID + 016, 'Blasted Lands - Shadowsworn Enforcer | Shadowsworn Warlock | Shadowsworn Dreadweaver (1) Wandering 014', 0, 0, 0, 0, 0),
(@SGUID + 017, 'Blasted Lands - Shadowsworn Enforcer | Shadowsworn Warlock | Shadowsworn Dreadweaver (1) Wandering 015', 0, 0, 0, 0, 0),
(@SGUID + 018, 'Blasted Lands - Shadowsworn Enforcer | Shadowsworn Warlock | Shadowsworn Dreadweaver (1) Wandering 016', 0, 0, 0, 0, 0),
(@SGUID + 019, 'Blasted Lands - Shadowsworn Enforcer | Shadowsworn Warlock | Shadowsworn Dreadweaver (1) Wandering 017', 0, 0, 0, 0, 0),
(@SGUID + 020, 'Blasted Lands - Shadowsworn Enforcer | Shadowsworn Warlock | Shadowsworn Dreadweaver (1) Wandering 018', 0, 0, 0, 0, 0),
(@SGUID + 021, 'Blasted Lands - Shadowsworn Enforcer | Shadowsworn Warlock | Shadowsworn Dreadweaver (1) Wandering 019', 0, 0, 0, 0, 0),
(@SGUID + 022, 'Blasted Lands - Shadowsworn Enforcer | Shadowsworn Warlock | Shadowsworn Dreadweaver (1) Wandering 020', 0, 0, 0, 0, 0),
(@SGUID + 023, 'Blasted Lands - Shadowsworn Enforcer | Shadowsworn Warlock | Shadowsworn Dreadweaver (1) Wandering 021', 0, 0, 0, 0, 0);

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
(@SGUID + 021, @CGUID + 021, 0, 0),
(@SGUID + 022, @CGUID + 022, 0, 0),
(@SGUID + 023, @CGUID + 023, 0, 0);

INSERT INTO `spawn_group_entry` (`Id`, `Entry`, `MinCount`, `MaxCount`, `Chance`) VALUES
(@SGUID + 000, 6007, 0, 0, 0), (@SGUID + 000, 6008, 0, 0, 0), (@SGUID + 000, 6009, 0, 0, 0),
(@SGUID + 001, 6007, 0, 0, 0), (@SGUID + 001, 6008, 0, 0, 0), (@SGUID + 001, 6009, 0, 0, 0),
(@SGUID + 002, 6007, 0, 0, 0), (@SGUID + 002, 6008, 0, 0, 0), (@SGUID + 002, 6009, 0, 0, 0),
(@SGUID + 003, 6007, 0, 0, 0), (@SGUID + 003, 6008, 0, 0, 0), (@SGUID + 003, 6009, 0, 0, 0),
(@SGUID + 004, 6007, 0, 0, 0), (@SGUID + 004, 6008, 0, 0, 0), (@SGUID + 004, 6009, 0, 0, 0),
(@SGUID + 005, 6007, 0, 0, 0), (@SGUID + 005, 6008, 0, 0, 0), (@SGUID + 005, 6009, 0, 0, 0),
(@SGUID + 006, 6007, 0, 0, 0), (@SGUID + 006, 6008, 0, 0, 0), (@SGUID + 006, 6009, 0, 0, 0),
(@SGUID + 007, 6007, 0, 0, 0), (@SGUID + 007, 6008, 0, 0, 0), (@SGUID + 007, 6009, 0, 0, 0),
(@SGUID + 008, 6007, 0, 0, 0), (@SGUID + 008, 6008, 0, 0, 0), (@SGUID + 008, 6009, 0, 0, 0),
(@SGUID + 009, 6007, 0, 0, 0), (@SGUID + 009, 6008, 0, 0, 0), (@SGUID + 009, 6009, 0, 0, 0),
(@SGUID + 010, 6007, 0, 0, 0), (@SGUID + 010, 6008, 0, 0, 0), (@SGUID + 010, 6009, 0, 0, 0),
(@SGUID + 011, 6007, 0, 0, 0), (@SGUID + 011, 6008, 0, 0, 0), (@SGUID + 011, 6009, 0, 0, 0),
(@SGUID + 012, 6007, 0, 0, 0), (@SGUID + 012, 6008, 0, 0, 0), (@SGUID + 012, 6009, 0, 0, 0),
(@SGUID + 013, 6007, 0, 0, 0), (@SGUID + 013, 6008, 0, 0, 0), (@SGUID + 013, 6009, 0, 0, 0),
(@SGUID + 014, 6007, 0, 0, 0), (@SGUID + 014, 6008, 0, 0, 0), (@SGUID + 014, 6009, 0, 0, 0),
(@SGUID + 015, 6007, 0, 0, 0), (@SGUID + 015, 6008, 0, 0, 0), (@SGUID + 015, 6009, 0, 0, 0),
(@SGUID + 016, 6007, 0, 0, 0), (@SGUID + 016, 6008, 0, 0, 0), (@SGUID + 016, 6009, 0, 0, 0),
(@SGUID + 017, 6007, 0, 0, 0), (@SGUID + 017, 6008, 0, 0, 0), (@SGUID + 017, 6009, 0, 0, 0),
(@SGUID + 018, 6007, 0, 0, 0), (@SGUID + 018, 6008, 0, 0, 0), (@SGUID + 018, 6009, 0, 0, 0),
(@SGUID + 019, 6007, 0, 0, 0), (@SGUID + 019, 6008, 0, 0, 0), (@SGUID + 019, 6009, 0, 0, 0),
(@SGUID + 020, 6007, 0, 0, 0), (@SGUID + 020, 6008, 0, 0, 0), (@SGUID + 020, 6009, 0, 0, 0),
(@SGUID + 021, 6007, 0, 0, 0), (@SGUID + 021, 6008, 0, 0, 0), (@SGUID + 021, 6009, 0, 0, 0),
(@SGUID + 022, 6007, 0, 0, 0), (@SGUID + 022, 6008, 0, 0, 0), (@SGUID + 022, 6009, 0, 0, 0),
(@SGUID + 023, 6007, 0, 0, 0), (@SGUID + 023, 6008, 0, 0, 0), (@SGUID + 023, 6009, 0, 0, 0);

INSERT INTO `creature_movement` (`Id`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(@CGUID + 000, 01, -11504.9130859375, -2657.083251953125, 11.67189788818359375, 100, 0, 0),
(@CGUID + 000, 02, -11490.5263671875, -2671.218750000000, 8.631144523620605468, 100, 0, 0),
(@CGUID + 000, 03, -11474.1777343750, -2674.790771484375, 12.56571483612060546, 100, 0, 0),
(@CGUID + 000, 04, -11459.9042968750, -2664.265380859375, 13.64940452575683593, 100, 0, 0),
(@CGUID + 000, 05, -11448.9091796875, -2641.996582031250, 25.37254905700683593, 100, 0, 0),
(@CGUID + 000, 06, -11429.6396484375, -2625.141845703125, 40.14725875854492187, 100, 0, 0),
(@CGUID + 000, 07, -11417.0585937500, -2607.711914062500, 51.57889938354492187, 100, 0, 0),
(@CGUID + 000, 08, -11398.8632812500, -2590.661376953125, 62.92726135253906250, 100, 0, 0),
(@CGUID + 000, 09, -11370.6308593750, -2570.017578125000, 77.21485900878906250, 100, 0, 0),
(@CGUID + 000, 10, -11354.4013671875, -2557.983642578125, 83.06521606445312500, 100, 0, 0),
(@CGUID + 000, 11, -11335.0078125000, -2554.557128906250, 88.33084106445312500, 100, 0, 0),
(@CGUID + 000, 12, -11315.4609375000, -2552.530029296875, 96.43780517578125000, 100, 0, 0);

INSERT INTO `creature_movement` (`Id`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(@CGUID + 001, 01, -11314.6513671875, -2523.507568359375, 92.59433746337890625, 100, 0, 0),
(@CGUID + 001, 02, -11325.4238281250, -2532.449218750000, 91.10288238525390625, 100, 0, 0),
(@CGUID + 001, 03, -11331.1240234375, -2542.866210937500, 89.30853271484375000, 100, 0, 0),
(@CGUID + 001, 04, -11339.1894531250, -2547.789794921875, 87.27981567382812500, 100, 0, 0),
(@CGUID + 001, 05, -11337.5849609375, -2558.464355468750, 87.86892700195312500, 100, 0, 0),
(@CGUID + 001, 06, -11326.7666015625, -2568.189697265625, 90.27083587646484375, 100, 0, 0),
(@CGUID + 001, 07, -11312.3662109375, -2578.389648437500, 89.98714447021484375, 100, 0, 0),
(@CGUID + 001, 08, -11303.7119140625, -2589.522705078125, 89.99666595458984375, 100, 0, 0),
(@CGUID + 001, 09, -11291.2539062500, -2598.242187500000, 90.13875579833984375, 100, 0, 0),
(@CGUID + 001, 10, -11285.1718750000, -2604.886718750000, 95.40953063964843750, 100, 0, 0),
(@CGUID + 001, 11, -11277.7001953125, -2602.655029296875, 98.95249938964843750, 100, 0, 0),
(@CGUID + 001, 12, -11269.3564453125, -2606.483886718750, 102.5113372802734375, 100, 0, 0),
(@CGUID + 001, 13, -11265.1279296875, -2612.245361328125, 105.4787521362304687, 100, 0, 0),
(@CGUID + 001, 14, -11257.0546875000, -2610.777099609375, 100.5610275268554687, 100, 0, 0),
(@CGUID + 001, 15, -11245.8916015625, -2604.381835937500, 93.46410369873046875, 100, 0, 0),
(@CGUID + 001, 16, -11234.7539062500, -2593.780029296875, 96.29109191894531250, 100, 0, 0),
(@CGUID + 001, 17, -11228.1494140625, -2584.216064453125, 101.9364471435546875, 100, 0, 0),
(@CGUID + 001, 18, -11217.1669921875, -2575.010986328125, 93.00309753417968750, 100, 0, 0),
(@CGUID + 001, 19, -11219.6816406250, -2566.284667968750, 92.88053894042968750, 100, 0, 0),
(@CGUID + 001, 20, -11221.9726562500, -2557.177978515625, 94.13883972167968750, 100, 0, 0),
(@CGUID + 001, 21, -11215.9707031250, -2549.224609375000, 99.94767761230468750, 100, 0, 0);
