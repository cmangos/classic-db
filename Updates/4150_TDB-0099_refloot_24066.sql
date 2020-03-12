-- Remove Refloot 24066 replaced by 60138,65092 now unused in tbc-db - itemlevel 26-27 green items
-- Relevant for all current lootcorruption going on in wotlk, tbc (not so much there)

-- SELECT * FROM `creature_loot_template` WHERE `entry` IN (345,949,1016,1017,1020,1021,1022,1023,1042,1043,1044,1069,1400,1417,2188,2348,2349,2350,2351,2354,2356,2384,2385,3235,3237,3238,3249,3252,3472,3473,3774,3780,3809,3810,3815,3817,3818,3820,3821,3824,3825,3866,3868,3917,3928,4016,4017,4018,4019,4031,4032,4034,4035,4036,4038,4041,4044,4053,4067,4117,4118,4119,4120,4124,4126,4128,4151,4248,4249,4250,4511,4512,4514,4627,4822,4824,4825,4978,5762,5827,5828,5831,5842,6167,6208,6209,6213,6220,10756,10757,10760,10882,11680,11921,12677,12678,12759,12876)
-- AND `item` BETWEEN 60122 AND 60149; -- Adjust the ones with different levels compared to classicmangos

-- 60122	NPC LOOT (Green World Drop) - (Item Levels: 18-22) - (NPC Levels: 19)
-- 60125	NPC LOOT (Green World Drop) - (Item Levels: 19-24) - (NPC Levels: 20-21)
-- 60126	NPC LOOT (Green World Drop) - (Item Levels: 20-24) - (NPC Levels: 21)
-- 60127	NPC LOOT (Green World Drop) - (Item Levels: 20-25) - (NPC Levels: 21-22)
-- 60129	NPC LOOT (Green World Drop) - (Item Levels: 21-26) - (NPC Levels: 22-23)
-- 60130	NPC LOOT (Green World Drop) - (Item Levels: 22-26) - (NPC Levels: 23)
-- 60131	NPC LOOT (Green World Drop) - (Item Levels: 22-27) - (NPC Levels: 23-24)
-- 60132	NPC LOOT (Green World Drop) - (Item Levels: 23-27) - (NPC Levels: 24)
-- 60133	NPC LOOT (Green World Drop) - (Item Levels: 23-28) - (NPC Levels: 24-25)
-- 60134	NPC LOOT (Green World Drop) - (Item Levels: 24-28) - (NPC Levels: 25)
-- 60135	NPC LOOT (Green World Drop) - (Item Levels: 24-29) - (NPC Levels: 25-26)
-- 60136	NPC LOOT (Green World Drop) - (Item Levels: 25-29) - (NPC Levels: 26)
-- 60137	NPC LOOT (Green World Drop) - (Item Levels: 25-30) - (NPC Levels: 26-27)
-- 60138	NPC LOOT (Green World Drop) - (Item Levels: 26-30) - (NPC Levels: 27)
-- 60140	NPC LOOT (Green World Drop) - (Item Levels: 27-31) - (NPC Levels: 28)
-- 60139	NPC LOOT (Green World Drop) - (Item Levels: 26-31) - (NPC Levels: 27-28)
-- 60141	NPC LOOT (Green World Drop) - (Item Levels: 27-32) - (NPC Levels: 28-29)
-- 60149	NPC LOOT (Green World Drop) - (Item Levels: 31-36) - (NPC Levels: 32-33)
REPLACE INTO `creature_loot_template` (`item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`, `entry`) VALUES (60132, -60132, 2, 1, 1, 345); -- (345, 24, 24;
REPLACE INTO `creature_loot_template` (`item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`, `entry`) VALUES (60135, -60135, 2, 1, 1, 949); -- (949, 25, 26)
REPLACE INTO `creature_loot_template` (`item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`, `entry`) VALUES (60133, -60133, 2, 1, 1, 1016); -- (1016, 24, 25)
REPLACE INTO `creature_loot_template` (`item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`, `entry`) VALUES (60135, -60135, 2, 1, 1, 1017); -- (1017, 25, 26)
REPLACE INTO `creature_loot_template` (`item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`, `entry`) VALUES (60129, -60129, 2, 1, 1, 1020); -- (1020, 22, 23)
REPLACE INTO `creature_loot_template` (`item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`, `entry`) VALUES (60133, -60133, 2, 1, 1, 1021); -- (1021, 24, 25)
REPLACE INTO `creature_loot_template` (`item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`, `entry`) VALUES (60135, -60135, 2, 1, 1, 1022); -- (1022, 25, 26)
REPLACE INTO `creature_loot_template` (`item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`, `entry`) VALUES (60137, -60137, 2, 1, 1, 1023); -- (1023, 26, 27)
REPLACE INTO `creature_loot_template` (`item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`, `entry`) VALUES (60131, -60131, 2, 1, 1, 1042); -- (1042, 23, 24)
REPLACE INTO `creature_loot_template` (`item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`, `entry`) VALUES (60133, -60133, 2, 1, 1, 1043); -- (1043, 24, 25)
REPLACE INTO `creature_loot_template` (`item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`, `entry`) VALUES (60137, -60137, 2, 1, 1, 1044); -- (1044, 26, 27)
REPLACE INTO `creature_loot_template` (`item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`, `entry`) VALUES (60135, -60135, 2, 1, 1, 1069); -- (1069, 25, 26)
REPLACE INTO `creature_loot_template` (`item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`, `entry`) VALUES (60131, -60131, 2, 1, 1, 1400); -- (1400, 23, 24)
REPLACE INTO `creature_loot_template` (`item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`, `entry`) VALUES (60127, -60127, 2, 1, 1, 1417); -- (1417, 21, 22)
REPLACE INTO `creature_loot_template` (`item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`, `entry`) VALUES (60134, -60134, 2, 1, 1, 2188); -- (2188, 25, 25) - 2188	23	25 in tbc
REPLACE INTO `creature_loot_template` (`item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`, `entry`) VALUES (60137, -60137, 2, 1, 1, 2348); -- (2348, 26, 27)
REPLACE INTO `creature_loot_template` (`item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`, `entry`) VALUES (60133, -60133, 2, 1, 1, 2349); -- (2349, 24, 25)
REPLACE INTO `creature_loot_template` (`item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`, `entry`) VALUES (60125, -60125, 2, 1, 1, 2350); -- (2350, 20, 21)
REPLACE INTO `creature_loot_template` (`item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`, `entry`) VALUES (60127, -60127, 2, 1, 1, 2351); -- (2351, 21, 22)
REPLACE INTO `creature_loot_template` (`item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`, `entry`) VALUES (60129, -60129, 2, 1, 1, 2354); -- (2354, 22, 23)
REPLACE INTO `creature_loot_template` (`item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`, `entry`) VALUES (60135, -60135, 2, 1, 1, 2356); -- (2356, 25, 26)
REPLACE INTO `creature_loot_template` (`item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`, `entry`) VALUES (60131, -60131, 2, 1, 1, 2384); -- (2384, 23, 24)
REPLACE INTO `creature_loot_template` (`item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`, `entry`) VALUES (60139, -60139, 2, 1, 1, 2385); -- (2385, 27, 28)
REPLACE INTO `creature_loot_template` (`item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`, `entry`) VALUES (60133, -60133, 2, 1, 1, 3235); -- (3235, 24, 25)
REPLACE INTO `creature_loot_template` (`item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`, `entry`) VALUES (60135, -60135, 2, 1, 1, 3237); -- (3237, 25, 26)
REPLACE INTO `creature_loot_template` (`item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`, `entry`) VALUES (60129, -60129, 2, 1, 1, 3238); -- (3238, 22, 23)
REPLACE INTO `creature_loot_template` (`item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`, `entry`) VALUES (60131, -60131, 2, 1, 1, 3249); -- (3249, 23, 24)
REPLACE INTO `creature_loot_template` (`item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`, `entry`) VALUES (60127, -60127, 2, 1, 1, 3252); -- (3252, 21, 22)
REPLACE INTO `creature_loot_template` (`item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`, `entry`) VALUES (60134, -60134, 2, 1, 1, 3472); -- (3472, 25, 25)
REPLACE INTO `creature_loot_template` (`item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`, `entry`) VALUES (60132, -60132, 2, 1, 1, 3473); -- (3473, 24, 24)
REPLACE INTO `creature_loot_template` (`item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`, `entry`) VALUES (60129, -60129, 2, 1, 1, 3774); -- (3774, 22, 23)
REPLACE INTO `creature_loot_template` (`item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`, `entry`) VALUES (60129, -60129, 2, 1, 1, 3780); -- (3780, 21, 23)
REPLACE INTO `creature_loot_template` (`item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`, `entry`) VALUES (60127, -60127, 2, 1, 1, 3809); -- (3809, 21, 22)
REPLACE INTO `creature_loot_template` (`item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`, `entry`) VALUES (60135, -60135, 2, 1, 1, 3810); -- (3810, 25, 26)
REPLACE INTO `creature_loot_template` (`item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`, `entry`) VALUES (60137, -60137, 2, 1, 1, 3815); -- (3815, 26, 27)
REPLACE INTO `creature_loot_template` (`item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`, `entry`) VALUES (60129, -60129, 2, 1, 1, 3817); -- (3817, 22, 23)
REPLACE INTO `creature_loot_template` (`item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`, `entry`) VALUES (60137, -60137, 2, 1, 1, 3818); -- (3818, 26, 27)
REPLACE INTO `creature_loot_template` (`item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`, `entry`) VALUES (60133, -60133, 2, 1, 1, 3820); -- (3820, 24, 25)
REPLACE INTO `creature_loot_template` (`item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`, `entry`) VALUES (60141, -60141, 2, 1, 1, 3821); -- (3821, 28, 29)
REPLACE INTO `creature_loot_template` (`item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`, `entry`) VALUES (60131, -60131, 2, 1, 1, 3824); -- (3824, 23, 24)
REPLACE INTO `creature_loot_template` (`item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`, `entry`) VALUES (60139, -60139, 2, 1, 1, 3825); -- (3825, 27, 28)
REPLACE INTO `creature_loot_template` (`item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`, `entry`) VALUES (60129, -60129, 2, 1, 1, 3866); -- (3866, 22, 23) - 3866	20	20 in tbc
REPLACE INTO `creature_loot_template` (`item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`, `entry`) VALUES (60131, -60131, 2, 1, 1, 3868); -- (3868, 23, 24) - 3868	20	20 in tbc
REPLACE INTO `creature_loot_template` (`item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`, `entry`) VALUES (60133, -60133, 2, 1, 1, 3917); -- (3917, 23, 25)
REPLACE INTO `creature_loot_template` (`item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`, `entry`) VALUES (60127, -60127, 2, 1, 1, 3928); -- (3928, 20, 22)
REPLACE INTO `creature_loot_template` (`item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`, `entry`) VALUES (60133, -60133, 2, 1, 1, 4016); -- (4016, 24, 25)
REPLACE INTO `creature_loot_template` (`item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`, `entry`) VALUES (60137, -60137, 2, 1, 1, 4017); -- (4017, 26, 27)
REPLACE INTO `creature_loot_template` (`item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`, `entry`) VALUES (60129, -60129, 2, 1, 1, 4018); -- (4018, 22, 23)
REPLACE INTO `creature_loot_template` (`item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`, `entry`) VALUES (60133, -60133, 2, 1, 1, 4019); -- (4019, 24, 25)
REPLACE INTO `creature_loot_template` (`item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`, `entry`) VALUES (60137, -60137, 2, 1, 1, 4031); -- (4031, 25, 27)
REPLACE INTO `creature_loot_template` (`item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`, `entry`) VALUES (60133, -60133, 2, 1, 1, 4032); -- (4032, 23, 25)
REPLACE INTO `creature_loot_template` (`item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`, `entry`) VALUES (60133, -60133, 2, 1, 1, 4034); -- (4034, 24, 25)
REPLACE INTO `creature_loot_template` (`item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`, `entry`) VALUES (60137, -60137, 2, 1, 1, 4035); -- (4035, 26, 27)
REPLACE INTO `creature_loot_template` (`item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`, `entry`) VALUES (60131, -60131, 2, 1, 1, 4036); -- (4036, 23, 24)
REPLACE INTO `creature_loot_template` (`item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`, `entry`) VALUES (60137, -60137, 2, 1, 1, 4038); -- (4038, 26, 27)
REPLACE INTO `creature_loot_template` (`item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`, `entry`) VALUES (60139, -60139, 2, 1, 1, 4041); -- (4041, 27, 28)
REPLACE INTO `creature_loot_template` (`item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`, `entry`) VALUES (60131, -60131, 2, 1, 1, 4044); -- (4044, 23, 24)
REPLACE INTO `creature_loot_template` (`item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`, `entry`) VALUES (60133, -60133, 2, 1, 1, 4053); -- (4053, 23, 25)
REPLACE INTO `creature_loot_template` (`item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`, `entry`) VALUES (60131, -60131, 2, 1, 1, 4067); -- (4067, 23, 24)
REPLACE INTO `creature_loot_template` (`item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`, `entry`) VALUES (60135, -60135, 2, 1, 1, 4117); -- (4117, 25, 26)
REPLACE INTO `creature_loot_template` (`item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`, `entry`) VALUES (60139, -60139, 2, 1, 1, 4118); -- (4118, 26, 28)
REPLACE INTO `creature_loot_template` (`item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`, `entry`) VALUES (60141, -60141, 2, 1, 1, 4119); -- (4119, 27, 29)
REPLACE INTO `creature_loot_template` (`item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`, `entry`) VALUES (60141, -60141, 2, 1, 1, 4120); -- (4120, 28, 29)
REPLACE INTO `creature_loot_template` (`item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`, `entry`) VALUES (60139, -60139, 2, 1, 1, 4124); -- (4124, 27, 28)
REPLACE INTO `creature_loot_template` (`item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`, `entry`) VALUES (60135, -60135, 2, 1, 1, 4126); -- (4126, 25, 26)
REPLACE INTO `creature_loot_template` (`item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`, `entry`) VALUES (60129, -60129, 2, 1, 1, 4128); -- (4128, 22, 23)
REPLACE INTO `creature_loot_template` (`item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`, `entry`) VALUES (60149, -60149, 2, 1, 1, 4151); -- (4151, 32, 33)
REPLACE INTO `creature_loot_template` (`item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`, `entry`) VALUES (60137, -60137, 2, 1, 1, 4248); -- (4248, 26, 27) - 4248	28	29 in tbc
REPLACE INTO `creature_loot_template` (`item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`, `entry`) VALUES (60141, -60141, 2, 1, 1, 4249); -- (4249, 28, 29)
REPLACE INTO `creature_loot_template` (`item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`, `entry`) VALUES (60132, -60132, 2, 1, 1, 4250); -- (4250, 24, 24)
REPLACE INTO `creature_loot_template` (`item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`, `entry`) VALUES (60133, -60133, 2, 1, 1, 4511); -- (4511, 24, 25)
REPLACE INTO `creature_loot_template` (`item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`, `entry`) VALUES (60140, -60140, 2, 1, 1, 4512); -- (4512, 28, 28) - 4512	26	26 in tbc
REPLACE INTO `creature_loot_template` (`item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`, `entry`) VALUES (60135, -60135, 2, 1, 1, 4514); -- (4514, 25, 26) - 4514	25	25 in tbc
REPLACE INTO `creature_loot_template` (`item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`, `entry`) VALUES (60133, -60133, 2, 1, 1, 4627); -- (4627, 24, 25) - 4627	20	20 in tbc
REPLACE INTO `creature_loot_template` (`item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`, `entry`) VALUES (60131, -60131, 2, 1, 1, 4822); -- (4822, 23, 24) - 822	22	23 in tbc
REPLACE INTO `creature_loot_template` (`item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`, `entry`) VALUES (60131, -60131, 2, 1, 1, 4824); -- (4824, 23, 24) - 4824	22	23 in tbc
REPLACE INTO `creature_loot_template` (`item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`, `entry`) VALUES (60137, -60137, 2, 1, 1, 4825); -- (4825, 26, 27) - 4825	23	23 in tbc
REPLACE INTO `creature_loot_template` (`item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`, `entry`) VALUES (60136, -60136, 2, 1, 1, 4978); -- (4978, 26, 26) - 4978	23	23 in tbc
REPLACE INTO `creature_loot_template` (`item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`, `entry`) VALUES (60125, -60125, 2, 1, 1, 5762); -- (5762, 20, 21) - 5762	19	19 in tbc
REPLACE INTO `creature_loot_template` (`item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`, `entry`) VALUES (60138, -60138, 100, 1, 1, 5827); -- (5827, 27, 27)
REPLACE INTO `creature_loot_template` (`item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`, `entry`) VALUES (60130, -60130, 100, 1, 1, 5828); -- (5828, 23, 23)
REPLACE INTO `creature_loot_template` (`item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`, `entry`) VALUES (60126, -60126, 100, 1, 1, 5831); -- (5831, 21, 21)
REPLACE INTO `creature_loot_template` (`item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`, `entry`) VALUES (60122, -60122, 100, 1, 1, 5842); -- (5842, 19, 19)
REPLACE INTO `creature_loot_template` (`item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`, `entry`) VALUES (60140, -60140, 2, 1, 1, 6167); -- (6167, 28, 28)
REPLACE INTO `creature_loot_template` (`item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`, `entry`) VALUES (60135, -60135, 2, 1, 1, 6208); -- (6208, 25, 26) - 6208	24	26 in tbc
REPLACE INTO `creature_loot_template` (`item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`, `entry`) VALUES (60136, -60136, 2, 1, 1, 6209); -- (6209, 26, 26) - 6209	24	26 in tbc
REPLACE INTO `creature_loot_template` (`item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`, `entry`) VALUES (60135, -60135, 2, 1, 1, 6213); -- (6213, 24, 26)
REPLACE INTO `creature_loot_template` (`item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`, `entry`) VALUES (60141, -60141, 2, 1, 1, 6220); -- (6220, 28, 29) - 6220	26	27 in tbc
REPLACE INTO `creature_loot_template` (`item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`, `entry`) VALUES (60141, -60141, 2, 1, 1, 10756); -- (10756, 28, 29)
REPLACE INTO `creature_loot_template` (`item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`, `entry`) VALUES (60139, -60139, 2, 1, 1, 10757); -- (10757, 27, 28)
REPLACE INTO `creature_loot_template` (`item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`, `entry`) VALUES (60137, -60137, 2, 1, 1, 10760); -- (10760, 25, 27)
REPLACE INTO `creature_loot_template` (`item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`, `entry`) VALUES (60140, -60140, 2, 1, 1, 10882); -- (10882, 28, 28)
REPLACE INTO `creature_loot_template` (`item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`, `entry`) VALUES (60139, -60139, 2, 1, 1, 11680); -- (11680, 26, 28)
REPLACE INTO `creature_loot_template` (`item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`, `entry`) VALUES (60126, -60126, 2, 1, 1, 11921); -- (11921, 21, 21)
REPLACE INTO `creature_loot_template` (`item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`, `entry`) VALUES (60140, -60140, 2, 1, 1, 12677); -- (12677, 28, 28)
REPLACE INTO `creature_loot_template` (`item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`, `entry`) VALUES (60134, -60134, 2, 1, 1, 12678); -- (12678, 25, 25)
REPLACE INTO `creature_loot_template` (`item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`, `entry`) VALUES (60138, -60138, 2, 1, 1, 12759); -- (12759, 27, 27)
REPLACE INTO `creature_loot_template` (`item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`, `entry`) VALUES (60140, -60140, 2, 1, 1, 12876); -- (12876, 28, 28) - 12876	24	24 in tbc

DELETE FROM `creature_loot_template` WHERE `item` = 24066 AND `mincountorref` = -24066; -- only these are completly gone then, but delete other "green refloots from these npcs"
DELETE FROM `creature_loot_template` WHERE `mincountorref` IN (-24016,-24018,-24020,-24025,-24027,-24029,-24031,-24033,-24037,-24039,-24041,-24043,-24045,-24048,-24050,-24052,-24054,-24056,-24060,-24062,-24064,-24066,-24068,-24074,-24075,-24076,-24077,-24078) AND `entry` IN (345,949,1016,1017,1020,1021,1022,1023,1042,1043,1044,1069,1400,1417,2188,2348,2349,2350,2351,2354,2356,2384,2385,3235,3237,3238,3249,3252,3472,3473,3774,3780,3809,3810,3815,3817,3818,3820,3821,3824,3825,3866,3868,3917,3928,4016,4017,4018,4019,4031,4032,4034,4035,4036,4038,4041,4044,4053,4067,4117,4118,4119,4120,4124,4126,4128,4151,4248,4249,4250,4511,4512,4514,4627,4822,4824,4825,4978,5762,5827,5828,5831,5842,6167,6208,6209,6213,6220,10756,10757,10760,10882,11680,11921,12677,12678,12759,12876);

-- Name these duplicate old refloots for removal purpose
REPLACE INTO `reference_loot_template_names` (`entry`, `name`) VALUES
(24016, 'green itemlevel 59-61'),
(24017, 'blue itemlevel 60-61'),
(24018, 'green itemlevel 62-63'),
(24019, 'blue itemlevel 62-63'),
(24020, 'green itemlevel 64-65'),
(24021, 'idol,libram,totem itemlevel 65'),
(24025, 'green itemlevel 50-51'),
(24026, 'blue itemlevel 50-51'),
(24027, 'green itemlevel 52-53'),
(24028, 'blue itemlevel 52-53'),
(24029, 'green itemlevel 54-55'),
(24030, 'blue itemlevel 54-55'),
(24031, 'green itemlevel 56-57'),
(24032, 'blue itemlevel 56-57'),
(24033, 'green itemlevel 58-59'),
(24034, 'blue itemlevel 58-59'),
(24036, 'grey itemlevel 42-55'),
(24037, 'green itemlevel 40-42'),
(24038, 'blue itemlevel 40-41'),
(24039, 'green itemlevel 42-43'),
(24040, 'blue itemlevel 42-43'),
(24041, 'green itemlevel 40-45'),
(24042, 'blue itemlevel 40-45'),
(24043, 'green itemlevel 46-47'),
(24044, 'blue itemlevel 46-47'),
(24045, 'green itemlevel 48-49'),
(24046, 'blue itemlevel 48-49'),
(24047, 'grey itemlevel 32-40'),
(24048, 'green itemlevel 30-31'),
(24049, 'blue itemlevel 29-31'),
(24050, 'green itemlevel 32-33'),
(24051, 'blue itemlevel 32-33'),
(24052, 'green itemlevel 34-35'),
(24053, 'blue itemlevel 34-35'),
(24054, 'green itemlevel 36-37'),
(24055, 'blue itemlevel 36-37'),
(24056, 'green itemlevel 38-39'),
(24057, 'blue itemlevel 38-39'),
(24058, 'grey itemlevel 26-31'),
(24059, 'grey itemlevel 21-25'),
(24060, 'green itemlevel 20-21'),
(24061, 'blue itemlevel 20-21'),
(24062, 'green itemlevel 22-23'),
(24063, 'blue itemlevel 22-23'),
(24064, 'green itemlevel 24-25'),
(24065, 'blue itemlevel 22-25'),
-- (24066, 'green itemlevel 26-27'),
(24067, 'blue itemlevel 26-27'),
(24068, 'green itemlevel 28-29'),
(24069, 'blue itemlevel 28-29'),
(24070, 'grey itemlevel 16-20'),
(24071, 'grey itemlevel 11-15'),
(24073, 'grey itemlevel 2-10'),
(24074, 'green itemlevel 10-11'),
(24075, 'green itemlevel 12-13'),
(24076, 'green itemlevel 14-15'),
(24077, 'green itemlevel 16-17'),
(24078, 'green itemlevel 18-19'),
(24079, 'purple itemlevel 40-41'),
(24080, 'purple itemlevel 42-43'),
(24081, 'purple itemlevel 44-45'),
(24082, 'purple itemlevel 46-47'),
(24083, 'purple itemlevel 48-49'),
(24084, 'purple itemlevel 50-51'),
(24085, 'purple itemlevel 52-53'),
(24086, 'purple itemlevel 54-55'),
(24087, 'purple itemlevel 56-57'),
(24088, 'purple itemlevel 58-59'),
(24089, 'purple itemlevel 60-61'),
(24090, 'purple itemlevel 62-63'),
(24091, 'purple itemlevel 64-65'),
(24092, 'Dark Coffer (160845)'),
(24106, '-24060 (25%) -24064 (25%) -24062 (50%)');

DELETE FROM `reference_loot_template` WHERE `entry` = 24066;

