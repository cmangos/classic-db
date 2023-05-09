
DELETE FROM `creature` WHERE (`guid` IN (13083, 13085, 13094, 13095, 13096, 13097, 13098, 13099, 20970, 20971, 20972, 20974, 20975, 20977, 20994, 21010, 21011, 21012, 21013, 21014, 21015, 21016, 21028, 21029,
21030, 21031, 21032, 21033, 21035, 21037, 21038, 21702, 21703, 21759, 21760, 21761, 21762, 21763, 21764, 21765, 21766, 21767, 21768, 21769, 21770, 21771));

DELETE FROM `creature_movement` WHERE (`id` IN (21763, 21769, 20977));
UPDATE `creature` SET `MovementType` = 0 WHERE (`guid`IN (21763, 21769, 20977));

SET @CGUID := 99000;
SET @SGUID := 10103;

INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
(@CGUID + 000, 0, 1, 1, 0, -5038.71728515625, -2378.343017578125, -55.1534080505371093, 2.957504034042358398, 300, 300, 00, 4), -- Thousand Needles - Galak Wrangler 4093 | Galak Scout 4094 | Galak Windchaser 4096 (1) Patrol 000
(@CGUID + 010, 0, 1, 1, 0, -5032.33837890625, -2397.468017578125, -55.3738784790039062, 4.628187656402587890, 300, 300, 05, 1), -- Thousand Needles - Galak Wrangler 4093 | Galak Scout 4094 | Galak Windchaser 4096 (1) Wandering 000
(@CGUID + 020, 0, 1, 1, 0, -5016.39843750000, -2386.623046875000, -54.4047317504882812, 2.404727220535278320, 300, 300, 05, 1), -- Thousand Needles - Galak Wrangler 4093 | Galak Scout 4094 | Galak Windchaser 4096 (1) Wandering 000
(@CGUID + 030, 0, 1, 1, 0, -5048.04101562500, -2378.575683593750, -54.4281425476074218, 4.428756237030029296, 300, 300, 05, 1), -- Thousand Needles - Galak Wrangler 4093 | Galak Scout 4094 | Galak Windchaser 4096 (1) Wandering 000
(@CGUID + 040, 0, 1, 1, 0, -4952.35888671875, -2399.400878906250, -53.5674400329589843, 6.180978775024414062, 300, 300, 00, 4), -- Thousand Needles - Galak Mauler 4095 | Galak Stormer 4097| Galak Marauder 4099 (1) Patrol 000
(@CGUID + 050, 0, 1, 1, 0, -4932.46728515625, -2317.326660156250, -69.2409515380859375, 2.736399888992309570, 300, 300, 00, 4), -- Thousand Needles - Galak Mauler 4095 | Galak Stormer 4097| Galak Marauder 4099 (1) Patrol 001
(@CGUID + 060, 0, 1, 1, 0, -4887.00830078125, -2306.851074218750, -59.4097099304199218, 2.270334959030151367, 300, 300, 00, 4), -- Thousand Needles - Galak Mauler 4095 | Galak Stormer 4097| Galak Marauder 4099 (1) Patrol 002
(@CGUID + 070, 0, 1, 1, 0, -4995.36083984375, -2305.417480468750, -58.7803649902343750, 4.725016117095947265, 300, 300, 00, 4), -- Thousand Needles - Galak Mauler 4095 | Galak Stormer 4097| Galak Marauder 4099 (1) Patrol 003
(@CGUID + 080, 0, 1, 1, 0, -4952.94482421875, -2337.296386718750, -56.5321159362792968, 2.460914134979248046, 300, 300, 00, 0), -- Thousand Needles - Galak Mauler 4095 | Galak Stormer 4097| Galak Marauder 4099 (1) Standing 000
(@CGUID + 090, 0, 1, 1, 0, -4944.33203125000, -2330.714843750000, -53.6268730163574218, 2.740166902542114257, 300, 300, 00, 0), -- Thousand Needles - Galak Mauler 4095 | Galak Stormer 4097| Galak Marauder 4099 (1) Standing 001
(@CGUID + 100, 0, 1, 1, 0, -5005.11328125000, -2375.468017578125, -57.2464752197265625, 4.745797634124755859, 300, 300, 05, 1), -- Thousand Needles - Galak Mauler 4095 | Galak Stormer 4097| Galak Marauder 4099 (1) Wandering 000
(@CGUID + 110, 0, 1, 1, 0, -5001.19873046875, -2351.742187500000, -55.5588951110839843, 4.227051734924316406, 300, 300, 05, 1), -- Thousand Needles - Galak Mauler 4095 | Galak Stormer 4097| Galak Marauder 4099 (1) Wandering 001
(@CGUID + 120, 0, 1, 1, 0, -4959.61132812500, -2389.450927734375, -54.7295532226562500, 3.455751895904541015, 300, 300, 05, 1), -- Thousand Needles - Galak Mauler 4095 | Galak Stormer 4097| Galak Marauder 4099 (1) Wandering 002
(@CGUID + 130, 0, 1, 1, 0, -4938.13183593750, -2399.922851562500, -53.0944900512695312, 0.642806887626647949, 300, 300, 05, 1), -- Thousand Needles - Galak Mauler 4095 | Galak Stormer 4097| Galak Marauder 4099 (1) Wandering 003
(@CGUID + 140, 0, 1, 1, 0, -4978.91259765625, -2380.295654296875, -57.2439041137695312, 2.171935796737670898, 300, 300, 05, 1), -- Thousand Needles - Galak Mauler 4095 | Galak Stormer 4097| Galak Marauder 4099 (1) Wandering 004
(@CGUID + 150, 0, 1, 1, 0, -4927.70996093750, -2409.526611328125, -53.0493850708007812, 3.141592741012573242, 300, 300, 05, 1), -- Thousand Needles - Galak Mauler 4095 | Galak Stormer 4097| Galak Marauder 4099 (1) Wandering 005
(@CGUID + 160, 0, 1, 1, 0, -4924.20751953125, -2369.042968750000, -50.8720436096191406, 5.250918388366699218, 300, 300, 05, 1), -- Thousand Needles - Galak Mauler 4095 | Galak Stormer 4097| Galak Marauder 4099 (1) Wandering 006
(@CGUID + 170, 0, 1, 1, 0, -4924.10253906250, -2384.471435546875, -52.4726448059082031, 4.028774261474609375, 300, 300, 05, 1), -- Thousand Needles - Galak Mauler 4095 | Galak Stormer 4097| Galak Marauder 4099 (1) Wandering 007
(@CGUID + 180, 0, 1, 1, 0, -4935.92236328125, -2348.755615234375, -46.7974548339843750, 0.959565043449401855, 300, 300, 05, 1), -- Thousand Needles - Galak Mauler 4095 | Galak Stormer 4097| Galak Marauder 4099 (1) Wandering 008
(@CGUID + 190, 0, 1, 1, 0, -4993.37011718750, -2315.582031250000, -57.9139976501464843, 0.052559662610292434, 300, 300, 05, 1), -- Thousand Needles - Galak Mauler 4095 | Galak Stormer 4097| Galak Marauder 4099 (1) Wandering 009
(@CGUID + 200, 0, 1, 1, 0, -4981.29248046875, -2326.735351562500, -56.4513282775878906, 3.617708444595336914, 300, 300, 05, 1), -- Thousand Needles - Galak Mauler 4095 | Galak Stormer 4097| Galak Marauder 4099 (1) Wandering 010
(@CGUID + 210, 0, 1, 1, 0, -4948.11376953125, -2304.968017578125, -67.9801025390625000, 3.448331117630004882, 300, 300, 05, 1), -- Thousand Needles - Galak Mauler 4095 | Galak Stormer 4097| Galak Marauder 4099 (1) Wandering 011
(@CGUID + 220, 0, 1, 1, 0, -4973.31787109375, -2278.478759765625, -63.5162773132324218, 1.563217759132385253, 300, 300, 05, 1), -- Thousand Needles - Galak Mauler 4095 | Galak Stormer 4097| Galak Marauder 4099 (1) Wandering 012
(@CGUID + 230, 0, 1, 1, 0, -4962.52783203125, -2345.877197265625, -60.4069366455078125, 3.316458702087402343, 300, 300, 10, 1), -- Thousand Needles - Galak Mauler 4095 | Galak Stormer 4097| Galak Marauder 4099 (1) Wandering 013
(@CGUID + 240, 0, 1, 1, 0, -4975.96533203125, -2354.102294921875, -59.3673667907714843, 4.598706245422363281, 300, 300, 05, 1), -- Thousand Needles - Galak Mauler 4095 | Galak Stormer 4097| Galak Marauder 4099 (1) Wandering 014
(@CGUID + 250, 0, 1, 1, 0, -4890.23486328125, -2295.802001953125, -59.4539947509765625, 3.598102092742919921, 300, 300, 05, 1), -- Thousand Needles - Galak Mauler 4095 | Galak Stormer 4097| Galak Marauder 4099 (1) Wandering 015
(@CGUID + 260, 0, 1, 1, 0, -4922.80224609375, -2304.023193359375, -68.5403289794921875, 0.565370678901672363, 300, 300, 05, 1), -- Thousand Needles - Galak Mauler 4095 | Galak Stormer 4097| Galak Marauder 4099 (1) Wandering 016
(@CGUID + 270, 0, 1, 1, 0, -4897.06347656250, -2302.496093750000, -59.4740142822265625, 1.759368538856506347, 300, 300, 05, 1), -- Thousand Needles - Galak Mauler 4095 | Galak Stormer 4097| Galak Marauder 4099 (1) Wandering 017
(@CGUID + 280, 0, 1, 1, 0, -4873.62060546875, -2324.278564453125, -54.5346488952636718, 0.409383744001388549, 300, 300, 05, 1), -- Thousand Needles - Galak Mauler 4095 | Galak Stormer 4097| Galak Marauder 4099 (1) Wandering 018
(@CGUID + 290, 0, 1, 1, 0, -4917.04199218750, -2266.795166015625, -70.1812133789062500, 4.456764221191406250, 300, 300, 05, 1), -- Thousand Needles - Galak Mauler 4095 | Galak Stormer 4097| Galak Marauder 4099 (1) Wandering 019
(@CGUID + 300, 0, 1, 1, 0, -4936.08837890625, -2269.236083984375, -66.5446701049804687, 1.964334249496459960, 300, 300, 05, 1), -- Thousand Needles - Galak Mauler 4095 | Galak Stormer 4097| Galak Marauder 4099 (1) Wandering 020
(@CGUID + 310, 0, 1, 1, 0, -4875.02978515625, -2335.787841796875, -53.2525177001953125, 2.534981489181518554, 300, 300, 05, 1), -- Thousand Needles - Galak Mauler 4095 | Galak Stormer 4097| Galak Marauder 4099 (1) Wandering 021
(@CGUID + 320, 0, 1, 1, 0, -4880.78417968750, -2353.854980468750, -55.0785636901855468, 4.227957725524902343, 300, 300, 05, 1), -- Thousand Needles - Galak Mauler 4095 | Galak Stormer 4097| Galak Marauder 4099 (1) Wandering 022
(@CGUID + 330, 0, 1, 1, 0, -4897.98437500000, -2280.380126953125, -71.5339508056640625, 3.106686115264892578, 300, 300, 00, 0), -- Thousand Needles - Galak Flame Guard 7404 (1) Standing 000
(@CGUID + 340, 0, 1, 1, 0, -4898.52392578125, -2284.038330078125, -71.3708190917968750, 2.827433347702026367, 300, 300, 00, 0); -- Thousand Needles - Galak Flame Guard 7404 (1) Standing 001

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`, `StringId`) VALUES
(@SGUID + 000, 'Thousand Needles - Galak Wrangler 4093 | Galak Scout 4094 | Galak Windchaser 4096 (1) Patrol 000', 0, 0, 0, 0, 0),
(@SGUID + 001, 'Thousand Needles - Galak Wrangler 4093 | Galak Scout 4094 | Galak Windchaser 4096 (1) Wandering 000', 0, 0, 0, 0, 0),
(@SGUID + 002, 'Thousand Needles - Galak Wrangler 4093 | Galak Scout 4094 | Galak Windchaser 4096 (1) Wandering 001', 0, 0, 0, 0, 0),
(@SGUID + 003, 'Thousand Needles - Galak Wrangler 4093 | Galak Scout 4094 | Galak Windchaser 4096 (1) Wandering 002', 0, 0, 0, 0, 0),
(@SGUID + 004, 'Thousand Needles - Galak Mauler 4095 | Galak Stormer 4097| Galak Marauder 4099 (1) Patrol 000', 0, 0, 0, 0, 0),
(@SGUID + 005, 'Thousand Needles - Galak Mauler 4095 | Galak Stormer 4097| Galak Marauder 4099 (1) Patrol 001', 0, 0, 0, 0, 0),
(@SGUID + 006, 'Thousand Needles - Galak Mauler 4095 | Galak Stormer 4097| Galak Marauder 4099 (1) Patrol 002', 0, 0, 0, 0, 0),
(@SGUID + 007, 'Thousand Needles - Galak Mauler 4095 | Galak Stormer 4097| Galak Marauder 4099 (1) Patrol 003', 0, 0, 0, 0, 0),
(@SGUID + 008, 'Thousand Needles - Galak Mauler 4095 | Galak Stormer 4097| Galak Marauder 4099 (1) Standing 000', 0, 0, 0, 0, 0),
(@SGUID + 009, 'Thousand Needles - Galak Mauler 4095 | Galak Stormer 4097| Galak Marauder 4099 (1) Standing 001', 0, 0, 0, 0, 0),
(@SGUID + 010, 'Thousand Needles - Galak Mauler 4095 | Galak Stormer 4097| Galak Marauder 4099 (1) Wandering 000', 0, 0, 0, 0, 0),
(@SGUID + 011, 'Thousand Needles - Galak Mauler 4095 | Galak Stormer 4097| Galak Marauder 4099 (1) Wandering 001', 0, 0, 0, 0, 0),
(@SGUID + 012, 'Thousand Needles - Galak Mauler 4095 | Galak Stormer 4097| Galak Marauder 4099 (1) Wandering 002', 0, 0, 0, 0, 0),
(@SGUID + 013, 'Thousand Needles - Galak Mauler 4095 | Galak Stormer 4097| Galak Marauder 4099 (1) Wandering 003', 0, 0, 0, 0, 0),
(@SGUID + 014, 'Thousand Needles - Galak Mauler 4095 | Galak Stormer 4097| Galak Marauder 4099 (1) Wandering 004', 0, 0, 0, 0, 0),
(@SGUID + 015, 'Thousand Needles - Galak Mauler 4095 | Galak Stormer 4097| Galak Marauder 4099 (1) Wandering 005', 0, 0, 0, 0, 0),
(@SGUID + 016, 'Thousand Needles - Galak Mauler 4095 | Galak Stormer 4097| Galak Marauder 4099 (1) Wandering 006', 0, 0, 0, 0, 0),
(@SGUID + 017, 'Thousand Needles - Galak Mauler 4095 | Galak Stormer 4097| Galak Marauder 4099 (1) Wandering 007', 0, 0, 0, 0, 0),
(@SGUID + 018, 'Thousand Needles - Galak Mauler 4095 | Galak Stormer 4097| Galak Marauder 4099 (1) Wandering 008', 0, 0, 0, 0, 0),
(@SGUID + 019, 'Thousand Needles - Galak Mauler 4095 | Galak Stormer 4097| Galak Marauder 4099 (1) Wandering 009', 0, 0, 0, 0, 0),
(@SGUID + 020, 'Thousand Needles - Galak Mauler 4095 | Galak Stormer 4097| Galak Marauder 4099 (1) Wandering 010', 0, 0, 0, 0, 0),
(@SGUID + 021, 'Thousand Needles - Galak Mauler 4095 | Galak Stormer 4097| Galak Marauder 4099 (1) Wandering 011', 0, 0, 0, 0, 0),
(@SGUID + 022, 'Thousand Needles - Galak Mauler 4095 | Galak Stormer 4097| Galak Marauder 4099 (1) Wandering 012', 0, 0, 0, 0, 0),
(@SGUID + 023, 'Thousand Needles - Galak Mauler 4095 | Galak Stormer 4097| Galak Marauder 4099 (1) Wandering 013', 0, 0, 0, 0, 0),
(@SGUID + 024, 'Thousand Needles - Galak Mauler 4095 | Galak Stormer 4097| Galak Marauder 4099 (1) Wandering 014', 0, 0, 0, 0, 0),
(@SGUID + 025, 'Thousand Needles - Galak Mauler 4095 | Galak Stormer 4097| Galak Marauder 4099 (1) Wandering 015', 0, 0, 0, 0, 0),
(@SGUID + 026, 'Thousand Needles - Galak Mauler 4095 | Galak Stormer 4097| Galak Marauder 4099 (1) Wandering 016', 0, 0, 0, 0, 0),
(@SGUID + 027, 'Thousand Needles - Galak Mauler 4095 | Galak Stormer 4097| Galak Marauder 4099 (1) Wandering 017', 0, 0, 0, 0, 0),
(@SGUID + 028, 'Thousand Needles - Galak Mauler 4095 | Galak Stormer 4097| Galak Marauder 4099 (1) Wandering 018', 0, 0, 0, 0, 0),
(@SGUID + 029, 'Thousand Needles - Galak Mauler 4095 | Galak Stormer 4097| Galak Marauder 4099 (1) Wandering 019', 0, 0, 0, 0, 0),
(@SGUID + 030, 'Thousand Needles - Galak Mauler 4095 | Galak Stormer 4097| Galak Marauder 4099 (1) Wandering 020', 0, 0, 0, 0, 0),
(@SGUID + 031, 'Thousand Needles - Galak Mauler 4095 | Galak Stormer 4097| Galak Marauder 4099 (1) Wandering 021', 0, 0, 0, 0, 0),
(@SGUID + 032, 'Thousand Needles - Galak Mauler 4095 | Galak Stormer 4097| Galak Marauder 4099 (1) Wandering 022', 0, 0, 0, 0, 0),
(@SGUID + 033, 'Thousand Needles - Galak Flame Guard 7404 (1) Standing 000', 0, 0, 0, 0, 0),
(@SGUID + 034, 'Thousand Needles - Galak Flame Guard 7404 (1) Standing 001', 0, 0, 0, 0, 0);

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`, `Chance`) VALUES
(@SGUID + 000, @CGUID + 000, 0, 0),
(@SGUID + 001, @CGUID + 010, 0, 0),
(@SGUID + 002, @CGUID + 020, 0, 0),
(@SGUID + 003, @CGUID + 030, 0, 0),
(@SGUID + 004, @CGUID + 040, 0, 0),
(@SGUID + 005, @CGUID + 050, 0, 0),
(@SGUID + 006, @CGUID + 060, 0, 0),
(@SGUID + 007, @CGUID + 070, 0, 0),
(@SGUID + 008, @CGUID + 080, 0, 0),
(@SGUID + 009, @CGUID + 090, 0, 0),
(@SGUID + 010, @CGUID + 100, 0, 0),
(@SGUID + 011, @CGUID + 110, 0, 0),
(@SGUID + 012, @CGUID + 120, 0, 0),
(@SGUID + 013, @CGUID + 130, 0, 0),
(@SGUID + 014, @CGUID + 140, 0, 0),
(@SGUID + 015, @CGUID + 150, 0, 0),
(@SGUID + 016, @CGUID + 160, 0, 0),
(@SGUID + 017, @CGUID + 170, 0, 0),
(@SGUID + 018, @CGUID + 180, 0, 0),
(@SGUID + 019, @CGUID + 190, 0, 0),
(@SGUID + 020, @CGUID + 200, 0, 0),
(@SGUID + 021, @CGUID + 210, 0, 0),
(@SGUID + 022, @CGUID + 220, 0, 0),
(@SGUID + 023, @CGUID + 230, 0, 0),
(@SGUID + 024, @CGUID + 240, 0, 0),
(@SGUID + 025, @CGUID + 250, 0, 0),
(@SGUID + 026, @CGUID + 260, 0, 0),
(@SGUID + 027, @CGUID + 270, 0, 0),
(@SGUID + 028, @CGUID + 280, 0, 0),
(@SGUID + 029, @CGUID + 290, 0, 0),
(@SGUID + 030, @CGUID + 300, 0, 0),
(@SGUID + 031, @CGUID + 310, 0, 0),
(@SGUID + 032, @CGUID + 320, 0, 0),
(@SGUID + 033, @CGUID + 330, 0, 0),
(@SGUID + 034, @CGUID + 340, 0, 0);

INSERT INTO `spawn_group_entry` (`Id`, `Entry`, `MinCount`, `MaxCount`, `Chance`) VALUES
(@SGUID + 000, 4093, 0, 0, 0), (@SGUID + 000, 4094, 0, 0, 0), (@SGUID + 000, 4096, 0, 0, 0),
(@SGUID + 001, 4093, 0, 0, 0), (@SGUID + 001, 4094, 0, 0, 0), (@SGUID + 001, 4096, 0, 0, 0),
(@SGUID + 002, 4093, 0, 0, 0), (@SGUID + 002, 4094, 0, 0, 0), (@SGUID + 002, 4096, 0, 0, 0),
(@SGUID + 003, 4093, 0, 0, 0), (@SGUID + 003, 4094, 0, 0, 0), (@SGUID + 003, 4096, 0, 0, 0),
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
(@SGUID + 021, 4095, 0, 0, 0), (@SGUID + 021, 4097, 0, 0, 0), (@SGUID + 021, 4099, 0, 0, 0),
(@SGUID + 022, 4095, 0, 0, 0), (@SGUID + 022, 4097, 0, 0, 0), (@SGUID + 022, 4099, 0, 0, 0),
(@SGUID + 023, 4095, 0, 0, 0), (@SGUID + 023, 4097, 0, 0, 0), (@SGUID + 023, 4099, 0, 0, 0),
(@SGUID + 024, 4095, 0, 0, 0), (@SGUID + 024, 4097, 0, 0, 0), (@SGUID + 024, 4099, 0, 0, 0),
(@SGUID + 025, 4095, 0, 0, 0), (@SGUID + 025, 4097, 0, 0, 0), (@SGUID + 025, 4099, 0, 0, 0),
(@SGUID + 026, 4095, 0, 0, 0), (@SGUID + 026, 4097, 0, 0, 0), (@SGUID + 026, 4099, 0, 0, 0),
(@SGUID + 027, 4095, 0, 0, 0), (@SGUID + 027, 4097, 0, 0, 0), (@SGUID + 027, 4099, 0, 0, 0),
(@SGUID + 028, 4095, 0, 0, 0), (@SGUID + 028, 4097, 0, 0, 0), (@SGUID + 028, 4099, 0, 0, 0),
(@SGUID + 029, 4095, 0, 0, 0), (@SGUID + 029, 4097, 0, 0, 0), (@SGUID + 029, 4099, 0, 0, 0),
(@SGUID + 030, 4095, 0, 0, 0), (@SGUID + 030, 4097, 0, 0, 0), (@SGUID + 030, 4099, 0, 0, 0),
(@SGUID + 031, 4095, 0, 0, 0), (@SGUID + 031, 4097, 0, 0, 0), (@SGUID + 031, 4099, 0, 0, 0),
(@SGUID + 032, 4095, 0, 0, 0), (@SGUID + 032, 4097, 0, 0, 0), (@SGUID + 032, 4099, 0, 0, 0),
(@SGUID + 033, 7404, 0, 0, 0),
(@SGUID + 034, 7404, 0, 0, 0);

INSERT INTO `creature_movement` (`Id`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(@CGUID + 000, 01, -5060.55712890625, -2374.275878906250, -53.0245552062988281, 100, 0, 0),
(@CGUID + 000, 02, -5043.24755859375, -2378.974609375000, -54.6530494689941406, 100, 0, 0),
(@CGUID + 000, 03, -5034.32421875000, -2399.555419921875, -55.2514190673828125, 100, 0, 0),
(@CGUID + 000, 04, -5021.45214843750, -2391.436523437500, -54.4855155944824218, 100, 0, 0),
(@CGUID + 000, 05, -5012.89697265625, -2379.606689453125, -55.7118911743164062, 100, 0, 0),
(@CGUID + 000, 06, -5004.52490234375, -2373.589355468750, -57.3495445251464843, 100, 0, 0),
(@CGUID + 000, 07, -5006.05859375000, -2360.001464843750, -55.5574150085449218, 100, 0, 0),
(@CGUID + 000, 08, -4999.36621093750, -2349.409667968750, -55.4474105834960937, 100, 0, 0),
(@CGUID + 000, 09, -4999.62402343750, -2336.805908203125, -56.0126991271972656, 100, 0, 0);

INSERT INTO `creature_movement` (`Id`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(@CGUID + 040, 01, -4942.06835937500, -2400.455078125000, -53.6962127685546875, 100, 0, 0),
(@CGUID + 040, 02, -4951.43798828125, -2397.871582031250, -53.4370269775390625, 100, 0, 0),
(@CGUID + 040, 03, -4957.69384765625, -2395.417968750000, -54.3395233154296875, 100, 0, 0),
(@CGUID + 040, 04, -4963.02978515625, -2387.746582031250, -55.2685432434082031, 100, 0, 0),
(@CGUID + 040, 05, -4971.04931640625, -2382.665771484375, -56.4313468933105468, 100, 0, 0),
(@CGUID + 040, 06, -4977.64794921875, -2381.635498046875, -57.3431205749511718, 100, 0, 0),
(@CGUID + 040, 07, -4982.48437500000, -2379.399902343750, -56.8800239562988281, 100, 0, 0),
(@CGUID + 040, 08, -4988.38037109375, -2374.797851562500, -56.0643806457519531, 100, 0, 0),
(@CGUID + 040, 09, -4992.28222656250, -2373.290283203125, -55.5463371276855468, 100, 0, 0),
(@CGUID + 040, 10, -5003.96972656250, -2377.352050781250, -57.0440177917480468, 100, 0, 0),
(@CGUID + 040, 11, -5007.40527343750, -2377.118164062500, -56.8186454772949218, 100, 0, 0);

INSERT INTO `creature_movement` (`Id`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(@CGUID + 050, 01, -4941.98583984375, -2313.251708984375, -68.6955566406250000, 100, 0, 0),
(@CGUID + 050, 02, -4930.83496093750, -2317.276611328125, -69.0661392211914062, 100, 0, 0),
(@CGUID + 050, 03, -4922.40722656250, -2309.267578125000, -68.5507812500000000, 100, 0, 0),
(@CGUID + 050, 04, -4914.24121093750, -2298.539550781250, -68.1181945800781250, 100, 0, 0),
(@CGUID + 050, 05, -4909.10400390625, -2291.434570312500, -69.1448822021484375, 100, 0, 0),
(@CGUID + 050, 06, -4899.32714843750, -2282.441894531250, -71.3884735107421875, 100, 0, 0),
(@CGUID + 050, 07, -4904.84375000000, -2273.965332031250, -71.6829299926757812, 100, 0, 0),
(@CGUID + 050, 08, -4913.13671875000, -2264.111572265625, -70.0390243530273437, 100, 0, 0),
(@CGUID + 050, 09, -4921.09863281250, -2265.958740234375, -69.5015716552734375, 100, 0, 0);

INSERT INTO `creature_movement` (`Id`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(@CGUID + 060, 01, -4890.97656250000, -2302.135986328125, -59.2143020629882812, 100, 0, 0),
(@CGUID + 060, 02, -4882.48193359375, -2311.725830078125, -58.2940444946289062, 100, 0, 0),
(@CGUID + 060, 03, -4874.60693359375, -2321.433593750000, -55.3552818298339843, 100, 0, 0),
(@CGUID + 060, 04, -4871.15527343750, -2328.799316406250, -53.4819107055664062, 100, 0, 0),
(@CGUID + 060, 05, -4876.94384765625, -2339.517333984375, -52.9942970275878906, 100, 0, 0),
(@CGUID + 060, 06, -4878.99755859375, -2349.291015625000, -54.5090255737304687, 100, 0, 0),
(@CGUID + 060, 07, -4886.40771484375, -2355.761718750000, -55.0325050354003906, 100, 0, 0),
(@CGUID + 060, 08, -4902.50341796875, -2356.609619140625, -53.2485466003417968, 100, 0, 0),
(@CGUID + 060, 09, -4918.15087890625, -2355.226562500000, -51.4142837524414062, 100, 0, 0);

INSERT INTO `creature_movement` (`Id`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(@CGUID + 070, 01, -4995.32421875000, -2308.302978515625, -58.5793342590332031, 100, 0, 0),
(@CGUID + 070, 02, -4994.29589843750, -2296.992187500000, -60.2443161010742187, 100, 0, 0),
(@CGUID + 070, 03, -4987.86376953125, -2287.959228515625, -61.8452873229980468, 100, 0, 0),
(@CGUID + 070, 04, -4979.34472656250, -2279.623046875000, -63.5995864868164062, 100, 0, 0),
(@CGUID + 070, 05, -4970.80029296875, -2277.239501953125, -63.5397911071777343, 100, 0, 0),
(@CGUID + 070, 06, -4964.39306640625, -2279.640136718750, -63.5560150146484375, 100, 0, 0),
(@CGUID + 070, 07, -4953.66845703125, -2274.993408203125, -66.2331008911132812, 100, 0, 0),
(@CGUID + 070, 08, -4943.60253906250, -2270.454833984375, -66.7971115112304687, 100, 0, 0),
(@CGUID + 070, 09, -4929.12109375000, -2267.830322265625, -67.2060546875000000, 100, 0, 0);
