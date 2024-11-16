SET @CGUID := 140410;
SET @SGUID := 451;

DELETE FROM `creature` WHERE `id` IN (5985, 5991, 5993, 8675); -- 29

INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
(@CGUID+00, 0, 0, 1, -11815.6552734375, -2952.1240234375, 7.614311695098876953, 5.580813884735107421, 300, 300, 45, 1), -- Blasted Lands - Redstone Crystalhide | Helboar | Felbeast (1) Wandering 000
(@CGUID+01, 0, 0, 1, -11782.9423828125, -2983.3896484375, 11.46751689910888671, 2.194051265716552734, 300, 300, 45, 1), -- Blasted Lands - Redstone Crystalhide | Helboar | Felbeast (1) Wandering 001
(@CGUID+02, 0, 0, 1, -11846.501953125, -2984.885498046875, 12.35251331329345703, 4.052437782287597656, 300, 300, 45, 1), -- Blasted Lands - Redstone Crystalhide | Helboar | Felbeast (1) Wandering 002
(@CGUID+03, 0, 0, 1, -11752.861328125, -2949.29736328125, 7.974759578704833984, 2.121683597564697265, 300, 300, 45, 1), -- Blasted Lands - Redstone Crystalhide | Helboar | Felbeast (1) Wandering 003
(@CGUID+04, 0, 0, 1, -11716.2236328125, -2783.46875, 8.30498504638671875, 0.0, 300, 300, 45, 1), -- Blasted Lands - Redstone Crystalhide | Helboar | Felbeast (1) Wandering 004
(@CGUID+05, 0, 0, 1, -11650.056640625, -2782.9228515625, 6.174731254577636718, 3.348564863204956054, 300, 300, 45, 1), -- Blasted Lands - Redstone Crystalhide | Helboar | Felbeast (1) Wandering 005
(@CGUID+06, 0, 0, 1, -11684.650390625, -2815.63671875, 4.874619483947753906, 5.454936504364013671, 300, 300, 45, 1), -- Blasted Lands - Redstone Crystalhide | Helboar | Felbeast (1) Wandering 006
(@CGUID+07, 0, 0, 1, -11483.455078125, -2782.6796875, -0.97948068380355834, 5.222332477569580078, 300, 300, 45, 1), -- Blasted Lands - Redstone Crystalhide | Helboar | Felbeast (1) Wandering 007
(@CGUID+08, 0, 0, 1, -11415.1103515625, -2784.333251953125, 1.574178338050842285, 4.627970695495605468, 300, 300, 45, 1), -- Blasted Lands - Redstone Crystalhide | Helboar | Felbeast (1) Wandering 008
(@CGUID+09, 0, 0, 1, -11381.96875, -2750.50146484375, 5.938653469085693359, 6.091254711151123046, 300, 300, 45, 1), -- Blasted Lands - Redstone Crystalhide | Helboar | Felbeast (1) Wandering 009
(@CGUID+10, 0, 0, 1, -11349.9892578125, -2784.985595703125, 7.015732288360595703, 2.34022688865661621, 300, 300, 45, 1), -- Blasted Lands - Redstone Crystalhide | Helboar | Felbeast (1) Wandering 010
(@CGUID+11, 0, 0, 1, -11318.4189453125, -2746.01416015625, 9.214662551879882812, 0.984575152397155761, 300, 300, 45, 1), -- Blasted Lands - Redstone Crystalhide | Helboar | Felbeast (1) Wandering 011
(@CGUID+12, 0, 0, 1, -11350.189453125, -2849.298095703125, 7.740593433380126953, 3.501278400421142578, 300, 300, 45, 1), -- Blasted Lands - Redstone Crystalhide | Helboar | Felbeast (1) Wandering 012
(@CGUID+13, 0, 0, 1, -11384.625, -2817.575439453125, -2.24922084808349609, 1.492516994476318359, 300, 300, 45, 1), -- Blasted Lands - Redstone Crystalhide | Helboar | Felbeast (1) Wandering 013
(@CGUID+14, 0, 0, 1, -11417.4638671875, -2851.703125, 0.802566289901733398, 3.894521236419677734, 300, 300, 45, 1), -- Blasted Lands - Redstone Crystalhide | Helboar | Felbeast (1) Wandering 014
(@CGUID+15, 0, 0, 1, -11382.6279296875, -2883.592041015625, 1.466396331787109375, 5.65961456298828125, 300, 300, 45, 1), -- Blasted Lands - Redstone Crystalhide | Helboar | Felbeast (1) Wandering 015
(@CGUID+16, 0, 0, 1, -11418.9970703125, -2981.241455078125, 0.687047302722930908, 4.45518350601196289, 300, 300, 45, 1), -- Blasted Lands - Redstone Crystalhide | Helboar | Felbeast (1) Wandering 016
(@CGUID+17, 0, 0, 1, -11416.23046875, -2915.838623046875, 3.118114233016967773, 1.015328288078308105, 300, 300, 45, 1), -- Blasted Lands - Redstone Crystalhide | Helboar | Felbeast (1) Wandering 017
(@CGUID+18, 0, 0, 1, -11382.8583984375, -2949.1923828125, 3.194654226303100585, 0.361852496862411499, 300, 300, 45, 1), -- Blasted Lands - Redstone Crystalhide | Helboar | Felbeast (1) Wandering 018
(@CGUID+19, 0, 0, 1, -11462.0400390625, -2993.319091796875, 6.11200571060180664, 0.6902848482131958, 300, 300, 45, 1), -- Blasted Lands - Redstone Crystalhide | Helboar | Felbeast (1) Wandering 019
(@CGUID+20, 0, 0, 1, -11447.53125, -2950.210205078125, 6.283046722412109375, 5.174125194549560546, 300, 300, 45, 1), -- Blasted Lands - Redstone Crystalhide | Helboar | Felbeast (1) Wandering 020
(@CGUID+21, 0, 0, 1, -11418.953125, -3045.7158203125, 0.511967301368713378, 2.359026193618774414, 300, 300, 45, 1), -- Blasted Lands - Redstone Crystalhide | Helboar | Felbeast (1) Wandering 021
(@CGUID+22, 0, 0, 1, -11383.1845703125, -3016.427490234375, -4.34965944290161132, 4.253063201904296875, 300, 300, 45, 1), -- Blasted Lands - Redstone Crystalhide | Helboar | Felbeast (1) Wandering 022
(@CGUID+23, 0, 0, 1, -11453.4111328125, -3018.20458984375, 2.821009159088134765, 0.938336431980133056, 300, 300, 45, 1), -- Blasted Lands - Redstone Crystalhide | Helboar | Felbeast (1) Wandering 023
(@CGUID+24, 0, 0, 1, -11517.455078125, -3084.67919921875, -1.76611268520355224, 2.28461623191833496, 300, 300, 45, 1), -- Blasted Lands - Redstone Crystalhide | Helboar | Felbeast (1) Wandering 024
(@CGUID+25, 0, 0, 1, -11515.9072265625, -3016.358642578125, 10.97054481506347656, 3.5264739990234375, 300, 300, 45, 1), -- Blasted Lands - Redstone Crystalhide | Helboar | Felbeast (1) Wandering 025
(@CGUID+26, 0, 0, 1, -11483.0517578125, -3049.45361328125, 1.082958340644836425, 4.284347057342529296, 300, 300, 45, 1); -- Blasted Lands - Redstone Crystalhide | Helboar | Felbeast (1) Wandering 026

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`, `StringId`) VALUES
(@SGUID + 000, 'Blasted Lands - Redstone Crystalhide | Helboar | Felbeast (1) Wandering 000', 0, 0, 0, 0, 0),
(@SGUID + 001, 'Blasted Lands - Redstone Crystalhide | Helboar | Felbeast (1) Wandering 001', 0, 0, 0, 0, 0),
(@SGUID + 002, 'Blasted Lands - Redstone Crystalhide | Helboar | Felbeast (1) Wandering 002', 0, 0, 0, 0, 0),
(@SGUID + 003, 'Blasted Lands - Redstone Crystalhide | Helboar | Felbeast (1) Wandering 003', 0, 0, 0, 0, 0),
(@SGUID + 004, 'Blasted Lands - Redstone Crystalhide | Helboar | Felbeast (1) Wandering 004', 0, 0, 0, 0, 0),
(@SGUID + 005, 'Blasted Lands - Redstone Crystalhide | Helboar | Felbeast (1) Wandering 005', 0, 0, 0, 0, 0),
(@SGUID + 006, 'Blasted Lands - Redstone Crystalhide | Helboar | Felbeast (1) Wandering 006', 0, 0, 0, 0, 0),
(@SGUID + 007, 'Blasted Lands - Redstone Crystalhide | Helboar | Felbeast (1) Wandering 007', 0, 0, 0, 0, 0),
(@SGUID + 008, 'Blasted Lands - Redstone Crystalhide | Helboar | Felbeast (1) Wandering 008', 0, 0, 0, 0, 0),
(@SGUID + 009, 'Blasted Lands - Redstone Crystalhide | Helboar | Felbeast (1) Wandering 009', 0, 0, 0, 0, 0),
(@SGUID + 010, 'Blasted Lands - Redstone Crystalhide | Helboar | Felbeast (1) Wandering 010', 0, 0, 0, 0, 0),
(@SGUID + 011, 'Blasted Lands - Redstone Crystalhide | Helboar | Felbeast (1) Wandering 011', 0, 0, 0, 0, 0),
(@SGUID + 012, 'Blasted Lands - Redstone Crystalhide | Helboar | Felbeast (1) Wandering 012', 0, 0, 0, 0, 0),
(@SGUID + 013, 'Blasted Lands - Redstone Crystalhide | Helboar | Felbeast (1) Wandering 013', 0, 0, 0, 0, 0),
(@SGUID + 014, 'Blasted Lands - Redstone Crystalhide | Helboar | Felbeast (1) Wandering 014', 0, 0, 0, 0, 0),
(@SGUID + 015, 'Blasted Lands - Redstone Crystalhide | Helboar | Felbeast (1) Wandering 015', 0, 0, 0, 0, 0),
(@SGUID + 016, 'Blasted Lands - Redstone Crystalhide | Helboar | Felbeast (1) Wandering 016', 0, 0, 0, 0, 0),
(@SGUID + 017, 'Blasted Lands - Redstone Crystalhide | Helboar | Felbeast (1) Wandering 017', 0, 0, 0, 0, 0),
(@SGUID + 018, 'Blasted Lands - Redstone Crystalhide | Helboar | Felbeast (1) Wandering 018', 0, 0, 0, 0, 0),
(@SGUID + 019, 'Blasted Lands - Redstone Crystalhide | Helboar | Felbeast (1) Wandering 019', 0, 0, 0, 0, 0),
(@SGUID + 020, 'Blasted Lands - Redstone Crystalhide | Helboar | Felbeast (1) Wandering 020', 0, 0, 0, 0, 0),
(@SGUID + 021, 'Blasted Lands - Redstone Crystalhide | Helboar | Felbeast (1) Wandering 021', 0, 0, 0, 0, 0),
(@SGUID + 022, 'Blasted Lands - Redstone Crystalhide | Helboar | Felbeast (1) Wandering 022', 0, 0, 0, 0, 0),
(@SGUID + 023, 'Blasted Lands - Redstone Crystalhide | Helboar | Felbeast (1) Wandering 023', 0, 0, 0, 0, 0),
(@SGUID + 024, 'Blasted Lands - Redstone Crystalhide | Helboar | Felbeast (1) Wandering 024', 0, 0, 0, 0, 0),
(@SGUID + 025, 'Blasted Lands - Redstone Crystalhide | Helboar | Felbeast (1) Wandering 025', 0, 0, 0, 0, 0),
(@SGUID + 026, 'Blasted Lands - Redstone Crystalhide | Helboar | Felbeast (1) Wandering 026', 0, 0, 0, 0, 0);

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
(@SGUID + 023, @CGUID + 023, 0, 0),
(@SGUID + 024, @CGUID + 024, 0, 0),
(@SGUID + 025, @CGUID + 025, 0, 0),
(@SGUID + 026, @CGUID + 026, 0, 0);

INSERT INTO `spawn_group_entry` (`Id`, `Entry`, `MinCount`, `MaxCount`, `Chance`) VALUES
(@SGUID + 000, 5991, 0, 0, 0), (@SGUID + 000, 5993, 0, 0, 0), (@SGUID + 000, 8675, 0, 0, 0),
(@SGUID + 001, 5991, 0, 0, 0), (@SGUID + 001, 5993, 0, 0, 0), (@SGUID + 001, 8675, 0, 0, 0),
(@SGUID + 002, 5991, 0, 0, 0), (@SGUID + 002, 5993, 0, 0, 0), (@SGUID + 002, 8675, 0, 0, 0),
(@SGUID + 003, 5991, 0, 0, 0), (@SGUID + 003, 5993, 0, 0, 0), (@SGUID + 003, 8675, 0, 0, 0),
(@SGUID + 004, 5991, 0, 0, 0), (@SGUID + 004, 5993, 0, 0, 0), (@SGUID + 004, 8675, 0, 0, 0),
(@SGUID + 005, 5991, 0, 0, 0), (@SGUID + 005, 5993, 0, 0, 0), (@SGUID + 005, 8675, 0, 0, 0),
(@SGUID + 006, 5991, 0, 0, 0), (@SGUID + 006, 5993, 0, 0, 0), (@SGUID + 006, 8675, 0, 0, 0),
(@SGUID + 007, 5991, 0, 0, 0), (@SGUID + 007, 5993, 0, 0, 0), (@SGUID + 007, 8675, 0, 0, 0),
(@SGUID + 008, 5991, 0, 0, 0), (@SGUID + 008, 5993, 0, 0, 0), (@SGUID + 008, 8675, 0, 0, 0),
(@SGUID + 009, 5991, 0, 0, 0), (@SGUID + 009, 5993, 0, 0, 0), (@SGUID + 009, 8675, 0, 0, 0),
(@SGUID + 010, 5991, 0, 0, 0), (@SGUID + 010, 5993, 0, 0, 0), (@SGUID + 010, 8675, 0, 0, 0),
(@SGUID + 011, 5991, 0, 0, 0), (@SGUID + 011, 5993, 0, 0, 0), (@SGUID + 011, 8675, 0, 0, 0),
(@SGUID + 012, 5991, 0, 0, 0), (@SGUID + 012, 5993, 0, 0, 0), (@SGUID + 012, 8675, 0, 0, 0),
(@SGUID + 013, 5991, 0, 0, 0), (@SGUID + 013, 5993, 0, 0, 0), (@SGUID + 013, 8675, 0, 0, 0),
(@SGUID + 014, 5991, 0, 0, 0), (@SGUID + 014, 5993, 0, 0, 0), (@SGUID + 014, 8675, 0, 0, 0),
(@SGUID + 015, 5991, 0, 0, 0), (@SGUID + 015, 5993, 0, 0, 0), (@SGUID + 015, 8675, 0, 0, 0),
(@SGUID + 016, 5991, 0, 0, 0), (@SGUID + 016, 5993, 0, 0, 0), (@SGUID + 016, 8675, 0, 0, 0),
(@SGUID + 017, 5991, 0, 0, 0), (@SGUID + 017, 5993, 0, 0, 0), (@SGUID + 017, 8675, 0, 0, 0),
(@SGUID + 018, 5991, 0, 0, 0), (@SGUID + 018, 5993, 0, 0, 0), (@SGUID + 018, 8675, 0, 0, 0),
(@SGUID + 019, 5991, 0, 0, 0), (@SGUID + 019, 5993, 0, 0, 0), (@SGUID + 019, 8675, 0, 0, 0),
(@SGUID + 020, 5991, 0, 0, 0), (@SGUID + 020, 5993, 0, 0, 0), (@SGUID + 020, 8675, 0, 0, 0),
(@SGUID + 021, 5991, 0, 0, 0), (@SGUID + 021, 5993, 0, 0, 0), (@SGUID + 021, 8675, 0, 0, 0),
(@SGUID + 022, 5991, 0, 0, 0), (@SGUID + 022, 5993, 0, 0, 0), (@SGUID + 022, 8675, 0, 0, 0),
(@SGUID + 023, 5991, 0, 0, 0), (@SGUID + 023, 5993, 0, 0, 0), (@SGUID + 023, 8675, 0, 0, 0),
(@SGUID + 024, 5991, 0, 0, 0), (@SGUID + 024, 5993, 0, 0, 0), (@SGUID + 024, 8675, 0, 0, 0),
(@SGUID + 025, 5991, 0, 0, 0), (@SGUID + 025, 5993, 0, 0, 0), (@SGUID + 025, 8675, 0, 0, 0),
(@SGUID + 026, 5991, 0, 0, 0), (@SGUID + 026, 5993, 0, 0, 0), (@SGUID + 026, 8675, 0, 0, 0);
