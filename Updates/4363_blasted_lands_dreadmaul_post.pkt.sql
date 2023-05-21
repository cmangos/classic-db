
DELETE FROM `creature` WHERE (`guid` IN (2714, 2715, 2716, 2717, 2780, 2781, 3817, 3818, 3819, 3820, 3821, 3852, 3853, 3856, 3857, 3894));

SET @CGUID := 140270;
SET @SGUID := 233;

INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
(@CGUID + 000, 0, 0, 1, -11479.8203125000, -2818.189941406250, -0.90990269184112548, 1.610785365104675292, 300, 300, 03, 1), -- Blasted Lands - Dreadmaul Mauler | Dreadmaul Warlock (1) Wandering 000
(@CGUID + 001, 0, 0, 1, -11533.6943359375, -2841.156250000000, 6.263804435729980468, 5.301016330718994140, 300, 300, 03, 1), -- Blasted Lands - Dreadmaul Mauler | Dreadmaul Warlock (1) Wandering 001
(@CGUID + 002, 0, 0, 1, -11526.9277343750, -2861.791259765625, 9.155961990356445312, 3.298672199249267578, 300, 300, 03, 1), -- Blasted Lands - Dreadmaul Mauler | Dreadmaul Warlock (1) Wandering 002
(@CGUID + 003, 0, 0, 1, -11566.8916015625, -2833.851318359375, 5.650344371795654296, 3.838294982910156250, 300, 300, 03, 1), -- Blasted Lands - Dreadmaul Mauler | Dreadmaul Warlock (1) Wandering 003
(@CGUID + 004, 0, 0, 1, -11532.6171875000, -2878.090332031250, 12.77502536773681640, 0.026746388524770736, 300, 300, 03, 1), -- Blasted Lands - Dreadmaul Mauler | Dreadmaul Warlock (1) Wandering 004
(@CGUID + 005, 0, 0, 1, -11552.7841796875, -2855.577392578125, 8.599003791809082031, 3.206304311752319335, 300, 300, 10, 1), -- Blasted Lands - Dreadmaul Mauler | Dreadmaul Warlock (1) Wandering 005
(@CGUID + 006, 0, 0, 1, -11508.3964843750, -2842.130371093750, 4.780386447906494140, 0.505153834819793701, 300, 300, 10, 1), -- Blasted Lands - Dreadmaul Mauler | Dreadmaul Warlock (1) Wandering 006
(@CGUID + 007, 0, 0, 1, -11586.6337890625, -2869.747314453125, 20.45271682739257812, 5.531148433685302734, 300, 300, 10, 1), -- Blasted Lands - Dreadmaul Mauler | Dreadmaul Warlock (1) Wandering 007
(@CGUID + 008, 0, 0, 1, -11516.4433593750, -2906.135986328125, 27.30602836608886718, 5.333575248718261718, 300, 300, 10, 1), -- Blasted Lands - Dreadmaul Mauler | Dreadmaul Warlock (1) Wandering 008
(@CGUID + 009, 0, 0, 1, -11516.1250000000, -2815.768798828125, 1.366598367691040039, 5.849763870239257812, 300, 300, 20, 1), -- Blasted Lands - Dreadmaul Mauler | Dreadmaul Warlock (1) Wandering 009
(@CGUID + 010, 0, 0, 1, -11482.3300781250, -2849.010498046875, 3.200564146041870117, 3.502649307250976562, 300, 300, 20, 1), -- Blasted Lands - Dreadmaul Mauler | Dreadmaul Warlock (1) Wandering 010
(@CGUID + 011, 0, 0, 1, -11550.3212890625, -2816.164550781250, 3.649803161621093750, 2.028545379638671875, 300, 300, 20, 1), -- Blasted Lands - Dreadmaul Mauler | Dreadmaul Warlock (1) Wandering 011
(@CGUID + 012, 0, 0, 1, -11582.8701171875, -2846.829101562500, 6.066722393035888671, 4.324330329895019531, 300, 300, 20, 1), -- Blasted Lands - Dreadmaul Mauler | Dreadmaul Warlock (1) Wandering 012
(@CGUID + 013, 0, 0, 1, -11483.9892578125, -2913.856689453125, 21.81791877746582031, 3.824524641036987304, 300, 300, 20, 1), -- Blasted Lands - Dreadmaul Mauler | Dreadmaul Warlock (1) Wandering 013
(@CGUID + 014, 0, 0, 1, -11580.6533203125, -2817.677734375000, 5.298103332519531250, 0.763527393341064453, 300, 300, 20, 1), -- Blasted Lands - Dreadmaul Mauler | Dreadmaul Warlock (1) Wandering 014
(@CGUID + 015, 0, 0, 1, -11481.9033203125, -2881.925537109375, 8.069242477416992187, 0.505710780620574951, 300, 300, 20, 1); -- Blasted Lands - Dreadmaul Mauler | Dreadmaul Warlock (1) Wandering 015

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`, `StringId`) VALUES
(@SGUID + 000, 'Blasted Lands - Dreadmaul Mauler | Dreadmaul Warlock (1) Wandering 000', 0, 0, 0, 0, 0),
(@SGUID + 001, 'Blasted Lands - Dreadmaul Mauler | Dreadmaul Warlock (1) Wandering 001', 0, 0, 0, 0, 0),
(@SGUID + 002, 'Blasted Lands - Dreadmaul Mauler | Dreadmaul Warlock (1) Wandering 002', 0, 0, 0, 0, 0),
(@SGUID + 003, 'Blasted Lands - Dreadmaul Mauler | Dreadmaul Warlock (1) Wandering 003', 0, 0, 0, 0, 0),
(@SGUID + 004, 'Blasted Lands - Dreadmaul Mauler | Dreadmaul Warlock (1) Wandering 004', 0, 0, 0, 0, 0),
(@SGUID + 005, 'Blasted Lands - Dreadmaul Mauler | Dreadmaul Warlock (1) Wandering 005', 0, 0, 0, 0, 0),
(@SGUID + 006, 'Blasted Lands - Dreadmaul Mauler | Dreadmaul Warlock (1) Wandering 006', 0, 0, 0, 0, 0),
(@SGUID + 007, 'Blasted Lands - Dreadmaul Mauler | Dreadmaul Warlock (1) Wandering 007', 0, 0, 0, 0, 0),
(@SGUID + 008, 'Blasted Lands - Dreadmaul Mauler | Dreadmaul Warlock (1) Wandering 008', 0, 0, 0, 0, 0),
(@SGUID + 009, 'Blasted Lands - Dreadmaul Mauler | Dreadmaul Warlock (1) Wandering 009', 0, 0, 0, 0, 0),
(@SGUID + 010, 'Blasted Lands - Dreadmaul Mauler | Dreadmaul Warlock (1) Wandering 010', 0, 0, 0, 0, 0),
(@SGUID + 011, 'Blasted Lands - Dreadmaul Mauler | Dreadmaul Warlock (1) Wandering 011', 0, 0, 0, 0, 0),
(@SGUID + 012, 'Blasted Lands - Dreadmaul Mauler | Dreadmaul Warlock (1) Wandering 012', 0, 0, 0, 0, 0),
(@SGUID + 013, 'Blasted Lands - Dreadmaul Mauler | Dreadmaul Warlock (1) Wandering 013', 0, 0, 0, 0, 0),
(@SGUID + 014, 'Blasted Lands - Dreadmaul Mauler | Dreadmaul Warlock (1) Wandering 014', 0, 0, 0, 0, 0),
(@SGUID + 015, 'Blasted Lands - Dreadmaul Mauler | Dreadmaul Warlock (1) Wandering 015', 0, 0, 0, 0, 0);

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
(@SGUID + 015, @CGUID + 015, 0, 0);

INSERT INTO `spawn_group_entry` (`Id`, `Entry`, `MinCount`, `MaxCount`, `Chance`) VALUES
(@SGUID + 000, 5977, 0, 0, 0), (@SGUID + 000, 5978, 0, 0, 0),
(@SGUID + 001, 5977, 0, 0, 0), (@SGUID + 001, 5978, 0, 0, 0),
(@SGUID + 002, 5977, 0, 0, 0), (@SGUID + 002, 5978, 0, 0, 0),
(@SGUID + 003, 5977, 0, 0, 0), (@SGUID + 003, 5978, 0, 0, 0),
(@SGUID + 004, 5977, 0, 0, 0), (@SGUID + 004, 5978, 0, 0, 0),
(@SGUID + 005, 5977, 0, 0, 0), (@SGUID + 005, 5978, 0, 0, 0),
(@SGUID + 006, 5977, 0, 0, 0), (@SGUID + 006, 5978, 0, 0, 0),
(@SGUID + 007, 5977, 0, 0, 0), (@SGUID + 007, 5978, 0, 0, 0),
(@SGUID + 008, 5977, 0, 0, 0), (@SGUID + 008, 5978, 0, 0, 0),
(@SGUID + 009, 5977, 0, 0, 0), (@SGUID + 009, 5978, 0, 0, 0),
(@SGUID + 010, 5977, 0, 0, 0), (@SGUID + 010, 5978, 0, 0, 0),
(@SGUID + 011, 5977, 0, 0, 0), (@SGUID + 011, 5978, 0, 0, 0),
(@SGUID + 012, 5977, 0, 0, 0), (@SGUID + 012, 5978, 0, 0, 0),
(@SGUID + 013, 5977, 0, 0, 0), (@SGUID + 013, 5978, 0, 0, 0),
(@SGUID + 014, 5977, 0, 0, 0), (@SGUID + 014, 5978, 0, 0, 0),
(@SGUID + 015, 5977, 0, 0, 0), (@SGUID + 015, 5978, 0, 0, 0);
