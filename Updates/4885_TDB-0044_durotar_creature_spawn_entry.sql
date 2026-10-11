-- Durotar - creature_spawn_entry
-- Based on https://github.com/vmangos/core/commit/f81e78c8c58831459ef338c918c87fe9a1acf3e0
-- https://www.wowhead.com/tbc/zone=14/durotar

-- https://www.wowhead.com/classic/npc=3098/mottled-boar
DELETE FROM `creature` WHERE `guid` = 11030 AND `id` = 3098; -- missing classicmangos
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
(11030, 3098, 1, 1, -453.70901489257810000000, -4222.64013671875000000000, 49.50640106201172000000, 2.86118006706237800000, 120, 120, 10, 1);

-- https://www.wowhead.com/classic/npc=3100/elder-mottled-boar
UPDATE `creature` SET `position_x` = 1237.43994140625000000000, `position_y` = -4337.45019531250000000000, `position_z` = 24.85740089416504000000, `orientation` = 5.59919977188110350000 WHERE `guid` = 6511 AND `id` = 3100; -- classicmangos (missing update somewhere)
UPDATE `creature` SET `position_x` = 1182.31005859375000000000, `position_y` = -4325.72021484375000000000, `position_z` = 21.45310020446777300000, `orientation` = 0.18098099529743195000 WHERE `guid` = 12369 AND `id` = 3100; -- classicmangos
UPDATE `creature` SET `spawntimesecsmin` = 300, `spawntimesecsmax` = 300 WHERE `guid` IN (21020,21022,21024,21026,21034,21036) AND `id` = 3100;

-- https://www.wowhead.com/classic/npc=3103/makrura-clacker
-- https://www.wowhead.com/classic/npc=3104/makrura-shellhide
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 3103 FROM `creature` WHERE `id` IN (3103,3104) AND `guid` IN (3359,3360,3361,6535,6536,6537,6538,6539,6540,7386,7387,7389,7391,7928,7930,7932,7934,8443,8511,8512,8513,10287,10289,10290,10291,10292,10293,10440,10441,10442,10443,10444,10445,10448,10449,11783,11784,11859,11860,11861,11862,12389,12927,12931,12940,12949,12953,12955,12959,12963,12978,12979,13005); -- makrura-clacker
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 3104 FROM `creature` WHERE `id` IN (3103,3104) AND `guid` IN (3359,3360,3361,6535,6536,6537,6538,6539,6540,7386,7387,7389,7391,7928,7930,7932,7934,8443,8511,8512,8513,10287,10289,10290,10291,10292,10293,10440,10441,10442,10443,10444,10445,10448,10449,11783,11784,11859,11860,11861,11862,12389,12927,12931,12940,12949,12953,12955,12959,12963,12978,12979,13005); -- makrura-shellhide
UPDATE creature SET `id` = 0 WHERE `id` IN (3103,3104) AND `guid` IN (3359,3360,3361,6535,6536,6537,6538,6539,6540,7386,7387,7389,7391,7928,7930,7932,7934,8443,8511,8512,8513,10287,10289,10290,10291,10292,10293,10440,10441,10442,10443,10444,10445,10448,10449,11783,11784,11859,11860,11861,11862,12389,12927,12931,12940,12949,12953,12955,12959,12963,12978,12979,13005);

-- https://www.wowhead.com/classic/npc=3105/makrura-snapclaw
-- https://www.wowhead.com/classic/npc=3141/makrura-elder
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 3105 FROM `creature` WHERE `id` IN (3105,3141) AND `guid` IN (3362,6541,7388,7931,8514,8515,10288,10294,11785,11788,11858,12398); -- makrura-snapclaw
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 3141 FROM `creature` WHERE `id` IN (3105,3141) AND `guid` IN (3362,6541,7388,7931,8514,8515,10288,10294,11785,11788,11858,12398); -- makrura-elder
UPDATE creature SET `id` = 0 WHERE `id` IN (3105,3141) AND `guid` IN (3362,6541,7388,7931,8514,8515,10288,10294,11785,11788,11858,12398);

-- https://www.wowhead.com/classic/npc=3111/razormane-quilboar
-- https://www.wowhead.com/classic/npc=3112/razormane-scout
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 3111 FROM `creature` WHERE `id` IN (3111,3112) AND `guid` IN (6415,6416,7327,7328,7332,7742,7877,7878,7879,8427,12305,12311,12315,12318,6411,6412,6413,6414,7326,7329,7330,7331,7876,8425,8426,12306,12307,12309,12314,12316,12317,12320); -- razormane-quilboar
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 3112 FROM `creature` WHERE `id` IN (3111,3112) AND `guid` IN (6415,6416,7327,7328,7332,7742,7877,7878,7879,8427,12305,12311,12315,12318,6411,6412,6413,6414,7326,7329,7330,7331,7876,8425,8426,12306,12307,12309,12314,12316,12317,12320); -- razormane-scout
UPDATE creature SET `id` = 0 WHERE `id` IN (3111,3112) AND `guid` IN (6415,6416,7327,7328,7332,7742,7877,7878,7879,8427,12305,12311,12315,12318,6411,6412,6413,6414,7326,7329,7330,7331,7876,8425,8426,12306,12307,12309,12314,12316,12317,12320);

-- https://www.wowhead.com/classic/npc=3113/razormane-dustrunner
-- https://www.wowhead.com/classic/npc=3114/razormane-battleguard
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 3113 FROM `creature` WHERE `id` IN (3113,3114) AND `guid` IN (6440,6441,6442,6443,6444,6450,6452,6454,7348,7903,7905,12299,12301,12323,12324,12326,12330,6437,6438,6445,6446,6447,6448,6449,6451,6453,7345,7347,7349,7350,7351,7352,7353,7354,7902,7904,7906,7907,8430,12328,12332,12333); -- razormane-dustrunner
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 3114 FROM `creature` WHERE `id` IN (3113,3114) AND `guid` IN (6440,6441,6442,6443,6444,6450,6452,6454,7348,7903,7905,12299,12301,12323,12324,12326,12330,6437,6438,6445,6446,6447,6448,6449,6451,6453,7345,7347,7349,7350,7351,7352,7353,7354,7902,7904,7906,7907,8430,12328,12332,12333); -- razormane-battleguard
UPDATE creature SET `id` = 0 WHERE `id` IN (3113,3114) AND `guid` IN (6440,6441,6442,6443,6444,6450,6452,6454,7348,7903,7905,12299,12301,12323,12324,12326,12330,6437,6438,6445,6446,6447,6448,6449,6451,6453,7345,7347,7349,7350,7351,7352,7353,7354,7902,7904,7906,7907,8430,12328,12332,12333);

-- https://classic.wowhead.com/npc=3115/dustwind-harpy
-- https://classic.wowhead.com/npc=3116/dustwind-pillager
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 3115 FROM `creature` WHERE `id` IN (3115,3116) AND `guid` IN (7277,10410,12243,12245,12246,12247,12964,10421,12284,12939); -- dustwind-harpy
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 3116 FROM `creature` WHERE `id` IN (3115,3116) AND `guid` IN (7277,10410,12243,12245,12246,12247,12964,10421,12284,12939); -- dustwind-pillager
UPDATE creature SET `id` = 0 WHERE `id` IN (3115,3116) AND `guid` IN (7277,10410,12243,12245,12246,12247,12964,10421,12284,12939);

-- https://www.wowhead.com/classic/npc=3117/dustwind-savage - only a few
-- https://www.wowhead.com/classic/npc=3118/dustwind-storm-witch
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 3117 FROM `creature` WHERE `id` IN (3117,3118) AND `guid` IN (7275,12938,10423,10424,12936); -- dustwind-savage
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 3118 FROM `creature` WHERE `id` IN (3117,3118) AND `guid` IN (7275,12938,10423,10424,12936); -- dustwind-storm-witch
UPDATE creature SET `id` = 0 WHERE `id` IN (3117,3118) AND `guid` IN (7275,12938,10423,10424,12936);

-- https://www.wowhead.com/classic/npc=3119/kolkar-drudge - only a few
-- https://www.wowhead.com/classic/npc=3120/kolkar-outrunner
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 3119 FROM `creature` WHERE `id` IN (3119,3120) AND `guid` IN (6586,6592,7438,7441,12932,6588,6589,12926); -- drudge
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 3120 FROM `creature` WHERE `id` IN (3119,3120) AND `guid` IN (6586,6592,7438,7441,12932,6588,6589,12926); -- outrunner
UPDATE creature SET `id` = 0 WHERE `id` IN (3119,3120) AND `guid` IN (6586,6592,7438,7441,12932,6588,6589,12926);

-- https://www.wowhead.com/classic/npc=3128/kul-tiras-sailor - quite a few
-- https://www.wowhead.com/classic/npc=3129/kul-tiras-marine
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 3128 FROM `creature` WHERE `id` IN (3128,3129) AND `guid` IN (4772,4774,8409,12288,12338,12342,12348,12349,12350,12354,12362,12364,12390,87652,7263,8408,12267,12275,12298,12300,12302,12346,12366,12392,87646,87647); -- sailor
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 3129 FROM `creature` WHERE `id` IN (3128,3129) AND `guid` IN (4772,4774,8409,12288,12338,12342,12348,12349,12350,12354,12362,12364,12390,87652,7263,8408,12267,12275,12298,12300,12302,12346,12366,12392,87646,87647); -- marine
UPDATE creature SET `id` = 0 WHERE `id` IN (3128,3129) AND `guid` IN (4772,4774,8409,12288,12338,12342,12348,12349,12350,12354,12362,12364,12390,87652,7263,8408,12267,12275,12298,12300,12302,12346,12366,12392,87646,87647);

-- https://www.wowhead.com/classic/npc=3130/thunder-lizard - the middle
-- https://www.wowhead.com/classic/npc=3131/lightning-hide
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 3130 FROM `creature` WHERE `id` IN (3130,3131) AND `guid` IN (12215,12200,12216,12217,12219,12223); -- thunder-lizard
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 3131 FROM `creature` WHERE `id` IN (3130,3131) AND `guid` IN (12215,12200,12216,12217,12219,12223); -- lightning-hide
UPDATE creature SET `id` = 0 WHERE `id` IN (3130,3131) AND `guid` IN (12215,12200,12216,12217,12219,12223);

-- https://www.wowhead.com/classic/npc=3206/voodoo-troll
-- https://www.wowhead.com/classic/npc=3207/hexed-troll
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 3206 FROM `creature` WHERE `id` IN (3206,3207) AND `guid` IN (6457,12380,13021,13030,13032,13039,12367,12374,12377,12378,12382,13020,13024,13026,13046); -- voodoo-troll
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 3207 FROM `creature` WHERE `id` IN (3206,3207) AND `guid` IN (6457,12380,13021,13030,13032,13039,12367,12374,12377,12378,12382,13020,13024,13026,13046); -- hexed-troll
UPDATE creature SET `id` = 0 WHERE `id` IN (3206,3207) AND `guid` IN (6457,12380,13021,13030,13032,13039,12367,12374,12377,12378,12382,13020,13024,13026,13046);

-- https://www.wowhead.com/classic/npc=3225/corrupted-mottled-boar - paths
-- https://www.wowhead.com/classic/npc=3226/corrupted-scorpid
-- https://www.wowhead.com/classic/npc=3227/corrupted-bloodtalon-scythemaw
-- https://www.wowhead.com/classic/npc=3228/corrupted-surf-crawler
-- https://www.wowhead.com/classic/npc=3231/corrupted-dreadmaw-crocolisk

-- https://www.wowhead.com/classic/npc=3183/yarrog-baneshadow
UPDATE `creature` SET `spawntimesecsmin` = 60, `spawntimesecsmax` = 120, `spawndist` = 2, `MovementType` = 1 WHERE `id` = 3183;

-- https://www.wowhead.com/classic/npc=3192/lieutenant-benedict
UPDATE `creature` SET `spawntimesecsmin` = 60, `spawntimesecsmax` = 120 WHERE `id` = 3192;

-- https://www.wowhead.com/classic/npc=3203/fizzle-darkstorm
UPDATE `creature` SET `spawntimesecsmin` = 60, `spawntimesecsmax` = 120 WHERE `id` = 3203;

-- https://www.wowhead.com/classic/npc=3281/sarkoth
UPDATE `creature` SET `spawntimesecsmin` = 60, `spawntimesecsmax` = 120 WHERE `id` = 3281;

-- CREATURE_EXTRA_FLAG_DYNGUID
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|1048576 WHERE `entry` IN (3103,3104,3105,3141,3111,3112,3113,3114,3115,3116,3117,3118,3119,3120,3128,3129,3130,3131,3206,3207,3225,3226,3227,3228,3231,3183,3192,3203,3281);

