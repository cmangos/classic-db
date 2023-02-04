-- Add missing green world loot items to world loot refloots
-- Based on Diff between classicmangos and tbcmangos
-- SELECT DISTINCT item FROM reference_loot_template where entry IN (24016,24018,24020,24025,24027,24029,24031,24033,24037,24039,24041,24043,24045,24048,24050,24052,24054,24056,24060,24062,24064,24068,24074,24075,24076,24077,24078,24106) ORDER BY item;
-- SELECT DISTINCT item FROM reference_loot_template where entry IN (60100,60101,60102,60103,60104,60105,60106,60107,60108,60109,60110,60111,60112,60113,60114,60115,60116,60117,60118,60119,60120,60121,60122,60123,60124,60125,60126,60127,60128,60129,60130,60131,60132,60133,60134,60135,60136,60137,60138,60139,60140,60141,60142,60143,60144,60145,60146,60147,60148,60149,60150,60151,60152,60153,60154,60155,60156,60157,60158,60159,60160,60161,60162,60163,60164,60165,60166,60167,60168,60169,60170,60171,60172,60173,60174,60175,60176,60177,60178,60179,60180,60181,60182,60183,60184,60185,60186,60187,60188,60189,60190,60191,60192,60193,60194,60195,60196,60197,60198,60199,60290,60291,60292,60293,60294,60295,60296,60297,60298) ORDER BY item;

-- 60291	NPC LOOT (Green World Drop) - (Item Levels: 57-62) - (NPC Levels: 58-59) - VANILLA NPC ONLY
-- 60292	NPC LOOT (Green World Drop) - (Item Levels: 58-62) - (NPC Levels: 59) - VANILLA NPC ONLY
-- 60293	NPC LOOT (Green World Drop) - (Item Levels: 58-63) - (NPC Levels: 59-60) - VANILLA NPC ONLY
-- 60294	NPC LOOT (Green World Drop) - (Item Levels: 59-63) - (NPC Levels: 60) - VANILLA NPC ONLY
-- 60295	NPC LOOT (Green World Drop) - (Item Levels: 59-64) - (NPC Levels: 60-61) - VANILLA NPC ONLY
-- 60296	NPC LOOT (Green World Drop) - (Item Levels: 60-64) - (NPC Levels: 61) - VANILLA NPC ONLY
-- 60297	NPC LOOT (Green World Drop) - (Item Levels: 60-65) - (NPC Levels: 61-62) - VANILLA NPC ONLY
-- 60298	NPC LOOT (Green World Drop) - (Item Levels: 61-65) - (NPC Levels: 62) - VANILLA NPC ONLY
REPLACE INTO `reference_loot_template` (`item`, `entry`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`) SELECT `entry`, 60291, 1, 0, 1, 1 FROM `item_template` WHERE `entry` IN (
-- entry,name,itemlevel,requiredlevel
8303, -- Hero's Breastplate	62	57
8313, -- Hero's Buckler	62	57
10139, -- High Councillor's Circlet	62	57
10142, -- High Councillor's Mantle	62	57
10150, -- Mighty Helmet	62	57
10153, -- Mighty Spaulders	62	57
10160, -- Mercurial Circlet	62	57
10163, -- Mercurial Pauldrons	62	57
10215, -- Elegant Robes	62	57
10218, -- Elegant Tunic	62	57
10227, -- Nightshade Leggings	62	57
10248, -- Master's Bracers	62	57
10255, -- Master's Belt	62	57
10257, -- Adventurer's Boots	62	57
10259, -- Adventurer's Belt	62	57
10265, -- Masterwork Bracers	62	57
10269, -- Masterwork Girdle	62	57
10368, -- Imbued Plate Armor	62	57
10382, -- Commander's Leggings	62	57
10385, -- Hyperion Greaves	62	57
10386, -- Hyperion Gauntlets	62	57
12005, -- Granite Ring	62	57
12036, -- Granite Necklace	62	57
14322, -- Resplendent Circlet	62	57
14329, -- Eternal Boots	62	57
14461, -- Elunarian Handgrips	62	57
14462, -- Elunarian Sarong	62	57
14463, -- Elunarian Spaulders	62	57
14681, -- Indomitable Boots	62	57
14685, -- Indomitable Gauntlets	62	57
14687, -- Indomitable Leggings	62	57
14809, -- Warstrike Sabatons	62	57
14815, -- Warstrike Gauntlets	62	57
14816, -- Warstrike Legguards	62	57
14817, -- Warstrike Shoulder Pads	62	57
14866, -- Warleader's Crown	62	57
14867, -- Warleader's Leggings	62	57
14931, -- Heroic Armor	62	57
14981, -- Exalted Epaulets	62	57
15193, -- Grand Crown	62	57
15195, -- Grand Breastplate	62	57
15220, -- Battlefell Sabre	62	57
15246, -- Demon Blade	62	57
15257, -- Shin Blade	62	57
15669, -- Magnificent Breastplate	62	57
15675, -- Magnificent Guard	62	57
15887, -- Heroic Guard	62	57
15940); -- Elegant Scepter	62	57
REPLACE INTO `reference_loot_template` (`item`, `entry`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`) SELECT `entry`, 60292, 1, 0, 1, 1 FROM `item_template` WHERE `entry` IN (
8303,8313,10139,10142,10150,10153,10160,10163,10215,10218,10227,10248,10255,10257,10259,10265,10269,10368,10382,10385,10386,12005,12036,14322,14329,14461,14462,14463,14681,14685,14687,14809,14815,14816,14817,14866,14867,14931,14981,15193,15195,15220,15246,15257,15669,15675,15887,15940);
REPLACE INTO `reference_loot_template` (`item`, `entry`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`) SELECT `entry`, 60293, 1, 0, 1, 1 FROM `item_template` WHERE `entry` IN (
8303,8313,10139,10142,10150,10153,10160,10163,10215,10218,10227,10248,10255,10257,10259,10265,10269,10368,10382,10385,10386,12005,12036,14322,14329,14461,14462,14463,14681,14685,14687,14809,14815,14816,14817,14866,14867,14931,14981,15193,15195,15220,15246,15257,15669,15675,15887,15940);
REPLACE INTO `reference_loot_template` (`item`, `entry`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`) SELECT `entry`, 60294, 1, 0, 1, 1 FROM `item_template` WHERE `entry` IN (
8303,8313,10139,10142,10150,10153,10160,10163,10215,10218,10227,10248,10255,10257,10259,10265,10269,10368,10382,10385,10386,12005,12036,14322,14329,14461,14462,14463,14681,14685,14687,14809,14815,14816,14817,14866,14867,14931,14981,15193,15195,15220,15246,15257,15669,15675,15887,15940);
REPLACE INTO `reference_loot_template` (`item`, `entry`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`) SELECT `entry`, 60295, 1, 0, 1, 1 FROM `item_template` WHERE `entry` IN (
8303,8313,10139,10142,10150,10153,10160,10163,10215,10218,10227,10248,10255,10257,10259,10265,10269,10368,10382,10385,10386,12005,12036,14322,14329,14461,14462,14463,14681,14685,14687,14809,14815,14816,14817,14866,14867,14931,14981,15193,15195,15220,15246,15257,15669,15675,15887,15940);
REPLACE INTO `reference_loot_template` (`item`, `entry`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`) SELECT `entry`, 60296, 1, 0, 1, 1 FROM `item_template` WHERE `entry` IN (
8303,8313,10139,10142,10150,10153,10160,10163,10215,10218,10227,10248,10255,10257,10259,10265,10269,10368,10382,10385,10386,12005,12036,14322,14329,14461,14462,14463,14681,14685,14687,14809,14815,14816,14817,14866,14867,14931,14981,15193,15195,15220,15246,15257,15669,15675,15887,15940);
REPLACE INTO `reference_loot_template` (`item`, `entry`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`) SELECT `entry`, 60297, 1, 0, 1, 1 FROM `item_template` WHERE `entry` IN (
8303,8313,10139,10142,10150,10153,10160,10163,10215,10218,10227,10248,10255,10257,10259,10265,10269,10368,10382,10385,10386,12005,12036,14322,14329,14461,14462,14463,14681,14685,14687,14809,14815,14816,14817,14866,14867,14931,14981,15193,15195,15220,15246,15257,15669,15675,15887,15940);
REPLACE INTO `reference_loot_template` (`item`, `entry`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`) SELECT `entry`, 60298, 1, 0, 1, 1 FROM `item_template` WHERE `entry` IN (
8303,8313,10139,10142,10150,10153,10160,10163,10215,10218,10227,10248,10255,10257,10259,10265,10269,10368,10382,10385,10386,12005,12036,14322,14329,14461,14462,14463,14681,14685,14687,14809,14815,14816,14817,14866,14867,14931,14981,15193,15195,15220,15246,15257,15669,15675,15887,15940);

-- 60293	NPC LOOT (Green World Drop) - (Item Levels: 58-63) - (NPC Levels: 59-60) - VANILLA NPC ONLY
-- 60294	NPC LOOT (Green World Drop) - (Item Levels: 59-63) - (NPC Levels: 60) - VANILLA NPC ONLY
-- 60295	NPC LOOT (Green World Drop) - (Item Levels: 59-64) - (NPC Levels: 60-61) - VANILLA NPC ONLY
-- 60296	NPC LOOT (Green World Drop) - (Item Levels: 60-64) - (NPC Levels: 61) - VANILLA NPC ONLY
-- 60297	NPC LOOT (Green World Drop) - (Item Levels: 60-65) - (NPC Levels: 61-62) - VANILLA NPC ONLY
-- 60298	NPC LOOT (Green World Drop) - (Item Levels: 61-65) - (NPC Levels: 62) - VANILLA NPC ONLY
REPLACE INTO `reference_loot_template` (`item`, `entry`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`) SELECT `entry`, 60293, 1, 0, 1, 1 FROM `item_template` WHERE `entry` IN (
-- entry,name,itemlevel,requiredlevel
10141, -- High Councillor's Pants	63	58
10152, -- Mighty Leggings	63	58
10162, -- Mercurial Legguards	63	58
10220, -- Nightshade Tunic	63	58
10247, -- Master's Boots	63	58
10250, -- Master's Hat	63	58
10251, -- Master's Gloves	63	58
10253, -- Master's Mantle	63	58
10260, -- Adventurer's Gloves	63	58
10261, -- Adventurer's Bandana	63	58
10263, -- Adventurer's Shoulders	63	58
10268, -- Masterwork Gauntlets	63	58
10270, -- Masterwork Boots	63	58
10272, -- Masterwork Circlet	63	58
10274, -- Masterwork Pauldrons	63	58
10366, -- Demon Guard	63	58
10378, -- Commander's Armor	63	58
10388, -- Hyperion Helm	63	58
10390, -- Hyperion Pauldrons	63	58
11992, -- Vermilion Band	63	58
12027, -- Vermilion Necklace	63	58
14318, -- Resplendent Tunic	63	58
14326, -- Resplendent Robes	63	58
14333, -- Eternal Gloves	63	58
14334, -- Eternal Sarong	63	58
14335, -- Eternal Spaulders	63	58
14460, -- Elunarian Diadem	63	58
14686, -- Indomitable Headdress	63	58
14814, -- Warstrike Helmet	63	58
14862, -- Warleader's Breastplate	63	58
14978, -- Exalted Sabatons	63	58
14980, -- Exalted Legplates	63	58
15267, -- Brutehammer	63	58
15273, -- Death Striker	63	58
15296, -- Hawkeye Bow	63	58
15435, -- Supreme Shoes	63	58
15438, -- Supreme Gloves	63	58
15440, -- Supreme Leggings	63	58
15441, -- Supreme Shoulders	63	58
15678, -- Triumphant Sabatons	63	58
15682, -- Triumphant Gauntlets	63	58
15685, -- Triumphant Legplates	63	58
15686, -- Triumphant Shoulder Pads	63	58
15988, -- Resplendent Orb	63	58
15991); -- Warleader's Shield	63	58
REPLACE INTO `reference_loot_template` (`item`, `entry`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`) SELECT `entry`, 60294, 1, 0, 1, 1 FROM `item_template` WHERE `entry` IN (
10141,10152,10162,10220,10247,10250,10251,10253,10260,10261,10263,10268,10270,10272,10274,10366,10378,10388,10390,11992,12027,14318,14326,14333,14334,14335,14460,14686,14814,14862,14978,14980,15267,15273,15296,15435,15438,15440,15441,15678,15682,15685,15686,15988,15991);
REPLACE INTO `reference_loot_template` (`item`, `entry`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`) SELECT `entry`, 60295, 1, 0, 1, 1 FROM `item_template` WHERE `entry` IN (
10141,10152,10162,10220,10247,10250,10251,10253,10260,10261,10263,10268,10270,10272,10274,10366,10378,10388,10390,11992,12027,14318,14326,14333,14334,14335,14460,14686,14814,14862,14978,14980,15267,15273,15296,15435,15438,15440,15441,15678,15682,15685,15686,15988,15991);
REPLACE INTO `reference_loot_template` (`item`, `entry`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`) SELECT `entry`, 60296, 1, 0, 1, 1 FROM `item_template` WHERE `entry` IN (
10141,10152,10162,10220,10247,10250,10251,10253,10260,10261,10263,10268,10270,10272,10274,10366,10378,10388,10390,11992,12027,14318,14326,14333,14334,14335,14460,14686,14814,14862,14978,14980,15267,15273,15296,15435,15438,15440,15441,15678,15682,15685,15686,15988,15991);
REPLACE INTO `reference_loot_template` (`item`, `entry`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`) SELECT `entry`, 60297, 1, 0, 1, 1 FROM `item_template` WHERE `entry` IN (
10141,10152,10162,10220,10247,10250,10251,10253,10260,10261,10263,10268,10270,10272,10274,10366,10378,10388,10390,11992,12027,14318,14326,14333,14334,14335,14460,14686,14814,14862,14978,14980,15267,15273,15296,15435,15438,15440,15441,15678,15682,15685,15686,15988,15991);
REPLACE INTO `reference_loot_template` (`item`, `entry`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`) SELECT `entry`, 60298, 1, 0, 1, 1 FROM `item_template` WHERE `entry` IN (
10141,10152,10162,10220,10247,10250,10251,10253,10260,10261,10263,10268,10270,10272,10274,10366,10378,10388,10390,11992,12027,14318,14326,14333,14334,14335,14460,14686,14814,14862,14978,14980,15267,15273,15296,15435,15438,15440,15441,15678,15682,15685,15686,15988,15991);

-- 60295	NPC LOOT (Green World Drop) - (Item Levels: 59-64) - (NPC Levels: 60-61) - VANILLA NPC ONLY
-- 60296	NPC LOOT (Green World Drop) - (Item Levels: 60-64) - (NPC Levels: 61) - VANILLA NPC ONLY
-- 60297	NPC LOOT (Green World Drop) - (Item Levels: 60-65) - (NPC Levels: 61-62) - VANILLA NPC ONLY
-- 60298	NPC LOOT (Green World Drop) - (Item Levels: 61-65) - (NPC Levels: 62) - VANILLA NPC ONLY
REPLACE INTO `reference_loot_template` (`item`, `entry`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`) SELECT `entry`, 60295, 1, 0, 1, 1 FROM `item_template` WHERE `entry` IN (
-- entry,name,itemlevel,requiredlevel
10135, -- High Councillor's Tunic	64	59
10143, -- High Councillor's Robe	64	59
10151, -- Mighty Tunic	64	59
10157, -- Mercurial Breastplate	64	59
10158, -- Mercurial Guard	64	59
10252, -- Master's Leggings	64	59
10262, -- Adventurer's Legguards	64	59
10273, -- Masterwork Legplates	64	59
10389, -- Hyperion Legplates	64	59
11980, -- Opal Ring	64	59
12058, -- Demonic Bone Ring	64	59
14332, -- Eternal Crown	64	59
14456, -- Elunarian Vest	64	59
14464, -- Elunarian Silk Robes	64	59
14680, -- Indomitable Vest	64	59
14811, -- Warstrike Chestguard	64	59
14812, -- Warstrike Buckler	64	59
14979, -- Exalted Helmet	64	59
15240, -- Demon's Claw	64	59
15247, -- Bloodstrike Dagger	64	59
15283, -- Lunar Wand	64	59
15439, -- Supreme Crown	64	59
15684, -- Triumphant Skullcap	64	59
15941, -- High Councillor's Scepter	64	59
15968); -- Elunarian Sphere	64	59
REPLACE INTO `reference_loot_template` (`item`, `entry`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`) SELECT `entry`, 60296, 1, 0, 1, 1 FROM `item_template` WHERE `entry` IN (
10135,10143,10151,10157,10158,10252,10262,10273,10389,11980,12058,14332,14456,14464,14680,14811,14812,14979,15240,15247,15283,15439,15684,15941);
REPLACE INTO `reference_loot_template` (`item`, `entry`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`) SELECT `entry`, 60297, 1, 0, 1, 1 FROM `item_template` WHERE `entry` IN (
10135,10143,10151,10157,10158,10252,10262,10273,10389,11980,12058,14332,14456,14464,14680,14811,14812,14979,15240,15247,15283,15439,15684,15941);
REPLACE INTO `reference_loot_template` (`item`, `entry`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`) SELECT `entry`, 60298, 1, 0, 1, 1 FROM `item_template` WHERE `entry` IN (
10135,10143,10151,10157,10158,10252,10262,10273,10389,11980,12058,14332,14456,14464,14680,14811,14812,14979,15240,15247,15283,15439,15684,15941);

-- 60297	NPC LOOT (Green World Drop) - (Item Levels: 60-65) - (NPC Levels: 61-62) - VANILLA NPC ONLY
-- 60298	NPC LOOT (Green World Drop) - (Item Levels: 61-65) - (NPC Levels: 62) - VANILLA NPC ONLY
REPLACE INTO `reference_loot_template` (`item`, `entry`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`) SELECT `entry`, 60297, 1, 0, 1, 1 FROM `item_template` WHERE `entry` IN (
-- entry,name,itemlevel,requiredlevel
10246, -- Master's Vest	65	60
10254, -- Master's Robe	65	60
10264, -- Adventurer's Tunic	65	60
10266, -- Masterwork Breastplate	65	60
10271, -- Masterwork Shield	65	60
10367, -- Hyperion Shield	65	60
10384, -- Hyperion Armor	65	60
12017, -- Prismatic Band	65	60
12048, -- Prismatic Pendant	65	60
14328, -- Eternal Chestguard	65	60
14336, -- Eternal Wraps	65	60
14975, -- Exalted Harness	65	60
14982, -- Exalted Shield	65	60
15221, -- Holy War Sword	65	60
15258, -- Divine Warblade	65	60
15289, -- Archstrike Bow	65	60
15442, -- Supreme Breastplate	65	60
15680, -- Triumphant Chestpiece	65	60
15687, -- Triumphant Shield	65	60
15942, -- Master's Rod	65	60
15989); -- Eternal Rod	65	60
REPLACE INTO `reference_loot_template` (`item`, `entry`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`) SELECT `entry`, 60298, 1, 0, 1, 1 FROM `item_template` WHERE `entry` IN (
10246,10254,10264,10266,10271,10367,10384,12017,12048,14328,14336,14975,14982,15221,15258,15289,15442,15680,15687,15942,15989);

-- Cleanup
UPDATE reference_loot_template SET comments='';
UPDATE reference_loot_template ct JOIN item_template it ON it.entry = ct.item AND ct.MinCountOrRef > 0 SET ct.comments = CONCAT(ct.comments, "", it.name);
UPDATE reference_loot_template ct JOIN reference_loot_template_names rltn ON rltn.entry = -ct.MinCountOrRef AND ct.MinCountOrRef < 0 SET ct.comments = CONCAT(ct.comments, "", rltn.name);

