-- Add your query below.
-- https://github.com/lh-server/core/commit/acb1115863f5ef03eb2d77a026acab4f764f6469

-- Seal Fate family flags
-- Description: Your critical strikes from abilities that add combo points have a 20% chance to add an additional combo point. - 9672066312 !?
-- https://www.wowhead.com/forums/topic/ruthlessness-and-seal-fate-28601 no interaction with ruthlessness
-- https://www.getmangos.eu/forums/topic/6069-bugmutilate-with-seal-fate/ -- only one combopoint for mutilate
 -- Sinister Strike (2) + Backstab (4) + Gouge (8) + Ambush (512) + Hemorrhage (33554432) + Ghostly Strike (67108864) + Shiv (536870912, TBC+) +
 -- Riposte (2147483648) + Mutilate (Mainhand, TBC+) (8589934592)
UPDATE `spell_proc_event` SET `SpellFamilyMask0`=2248147470, `SpellFamilyMask1`=2248147470, `SpellFamilyMask2`=2248147470 WHERE `entry`=14186;
-- 8+256(Garrote)+1024(Cheap Shot)+8388608(mixflag Ambush Backstab Deadly Throw Envenom Eviscerate Hemorrhage Sinister Strike)+1073741824(bladeflurry cos)+8589934592 Old Flag

-- Vorrel's Revenge cry
-- https://youtu.be/u9ICUJJeUs0?t=106
UPDATE `quest_template` SET `CompleteEmote`=18 WHERE `entry`=1051;

-- Laughing Sister
-- https://github.com/LightsHope/server/issues/1020
UPDATE `creature_template` SET `ExtraFlags` = 0, `ResistanceFire` = 50, `ResistanceFrost` = 50 WHERE `entry`=4054; -- resistance values guessed

-- Respawn Laughing Sister with slightly corrected xyz
REPLACE INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
(34212, 4054, 1, 2381.20, -1678.85, 146.074, 0, 300, 300, 15, 1),
(34193, 4054, 1, 2421.47, -1644.49, 141.591, 0, 300, 300, 10, 1),
(34196, 4054, 1, 2443.83, -1675.59, 133.414, 0, 300, 300, 5, 1),
(34194, 4054, 1, 2486.79, -1682.54, 134.945, 0, 300, 300, 10, 1),
(34195, 4054, 1, 2483.31, -1714.66, 132.098, 0, 300, 300, 10, 1),
(34197, 4054, 1, 2510.43, -1709.94, 143.944, 0, 300, 300, 5, 1),
(34215, 4054, 1, 2513.02, -1753.25, 137.042, 0, 300, 300, 5, 1),
(34222, 4054, 1, 2515.63, -1683.83, 150.526, 0, 300, 300, 10, 1),
(34223, 4054, 1, 2517.37, -1650.13, 143.998, 0, 300, 300, 15, 1),
(34213, 4054, 1, 2516.60, -1778.61, 135.725, 0, 300, 300, 15, 1),
(34214, 4054, 1, 2544.77, -1748.07, 152.205, 0, 300, 300, 5, 1),
(34221, 4054, 1, 2546.59, -1779.13, 149.559, 0, 300, 300, 15, 1),
(34220, 4054, 1, 2551.01, -1686.20, 151.865, 0, 300, 300, 15, 1),
(34216, 4054, 1, 2583.80, -1754.05, 158.028, 0, 300, 300, 10, 1),
(34219, 4054, 1, 2580.97, -1716.76, 159.502, 0, 300, 300, 15, 1),
(34218, 4054, 1, 2578.59, -1677.75, 155.153, 0, 300, 300, 10, 1),
(34217, 4054, 1, 2623.15, -1753.56, 179.796, 0, 300, 300, 15, 1),
(34204, 4054, 1, 2641.23, -1796.58, 191.291, 0, 300, 300, 10, 1),
(34211, 4054, 1, 2658.39, -1850.67, 192.917, 0, 300, 300, 15, 1),
(34210, 4054, 1, 2680.34, -1815.08, 191.505, 0, 300, 300, 10, 1),
(34202, 4054, 1, 2670.52, -1799.36, 192.365, 0, 300, 300, 10, 1),
(34198, 4054, 1, 2696.09, -1848.67, 190.595, 0, 300, 300, 5, 1),
(34199, 4054, 1, 2747.98, -1846.98, 196.606, 0, 300, 300, 15, 1),
(34200, 4054, 1, 2763.12, -1894.77, 188.969, 0, 300, 300, 20, 1),
(34203, 4054, 1, 2718.7, -1814.41, 198.214, 0, 300, 300, 10, 1), -- maybe path
(34201, 4054, 1, 2781.05, -1817.29, 203.902, 0, 300, 300, 10, 1);

-- 3642 Kolkars' Booty
-- 152608 Kolkar's Booty
-- 152618 Kolkar's Booty
-- https://www.youtube.com/watch?v=sJ2C3MmayYU&ab_channel=beastofdabeat
-- https://www.youtube.com/watch?v=lDzV1mPiqoQ&ab_channel=CuperColoredGames
UPDATE `gameobject_loot_template` SET `maxcount` = 3 WHERE `entry` = 3318 AND `item` = 2287; -- Haunch of Meat
DELETE FROM `gameobject_loot_template` WHERE `entry` = 3318 AND `item` IN (SELECT `item` FROM `reference_loot_template` WHERE `entry` IN (60119,60003,50503)); -- all items previously gathered in gameobject_loot_template` are included in these 3 refloots
DELETE FROM `gameobject_loot_template` WHERE `entry` = 3318 AND `item` IN (60119,60003,50503); -- + the bag loots which was added another time
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(3318, 60119, 100, 0, -60119, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 16-21) - (NPC Levels: 17-18)'), -- matches 100%
(3318, 60003, 100, 0, -60003, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 16-20) - (NPC Levels: 16-20)'), -- matches 100%
(3318, 50503, 15, 0, -50503, 1, 0, 'LOOT (World Drop) - (RequiredSkillRank: 20-130 (Profession Recipes)) - (NPC Levels ~10-20)'); -- matches 100%

UPDATE `gameobject` SET `position_x` = -1214.16, `position_y` = -2720.71, `position_z` = 106.668, `orientation` = 3.14159, `rotation2` = -1, `rotation3` = 0 WHERE `id` = 152618;
UPDATE `gameobject` SET `position_x` = -932.072, `position_y` = -1869, `position_z` = 102.032, `orientation` = 3.15033, `rotation2` = -0.99999, `rotation3` = 0.00436732 WHERE `id` = 152608;
UPDATE `gameobject` SET `position_x` = 23.7603, `position_y` = -1736.37, `position_z` = 108.722, `orientation` = 0.253073, `rotation2` = 0.126198, `rotation3` = 0.991996 WHERE `id` = 3642;

-- Myizz Luckycatch not a vendor
-- https://github.com/LightsHope/server/issues/1112
UPDATE `creature_template` SET `VendorTemplateId` = 0, `NpcFlags` = 17 WHERE `entry` = 2834; -- 17 in vanilla
DELETE FROM `npc_vendor` WHERE `entry`=2834;
UPDATE `npc_vendor` SET `slot` = 7 WHERE `item` = 787;
UPDATE `npc_vendor` SET `slot` = 8 WHERE `item` = 4592;
UPDATE `npc_vendor` SET `slot` = 9 WHERE `item` = 4593;
UPDATE `npc_vendor` SET `slot` = 10 WHERE `item` = 4594;
UPDATE `npc_vendor` SET `slot` = 11 WHERE `item` = 21552;
UPDATE `npc_vendor` SET `slot` = 12 WHERE `item` = 8957;

-- ReqLevel already 0 in classicmangos, only changing spell to parentspell, no visual glitches here

-- Herbalism and Mining - use parent spells, no level req for gathering professions
-- https://wowwiki-archive.fandom.com/wiki/Herbalism?oldid=1617569
-- https://overgear.com/guides/wotlk/mining-leveling-guide/
UPDATE `npc_trainer` SET `spell` = 2373, `reqlevel` = 0 WHERE `spell` = 2368;
UPDATE `npc_trainer` SET `spell` = 3571, `reqlevel` = 0 WHERE `spell` = 3570;
UPDATE `npc_trainer` SET `spell` = 11994, `reqlevel` = 0 WHERE `spell` = 11993;
-- UPDATE `npc_trainer` SET `reqlevel` = 0 WHERE `spell` = 28695; -- Herb Gathering (Master)
-- UPDATE `npc_trainer` SET `reqlevel` = 0 WHERE `spell` = 50301; -- Grand Master Herbalist
UPDATE `npc_trainer` SET `spell` = 2582, `reqlevel` = 0 WHERE `spell` = 2576;
UPDATE `npc_trainer` SET `spell` = 3568, `reqlevel` = 0 WHERE `spell` = 3564;
UPDATE `npc_trainer` SET `spell` = 10249, `reqlevel` = 0 WHERE `spell` = 10248;
-- UPDATE `npc_trainer` SET `spell` = 29355, `reqlevel` = 0 WHERE `spell` = 29354; -- Mining (Master)
-- UPDATE `npc_trainer` SET `reqlevel` = 0 WHERE `spell` = 50309; -- Grand Master Miner

-- Jade does not need pool
-- https://github.com/LightsHope/server/issues/392
DELETE FROM `pool_creature_template` WHERE `id` = 1063; -- 1063 1123 0 Jade (1063)
DELETE FROM `pool_template` WHERE `entry` = 1123; -- 1123	1	Jade (1063)
DELETE FROM `creature` WHERE `guid` = 134242; -- 134242 in classic/wotlkmangos

-- AV mobs faction
-- https://github.com/LightsHope/server/issues/326
UPDATE `creature_template` SET `Faction` = 1216 WHERE `entry` IN (
5118, -- Brogun Stoneshield
7410, -- Thelman Slatefist
11948,22644,31818,37444, -- Vanndar Stormpike
11949,22605,31820,37243, -- Captain Balinda Stonehearth
12047,22657,32097,37418, -- Stormpike Mountaineer
12048,22645,31919,37235, -- Alliance Sentinel
12050,22690,32091,37412, -- Stormpike Defender
12127,22666,32094,37415, -- Stormpike Guardsman
12197, -- Glordrum Steelbeard
13078,22696,32119,37442, -- Umi Thorson
13080,22743,32014,37333, -- Irondeep Guard
13086,22670,31918,37234, -- Aggi Rumblestomp
13087,22731,31948,37266, -- Coldmine Invader
13096,22729,31946,37264, -- Coldmine Explorer
13098,22749,32020,37339, -- Irondeep Surveyor
13138,22708,32039,37359, -- Lieutenant Spencer
13139,22620,31959,37277, -- Commander Randolph
13257,22567,32048,37369, -- Murgot Deepforge
13296,22702,32033,37353, -- Lieutenant Largent
13297,22709,32040,37360, -- Lieutenant Stouthandle
13298,22700,32030,37350, -- Lieutenant Greywand
13299,22704,32035,37355, -- Lieutenant Lonadin
13300,22705,32036,37356, -- Lieutenant Mancuso
13317,22732,31949,37267, -- Coldmine Miner
13318,22618,31957,37275, -- Commander Mortimer
13319,22614,31953,37271, -- Commander Duffy
13320,22615,31954,37272, -- Commander Karl Philips
13324,22687,32064,37385, -- Seasoned Guardsman
13325,22662,32070,37391, -- Seasoned Mountaineer
13326,22714,32062,37383, -- Seasoned Defender
13327,22663,32074,37395, -- Seasoned Sentinel
13331,22588,32125,37450, -- Veteran Defender
13333,22719,32127,37452, -- Veteran Guardsman
13335,22667,32133,37458, -- Veteran Mountaineer
13336,22668,32134,37462, -- Veteran Sentinel
13356,22635,32096,37417, -- Stormpike Mine Layer
13358,22766,32089,37410, -- Stormpike Bowman
13396,22744,32015,37334, -- Irondeep Miner
13422,22608,31932,37250, -- Champion Defender
13424,22533,31934,37252, -- Champion Guardsman
13426,22671,31940,37258, -- Champion Mountaineer
13427,22672,31944,37262, -- Champion Sentinel
13442,22527,31923,37239, -- Arch Druid Renferal
13443,22541,31965,37284, -- Druid of the Grove
13447,22735,31960,37278, -- Corporal Noreg Stormpike
13521,22717,32072,37393, -- Seasoned Ranger
13522,22591,31905,37460, -- Veteran Ranger
13523,22611,31942,37260, -- Champion Ranger
13577,22575,32101,37422, -- Stormpike Ram Rider Commander
13598,22634,32093,37414, -- Stormpike Explosives Expert
13617,22577,32105,37426, -- Stormpike Stable Master
13797,22724,32046,37367, -- Mountaineer Boombellow
13816,22630,32051,37372, -- Prospector Stonehewer
14283,22767,32098,37419, -- Stormpike Owl
14284,22633,32088,37409 -- Stormpike Battleguard
);

UPDATE `creature_template` SET `Faction` = 1217 WHERE `entry` IN (
13676,22764,32084,37405 -- Stabled Alterac Ram
);

UPDATE `creature_template` SET `Faction` = 1534 WHERE `entry` IN (
14762,22542,31966,37285, -- Dun Baldar North Marshal
14763,22544,31968,37287, -- Dun Baldar South Marshal
14764,22561,32008,37327, -- Icewing Marshal
14765,22572,32086,37407, -- Stonehearth Marshal
14766,22559,32006,37325, -- Iceblood Marshal
14767,22579,31908,37434, -- Tower Point Marshal
14768,22547,31971,37290, -- East Frostwolf Marshal
14769,22595,31903,37467 -- West Frostwolf Marshal
);

UPDATE `creature_template` SET `Faction` = 1214 WHERE `entry` IN (
347, -- Grizzle Halfmane
7427, -- Taim Ragetotem
11946,22641,31819,37283, -- Drek'Thar
11947,22606,31055,37244, -- Captain Galvangar
12051,22665,31983,37302, -- Frostwolf Legionnaire
12052,22649,31992,37311, -- Frostwolf Warrior
12053,22674,31981,37300, -- Frostwolf Guardian
12121,22540,31964,37282, -- Drakan
12122,22546,31970,37289, -- Duros
13079,22683,32026,37346, -- Keetar
13081,22746,32017,37336, -- Irondeep Raider
13088,22684,32043,37364, -- Masha Swiftcut
13089,22730,31947,37265, -- Coldmine Guard
13097,22734,31951,37269, -- Coldmine Surveyor
13099,22741,32012,37331, -- Irondeep Explorer
13137,22707,32038,37358, -- Lieutenant Rugba
13140,22613,31952,37270, -- Commander Dardosh <old>
13143,22710,32041,37361, -- Lieutenant Stronghoof
13144,22711,32042,37362, -- Lieutenant Vol'talar
13145,22701,32031,37351, -- Lieutenant Grummus
13146,22706,32037,37357, -- Lieutenant Murp <old>
13147,22703,32034,37354, -- Lieutenant Lewis
13152,22617,31956,37274, -- Commander Malgor
13153,22619,31958,37276, -- Commander Mulfort
13154,22616,31955,37273, -- Commander Louis Philips
13236,22568,32050,37371, -- Primalist Thurloga
13284,22678,31989,37308, -- Frostwolf Shaman
13316,22733,31950,37268, -- Coldmine Peon
13328,22715,32063,37384, -- Seasoned Guardian
13329,22688,32069,37390, -- Seasoned Legionnaire
13330,22664,32075,37396, -- Seasoned Warrior
13332,22589,32126,37451, -- Veteran Guardian
13334,22720,32132,37457, -- Veteran Legionnaire
13337,22669,32135,37463, -- Veteran Warrior
13357,22624,31984,37303, -- Frostwolf Mine Layer
13359,22739,31978,37297, -- Frostwolf Bowman
13397,22745,32016,37335, -- Irondeep Peon
13421,22609,31933,37251, -- Champion Guardian
13425,22538,31939,37257, -- Champion Legionnaire
13428,22673,31945,37263, -- Champion Warrior
13441,22552,31994,37313, -- Frostwolf Wolf Rider Commander
13448,22760,32077,37398, -- Sergeant Yazra Bloodsnarl
13517,22716,32071,37392, -- Seasoned Outrunner
13518,22590,31906,37459, -- Veteran Outrunner
13519,22610,31941,37259, -- Champion Outrunner
13597,22623,31980,37299, -- Frostwolf Explosives Expert
13616,22551,31991,37310, -- Frostwolf Stable Master
13618,22765,32085,37406, -- Stabled Frostwolf
13798,22723,32025,37345, -- Jotek
14282,22738,31977,37296, -- Frostwolf Bloodhound
14285,22622,31976,37295, -- Frostwolf Battleguard
14770,22543,31967,37286, -- Dun Baldar North Warmaster
14771,22545,31969,37288, -- Dun Baldar South Warmaster
14772,22548,31972,37291, -- East Frostwolf Warmaster
14773,22560,32007,37326, -- Iceblood Warmaster
14774,22562,32009,37328, -- Icewing Warmaster
14775,22573,32087,37408, -- Stonehearth Warmaster
14776,22580,31909,37435, -- Tower Point Warmaster
14777,22596,31829,37468, -- West Frostwolf Warmaster
14942 -- Kartra Bloodsnarl
);

DELETE FROM `creature_template` WHERE `entry` = 22726; -- Alterac Ram (1) vs 22727 Alterac Ram (1)
UPDATE `creature_template` SET `Faction` = 1274 WHERE `entry` IN (
10990,22727,31921,37237 -- Alterac Ram
);

UPDATE `creature_template` SET `Faction` = 1275 WHERE `entry` IN (
10981,22737,31975,37294 -- Frostwolf
);

UPDATE `creature_template` SET `Faction` = 1335 WHERE `entry` IN (
11998,22549,31982,37301 -- Frostwolf Herald
);

