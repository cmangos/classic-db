SET @CGUID := 105972;
SET @SGUID := 478;

DELETE FROM `creature` WHERE `guid` IN (105972, 105973, 105974, 105975, 105976, 105977, 105978, 105979, 105980, 105981, 105982, 105983, 105984, 105985, 105986, 105987, 105988, 105989, 105990, 105991, 105992, 105993, 105994, 105995, 105996);

INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
(@CGUID+00, 0, 0, 1, -11824.6923828125, -3210.971923828125, -29.8828830718994140, 2.270775556564331054, 300, 300, 45, 1), -- Blasted Lands - Manahound (1) Wandering 000
(@CGUID+01, 0, 0, 1, -11832.4179687500, -3165.364013671875, -30.0549182891845703, 0.994211673736572265, 300, 300, 45, 1), -- Blasted Lands - Manahound (1) Wandering 001
(@CGUID+02, 0, 0, 1, -11853.6132812500, -3158.950439453125, -27.7373943328857421, 0.052359879016876220, 300, 300, 0, 0), -- Blasted Lands - Felguard Elite (1) Standing 000
(@CGUID+03, 0, 0, 1, -11815.8935546875, -3148.639892578125, -27.1289329528808593, 0.541052043437957763, 300, 300, 0, 0), -- Blasted Lands - Felguard Elite (1) Standing 001
(@CGUID+04, 0, 0, 1, -11817.6376953125, -3237.612060546875, -29.7055015563964843, 5.829399585723876953, 300, 300, 0, 0), -- Blasted Lands - Felguard Elite (1) Standing 002
(@CGUID+05, 0, 0, 1, -11802.3525390625, -3192.651855468750, -29.7191658020019531, 0.069813169538974761, 300, 300, 0, 0), -- Blasted Lands - Felguard Elite (1) Standing 003
(@CGUID+06, 0, 0, 1, -11805.4755859375, -3170.901123046875, -30.4301338195800781, 0.436332315206527709, 300, 300, 0, 0), -- Blasted Lands - Felguard Elite (1) Standing 004
(@CGUID+07, 0, 0, 1, -11835.6601562500, -3253.501708984375, -25.9081764221191406, 5.270894527435302734, 300, 300, 0, 0), -- Blasted Lands - Felguard Elite (1) Standing 005
(@CGUID+08, 0, 0, 1, -11843.3662109375, -3229.337402343750, -26.4250717163085937, 0.000000000000000000, 300, 300, 0, 0), -- Blasted Lands - Felguard Elite (1) Standing 006
(@CGUID+09, 0, 0, 1, -11803.8066406250, -3217.059814453125, -30.6510047912597656, 6.038839340209960937, 300, 300, 0, 0), -- Blasted Lands - Felguard Elite (1) Standing 007
(@CGUID+10, 0, 0, 1, -11832.4384765625, -3133.447021484375, -26.8394813537597656, 5.235987663269042968, 300, 300, 0, 0), -- Blasted Lands - Felguard Elite (1) Standing 008
(@CGUID+11, 0, 0, 1, -11873.2138671875, -3165.442382812500, -27.0550117492675781, 5.916666030883789062, 300, 300, 0, 0), -- Blasted Lands - Doomguard Commander (1) Standing 000
(@CGUID+12, 0, 0, 1, -11863.4335937500, -3146.955322265625, -25.6827983856201171, 5.550147056579589843, 300, 300, 0, 0), -- Blasted Lands - Doomguard Commander (1) Standing 001
(@CGUID+13, 0, 0, 1, -11858.4628906250, -3236.313476562500, -24.6962089538574218, 0.279252678155899047, 300, 300, 0, 0), -- Blasted Lands - Doomguard Commander (1) Standing 002
(@CGUID+14, 0, 0, 1, -11850.2900390625, -3250.762695312500, -27.4680995941162109, 0.523598790168762207, 300, 300, 0, 0); -- Blasted Lands - Doomguard Commander (1) Standing 004

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`, `StringId`) VALUES
(@SGUID + 00, 'Blasted Lands - Manahound (1) Wandering 000', 0, 0, 0, 0, 0),
(@SGUID + 01, 'Blasted Lands - Manahound (1) Wandering 001', 0, 0, 0, 0, 0),
(@SGUID + 02, 'Blasted Lands - Felguard Elite (1) Standing 000', 0, 0, 0, 0, 0),
(@SGUID + 03, 'Blasted Lands - Felguard Elite (1) Standing 001', 0, 0, 0, 0, 0),
(@SGUID + 04, 'Blasted Lands - Felguard Elite (1) Standing 002', 0, 0, 0, 0, 0),
(@SGUID + 05, 'Blasted Lands - Felguard Elite (1) Standing 003', 0, 0, 0, 0, 0),
(@SGUID + 06, 'Blasted Lands - Felguard Elite (1) Standing 004', 0, 0, 0, 0, 0),
(@SGUID + 07, 'Blasted Lands - Felguard Elite (1) Standing 005', 0, 0, 0, 0, 0),
(@SGUID + 08, 'Blasted Lands - Felguard Elite (1) Standing 006', 0, 0, 0, 0, 0),
(@SGUID + 09, 'Blasted Lands - Felguard Elite (1) Standing 007', 0, 0, 0, 0, 0),
(@SGUID + 10, 'Blasted Lands - Felguard Elite (1) Standing 008', 0, 0, 0, 0, 0),
(@SGUID + 11, 'Blasted Lands - Doomguard Commander (1) Standing 000', 0, 0, 0, 0, 0),
(@SGUID + 12, 'Blasted Lands - Doomguard Commander (1) Standing 001', 0, 0, 0, 0, 0),
(@SGUID + 13, 'Blasted Lands - Doomguard Commander (1) Standing 002', 0, 0, 0, 0, 0),
(@SGUID + 14, 'Blasted Lands - Doomguard Commander (1) Standing 003', 0, 0, 0, 0, 0);

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
(@SGUID + 014, @CGUID + 014, 0, 0);

INSERT INTO `spawn_group_entry` (`Id`, `Entry`, `MinCount`, `MaxCount`, `Chance`) VALUES
(@SGUID + 00, 8718, 0, 0, 0),
(@SGUID + 01, 8718, 0, 0, 0),
(@SGUID + 02, 8717, 0, 0, 0),
(@SGUID + 03, 8717, 0, 0, 0),
(@SGUID + 04, 8717, 0, 0, 0),
(@SGUID + 05, 8717, 0, 0, 0),
(@SGUID + 06, 8717, 0, 0, 0),
(@SGUID + 07, 8717, 0, 0, 0),
(@SGUID + 08, 8717, 0, 0, 0),
(@SGUID + 09, 8717, 0, 0, 0),
(@SGUID + 10, 8717, 0, 0, 0),
(@SGUID + 11, 12396, 0, 0, 0),
(@SGUID + 12, 12396, 0, 0, 0),
(@SGUID + 13, 12396, 0, 0, 0),
(@SGUID + 14, 12396, 0, 0, 0);
