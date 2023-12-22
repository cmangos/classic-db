-- world loot improvements
-- maxcount > 1

-- https://www.wowhead.com/wotlk/item=117/tough-jerky#dropped-by
UPDATE `creature_loot_template` SET `maxcount` = 1 WHERE `item` = 117 AND `entry` IN (708,1984,1985,2954,2966,3098);

-- https://www.wowhead.com/wotlk/item=159/refreshing-spring-water#dropped-by
UPDATE `creature_loot_template` SET `mincountOrRef` = 1, `maxcount` = 1 WHERE `item` = 159 AND `entry` IN (46,116,475,1520,3118,3197,15669,17185,17591,97,327,2015);

-- https://www.wowhead.com/wotlk/item=414/dalaran-sharp#dropped-by
UPDATE `creature_loot_template` SET `mincountOrRef` = 1, `maxcount` = 1 WHERE `item` = 414 AND `entry` IN (623,641,1165,5761,3261,5048,3840);

-- https://www.wowhead.com/wotlk/item=422/dwarven-mild#dropped-by
UPDATE `creature_loot_template` SET `mincountOrRef` = 1, `maxcount` = 1 WHERE `item` = 422 AND `entry` IN (206,212,889,1157,1715,2345,2450,3857,4101,6224,436,4463,909);

-- https://www.wowhead.com/wotlk/npc=2022/timberling
UPDATE `creature_loot_template` SET `mincountOrRef` = 1, `maxcount` = 1 WHERE `item` = 765 AND `entry` = 2022;

-- https://www.wowhead.com/wotlk/item=785/mageroyal#dropped-by
UPDATE `creature_loot_template` SET `mincountOrRef` = 1, `maxcount` = 1 WHERE `item` = 785 AND `entry` IN (17353,2025);

-- https://www.wowhead.com/wotlk/item=858/lesser-healing-potion#dropped-by - slimes can have more
UPDATE `creature_loot_template` SET `mincountOrRef` = 1, `maxcount` = 1 WHERE `item` = 858 AND `entry` IN (95,436,450,589,1181,1663,1731,2189,3260,3273,3458,4027,17339,17608,17701,212,1158,3840,4518,5761,3763,3863,4026,4100,4104);

-- https://www.wowhead.com/wotlk/item=929/healing-potion#dropped-by - slimes can have more
UPDATE `creature_loot_template` SET `mincountOrRef` = 1, `maxcount` = 1 WHERE `item` = 929 AND `entry` IN (433,436,1011,1157,1251,1707,2249,2600,3765,4061,4093,4104,4296,4518,4525,4657,6206,432,909,2242,2270,2306,4094,4101,4287,4539,4644,6329,660,977,2255);

-- https://www.wowhead.com/wotlk/item=1205/melon-juice#dropped-by
UPDATE `creature_loot_template` SET `mincountOrRef` = 1, `maxcount` = 1 WHERE `item` = 1205 AND `entry` IN (205,568,1035,1054,1708,2373,2375,3877,4026,4099,4104,4539,4623,5859,6224,6329,12902,206,910,4065,212,1025,2345);

-- https://www.wowhead.com/wotlk/item=1476/snapped-spider-limb
UPDATE `creature_loot_template` SET `mincountOrRef` = 1, `maxcount` = 1 WHERE `item` = 1476 AND `entry` IN (1504,1505,1688,1986,1994);

-- https://www.wowhead.com/wotlk/item=1529/jade#dropped-by
UPDATE `creature_loot_template` SET `mincountOrRef` = 1, `maxcount` = 1 WHERE `item` = 1529 AND `entry` = 741;

-- https://www.wowhead.com/wotlk/item=1645/moonberry-juice#dropped-by
UPDATE `creature_loot_template` SET `mincountOrRef` = 1, `maxcount` = 1 WHERE `item` = 1645 AND `entry` IN (679,710,4505,5860,7855,7858,8282,8504,1563,1564,2927,5840,5861,2647);

-- https://www.wowhead.com/wotlk/item=1705/lesser-moonstone#dropped-by
UPDATE `creature_loot_template` SET `mincountOrRef` = 1, `maxcount` = 1 WHERE `item` = 1705 AND `entry` = 8905;

-- https://www.wowhead.com/wotlk/item=1707/stormwind-brie#dropped-by
UPDATE `creature_loot_template` SET `mincountOrRef` = 1, `maxcount` = 1 WHERE `item` = 1707 AND `entry` IN (2588,2604,4130,4292,4850,4290);

-- https://www.wowhead.com/wotlk/item=1708/sweet-nectar#dropped-by
UPDATE `creature_loot_template` SET `mincountOrRef` = 1, `maxcount` = 1 WHERE `item` = 1708 AND `entry` IN (762,2248,2254,2287,2566,2574,2581,2583,2588,2589,4287,4291,4292,4296,4299,4306,4540,4644,2596,2701,4286,940);

-- https://www.wowhead.com/wotlk/item=1710/greater-healing-potion#dropped-by
UPDATE `creature_loot_template` SET `mincountOrRef` = 1, `maxcount` = 1 WHERE `item` = 1710 AND `entry` IN (678,710,1562,2254,2582,2583,2647,4133,4540,6426,7041,675,1551,2567,2588,2655,2656,4286,4296,5646,6559,7027,8504,679,5840,5844,5860,6556,7040,7086);
DELETE FROM `creature_loot_template` WHERE `item` IN (1710,3827) AND `entry` = 19989;

-- https://www.wowhead.com/wotlk/item=2070/darnassian-bleu#dropped-by
UPDATE `creature_loot_template` SET `mincountOrRef` = 1, `maxcount` = 1 WHERE `item` = 2070 AND `entry` IN (732,1120,15643,17195,1523);

-- https://www.wowhead.com/wotlk/item=2447/peacebloom#dropped-by
UPDATE `creature_loot_template` SET `mincountOrRef` = 1, `maxcount` = 1 WHERE `item` = 2447 AND `entry` IN (2029,17352,2022,2027);

-- https://www.wowhead.com/wotlk/item=2449/earthroot#dropped-by
UPDATE `creature_loot_template` SET `mincountOrRef` = 1, `maxcount` = 1 WHERE `item` = 2449 AND `entry` = 17353;

-- https://www.wowhead.com/wotlk/item=2455/minor-mana-potion#dropped-by
UPDATE `creature_loot_template` SET `mincountOrRef` = 1, `maxcount` = 1 WHERE `item` = 2455 AND `entry` IN (433,452,500,623,898,1165,2182,3947,17701,1010,1180,2270,3385,3734,3863,4014,4026,212,889,2373,3840,5761);

-- https://www.wowhead.com/wotlk/item=2770/copper-ore#dropped-by
UPDATE `creature_loot_template` SET `mincountOrRef` = 3, `maxcount` = 5 WHERE `item` = 2770 AND `entry` IN (598,824,1727,3586,4416);

-- https://www.wowhead.com/wotlk/item=2771/tin-ore#dropped-by
UPDATE `creature_loot_template` SET `mincountOrRef` = 1, `maxcount` = 5 WHERE `item` = 2771 AND `entry` IN (598,624,824,1727,3586,4416,4849);

-- https://www.wowhead.com/classic/item=2928/dust-of-decay#sold-by
DELETE FROM `creature_loot_template` WHERE  `item` = 2928;

-- https://www.wowhead.com/classic/item=3385/lesser-mana-potion#dropped-by
UPDATE `creature_loot_template` SET `mincountOrRef` = 1, `maxcount` = 1 WHERE `item` = 3385 AND `entry` IN (1027,1054,2261,2265,2345,3771,4097,4673,212,2255,2306,2359,2618,4099);

-- https://www.wowhead.com/classic/item=3770/mutton-chop#dropped-by
UPDATE `creature_loot_template` SET `mincountOrRef` = 1, `maxcount` = 1 WHERE `item` = 3770 AND `entry` IN (909,3771,4095,6206,12902,2368);

-- https://www.wowhead.com/classic/item=3771/wild-hog-shank#dropped-by
UPDATE `creature_loot_template` SET `mincountOrRef` = 1, `maxcount` = 1 WHERE `item` = 3771 AND `entry` IN (2254,2421,2570,2717,2723,761);

-- https://www.wowhead.com/tbc/item=3827/mana-potion#dropped-by
UPDATE `creature_loot_template` SET `mincountOrRef` = 1, `maxcount` = 1 WHERE `item` = 3827 AND `entry` IN (710,2567,2588,4540,4657,5308,5840,7041,7042,7078,7092,24477,1488,2257,2583,2650,2656,2740,4290,5623,5646,6557,8504,13019,1653,5235,5861,7086,7439,8766);

-- https://www.wowhead.com/tbc/item=3864/citrine#dropped-by
DELETE FROM `creature_loot_template` WHERE  `item` = 3864 AND `entry` = 6146;

-- https://www.wowhead.com/tbc/item=3927/fine-aged-cheddar#dropped-by
UPDATE `creature_loot_template` SET `mincountOrRef` = 1, `maxcount` = 1 WHERE `item` = 3927 AND `entry` IN (752,1653,2656,4505,5617,5840,6193,7856,7858,6559);

-- https://www.wowhead.com/tbc/item=3928/superior-healing-potion#dropped-by
UPDATE `creature_loot_template` SET `mincountOrRef` = 1, `maxcount` = 1 WHERE `item` = 3928 AND `entry` IN (710,1564,2653,5646,7858,2645,2647,4467,5840);

-- https://www.wowhead.com/tbc/item=4234/heavy-leather#dropped-by
DELETE FROM `creature_loot_template` WHERE  `item` = 4234 AND `entry` = 4863;

-- https://www.wowhead.com/tbc/item=4306/silk-cloth#dropped-by
UPDATE `creature_loot_template` SET `mincountOrRef` = 1, `maxcount` = 4 WHERE `item` = 4306 AND `entry` IN (4286,7342);

-- https://www.wowhead.com/tbc/item=4536/shiny-red-apple#dropped-by
UPDATE `creature_loot_template` SET `mincountOrRef` = 1, `maxcount` = 4 WHERE `item` = 4536 AND `entry` IN (2011,2949,2976,3115,3129,17185,2010,17189);

-- https://www.wowhead.com/tbc/npc=14874/karu
UPDATE `creature_template` SET `LootId` = 0 WHERE `entry` = 14874;
DELETE FROM `creature_loot_template` WHERE `entry` = 14874;

DELETE FROM `creature_loot_template` WHERE `item` = 4538 AND `entry` IN (1054,2373,4095,4104,3771,2261,2270);

-- https://www.wowhead.com/tbc/item=4539/goldenbark-apple#dropped-by
UPDATE `creature_loot_template` SET `mincountOrRef` = 1, `maxcount` = 1 WHERE `item` = 4539 AND `entry` IN (2573,7329);

DELETE FROM `creature_loot_template` WHERE `item` = 4540 AND `entry` IN (2949,3197);

DELETE FROM `creature_loot_template` WHERE `item` = 4541 AND `entry` IN (426,446,3386,17322,17329);

DELETE FROM `creature_loot_template` WHERE `item` = 4542 AND `entry` IN (212,1035,2373,3765,4026,4099,2270,4064);

UPDATE `creature_loot_template` SET `mincountOrRef` = 1, `maxcount` = 1 WHERE `item` = 4556 AND `entry` = 7977; 

UPDATE `creature_loot_template` SET `mincountOrRef` = 1, `maxcount` = 1 WHERE `item` = 4580 AND `entry` IN (7430,7431,7432,7433,7434,10200,10737,10741);

DELETE FROM `creature_loot_template` WHERE `item` = 4592 AND `entry` IN (1162,1725);

UPDATE `creature_loot_template` SET `mincountOrRef` = 1, `maxcount` = 1 WHERE `item` = 4599 AND `entry` IN (678,752,2653,6005,6193,7078,8504,2650,2651,4467);

UPDATE `creature_loot_template` SET `mincountOrRef` = 1, `maxcount` = 1 WHERE `item` = 4601 AND `entry` IN (752,2647,2655,2656,5843,7078,8282,8504,1551);

UPDATE `creature_loot_template` SET `mincountOrRef` = 1, `maxcount` = 1 WHERE `item` = 4604 AND `entry` IN (1522,2011,17195);

DELETE FROM `creature_loot_template` WHERE `item` = 4606 AND `entry` = 4100;

DELETE FROM `creature_loot_template` WHERE `item` = 4608 AND `entry` IN (2656,5623,5840,5843,8504);

UPDATE `creature_loot_template` SET `mincountOrRef` = 3, `maxcount` = 5 WHERE `item` = 4787 AND `entry` = 12056;
UPDATE `creature_loot_template` SET `mincountOrRef` = 3, `maxcount` = 6 WHERE `item` = 7068 AND `entry` = 12056;
UPDATE `creature_loot_template` SET `mincountOrRef` = 3, `maxcount` = 6 WHERE `item` = 7068 AND `entry` = 12118;
UPDATE `creature_loot_template` SET `mincountOrRef` = 3, `maxcount` = 6 WHERE `item` = 7068 AND `entry` = 12259;
UPDATE `creature_loot_template` SET `mincountOrRef` = 3, `maxcount` = 6 WHERE `item` = 7068 AND `entry` = 12264;

UPDATE `creature_loot_template` SET `mincountOrRef` = 2 WHERE `item` = 7077 AND `entry` = 11988;
UPDATE `creature_loot_template` SET `mincountOrRef` = 2 WHERE `item` = 7077 AND `entry` = 12056;	
UPDATE `creature_loot_template` SET `mincountOrRef` = 2 WHERE `item` = 7077 AND `entry` = 12118;
UPDATE `creature_loot_template` SET `mincountOrRef` = 2 WHERE `item` = 7077 AND `entry` = 12259;
UPDATE `creature_loot_template` SET `mincountOrRef` = 2 WHERE `item` = 7077 AND `entry` = 12264;

DELETE FROM `creature_loot_template` WHERE `entry` = 11739 AND `item` = 7077;
DELETE FROM `creature_loot_template` WHERE `entry` = 15264 AND `item` = 7077;

-- wrongly removed at some point, improving mincountorref
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(12098, 7068, 30, 0, 3, 6, 0, 'Elemental Fire'),
(12098, 7077, 30, 0, 2, 3, 0, 'Heart of Fire'),
(12098, 7078, 40, 0, 1, 2, 0, 'Essence of Fire'),
(12098, 17330, -100, 0, 1, 1, 0, 'Hand of Sulfuron'); -- critical find

DELETE FROM `creature_loot_template` WHERE `entry` IN (3250,3251,3252,3503) AND `item` = 5058; -- inside go only.

DELETE FROM `creature_loot_template` WHERE `entry` IN (3280,3286,3458,3461) AND `item` = 5075;
UPDATE `creature_loot_template` SET `mincountOrRef` = 1, `maxcount` = 2 WHERE `item` = 5075 AND `entry` IN (3260,3261,3258,3263);

DELETE FROM `creature_loot_template` WHERE `item` = 5140;

UPDATE `creature_loot_template` SET `mincountOrRef` = 1, `maxcount` = 3 WHERE `item` = 6289 AND `entry` = 12321;

UPDATE `creature_loot_template` SET `mincountOrRef` = 1, `maxcount` = 1 WHERE `item` = 6293 AND `entry` IN (16353,16354,16355);
UPDATE `creature_loot_template` SET `mincountOrRef` = 1, `maxcount` = 1 WHERE `item` = 6296 AND `entry` IN (16353,16354,16355);

UPDATE `creature_loot_template` SET `mincountOrRef` = 1, `maxcount` = 3 WHERE `item` = 6303 AND `entry` = 1910;

UPDATE `creature_loot_template` SET `mincountOrRef` = 2, `maxcount` = 3 WHERE `item` = 7075 AND `entry` = 11988;

UPDATE `creature_loot_template` SET `mincountOrRef` = 6, `maxcount` = 10 WHERE `item` = 7078 AND `entry` = 11502;

UPDATE `creature_loot_template` SET `mincountOrRef` = 1, `maxcount` = 1 WHERE `item` = 7909 AND `entry` IN (2736,10442,11778);

UPDATE `creature_loot_template` SET `mincountOrRef` = 1, `maxcount` = 1 WHERE `item` = 7910 AND `entry` IN (2725,7047,6146);

UPDATE `creature_loot_template` SET `mincountOrRef` = 1, `maxcount` = 2 WHERE `item` = 7912 AND `entry` IN (92,2736);

-- https://www.wowhead.com/classic/npc=12057/garr
-- https://web.archive.org/web/20080216212539/http://wow.allakhazam.com/db/item.html?witem=17011
UPDATE `creature_loot_template` SET `mincountOrRef` = 6 WHERE `item` = 8150 AND `entry` = 12057; -- 1
UPDATE `creature_loot_template` SET `mincountOrRef` = 2 WHERE `item` = 7075 AND `entry` = 12057; -- 1
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 25 WHERE `item` = 17011 AND `entry` = 12057; -- 14

UPDATE `creature_loot_template` SET `mincountOrRef` = 1, `maxcount` = 1 WHERE `item` = 8766 AND `entry` IN (1784,1787,1802,1833,7440,7441,8408,4475,10398,7439,10390,10406,10407,10382,10464,10391,10405,10381,10418,10420);

UPDATE `creature_loot_template` SET `mincountOrRef` = 1, `maxcount` = 1 WHERE `item` = 8932 AND `entry` IN (10405,10420,6559,10409,10418,10398,10385,10390);

UPDATE `creature_loot_template` SET `mincountOrRef` = 1, `maxcount` = 1 WHERE `item` = 8948 AND `entry` IN (1789,1787,7461,7463,9516);

UPDATE `creature_loot_template` SET `mincountOrRef` = 2, `maxcount` = 4 WHERE `item` = 8948 AND `entry` IN (10263);

UPDATE `creature_loot_template` SET `mincountOrRef` = 1, `maxcount` = 1 WHERE `item` = 8952 AND `entry` = 7033;

UPDATE `creature_loot_template` SET `mincountOrRef` = 1, `maxcount` = 1 WHERE `item` = 8953 AND `entry` = 7156;

-- https://www.wowhead.com/tbc/item=21881/netherweb-spider-silk#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 20 WHERE `item` = 21881 AND `entry` = 16171; -- Coldmist Widow 73
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 18 WHERE `item` = 21881 AND `entry` = 16170; -- Coldmist Stalker 73
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 15 WHERE `item` = 21881 AND `entry` = 18983; -- Blackfang Tarantula 77
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 15 WHERE `item` = 21881 AND `entry` = 22162; -- Blackfang Tarantula (1) 77
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 14 WHERE `item` = 21881 AND `entry` = 18467; -- Dreadfang Widow 13.874
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 14 WHERE `item` = 21881 AND `entry` = 18466; -- Dreadfang Lurker 13.9193
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 14 WHERE `item` = 21881 AND `entry` = 18647; -- Deathskitter 13.9022
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 5 WHERE `item` = 21881 AND `entry` = 16179; -- Hyakiss the Lurker 28

UPDATE `creature_loot_template` SET `maxcount` = 1 WHERE `item` = 27854;

UPDATE `creature_loot_template` SET `maxcount` = 1 WHERE `item` = 27855;

UPDATE `creature_loot_template` SET `maxcount` = 1 WHERE `item` = 27859;

DELETE FROM `creature_loot_template` WHERE `entry` = 18114 AND `item` = 30458; -- Feralfen Mystic - Stromgarde Muenster

-- Cleanup - Table 'creature_loot_template' entry  (creature entry) not exist but used as loot id in DB.
DELETE FROM `creature_loot_template` WHERE `entry` IN (17070,17079,17080,11347,14122,14826,14884,14965,14986,14987,14988,15041,15068,15101,15112,15117,15146);
UPDATE `creature_template` SET `LootId` = 0 WHERE `entry` IN (17070,17079,17080,11347,14122,14826,14884,14965,14986,14987,14988,15041,15068,15101,15112,15117,15146);

