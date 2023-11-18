-- align limited stock items with classicmangos & wotlkmangos with improvements
-- mostly reducing time from 10800 to 9000 how it is in classic/wotlkmangos
-- some maxounts are wrong, some items are not set to be limited.

-- general fix for items that should not be sold limited.
UPDATE `npc_vendor` SET `incrtime` = 0, `maxcount` = 0 WHERE `item` = 18256; -- Imbued Vial
UPDATE `npc_vendor` SET `incrtime` = 0, `maxcount` = 0 WHERE `item` = 7371; -- Heavy Quiver
UPDATE `npc_vendor` SET `incrtime` = 0, `maxcount` = 0 WHERE `item` = 22250; -- Herb Pouch
UPDATE `npc_vendor` SET `incrtime` = 0, `maxcount` = 0 WHERE `item` = 13483; -- Recipe: Transmute Fire to Earth
UPDATE `npc_vendor` SET `maxcount` = 0, `incrtime` = 0 WHERE `entry` = 12096; -- Stormpike Quartermaster - Food
UPDATE `npc_vendor` SET `incrtime` = 0, `maxcount` = 0 WHERE `item` = 19316; -- Ice Threaded Arrow
UPDATE `npc_vendor` SET `incrtime` = 0, `maxcount` = 0 WHERE `item` = 19317; -- Ice Threaded Bullet
UPDATE `npc_vendor` SET `maxcount` = 0, `incrtime` = 0 WHERE `entry` = 6738; -- Innkeeper Kimlya
UPDATE `npc_vendor` SET `maxcount` = 0, `incrtime` = 0 WHERE `entry` = 6930; -- Innkeeper Karakul
UPDATE `npc_vendor` SET `maxcount` = 0, `incrtime` = 0 WHERE `entry` = 7736; -- Innkeeper Shyria
UPDATE `npc_vendor` SET `maxcount` = 0, `incrtime` = 0 WHERE `entry` = 7941; -- Mardrack Greenwell <Food & Drink>
UPDATE `npc_vendor` SET `maxcount` = 0, `incrtime` = 0 WHERE `entry` = 7943; -- Harklane <Fish Vendor>
UPDATE `npc_vendor` SET `maxcount` = 0, `incrtime` = 0 WHERE `item` = 13086; -- Reins of the Winterspring Frostsaber
UPDATE `npc_vendor` SET `maxcount` = 0, `incrtime` = 0 WHERE `entry` = 15293; -- Aendel Windspear
UPDATE `npc_vendor` SET `maxcount` = 0, `incrtime` = 0 WHERE `entry` = 15315; -- Mylini Frostmoon

UPDATE `npc_vendor` SET `incrtime` = 9000 WHERE `entry` = 167 AND `item` IN (4765,4766);
UPDATE `npc_vendor` SET `incrtime` = 9000, `maxcount` = 2 WHERE `entry` = 222 AND `item` IN (4777,4778);
UPDATE `npc_vendor` SET `incrtime` = 9000 WHERE `entry` = 225 AND `item` = 12247;
UPDATE `npc_vendor` SET `incrtime` = 9000 WHERE `entry` = 226 AND `item` IN (4797,4798,4799,4800,4816);
UPDATE `npc_vendor` SET `incrtime` = 9000, `maxcount` = 2 WHERE `entry` = 228 AND `item` = 11304;
UPDATE `npc_vendor` SET `incrtime` = 9000, `maxcount` = 1 WHERE `entry` = 777 AND `item` = 20576;
UPDATE `npc_vendor` SET `incrtime` = 9000 WHERE `entry` = 793 AND `item` IN (4820,4821,4822);
UPDATE `npc_vendor` SET `incrtime` = 9000, `maxcount` = 1 WHERE `entry` = 843 AND `item` IN (5771,5786,5787,6274);
UPDATE `npc_vendor` SET `incrtime` = 7200 WHERE `entry` = 844 AND `item` IN (858,3357);
UPDATE `npc_vendor` SET `maxcount` = 2 WHERE `entry` = 844 AND `item` = 4778;
UPDATE `npc_vendor` SET `maxcount` = 3 WHERE `entry` = 844 AND `item` = 858;
UPDATE `npc_vendor` SET `incrtime` = 9000 WHERE `entry` = 954 AND `item` = 4789;
UPDATE `npc_vendor` SET `incrtime` = 9000 WHERE `entry` = 984 AND `item` IN (12255,12256);
UPDATE `npc_vendor` SET `incrtime` = 9000 WHERE `entry` = 989 AND `item` = 11223;
UPDATE `npc_vendor` SET `incrtime` = 3600 WHERE `entry` = 989 AND `item` = 21941;
UPDATE `npc_vendor` SET `incrtime` = 3600 WHERE `entry` = 1148 AND `item` = 21943;
UPDATE `npc_vendor` SET `incrtime` = 9000 WHERE `entry` = 1214 AND `item` IN (4781,4782,4786);
UPDATE `npc_vendor` SET `incrtime` = 3600, `maxcount` = 1 WHERE `entry` = 1286 AND `item` = 20856;
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES
(1298, 11303, 2, 9000),(1298, 11306, 1, 9000),(1298, 11307, 1, 9000);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES
(1302, 2453, 2, 9000),(1302, 2449, 3, 9000),(1302, 3356, 1, 9000),(1302, 3357, 1, 9000),(1302, 785, 2, 9000),(1302, 3355, 1, 9000);
UPDATE `npc_vendor` SET `incrtime` = 9000, `maxcount` = 1 WHERE `entry` = 1304 AND `item` = 18649;
UPDATE `npc_vendor` SET `incrtime` = 9000 WHERE `entry` = 1307 AND `item` IN (4824,4825,4826,4827,4828,4829);
UPDATE `npc_vendor_template` SET `maxcount` = 3 WHERE `entry` = 129 AND `item` IN (2447); -- one more at max
UPDATE `npc_vendor` SET `maxcount` = 4 WHERE `entry` = 1313 AND `item` = 785;
UPDATE `npc_vendor` SET `maxcount` = 6 WHERE `entry` = 1313 AND `item` = 2449;
UPDATE `npc_vendor` SET `incrtime` = 9000, `maxcount` = 4 WHERE `entry` = 1316 AND `item` IN (954,3012);
UPDATE `npc_vendor` SET `incrtime` = 9000, `maxcount` = 3 WHERE `entry` = 1316 AND `item` IN (955,1180,1181,3013);
UPDATE `npc_vendor` SET `incrtime` = 9000, `maxcount` = 2 WHERE `entry` = 1316 AND `item` IN (1478,1711,1712,2290);
UPDATE `npc_vendor` SET `maxcount` = 2 WHERE `entry` = 1318 AND `item` = 10938;
UPDATE `npc_vendor` SET `maxcount` = 4 WHERE `entry` = 1318 AND `item` = 10940;
UPDATE `npc_vendor` SET `incrtime` = 9000, `maxcount` = 1 WHERE `entry` = 1347 AND `item` IN (6274,10325);
UPDATE `npc_vendor` SET `incrtime` = 9000 WHERE `entry` = 1441 AND `item` IN (4817,4818);
UPDATE `npc_vendor` SET `incrtime` = 3600 WHERE `entry` = 1448 AND `item` = 20970;
UPDATE `npc_vendor` SET `maxcount` = 3 WHERE `entry` IN (1453,1457) AND `item` = 929;
UPDATE `npc_vendor` SET `incrtime` = 9000, `maxcount` = 1 WHERE `entry` = 1454 AND `item` IN (4790,4792,4793,4827,4828,4829,6275);
UPDATE `npc_vendor` SET `incrtime` = 9000 WHERE `entry` = 1459 AND `item` = 11304;
UPDATE `npc_vendor` SET `incrtime` = 9000 WHERE `entry` = 1471 AND `item` = 10858;
UPDATE `npc_vendor` SET `incrtime` = 9000, `maxcount` = 1 WHERE `entry` = 1474 AND `item` = 6275;
UPDATE `npc_vendor` SET `incrtime` = 9000 WHERE `entry` = 1668 AND `item` = 11304;
UPDATE `npc_vendor` SET `incrtime` = 9000 WHERE `entry` = 1669 AND `item` = 4789;
UPDATE `npc_vendor` SET `incrtime` = 9000, `maxcount` = 2 WHERE `entry` = 1687 AND `item` = 11304;
UPDATE `npc_vendor` SET `maxcount` = 3 WHERE `entry` = 2140 AND `item` = 858;
UPDATE `npc_vendor` SET `incrtime` = 0, `maxcount` = 0 WHERE `entry` IN (1669,2303,3961,4191,4195) AND `item` IN (21030,21031,21033);
DELETE FROM `npc_vendor` WHERE `entry` = 2366 AND `item` IN (23585,29401); -- CoT only.
UPDATE `npc_vendor` SET `incrtime` = 3600 WHERE `entry` = 2381 AND `item` IN (4355,5788,20971,20973);
UPDATE `npc_vendor` SET `incrtime` = 10800 WHERE `entry` = 2381 AND `item` = 11163;
UPDATE `npc_vendor` SET `incrtime` = 3600 WHERE `entry` = 2393 AND `item` IN (5788,6054,20971);
UPDATE `npc_vendor` SET `incrtime` = 1800 WHERE `entry` = 2480 AND `item` = 14634;
UPDATE `npc_vendor` SET `incrtime` = 7200 WHERE `entry` = 2481 AND `item` = 3385;
UPDATE `npc_vendor` SET `incrtime` = 9000, `maxcount` = 1 WHERE `entry` = 2668 AND `item` = 14627;
UPDATE `npc_vendor` SET `incrtime` = 9000, `maxcount` = 1 WHERE `entry` = 2669 AND `item` IN (6275,6401);
UPDATE `npc_vendor` SET `incrtime` = 9000, `maxcount` = 1 WHERE `entry` = 2672 AND `item` = 10318;
UPDATE `npc_vendor` SET `incrtime` = 9000 WHERE `entry` = 2679 AND `item` IN (7114,7290,7613,4827,4828,4829,4830,4831,4832,4833,4835);
UPDATE `npc_vendor` SET `incrtime` = 9000, `maxcount` = 1 WHERE `entry` = 2684 AND `item` = 13308;
UPDATE `npc_vendor` SET `incrtime` = 9000, `maxcount` = 1 WHERE `item` = 14639;
UPDATE `npc_vendor` SET `incrtime` = 1800 WHERE `entry` = 2685 AND `item` = 18651;
UPDATE `npc_vendor` SET `incrtime` = 9000, `maxcount` = 1 WHERE `entry` = 2697 AND `item` = 7289;
UPDATE `npc_vendor` SET `incrtime` = 3600 WHERE `entry` = 2698 AND `item` = 7613;
UPDATE `npc_vendor` SET `maxcount` = 3 WHERE `entry` = 2805 AND `item` = 929;
UPDATE `npc_vendor` SET `incrtime` = 3600 WHERE `entry` = 2810 AND `item` IN (5973,21942);
UPDATE `npc_vendor` SET `incrtime` = 9000 WHERE `entry` = 2816 AND `item` = 13288;
UPDATE `npc_vendor` SET `incrtime` = 3600 WHERE `entry` = 2821 AND `item` IN (5973,21942);
UPDATE `npc_vendor` SET `incrtime` = 9000 WHERE `entry` = 2821 AND `item` = 13288;
UPDATE `npc_vendor` SET `incrtime` = 10800 WHERE `entry` = 2821 AND `item` = 11163;
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES
(2839, 11305, 1, 9000);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES
(2840, 4777, 2, 9000),(2840, 4778, 2, 9000);
UPDATE `npc_vendor` SET `incrtime` = 3600 WHERE `entry` = 2846 AND `item` IN (5788,5789);
UPDATE `npc_vendor` SET `maxcount` = 3 WHERE `entry` = 2848 AND `item` = 3827;
UPDATE `npc_vendor` SET `incrtime` = 9000 WHERE `entry` = 3015 AND `item` IN (11303,11306,11307);
UPDATE `npc_vendor` SET `incrtime` = 9000 WHERE `entry` = 3091 AND `item` IN (4781,4782,4786);
UPDATE `npc_vendor` SET `incrtime` = 9000 WHERE `entry` = 3097 AND `item` IN (4794,4795,4796);
UPDATE `npc_vendor` SET `incrtime` = 9000 WHERE `entry` = 3134 AND `item` IN (4827,4828,4829,4836,4837,4838);
UPDATE `npc_vendor` SET `maxcount` = 3 WHERE `entry` = 3180 AND `item` = 4378;
UPDATE `npc_vendor` SET `incrtime` = 9000 WHERE `entry` = 3180 AND `item` IN (4824,4825,4826,4830,4831,4832,4833,4835);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES
(3315, 12255, 1, 9000);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES
(3316, 12256, 1, 9000);
UPDATE `npc_vendor` SET `incrtime` = 3600 WHERE `entry` = 3367 AND `item` = 20856;
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES
(3410, 11303, 2, 9000),(3410, 11306, 1, 9000),(3410, 11307, 1, 9000);
UPDATE `creature_template` SET `NpcFlags` = 2, `GossipMenuId` = 0 WHERE `entry` = 3443;
DELETE FROM `npc_vendor` WHERE `entry` = 3443;
UPDATE `npc_vendor` SET `maxcount` = 2 WHERE `entry` = 3479 AND `item` IN (4765,4766);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES
(3485, 6270, 1, 9000);
UPDATE `npc_vendor` SET `incrtime` = 9000, `maxcount` = 2 WHERE `entry` = 3488 AND `item` = 11304;
UPDATE `npc_vendor` SET `maxcount` = 3 WHERE `entry` = 3490 AND `item` = 765;
UPDATE `npc_vendor` SET `maxcount` = 3 WHERE `entry` = 3490 AND `item` = 2447;
UPDATE `npc_vendor` SET `incrtime` = 3600 WHERE `entry` = 3499 AND `item` = 20855;
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES
(3499, 6275, 1, 7200);
UPDATE `npc_vendor` SET `incrtime` = 9000, `maxcount` = 1 WHERE `item` = 6270;
UPDATE `npc_vendor_template` SET `incrtime` = 9000, `maxcount` = 1 WHERE `entry` = 210 AND `item` = 6270;
UPDATE `npc_vendor` SET `incrtime` = 9000, `maxcount` = 2 WHERE `entry` = 3534 AND `item` IN (4777,4778,4817,4818,11304);
UPDATE `npc_vendor` SET `maxcount` = 3 WHERE `entry` = 3534 AND `item` = 929;
UPDATE `npc_vendor` SET `incrtime` = 9000 WHERE `entry` = 3536 AND `item` IN (4794,4795,4796,4830,4831,4832);
UPDATE `npc_vendor` SET `incrtime` = 9000 WHERE `entry` = 3537 AND `item` IN (4829,4836,6377,4828,4838,7362,5772,7561,4837,4827);
UPDATE `npc_vendor` SET `incrtime` = 9000, `maxcount` = 1 WHERE `entry` = 3539 AND `item` IN (4824,4825,4826,12247);
UPDATE `npc_vendor` SET `incrtime` = 9000, `maxcount` = 2 WHERE `entry` = 3539 AND `item` IN (4817,4818);
UPDATE `npc_vendor` SET `incrtime` = 9000 WHERE `entry` = 3543 AND `item` IN (4797,4798,4799,4800,4816,4833,4835);
UPDATE `npc_vendor` SET `maxcount` = 3 WHERE `entry` = 3548 AND `item` = 858;
UPDATE `npc_vendor` SET `maxcount` = 3 WHERE `entry` = 3548 AND `item` = 2447;
UPDATE `npc_vendor` SET `maxcount` = 3 WHERE `entry` = 3658 AND `item` IN (4765,4766,4777);
UPDATE `npc_vendor` SET `maxcount` = 2 WHERE `entry` = 3682 AND `item` IN (4778,4777,4765,4766);
UPDATE `npc_vendor` SET `incrtime` = 9000 WHERE `entry` = 3951 AND `item` = 11305;
UPDATE `npc_vendor` SET `incrtime` = 9000 WHERE `entry` = 3954 AND `item` IN (11039,11101);
UPDATE `npc_vendor` SET `incrtime` = 3600, `maxcount` = 1 WHERE `entry` = 3954 AND `item` = 20855;
UPDATE `npc_vendor` SET `maxcount` = 3 WHERE `entry` = 3956 AND `item` = 929;
UPDATE `npc_vendor` SET `incrtime` = 3600 WHERE `entry` = 3956 AND `item` = 6054;
UPDATE `npc_vendor` SET `incrtime` = 3600 WHERE `entry` = 3958 AND `item` = 5973;	
UPDATE `npc_vendor` SET `maxcount` = 3 WHERE `entry` = 4083 AND `item` = 3385;
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES
(4083, 929, 3, 7200),(4083, 3357, 1, 7200);
UPDATE `npc_vendor` SET `incrtime` = 9000 WHERE `entry` = 4085 AND `item` IN (4827,4828,4829,4830,4831,4832,4833,4835);
UPDATE `npc_vendor` SET `incrtime` = 9000, `maxcount` = 2 WHERE `entry` = 4086 AND `item` IN (4817,4818);
UPDATE `npc_vendor` SET `maxcount` = 2 WHERE `entry` = 4173 AND `item` = 11303;
UPDATE `npc_vendor` SET `incrtime` = 9000, `maxcount` = 1 WHERE `entry` = 4186 AND `item` IN (5786,5787);
UPDATE `npc_vendor` SET `incrtime` = 9000, `maxcount` = 1 WHERE `entry` = 4189 AND `item` = 5771;
UPDATE `npc_vendor` SET `maxcount` = 2 WHERE `entry` = 4189 AND `item` = 5772;
UPDATE `npc_vendor` SET `incrtime` = 3600 WHERE `entry` = 4561 AND `item` = 20854;
UPDATE `npc_vendor` SET `incrtime` = 9000, `maxcount` = 4 WHERE `entry` = 4581 AND `item` IN (954,3012);
UPDATE `npc_vendor` SET `incrtime` = 9000, `maxcount` = 3 WHERE `entry` = 4581 AND `item` IN (955,1180,1181,3013);
UPDATE `npc_vendor` SET `incrtime` = 9000, `maxcount` = 2 WHERE `entry` = 4581 AND `item` IN (1478,1711,1712,2290);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES
(4589, 7451, 1, 9000);
UPDATE `npc_vendor` SET `maxcount` = 2 WHERE `entry` = 4604 AND `item` = 11303;
UPDATE `npc_vendor` SET `incrtime` = 3600 WHERE `entry` = 4775 AND `item` = 20975;
UPDATE `npc_vendor` SET `incrtime` = 3600 WHERE `entry` = 4877 AND `item` IN (5973,20970);
UPDATE `npc_vendor` SET `incrtime` = 9000, `maxcount` = 2 WHERE `entry` = 4878 AND `item` IN (1711,2290,1712,3012);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES
(4878, 1478, 2, 9000),(4878, 954, 2, 9000);
UPDATE `npc_vendor` SET `incrtime` = 9000 WHERE `entry` = 4890 AND `item` IN (4817,4818,4830);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES
(4890, 4817, 1, 9000),(4890, 4818, 1, 9000),
(4890, 4824, 1, 9000),(4890, 4825, 1, 9000),(4890, 4835, 1, 9000),(4890, 4833, 1, 9000),
(4890, 4826, 1, 9000),(4890, 4832, 1, 9000),(4890, 4830, 1, 9000),(4890, 4831, 1, 9000);
UPDATE `npc_vendor` SET `incrtime` = 9000 WHERE `entry` = 4892 AND `item` = 11305;
UPDATE `npc_vendor` SET `incrtime` = 3600 WHERE `entry` = 4897 AND `item` IN (5789,21941,21943);
UPDATE `npc_vendor` SET `incrtime` = 9000 WHERE `entry` = 5122 AND `item` IN (11303,11306,11307);
UPDATE `npc_vendor` SET `incrtime` = 9000, `maxcount` = 1 WHERE `entry` = 5128 AND `item` = 18731;
UPDATE `npc_vendor` SET `incrtime` = 7200 WHERE `entry` = 5158 AND `item` = 6349;
UPDATE `npc_vendor` SET `incrtime` = 3600, `maxcount` = 1 WHERE `entry` = 5163 AND `item` IN (21948,20975);
UPDATE `npc_vendor` SET `incrtime` = 7200 WHERE `entry` = 5758 AND `item` = 6349;
UPDATE `npc_vendor` SET `maxcount` = 2 WHERE `entry` = 5783 AND `item` = 6475;
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES
(5944, 6274, 1, 7200);
UPDATE `npc_vendor` SET `incrtime` = 3600 WHERE `entry` = 6567 AND `item` = 4355;
UPDATE `npc_vendor` SET `incrtime` = 9000, `maxcount` = 1 WHERE `entry` = 6576 AND `item` = 7089;
UPDATE `npc_vendor` SET `incrtime` = 9000 WHERE `entry` = 6731 AND `item` = 7361;
UPDATE `npc_vendor` SET `incrtime` = 9000, `maxcount` = 1 WHERE `entry` = 7852 AND `item` IN (7451,8385,15734);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES
(7940, 14469, 1, 1200),(7940, 14472, 1, 1200);
UPDATE `npc_vendor` SET `maxcount` = 2 WHERE `entry` = 8158 AND `item` = 3928;
UPDATE `npc_vendor` SET `incrtime` = 9000 WHERE `entry` = 8160 AND `item` = 8409;
UPDATE `npc_vendor` SET `incrtime` = 9000, `maxcount` = 1 WHERE `item` = 7995;
UPDATE `npc_vendor` SET `incrtime` = 14400 WHERE `item` = 9300;
UPDATE `npc_vendor` SET `maxcount` = 3 WHERE `entry` = 8305 AND `item` = 929;
UPDATE `npc_vendor` SET `incrtime` = 3600 WHERE `entry` = 8363 AND `item` = 21948;
UPDATE `npc_vendor` SET `maxcount` = 2 WHERE `entry` = 9549 AND `item` = 11304;
UPDATE `npc_vendor` SET `maxcount` = 2 WHERE `entry` = 9551 AND `item` = 11304;
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES
(9552, 11305, 1, 9000);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES
(9555, 11305, 1, 9000);
UPDATE `npc_vendor` SET `incrtime` = 3600 WHERE `entry` = 9636 AND `item` = 20973;
UPDATE `npc_vendor` SET `incrtime` = 0, `maxcount` = 0 WHERE `entry` = 10216 AND `item` IN (6256,6529);
UPDATE `npc_vendor` SET `incrtime` = 0, `maxcount` = 0 WHERE `item` = 13482;
UPDATE `npc_vendor` SET `incrtime` = 600, `maxcount` = 1 WHERE `entry` = 11185 AND `item` = 32381;
UPDATE `npc_vendor` SET `maxcount` = 2 WHERE `entry` = 11188 AND `item` = 3928;
UPDATE `npc_vendor` SET `incrtime` = 3600 WHERE `entry` = 11189 AND `item` = 21957;
UPDATE `npc_vendor` SET `incrtime` = 1800 WHERE `entry` = 12022 AND `item` = 16243;
UPDATE `npc_vendor` SET `incrtime` = 3600 WHERE `entry` = 12941 AND `item` = 21954;
UPDATE `npc_vendor` SET `incrtime` = 9000, `maxcount` = 1 WHERE `entry` = 12942 AND `item` IN (15725,15741);
UPDATE `npc_vendor` SET `incrtime` = 9000, `maxcount` = 1 WHERE `entry` = 12944 AND `item` IN (19449,19206,19219,19330,19448,17059,17060,17018,17017,17023,17025,20761,17022,17049,17051,19444);
UPDATE `npc_vendor` SET `maxcount` = 3 WHERE `entry` = 13476 AND `item` = 929;
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES
(13476, 3012, 2, 9000),(13476, 2290, 2, 9000),(13476, 1478, 2, 9000),
(13476, 1712, 2, 9000),(13476, 1711, 2, 9000),(13476, 954, 2, 9000),(13476, 3385, 3, 7200);
UPDATE `npc_vendor` SET `incrtime` = 9000 WHERE `entry` = 14301 AND `item` = 11305;
UPDATE `npc_vendor` SET `incrtime` = 9000, `maxcount` = 1 WHERE `entry` = 14371 AND `item` = 18487;
UPDATE `npc_vendor` SET `maxcount` = 4 WHERE `entry` = 14846 AND `item` = 3357;
DELETE FROM `npc_vendor` WHERE `entry` = 14846 AND `item` IN (13456);
UPDATE `npc_vendor` SET `incrtime` = 9000, `maxcount` = 1 WHERE `entry` = 14860 AND `item` = 11027;
UPDATE `npc_vendor` SET `incrtime` = 3600 WHERE `entry` = 15179 AND `item` = 21952;
UPDATE `npc_vendor` SET `maxcount` = 4 WHERE `entry` = 15471 AND `item` = 13444;
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES
(15471, 14530, 20, 604800);
DELETE FROM `npc_vendor` WHERE `entry` = 15471; -- starts without vendor flags.
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `slot`, `condition_id`, `comments`) VALUES
(15471, 13446, 5, 604800, 1, 0, 'Major Healing Potion'),
(15471, 13444, 5, 604800, 2, 0, 'Major Mana Potion'),
(15471, 14530, 20, 604800, 3, 0, 'Heavy Runecloth Bandage'),
(15471, 22219, 1, 604800, 4, 0, 'Plans: Jagged Obsidian Shield'),
(15471, 22221, 1, 604800, 5, 0, 'Plans: Obsidian Mail Tunic');

-- Field Repair Bot 74A
UPDATE `npc_vendor` SET `slot`=5 WHERE `entry`=14337 && `item`=2880; -- Weak Flux
UPDATE `npc_vendor` SET `slot`=2 WHERE `entry`=14337 && `item`=2901; -- Mining Pick
UPDATE `npc_vendor` SET `slot`=6 WHERE `entry`=14337 && `item`=3466; -- Strong Flux
UPDATE `npc_vendor` SET `slot`=9, `incrtime` = 604800 WHERE `entry`=14337 && `item`=4357; -- Rough Blasting Powder
UPDATE `npc_vendor` SET `slot`=10, `incrtime` = 604800 WHERE `entry`=14337 && `item`=4364; -- Coarse Blasting Powder
UPDATE `npc_vendor` SET `slot`=3 WHERE `entry`=14337 && `item`=4399; -- Wooden Stock
UPDATE `npc_vendor` SET `slot`=4 WHERE `entry`=14337 && `item`=4400; -- Heavy Stock
UPDATE `npc_vendor` SET `slot`=1 WHERE `entry`=14337 && `item`=5956; -- Blacksmith Hammer
UPDATE `npc_vendor` SET `slot`=8 WHERE `entry`=14337 && `item`=10647; -- Engineer's Ink
UPDATE `npc_vendor` SET `slot`=7 WHERE `entry`=14337 && `item`=10648; -- Blank Parchment


-- 14846 & 14847 should be overhauled in general for all expansions
-- tbc+
-- REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES
-- (14846, 13465, 4, 7200);

