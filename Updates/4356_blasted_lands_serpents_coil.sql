
DELETE FROM `creature` WHERE (`guid` IN (2660, 2661, 2665, 2667, 2747, 2748, 2749, 2751, 2753, 2806, 2808, 2809, 2810, 2845, 2851, 2890, 2891, 2894, 2896, 3033, 3034, 3039, 3044));
DELETE FROM `creature` WHERE (`guid` IN (2659, 2802, 2846, 2849, 2892, 3032, 3041, 3047, 3099, 3808, 3809, 3810, 3811, 3812));
DELETE FROM `creature` WHERE (`guid` IN (2662, 2663, 2664, 2666, 2750, 2752, 2754, 2801, 2803, 2804, 2805, 2807, 2847, 2848, 2850, 2852, 2889, 2893, 2895, 3035, 3042, 3048, 3813, 3879));

DELETE FROM `creature_movement` WHERE (`id` IN (2665, 3033, 3039));

SET @CGUID := 140200;
SET @SGUID := 168;

INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
(@CGUID + 000, 0, 0, 1, -11274.1679687500, -3471.569824218750, 9.013772964477539062, 2.981504440307617187, 300, 300, 00, 4), -- Blasted Lands - Shadowsworn Cultist | Shadowsworn Cultist | Shadowsworn Adept (1) Patrol 000
(@CGUID + 001, 0, 0, 1, -11245.4150390625, -3560.533935546875, 7.873981475830078125, 0.558701753616333007, 300, 300, 00, 4), -- Blasted Lands - Shadowsworn Cultist | Shadowsworn Cultist | Shadowsworn Adept (1) Patrol 001
(@CGUID + 002, 0, 0, 1, -11215.9599609375, -3509.968017578125, 8.144504547119140625, 2.356194496154785156, 300, 300, 00, 4), -- Blasted Lands - Shadowsworn Cultist | Shadowsworn Cultist | Shadowsworn Adept (1) Patrol 002
(@CGUID + 003, 0, 0, 1, -11243.3554687500, -3449.489501953125, 8.364139556884765625, 5.619960308074951171, 300, 300, 01, 1), -- Blasted Lands - Shadowsworn Cultist | Shadowsworn Cultist | Shadowsworn Adept (1) Wandering 000
(@CGUID + 004, 0, 0, 1, -11274.3134765625, -3476.919677734375, 8.928173065185546875, 2.984513044357299804, 300, 300, 01, 1), -- Blasted Lands - Shadowsworn Cultist | Shadowsworn Cultist | Shadowsworn Adept (1) Wandering 001
(@CGUID + 005, 0, 0, 1, -11237.9951171875, -3451.829101562500, 7.316154479980468750, 1.810275912284851074, 300, 300, 01, 1), -- Blasted Lands - Shadowsworn Cultist | Shadowsworn Cultist | Shadowsworn Adept (1) Wandering 002
(@CGUID + 006, 0, 0, 1, -11279.8564453125, -3476.466552734375, 7.837925434112548828, 5.892278194427490234, 300, 300, 01, 1), -- Blasted Lands - Shadowsworn Cultist | Shadowsworn Cultist | Shadowsworn Adept (1) Wandering 003
(@CGUID + 007, 0, 0, 1, -11258.9345703125, -3569.163818359375, 7.247959613800048828, 0.973874032497406005, 300, 300, 01, 1), -- Blasted Lands - Shadowsworn Cultist | Shadowsworn Cultist | Shadowsworn Adept (1) Wandering 004
(@CGUID + 008, 0, 0, 1, -11260.6259765625, -3562.647705078125, 7.532859325408935546, 0.959125697612762451, 300, 300, 01, 1), -- Blasted Lands - Shadowsworn Cultist | Shadowsworn Cultist | Shadowsworn Adept (1) Wandering 005
(@CGUID + 009, 0, 0, 1, -11289.8730468750, -3437.356689453125, 10.27762603759765625, 1.497934341430664062, 300, 300, 03, 1), -- Blasted Lands - Shadowsworn Cultist | Shadowsworn Cultist | Shadowsworn Adept (1) Wandering 006
(@CGUID + 010, 0, 0, 1, -11273.9462890625, -3452.871093750000, 8.144728660583496093, 5.945983409881591796, 300, 300, 03, 1), -- Blasted Lands - Shadowsworn Cultist | Shadowsworn Cultist | Shadowsworn Adept (1) Wandering 007
(@CGUID + 011, 0, 0, 1, -11257.4384765625, -3448.249511718750, 8.377308845520019531, 4.280405044555664062, 300, 300, 03, 1), -- Blasted Lands - Shadowsworn Cultist | Shadowsworn Cultist | Shadowsworn Adept (1) Wandering 008
(@CGUID + 012, 0, 0, 1, -11261.9072265625, -3473.163330078125, 8.126936912536621093, 3.391540288925170898, 300, 300, 03, 1), -- Blasted Lands - Shadowsworn Cultist | Shadowsworn Cultist | Shadowsworn Adept (1) Wandering 009
(@CGUID + 013, 0, 0, 1, -11265.5781250000, -3490.289306640625, 9.375950813293457031, 1.219834089279174804, 300, 300, 03, 1), -- Blasted Lands - Shadowsworn Cultist | Shadowsworn Cultist | Shadowsworn Adept (1) Wandering 010
(@CGUID + 014, 0, 0, 1, -11249.0654296875, -3468.186035156250, 7.990072727203369140, 0.337684184312820434, 300, 300, 03, 1), -- Blasted Lands - Shadowsworn Cultist | Shadowsworn Cultist | Shadowsworn Adept (1) Wandering 011
(@CGUID + 015, 0, 0, 1, -11272.9394531250, -3511.659423828125, 8.004877090454101562, 3.275209665298461914, 300, 300, 03, 1), -- Blasted Lands - Shadowsworn Cultist | Shadowsworn Cultist | Shadowsworn Adept (1) Wandering 012
(@CGUID + 016, 0, 0, 1, -11234.1845703125, -3496.760009765625, 11.78055095672607421, 4.094602584838867187, 300, 300, 03, 1), -- Blasted Lands - Shadowsworn Cultist | Shadowsworn Cultist | Shadowsworn Adept (1) Wandering 013
(@CGUID + 017, 0, 0, 1, -11261.8896484375, -3526.728027343750, 8.939332962036132812, 3.307617902755737304, 300, 300, 03, 1), -- Blasted Lands - Shadowsworn Cultist | Shadowsworn Cultist | Shadowsworn Adept (1) Wandering 014
(@CGUID + 018, 0, 0, 1, -11242.8212890625, -3523.600830078125, 9.859816551208496093, 1.170932412147521972, 300, 300, 03, 1), -- Blasted Lands - Shadowsworn Cultist | Shadowsworn Cultist | Shadowsworn Adept (1) Wandering 015
(@CGUID + 019, 0, 0, 1, -11261.5712890625, -3546.879150390625, 7.540641307830810546, 0.213450074195861816, 300, 300, 03, 1), -- Blasted Lands - Shadowsworn Cultist | Shadowsworn Cultist | Shadowsworn Adept (1) Wandering 016
(@CGUID + 020, 0, 0, 1, -11217.5751953125, -3499.575683593750, 7.989816665649414062, 2.711767911911010742, 300, 300, 03, 1), -- Blasted Lands - Shadowsworn Cultist | Shadowsworn Cultist | Shadowsworn Adept (1) Wandering 017
(@CGUID + 021, 0, 0, 1, -11231.0244140625, -3507.379882812500, 13.13006019592285156, 4.153008460998535156, 300, 300, 03, 1), -- Blasted Lands - Shadowsworn Cultist | Shadowsworn Cultist | Shadowsworn Adept (1) Wandering 018
(@CGUID + 022, 0, 0, 1, -11225.7050781250, -3488.145019531250, 8.853857994079589843, 1.658212423324584960, 300, 300, 03, 1), -- Blasted Lands - Shadowsworn Cultist | Shadowsworn Cultist | Shadowsworn Adept (1) Wandering 019

(@CGUID + 023, 0, 0, 1, -11303.9658203125, -3408.455810546875, 7.551846504211425781, 4.942298889160156250, 300, 300, 02, 1), -- Blasted Lands - Shadowsworn Cultist | Shadowsworn Cultist | Shadowsworn Adept (1) Wandering 020
(@CGUID + 024, 0, 0, 1, -11294.3164062500, -3415.131835937500, 9.132250785827636718, 0.837249398231506347, 300, 300, 02, 1), -- Blasted Lands - Shadowsworn Cultist | Shadowsworn Cultist | Shadowsworn Adept (1) Wandering 021
(@CGUID + 025, 0, 0, 1, -11325.9482421875, -3423.973388671875, 7.551075458526611328, 2.460914134979248046, 300, 300, 02, 1), -- Blasted Lands - Shadowsworn Cultist | Shadowsworn Cultist | Shadowsworn Adept (1) Wandering 022
(@CGUID + 026, 0, 0, 1, -11318.7832031250, -3411.531982421875, 7.551074504852294921, 1.937315464019775390, 300, 300, 02, 1), -- Blasted Lands - Shadowsworn Cultist | Shadowsworn Cultist | Shadowsworn Adept (1) Wandering 023
(@CGUID + 027, 0, 0, 1, -11308.6572265625, -3400.428955078125, 7.551074504852294921, 4.251478672027587890, 300, 300, 02, 1), -- Blasted Lands - Shadowsworn Cultist | Shadowsworn Cultist | Shadowsworn Adept (1) Wandering 024
(@CGUID + 028, 0, 0, 1, -11318.7246093750, -3445.571289062500, 7.781690597534179687, 2.681672811508178710, 300, 300, 02, 1), -- Blasted Lands - Shadowsworn Cultist | Shadowsworn Cultist | Shadowsworn Adept (1) Wandering 025
(@CGUID + 029, 0, 0, 1, -11311.2080078125, -3424.986572265625, 8.636084556579589843, 0.985759854316711425, 300, 300, 02, 1), -- Blasted Lands - Shadowsworn Cultist | Shadowsworn Cultist | Shadowsworn Adept (1) Wandering 026
(@CGUID + 030, 0, 0, 1, -11250.9482421875, -3383.250976562500, 7.550832271575927734, 4.570492267608642578, 300, 300, 20, 1), -- Blasted Lands - Shadowsworn Cultist | Shadowsworn Cultist | Shadowsworn Adept (1) Wandering 027
(@CGUID + 031, 0, 0, 1, -11348.1142578125, -3417.657470703125, 8.693085670471191406, 4.079076766967773437, 300, 300, 20, 1), -- Blasted Lands - Shadowsworn Cultist | Shadowsworn Cultist | Shadowsworn Adept (1) Wandering 028
(@CGUID + 032, 0, 0, 1, -11247.4804687500, -3414.443603515625, 11.53744029998779296, 0.616263747215270996, 300, 300, 20, 1), -- Blasted Lands - Shadowsworn Cultist | Shadowsworn Cultist | Shadowsworn Adept (1) Wandering 029
(@CGUID + 033, 0, 0, 1, -11344.9765625000, -3443.276611328125, 21.63725662231445312, 0.211604446172714233, 300, 300, 20, 1), -- Blasted Lands - Shadowsworn Cultist | Shadowsworn Cultist | Shadowsworn Adept (1) Wandering 030
(@CGUID + 034, 0, 0, 1, -11347.6972656250, -3384.651611328125, 7.551068305969238281, 0.420636951923370361, 300, 300, 20, 1), -- Blasted Lands - Shadowsworn Cultist | Shadowsworn Cultist | Shadowsworn Adept (1) Wandering 031
(@CGUID + 035, 0, 0, 1, -11316.1025390625, -3381.350830078125, 7.551073551177978515, 1.332033395767211914, 300, 300, 20, 1), -- Blasted Lands - Shadowsworn Cultist | Shadowsworn Cultist | Shadowsworn Adept (1) Wandering 032
(@CGUID + 036, 0, 0, 1, -11284.5644531250, -3380.973144531250, 8.384757995605468750, 4.820034027099609375, 300, 300, 20, 1), -- Blasted Lands - Shadowsworn Cultist | Shadowsworn Cultist | Shadowsworn Adept (1) Wandering 033

(@CGUID + 037, 0, 0, 1, -11481.5781250000, -3382.905761718750, 8.591821670532226562, 5.759955883026123046, 300, 300, 20, 1), -- Blasted Lands - Shadowsworn Cultist | Shadowsworn Cultist | Shadowsworn Adept (1) Wandering 034
(@CGUID + 038, 0, 0, 1, -11449.1484375000, -3349.789794921875, 8.484895706176757812, 4.323871612548828125, 300, 300, 20, 1), -- Blasted Lands - Shadowsworn Cultist | Shadowsworn Cultist | Shadowsworn Adept (1) Wandering 035
(@CGUID + 039, 0, 0, 1, -11488.9863281250, -3350.178955078125, 7.361435413360595703, 4.677482128143310546, 300, 300, 02, 1), -- Blasted Lands - Shadowsworn Cultist | Shadowsworn Cultist | Shadowsworn Adept (1) Wandering 036
(@CGUID + 040, 0, 0, 1, -11453.1855468750, -3317.184326171875, 8.128062248229980468, 4.892973899841308593, 300, 300, 20, 1), -- Blasted Lands - Shadowsworn Cultist | Shadowsworn Cultist | Shadowsworn Adept (1) Wandering 037
(@CGUID + 041, 0, 0, 1, -11490.9394531250, -3340.065917968750, 7.770881652832031250, 5.585053443908691406, 300, 300, 02, 1), -- Blasted Lands - Shadowsworn Cultist | Shadowsworn Cultist | Shadowsworn Adept (1) Wandering 038
(@CGUID + 042, 0, 0, 1, -11479.9882812500, -3338.948242187500, 8.333106994628906250, 1.364727854728698730, 300, 300, 02, 1), -- Blasted Lands - Shadowsworn Cultist | Shadowsworn Cultist | Shadowsworn Adept (1) Wandering 039
(@CGUID + 043, 0, 0, 1, -11517.6855468750, -3345.672851562500, 13.35682296752929687, 2.996766805648803710, 300, 300, 20, 1), -- Blasted Lands - Shadowsworn Cultist | Shadowsworn Cultist | Shadowsworn Adept (1) Wandering 040
(@CGUID + 044, 0, 0, 1, -11475.8964843750, -3348.524414062500, 7.485112667083740234, 5.994597911834716796, 300, 300, 02, 1), -- Blasted Lands - Shadowsworn Cultist | Shadowsworn Cultist | Shadowsworn Adept (1) Wandering 041
(@CGUID + 045, 0, 0, 1, -11449.5400390625, -3380.134521484375, 9.646848678588867187, 1.052497744560241699, 300, 300, 20, 1), -- Blasted Lands - Shadowsworn Cultist | Shadowsworn Cultist | Shadowsworn Adept (1) Wandering 042
(@CGUID + 046, 0, 0, 1, -11484.9960937500, -3315.003173828125, 8.911346435546875000, 1.850462675094604492, 300, 300, 20, 1), -- Blasted Lands - Shadowsworn Cultist | Shadowsworn Cultist | Shadowsworn Adept (1) Wandering 043
(@CGUID + 047, 0, 0, 1, -11518.6298828125, -3317.335449218750, 8.304701805114746093, 3.600878477096557617, 300, 300, 20, 1), -- Blasted Lands - Shadowsworn Cultist | Shadowsworn Cultist | Shadowsworn Adept (1) Wandering 044
(@CGUID + 048, 0, 0, 1, -11516.8017578125, -3379.968261718750, 11.14557266235351562, 1.524181962013244628, 300, 300, 20, 1), -- Blasted Lands - Shadowsworn Cultist | Shadowsworn Cultist | Shadowsworn Adept (1) Wandering 045
(@CGUID + 049, 0, 0, 1, -11607.4345703125, -3398.037841796875, 7.573183536529541015, 4.646425724029541015, 300, 300, 02, 1), -- Blasted Lands - Shadowsworn Cultist | Shadowsworn Cultist | Shadowsworn Adept (1) Wandering 046
(@CGUID + 050, 0, 0, 1, -11584.1064453125, -3384.214843750000, 7.853456497192382812, 3.666788578033447265, 300, 300, 20, 1), -- Blasted Lands - Shadowsworn Cultist | Shadowsworn Cultist | Shadowsworn Adept (1) Wandering 047
(@CGUID + 051, 0, 0, 1, -11612.7890625000, -3388.505126953125, 7.896259307861328125, 5.131268024444580078, 300, 300, 02, 1), -- Blasted Lands - Shadowsworn Cultist | Shadowsworn Cultist | Shadowsworn Adept (1) Wandering 048
(@CGUID + 052, 0, 0, 1, -11624.3271484375, -3390.506591796875, 9.205041885375976562, 5.201081275939941406, 300, 300, 02, 1), -- Blasted Lands - Shadowsworn Cultist | Shadowsworn Cultist | Shadowsworn Adept (1) Wandering 049
(@CGUID + 053, 0, 0, 1, -11550.9658203125, -3376.417480468750, 8.994468688964843750, 5.761404037475585937, 300, 300, 20, 1), -- Blasted Lands - Shadowsworn Cultist | Shadowsworn Cultist | Shadowsworn Adept (1) Wandering 050
(@CGUID + 054, 0, 0, 1, -11615.3525390625, -3350.159912109375, 8.609184265136718750, 5.304463386535644531, 300, 300, 20, 1), -- Blasted Lands - Shadowsworn Cultist | Shadowsworn Cultist | Shadowsworn Adept (1) Wandering 051
(@CGUID + 055, 0, 0, 1, -11581.8642578125, -3350.757812500000, 8.602541923522949218, 5.468648433685302734, 300, 300, 20, 1), -- Blasted Lands - Shadowsworn Cultist | Shadowsworn Cultist | Shadowsworn Adept (1) Wandering 052
(@CGUID + 056, 0, 0, 1, -11614.3046875000, -3404.477783203125, 7.568737506866455078, 1.086119294166564941, 300, 300, 02, 1), -- Blasted Lands - Shadowsworn Cultist | Shadowsworn Cultist | Shadowsworn Adept (1) Wandering 053
(@CGUID + 057, 0, 0, 1, -11629.3193359375, -3406.856933593750, 8.953559875488281250, 4.782202243804931640, 300, 300, 02, 1), -- Blasted Lands - Shadowsworn Cultist | Shadowsworn Cultist | Shadowsworn Adept (1) Wandering 054
(@CGUID + 058, 0, 0, 1, -11648.9775390625, -3350.953613281250, 8.603242874145507812, 0.929135918617248535, 300, 300, 20, 1), -- Blasted Lands - Shadowsworn Cultist | Shadowsworn Cultist | Shadowsworn Adept (1) Wandering 055
(@CGUID + 059, 0, 0, 1, -11553.4892578125, -3353.246826171875, 14.39645385742187500, 4.672342300415039062, 300, 300, 20, 1), -- Blasted Lands - Shadowsworn Cultist | Shadowsworn Cultist | Shadowsworn Adept (1) Wandering 056
(@CGUID + 060, 0, 0, 1, -11645.3271484375, -3388.466064453125, 15.83200359344482421, 5.163217067718505859, 300, 300, 20, 1); -- Blasted Lands - Shadowsworn Cultist | Shadowsworn Cultist | Shadowsworn Adept (1) Wandering 057

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`, `StringId`) VALUES
(@SGUID + 000, 'Blasted Lands - Shadowsworn Cultist | Shadowsworn Cultist | Shadowsworn Adept (1) Patrol 000', 0, 0, 0, 0, 0),
(@SGUID + 001, 'Blasted Lands - Shadowsworn Cultist | Shadowsworn Cultist | Shadowsworn Adept (1) Patrol 001', 0, 0, 0, 0, 0),
(@SGUID + 002, 'Blasted Lands - Shadowsworn Cultist | Shadowsworn Cultist | Shadowsworn Adept (1) Patrol 002', 0, 0, 0, 0, 0),
(@SGUID + 003, 'Blasted Lands - Shadowsworn Cultist | Shadowsworn Cultist | Shadowsworn Adept (1) Wandering 000', 0, 0, 0, 0, 0),
(@SGUID + 004, 'Blasted Lands - Shadowsworn Cultist | Shadowsworn Cultist | Shadowsworn Adept (1) Wandering 001', 0, 0, 0, 0, 0),
(@SGUID + 005, 'Blasted Lands - Shadowsworn Cultist | Shadowsworn Cultist | Shadowsworn Adept (1) Wandering 002', 0, 0, 0, 0, 0),
(@SGUID + 006, 'Blasted Lands - Shadowsworn Cultist | Shadowsworn Cultist | Shadowsworn Adept (1) Wandering 003', 0, 0, 0, 0, 0),
(@SGUID + 007, 'Blasted Lands - Shadowsworn Cultist | Shadowsworn Cultist | Shadowsworn Adept (1) Wandering 004', 0, 0, 0, 0, 0),
(@SGUID + 008, 'Blasted Lands - Shadowsworn Cultist | Shadowsworn Cultist | Shadowsworn Adept (1) Wandering 005', 0, 0, 0, 0, 0),
(@SGUID + 009, 'Blasted Lands - Shadowsworn Cultist | Shadowsworn Cultist | Shadowsworn Adept (1) Wandering 006', 0, 0, 0, 0, 0),
(@SGUID + 010, 'Blasted Lands - Shadowsworn Cultist | Shadowsworn Cultist | Shadowsworn Adept (1) Wandering 007', 0, 0, 0, 0, 0),
(@SGUID + 011, 'Blasted Lands - Shadowsworn Cultist | Shadowsworn Cultist | Shadowsworn Adept (1) Wandering 008', 0, 0, 0, 0, 0),
(@SGUID + 012, 'Blasted Lands - Shadowsworn Cultist | Shadowsworn Cultist | Shadowsworn Adept (1) Wandering 009', 0, 0, 0, 0, 0),
(@SGUID + 013, 'Blasted Lands - Shadowsworn Cultist | Shadowsworn Cultist | Shadowsworn Adept (1) Wandering 010', 0, 0, 0, 0, 0),
(@SGUID + 014, 'Blasted Lands - Shadowsworn Cultist | Shadowsworn Cultist | Shadowsworn Adept (1) Wandering 011', 0, 0, 0, 0, 0),
(@SGUID + 015, 'Blasted Lands - Shadowsworn Cultist | Shadowsworn Cultist | Shadowsworn Adept (1) Wandering 012', 0, 0, 0, 0, 0),
(@SGUID + 016, 'Blasted Lands - Shadowsworn Cultist | Shadowsworn Cultist | Shadowsworn Adept (1) Wandering 013', 0, 0, 0, 0, 0),
(@SGUID + 017, 'Blasted Lands - Shadowsworn Cultist | Shadowsworn Cultist | Shadowsworn Adept (1) Wandering 014', 0, 0, 0, 0, 0),
(@SGUID + 018, 'Blasted Lands - Shadowsworn Cultist | Shadowsworn Cultist | Shadowsworn Adept (1) Wandering 015', 0, 0, 0, 0, 0),
(@SGUID + 019, 'Blasted Lands - Shadowsworn Cultist | Shadowsworn Cultist | Shadowsworn Adept (1) Wandering 016', 0, 0, 0, 0, 0),
(@SGUID + 020, 'Blasted Lands - Shadowsworn Cultist | Shadowsworn Cultist | Shadowsworn Adept (1) Wandering 017', 0, 0, 0, 0, 0),
(@SGUID + 021, 'Blasted Lands - Shadowsworn Cultist | Shadowsworn Cultist | Shadowsworn Adept (1) Wandering 018', 0, 0, 0, 0, 0),
(@SGUID + 022, 'Blasted Lands - Shadowsworn Cultist | Shadowsworn Cultist | Shadowsworn Adept (1) Wandering 019', 0, 0, 0, 0, 0),
(@SGUID + 023, 'Blasted Lands - Shadowsworn Cultist | Shadowsworn Cultist | Shadowsworn Adept (1) Wandering 020', 0, 0, 0, 0, 0),
(@SGUID + 024, 'Blasted Lands - Shadowsworn Cultist | Shadowsworn Cultist | Shadowsworn Adept (1) Wandering 021', 0, 0, 0, 0, 0),
(@SGUID + 025, 'Blasted Lands - Shadowsworn Cultist | Shadowsworn Cultist | Shadowsworn Adept (1) Wandering 022', 0, 0, 0, 0, 0),
(@SGUID + 026, 'Blasted Lands - Shadowsworn Cultist | Shadowsworn Cultist | Shadowsworn Adept (1) Wandering 023', 0, 0, 0, 0, 0),
(@SGUID + 027, 'Blasted Lands - Shadowsworn Cultist | Shadowsworn Cultist | Shadowsworn Adept (1) Wandering 024', 0, 0, 0, 0, 0),
(@SGUID + 028, 'Blasted Lands - Shadowsworn Cultist | Shadowsworn Cultist | Shadowsworn Adept (1) Wandering 025', 0, 0, 0, 0, 0),
(@SGUID + 029, 'Blasted Lands - Shadowsworn Cultist | Shadowsworn Cultist | Shadowsworn Adept (1) Wandering 026', 0, 0, 0, 0, 0),
(@SGUID + 030, 'Blasted Lands - Shadowsworn Cultist | Shadowsworn Cultist | Shadowsworn Adept (1) Wandering 027', 0, 0, 0, 0, 0),
(@SGUID + 031, 'Blasted Lands - Shadowsworn Cultist | Shadowsworn Cultist | Shadowsworn Adept (1) Wandering 028', 0, 0, 0, 0, 0),
(@SGUID + 032, 'Blasted Lands - Shadowsworn Cultist | Shadowsworn Cultist | Shadowsworn Adept (1) Wandering 029', 0, 0, 0, 0, 0),
(@SGUID + 033, 'Blasted Lands - Shadowsworn Cultist | Shadowsworn Cultist | Shadowsworn Adept (1) Wandering 030', 0, 0, 0, 0, 0),
(@SGUID + 034, 'Blasted Lands - Shadowsworn Cultist | Shadowsworn Cultist | Shadowsworn Adept (1) Wandering 031', 0, 0, 0, 0, 0),
(@SGUID + 035, 'Blasted Lands - Shadowsworn Cultist | Shadowsworn Cultist | Shadowsworn Adept (1) Wandering 032', 0, 0, 0, 0, 0),
(@SGUID + 036, 'Blasted Lands - Shadowsworn Cultist | Shadowsworn Cultist | Shadowsworn Adept (1) Wandering 033', 0, 0, 0, 0, 0),
(@SGUID + 037, 'Blasted Lands - Shadowsworn Cultist | Shadowsworn Cultist | Shadowsworn Adept (1) Wandering 034', 0, 0, 0, 0, 0),
(@SGUID + 038, 'Blasted Lands - Shadowsworn Cultist | Shadowsworn Cultist | Shadowsworn Adept (1) Wandering 035', 0, 0, 0, 0, 0),
(@SGUID + 039, 'Blasted Lands - Shadowsworn Cultist | Shadowsworn Cultist | Shadowsworn Adept (1) Wandering 036', 0, 0, 0, 0, 0),
(@SGUID + 040, 'Blasted Lands - Shadowsworn Cultist | Shadowsworn Cultist | Shadowsworn Adept (1) Wandering 037', 0, 0, 0, 0, 0),
(@SGUID + 041, 'Blasted Lands - Shadowsworn Cultist | Shadowsworn Cultist | Shadowsworn Adept (1) Wandering 038', 0, 0, 0, 0, 0),
(@SGUID + 042, 'Blasted Lands - Shadowsworn Cultist | Shadowsworn Cultist | Shadowsworn Adept (1) Wandering 039', 0, 0, 0, 0, 0),
(@SGUID + 043, 'Blasted Lands - Shadowsworn Cultist | Shadowsworn Cultist | Shadowsworn Adept (1) Wandering 040', 0, 0, 0, 0, 0),
(@SGUID + 044, 'Blasted Lands - Shadowsworn Cultist | Shadowsworn Cultist | Shadowsworn Adept (1) Wandering 041', 0, 0, 0, 0, 0),
(@SGUID + 045, 'Blasted Lands - Shadowsworn Cultist | Shadowsworn Cultist | Shadowsworn Adept (1) Wandering 042', 0, 0, 0, 0, 0),
(@SGUID + 046, 'Blasted Lands - Shadowsworn Cultist | Shadowsworn Cultist | Shadowsworn Adept (1) Wandering 043', 0, 0, 0, 0, 0),
(@SGUID + 047, 'Blasted Lands - Shadowsworn Cultist | Shadowsworn Cultist | Shadowsworn Adept (1) Wandering 044', 0, 0, 0, 0, 0),
(@SGUID + 048, 'Blasted Lands - Shadowsworn Cultist | Shadowsworn Cultist | Shadowsworn Adept (1) Wandering 045', 0, 0, 0, 0, 0),
(@SGUID + 049, 'Blasted Lands - Shadowsworn Cultist | Shadowsworn Cultist | Shadowsworn Adept (1) Wandering 046', 0, 0, 0, 0, 0),
(@SGUID + 050, 'Blasted Lands - Shadowsworn Cultist | Shadowsworn Cultist | Shadowsworn Adept (1) Wandering 047', 0, 0, 0, 0, 0),
(@SGUID + 051, 'Blasted Lands - Shadowsworn Cultist | Shadowsworn Cultist | Shadowsworn Adept (1) Wandering 048', 0, 0, 0, 0, 0),
(@SGUID + 052, 'Blasted Lands - Shadowsworn Cultist | Shadowsworn Cultist | Shadowsworn Adept (1) Wandering 049', 0, 0, 0, 0, 0),
(@SGUID + 053, 'Blasted Lands - Shadowsworn Cultist | Shadowsworn Cultist | Shadowsworn Adept (1) Wandering 050', 0, 0, 0, 0, 0),
(@SGUID + 054, 'Blasted Lands - Shadowsworn Cultist | Shadowsworn Cultist | Shadowsworn Adept (1) Wandering 051', 0, 0, 0, 0, 0),
(@SGUID + 055, 'Blasted Lands - Shadowsworn Cultist | Shadowsworn Cultist | Shadowsworn Adept (1) Wandering 052', 0, 0, 0, 0, 0),
(@SGUID + 056, 'Blasted Lands - Shadowsworn Cultist | Shadowsworn Cultist | Shadowsworn Adept (1) Wandering 053', 0, 0, 0, 0, 0),
(@SGUID + 057, 'Blasted Lands - Shadowsworn Cultist | Shadowsworn Cultist | Shadowsworn Adept (1) Wandering 054', 0, 0, 0, 0, 0),
(@SGUID + 058, 'Blasted Lands - Shadowsworn Cultist | Shadowsworn Cultist | Shadowsworn Adept (1) Wandering 055', 0, 0, 0, 0, 0),
(@SGUID + 059, 'Blasted Lands - Shadowsworn Cultist | Shadowsworn Cultist | Shadowsworn Adept (1) Wandering 056', 0, 0, 0, 0, 0),
(@SGUID + 060, 'Blasted Lands - Shadowsworn Cultist | Shadowsworn Cultist | Shadowsworn Adept (1) Wandering 057', 0, 0, 0, 0, 0);

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
(@SGUID + 026, @CGUID + 026, 0, 0),
(@SGUID + 027, @CGUID + 027, 0, 0),
(@SGUID + 028, @CGUID + 028, 0, 0),
(@SGUID + 029, @CGUID + 029, 0, 0),
(@SGUID + 030, @CGUID + 030, 0, 0),
(@SGUID + 031, @CGUID + 031, 0, 0),
(@SGUID + 032, @CGUID + 032, 0, 0),
(@SGUID + 033, @CGUID + 033, 0, 0),
(@SGUID + 034, @CGUID + 034, 0, 0),
(@SGUID + 035, @CGUID + 035, 0, 0),
(@SGUID + 036, @CGUID + 036, 0, 0),
(@SGUID + 037, @CGUID + 037, 0, 0),
(@SGUID + 038, @CGUID + 038, 0, 0),
(@SGUID + 039, @CGUID + 039, 0, 0),
(@SGUID + 040, @CGUID + 040, 0, 0),
(@SGUID + 041, @CGUID + 041, 0, 0),
(@SGUID + 042, @CGUID + 042, 0, 0),
(@SGUID + 043, @CGUID + 043, 0, 0),
(@SGUID + 044, @CGUID + 044, 0, 0),
(@SGUID + 045, @CGUID + 045, 0, 0),
(@SGUID + 046, @CGUID + 046, 0, 0),
(@SGUID + 047, @CGUID + 047, 0, 0),
(@SGUID + 048, @CGUID + 048, 0, 0),
(@SGUID + 049, @CGUID + 049, 0, 0),
(@SGUID + 050, @CGUID + 050, 0, 0),
(@SGUID + 051, @CGUID + 051, 0, 0),
(@SGUID + 052, @CGUID + 052, 0, 0),
(@SGUID + 053, @CGUID + 053, 0, 0),
(@SGUID + 054, @CGUID + 054, 0, 0),
(@SGUID + 055, @CGUID + 055, 0, 0),
(@SGUID + 056, @CGUID + 056, 0, 0),
(@SGUID + 057, @CGUID + 057, 0, 0),
(@SGUID + 058, @CGUID + 058, 0, 0),
(@SGUID + 059, @CGUID + 059, 0, 0),
(@SGUID + 060, @CGUID + 060, 0, 0);

INSERT INTO `spawn_group_entry` (`Id`, `Entry`, `MinCount`, `MaxCount`, `Chance`) VALUES
(@SGUID + 000, 6004, 0, 0, 0), (@SGUID + 000, 6005, 0, 0, 0), (@SGUID + 000, 6006, 0, 0, 0),
(@SGUID + 001, 6004, 0, 0, 0), (@SGUID + 001, 6005, 0, 0, 0), (@SGUID + 001, 6006, 0, 0, 0),
(@SGUID + 002, 6004, 0, 0, 0), (@SGUID + 002, 6005, 0, 0, 0), (@SGUID + 002, 6006, 0, 0, 0),
(@SGUID + 003, 6004, 0, 0, 0), (@SGUID + 003, 6005, 0, 0, 0), (@SGUID + 003, 6006, 0, 0, 0),
(@SGUID + 004, 6004, 0, 0, 0), (@SGUID + 004, 6005, 0, 0, 0), (@SGUID + 004, 6006, 0, 0, 0),
(@SGUID + 005, 6004, 0, 0, 0), (@SGUID + 005, 6005, 0, 0, 0), (@SGUID + 005, 6006, 0, 0, 0),
(@SGUID + 006, 6004, 0, 0, 0), (@SGUID + 006, 6005, 0, 0, 0), (@SGUID + 006, 6006, 0, 0, 0),
(@SGUID + 007, 6004, 0, 0, 0), (@SGUID + 007, 6005, 0, 0, 0), (@SGUID + 007, 6006, 0, 0, 0),
(@SGUID + 008, 6004, 0, 0, 0), (@SGUID + 008, 6005, 0, 0, 0), (@SGUID + 008, 6006, 0, 0, 0),
(@SGUID + 009, 6004, 0, 0, 0), (@SGUID + 009, 6005, 0, 0, 0), (@SGUID + 009, 6006, 0, 0, 0),
(@SGUID + 010, 6004, 0, 0, 0), (@SGUID + 010, 6005, 0, 0, 0), (@SGUID + 010, 6006, 0, 0, 0),
(@SGUID + 011, 6004, 0, 0, 0), (@SGUID + 011, 6005, 0, 0, 0), (@SGUID + 011, 6006, 0, 0, 0),
(@SGUID + 012, 6004, 0, 0, 0), (@SGUID + 012, 6005, 0, 0, 0), (@SGUID + 012, 6006, 0, 0, 0),
(@SGUID + 013, 6004, 0, 0, 0), (@SGUID + 013, 6005, 0, 0, 0), (@SGUID + 013, 6006, 0, 0, 0),
(@SGUID + 014, 6004, 0, 0, 0), (@SGUID + 014, 6005, 0, 0, 0), (@SGUID + 014, 6006, 0, 0, 0),
(@SGUID + 015, 6004, 0, 0, 0), (@SGUID + 015, 6005, 0, 0, 0), (@SGUID + 015, 6006, 0, 0, 0),
(@SGUID + 016, 6004, 0, 0, 0), (@SGUID + 016, 6005, 0, 0, 0), (@SGUID + 016, 6006, 0, 0, 0),
(@SGUID + 017, 6004, 0, 0, 0), (@SGUID + 017, 6005, 0, 0, 0), (@SGUID + 017, 6006, 0, 0, 0),
(@SGUID + 018, 6004, 0, 0, 0), (@SGUID + 018, 6005, 0, 0, 0), (@SGUID + 018, 6006, 0, 0, 0),
(@SGUID + 019, 6004, 0, 0, 0), (@SGUID + 019, 6005, 0, 0, 0), (@SGUID + 019, 6006, 0, 0, 0),
(@SGUID + 020, 6004, 0, 0, 0), (@SGUID + 020, 6005, 0, 0, 0), (@SGUID + 020, 6006, 0, 0, 0),
(@SGUID + 021, 6004, 0, 0, 0), (@SGUID + 021, 6005, 0, 0, 0), (@SGUID + 021, 6006, 0, 0, 0),
(@SGUID + 022, 6004, 0, 0, 0), (@SGUID + 022, 6005, 0, 0, 0), (@SGUID + 022, 6006, 0, 0, 0),
(@SGUID + 023, 6004, 0, 0, 0), (@SGUID + 023, 6005, 0, 0, 0), (@SGUID + 023, 6006, 0, 0, 0),
(@SGUID + 024, 6004, 0, 0, 0), (@SGUID + 024, 6005, 0, 0, 0), (@SGUID + 024, 6006, 0, 0, 0),
(@SGUID + 025, 6004, 0, 0, 0), (@SGUID + 025, 6005, 0, 0, 0), (@SGUID + 025, 6006, 0, 0, 0),
(@SGUID + 026, 6004, 0, 0, 0), (@SGUID + 026, 6005, 0, 0, 0), (@SGUID + 026, 6006, 0, 0, 0),
(@SGUID + 027, 6004, 0, 0, 0), (@SGUID + 027, 6005, 0, 0, 0), (@SGUID + 027, 6006, 0, 0, 0),
(@SGUID + 028, 6004, 0, 0, 0), (@SGUID + 028, 6005, 0, 0, 0), (@SGUID + 028, 6006, 0, 0, 0),
(@SGUID + 029, 6004, 0, 0, 0), (@SGUID + 029, 6005, 0, 0, 0), (@SGUID + 029, 6006, 0, 0, 0),
(@SGUID + 030, 6004, 0, 0, 0), (@SGUID + 030, 6005, 0, 0, 0), (@SGUID + 030, 6006, 0, 0, 0),
(@SGUID + 031, 6004, 0, 0, 0), (@SGUID + 031, 6005, 0, 0, 0), (@SGUID + 031, 6006, 0, 0, 0),
(@SGUID + 032, 6004, 0, 0, 0), (@SGUID + 032, 6005, 0, 0, 0), (@SGUID + 032, 6006, 0, 0, 0),
(@SGUID + 033, 6004, 0, 0, 0), (@SGUID + 033, 6005, 0, 0, 0), (@SGUID + 033, 6006, 0, 0, 0),
(@SGUID + 034, 6004, 0, 0, 0), (@SGUID + 034, 6005, 0, 0, 0), (@SGUID + 034, 6006, 0, 0, 0),
(@SGUID + 035, 6004, 0, 0, 0), (@SGUID + 035, 6005, 0, 0, 0), (@SGUID + 035, 6006, 0, 0, 0),
(@SGUID + 036, 6004, 0, 0, 0), (@SGUID + 036, 6005, 0, 0, 0), (@SGUID + 036, 6006, 0, 0, 0),
(@SGUID + 037, 6004, 0, 0, 0), (@SGUID + 037, 6005, 0, 0, 0), (@SGUID + 037, 6006, 0, 0, 0),
(@SGUID + 038, 6004, 0, 0, 0), (@SGUID + 038, 6005, 0, 0, 0), (@SGUID + 038, 6006, 0, 0, 0),
(@SGUID + 039, 6004, 0, 0, 0), (@SGUID + 039, 6005, 0, 0, 0), (@SGUID + 039, 6006, 0, 0, 0),
(@SGUID + 040, 6004, 0, 0, 0), (@SGUID + 040, 6005, 0, 0, 0), (@SGUID + 040, 6006, 0, 0, 0),
(@SGUID + 041, 6004, 0, 0, 0), (@SGUID + 041, 6005, 0, 0, 0), (@SGUID + 041, 6006, 0, 0, 0),
(@SGUID + 042, 6004, 0, 0, 0), (@SGUID + 042, 6005, 0, 0, 0), (@SGUID + 042, 6006, 0, 0, 0),
(@SGUID + 043, 6004, 0, 0, 0), (@SGUID + 043, 6005, 0, 0, 0), (@SGUID + 043, 6006, 0, 0, 0),
(@SGUID + 044, 6004, 0, 0, 0), (@SGUID + 044, 6005, 0, 0, 0), (@SGUID + 044, 6006, 0, 0, 0),
(@SGUID + 045, 6004, 0, 0, 0), (@SGUID + 045, 6005, 0, 0, 0), (@SGUID + 045, 6006, 0, 0, 0),
(@SGUID + 046, 6004, 0, 0, 0), (@SGUID + 046, 6005, 0, 0, 0), (@SGUID + 046, 6006, 0, 0, 0),
(@SGUID + 047, 6004, 0, 0, 0), (@SGUID + 047, 6005, 0, 0, 0), (@SGUID + 047, 6006, 0, 0, 0),
(@SGUID + 048, 6004, 0, 0, 0), (@SGUID + 048, 6005, 0, 0, 0), (@SGUID + 048, 6006, 0, 0, 0),
(@SGUID + 049, 6004, 0, 0, 0), (@SGUID + 049, 6005, 0, 0, 0), (@SGUID + 049, 6006, 0, 0, 0),
(@SGUID + 050, 6004, 0, 0, 0), (@SGUID + 050, 6005, 0, 0, 0), (@SGUID + 050, 6006, 0, 0, 0),
(@SGUID + 051, 6004, 0, 0, 0), (@SGUID + 051, 6005, 0, 0, 0), (@SGUID + 051, 6006, 0, 0, 0),
(@SGUID + 052, 6004, 0, 0, 0), (@SGUID + 052, 6005, 0, 0, 0), (@SGUID + 052, 6006, 0, 0, 0),
(@SGUID + 053, 6004, 0, 0, 0), (@SGUID + 053, 6005, 0, 0, 0), (@SGUID + 053, 6006, 0, 0, 0),
(@SGUID + 054, 6004, 0, 0, 0), (@SGUID + 054, 6005, 0, 0, 0), (@SGUID + 054, 6006, 0, 0, 0),
(@SGUID + 055, 6004, 0, 0, 0), (@SGUID + 055, 6005, 0, 0, 0), (@SGUID + 055, 6006, 0, 0, 0),
(@SGUID + 056, 6004, 0, 0, 0), (@SGUID + 056, 6005, 0, 0, 0), (@SGUID + 056, 6006, 0, 0, 0),
(@SGUID + 057, 6004, 0, 0, 0), (@SGUID + 057, 6005, 0, 0, 0), (@SGUID + 057, 6006, 0, 0, 0),
(@SGUID + 058, 6004, 0, 0, 0), (@SGUID + 058, 6005, 0, 0, 0), (@SGUID + 058, 6006, 0, 0, 0),
(@SGUID + 059, 6004, 0, 0, 0), (@SGUID + 059, 6005, 0, 0, 0), (@SGUID + 059, 6006, 0, 0, 0),
(@SGUID + 060, 6004, 0, 0, 0), (@SGUID + 060, 6005, 0, 0, 0), (@SGUID + 060, 6006, 0, 0, 0);

INSERT INTO `creature_movement` (`Id`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(@CGUID + 000, 01, -11275.4638671875, -3471.361083984375, 8.888635635375976562, 100, 0, 0),
(@CGUID + 000, 02, -11269.8017578125, -3471.768798828125, 9.382988929748535156, 100, 0, 0),
(@CGUID + 000, 03, -11267.1757812500, -3475.195312500000, 9.313282966613769531, 100, 0, 0),
(@CGUID + 000, 04, -11257.4628906250, -3471.941894531250, 7.674159049987792968, 100, 0, 0),
(@CGUID + 000, 05, -11251.2392578125, -3469.388427734375, 7.627692222595214843, 100, 0, 0),
(@CGUID + 000, 06, -11245.2792968750, -3459.902343750000, 8.117647171020507812, 100, 0, 0),
(@CGUID + 000, 07, -11252.4042968750, -3450.056884765625, 8.048671722412109375, 100, 0, 0),
(@CGUID + 000, 08, -11261.5703125000, -3447.974365234375, 8.543871879577636718, 100, 0, 0),
(@CGUID + 000, 09, -11272.9345703125, -3452.837646484375, 7.965094089508056640, 100, 0, 0),
(@CGUID + 000, 10, -11285.9970703125, -3443.111816406250, 10.42124938964843750, 100, 0, 0),
(@CGUID + 000, 11, -11299.9443359375, -3423.649658203125, 10.29004859924316406, 100, 0, 0);

INSERT INTO `creature_movement` (`Id`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(@CGUID + 001, 01, -11244.6093750000, -3560.008544921875, 7.998244285583496093, 100, 0, 0),
(@CGUID + 001, 02, -11252.9091796875, -3561.667236328125, 8.153172492980957031, 100, 0, 0),
(@CGUID + 001, 03, -11259.9042968750, -3557.214843750000, 7.799201488494873046, 100, 0, 0),
(@CGUID + 001, 04, -11263.1279296875, -3544.623535156250, 8.029183387756347656, 100, 0, 0),
(@CGUID + 001, 05, -11261.6787109375, -3531.055175781250, 8.974466323852539062, 100, 0, 0),
(@CGUID + 001, 06, -11266.5166015625, -3520.422119140625, 7.779423236846923828, 100, 0, 0),
(@CGUID + 001, 07, -11273.1328125000, -3508.522949218750, 8.415849685668945312, 100, 0, 0),
(@CGUID + 001, 08, -11273.6416015625, -3495.410400390625, 9.472715377807617187, 100, 0, 0),
(@CGUID + 001, 09, -11263.7939453125, -3486.334472656250, 8.774415969848632812, 100, 0, 0),
(@CGUID + 001, 10, -11264.7177734375, -3480.863769531250, 9.312274932861328125, 100, 0, 0);

INSERT INTO `creature_movement` (`Id`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(@CGUID + 002, 01, -11215.9873046875, -3509.849853515625, 8.330449104309082031, 100, 0, 0),
(@CGUID + 002, 02, -11218.5400390625, -3502.078857421875, 7.807376861572265625, 100, 0, 0),
(@CGUID + 002, 03, -11219.5361328125, -3491.964111328125, 8.319699287414550781, 100, 0, 0),
(@CGUID + 002, 04, -11225.8369140625, -3480.697998046875, 8.701709747314453125, 100, 0, 0),
(@CGUID + 002, 05, -11226.5986328125, -3493.883300781250, 9.802264213562011718, 100, 0, 0),
(@CGUID + 002, 06, -11231.3896484375, -3501.744140625000, 11.59801578521728515, 100, 0, 0),
(@CGUID + 002, 07, -11232.9589843750, -3512.342041015625, 13.22108554840087890, 100, 0, 0),
(@CGUID + 002, 08, -11238.9257812500, -3521.934814453125, 11.58576202392578125, 100, 0, 0),
(@CGUID + 002, 09, -11253.2832031250, -3526.187500000000, 8.805961608886718750, 100, 0, 0);
