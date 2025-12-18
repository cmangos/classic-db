-- Based on https://github.com/vmangos/core/commit/f81e78c8c58831459ef338c918c87fe9a1acf3e0
-- Stranglethorn Vale - creature_spawn_entry

-- https://classic.wowhead.com/npc=597/bloodscalp-berserker
-- https://classic.wowhead.com/npc=660/bloodscalp-witch-doctor
-- https://classic.wowhead.com/npc=671/bloodscalp-headhunter
INSERT INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 597 FROM `creature` WHERE `id` IN (597,660,671) AND `guid` IN (1254,1256,1257,1258,1259,1262,1263,1390,1404,1647,1652,1654,1656,1657,1658,1660,1661,1667,1668,1669,1906,1919,1929,1934,1936,1937,1938,1940,1941,1974,2049,2050,2051,2052,2053,2054,2056,2057,2059,2060,2061,2074,2077,2103,2109,2111,2113,2117,2122,2222,2235,2237,2251,2254);
INSERT INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 660 FROM `creature` WHERE `id` IN (597,660,671) AND `guid` IN (1254,1256,1257,1258,1259,1262,1263,1390,1404,1647,1652,1654,1656,1657,1658,1660,1661,1667,1668,1669,1906,1919,1929,1934,1936,1937,1938,1940,1941,1974,2049,2050,2051,2052,2053,2054,2056,2057,2059,2060,2061,2074,2077,2103,2109,2111,2113,2117,2122,2222,2235,2237,2251,2254);
INSERT INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 671 FROM `creature` WHERE `id` IN (597,660,671) AND `guid` IN (1254,1256,1257,1258,1259,1262,1263,1390,1404,1647,1652,1654,1656,1657,1658,1660,1661,1667,1668,1669,1906,1919,1929,1934,1936,1937,1938,1940,1941,1974,2049,2050,2051,2052,2053,2054,2056,2057,2059,2060,2061,2074,2077,2103,2109,2111,2113,2117,2122,2222,2235,2237,2251,2254);
UPDATE creature SET `id` = 0 WHERE `id` IN (597,660,671) AND `guid` IN (1254,1256,1257,1258,1259,1262,1263,1390,1404,1647,1652,1654,1656,1657,1658,1660,1661,1667,1668,1669,1906,1919,1929,1934,1936,1937,1938,1940,1941,1974,2049,2050,2051,2052,2053,2054,2056,2057,2059,2060,2061,2074,2077,2103,2109,2111,2113,2117,2122,2222,2235,2237,2251,2254);

-- https://classic.wowhead.com/npc=587/bloodscalp-warrior
-- https://classic.wowhead.com/npc=694/bloodscalp-axe-thrower
-- https://classic.wowhead.com/npc=697/bloodscalp-shaman
INSERT INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 587 FROM `creature` WHERE `id` IN (587,694,697) AND `guid` IN (2160,2161,2163,2165,2173,2176,2273,2341,2372,2375,2380,2390,2394,2399,2488,2491,2511,2519,2531,2532,2533,2534,2535,2536,2537);
INSERT INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 694 FROM `creature` WHERE `id` IN (587,694,697) AND `guid` IN (2160,2161,2163,2165,2173,2176,2273,2341,2372,2375,2380,2390,2394,2399,2488,2491,2511,2519,2531,2532,2533,2534,2535,2536,2537);
INSERT INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 697 FROM `creature` WHERE `id` IN (587,694,697) AND `guid` IN (2160,2161,2163,2165,2173,2176,2273,2341,2372,2375,2380,2390,2394,2399,2488,2491,2511,2519,2531,2532,2533,2534,2535,2536,2537);
UPDATE creature SET `id` = 0 WHERE `id` IN (587,694,697) AND `guid` IN (2160,2161,2163,2165,2173,2176,2273,2341,2372,2375,2380,2390,2394,2399,2488,2491,2511,2519,2531,2532,2533,2534,2535,2536,2537);

-- https://classic.wowhead.com/npc=4457/murkgill-forager
-- https://classic.wowhead.com/npc=4458/murkgill-hunter
-- https://classic.wowhead.com/npc=4459/murkgill-oracle
-- https://classic.wowhead.com/npc=4460/murkgill-lord
-- https://classic.wowhead.com/npc=4461/murkgill-warrior
DELETE FROM `creature` WHERE `guid` = 1196 AND `id` IN (0,4457);
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `movementtype`) VALUES
(1196, 4457, 0, -12138.4, -7.27811, -4.19299, 0, 300, 300, 5, 1);
INSERT INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 4457 FROM `creature` WHERE `id` IN (4457,4458,4459,4460,4461) AND `guid` IN (791,793,1174,1184,1186,1189,1191,1192,1193,1195,1196,1197,1198,1199,1203,1204,1206,1210,1464,1597,1598,1851,2135);
INSERT INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 4458 FROM `creature` WHERE `id` IN (4457,4458,4459,4460,4461) AND `guid` IN (791,793,1174,1184,1186,1189,1191,1192,1193,1195,1196,1197,1198,1199,1203,1204,1206,1210,1464,1597,1598,1851,2135);
INSERT INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 4459 FROM `creature` WHERE `id` IN (4457,4458,4459,4460,4461) AND `guid` IN (791,1174,1189,1191,1193,1203,1204,1206,1210,1597,1598,1196);
INSERT INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 4460 FROM `creature` WHERE `id` IN (4457,4458,4459,4460,4461) AND `guid` IN (791,1174,1189,1191,1193,1203,1204,1206,1210,1597,1598,1196);
INSERT INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 4461 FROM `creature` WHERE `id` IN (4457,4458,4459,4460,4461) AND `guid` IN (791,793,1174,1184,1186,1189,1191,1192,1193,1195,1196,1197,1198,1199,1203,1204,1206,1210,1464,1597,1598,1851,2135);
UPDATE creature SET `id` = 0 WHERE `id` IN (4457,4458,4459,4460,4461) AND `guid` IN (791,793,1174,1184,1186,1189,1191,1192,1193,1195,1196,1197,1198,1199,1203,1204,1206,1210,1464,1597,1598,1851,2135);

-- https://classic.wowhead.com/npc=1142/moshogg-brute
-- https://classic.wowhead.com/npc=1144/moshogg-witch-doctor
INSERT INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 1142 FROM `creature` WHERE `id` IN (1142,1144) AND `guid` IN (2142,2152,2154,2155,2156,2162,2166,2168,2179,2182,2185,2186);
INSERT INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 1144 FROM `creature` WHERE `id` IN (1142,1144) AND `guid` IN (2142,2152,2154,2155,2156,2162,2166,2168,2179,2182,2185,2186);
UPDATE creature SET `id` = 0 WHERE `id` IN (1142,1144) AND `guid` IN (2142,2152,2154,2155,2156,2162,2166,2168,2179,2182,2185,2186);

-- https://classic.wowhead.com/npc=937/kurzen-jungle-fighter
-- https://classic.wowhead.com/npc=940/kurzen-medicine-man
INSERT INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 937 FROM `creature` WHERE `id` IN (937,940) AND `guid` IN (794,1582,1584,1585,1586,1587,1588,1589,1590,1591,1592,1593,1594,1595,1599,1609,1612,1616,1628,1650,1651,1653,1876,1880,1901,1913,2215,2216,2217,2219,2220,2223,2232,2234,2248,2250,2256,2263,2267);
INSERT INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 940 FROM `creature` WHERE `id` IN (937,940) AND `guid` IN (794,1582,1584,1585,1586,1587,1588,1589,1590,1591,1592,1593,1594,1595,1599,1609,1612,1616,1628,1650,1651,1653,1876,1880,1901,1913,2215,2216,2217,2219,2220,2223,2232,2234,2248,2250,2256,2263,2267);
UPDATE creature SET `id` = 0 WHERE `id` IN (937,940) AND `guid` IN (794,1582,1584,1585,1586,1587,1588,1589,1590,1591,1592,1593,1594,1595,1599,1609,1612,1616,1628,1650,1651,1653,1876,1880,1901,1913,2215,2216,2217,2219,2220,2223,2232,2234,2248,2250,2256,2263,2267);

-- https://classic.wowhead.com/npc=1488/zanzil-zombie
-- https://classic.wowhead.com/npc=1489/zanzil-hunter
-- https://classic.wowhead.com/npc=1490/zanzil-witch-doctor
-- https://classic.wowhead.com/npc=1491/zanzil-naga
INSERT INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 1488 FROM `creature` WHERE `id` IN (1488,1489,1490,1491) AND `guid` IN (759,760,1232,1234,1337,1341,1670,2221,2224,2233,2244,2249,2257,2261,2264,2265,2266,2271,2319,2320,2327,2329,2333,2347,2370,2377,2384,2385,2388);
INSERT INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 1489 FROM `creature` WHERE `id` IN (1488,1489,1490,1491) AND `guid` IN (759,760,1232,1234,1337,1341,1670,2221,2224,2233,2244,2249,2257,2261,2264,2265,2266,2271,2319,2320,2327,2329,2333,2347,2370,2377,2384,2385,2388);
INSERT INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 1490 FROM `creature` WHERE `id` IN (1488,1489,1490,1491) AND `guid` IN (759,760,1232,1234,1337,1341,1670,2221,2224,2233,2244,2249,2257,2261,2264,2265,2266,2271,2319,2320,2327,2329,2333,2347,2370,2377,2384,2385,2388);
INSERT INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 1491 FROM `creature` WHERE `id` IN (1488,1489,1490,1491) AND `guid` IN (759,760,1232,1234,1337,1341,1670,2221,2224,2233,2244,2249,2257,2261,2264,2265,2266,2271,2319,2320,2327,2329,2333,2347,2370,2377,2384,2385,2388);
UPDATE creature SET `id` = 0 WHERE `id` IN (1488,1489,1490,1491) AND `guid` IN (759,760,1232,1234,1337,1341,1670,2221,2224,2233,2244,2249,2257,2261,2264,2265,2266,2271,2319,2320,2327,2329,2333,2347,2370,2377,2384,2385,2388);

-- https://classic.wowhead.com/npc=1565/bloodsail-sea-dog
-- https://classic.wowhead.com/npc=1653/bloodsail-elder-magus
-- https://www.wowhead.com/classic/npc=4505/bloodsail-deckhand
-- https://www.wowhead.com/classic/npc=4506/bloodsail-swabby
INSERT INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 1565 FROM `creature` WHERE `id` IN (1565,1653,4505,4506) AND `guid` IN (443,444,445,446,447,519,622,750,751,752,753,754,766,780,781,782,783,785,838,941,944,945,2540,2541,2589,2592,2597,2598,2600,2607,2608,2611,2614,2618,2621,2622,2627,2628,2629,2631,2633);
INSERT INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 1653 FROM `creature` WHERE `id` IN (1565,1653,4505,4506) AND `guid` IN (443,444,445,446,447,519,622,750,751,752,753,754,766,780,781,782,783,785,838,941,944,945,2540,2541,2589,2592,2597,2600,2607,2608,2611,2614,2618,2621,2622,2627,2628,2629,2631);
INSERT INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 4505 FROM `creature` WHERE `id` IN (1565,1653,4505,4506) AND `guid` IN (443,444,445,446,519,622,750,751,752,753,754,780,781,782,783,785,838,941,944,945,2540,2541,2589,2592,2597,2598,2600,2608,2611,2614,2618,2621,2622,2627,2629,2631,2633);
INSERT INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 4506 FROM `creature` WHERE `id` IN (1565,1653,4505,4506) AND `guid` IN (443,444,445,446,447,519,622,750,751,752,753,754,780,781,782,783,785,941,945,2540,2541,2589,2592,2600,2607,2608,2611,2614,2618,2622,2627,2628,2629,2631);
UPDATE creature SET `id` = 0 WHERE `id` IN (1565,1653,4505,4506) AND `guid` IN (443,444,445,446,447,519,622,750,751,752,753,754,766,780,781,782,783,785,838,941,944,945,2540,2541,2589,2592,2597,2598,2600,2607,2608,2611,2614,2618,2621,2622,2627,2628,2629,2631,2633);
UPDATE `creature` SET `position_x` = -15024.8, `position_y` = 264.462, `position_z` = 7.60049, `orientation` = 0, `spawndist` = 2, `MovementType` = 1 WHERE `guid` = 2631;
UPDATE `creature` SET `position_x` = -15015.2, `position_y` = 267.677, `position_z` = 12.6559, `orientation` = 0, `spawndist` = 2, `MovementType` = 1 WHERE `guid` = 2627;
UPDATE `creature` SET `position_x` = -15015, `position_y` = 261.341, `position_z` = 7.60259, `orientation` = 0, `spawndist` = 2, `MovementType` = 1 WHERE `guid` = 2628;
UPDATE `creature` SET `position_x` = -15013.2, `position_y` = 266.118, `position_z` = 18.2395, `orientation` = 0, `spawndist` = 2, `MovementType` = 1 WHERE `guid` = 2621;
UPDATE `creature` SET `position_x` = -15010.6, `position_y` = 265.945, `position_z` = 0.281252, `orientation` = 0, `spawndist` = 2, `MovementType` = 1 WHERE `guid` = 622;
UPDATE `creature` SET `position_x` = -15000.2, `position_y` = 271.717, `position_z` = 0.281257, `orientation` = 0, `spawndist` = 2, `MovementType` = 1 WHERE `guid` = 519;
UPDATE `creature` SET `position_x` = -14998.3, `position_y` = 265.681, `position_z` = 7.60322, `orientation` = 0 WHERE `guid` = 2633; -- currently with movement
UPDATE `creature` SET `position_x` = -14995, `position_y` = 261.192, `position_z` = 0.28126, `orientation` = 0, `spawndist` = 2, `MovementType` = 1 WHERE `guid` = 2541;
UPDATE `creature` SET `position_x` = -14991.6, `position_y` = 264.574, `position_z` = 12.991, `orientation` = 0, `spawndist` = 5, `MovementType` = 1 WHERE `guid` = 2614;
UPDATE `creature` SET `position_x` = -14986.9, `position_y` = 273.97, `position_z` = 12.8098, `orientation` = 0, `spawndist` = 2, `MovementType` = 1 WHERE `guid` = 2622;
UPDATE `creature` SET `position_x` = -14981.6, `position_y` = 266.708, `position_z` = 0.281257, `orientation` = 0, `spawndist` = 2, `MovementType` = 1 WHERE `guid` = 2540;
UPDATE `creature` SET `position_x` = -14980.5, `position_y` = 262.784, `position_z` = 13.0718, `orientation` = 0, `spawndist` = 2, `MovementType` = 1 WHERE `guid` = 2618;
UPDATE `creature` SET `position_x` = -14972.9, `position_y` = 347.014, `position_z` = 13.1563, `orientation` = 0, `spawndist` = 2, `MovementType` = 1 WHERE `guid` = 2607;
UPDATE `creature` SET `position_x` = -14971.9, `position_y` = 343.947, `position_z` = 13.2255, `orientation` = 0, `spawndist` = 2, `MovementType` = 1 WHERE `guid` = 2611;
UPDATE `creature` SET `position_x` = -14969.3, `position_y` = 344.615, `position_z` = 0.303776, `orientation` = 0, `spawndist` = 2, `MovementType` = 1 WHERE `guid` = 443;
UPDATE `creature` SET `position_x` = -14959.3, `position_y` = 347.056, `position_z` = 13.0698, `orientation` = 0, `spawndist` = 2, `MovementType` = 1 WHERE `guid` = 2608;
UPDATE `creature` SET `position_x` = -14958.2, `position_y` = 354.408, `position_z` = 0.303781, `orientation` = 0, `spawndist` = 2, `MovementType` = 1 WHERE `guid` = 447;
UPDATE `creature` SET `position_x` = -14957.1, `position_y` = 343.274, `position_z` = 7.62626, `orientation` = 0 WHERE `guid` = 2598; -- currently with movement
UPDATE `creature` SET `position_x` = -14954.8, `position_y` = 352.504, `position_z` = 7.62574, `orientation` = 0 WHERE `guid` = 2592; -- currently with movement
UPDATE `creature` SET `position_x` = -14941.6, `position_y` = 351.522, `position_z` = 0.303772, `orientation` = 0, `spawndist` = 2, `MovementType` = 1 WHERE `guid` = 445;
UPDATE `creature` SET `position_x` = -14949.2, `position_y` = 345.674, `position_z` = 0.303777, `orientation` = 0, `spawndist` = 2, `MovementType` = 1 WHERE `guid` = 444;
UPDATE `creature` SET `position_x` = -14938, `position_y` = 353.601, `position_z` = 18.2865, `orientation` = 0, `spawndist` = 5, `MovementType` = 1 WHERE `guid` = 2589;
UPDATE `creature` SET `position_x` = -14928.9, `position_y` = 110.687, `position_z` = 7.60442, `orientation` = 0, `spawndist` = 2, `MovementType` = 1 WHERE `guid` = 782;
UPDATE `creature` SET `position_x` = -14927.5, `position_y` = 358.207, `position_z` = 7.62312, `orientation` = 0, `spawndist` = 2, `MovementType` = 1 WHERE `guid` = 2600;
UPDATE `creature` SET `position_x` = -14926.5, `position_y` = 121.03, `position_z` = 7.60338, `orientation` = 0, `spawndist` = 2, `MovementType` = 1 WHERE `guid` = 766;
UPDATE `creature` SET `position_x` = -14925.7, `position_y` = 112.936, `position_z` = 12.6579, `orientation` = 0, `spawndist` = 2, `MovementType` = 1 WHERE `guid` = 781;
UPDATE `creature` SET `position_x` = -14925.3, `position_y` = 91.4019, `position_z` = 12.9236, `orientation` = 0, `spawndist` = 2, `MovementType` = 1 WHERE `guid` = 945;
UPDATE `creature` SET `position_x` = -14921.9, `position_y` = 109.837, `position_z` = 18.0732, `orientation` = 0, `spawndist` = 5, `MovementType` = 1 WHERE `guid` = 838;
UPDATE `creature` SET `position_x` = -14920.1, `position_y` = 73.9044, `position_z` = 13.2499, `orientation` = 0, `spawndist` = 2, `MovementType` = 1 WHERE `guid` = 944;
UPDATE `creature` SET `position_x` = -14920.1, `position_y` = 114.635, `position_z` = 12.6578, `orientation` = 0, `spawndist` = 2, `MovementType` = 1 WHERE `guid` = 780;
UPDATE `creature` SET `position_x` = -14919.3, `position_y` = 80.2627, `position_z` = 7.60496, `orientation` = 0, `spawndist` = 2, `MovementType` = 1 WHERE `guid` = 785;
UPDATE `creature` SET `position_x` = -14917.7, `position_y` = 76.6798, `position_z` = 0.283212, `orientation` = 0, `spawndist` = 0, `MovementType` = 2 WHERE `guid` = 750; -- path
UPDATE `creature` SET `position_x` = -14917, `position_y` = 88.4618, `position_z` = 12.9284, `orientation` = 0, `spawndist` = 2, `MovementType` = 1 WHERE `guid` = 941;
DELETE FROM creature_movement WHERE id = 750;
INSERT INTO creature_movement (id, Point, PositionX, PositionY, PositionZ, Orientation, WaitTime) VALUES
(750, 1, -14918.9, 63.7075, 4.2670, 100, 0),
(750, 2, -14922.0, 73.8399, 7.5217, 100, 10000),
(750, 3, -14918.9, 63.7075, 4.2670, 100, 0),
(750, 4, -14917.7, 76.6798, 0.283212, 100, 10000);
UPDATE `creature` SET `position_x` = -14917.7, `position_y` = 94.3201, `position_z` = 7.60517, `orientation` = 0, `spawndist` = 2, `MovementType` = 1 WHERE `guid` = 783;
UPDATE `creature` SET `spawndist` = 2, `MovementType` = 1 WHERE `guid` IN (751,752,753,754);
UPDATE `creature` SET `position_x` = -14926.4, `position_y` = 354.066, `position_z` = 7.62313, `orientation` = 0, `spawndist` = 5, `MovementType` = 1 WHERE `guid` = 2603 AND `id` = 2548; -- https://www.wowhead.com/classic/npc=2548/captain-keelhaul
UPDATE `creature` SET `position_x` = -14946.3, `position_y` = 357.595, `position_z` = 7.63153, `orientation` = 3.59538, `spawndist` = 0, `MovementType` = 4 WHERE `guid` = 2601 AND `id` = 2549; -- https://www.wowhead.com/classic/npc=2549/garr-salthoof
DELETE FROM creature_movement_template WHERE Entry = 2549;
INSERT INTO creature_movement_template (Entry, PathId, Point, PositionX, PositionY, PositionZ, Orientation, WaitTime) VALUES
(2549, 0, 1, -14946.1, 357.4724, 7.545442, 3.59538, 10000),
(2549, 0, 2, -14944.11, 357.9192, 7.544032, 100, 0),
(2549, 0, 3, -14934.67, 356.5815, 7.542272, 100, 0),
(2549, 0, 4, -14932.65, 357.0736, 7.540446, 100, 0),
(2549, 0, 5, -14932.02, 357.1774, 7.540317, 100, 10000);
DELETE FROM `creature` WHERE `guid` = 191699 AND `id` = 0;
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `movementtype`) VALUES
(191699, 0, 0, -14995.8, 268.039, 7.60322, 0, 300, 300, 2, 1); -- is_spawn
INSERT INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (191699, 1565),(191699, 1653),(191699, 4505),(191699, 4506);
DELETE FROM `creature` WHERE `guid` = 191700 AND `id` = 0;
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `movementtype`) VALUES
(191700, 0, 0, -14981.7, 267.87, 7.60322, 0, 300, 300, 2, 1); -- is_spawn
INSERT INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (191700, 1565),(191700, 1653),(191700, 4505),(191700, 4506);
DELETE FROM `creature` WHERE `guid` = 191701 AND `id` = 0;
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `movementtype`) VALUES
(191701, 0, 0, -14968.2, 345.227, 7.62574, 0, 300, 300, 2, 1); -- is_spawn
INSERT INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (191701, 1565),(191701, 1653),(191701, 4505),(191701, 4506);
DELETE FROM `creature` WHERE `guid` = 191702 AND `id` = 0;
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `movementtype`) VALUES
(191702, 0, 0, -14951.8, 346.312, 7.62574, 0, 300, 300, 2, 1); -- is_spawn
INSERT INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (191702, 1565),(191702, 1653),(191702, 4505),(191702, 4506);
DELETE FROM `creature` WHERE `guid` = 191703 AND `id` = 0;
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `movementtype`) VALUES
(191703, 0, 0, -14927.3, 95.038, 7.60518, 0, 300, 300, 2, 1); -- is_spawn
INSERT INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (191703, 1565),(191703, 1653),(191703, 4505),(191703, 4506);
UPDATE `creature_movement` SET `waittime` = 1, `ScriptId` = 21 WHERE `id` = 2592 AND `point` = 5;

-- https://classic.wowhead.com/npc=1563/bloodsail-swashbuckler
-- https://classic.wowhead.com/npc=1564/bloodsail-warlock
INSERT INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 1563 FROM `creature` WHERE `id` IN (1563,1564) AND `guid` IN (949,982,983,985,986,988,992,1101,1103,1104,1116,1123,1635,2064,2067,2068,2071,2125,2187,2188,2191,2195,2198,2203,2205,2206,2209,2210,2211,2553,2556,2560,2562,2569,2575,2587,2604,2605);
INSERT INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 1564 FROM `creature` WHERE `id` IN (1563,1564) AND `guid` IN (949,982,983,985,986,988,992,1101,1103,1104,1116,1123,1635,2064,2067,2068,2071,2125,2187,2188,2191,2195,2198,2203,2205,2206,2209,2210,2211,2553,2556,2560,2562,2569,2575,2587,2604,2605);
UPDATE creature SET `id` = 0 WHERE `id` IN (1563,1564) AND `guid` IN (949,982,983,985,986,988,992,1101,1103,1104,1116,1123,1635,2064,2067,2068,2071,2125,2187,2188,2191,2195,2198,2203,2205,2206,2209,2210,2211,2553,2556,2560,2562,2569,2575,2587,2604,2605);

-- https://classic.wowhead.com/npc=1561/bloodsail-raider
-- https://classic.wowhead.com/npc=1562/bloodsail-mage
INSERT INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 1561 FROM `creature` WHERE `id` IN (1561,1562) AND `guid` IN (2549,2565,2567,2568,2570,2571,2572,2574,2576,2581,2584,2586,2594,2596,2599,2625);
INSERT INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 1562 FROM `creature` WHERE `id` IN (1561,1562) AND `guid` IN (2549,2565,2567,2568,2570,2571,2572,2574,2576,2581,2584,2586,2594,2596,2599,2625);
UPDATE creature SET `id` = 0 WHERE `id` IN (1561,1562) AND `guid` IN (2549,2565,2567,2568,2570,2571,2572,2574,2576,2581,2584,2586,2594,2596,2599,2625);

-- https://classic.wowhead.com/npc=675/venture-co-foreman
-- https://classic.wowhead.com/npc=676/venture-co-surveyor
-- https://classic.wowhead.com/npc=677/venture-co-tinkerer
INSERT INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 675 FROM `creature` WHERE `id` IN (675,676,677) AND `guid` IN (1202,1207,1208,1212,2241,2316,2331,2431,4564);
INSERT INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 676 FROM `creature` WHERE `id` IN (675,676,677) AND `guid` IN (1202,1207,1208,1212,2241,2316,2331,2431,4564);
INSERT INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 677 FROM `creature` WHERE `id` IN (675,676,677) AND `guid` IN (1202,1207,1208,1212,2241,2316,2331,2431,4564);
UPDATE creature SET `id` = 0 WHERE `id` IN (675,676,677) AND `guid` IN (1202,1207,1208,1212,2241,2316,2331,2431,4564);

-- is_spawn
UPDATE `creature` SET `position_x` = -11814.500000, `position_y` = -17.299601, `position_z` = 42.024101, `orientation` = 0 WHERE `guid` = 1467;
UPDATE `creature` SET `position_x` = -11780.799805, `position_y` = -15.055700, `position_z` = 34.9814, `orientation` = 0 WHERE `guid` = 1971;
UPDATE `creature` SET `position_x` = -11751.099609, `position_y` = 15.041100, `position_z` = 17.560801, `orientation` = 0 WHERE `guid` = 2398;
UPDATE `creature` SET `position_x` = -11725.799805, `position_y` = -82.544800, `position_z` = 8.600010, `orientation` = 0 WHERE `guid` = 1713;
UPDATE `creature` SET `position_x` = -11718.299805, `position_y` = 51.497700, `position_z` = 16.254400, `orientation` = 0 WHERE `guid` = 1692;
UPDATE `creature` SET `position_x` = -11707.500000, `position_y` = -175.897995, `position_z` = 38.411301, `orientation` = 0 WHERE `guid` = 2123;
UPDATE `creature` SET `position_x` = -11693.299805, `position_y` = -51.240898, `position_z` = 16.258900, `orientation` = 0 WHERE `guid` = 1972;
UPDATE `creature` SET `position_x` = -11650.700195, `position_y` = 48.646000, `position_z` = 18.651699, `orientation` = 0 WHERE `guid` = 2045;
UPDATE `creature` SET `position_x` = -11650.299805, `position_y` = -150.761993, `position_z` = 17.573700, `orientation` = 0 WHERE `guid` = 1639;
UPDATE `creature` SET `position_x` = -11592.900391, `position_y` = -343.929993, `position_z` = 32.526299, `orientation` = 0 WHERE `guid` = 1679;
UPDATE `creature` SET `position_x` = -11583.400391, `position_y` = 116.457001, `position_z` = 16.610600, `orientation` = 0 WHERE `guid` = 1986;
UPDATE `creature` SET `position_x` = -11582.500000, `position_y` = 182.024002, `position_z` = 19.016500, `orientation` = 0 WHERE `guid` = 1988;
UPDATE `creature` SET `position_x` = -11530.400391, `position_y` = 217.570007, `position_z` = 17.992100, `orientation` = 0 WHERE `guid` = 1973;
UPDATE `creature` SET `position_x` = -11513.400391, `position_y` = -285.028015, `position_z` = 38.684700, `orientation` = 0 WHERE `guid` = 1691;
UPDATE `creature` SET `position_x` = -11849.400391, `position_y` = 318.372009, `position_z` = 21.271000, `orientation` = 0 WHERE `guid` = 1663;
UPDATE `creature` SET `position_x` = -11820.700195, `position_y` = -719.098022, `position_z` = 40.035999, `orientation` = 0 WHERE `guid` = 2330;
UPDATE `creature` SET `position_x` = -11817.099609, `position_y` = 283.235992, `position_z` = 17.948999, `orientation` = 0 WHERE `guid` = 1921;
UPDATE `creature` SET `position_x` = -11816.099609, `position_y` = -784.275024, `position_z` = 34.668499, `orientation` = 0 WHERE `guid` = 2338;
UPDATE `creature` SET `position_x` = -11785.099609, `position_y` = 249.253006, `position_z` = 16.384199, `orientation` = 0 WHERE `guid` = 1697;
UPDATE `creature` SET `position_x` = -11752.099609, `position_y` = -585.059021, `position_z` = 35.668800, `orientation` = 0 WHERE `guid` = 2378;
UPDATE `creature` SET `position_x` = -11649.599609, `position_y` = 249.298004, `position_z` = 37.517799, `orientation` = 0 WHERE `guid` = 1711;
UPDATE `creature` SET `position_x` = -11613.500000, `position_y` = 347.697998, `position_z` = 46.515202, `orientation` = 0 WHERE `guid` = 2046;
UPDATE `creature` SET `position_x` = -11612.000000, `position_y` = 413.429993, `position_z` = 47.280602, `orientation` = 0 WHERE `guid` = 1733;
UPDATE `creature` SET `position_x` = -11581.799805, `position_y` = 383.785004, `position_z` = 46.232201, `orientation` = 0 WHERE `guid` = 1875;
UPDATE `creature` SET `position_x` = -11550.799805, `position_y` = 280.733002, `position_z` = 39.171799, `orientation` = 0 WHERE `guid` = 1856;
UPDATE `creature` SET `position_x` = -11783.000000, `position_y` = -283.216003, `position_z` = 15.495800, `orientation` = 0 WHERE `guid` = 1305;
UPDATE `creature` SET `position_x` = -11756.099609, `position_y` = -108.430000, `position_z` = 17.162901, `orientation` = 0 WHERE `guid` = 1640;
UPDATE `creature` SET `position_x` = -11748.400391, `position_y` = -514.028992, `position_z` = 18.563900, `orientation` = 0 WHERE `guid` = 2510;
UPDATE `creature` SET `position_x` = -11741.200195, `position_y` = -449.622009, `position_z` = 19.812000, `orientation` = 0 WHERE `guid` = 2477;
UPDATE `creature` SET `position_x` = -11717.799805, `position_y` = -482.825989, `position_z` = 16.946600, `orientation` = 0 WHERE `guid` = 2259;
UPDATE `creature` SET `position_x` = -11716.799805, `position_y` = -416.936005, `position_z` = 18.872801, `orientation` = 0 WHERE `guid` = 2490;
UPDATE `creature` SET `position_x` = -11684.000000, `position_y` = -516.844971, `position_z` = 22.249100, `orientation` = 0 WHERE `guid` = 2253;
UPDATE `creature` SET `position_x` = -11683.599609, `position_y` = -448.901001, `position_z` = 20.139799, `orientation` = 0 WHERE `guid` = 2270;
UPDATE `creature` SET `position_x` = -11650.700195, `position_y` = -353.480988, `position_z` = 15.191700, `orientation` = 0 WHERE `guid` = 2374;
UPDATE `creature` SET `position_x` = -11649.599609, `position_y` = -482.286011, `position_z` = 20.041599, `orientation` = 0 WHERE `guid` = 2383;
UPDATE `creature` SET `position_x` = -11648.900391, `position_y` = -421.087006, `position_z` = 15.727400, `orientation` = 0 WHERE `guid` = 2240;
UPDATE `creature` SET `position_x` = -11616.400391, `position_y` = -450.066986, `position_z` = 15.422800, `orientation` = 0 WHERE `guid` = 2236;
UPDATE `creature` SET `position_x` = -11616.299805, `position_y` = -519.885010, `position_z` = 19.844700, `orientation` = 0 WHERE `guid` = 2231;
UPDATE `creature` SET `position_x` = -11581.599609, `position_y` = -485.657990, `position_z` = 23.959499, `orientation` = 0 WHERE `guid` = 2247;
UPDATE `creature` SET `position_x` = -11518.599609, `position_y` = -352.394989, `position_z` = 37.795700, `orientation` = 0 WHERE `guid` = 2214;
UPDATE `creature` SET `position_x` = -11454.200195, `position_y` = -269.320007, `position_z` = 45.227299, `orientation` = 0 WHERE `guid` = 1644;
UPDATE `creature` SET `position_x` = -11848.599609, `position_y` = 252.656998, `position_z` = 20.141701, `orientation` = 0 WHERE `guid` = 2110;
UPDATE `creature` SET `position_x` = -11848.599609, `position_y` = 379.306000, `position_z` = 41.652802, `orientation` = 0 WHERE `guid` = 1649;
UPDATE `creature` SET `position_x` = -11788.200195, `position_y` = 387.690002, `position_z` = 44.142101, `orientation` = 0 WHERE `guid` = 1840;
UPDATE `creature` SET `position_x` = -11751.500000, `position_y` = 416.804993, `position_z` = 43.178101, `orientation` = 0 WHERE `guid` = 1655;
UPDATE `creature` SET `position_x` = -11750.599609, `position_y` = 351.622009, `position_z` = 39.974098, `orientation` = 0 WHERE `guid` = 2158;
UPDATE `creature` SET `position_x` = -11686.500000, `position_y` = 418.489014, `position_z` = 44.251099, `orientation` = 0 WHERE `guid` = 2134;
UPDATE `creature` SET `position_x` = -11615.900391, `position_y` = 281.997986, `position_z` = 43.413502, `orientation` = 0 WHERE `guid` = 1847;
UPDATE `creature` SET `position_x` = -11649.299805, `position_y` = 318.872009, `position_z` = 40.670200, `orientation` = 0 WHERE `guid` = 1844;

-- https://www.wowhead.com/tbc/npc=681/young-stranglethorn-tiger
-- https://www.wowhead.com/tbc/npc=682/stranglethorn-tiger
-- https://www.wowhead.com/tbc/npc=683/young-panther
-- https://www.wowhead.com/tbc/npc=736/panther - seemingly not
INSERT INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 681 FROM `creature` WHERE `id` IN (681,682,683,736) AND `guid` IN (832,914,1228,1252,1308,1411,1467,1578,1640,1644,1679,1706,1879,1971,1999,2123,1691,1305,2214);
INSERT INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 682 FROM `creature` WHERE `id` IN (681,682,683,736) AND `guid` IN (1467,1706,1879,1971,2123);
INSERT INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 683 FROM `creature` WHERE `id` IN (681,682,683,736) AND `guid` IN (832,914,1228,1252,1308,1411,1467,1578,1640,1644,1679,1706,1879,1971,1999,2123,1691,1305,2214);
UPDATE creature SET `id` = 0 WHERE `id` IN (681,682,683,736) AND `guid` IN (832,914,1228,1252,1305,1308,1411,1467,1578,1640,1644,1679,1691,1706,1879,1971,1999,2123,2214);

DELETE FROM `creature` WHERE `guid` = 191704 AND `id` = 728;
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `movementtype`) VALUES
(191704, 728, 0, -12031.400391, -889.929993, 38.041599, 5.644030, 240, 360, 0, 0); -- is_spawn

DELETE FROM `creature` WHERE `guid` = 191705 AND `id` = 728;
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `movementtype`) VALUES
(191705, 728, 0, -12385.70, -793.50, 30.76, 5.644, 240, 360, 0, 0);

UPDATE `creature` SET `spawndist` = 30, `MovementType` = 1 WHERE `id` = 728;

DELETE FROM `spawn_group` WHERE `Id` = 19029;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(19029, 'Stranglethorn Vale - Bhag''thera (728)', 0, 1, 0, 0);

DELETE FROM `spawn_group_spawn` WHERE `Id` = 19029;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(19029, 1348, -1),
(19029, 191704, -1),
(19029, 191705, -1);

-- https://www.wowhead.com/tbc/npc=943/kurzen-wrangler
-- https://www.wowhead.com/tbc/npc=976/kurzen-war-tiger
-- https://www.wowhead.com/tbc/npc=977/kurzen-war-panther
INSERT INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 943 FROM `creature` WHERE `id` IN (943,976,977) AND `guid` IN (1606,1607);
INSERT INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 976 FROM `creature` WHERE `id` IN (943,976,977) AND `guid` IN (1428,1429,1430,1606,1607);
INSERT INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 977 FROM `creature` WHERE `id` IN (943,976,977) AND `guid` IN (1428,1429,1430,1606,1607);
UPDATE creature SET `id` = 0 WHERE `id` IN (943,976,977) AND `guid` IN (1428,1429,1430,1606,1607);

-- https://www.wowhead.com/tbc/npc=678/moshogg-mauler
-- https://www.wowhead.com/tbc/npc=679/moshogg-shaman
-- https://www.wowhead.com/tbc/npc=680/moshogg-lord
-- https://www.wowhead.com/tbc/npc=710/moshogg-spellcrafter
INSERT INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 678 FROM `creature` WHERE `id` IN (678,679,710,680) AND `guid` IN (273,274,275,276,524,525,527,528,623,624,625,626,627,628,629,755,762,853,854,855,1050,1077,1093);
INSERT INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 679 FROM `creature` WHERE `id` IN (678,679,710,680) AND `guid` IN (273,274,275,276,524,525,527,528,623,624,625,626,627,628,629,755,762,853,854,855,1050,1077,1093);
INSERT INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 710 FROM `creature` WHERE `id` IN (678,679,710,680) AND `guid` IN (273,274,275,276,524,525,527,528,623,624,625,626,627,628,629,755,762,853,854,855,1050,1077,1093,521,522);
INSERT INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 680 FROM `creature` WHERE `id` IN (678,679,710,680) AND `guid` IN (521,522);
UPDATE creature SET `id` = 0 WHERE `id` IN (678,679,710,680) AND `guid` IN (273,274,275,276,524,525,527,528,623,624,625,626,627,628,629,755,762,853,854,855,1050,1077,1093,521,522);

UPDATE `spawn_group_formation` SET `FormationSpread` = 5 WHERE `Id` = 19910; -- Stranglethorn Vale - Skullsplitter Spiritchaser 672 & Skullsplitter Berserker 783 & Ana'thek the Cruel 1059 - Patrol

UPDATE `creature` SET `position_x` = -13671.8, `position_y` = -64.9457, `position_z` = 37.8678, `orientation` = 2.08124 WHERE `guid` = 134235 AND `id` = 14492; -- 134235 in classic and wotlkmangos
UPDATE `creature_model_info` SET `modelid_other_gender`='0' WHERE `modelid`='7232'; -- https://www.wowhead.com/tbc/npc=14492/verifonix

-- UPDATE `game_event_creature` SET `event` = 79 WHERE `guid` = 141208; -- 14843 assigned to noblegarden!? Darkmoon Faire (Mulgore) - Building Stage 1 - different event in classic/wotlkmangos!

