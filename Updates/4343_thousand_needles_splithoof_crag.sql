
DELETE FROM `creature` WHERE (`guid` IN (20973, 20976, 20978, 20979, 20980, 20981, 20982, 20983, 20984, 20985, 20986, 20987, 20988, 20989, 20990, 20991, 20992, 20993, 20995, 20996, 20997, 20998, 20999, 21000,
21709, 21710, 21711, 21712, 21713, 21714, 21715, 21716, 21717, 21718, 21719, 21720, 21721, 21722, 21723, 21724, 21725, 21726, 21727, 21728, 21729, 21730, 21731, 21732, 21733, 21734, 21735, 21736, 21737, 21738,
21739, 21740, 21741, 21742, 21743, 21744, 21745, 21746, 21747, 21748, 21749, 21750, 21751, 21752));

DELETE FROM `creature_movement` WHERE (`id` IN (21740, 21749));
UPDATE `creature` SET `MovementType` = 0 WHERE (`guid` IN (21740, 21749));

SET @CGUID := 99040;
SET @SGUID := 10138;

INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
(@CGUID + 000, 0, 1, 1, 0, -4946.08105468750, -2131.103759765625, -46.9927749633789062, 1.871161818504333496, 300, 300, 00, 4), -- Thousand Needles - Galak Wrangler 4093 | Galak Scout 4094 | Galak Windchaser 4096 (1) Patrol 001
(@CGUID + 001, 0, 1, 1, 0, -5219.79199218750, -2583.715820312500, -39.8312797546386718, 2.897246599197387695, 300, 300, 00, 4), -- Thousand Needles - Galak Wrangler 4093 | Galak Scout 4094 | Galak Windchaser 4096 (1) Patrol 002
(@CGUID + 002, 0, 1, 1, 0, -5148.50439453125, -2455.159667968750, -52.3740119934082031, 1.570796370506286621, 300, 300, 00, 0), -- Thousand Needles - Galak Wrangler 4093 | Galak Scout 4094 | Galak Windchaser 4096 (1) Standing 000
(@CGUID + 003, 0, 1, 1, 0, -5047.26025390625, -2221.008789062500, -54.1096725463867187, 5.652330398559570312, 300, 300, 01, 1), -- Thousand Needles - Galak Wrangler 4093 | Galak Scout 4094 | Galak Windchaser 4096 (1) Wandering 003
(@CGUID + 004, 0, 1, 1, 0, -4989.33056640625, -2245.124267578125, -52.3527297973632812, 1.127620220184326171, 300, 300, 05, 1), -- Thousand Needles - Galak Wrangler 4093 | Galak Scout 4094 | Galak Windchaser 4096 (1) Wandering 004
(@CGUID + 005, 0, 1, 1, 0, -5014.65039062500, -2228.323486328125, -53.1235046386718750, 0.506145477294921875, 300, 300, 01, 1), -- Thousand Needles - Galak Wrangler 4093 | Galak Scout 4094 | Galak Windchaser 4096 (1) Wandering 005
(@CGUID + 006, 0, 1, 1, 0, -4977.98388671875, -2212.537841796875, -53.8997039794921875, 4.599464893341064453, 300, 300, 01, 1), -- Thousand Needles - Galak Wrangler 4093 | Galak Scout 4094 | Galak Windchaser 4096 (1) Wandering 006
(@CGUID + 007, 0, 1, 1, 0, -4941.45214843750, -2188.966064453125, -51.0930213928222656, 6.056292533874511718, 300, 300, 01, 1), -- Thousand Needles - Galak Wrangler 4093 | Galak Scout 4094 | Galak Windchaser 4096 (1) Wandering 007
(@CGUID + 008, 0, 1, 1, 0, -5014.47851562500, -2186.642822265625, -50.7594070434570312, 5.631029605865478515, 300, 300, 10, 1), -- Thousand Needles - Galak Wrangler 4093 | Galak Scout 4094 | Galak Windchaser 4096 (1) Wandering 008
(@CGUID + 009, 0, 1, 1, 0, -4982.82958984375, -2186.291259765625, -52.1023597717285156, 3.450086593627929687, 300, 300, 10, 1), -- Thousand Needles - Galak Wrangler 4093 | Galak Scout 4094 | Galak Windchaser 4096 (1) Wandering 009
(@CGUID + 010, 0, 1, 1, 0, -4921.12548828125, -2150.765136718750, -55.8854141235351562, 2.865536212921142578, 300, 300, 10, 1), -- Thousand Needles - Galak Wrangler 4093 | Galak Scout 4094 | Galak Windchaser 4096 (1) Wandering 010
(@CGUID + 011, 0, 1, 1, 0, -4997.73583984375, -2217.866455078125, -53.1946105957031250, 4.806949138641357421, 300, 300, 05, 1), -- Thousand Needles - Galak Wrangler 4093 | Galak Scout 4094 | Galak Windchaser 4096 (1) Wandering 011
(@CGUID + 012, 0, 1, 1, 0, -5049.71240234375, -2162.863281250000, -52.0936851501464843, 2.228022813796997070, 300, 300, 01, 1), -- Thousand Needles - Galak Wrangler 4093 | Galak Scout 4094 | Galak Windchaser 4096 (1) Wandering 012
(@CGUID + 013, 0, 1, 1, 0, -5066.77001953125, -2221.097167968750, -54.7352294921875000, 5.864306449890136718, 300, 300, 05, 1), -- Thousand Needles - Galak Wrangler 4093 | Galak Scout 4094 | Galak Windchaser 4096 (1) Wandering 013
(@CGUID + 014, 0, 1, 1, 0, -5055.43701171875, -2254.494628906250, -53.4272613525390625, 1.229549646377563476, 300, 300, 01, 1), -- Thousand Needles - Galak Wrangler 4093 | Galak Scout 4094 | Galak Windchaser 4096 (1) Wandering 014
(@CGUID + 015, 0, 1, 1, 0, -5038.05322265625, -2204.654296875000, -54.4179687500000000, 4.939281940460205078, 300, 300, 01, 1), -- Thousand Needles - Galak Wrangler 4093 | Galak Scout 4094 | Galak Windchaser 4096 (1) Wandering 015
(@CGUID + 016, 0, 1, 1, 0, -5022.16259765625, -2244.561279296875, -52.6702270507812500, 2.078749418258666992, 300, 300, 05, 1), -- Thousand Needles - Galak Wrangler 4093 | Galak Scout 4094 | Galak Windchaser 4096 (1) Wandering 016
(@CGUID + 017, 0, 1, 1, 0, -5048.82470703125, -2246.270019531250, -53.3073539733886718, 0.282098293304443359, 300, 300, 05, 1), -- Thousand Needles - Galak Wrangler 4093 | Galak Scout 4094 | Galak Windchaser 4096 (1) Wandering 017
(@CGUID + 018, 0, 1, 1, 0, -5081.95605468750, -2148.355468750000, -46.2643775939941406, 0.993412256240844726, 300, 300, 10, 1), -- Thousand Needles - Galak Wrangler 4093 | Galak Scout 4094 | Galak Windchaser 4096 (1) Wandering 018
(@CGUID + 019, 0, 1, 1, 0, -5080.86572265625, -2212.114501953125, -54.8028068542480468, 0.890117883682250976, 300, 300, 01, 1), -- Thousand Needles - Galak Wrangler 4093 | Galak Scout 4094 | Galak Windchaser 4096 (1) Wandering 019
(@CGUID + 020, 0, 1, 1, 0, -5078.81005859375, -2185.446533203125, -53.9579048156738281, 5.667090892791748046, 300, 300, 10, 1), -- Thousand Needles - Galak Wrangler 4093 | Galak Scout 4094 | Galak Windchaser 4096 (1) Wandering 020
(@CGUID + 021, 0, 1, 1, 0, -5080.08447265625, -2283.526855468750, -54.1176872253417968, 0.614727914333343505, 300, 300, 05, 1), -- Thousand Needles - Galak Wrangler 4093 | Galak Scout 4094 | Galak Windchaser 4096 (1) Wandering 021
(@CGUID + 022, 0, 1, 1, 0, -5057.01123046875, -2312.838623046875, -52.7424011230468750, 4.433136463165283203, 300, 300, 05, 1), -- Thousand Needles - Galak Wrangler 4093 | Galak Scout 4094 | Galak Windchaser 4096 (1) Wandering 022
(@CGUID + 023, 0, 1, 1, 0, -5066.04199218750, -2297.771728515625, -53.1985206604003906, 5.950061798095703125, 300, 300, 01, 1), -- Thousand Needles - Galak Wrangler 4093 | Galak Scout 4094 | Galak Windchaser 4096 (1) Wandering 023
(@CGUID + 024, 0, 1, 1, 0, -5093.52587890625, -2278.538818359375, -54.7211303710937500, 2.565634012222290039, 300, 300, 01, 1), -- Thousand Needles - Galak Wrangler 4093 | Galak Scout 4094 | Galak Windchaser 4096 (1) Wandering 024
(@CGUID + 025, 0, 1, 1, 0, -5109.86181640625, -2237.428710937500, -50.6026306152343750, 3.334405422210693359, 300, 300, 01, 1), -- Thousand Needles - Galak Wrangler 4093 | Galak Scout 4094 | Galak Windchaser 4096 (1) Wandering 025
(@CGUID + 026, 0, 1, 1, 0, -5118.63378906250, -2268.638427734375, -55.3877067565917968, 0.471238881349563598, 300, 300, 05, 1), -- Thousand Needles - Galak Wrangler 4093 | Galak Scout 4094 | Galak Windchaser 4096 (1) Wandering 026
(@CGUID + 027, 0, 1, 1, 0, -5157.78320312500, -2293.601562500000, -44.5036888122558593, 6.156461715698242187, 300, 300, 01, 1), -- Thousand Needles - Galak Wrangler 4093 | Galak Scout 4094 | Galak Windchaser 4096 (1) Wandering 027
(@CGUID + 028, 0, 1, 1, 0, -5152.78662109375, -2316.965332031250, -44.8979797363281250, 1.815142393112182617, 300, 300, 10, 1), -- Thousand Needles - Galak Wrangler 4093 | Galak Scout 4094 | Galak Windchaser 4096 (1) Wandering 028
(@CGUID + 029, 0, 1, 1, 0, -5181.52490234375, -2235.735351562500, -45.3458557128906250, 4.991641521453857421, 300, 300, 10, 1), -- Thousand Needles - Galak Wrangler 4093 | Galak Scout 4094 | Galak Windchaser 4096 (1) Wandering 029
(@CGUID + 030, 0, 1, 1, 0, -5085.63085937500, -2255.327636718750, -54.4041900634765625, 5.570140838623046875, 300, 300, 05, 1), -- Thousand Needles - Galak Wrangler 4093 | Galak Scout 4094 | Galak Windchaser 4096 (1) Wandering 030
(@CGUID + 031, 0, 1, 1, 0, -5082.88525390625, -2316.386474609375, -53.8008232116699218, 1.189561367034912109, 300, 300, 10, 1), -- Thousand Needles - Galak Wrangler 4093 | Galak Scout 4094 | Galak Windchaser 4096 (1) Wandering 031
(@CGUID + 032, 0, 1, 1, 0, -5150.92480468750, -2252.123291015625, -54.1368103027343750, 3.786288261413574218, 300, 300, 10, 1), -- Thousand Needles - Galak Wrangler 4093 | Galak Scout 4094 | Galak Windchaser 4096 (1) Wandering 032
(@CGUID + 033, 0, 1, 1, 0, -5114.94726562500, -2318.641845703125, -55.3012580871582031, 0.563751637935638427, 300, 300, 01, 1), -- Thousand Needles - Galak Wrangler 4093 | Galak Scout 4094 | Galak Windchaser 4096 (1) Wandering 033
(@CGUID + 034, 0, 1, 1, 0, -5018.43896484375, -2315.827148437500, -47.9164466857910156, 3.595378160476684570, 300, 300, 05, 1), -- Thousand Needles - Galak Wrangler 4093 | Galak Scout 4094 | Galak Windchaser 4096 (1) Wandering 034
(@CGUID + 035, 0, 1, 1, 0, -5081.29052734375, -2350.393798828125, -53.7731361389160156, 0.412291347980499267, 300, 300, 10, 1), -- Thousand Needles - Galak Wrangler 4093 | Galak Scout 4094 | Galak Windchaser 4096 (1) Wandering 035
(@CGUID + 036, 0, 1, 1, 0, -5116.06494140625, -2350.038574218750, -54.7400665283203125, 5.012001037597656250, 300, 300, 10, 1), -- Thousand Needles - Galak Wrangler 4093 | Galak Scout 4094 | Galak Windchaser 4096 (1) Wandering 036
(@CGUID + 037, 0, 1, 1, 0, -5121.52001953125, -2413.329589843750, -52.9752578735351562, 5.794966220855712890, 300, 300, 10, 1), -- Thousand Needles - Galak Wrangler 4093 | Galak Scout 4094 | Galak Windchaser 4096 (1) Wandering 037
(@CGUID + 038, 0, 1, 1, 0, -5046.45361328125, -2331.141601562500, -52.7249450683593750, 2.478996276855468750, 300, 300, 01, 1), -- Thousand Needles - Galak Wrangler 4093 | Galak Scout 4094 | Galak Windchaser 4096 (1) Wandering 038
(@CGUID + 039, 0, 1, 1, 0, -5153.60009765625, -2350.496337890625, -43.1281700134277343, 4.195575714111328125, 300, 300, 10, 1), -- Thousand Needles - Galak Wrangler 4093 | Galak Scout 4094 | Galak Windchaser 4096 (1) Wandering 039
(@CGUID + 040, 0, 1, 1, 0, -5159.83837890625, -2373.399658203125, -42.1994132995605468, 1.026197552680969238, 300, 300, 01, 1), -- Thousand Needles - Galak Wrangler 4093 | Galak Scout 4094 | Galak Windchaser 4096 (1) Wandering 040
(@CGUID + 041, 0, 1, 1, 0, -5147.47998046875, -2384.514160156250, -50.7992019653320312, 3.980190992355346679, 300, 300, 10, 1), -- Thousand Needles - Galak Wrangler 4093 | Galak Scout 4094 | Galak Windchaser 4096 (1) Wandering 041
(@CGUID + 042, 0, 1, 1, 0, -5129.07275390625, -2391.876708984375, -53.3321495056152343, 0.628318548202514648, 300, 300, 01, 1), -- Thousand Needles - Galak Wrangler 4093 | Galak Scout 4094 | Galak Windchaser 4096 (1) Wandering 042
(@CGUID + 043, 0, 1, 1, 0, -5093.31103515625, -2388.519775390625, -53.5374450683593750, 4.753326892852783203, 300, 300, 01, 1), -- Thousand Needles - Galak Wrangler 4093 | Galak Scout 4094 | Galak Windchaser 4096 (1) Wandering 043
(@CGUID + 044, 0, 1, 1, 0, -5166.02050781250, -2411.045654296875, -49.1816673278808593, 3.711131334304809570, 300, 300, 01, 1), -- Thousand Needles - Galak Wrangler 4093 | Galak Scout 4094 | Galak Windchaser 4096 (1) Wandering 044
(@CGUID + 045, 0, 1, 1, 0, -5182.55712890625, -2386.651611328125, -38.5259056091308593, 5.279286861419677734, 300, 300, 10, 1), -- Thousand Needles - Galak Wrangler 4093 | Galak Scout 4094 | Galak Windchaser 4096 (1) Wandering 045
(@CGUID + 046, 0, 1, 1, 0, -5198.43066406250, -2419.573730468750, -37.8668975830078125, 0.539146780967712402, 300, 300, 01, 1), -- Thousand Needles - Galak Wrangler 4093 | Galak Scout 4094 | Galak Windchaser 4096 (1) Wandering 046
(@CGUID + 047, 0, 1, 1, 0, -5180.76025390625, -2446.025634765625, -51.7760009765625000, 5.055331230163574218, 300, 300, 10, 1), -- Thousand Needles - Galak Wrangler 4093 | Galak Scout 4094 | Galak Windchaser 4096 (1) Wandering 047
(@CGUID + 048, 0, 1, 1, 0, -5134.26855468750, -2431.858642578125, -52.3491935729980468, 2.606035232543945312, 300, 300, 01, 1), -- Thousand Needles - Galak Wrangler 4093 | Galak Scout 4094 | Galak Windchaser 4096 (1) Wandering 048
(@CGUID + 049, 0, 1, 1, 0, -5155.78271484375, -2427.167236328125, -51.2241859436035156, 4.363323211669921875, 300, 300, 05, 1), -- Thousand Needles - Galak Wrangler 4093 | Galak Scout 4094 | Galak Windchaser 4096 (1) Wandering 049
(@CGUID + 050, 0, 1, 1, 0, -5182.99169921875, -2485.973876953125, -51.3379516601562500, 1.537837266921997070, 300, 300, 10, 1), -- Thousand Needles - Galak Wrangler 4093 | Galak Scout 4094 | Galak Windchaser 4096 (1) Wandering 050
(@CGUID + 051, 0, 1, 1, 0, -5149.55126953125, -2484.524169921875, -51.4292488098144531, 4.257012844085693359, 300, 300, 10, 1), -- Thousand Needles - Galak Wrangler 4093 | Galak Scout 4094 | Galak Windchaser 4096 (1) Wandering 051
(@CGUID + 052, 0, 1, 1, 0, -5194.66748046875, -2462.637207031250, -51.4179267883300781, 1.989675283432006835, 300, 300, 01, 1), -- Thousand Needles - Galak Wrangler 4093 | Galak Scout 4094 | Galak Windchaser 4096 (1) Wandering 052
(@CGUID + 053, 0, 1, 1, 0, -5149.60156250000, -2508.488281250000, -50.7599449157714843, 2.984513044357299804, 300, 300, 01, 1), -- Thousand Needles - Galak Wrangler 4093 | Galak Scout 4094 | Galak Windchaser 4096 (1) Wandering 053
(@CGUID + 054, 0, 1, 1, 0, -5216.79443359375, -2450.010009765625, -48.1022300720214843, 3.830610513687133789, 300, 300, 10, 1), -- Thousand Needles - Galak Wrangler 4093 | Galak Scout 4094 | Galak Windchaser 4096 (1) Wandering 054
(@CGUID + 055, 0, 1, 1, 0, -5181.05468750000, -2531.870117187500, -50.8841781616210937, 2.513274192810058593, 300, 300, 01, 1), -- Thousand Needles - Galak Wrangler 4093 | Galak Scout 4094 | Galak Windchaser 4096 (1) Wandering 055
(@CGUID + 056, 0, 1, 1, 0, -5254.39404296875, -2439.665283203125, -41.0421447753906250, 1.089730143547058105, 300, 300, 10, 1), -- Thousand Needles - Galak Wrangler 4093 | Galak Scout 4094 | Galak Windchaser 4096 (1) Wandering 056
(@CGUID + 057, 0, 1, 1, 0, -5196.55810546875, -2512.649658203125, -49.0907821655273437, 5.651368141174316406, 300, 300, 05, 1), -- Thousand Needles - Galak Wrangler 4093 | Galak Scout 4094 | Galak Windchaser 4096 (1) Wandering 057
(@CGUID + 058, 0, 1, 1, 0, -5191.07666015625, -2580.256591796875, -51.1552581787109375, 6.161012172698974609, 300, 300, 01, 1), -- Thousand Needles - Galak Wrangler 4093 | Galak Scout 4094 | Galak Windchaser 4096 (1) Wandering 058
(@CGUID + 059, 0, 1, 1, 0, -5183.10205078125, -2613.016113281250, -50.7076072692871093, 1.033200383186340332, 300, 300, 10, 1), -- Thousand Needles - Galak Wrangler 4093 | Galak Scout 4094 | Galak Windchaser 4096 (1) Wandering 059
(@CGUID + 060, 0, 1, 1, 0, -5172.14941406250, -2578.728271484375, -50.4070739746093750, 2.149405956268310546, 300, 300, 05, 1), -- Thousand Needles - Galak Wrangler 4093 | Galak Scout 4094 | Galak Windchaser 4096 (1) Wandering 060
(@CGUID + 061, 0, 1, 1, 0, -5246.38867187500, -2567.558593750000, -39.6285057067871093, 4.944764614105224609, 300, 300, 10, 1), -- Thousand Needles - Galak Wrangler 4093 | Galak Scout 4094 | Galak Windchaser 4096 (1) Wandering 061
(@CGUID + 062, 0, 1, 1, 0, -5158.57519531250, -2534.139892578125, -50.4927673339843750, 3.718518972396850585, 300, 300, 05, 1), -- Thousand Needles - Galak Wrangler 4093 | Galak Scout 4094 | Galak Windchaser 4096 (1) Wandering 062
(@CGUID + 063, 0, 1, 1, 0, -5153.15917968750, -2553.312011718750, -49.7029113769531250, 3.347054004669189453, 300, 300, 01, 1), -- Thousand Needles - Galak Wrangler 4093 | Galak Scout 4094 | Galak Windchaser 4096 (1) Wandering 063
(@CGUID + 064, 0, 1, 1, 0, -5224.43212890625, -2553.675048828125, -46.7302513122558593, 5.734358787536621093, 300, 300, 10, 1); -- Thousand Needles - Galak Wrangler 4093 | Galak Scout 4094 | Galak Windchaser 4096 (1) Wandering 064

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`, `StringId`) VALUES
(@SGUID + 000, 'Thousand Needles - Galak Wrangler 4093 | Galak Scout 4094 | Galak Windchaser 4096 (1) Patrol 001', 0, 0, 0, 0, 0),
(@SGUID + 001, 'Thousand Needles - Galak Wrangler 4093 | Galak Scout 4094 | Galak Windchaser 4096 (1) Patrol 002', 0, 0, 0, 0, 0),
(@SGUID + 002, 'Thousand Needles - Galak Wrangler 4093 | Galak Scout 4094 | Galak Windchaser 4096 (1) Standing 000', 0, 0, 0, 0, 0),
(@SGUID + 003, 'Thousand Needles - Galak Wrangler 4093 | Galak Scout 4094 | Galak Windchaser 4096 (1) Wandering 003', 0, 0, 0, 0, 0),
(@SGUID + 004, 'Thousand Needles - Galak Wrangler 4093 | Galak Scout 4094 | Galak Windchaser 4096 (1) Wandering 004', 0, 0, 0, 0, 0),
(@SGUID + 005, 'Thousand Needles - Galak Wrangler 4093 | Galak Scout 4094 | Galak Windchaser 4096 (1) Wandering 005', 0, 0, 0, 0, 0),
(@SGUID + 006, 'Thousand Needles - Galak Wrangler 4093 | Galak Scout 4094 | Galak Windchaser 4096 (1) Wandering 006', 0, 0, 0, 0, 0),
(@SGUID + 007, 'Thousand Needles - Galak Wrangler 4093 | Galak Scout 4094 | Galak Windchaser 4096 (1) Wandering 007', 0, 0, 0, 0, 0),
(@SGUID + 008, 'Thousand Needles - Galak Wrangler 4093 | Galak Scout 4094 | Galak Windchaser 4096 (1) Wandering 008', 0, 0, 0, 0, 0),
(@SGUID + 009, 'Thousand Needles - Galak Wrangler 4093 | Galak Scout 4094 | Galak Windchaser 4096 (1) Wandering 009', 0, 0, 0, 0, 0),
(@SGUID + 010, 'Thousand Needles - Galak Wrangler 4093 | Galak Scout 4094 | Galak Windchaser 4096 (1) Wandering 010', 0, 0, 0, 0, 0),
(@SGUID + 011, 'Thousand Needles - Galak Wrangler 4093 | Galak Scout 4094 | Galak Windchaser 4096 (1) Wandering 011', 0, 0, 0, 0, 0),
(@SGUID + 012, 'Thousand Needles - Galak Wrangler 4093 | Galak Scout 4094 | Galak Windchaser 4096 (1) Wandering 012', 0, 0, 0, 0, 0),
(@SGUID + 013, 'Thousand Needles - Galak Wrangler 4093 | Galak Scout 4094 | Galak Windchaser 4096 (1) Wandering 013', 0, 0, 0, 0, 0),
(@SGUID + 014, 'Thousand Needles - Galak Wrangler 4093 | Galak Scout 4094 | Galak Windchaser 4096 (1) Wandering 014', 0, 0, 0, 0, 0),
(@SGUID + 015, 'Thousand Needles - Galak Wrangler 4093 | Galak Scout 4094 | Galak Windchaser 4096 (1) Wandering 015', 0, 0, 0, 0, 0),
(@SGUID + 016, 'Thousand Needles - Galak Wrangler 4093 | Galak Scout 4094 | Galak Windchaser 4096 (1) Wandering 016', 0, 0, 0, 0, 0),
(@SGUID + 017, 'Thousand Needles - Galak Wrangler 4093 | Galak Scout 4094 | Galak Windchaser 4096 (1) Wandering 017', 0, 0, 0, 0, 0),
(@SGUID + 018, 'Thousand Needles - Galak Wrangler 4093 | Galak Scout 4094 | Galak Windchaser 4096 (1) Wandering 018', 0, 0, 0, 0, 0),
(@SGUID + 019, 'Thousand Needles - Galak Wrangler 4093 | Galak Scout 4094 | Galak Windchaser 4096 (1) Wandering 019', 0, 0, 0, 0, 0),
(@SGUID + 020, 'Thousand Needles - Galak Wrangler 4093 | Galak Scout 4094 | Galak Windchaser 4096 (1) Wandering 020', 0, 0, 0, 0, 0),
(@SGUID + 021, 'Thousand Needles - Galak Wrangler 4093 | Galak Scout 4094 | Galak Windchaser 4096 (1) Wandering 021', 0, 0, 0, 0, 0),
(@SGUID + 022, 'Thousand Needles - Galak Wrangler 4093 | Galak Scout 4094 | Galak Windchaser 4096 (1) Wandering 022', 0, 0, 0, 0, 0),
(@SGUID + 023, 'Thousand Needles - Galak Wrangler 4093 | Galak Scout 4094 | Galak Windchaser 4096 (1) Wandering 023', 0, 0, 0, 0, 0),
(@SGUID + 024, 'Thousand Needles - Galak Wrangler 4093 | Galak Scout 4094 | Galak Windchaser 4096 (1) Wandering 024', 0, 0, 0, 0, 0),
(@SGUID + 025, 'Thousand Needles - Galak Wrangler 4093 | Galak Scout 4094 | Galak Windchaser 4096 (1) Wandering 025', 0, 0, 0, 0, 0),
(@SGUID + 026, 'Thousand Needles - Galak Wrangler 4093 | Galak Scout 4094 | Galak Windchaser 4096 (1) Wandering 026', 0, 0, 0, 0, 0),
(@SGUID + 027, 'Thousand Needles - Galak Wrangler 4093 | Galak Scout 4094 | Galak Windchaser 4096 (1) Wandering 027', 0, 0, 0, 0, 0),
(@SGUID + 028, 'Thousand Needles - Galak Wrangler 4093 | Galak Scout 4094 | Galak Windchaser 4096 (1) Wandering 028', 0, 0, 0, 0, 0),
(@SGUID + 029, 'Thousand Needles - Galak Wrangler 4093 | Galak Scout 4094 | Galak Windchaser 4096 (1) Wandering 029', 0, 0, 0, 0, 0),
(@SGUID + 030, 'Thousand Needles - Galak Wrangler 4093 | Galak Scout 4094 | Galak Windchaser 4096 (1) Wandering 030', 0, 0, 0, 0, 0),
(@SGUID + 031, 'Thousand Needles - Galak Wrangler 4093 | Galak Scout 4094 | Galak Windchaser 4096 (1) Wandering 031', 0, 0, 0, 0, 0),
(@SGUID + 032, 'Thousand Needles - Galak Wrangler 4093 | Galak Scout 4094 | Galak Windchaser 4096 (1) Wandering 032', 0, 0, 0, 0, 0),
(@SGUID + 033, 'Thousand Needles - Galak Wrangler 4093 | Galak Scout 4094 | Galak Windchaser 4096 (1) Wandering 033', 0, 0, 0, 0, 0),
(@SGUID + 034, 'Thousand Needles - Galak Wrangler 4093 | Galak Scout 4094 | Galak Windchaser 4096 (1) Wandering 034', 0, 0, 0, 0, 0),
(@SGUID + 035, 'Thousand Needles - Galak Wrangler 4093 | Galak Scout 4094 | Galak Windchaser 4096 (1) Wandering 035', 0, 0, 0, 0, 0),
(@SGUID + 036, 'Thousand Needles - Galak Wrangler 4093 | Galak Scout 4094 | Galak Windchaser 4096 (1) Wandering 036', 0, 0, 0, 0, 0),
(@SGUID + 037, 'Thousand Needles - Galak Wrangler 4093 | Galak Scout 4094 | Galak Windchaser 4096 (1) Wandering 037', 0, 0, 0, 0, 0),
(@SGUID + 038, 'Thousand Needles - Galak Wrangler 4093 | Galak Scout 4094 | Galak Windchaser 4096 (1) Wandering 038', 0, 0, 0, 0, 0),
(@SGUID + 039, 'Thousand Needles - Galak Wrangler 4093 | Galak Scout 4094 | Galak Windchaser 4096 (1) Wandering 039', 0, 0, 0, 0, 0),
(@SGUID + 040, 'Thousand Needles - Galak Wrangler 4093 | Galak Scout 4094 | Galak Windchaser 4096 (1) Wandering 040', 0, 0, 0, 0, 0),
(@SGUID + 041, 'Thousand Needles - Galak Wrangler 4093 | Galak Scout 4094 | Galak Windchaser 4096 (1) Wandering 041', 0, 0, 0, 0, 0),
(@SGUID + 042, 'Thousand Needles - Galak Wrangler 4093 | Galak Scout 4094 | Galak Windchaser 4096 (1) Wandering 042', 0, 0, 0, 0, 0),
(@SGUID + 043, 'Thousand Needles - Galak Wrangler 4093 | Galak Scout 4094 | Galak Windchaser 4096 (1) Wandering 043', 0, 0, 0, 0, 0),
(@SGUID + 044, 'Thousand Needles - Galak Wrangler 4093 | Galak Scout 4094 | Galak Windchaser 4096 (1) Wandering 044', 0, 0, 0, 0, 0),
(@SGUID + 045, 'Thousand Needles - Galak Wrangler 4093 | Galak Scout 4094 | Galak Windchaser 4096 (1) Wandering 045', 0, 0, 0, 0, 0),
(@SGUID + 046, 'Thousand Needles - Galak Wrangler 4093 | Galak Scout 4094 | Galak Windchaser 4096 (1) Wandering 046', 0, 0, 0, 0, 0),
(@SGUID + 047, 'Thousand Needles - Galak Wrangler 4093 | Galak Scout 4094 | Galak Windchaser 4096 (1) Wandering 047', 0, 0, 0, 0, 0),
(@SGUID + 048, 'Thousand Needles - Galak Wrangler 4093 | Galak Scout 4094 | Galak Windchaser 4096 (1) Wandering 048', 0, 0, 0, 0, 0),
(@SGUID + 049, 'Thousand Needles - Galak Wrangler 4093 | Galak Scout 4094 | Galak Windchaser 4096 (1) Wandering 049', 0, 0, 0, 0, 0),
(@SGUID + 050, 'Thousand Needles - Galak Wrangler 4093 | Galak Scout 4094 | Galak Windchaser 4096 (1) Wandering 050', 0, 0, 0, 0, 0),
(@SGUID + 051, 'Thousand Needles - Galak Wrangler 4093 | Galak Scout 4094 | Galak Windchaser 4096 (1) Wandering 051', 0, 0, 0, 0, 0),
(@SGUID + 052, 'Thousand Needles - Galak Wrangler 4093 | Galak Scout 4094 | Galak Windchaser 4096 (1) Wandering 052', 0, 0, 0, 0, 0),
(@SGUID + 053, 'Thousand Needles - Galak Wrangler 4093 | Galak Scout 4094 | Galak Windchaser 4096 (1) Wandering 053', 0, 0, 0, 0, 0),
(@SGUID + 054, 'Thousand Needles - Galak Wrangler 4093 | Galak Scout 4094 | Galak Windchaser 4096 (1) Wandering 054', 0, 0, 0, 0, 0),
(@SGUID + 055, 'Thousand Needles - Galak Wrangler 4093 | Galak Scout 4094 | Galak Windchaser 4096 (1) Wandering 055', 0, 0, 0, 0, 0),
(@SGUID + 056, 'Thousand Needles - Galak Wrangler 4093 | Galak Scout 4094 | Galak Windchaser 4096 (1) Wandering 056', 0, 0, 0, 0, 0),
(@SGUID + 057, 'Thousand Needles - Galak Wrangler 4093 | Galak Scout 4094 | Galak Windchaser 4096 (1) Wandering 057', 0, 0, 0, 0, 0),
(@SGUID + 058, 'Thousand Needles - Galak Wrangler 4093 | Galak Scout 4094 | Galak Windchaser 4096 (1) Wandering 058', 0, 0, 0, 0, 0),
(@SGUID + 059, 'Thousand Needles - Galak Wrangler 4093 | Galak Scout 4094 | Galak Windchaser 4096 (1) Wandering 059', 0, 0, 0, 0, 0),
(@SGUID + 060, 'Thousand Needles - Galak Wrangler 4093 | Galak Scout 4094 | Galak Windchaser 4096 (1) Wandering 060', 0, 0, 0, 0, 0),
(@SGUID + 061, 'Thousand Needles - Galak Wrangler 4093 | Galak Scout 4094 | Galak Windchaser 4096 (1) Wandering 061', 0, 0, 0, 0, 0),
(@SGUID + 062, 'Thousand Needles - Galak Wrangler 4093 | Galak Scout 4094 | Galak Windchaser 4096 (1) Wandering 062', 0, 0, 0, 0, 0),
(@SGUID + 063, 'Thousand Needles - Galak Wrangler 4093 | Galak Scout 4094 | Galak Windchaser 4096 (1) Wandering 063', 0, 0, 0, 0, 0),
(@SGUID + 064, 'Thousand Needles - Galak Wrangler 4093 | Galak Scout 4094 | Galak Windchaser 4096 (1) Wandering 064', 0, 0, 0, 0, 0);

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
(@SGUID + 060, @CGUID + 060, 0, 0),
(@SGUID + 061, @CGUID + 061, 0, 0),
(@SGUID + 062, @CGUID + 062, 0, 0),
(@SGUID + 063, @CGUID + 063, 0, 0),
(@SGUID + 064, @CGUID + 064, 0, 0);

INSERT INTO `spawn_group_entry` (`Id`, `Entry`, `MinCount`, `MaxCount`, `Chance`) VALUES
(@SGUID + 000, 4093, 0, 0, 0), (@SGUID + 000, 4094, 0, 0, 0), (@SGUID + 000, 4096, 0, 0, 0),
(@SGUID + 001, 4093, 0, 0, 0), (@SGUID + 001, 4094, 0, 0, 0), (@SGUID + 001, 4096, 0, 0, 0),
(@SGUID + 002, 4093, 0, 0, 0), (@SGUID + 002, 4094, 0, 0, 0), (@SGUID + 002, 4096, 0, 0, 0),
(@SGUID + 003, 4093, 0, 0, 0), (@SGUID + 003, 4094, 0, 0, 0), (@SGUID + 003, 4096, 0, 0, 0),
(@SGUID + 004, 4093, 0, 0, 0), (@SGUID + 004, 4094, 0, 0, 0), (@SGUID + 004, 4096, 0, 0, 0),
(@SGUID + 005, 4093, 0, 0, 0), (@SGUID + 005, 4094, 0, 0, 0), (@SGUID + 005, 4096, 0, 0, 0),
(@SGUID + 006, 4093, 0, 0, 0), (@SGUID + 006, 4094, 0, 0, 0), (@SGUID + 006, 4096, 0, 0, 0),
(@SGUID + 007, 4093, 0, 0, 0), (@SGUID + 007, 4094, 0, 0, 0), (@SGUID + 007, 4096, 0, 0, 0),
(@SGUID + 008, 4093, 0, 0, 0), (@SGUID + 008, 4094, 0, 0, 0), (@SGUID + 008, 4096, 0, 0, 0),
(@SGUID + 009, 4093, 0, 0, 0), (@SGUID + 009, 4094, 0, 0, 0), (@SGUID + 009, 4096, 0, 0, 0),
(@SGUID + 010, 4093, 0, 0, 0), (@SGUID + 010, 4094, 0, 0, 0), (@SGUID + 010, 4096, 0, 0, 0),
(@SGUID + 011, 4093, 0, 0, 0), (@SGUID + 011, 4094, 0, 0, 0), (@SGUID + 011, 4096, 0, 0, 0),
(@SGUID + 012, 4093, 0, 0, 0), (@SGUID + 012, 4094, 0, 0, 0), (@SGUID + 012, 4096, 0, 0, 0),
(@SGUID + 013, 4093, 0, 0, 0), (@SGUID + 013, 4094, 0, 0, 0), (@SGUID + 013, 4096, 0, 0, 0),
(@SGUID + 014, 4093, 0, 0, 0), (@SGUID + 014, 4094, 0, 0, 0), (@SGUID + 014, 4096, 0, 0, 0),
(@SGUID + 015, 4093, 0, 0, 0), (@SGUID + 015, 4094, 0, 0, 0), (@SGUID + 015, 4096, 0, 0, 0),
(@SGUID + 016, 4093, 0, 0, 0), (@SGUID + 016, 4094, 0, 0, 0), (@SGUID + 016, 4096, 0, 0, 0),
(@SGUID + 017, 4093, 0, 0, 0), (@SGUID + 017, 4094, 0, 0, 0), (@SGUID + 017, 4096, 0, 0, 0),
(@SGUID + 018, 4093, 0, 0, 0), (@SGUID + 018, 4094, 0, 0, 0), (@SGUID + 018, 4096, 0, 0, 0),
(@SGUID + 019, 4093, 0, 0, 0), (@SGUID + 019, 4094, 0, 0, 0), (@SGUID + 019, 4096, 0, 0, 0),
(@SGUID + 020, 4093, 0, 0, 0), (@SGUID + 020, 4094, 0, 0, 0), (@SGUID + 020, 4096, 0, 0, 0),
(@SGUID + 021, 4093, 0, 0, 0), (@SGUID + 021, 4094, 0, 0, 0), (@SGUID + 021, 4096, 0, 0, 0),
(@SGUID + 022, 4093, 0, 0, 0), (@SGUID + 022, 4094, 0, 0, 0), (@SGUID + 022, 4096, 0, 0, 0),
(@SGUID + 023, 4093, 0, 0, 0), (@SGUID + 023, 4094, 0, 0, 0), (@SGUID + 023, 4096, 0, 0, 0),
(@SGUID + 024, 4093, 0, 0, 0), (@SGUID + 024, 4094, 0, 0, 0), (@SGUID + 024, 4096, 0, 0, 0),
(@SGUID + 025, 4093, 0, 0, 0), (@SGUID + 025, 4094, 0, 0, 0), (@SGUID + 025, 4096, 0, 0, 0),
(@SGUID + 026, 4093, 0, 0, 0), (@SGUID + 026, 4094, 0, 0, 0), (@SGUID + 026, 4096, 0, 0, 0),
(@SGUID + 027, 4093, 0, 0, 0), (@SGUID + 027, 4094, 0, 0, 0), (@SGUID + 027, 4096, 0, 0, 0),
(@SGUID + 028, 4093, 0, 0, 0), (@SGUID + 028, 4094, 0, 0, 0), (@SGUID + 028, 4096, 0, 0, 0),
(@SGUID + 029, 4093, 0, 0, 0), (@SGUID + 029, 4094, 0, 0, 0), (@SGUID + 029, 4096, 0, 0, 0),
(@SGUID + 030, 4093, 0, 0, 0), (@SGUID + 030, 4094, 0, 0, 0), (@SGUID + 030, 4096, 0, 0, 0),
(@SGUID + 031, 4093, 0, 0, 0), (@SGUID + 031, 4094, 0, 0, 0), (@SGUID + 031, 4096, 0, 0, 0),
(@SGUID + 032, 4093, 0, 0, 0), (@SGUID + 032, 4094, 0, 0, 0), (@SGUID + 032, 4096, 0, 0, 0),
(@SGUID + 033, 4093, 0, 0, 0), (@SGUID + 033, 4094, 0, 0, 0), (@SGUID + 033, 4096, 0, 0, 0),
(@SGUID + 034, 4093, 0, 0, 0), (@SGUID + 034, 4094, 0, 0, 0), (@SGUID + 034, 4096, 0, 0, 0),
(@SGUID + 035, 4093, 0, 0, 0), (@SGUID + 035, 4094, 0, 0, 0), (@SGUID + 035, 4096, 0, 0, 0),
(@SGUID + 036, 4093, 0, 0, 0), (@SGUID + 036, 4094, 0, 0, 0), (@SGUID + 036, 4096, 0, 0, 0),
(@SGUID + 037, 4093, 0, 0, 0), (@SGUID + 037, 4094, 0, 0, 0), (@SGUID + 037, 4096, 0, 0, 0),
(@SGUID + 038, 4093, 0, 0, 0), (@SGUID + 038, 4094, 0, 0, 0), (@SGUID + 038, 4096, 0, 0, 0),
(@SGUID + 039, 4093, 0, 0, 0), (@SGUID + 039, 4094, 0, 0, 0), (@SGUID + 039, 4096, 0, 0, 0),
(@SGUID + 040, 4093, 0, 0, 0), (@SGUID + 040, 4094, 0, 0, 0), (@SGUID + 040, 4096, 0, 0, 0),
(@SGUID + 041, 4093, 0, 0, 0), (@SGUID + 041, 4094, 0, 0, 0), (@SGUID + 041, 4096, 0, 0, 0),
(@SGUID + 042, 4093, 0, 0, 0), (@SGUID + 042, 4094, 0, 0, 0), (@SGUID + 042, 4096, 0, 0, 0),
(@SGUID + 043, 4093, 0, 0, 0), (@SGUID + 043, 4094, 0, 0, 0), (@SGUID + 043, 4096, 0, 0, 0),
(@SGUID + 044, 4093, 0, 0, 0), (@SGUID + 044, 4094, 0, 0, 0), (@SGUID + 044, 4096, 0, 0, 0),
(@SGUID + 045, 4093, 0, 0, 0), (@SGUID + 045, 4094, 0, 0, 0), (@SGUID + 045, 4096, 0, 0, 0),
(@SGUID + 046, 4093, 0, 0, 0), (@SGUID + 046, 4094, 0, 0, 0), (@SGUID + 046, 4096, 0, 0, 0),
(@SGUID + 047, 4093, 0, 0, 0), (@SGUID + 047, 4094, 0, 0, 0), (@SGUID + 047, 4096, 0, 0, 0),
(@SGUID + 048, 4093, 0, 0, 0), (@SGUID + 048, 4094, 0, 0, 0), (@SGUID + 048, 4096, 0, 0, 0),
(@SGUID + 049, 4093, 0, 0, 0), (@SGUID + 049, 4094, 0, 0, 0), (@SGUID + 049, 4096, 0, 0, 0),
(@SGUID + 050, 4093, 0, 0, 0), (@SGUID + 050, 4094, 0, 0, 0), (@SGUID + 050, 4096, 0, 0, 0),
(@SGUID + 051, 4093, 0, 0, 0), (@SGUID + 051, 4094, 0, 0, 0), (@SGUID + 051, 4096, 0, 0, 0),
(@SGUID + 052, 4093, 0, 0, 0), (@SGUID + 052, 4094, 0, 0, 0), (@SGUID + 052, 4096, 0, 0, 0),
(@SGUID + 053, 4093, 0, 0, 0), (@SGUID + 053, 4094, 0, 0, 0), (@SGUID + 053, 4096, 0, 0, 0),
(@SGUID + 054, 4093, 0, 0, 0), (@SGUID + 054, 4094, 0, 0, 0), (@SGUID + 054, 4096, 0, 0, 0),
(@SGUID + 055, 4093, 0, 0, 0), (@SGUID + 055, 4094, 0, 0, 0), (@SGUID + 055, 4096, 0, 0, 0),
(@SGUID + 056, 4093, 0, 0, 0), (@SGUID + 056, 4094, 0, 0, 0), (@SGUID + 056, 4096, 0, 0, 0),
(@SGUID + 057, 4093, 0, 0, 0), (@SGUID + 057, 4094, 0, 0, 0), (@SGUID + 057, 4096, 0, 0, 0),
(@SGUID + 058, 4093, 0, 0, 0), (@SGUID + 058, 4094, 0, 0, 0), (@SGUID + 058, 4096, 0, 0, 0),
(@SGUID + 059, 4093, 0, 0, 0), (@SGUID + 059, 4094, 0, 0, 0), (@SGUID + 059, 4096, 0, 0, 0),
(@SGUID + 060, 4093, 0, 0, 0), (@SGUID + 060, 4094, 0, 0, 0), (@SGUID + 060, 4096, 0, 0, 0),
(@SGUID + 061, 4093, 0, 0, 0), (@SGUID + 061, 4094, 0, 0, 0), (@SGUID + 061, 4096, 0, 0, 0),
(@SGUID + 062, 4093, 0, 0, 0), (@SGUID + 062, 4094, 0, 0, 0), (@SGUID + 062, 4096, 0, 0, 0),
(@SGUID + 063, 4093, 0, 0, 0), (@SGUID + 063, 4094, 0, 0, 0), (@SGUID + 063, 4096, 0, 0, 0),
(@SGUID + 064, 4093, 0, 0, 0), (@SGUID + 064, 4094, 0, 0, 0), (@SGUID + 064, 4096, 0, 0, 0);

INSERT INTO `creature_movement` (`Id`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(@CGUID + 000, 01, -4946.55712890625, -2129.571289062500, -46.5410842895507812, 100, 0, 0),
(@CGUID + 000, 02, -4942.12695312500, -2144.737792968750, -52.2272834777832031, 100, 0, 0),
(@CGUID + 000, 03, -4936.99804687500, -2158.263427734375, -55.9640998840332031, 100, 0, 0),
(@CGUID + 000, 04, -4951.91699218750, -2174.834716796875, -55.0890998840332031, 100, 0, 0),
(@CGUID + 000, 05, -4979.27246093750, -2196.333007812500, -53.8919754028320312, 100, 0, 0),
(@CGUID + 000, 06, -4992.51025390625, -2213.111328125000, -53.3937759399414062, 100, 0, 0),
(@CGUID + 000, 07, -5003.41259765625, -2228.936767578125, -53.0633125305175781, 100, 0, 0),
(@CGUID + 000, 08, -5015.03808593750, -2243.375976562500, -52.5642623901367187, 100, 0, 0),
(@CGUID + 000, 09, -5005.64306640625, -2260.638671875000, -52.0901412963867187, 100, 0, 0),
(@CGUID + 000, 10, -5005.95458984375, -2270.907470703125, -52.0135459899902343, 100, 0, 0),
(@CGUID + 000, 11, -5010.56201171875, -2276.364013671875, -52.0135459899902343, 100, 0, 0),
(@CGUID + 000, 12, -5017.08984375000, -2295.945068359375, -51.5894737243652343, 100, 0, 0),
(@CGUID + 000, 13, -5033.86376953125, -2314.115478515625, -52.1627502441406250, 100, 0, 0),
(@CGUID + 000, 14, -5056.15673828125, -2315.346923828125, -52.7877502441406250, 100, 0, 0),
(@CGUID + 000, 15, -5069.23828125000, -2318.606445312500, -53.2486076354980468, 100, 0, 0),
(@CGUID + 000, 16, -5082.96630859375, -2342.509033203125, -53.9159126281738281, 100, 0, 0),
(@CGUID + 000, 17, -5088.81250000000, -2370.866455078125, -53.7613677978515625, 100, 0, 0);

INSERT INTO `creature_movement` (`Id`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(@CGUID + 001, 01, -5218.70312500000, -2585.930908203125, -39.5229225158691406, 100, 0, 0),
(@CGUID + 001, 02, -5218.46386718750, -2575.466064453125, -45.4655494689941406, 100, 0, 0),
(@CGUID + 001, 03, -5218.85009765625, -2552.053466796875, -47.6722450256347656, 100, 0, 0),
(@CGUID + 001, 04, -5204.68750000000, -2533.872314453125, -47.9400672912597656, 100, 0, 0),
(@CGUID + 001, 05, -5184.17968750000, -2519.566406250000, -50.8602371215820312, 100, 0, 0),
(@CGUID + 001, 06, -5165.55615234375, -2504.414062500000, -51.5732269287109375, 100, 0, 0),
(@CGUID + 001, 07, -5162.87207031250, -2484.354248046875, -51.8912048339843750, 100, 0, 0),
(@CGUID + 001, 08, -5165.92333984375, -2456.092041015625, -52.7113380432128906, 100, 0, 0),
(@CGUID + 001, 09, -5174.20507812500, -2436.909667968750, -51.1144371032714843, 100, 0, 0),
(@CGUID + 001, 10, -5160.66601562500, -2415.564697265625, -49.8781280517578125, 100, 0, 0),
(@CGUID + 001, 11, -5144.47412109375, -2383.532226562500, -51.3280792236328125, 100, 0, 0),
(@CGUID + 001, 12, -5131.16650390625, -2345.257324218750, -53.3263206481933593, 100, 0, 0),
(@CGUID + 001, 13, -5133.90380859375, -2315.901367187500, -53.6048431396484375, 100, 0, 0),
(@CGUID + 001, 14, -5143.74218750000, -2288.065673828125, -54.7221870422363281, 100, 0, 0),
(@CGUID + 001, 15, -5151.93994140625, -2265.016845703125, -54.6809272766113281, 100, 0, 0);
