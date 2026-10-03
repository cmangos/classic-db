-- Stonetalon Mountains - creature_spawn_entry
-- Based on https://github.com/vmangos/core/commit/f81e78c8c58831459ef338c918c87fe9a1acf3e0

-- https://classic.wowhead.com/npc=11910/grimtotem-ruffian
-- https://classic.wowhead.com/npc=11911/grimtotem-mercenary
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 11910 FROM `creature` WHERE `id` IN (11910,11911) AND `guid` IN (29296,29297,29298,29299,29300,29301,29302,29303,29304,29305,29306,29307,29308,29309,29310,29311,29312,29313,29314,29315,29316,29317,29318,29319,29320,29321,29322,29323,29324,29325,29326,29327,29328,29329,29330,29331,29332,29333,29334,29335,29336,29337,29338,29339,29340,29341,29342,29343,29344,29345); -- ruffian
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 11911 FROM `creature` WHERE `id` IN (11910,11911) AND `guid` IN (29296,29297,29298,29299,29300,29301,29302,29303,29304,29305,29306,29307,29308,29309,29310,29311,29312,29313,29314,29315,29316,29317,29318,29319,29320,29321,29322,29323,29324,29325,29326,29327,29328,29329,29330,29331,29332,29333,29334,29335,29336,29337,29338,29339,29340,29341,29342,29343,29344,29345); -- mercenary
UPDATE creature SET `id` = 0 WHERE `id` IN (11910,11911) AND `guid` IN (29296,29297,29298,29299,29300,29301,29302,29303,29304,29305,29306,29307,29308,29309,29310,29311,29312,29313,29314,29315,29316,29317,29318,29319,29320,29321,29322,29323,29324,29325,29326,29327,29328,29329,29330,29331,29332,29333,29334,29335,29336,29337,29338,29339,29340,29341,29342,29343,29344,29345);

-- https://classic.wowhead.com/npc=11912/grimtotem-brute - not all
-- https://classic.wowhead.com/npc=11913/grimtotem-sorcerer - not all
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 11912 FROM `creature` WHERE `id` IN (11912,11913) AND `guid` IN (29347,29348,29349,29350,29353,29354,29356,29363,29366,29367,29368,29372,29373,29374,29375,29377,29378,29381,29382,29383,29386,29387,29388); -- brute
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 11913 FROM `creature` WHERE `id` IN (11912,11913) AND `guid` IN (29347,29348,29349,29350,29353,29354,29356,29363,29366,29367,29368,29372,29373,29374,29375,29377,29378,29381,29382,29383,29386,29387,29388); -- sorcerer
UPDATE creature SET `id` = 0 WHERE `id` IN (11912,11913) AND `guid` IN (29347,29348,29349,29350,29353,29354,29356,29363,29366,29367,29368,29372,29373,29374,29375,29377,29378,29381,29382,29383,29386,29387,29388);

-- https://classic.wowhead.com/npc=3989/venture-co-logger - not all
-- https://classic.wowhead.com/npc=3991/venture-co-deforester
DELETE FROM `creature` WHERE `id` = 3989 AND `guid` = 29498; -- missing wotlkmangos
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
(29498, 3989, 1, 1, 1120.88000488281250000000, -12.35459995269775400000, -2.13374996185302730000, 6.15592002868652300000, 300, 300, 15, 1); -- deleted for 21195 in wotlkmangos
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 3989 FROM `creature` WHERE `id` IN (3989,3991) AND `guid` IN (29472,29473,29476,29479,29480,29481,29485,29486,29489,29493,29494,29495,29496,29497,29505,29506,29508,29521,29522,29523,29527,29531,29532,29537,29540,29541,29542,29543,29544,29545,29546,29547,29548,29549,29550,29551,29552,29553,29554,29555,29556,29557,29558,29559,29560,29561,29562,29563,29564,29565,29566,29567,29568,29569,29570,29571,29572,29575,29576,29577); -- logger 
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 3991 FROM `creature` WHERE `id` IN (3989,3991) AND `guid` IN (29472,29473,29476,29479,29480,29481,29485,29486,29489,29493,29494,29495,29496,29497,29505,29506,29508,29521,29522,29523,29527,29531,29532,29537,29540,29541,29542,29543,29544,29545,29546,29547,29548,29549,29550,29551,29552,29553,29554,29555,29556,29557,29558,29559,29560,29561,29562,29563,29564,29565,29566,29567,29568,29569,29570,29571,29572,29575,29576,29577); -- deforester
UPDATE creature SET `id` = 0 WHERE `id` IN (3989,3991) AND `guid` IN (29472,29473,29476,29479,29480,29481,29485,29486,29489,29493,29494,29495,29496,29497,29505,29506,29508,29521,29522,29523,29527,29531,29532,29537,29540,29541,29542,29543,29544,29545,29546,29547,29548,29549,29550,29551,29552,29553,29554,29555,29556,29557,29558,29559,29560,29561,29562,29563,29564,29565,29566,29567,29568,29569,29570,29571,29572,29575,29576,29577);

-- https://classic.wowhead.com/npc=3992/venture-co-engineer
-- https://classic.wowhead.com/npc=4070/venture-co-builder
UPDATE `creature` SET `spawndist` = 1, `MovementType` = 1 WHERE `guid` IN (29578,29579,29581,32290,32291,29582,29583,29584);
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 3992 FROM `creature` WHERE `id` IN (3992,4070) AND `guid` IN (29578,29579,29580,29581,32289,32290,32291); -- engineer
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 4070 FROM `creature` WHERE `id` IN (3992,4070) AND `guid` IN (29578,29579,29580,29581,32289,32290,32291); -- builder
UPDATE creature SET `id` = 0 WHERE `id` IN (3992,4070) AND `guid` IN (29578,29579,29580,29581,32289,32290,32291);

-- https://www.wowhead.com/classic/npc=4202/gerenzo-wrenchwhistle
DELETE FROM `creature` WHERE `id` = 4202 AND `guid` BETWEEN 191723 AND 191724;
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `movementtype`, `spawndist`, `spawntimesecsmin`, `spawntimesecsmax`) VALUES
(191723, 4202, 1, 1608.36, 185.02, 104.705, 3.56047, 0, 0, 300, 300),
(191724, 4202, 1, 1624.02, 151.144, 104.974, 4.57276, 0, 0, 300, 300);

DELETE FROM `spawn_group` WHERE `Id` = 19066;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(19066, 'Stonetalon Mountains - Gerenzo Wrenchwhistle (4202)', 0, 1, 0, 0);

DELETE FROM `spawn_group_spawn` WHERE `Id` = 19066;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(19066, 29254, -1),
(19066, 191723, -1),
(19066, 191724, -1);

-- https://classic.wowhead.com/npc=4022/bloodfury-harpy
-- https://classic.wowhead.com/npc=4025/bloodfury-ambusher
-- https://classic.wowhead.com/npc=4026/bloodfury-windcaller
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 4022 FROM `creature` WHERE `id` IN (4022,4025,4026) AND `guid` IN (30419,30420,30421,30422,30423,30426,30427,30428,30429,30430,30431,31798,31800,31801,31802,31803,31912,31913,31914,31917,31935,31936,31938,31939,31952,31954,32015,32016,32017,32018,32019,32089,32090,32105,32106,32108,32109,32110,32111,32112,32113,32114); -- harpy
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 4025 FROM `creature` WHERE `id` IN (4022,4025,4026) AND `guid` IN (30419,30420,30421,30422,30423,30426,30427,30428,30429,30430,30431,31798,31800,31801,31802,31803,31912,31913,31914,31917,31935,31936,31938,31939,31952,31954,32015,32016,32017,32018,32019,32089,32090,32105,32106,32108,32109,32110,32111,32112,32113,32114); -- ambusher
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 4026 FROM `creature` WHERE `id` IN (4022,4025,4026) AND `guid` IN (30419,30420,30421,30422,30423,30426,30427,30428,30429,30430,30431,31798,31800,31801,31802,31803,31912,31913,31914,31917,31935,31936,31938,31939,31952,31954,32015,32016,32017,32018,32019,32089,32090,32105,32106,32108,32109,32110,32111,32112,32113,32114); -- windcaller
UPDATE creature SET `id` = 0 WHERE `id` IN (4022,4025,4026) AND `guid` IN (30419,30420,30421,30422,30423,30426,30427,30428,30429,30430,30431,31798,31800,31801,31802,31803,31912,31913,31914,31917,31935,31936,31938,31939,31952,31954,32015,32016,32017,32018,32019,32089,32090,32105,32106,32108,32109,32110,32111,32112,32113,32114);

-- https://classic.wowhead.com/npc=4023/bloodfury-roguefeather
-- https://classic.wowhead.com/npc=4024/bloodfury-slayer
-- https://classic.wowhead.com/npc=4027/bloodfury-storm-witch
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 4023 FROM `creature` WHERE `id` IN (4023,4024,4027) AND `guid` IN (30476,30477,31501,31502,31748,31762,31773,31781,31782,31783,31784,31785,31786,31787,31788,31789,31790,31791,31792,31793,31794,31795,32115,32116,32117,32118,32119,32120,32121,32122,32123,32124,32125,32126,32127,32128,32129); -- roguefeather
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 4024 FROM `creature` WHERE `id` IN (4023,4024,4027) AND `guid` IN (30476,30477,31501,31502,31748,31762,31773,31781,31782,31783,31784,31785,31786,31787,31788,31789,31790,31791,31792,31793,31794,31795,32115,32116,32117,32118,32119,32120,32121,32122,32123,32124,32125,32126,32127,32128,32129); -- slayer
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 4027 FROM `creature` WHERE `id` IN (4023,4024,4027) AND `guid` IN (30476,30477,31501,31502,31748,31762,31773,31781,31782,31783,31784,31785,31786,31787,31788,31789,31790,31791,31792,31793,31794,31795,32115,32116,32117,32118,32119,32120,32121,32122,32123,32124,32125,32126,32127,32128,32129); -- witch
UPDATE creature SET `id` = 0 WHERE `id` IN (4023,4024,4027) AND `guid` IN (30476,30477,31501,31502,31748,31762,31773,31781,31782,31783,31784,31785,31786,31787,31788,31789,31790,31791,31792,31793,31794,31795,32115,32116,32117,32118,32119,32120,32121,32122,32123,32124,32125,32126,32127,32128,32129);

-- https://www.wowhead.com/classic/npc=3999/windshear-digger - most static
-- https://www.wowhead.com/classic/npc=4003/windshear-geomancer
-- https://www.wowhead.com/classic/npc=4004/windshear-overlord
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 3999 FROM `creature` WHERE `id` IN (3999,4003,4004) AND `guid` IN (29587,29588,29595,29598,29622,29639,29640,29641,29644); -- digger
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 4003 FROM `creature` WHERE `id` IN (3999,4003,4004) AND `guid` IN (29587,29588,29595,29598,29622,29639,29640,29641,29642,29643,29644,29645); -- geomancer
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 4004 FROM `creature` WHERE `id` IN (3999,4003,4004) AND `guid` IN (29642,29643,29645); -- overlord
UPDATE creature SET `id` = 0 WHERE `id` IN (3999,4003,4004) AND `guid` IN (29587,29588,29595,29598,29622,29639,29640,29641,29642,29643,29644,29645);

-- https://www.wowhead.com/classic/npc=4009/raging-cliff-stormer - not all
-- https://www.wowhead.com/classic/npc=4018/antlered-courser - some duo others 4th
-- https://www.wowhead.com/classic/npc=4019/great-courser - ""
-- https://www.wowhead.com/classic/npc=4020/sap-beast - ""
-- https://www.wowhead.com/classic/npc=4021/corrosive-sap-beast - ""
-- https://www.wowhead.com/classic/npc=4067/twilight-runner - not all
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 4009 FROM `creature` WHERE `id` IN (4009,4018,4019,4067,4020,4021) AND `guid` IN (30001,30006,30007,29852,29861,29862,29864,29865,29866,29867,29868,29869,29870,29871,29872); -- raging-cliff-stormer
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 4018 FROM `creature` WHERE `id` IN (4009,4018,4019,4067,4020,4021) AND `guid` IN (29986,29987,29988,29989,29990,29991,29993,30001,30002,30006,30007,30008,30009,30010,30011,30012,29852,29861,29862,29864,29865,29866,29867,29868,29869,29870,29871,29872,30014,30408,30409,30410,30411,30412,30413,30417,32275,32276,32285); -- antlered-courser
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 4019 FROM `creature` WHERE `id` IN (4009,4018,4019,4067,4020,4021) AND `guid` IN (29986,29987,29988,29989,29990,29991,29993,30002,30008,30009,30010,30011,30012,30014,30408,30409,30410,30412,30413,30417,32275,32276,32285); -- great-courser
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 4020 FROM `creature` WHERE `id` IN (4009,4018,4019,4067,4020,4021) AND `guid` IN (30002,30006,30007,30008,30011,29852,29861,29864,29865,29866,29867,29868,29869,29870,29871,29872,30014,30015,30016,30017,30020,30021,30026,30359,30401,30402,30403,30404,30406,30407,30408,30409,30410,30411,30412,30413,30414,30415,30416,30417,30418,32275,32276,32285); -- sap-beast
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 4021 FROM `creature` WHERE `id` IN (4009,4018,4019,4067,4020,4021) AND `guid` IN (30002,30008,30011,30014,30015,30016,30017,30020,30021,30026,30359,30401,30402,30403,30404,30406,30407,30408,30409,30410,30412,30413,30414,30415,30416,30417,30418,32275,32276,32285); -- corrosive-sap-beast
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 4067 FROM `creature` WHERE `id` IN (4009,4018,4019,4067,4020,4021) AND `guid` IN (30002,30008,30011,30014,30408,30409,30412,30413,30417,32275,32276,32285); -- twilight-runner
UPDATE creature SET `id` = 0 WHERE `id` IN (4009,4018,4019,4067,4020,4021) AND `guid` IN (29986,29987,29988,29989,29990,29991,29993,30001,30002,30006,30007,30008,30009,30010,30011,30012,29852,29861,29862,29864,29865,29866,29867,29868,29869,29870,29871,29872,30014,30015,30016,30017,30020,30021,30026,30359,30401,30402,30403,30404,30406,30407,30408,30409,30410,30411,30412,30413,30414,30415,30416,30417,30418,32275,32276,32285);

-- not all seem to share nodes as per - https://github.com/cmangos/tbc-db/commit/8e602efafbca0eb239c329f289fe18ae307d1046
-- https://www.wowhead.com/classic/npc=4036/rogue-flame-spirit
-- https://www.wowhead.com/classic/npc=4044/blackened-basilisk
UPDATE `creature` SET `id` = 4036 WHERE `guid` IN (32143,32148,32150);
UPDATE `creature` SET `id` = 4044 WHERE `guid` IN (32184,32185);
DELETE FROM `creature_spawn_entry` WHERE `guid` IN (32143,32148,32150,32184,32185);

-- https://www.wowhead.com/classic/npc=4034/enraged-stone-spirit
-- https://www.wowhead.com/classic/npc=4037/burning-ravager
-- https://www.wowhead.com/classic/npc=4042/singed-basilisk
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 4034 FROM `creature` WHERE `id` IN (4034,4037,4042) AND `guid` IN (32177,32140,32141,32139,32155,32175); -- enraged-stone-spirit
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 4037 FROM `creature` WHERE `id` IN (4034,4037,4042) AND `guid` IN (32177,32140,32141,32139,32155,32175); -- burning-ravager
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 4042 FROM `creature` WHERE `id` IN (4034,4037,4042) AND `guid` IN (32177,32140,32141,32139,32155,32175); -- singed-basilisk
UPDATE creature SET `id` = 0 WHERE `id` IN (4034,4037,4042) AND `guid` IN (32177,32140,32141,32139,32155,32175);

-- https://www.wowhead.com/classic/npc=4035/furious-stone-spirit - 32142 patrol spawn
-- https://www.wowhead.com/classic/npc=4038/burning-destroyer
-- https://www.wowhead.com/classic/npc=4041/scorched-basilisk
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 4035 FROM `creature` WHERE `id` IN (4035,4038,4041) AND `guid` IN (32157,32161,32168,32170,32173,32142); -- furious-stone-spirit
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 4038 FROM `creature` WHERE `id` IN (4035,4038,4041) AND `guid` IN (32157,32161,32168,32170,32173,32142); -- burning-destroyer
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 4041 FROM `creature` WHERE `id` IN (4035,4038,4041) AND `guid` IN (32157,32161,32168,32170,32173); -- scorched-basilisk
UPDATE creature SET `id` = 0 WHERE `id` IN (4035,4038,4041) AND `guid` IN (32157,32161,32168,32170,32173,32142);

-- https://www.wowhead.com/classic/npc=4051/cenarion-botanist
-- https://www.wowhead.com/classic/npc=4053/daughter-of-cenarius - 32233 patrol spawn
-- https://www.wowhead.com/classic/npc=4057/son-of-cenarius - 32254 patrol spawn
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 4051 FROM `creature` WHERE `id` IN (4051,4053,4057) AND `guid` IN (32213,32215,32233,32234,32235,32248,32249,32250,32251,32253); -- cenarion-botanist
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 4053 FROM `creature` WHERE `id` IN (4051,4053,4057) AND `guid` IN (32213,32215,32233,32234,32235,32248,32250,32251,32253); -- daughter-of-cenarius
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 4057 FROM `creature` WHERE `id` IN (4051,4053,4057) AND `guid` IN (32213,32215,32233,32234,32235,32248,32249,32250,32251,32253); -- son-of-cenarius
UPDATE creature SET `id` = 0 WHERE `id` IN (4051,4053,4057) AND `guid` IN (32213,32215,32233,32234,32235,32248,32249,32250,32251,32253);

-- https://www.wowhead.com/classic/npc=4050/cenarion-caretaker
-- https://www.wowhead.com/classic/npc=4052/cenarion-druid - 32219 patrol spawn
-- https://www.wowhead.com/classic/npc=4056/mirkfallon-keeper
-- https://www.wowhead.com/classic/npc=4061/mirkfallon-dryad
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 4050 FROM `creature` WHERE `id` IN (4050,4052,4056,4061) AND `guid` IN (32243,32207); -- cenarion-caretaker
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 4052 FROM `creature` WHERE `id` IN (4050,4052,4056,4061) AND `guid` IN (32219); -- cenarion-druid
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 4056 FROM `creature` WHERE `id` IN (4050,4052,4056,4061) AND `guid` IN (32219,32237,32241,32243,32255,32260,32272,32207); -- mirkfallon-keeper
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 4061 FROM `creature` WHERE `id` IN (4050,4052,4056,4061) AND `guid` IN (32219,32237,32241,32255,32260,32272); -- mirkfallon-dryad
UPDATE creature SET `id` = 0 WHERE `id` IN (4050,4052,4056,4061) AND `guid` IN (32219,32237,32241,32243,32255,32260,32272,32207);
DELETE FROM `creature_movement` WHERE `id` = 32226;
UPDATE `creature` SET `spawndist` = 5, `MovementType` = 1 WHERE `guid` IN (32226,32267);

-- https://www.wowhead.com/classic/npc=11915/gogger-rock-keeper - 29391,29394 patrol
-- https://www.wowhead.com/classic/npc=11917/gogger-geomancer
-- https://www.wowhead.com/classic/npc=11918/gogger-stonepounder
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 11915 FROM `creature` WHERE `id` IN (11915,11917,11918) AND `guid` IN (29391,29394,29396,29397,29400,29402,29403,29407,29408,29419,29422,29428,29431,29432,29433,29438,29446); -- gogger-rock-keeper
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 11917 FROM `creature` WHERE `id` IN (11915,11917,11918) AND `guid` IN (29391,29396,29397,29400,29402,29403,29407,29408,29410,29411,29412,29414,29415,29418,29419,29422,29424,29428,29429,29431,29432,29433,29438,29439,29440,29443,29444,29446); -- gogger-geomancer
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 11918 FROM `creature` WHERE `id` IN (11915,11917,11918) AND `guid` IN (29391,29394,29410,29411,29412,29414,29415,29418,29424,29429,29431,29433,29438,29439,29440,29443,29444,29446); -- gogger-stonepounder
UPDATE creature SET `id` = 0 WHERE `id` IN (11915,11917,11918) AND `guid` IN (29391,29394,29396,29397,29400,29402,29403,29407,29408,29410,29411,29412,29414,29415,29418,29419,29422,29424,29428,29429,29431,29432,29433,29438,29439,29440,29443,29444,29446);

-- https://www.wowhead.com/classic/npc=4028/charred-ancient - all patrols?
-- https://www.wowhead.com/classic/npc=4029/blackened-ancient - all patrols?
-- https://www.wowhead.com/classic/npc=4030/vengeful-ancient - also linked to them
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 4028 FROM `creature` WHERE `id` IN (4028,4029) AND `guid` IN (32130,32131,32132,32133,32134); -- charred-ancient
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 4029 FROM `creature` WHERE `id` IN (4028,4029) AND `guid` IN (32130,32131,32132,32133,32134); -- blackened-ancient
UPDATE creature SET `id` = 0 WHERE `id` IN (4028,4029) AND `guid` IN (32130,32131,32132,32133,32134);

-- https://www.wowhead.com/classic/npc=3992/venture-co-engineer - no patrols?
-- https://www.wowhead.com/classic/npc=4070/venture-co-builder
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 3992 FROM `creature` WHERE `id` IN (3992,4070) AND `guid` IN (29578,29579,29580,29581,32289,32290,32291); -- engineer
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 4070 FROM `creature` WHERE `id` IN (3992,4070) AND `guid` IN (29578,29579,29580,29581,32289,32290,32291); -- builder
UPDATE creature SET `id` = 0 WHERE `id` IN (3992,4070) AND `guid` IN (29578,29579,29580,29581,32289,32290,32291);

-- https://www.wowhead.com/classic/npc=4016/fey-dragon - patrols
-- https://www.wowhead.com/classic/npc=4017/wily-fey-dragon - patrols
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 4016 FROM `creature` WHERE `id` IN (4016,4017) AND `guid` IN (29983,29984,29985); -- fey-dragon
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 4017 FROM `creature` WHERE `id` IN (4016,4017) AND `guid` IN (29983,29984,29985); -- wily-fey-dragon
UPDATE creature SET `id` = 0 WHERE `id` IN (4016,4017) AND `guid` IN (29983,29984,29985);

