-- Remove Refloots 24079-24090 (purple itemlevel 40-63)
-- at times there were chances of up to 0.1*5 for one mob
-- care "tbc+" "wotlk+" comments
-- 24079	purple itemlevel 40-41
-- 24080	purple itemlevel 42-43
-- 24081	purple itemlevel 44-45
-- 24082	purple itemlevel 46-47
-- 24083	purple itemlevel 48-49
-- 24084	purple itemlevel 50-51
-- 24085	purple itemlevel 52-53
-- 24086	purple itemlevel 54-55
-- 24087	purple itemlevel 56-57
-- 24088	purple itemlevel 58-59
-- 24089	purple itemlevel 60-61
-- 24090	purple itemlevel 62-63

-- 60300	NPC LOOT (Purple World Drop) - (Item Levels: 40-43) - (NPC Levels: 38-40)
DELETE FROM `creature_loot_template` WHERE `entry` = 2474 AND `mincountOrRef` = -60301;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60300, -60300, 0.004, 0, 1 FROM `creature_template` WHERE `entry` IN ( -- 7 Items
2347, -- Wild Gryphon, -- 40, -- 40 - https://web.archive.org/web/20080102133734/http://wow.allakhazam.com/db/mob.html?wmob=2347
2473, -- Granistad	40	40 - https://web.archive.org/web/20071101083219/http://wow.allakhazam.com/db/mob.html?wmob=2473
2474, -- Kurdros	40	40 - https://web.archive.org/web/20071102180334/http://wow.allakhazam.com/db/mob.html?wmob=2474
667, -- https://www.wowhead.com/wotlk/npc=667/skullsplitter-warrior
696, -- https://www.wowhead.com/wotlk/npc=696/skullsplitter-axe-thrower
765, -- https://www.wowhead.com/wotlk/npc=765/swampwalker-elder
768, -- https://www.wowhead.com/wotlk/npc=768/shadow-panther
780, -- https://www.wowhead.com/wotlk/npc=780/skullsplitter-mystic
2247, -- https://www.wowhead.com/wotlk/npc=2247/syndicate-enforcer
2287, -- https://www.wowhead.com/wotlk/npc=2287/crushridge-warmonger
2571, -- https://www.wowhead.com/wotlk/npc=2571/boulderfist-lord
2585, -- https://www.wowhead.com/wotlk/npc=2585/stromgarde-vindicator
2596, -- https://www.wowhead.com/wotlk/npc=2596/daggerspine-sorceress
2715, -- https://www.wowhead.com/wotlk/npc=2715/dustbelcher-brute
2729, -- https://www.wowhead.com/wotlk/npc=2729/elder-crag-coyote
2892, -- https://www.wowhead.com/wotlk/npc=2892/stonevault-seer
2893, -- https://www.wowhead.com/wotlk/npc=2893/stonevault-bonesnapper
4302, -- https://www.wowhead.com/wotlk/npc=4302/scarlet-champion
4303, -- https://www.wowhead.com/wotlk/npc=4303/scarlet-abbot
4329, -- https://www.wowhead.com/wotlk/npc=4329/firemane-scout
4847, -- https://www.wowhead.com/wotlk/npc=4847/shadowforge-relic-hunter
4848, -- https://www.wowhead.com/wotlk/npc=4848/shadowforge-darkcaster
4853, -- https://www.wowhead.com/wotlk/npc=4853/stonevault-geomancer
4855, -- https://www.wowhead.com/wotlk/npc=4855/stonevault-brawler
4860, -- https://www.wowhead.com/wotlk/npc=4860/stone-steward
6069, -- https://www.wowhead.com/wotlk/npc=6069/maraudine-khan-guard
7011, -- https://www.wowhead.com/wotlk/npc=7011/earthen-rocksmasher
7012, -- https://www.wowhead.com/wotlk/npc=7012/earthen-sculptor
7030, -- https://www.wowhead.com/wotlk/npc=7030/shadowforge-geologist
7290, -- https://www.wowhead.com/wotlk/npc=7290/shadowforge-sharpshooter
7320, -- https://www.wowhead.com/wotlk/npc=7320/stonevault-mauler
7321, -- https://www.wowhead.com/wotlk/npc=7321/stonevault-flameweaver
7342, -- https://www.wowhead.com/wotlk/npc=7342/skeletal-summoner
7345, -- https://www.wowhead.com/wotlk/npc=7345/splinterbone-captain
7353, -- https://www.wowhead.com/wotlk/npc=7353/freezing-spirit
7396, -- https://www.wowhead.com/wotlk/npc=7396/earthen-stonebreaker
7397, -- https://www.wowhead.com/wotlk/npc=7397/earthen-stonecarver
11559, -- https://www.wowhead.com/classic/npc=11559/outcast-necromancer#comments
4356, -- Bloodfen Razormaw	39	40 -- 38-39 tbc+ - https://web.archive.org/web/20071031104544/http://wow.allakhazam.com/db/mob.html?wmob=4356
4398, -- Mudrock Burrower	39	40 - https://web.archive.org/web/20071105022832/http://wow.allakhazam.com/db/mob.html?wmob=4398
4694, -- Dread Ripper	39	40 - https://web.archive.org/web/20071113020806/http://wow.allakhazam.com/db/mob.html?wmob=4694
4392, -- Corrosive Swamp Ooze	38	40 - https://web.archive.org/web/20071101092437/http://wow.allakhazam.com/db/mob.html?wmob=4392
92, -- Rock Elemental	39	40 - https://web.archive.org/web/20070825002405/http://wow.allakhazam.com/db/mob.html?wmob=92
690, -- Cold Eye Basilisk	39	40 - https://web.archive.org/web/20070825131442/http://wow.allakhazam.com/db/mob.html?wmob=690
4685, -- Ley Hunter	39	40 - https://web.archive.org/web/20071101053856/http://wow.allakhazam.com/db/mob.html?wmob=4685
2473, -- Granistad	40	40 exclude? keep edgecases. . . - https://web.archive.org/web/20080101014300/http://wow.allakhazam.com:80/db/mob.html?wmob=2473
4863, -- Jadespine Basilisk	39	40 -- 37-38 tbc+ - https://web.archive.org/web/20071017042459/http://wow.allakhazam.com/db/mob.html?wmob=4863
7022); -- Venomlash Scorpid	39	40 -- 37-38 tbc+ - https://web.archive.org/web/20071017042552/http://wow.allakhazam.com/db/mob.html?wmob=7022
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(60300, 1980, 0, 1, 1, 1, 0, 'Underworld Band'),
(60300, 2825, 0, 1, 1, 1, 0, 'Bow of Searing Arrows'),
(60300, 867, 0, 1, 1, 1, 0, 'Gloves of Holy Might');

-- 60301	NPC LOOT (Purple World Drop) - (Item Levels: 40-44) - (NPC Levels: 40-41)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60301, -60301, 0.004, 0, 1 FROM `creature_template` WHERE `entry` IN ( -- 10 Items
2831, -- Giant Buzzard	39	41 - https://web.archive.org/web/20071231140530/http://wow.allakhazam.com/db/mob.html?wmob=2831
687, -- Jungle Stalker	40	41 - https://web.archive.org/web/20071224112953/http://wow.allakhazam.com/db/mob.html?wmob=687
1557, -- Elder Mistvale Gorilla	40	41 - https://web.archive.org/web/20071217112601/http://wow.allakhazam.com/db/mob.html?wmob=1557
2544, -- Southern Sand Crawler	40	41 - https://web.archive.org/web/20071230043051/http://wow.allakhazam.com/db/mob.html?wmob=2544
2734, -- Ridge Stalker Patriarch	40	41 - https://web.archive.org/web/20071230005714/http://wow.allakhazam.com/db/mob.html?wmob=2734
5286, -- Longtooth Runner	40	41 - https://web.archive.org/web/20071225191346/http://wow.allakhazam.com/db/mob.html?wmob=5286
5422, -- Scorpid Hunter	40	41 - https://web.archive.org/web/20071223213236/http://wow.allakhazam.com/db/mob.html?wmob=5422
11777, -- Shadowshard Rumbler	40	41 - https://web.archive.org/web/20071230131749/http://wow.allakhazam.com/db/mob.html?wmob=11777
11781, -- Ambershard Crusher	40	41 loottable changed in classic? excluded - https://web.archive.org/web/20071227065509/http://wow.allakhazam.com/db/mob.html?wmob=11781
11785, -- Ambereye Basilisk	40	41 - https://web.archive.org/web/20071225143004/http://wow.allakhazam.com/db/mob.html?wmob=11785
11787, -- Rock Borer	40	41 loottable changed in classic? - https://web.archive.org/web/20080109005535/http://wow.allakhazam.com/db/mob.html?wmob=11787
4345, -- Drywallow Daggermaw	40	41 -- 39-40 tbc+ - https://web.archive.org/web/20071105022757/http://wow.allakhazam.com/db/mob.html?wmob=4345
4357, -- Bloodfen Lashtail	40	41 -- 38-39 tbc+ - https://web.archive.org/web/20071031222849/http://wow.allakhazam.com/db/mob.html?wmob=4357
4415); -- Giant Darkfang Spider	40	41 -- 39-40 tbc+ - https://www.wowhead.com/classic/npc=4415/giant-darkfang-spider
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(60301, 868, 0, 1, 1, 1, 0, 'Ardent Custodian'),
(60301, 1981, 0, 1, 1, 1, 0, 'Icemail Jerkin'),
(60301, 1980, 0, 1, 1, 1, 0, 'Underworld Band'),
(60301, 1982, 0, 1, 1, 1, 0, 'Nightblade');

-- 60302	NPC LOOT (Purple World Drop) - (Item Levels: 40-42) - (NPC Levels: 41)
-- 60303	NPC LOOT (Purple World Drop) - (Item Levels: 40-45) - (NPC Levels: 41-42)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60303, -60303, 0.004, 0, 1 FROM `creature_template` WHERE `entry` IN ( -- 11 Items
2657, -- Trained Razorbeak	40	42 - https://web.archive.org/web/20071227070132/http://wow.allakhazam.com/db/mob.html?wmob=2657
11685, -- Maraudine Priest	40	42 - https://web.archive.org/web/20071230131738/http://wow.allakhazam.com/db/mob.html?wmob=11685
1087, -- Sawtooth Snapper	41	42 - https://web.archive.org/web/20071230031735/http://wow.allakhazam.com/db/mob.html?wmob=1087
1550, -- Thrashtail Basilisk	41	42 - https://web.archive.org/web/20071230143120/http://wow.allakhazam.com/db/mob.html?wmob=1550
2923, -- Mangy Silvermane	41	42 - https://web.archive.org/web/20071226221953/http://wow.allakhazam.com/db/mob.html?wmob=2923
4323, -- Searing Hatchling	41	42 - https://web.archive.org/web/20071228044340/http://wow.allakhazam.com/db/mob.html?wmob=4323
5425, -- Starving Blisterpaw	41	42 - https://web.archive.org/web/20071230193733/http://wow.allakhazam.com/db/mob.html?wmob=5425
11778, -- Shadowshard Smasher	41	42 - https://web.archive.org/web/20080109005530/http://wow.allakhazam.com/db/mob.html?wmob=11778
11786, -- Ambereye Reaver	41	42 - https://web.archive.org/web/20071225143009/http://wow.allakhazam.com/db/mob.html?wmob=11786
11788); -- Rock Worm	41	42 - https://web.archive.org/web/20080103063236/http://wow.allakhazam.com/db/mob.html?wmob=11788
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(60303, 1982, 0, 1, 1, 1, 0, 'Nightblade'),
(60303, 1981, 0, 1, 1, 1, 0, 'Icemail Jerkin'),
(60303, 2164, 0, 1, 1, 1, 0, 'Gut Ripper'),
(60303, 14549, 0, 1, 1, 1, 0, 'Boots of Avoidance');

-- 60305	NPC LOOT (Purple World Drop) - (Item Levels: 40-46) - (NPC Levels: 42-43)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60305, -60305, 0.004, 0, 1 FROM `creature_template` WHERE `entry` IN ( -- 14 Items
4399, -- Mudrock Borer (42-43) - https://web.archive.org/web/20071229171837/http://wow.allakhazam.com/db/mob.html?wmob=4399
2725, -- Scalding Whelp	41	43 - https://web.archive.org/web/20071227202159/http://wow.allakhazam.com/db/mob.html?wmob=2725
5307, -- Vale Screecher	41	43 - https://web.archive.org/web/20071217211443/http://wow.allakhazam.com/db/mob.html?wmob=5307
5428, -- Roc	41	43 - https://web.archive.org/web/20080103195830/http://wow.allakhazam.com/db/mob.html?wmob=5428
9396, -- Ground Pounder	41	43 - https://web.archive.org/web/20080104223439/http://wow.allakhazam.com/db/mob.html?wmob=9396
1558, -- Silverback Patriarch	42	43 - https://web.archive.org/web/20080103235207/http://wow.allakhazam.com/db/mob.html?wmob=1558
1713, -- Elder Shadowmaw Panther	42	43 - https://web.archive.org/web/20071229234204/http://wow.allakhazam.com/db/mob.html?wmob=1713
2730, -- Rabid Crag Coyote	42	43 - https://web.archive.org/web/20071102041154/http://wow.allakhazam.com/db/mob.html?wmob=2730
2791, -- Enraged Rock Elemental	42	43 - https://web.archive.org/web/20071229234345/http://wow.allakhazam.com/db/mob.html?wmob=2791
4324, -- Searing Whelp	42	43 - https://web.archive.org/web/20071231140606/http://wow.allakhazam.com/db/mob.html?wmob=4324
5260, -- Groddoc Ape	42	43 - https://web.archive.org/web/20080104223210/http://wow.allakhazam.com/db/mob.html?wmob=5260
5419, -- Glasshide Basilisk	42	43 - https://web.archive.org/web/20071230005850/http://wow.allakhazam.com/db/mob.html?wmob=5419
11782, -- Ambershard Destroyer	42	43 - https://web.archive.org/web/20071026071847/http://wow.allakhazam.com/db/mob.html?wmob=11782
14123, -- Steeljaw Snapper	42	43 - https://web.archive.org/web/20071225190343/http://wow.allakhazam.com/db/mob.html?wmob=14123
7405); -- Deadly Cleft Scorpid	42	43 -- 37-38 tbc+ - https://web.archive.org/web/20071217035115/http://wow.allakhazam.com/db/mob.html?wmob=7405
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(60305, 870, 0, 1, 1, 1, 0, 'Fiery War Axe'),
(60305, 2164, 0, 1, 1, 1, 0, 'Gut Ripper'),
(60305, 14549, 0, 1, 1, 1, 0, 'Boots of Avoidance'),
(60305, 873, 0, 1, 1, 1, 0, 'Staff of Jordan'),
(60305, 1447, 0, 1, 1, 1, 0, 'Ring of Saviors'),
(60305, 1169, 0, 1, 1, 1, 0, 'Blackskull Shield');

-- 60306	NPC LOOT (Purple World Drop) - (Item Levels: 42-44) - (NPC Levels: 43)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60306, -60306, 0.004, 0, 1 FROM `creature_template` WHERE `entry` = -- 6 Items
730; -- Tethis	43	43 exclude? - https://web.archive.org/web/20071227082229/http://wow.allakhazam.com/db/mob.html?wmob=730

-- 60307	NPC LOOT (Purple World Drop) - (Item Levels: 41-47) - (NPC Levels: 43-44)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60307, -60307, 0.004, 0, 1 FROM `creature_template` WHERE `entry` IN ( -- 12 Items
11790, -- 42-43 tbc+ https://web.archive.org/web/20080106091355/http://wow.allakhazam.com/db/mob.html?wmob=11790
2691, -- https://web.archive.org/web/20071227070144/http://wow.allakhazam.com/db/mob.html?wmob=2691
2736, -- Greater Rock Elemental	42	44 - https://web.archive.org/web/20071214012405/http://wow.allakhazam.com/db/mob.html?wmob=2736
2924, -- Silvermane Wolf	43	44 - https://web.archive.org/web/20071227070203/http://wow.allakhazam.com/db/mob.html?wmob=2924
5287, -- Longtooth Howler	43	44 - https://web.archive.org/web/20080105073607/http://wow.allakhazam.com/db/mob.html?wmob=5287
5300, -- Frayfeather Hippogryph	43	44 - https://web.archive.org/web/20071221160234/http://wow.allakhazam.com/db/mob.html?wmob=5300
5423, -- Scorpid Tail Lasher	43	44 - https://web.archive.org/web/20080103183830/http://wow.allakhazam.com/db/mob.html?wmob=5423
5646); -- Sandfury Axe Thrower	42	44 - https://web.archive.org/web/20071231140635/http://wow.allakhazam.com/db/mob.html?wmob=5646
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(60307, 940, 0, 1, 1, 1, 0, 'Robes of Insight'),
(60307, 1204, 0, 1, 1, 1, 0, 'The Green Tower'),
(60307, 1169, 0, 1, 1, 1, 0, 'Blackskull Shield'),
(60307, 1447, 0, 1, 1, 1, 0, 'Ring of Saviors');

-- 60309	NPC LOOT (Purple World Drop) - (Item Levels: 41-48) - (NPC Levels: 44-45)
DELETE FROM `creature_loot_template` WHERE `entry` = 5295 AND `mincountOrRef` = -60317; -- see insert
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60309, -60309, 0.004, 0, 1 FROM `creature_template` WHERE `entry` IN ( -- 16 Items
2928, -- https://web.archive.org/web/20080115141239/http://wow.allakhazam.com/db/mob.html?wmob=2928
5650, -- https://web.archive.org/web/20071225214515/http://wow.allakhazam.com/db/mob.html?wmob=5650
7856, -- https://web.archive.org/web/20071229073834/http://wow.allakhazam.com/db/mob.html?wmob=7856
8337, -- Dark Iron Steelshifter	42	45 - https://web.archive.org/web/20080102062158/http://wow.allakhazam.com/db/mob.html?wmob=8337
2658, -- Razorbeak Gryphon	43	45 - https://web.archive.org/web/20071227070137/http://wow.allakhazam.com/db/mob.html?wmob=2658
2726, -- Scorched Guardian	43	45 - https://web.archive.org/web/20080111155301/http://wow.allakhazam.com/db/mob.html?wmob=2726
5278, -- Sprite Darter	43	45 - https://web.archive.org/web/20080103074959/http://wow.allakhazam.com/db/mob.html?wmob=5278
5429, -- Fire Roc	43	45 - https://web.archive.org/web/20080112092259/http://wow.allakhazam.com/db/mob.html?wmob=5429
5856, -- Glassweb Spider	43	45 - https://web.archive.org/web/20080502023710/http://wow.allakhazam.com/db/mob.html?wmob=5856
8667, -- Gusting Vortex	43	45 - https://web.archive.org/web/20071226152728/http://wow.allakhazam.com/db/mob.html?wmob=8667
2686, -- Witherbark Broodguard	44	45 - https://web.archive.org/web/20080102003848/http://wow.allakhazam.com/db/mob.html?wmob=2686
5245, -- Zukk'ash Wasp	44	45 - https://web.archive.org/web/20080105004013/http://wow.allakhazam.com/db/mob.html?wmob=5245
5246, -- Zukk'ash Worker	44	45 - https://web.archive.org/web/20080105162008/http://wow.allakhazam.com/db/mob.html?wmob=5246
5304, -- Frayfeather Stagwing	44	45 - https://web.archive.org/web/20071230043142/http://wow.allakhazam.com/db/mob.html?wmob=5304
5426, -- Blisterpaw Hyena	44	45 - https://web.archive.org/web/20080103195827/http://wow.allakhazam.com/db/mob.html?wmob=5426
12219, -- Barbed Lasher	44	45 - https://web.archive.org/web/20071230131813/http://wow.allakhazam.com/db/mob.html?wmob=12219
5295); -- 60309	-60317	Enraged Feral Scar	44	45	NPC LOOT (Purple World Drop) - (Item Levels: 45-52) - (NPC Levels: 48-49)
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(60309, 867, 0, 1, 1, 1, 0, 'Gloves of Holy Might'),
(60309, 943, 0, 1, 1, 1, 0, 'Warden Staff'),
(60309, 2825, 0, 1, 1, 1, 0, 'Bow of Searing Arrows'),
(60309, 869, 0, 1, 1, 1, 0, 'Dazzling Longsword'),
(60309, 1204, 0, 1, 1, 1, 0, 'The Green Tower'),
(60309, 2100, 0, 1, 1, 1, 0, 'Precisely Calibrated Boomstick'),
(60309, 871, 0, 1, 1, 1, 0, 'Flurry Axe'),
(60309, 940, 0, 1, 1, 1, 0, 'Robes of Insight');

-- 60311	NPC LOOT (Purple World Drop) - (Item Levels: 42-49) - (NPC Levels: 45-46)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60311, -60311, 0.004, 0, 1 FROM `creature_template` WHERE `entry` IN ( -- 14 Items
5308, -- Rogue Vale Screecher	44	46 - https://web.archive.org/web/20080102133945/http://wow.allakhazam.com/db/mob.html?wmob=5308
7584, -- Wandering Forest Walker	44	46 - https://web.archive.org/web/20071231045809/http://wow.allakhazam.com/db/mob.html?wmob=7584
2925, -- Silvermane Howler	45	46 - https://web.archive.org/web/20080111155312/http://wow.allakhazam.com/db/mob.html?wmob=2925
5224, -- Murk Slitherer	45	46 - https://web.archive.org/web/20071229053310/http://wow.allakhazam.com/db/mob.html?wmob=5224
5244, -- Zukk'ash Stinger	45	46 - https://web.archive.org/web/20080106101901/http://wow.allakhazam.com/db/mob.html?wmob=5244
5247, -- Zukk'ash Tunneler	45	46 - https://web.archive.org/web/20080228024309/http://wow.allakhazam.com/db/mob.html?wmob=5247
5305, -- Frayfeather Skystormer	45	46 - https://web.archive.org/web/20080104162851/http://wow.allakhazam.com/db/mob.html?wmob=5305
5420, -- Glasshide Gazer	45	46 - https://web.archive.org/web/20071231150858/http://wow.allakhazam.com/db/mob.html?wmob=5420
5984, -- Starving Snickerfang	45	46 - https://web.archive.org/web/20080108091425/http://wow.allakhazam.com/db/mob.html?wmob=5984
7269, -- Scarab	44	46 -- 44-44 tbc+ - https://web.archive.org/web/20071231173128/http://wow.allakhazam.com/db/mob.html?wmob=7269 - maybe nerfed due to edgemasters
7268, -- Sandfury Guardian	45	46 -- 45-45 tbc+ - https://web.archive.org/web/20080103215227/http://wow.allakhazam.com/db/mob.html?wmob=7268
12220, -- Constrictor Vine	45	46 -- 44-45 tbc+ - https://web.archive.org/web/20071231140047/http://wow.allakhazam.com/db/mob.html?wmob=12220 - edgemasters
13696); -- Noxxious Scion	45	46 -- 44-44 tbc+ - https://web.archive.org/web/20080103224414/http://wow.allakhazam.com/db/mob.html?wmob=13696
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(60311, 1980, 0, 1, 1, 1, 0, 'Underworld Band'),
(60311, 2100, 0, 1, 1, 1, 0, 'Precisely Calibrated Boomstick'),
(60311, 867, 0, 1, 1, 1, 0, 'Gloves of Holy Might'),
(60311, 943, 0, 1, 1, 1, 0, 'Warden Staff'),
(60311, 14551, 0, 1, 1, 1, 0, 'Edgemaster\'s Handguards'),
(60311, 868, 0, 1, 1, 1, 0, 'Ardent Custodian'),
(60311, 1169, 0, 1, 1, 1, 0, 'Blackskull Shield');

-- 60312	NPC LOOT (Purple World Drop) - (Item Levels: 44-49) - (NPC Levels: 46)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60312, -60312, 0.004, 0, 1 FROM `creature_template` WHERE `entry` = -- XXX Items
11783; -- Theradrim Shardling	46	46 -- 45-45 tbc+ - https://web.archive.org/web/20071231140032/http://wow.allakhazam.com/db/mob.html?wmob=11783
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(60312, 943, 0, 1, 1, 1, 0, 'Warden Staff'),
(60312, 1982, 0, 1, 1, 1, 0, 'Nightblade'),
(60312, 14551, 0, 1, 1, 1, 0, 'Edgemaster\'s Handguards');

-- 60313	NPC LOOT (Purple World Drop) - (Item Levels: 45-48) - (NPC Levels: 46-47)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60313, -60313, 0.004, 0, 1 FROM `creature_template` WHERE `entry` IN ( -- 15 Items
5434, -- Coral Shark (46-47) - https://web.archive.org/web/20080104181513/http://wow.allakhazam.com/db/mob.html?wmob=5434
5465, -- Land Rager	45	47 - https://web.archive.org/web/20080104223309/http://wow.allakhazam.com/db/mob.html?wmob=5465
5843, -- Slave Worker	45	47 - https://web.archive.org/web/20071230035021/http://wow.allakhazam.com/db/mob.html?wmob=5843
5850, -- Blazing Elemental	45	47 - https://web.archive.org/web/20071226222250/http://wow.allakhazam.com/db/mob.html?wmob=5850
5853, -- Tempered War Golem	45	47 - https://web.archive.org/web/20071230043146/http://wow.allakhazam.com/db/mob.html?wmob=5853
5857, -- Searing Lava Spider	45	47 - https://web.archive.org/web/20071229234751/http://wow.allakhazam.com/db/mob.html?wmob=5857
5979, -- Wretched Lost One	45	47 - https://web.archive.org/web/20080220184334/http://wow.allakhazam.com:80/db/mob.html?wmob=5979
6126, -- Haldarr Trickster	45	47 - https://web.archive.org/web/20080104162906/http://wow.allakhazam.com/db/mob.html?wmob=6126
8095, -- Sul'lithuz Sandcrawler	45	47 - https://web.archive.org/web/20071231173134/http://wow.allakhazam.com/db/mob.html?wmob=8095
8759, -- Mosshoof Runner	45	47 - https://www.wowhead.com/classic/item=2291/kang-the-decapitator
2680, -- Vilebranch Wolf Pup	46	47 - https://web.archive.org/web/20071226221609/http://wow.allakhazam.com/db/mob.html?wmob=2680
5225, -- Murk Spitter	46	47 - https://web.archive.org/web/20071229053315/http://wow.allakhazam.com/db/mob.html?wmob=5225
5306, -- Frayfeather Patriarch	46	47 - https://web.archive.org/web/20080105082502/http://wow.allakhazam.com/db/mob.html?wmob=5306
5424, -- Scorpid Dunestalker	46	47 - https://web.archive.org/web/20080104223229/http://wow.allakhazam.com/db/mob.html?wmob=5424 - edgemasters
12207, -- Thessala Hydra	46	47 - https://web.archive.org/web/20071230004303/http://wow.allakhazam.com/db/mob.html?wmob=12207
7803, -- Scorpid Duneburrower	46	47 - https://web.archive.org/web/20080104223419/http://wow.allakhazam.com/db/mob.html?wmob=7803
12218, -- Vile Larva	45	47 -- 44-44 tbc+ - https://web.archive.org/web/20071231140042/http://wow.allakhazam.com/db/mob.html?wmob=12218
13599); -- Stolid Snapjaw	46	47 -- 45-46 tbc+ - https://web.archive.org/web/20071230004317/http://wow.allakhazam.com/db/mob.html?wmob=13599
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(60313, 1981, 0, 1, 1, 1, 0, 'Icemail Jerkin'),
(60313, 1979, 0, 1, 1, 1, 0, 'Wall of the Dead'),
(60313, 1982, 0, 1, 1, 1, 0, 'Nightblade'),
(60313, 1980, 0, 1, 1, 1, 0, 'Underworld Band'),
(60313, 2291, 0, 1, 1, 1, 0, 'Kang the Decapitator'),
(60313, 868, 0, 1, 1, 1, 0, 'Ardent Custodian'),
(60313, 14551, 0, 1, 1, 1, 0, 'Edgemaster\'s Handguards');

-- 60314	NPC LOOT (Purple World Drop) - (Item Levels: 46-48) - (NPC Levels: 47)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60314, -60314, 0.004, 0, 1 FROM `creature_template` WHERE `entry` = -- 7 Items
8120; -- Sul'lithuz Abomination	47	47 - https://web.archive.org/web/20080103200045/http://wow.allakhazam.com/db/mob.html?wmob=8120
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(60314, 2291, 0, 1, 1, 1, 0, 'Kang the Decapitator');

-- 60315	NPC LOOT (Purple World Drop) - (Item Levels: 46-49) - (NPC Levels: 47-48)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60315, -60315, 0.004, 0, 1 FROM `creature_template` WHERE `entry` IN ( -- 16 Items
2659, -- Razorbeak Skylord	46	48 - https://web.archive.org/web/20080110193012/http://wow.allakhazam.com/db/mob.html?wmob=2659
5855, -- Magma Elemental	46	48 - https://web.archive.org/web/20071226222305/http://wow.allakhazam.com/db/mob.html?wmob=5855
5982, -- Black Slayer	46	48 - https://web.archive.org/web/20071227202223/http://wow.allakhazam.com/db/mob.html?wmob=5982
5990, -- Redstone Basilisk	47	48 - https://web.archive.org/web/20080102095405/http://wow.allakhazam.com/db/mob.html?wmob=5990
5998, -- Nethergarde Foreman	46	48 - https://web.archive.org/web/20080101044449/http://wow.allakhazam.com/db/mob.html?wmob=5998 (horde farmable only)
6375, -- Thunderhead Hippogryph	46	48 - https://web.archive.org/web/20080102180005/http://wow.allakhazam.com/db/mob.html?wmob=6375
8917, -- Quarry Slave	46	48 - https://web.archive.org/web/20080507171830/http://wow.allakhazam.com/db/mob.html?wmob=8917
5288, -- Rabid Longtooth	47	48 - https://web.archive.org/web/20080105082458/http://wow.allakhazam.com/db/mob.html?wmob=5288
5427, -- Rabid Blisterpaw	47	48 - https://web.archive.org/web/20080104223234/http://wow.allakhazam.com/db/mob.html?wmob=5427
5441, -- Hazzali Wasp	47	48 - https://web.archive.org/web/20080104223239/http://wow.allakhazam.com/db/mob.html?wmob=5441
5452, -- Hazzali Worker	47	48 - https://web.archive.org/web/20080104223249/http://wow.allakhazam.com/db/mob.html?wmob=5452
5455, -- Centipaar Wasp	47	48 - https://web.archive.org/web/20080104215120/http://wow.allakhazam.com/db/mob.html?wmob=5455
5459, -- Centipaar Tunneler	47	48 - https://web.archive.org/web/20080104223304/http://wow.allakhazam.com/db/mob.html?wmob=5459
5462, -- Sea Spray	47	48 - https://web.archive.org/web/20071221160644/http://wow.allakhazam.com/db/mob.html?wmob=5462
8762, -- Timberweb Recluse	47	48 - https://web.archive.org/web/20071229053740/http://wow.allakhazam.com/db/mob.html?wmob=8762
8959, -- Felpaw Wolf	47	48 - https://web.archive.org/web/20071225191817/http://wow.allakhazam.com/db/mob.html?wmob=8959
11789, -- Deep Borer	46	48 -- 46-47 tbc+ - https://web.archive.org/web/20071231055513/http://wow.allakhazam.com/db/mob.html?wmob=11789
13323, -- Subterranean Diemetradon	46	48 -- 46-47 tbc+ - https://web.archive.org/web/20071231055513/http://wow.allakhazam.com/db/mob.html?wmob=11789
11784); -- Theradrim Guardian	47	48 -- 46-47 tbc+ - https://web.archive.org/web/20080103220815/http://wow.allakhazam.com/db/mob.html?wmob=11784
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(60315, 809, 0, 1, 1, 1, 0, 'Bloodrazor'),
(60315, 1979, 0, 1, 1, 1, 0, 'Wall of the Dead'),
(60315, 2164, 0, 1, 1, 1, 0, 'Gut Ripper'),
(60315, 17007, 0, 1, 1, 1, 0, 'Stonerender Gauntlets'),
(60315, 1982, 0, 1, 1, 1, 0, 'Nightblade'),
(60315, 1315, 0, 1, 1, 1, 0, 'Lei of Lilies'),
(60315, 14549, 0, 1, 1, 1, 0, 'Boots of Avoidance'),
(60315, 1981, 0, 1, 1, 1, 0, 'Icemail Jerkin');

-- 60316	NPC LOOT (Purple World Drop) - (Item Levels: 47-49) - (NPC Levels: 48)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60316, -60316, 0.004, 0, 1 FROM `creature_template` WHERE `entry` IN ( -- 6 Items
5833, -- Margol the Rager	48	48 -- 43-43 tbc+ - https://web.archive.org/web/20080102024442/http://wow.allakhazam.com/db/mob.html?wmob=5833
7977); -- Gammerita	48	48 - https://web.archive.org/web/20071219115814/http://wow.allakhazam.com/db/mob.html?wmob=7977

-- 60317	NPC LOOT (Purple World Drop) - (Item Levels: 47-50) - (NPC Levels: 48-49)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60317, -60317, 0.004, 0, 1 FROM `creature_template` WHERE `entry` IN ( -- 16 Items
5360, -- Deep Strider	47	49 - https://web.archive.org/web/20080104223219/http://wow.allakhazam.com/db/mob.html?wmob=5360
5430, -- Searing Roc	47	49 - https://web.archive.org/web/20071104033753/http://wow.allakhazam.com:80/db/mob.html?wmob=5430
5852, -- Inferno Elemental	47	49 - https://web.archive.org/web/20071027092335/http://wow.allakhazam.com/db/mob.html?wmob=5852
5854, -- Heavy War Golem	47	49 - https://web.archive.org/web/20071030081503/http://wow.allakhazam.com/db/mob.html?wmob=5854
5858, -- Greater Lava Spider	47	49 - https://web.archive.org/web/20071030001957/http://wow.allakhazam.com/db/mob.html?wmob=5858
8837, -- Muck Splash	47	49 - https://web.archive.org/web/20071102231734/http://wow.allakhazam.com/db/mob.html?wmob=8837
9318, -- Incendosaur	47	49 - https://web.archive.org/web/20071106111616/http://wow.allakhazam.com/db/mob.html?wmob=9318
9397, -- Living Storm	47	49 - https://web.archive.org/web/20071105082616/http://wow.allakhazam.com/db/mob.html?wmob=9397 - wasnt killed often enough
5421, -- Glasshide Petrifier	48	49 - https://www.wowhead.com/classic/npc=5421/glasshide-petrifier see
5453, -- Hazzali Tunneler	48	49 - https://web.archive.org/web/20071105082516/http://wow.allakhazam.com/db/mob.html?wmob=5453
5456, -- Centipaar Stinger	48	49 - https://web.archive.org/web/20071105063602/http://wow.allakhazam.com/db/mob.html?wmob=5456
5458, -- Centipaar Worker	48	49 - https://web.archive.org/web/20071105082526/http://wow.allakhazam.com/db/mob.html?wmob=5458
5461, -- Sea Elemental	48	49 - https://web.archive.org/web/20071029230324/http://wow.allakhazam.com/db/mob.html?wmob=5461
5992, -- Ashmane Boar	48	49 - https://web.archive.org/web/20071102170050/http://wow.allakhazam.com/db/mob.html?wmob=5992
6505, -- Ravasaur	48	49 - https://web.archive.org/web/20071031011730/http://wow.allakhazam.com/db/mob.html?wmob=6505
6509, -- Bloodpetal Lasher	48	49 - https://web.archive.org/web/20071031011745/http://wow.allakhazam.com/db/mob.html?wmob=6509
7097, -- Ironbeak Owl	48	49 - https://web.archive.org/web/20071026041801/http://wow.allakhazam.com/db/mob.html?wmob=7097
5861); -- Twilight Fire Guard	48	49 -- 44-46 tbc+ - https://web.archive.org/web/20071101092452/http://wow.allakhazam.com/db/mob.html?wmob=5861
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(60317, 1169, 0, 1, 1, 1, 0, 'Blackskull Shield'),
(60317, 17007, 0, 1, 1, 1, 0, 'Stonerender Gauntlets'),
(60317, 1315, 0, 1, 1, 1, 0, 'Lei of Lilies'),
(60317, 1447, 0, 1, 1, 1, 0, 'Ring of Saviors'),
(60317, 2915, 0, 1, 1, 1, 0, 'Taran Icebreaker'),
(60317, 2164, 0, 1, 1, 1, 0, 'Gut Ripper'),
(60317, 14549, 0, 1, 1, 1, 0, 'Boots of Avoidance'),
(60317, 942, 0, 1, 1, 1, 0, 'Freezing Band');

-- 60319	NPC LOOT (Purple World Drop) - (Item Levels: 48-51) - (NPC Levels: 49-50)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60319, -60319, 0.004, 0, 1 FROM `creature_template` WHERE `entry` IN ( -- 15 Items
8442, -- Shadowsilk Poacher	47	50 - https://web.archive.org/web/20071102100046/http://wow.allakhazam.com/db/mob.html?wmob=8442
5431, -- Surf Glider	48	50 - https://web.archive.org/web/20071030001921/http://wow.allakhazam.com/db/mob.html?wmob=5431
5432, -- Giant Surf Glider	48	50 - https://web.archive.org/web/20071030001926/http://wow.allakhazam.com/db/mob.html?wmob=5432
6377, -- Thunderhead Stagwing	48	50 - https://web.archive.org/web/20071104120017/http://wow.allakhazam.com/db/mob.html?wmob=6377
6556, -- Muculent Ooze	48	50 - https://web.archive.org/web/20071031011850/http://wow.allakhazam.com/db/mob.html?wmob=6556
9165, -- Fledgling Pterrordax	48	50 - https://web.archive.org/web/20071030065902/http://wow.allakhazam.com/db/mob.html?wmob=9165
2505, -- Saltwater Snapjaw	49	50 - https://web.archive.org/web/20071026041005/http://wow.allakhazam.com/db/mob.html?wmob=2505
5262, -- Groddoc Thunderer	49	50 - https://web.archive.org/web/20071103024623/http://wow.allakhazam.com/db/mob.html?wmob=5262
5450, -- Hazzali Stinger	49	50 - https://web.archive.org/web/20071105092103/http://wow.allakhazam.com/db/mob.html?wmob=5450
5451, -- Hazzali Swarmer	49	50 - https://web.archive.org/web/20071030210912/http://wow.allakhazam.com/db/mob.html?wmob=5451
5457, -- Centipaar Swarmer	49	50 - https://web.archive.org/web/20071031011705/http://wow.allakhazam.com/db/mob.html?wmob=5457
5985, -- Snickerfang Hyena	49	50 - https://web.archive.org/web/20071102174224/http://wow.allakhazam.com/db/mob.html?wmob=5985
6506, -- Ravasaur Runner	49	50 - https://web.archive.org/web/20071028110129/http://wow.allakhazam.com/db/mob.html?wmob=6506
6507, -- Ravasaur Hunter	49	50 - https://web.archive.org/web/20071031011735/http://wow.allakhazam.com/db/mob.html?wmob=6507
6511, -- Bloodpetal Thresher	49	50 - https://web.archive.org/web/20071031011755/http://wow.allakhazam.com/db/mob.html?wmob=6511
8921, -- Bloodhound	49	50 - https://web.archive.org/web/20071026041927/http://wow.allakhazam.com/db/mob.html?wmob=8921
8960, -- Felpaw Scavenger	49	50 - https://web.archive.org/web/20071026041937/http://wow.allakhazam.com/db/mob.html?wmob=8960
9162, -- Young Diemetradon	49	50 - https://web.archive.org/web/20071031011930/http://wow.allakhazam.com/db/mob.html?wmob=9162
9683, -- Lar'korwi Mate	49	50 - https://web.archive.org/web/20071030041154/http://wow.allakhazam.com/db/mob.html?wmob=9683
5454, -- Hazzali Sandreaver	49	50 - https://web.archive.org/web/20071105063557/http://wow.allakhazam.com/db/mob.html?wmob=5454
5276, -- Sprite Dragon	47	50 - https://web.archive.org/web/20071228102750/http://wow.allakhazam.com/db/mob.html?wmob=5276
7864, -- Lingering Highborne	48	50 - https://web.archive.org/web/20071229235719/http://wow.allakhazam.com/db/mob.html?wmob=7864
8760, -- Mosshoof Stag	49	50 - https://web.archive.org/web/20071212131555/http://wow.allakhazam.com/db/mob.html?wmob=8760
5460, -- Centipaar Sandreaver	49	50 - https://web.archive.org/web/20071230200048/http://wow.allakhazam.com/db/mob.html?wmob=5460
8763); -- Mistwing Rogue	49	50 - https://web.archive.org/web/20071212131600/http://wow.allakhazam.com/db/mob.html?wmob=8763
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(60319, 1169, 0, 1, 1, 1, 0, 'Blackskull Shield'),
(60319, 940, 0, 1, 1, 1, 0, 'Robes of Insight'),
(60319, 2824, 0, 1, 1, 1, 0, 'Hurricane'),
(60319, 942, 0, 1, 1, 1, 0, 'Freezing Band'),
(60319, 2915, 0, 1, 1, 1, 0, 'Taran Icebreaker'),
(60319, 2163, 0, 1, 1, 1, 0, 'Shadowblade'),
(60319, 871, 0, 1, 1, 1, 0, 'Flurry Axe');

-- 60320	NPC LOOT (Purple World Drop) - (Item Levels: 49-51) - (NPC Levels: 50)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60320, -60320, 0.004, 0, 1 FROM `creature_template` WHERE `entry` IN ( -- 7 Items
2757, -- Blacklash	50	50 - https://web.archive.org/web/20071101050813/http://wow.allakhazam.com/db/mob.html?wmob=2757
2759, -- Hematus	50	50 - https://web.archive.org/web/20071102031545/http://wow.allakhazam.com/db/mob.html?wmob=2759
8196); -- Occulus	50	50 - https://web.archive.org/web/20071028110421/http://wow.allakhazam.com/db/mob.html?wmob=8196
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(60320, 2100, 0, 1, 1, 1, 0, 'Precisely Calibrated Boomstick');

-- 60321	NPC LOOT (Purple World Drop) - (Item Levels: 49-52) - (NPC Levels: 50-51)
DELETE FROM `creature_loot_template` WHERE `entry` = 6002 AND `mincountOrRef` = -60319;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60321, -60321, 0.004, 0, 1 FROM `creature_template` WHERE `entry` IN ( -- 14 Items
3094, -- Unseen	49	51 - https://web.archive.org/web/20071102213917/http://wow.allakhazam.com/db/mob.html?wmob=3094
1822, -- Venom Mist Lurker	50	51 - https://web.archive.org/web/20071029164541/http://wow.allakhazam.com/db/mob.html?wmob=1822
2681, -- Vilebranch Raiding Wolf	50	51 - https://web.archive.org/web/20071027112003/http://wow.allakhazam.com/db/mob.html?wmob=2681
6508, -- Venomhide Ravasaur	50	51 - https://web.archive.org/web/20071031011740/http://wow.allakhazam.com/db/mob.html?wmob=6508
6514, -- Un'Goro Gorilla	50	51 - https://web.archive.org/web/20071031011805/http://wow.allakhazam.com/db/mob.html?wmob=6514
7099, -- Ironbeak Hunter	50	51 - https://web.archive.org/web/20071026041806/http://wow.allakhazam.com/db/mob.html?wmob=7099
7125, -- Jaedenar Hound	50	51 - https://web.archive.org/web/20071026064539/http://wow.allakhazam.com/db/mob.html?wmob=7125
8675, -- Felbeast	50	51 - https://web.archive.org/web/20071031065652/http://wow.allakhazam.com/db/mob.html?wmob=8675
10981, -- Frostwolf	50	51 - https://web.archive.org/web/20071031090611/http://wow.allakhazam.com/db/mob.html?wmob=10981
10990, -- Alterac Ram	50	51 - https://web.archive.org/web/20071011020117/http://wow.allakhazam.com/db/mob.html?wmob=10990
13676, -- Stabled Alterac Ram	50	51 - https://web.archive.org/web/20071017232151/http://wow.allakhazam.com/db/mob.html?wmob=13676
13618, -- Stabled Frostwolf	50	51 - https://web.archive.org/web/20071012200438/http://wow.allakhazam.com/db/mob.html?wmob=13618
6002, -- Nethergarde Riftwatcher	49	51 - https://web.archive.org/web/20071102184843/http://wow.allakhazam.com/db/mob.html?wmob=6002
5988); -- Scorpok Stinger	50	51 -- 46-47 tbc+ - https://web.archive.org/web/20071102174230/http://wow.allakhazam.com/db/mob.html?wmob=5988
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(60321, 812, 0, 1, 1, 1, 0, 'Glowing Brightwood Staff'),
(60321, 2100, 0, 1, 1, 1, 0, 'Precisely Calibrated Boomstick'),
(60321, 943, 0, 1, 1, 1, 0, 'Warden Staff'),
(60321, 2824, 0, 1, 1, 1, 0, 'Hurricane'),
(60321, 810, 0, 1, 1, 1, 0, 'Hammer of the Northern Wind'),
(60321, 2163, 0, 1, 1, 1, 0, 'Shadowblade');

-- 60323	NPC LOOT (Purple World Drop) - (Item Levels: 50-53) - (NPC Levels: 51-52)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60323, -60323, 0.004, 0, 1 FROM `creature_template` WHERE `entry` IN ( -- 16 Items
12124, -- Great Shark (51-52) - https://web.archive.org/web/20071227065524/http://wow.allakhazam.com/db/mob.html?wmob=12124
9554, -- Hammered Patron	48	52 - https://web.archive.org/web/20071031050519/http://wow.allakhazam.com/db/mob.html?wmob=9554
6347, -- Young Wavethrasher	51	52 - https://web.archive.org/web/20071029230328/http://wow.allakhazam.com/db/mob.html?wmob=6347
9545, -- Grim Patron	48	52 - https://web.archive.org/web/20071031040505/http://wow.allakhazam.com/db/mob.html?wmob=9545
9547, -- Guzzling Patron	48	52 - https://web.archive.org/web/20071031050514/http://wow.allakhazam.com/db/mob.html?wmob=9547
10043, -- Ribbly's Crony	48	52 - https://web.archive.org/web/20071031035056/http://wow.allakhazam.com/db/mob.html?wmob=10043
1791, -- Slavering Ghoul	50	52 - https://web.archive.org/web/20071026085912/http://wow.allakhazam.com/db/mob.html?wmob=1791
1809, -- Carrion Vulture	50	52 - https://web.archive.org/web/20071104000858/http://wow.allakhazam.com/db/mob.html?wmob=1809
6378, -- Thunderhead Skystormer	50	52 - https://web.archive.org/web/20071104120022/http://wow.allakhazam.com/db/mob.html?wmob=6378
6557, -- Primal Ooze	50	52 - https://web.archive.org/web/20071031011855/http://wow.allakhazam.com/db/mob.html?wmob=6557
7044, -- Black Drake	50	52 - https://web.archive.org/web/20071026024113/http://wow.allakhazam.com/db/mob.html?wmob=7044
8909, -- Fireguard	50	52 - https://web.archive.org/web/20071027092422/http://wow.allakhazam.com/db/mob.html?wmob=8909
9166, -- Pterrordax	50	52 - https://web.archive.org/web/20071022032229/http://wow.allakhazam.com/db/mob.html?wmob=9166
9477, -- Cloned Ooze	50	52 - https://web.archive.org/web/20071031011940/http://wow.allakhazam.com/db/mob.html?wmob=9477
5991, -- Redstone Crystalhide	51	52 - https://web.archive.org/web/20071030065536/http://wow.allakhazam.com/db/mob.html?wmob=5991
6510, -- Bloodpetal Flayer	51	52 - https://web.archive.org/web/20071031011750/http://wow.allakhazam.com/db/mob.html?wmob=6510
6513, -- Un'Goro Stomper	51	52 - https://web.archive.org/web/20071031011800/http://wow.allakhazam.com/db/mob.html?wmob=6513
6551, -- Gorishi Wasp	51	52 - https://web.archive.org/web/20071031011835/http://wow.allakhazam.com/db/mob.html?wmob=6551
6552, -- Gorishi Worker	51	52 - https://web.archive.org/web/20071031011840/http://wow.allakhazam.com/db/mob.html?wmob=6552
8961, -- Felpaw Ravager	51	52 - https://web.archive.org/web/20071026064614/http://wow.allakhazam.com/db/mob.html?wmob=8961
9163, -- Diemetradon	51	52 - https://web.archive.org/web/20071027152459/http://wow.allakhazam.com/db/mob.html?wmob=9163
9690, -- Ember Worg	51	52 - https://web.archive.org/web/20071031040526/http://wow.allakhazam.com/db/mob.html?wmob=9690
9878, -- Entropic Beast	51	52 - https://web.archive.org/web/20071026064624/http://wow.allakhazam.com/db/mob.html?wmob=9878
8925, -- Dredge Worm	50	52 -- 50-51 tbc+ - https://web.archive.org/web/20071031040304/http://wow.allakhazam.com/db/mob.html?wmob=8925
8926, -- Deep Stinger	50	52 -- 50-51 tbc+ - https://web.archive.org/web/20071031040309/http://wow.allakhazam.com/db/mob.html?wmob=8926
8927, -- Dark Screecher	50	52 -- 50-51 tbc+ - https://web.archive.org/web/20071031050339/http://wow.allakhazam.com/db/mob.html?wmob=8927
8928, -- Burrowing Thundersnout	50	52 -- 50-51 tbc+ - https://web.archive.org/web/20071031040314/http://wow.allakhazam.com/db/mob.html?wmob=8928
8932, -- Borer Beetle	50	52 -- 50-51 tbc+ - https://web.archive.org/web/20071031050344/http://wow.allakhazam.com/db/mob.html?wmob=8932
8933); -- Cave Creeper	50	52 -- 50-51 tbc+ - https://web.archive.org/web/20071029195819/http://wow.allakhazam.com/db/mob.html?wmob=8933
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(60323, 871, 0, 1, 1, 1, 0, 'Flurry Axe'),
(60323, 810, 0, 1, 1, 1, 0, 'Hammer of the Northern Wind'),
(60323, 812, 0, 1, 1, 1, 0, 'Glowing Brightwood Staff'),
(60323, 2291, 0, 1, 1, 1, 0, 'Kang the Decapitator'),
(60323, 2824, 0, 1, 1, 1, 0, 'Hurricane'),
(60323, 14551, 0, 1, 1, 1, 0, 'Edgemaster\'s Handguards'),
(60323, 2100, 0, 1, 1, 1, 0, 'Precisely Calibrated Boomstick'),
(60323, 14552, 0, 1, 1, 1, 0, 'Stockade Pauldrons'),
(60323, 3075, 0, 1, 1, 1, 0, 'Eye of Flame');

-- 60324	NPC LOOT (Purple World Drop) - (Item Levels: 51-53) - (NPC Levels: 52)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60324, -60324, 0.004, 0, 1 FROM `creature_template` WHERE `entry` IN ( -- 7 Items
8198, -- Tick	52	52 - https://web.archive.org/web/20071028141843/http://wow.allakhazam.com/db/mob.html?wmob=8198
13896, -- Scalebeard	52	52 - https://web.archive.org/web/20071029193557/http://wow.allakhazam.com/db/mob.html?wmob=13896
9026); -- Overmaster Pyron	52	52 -- 51-51 tbc+ - https://web.archive.org/web/20071027062806/http://wow.allakhazam.com/db/mob.html?wmob=9026
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(60324, 810, 0, 1, 1, 1, 0, 'Hammer of the Northern Wind');

-- 60325	NPC LOOT (Purple World Drop) - (Item Levels: 51-54) - (NPC Levels: 52-53)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60325, -60325, 0.004, 0, 1 FROM `creature_template` WHERE `entry` IN ( -- 14 Items
6501, -- Stegodon	52	53 - https://web.archive.org/web/20071028074916/http://wow.allakhazam.com/db/mob.html?wmob=6501
7098, -- Ironbeak Screecher	52	53 - https://web.archive.org/web/20071026064454/http://wow.allakhazam.com/db/mob.html?wmob=7098
10982, -- Whitewhisker Vermin	52	53 - https://web.archive.org/web/20071031090616/http://wow.allakhazam.com/db/mob.html?wmob=10982
13316, -- Coldmine Peon	52	53 - https://web.archive.org/web/20071031090848/http://wow.allakhazam.com/db/mob.html?wmob=13316
13397, -- Irondeep Peon	52	53 - https://web.archive.org/web/20071031090926/http://wow.allakhazam.com/db/mob.html?wmob=13397
5981, -- Portal Seeker	51	53 - https://web.archive.org/web/20071102180500/http://wow.allakhazam.com/db/mob.html?wmob=5981
6201, -- Legashi Rogue	51	53 - https://web.archive.org/web/20071026091256/http://wow.allakhazam.com/db/mob.html?wmob=6201
6553, -- Gorishi Reaver	51	53 - https://web.archive.org/web/20071028110134/http://wow.allakhazam.com/db/mob.html?wmob=6553
7031, -- Obsidian Elemental	51	53 - https://web.archive.org/web/20071031050219/http://wow.allakhazam.com/db/mob.html?wmob=7031
1821, -- Carrion Lurker	52	53 - https://web.archive.org/web/20071029194213/http://wow.allakhazam.com/db/mob.html?wmob=1821
5993, -- Helboar	52	53 - https://web.archive.org/web/20071028090732/http://wow.allakhazam.com/db/mob.html?wmob=5993
6348, -- Wavethrasher	52	53 - https://web.archive.org/web/20071029165248/http://wow.allakhazam.com/db/mob.html?wmob=6348
6512, -- Bloodpetal Trapper	52	53 - https://web.archive.org/web/20071027135954/http://wow.allakhazam.com/db/mob.html?wmob=6512
6516, -- Un'Goro Thunderer	52	53 - https://web.archive.org/web/20071026113447/http://wow.allakhazam.com/db/mob.html?wmob=6516
6554, -- Gorishi Stinger	52	53 - https://web.archive.org/web/20071031011845/http://wow.allakhazam.com/db/mob.html?wmob=6554
6555, -- Gorishi Tunneler	52	53 - https://web.archive.org/web/20071028074921/http://wow.allakhazam.com/db/mob.html?wmob=6555
7126, -- Jaedenar Hunter	52	53 - https://web.archive.org/web/20071026091603/http://wow.allakhazam.com/db/mob.html?wmob=7126
7136, -- Infernal Sentry	52	53 - https://web.archive.org/web/20071026064544/http://wow.allakhazam.com/db/mob.html?wmob=7136
8761, -- Mosshoof Courser	52	53 - https://web.archive.org/web/20071026061737/http://wow.allakhazam.com/db/mob.html?wmob=8761
8764, -- Mistwing Ravager	52	53 - https://web.archive.org/web/20071030041058/http://wow.allakhazam.com/db/mob.html?wmob=8764
9691, -- Venomtip Scorpid	52	53 - https://web.archive.org/web/20071031040530/http://wow.allakhazam.com/db/mob.html?wmob=9691
10221, -- Bloodaxe Worg Pup	52	53 - https://web.archive.org/web/20071105213019/http://wow.allakhazam.com/db/mob.html?wmob=10221
10986, -- Snowblind Harpy	52	53 - https://web.archive.org/web/20071031090621/http://wow.allakhazam.com/db/mob.html?wmob=10986
10987, -- Irondeep Trogg	52	53 - https://web.archive.org/web/20071031062321/http://wow.allakhazam.com/db/mob.html?wmob=10987
10991, -- Wildpaw Gnoll	52	53 - https://web.archive.org/web/20071031062326/http://wow.allakhazam.com/db/mob.html?wmob=10991
11603, -- Whitewhisker Digger	52	53 - https://web.archive.org/web/20071031062342/http://wow.allakhazam.com/db/mob.html?wmob=11603
11678); -- Snowblind Ambusher	52	53 - https://web.archive.org/web/20071031062406/http://wow.allakhazam.com/db/mob.html?wmob=11678
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(60325, 3075, 0, 1, 1, 1, 0, 'Eye of Flame'),
(60325, 809, 0, 1, 1, 1, 0, 'Bloodrazor'),
(60325, 1979, 0, 1, 1, 1, 0, 'Wall of the Dead'),
(60325, 2244, 0, 1, 1, 1, 0, 'Krol Blade'),
(60325, 14552, 0, 1, 1, 1, 0, 'Stockade Pauldrons'),
(60325, 833, 0, 1, 1, 1, 0, 'Lifestone');

-- 60327	NPC LOOT (Purple World Drop) - (Item Levels: 52-55) - (NPC Levels: 53-54)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60327, -60327, 0.004, 0, 1 FROM `creature_template` WHERE `entry` IN ( -- 16 Items
6502, -- Plated Stegodon	52	54 - https://web.archive.org/web/20071027152302/http://wow.allakhazam.com/db/mob.html?wmob=6502
6503, -- Spiked Stegodon	53	54 - https://web.archive.org/web/20071027173344/http://wow.allakhazam.com/db/mob.html?wmob=6503
9694, -- Slavering Ember Worg	53	54 - https://web.archive.org/web/20071031050549/http://wow.allakhazam.com/db/mob.html?wmob=9694
11600, -- Irondeep Shaman	53	54 - https://web.archive.org/web/20071031062331/http://wow.allakhazam.com/db/mob.html?wmob=11600
11604, -- Whitewhisker Geomancer	53	54 - https://web.archive.org/web/20071031062346/http://wow.allakhazam.com/db/mob.html?wmob=11604
9167, -- Frenzied Pterrordax	52	54 - https://web.archive.org/web/20071024113434/http://wow.allakhazam.com/db/mob.html?wmob=9167
9879, -- Entropic Horror	53	54 - https://web.archive.org/web/20071026064629/http://wow.allakhazam.com/db/mob.html?wmob=9879
1785, -- Skeletal Terror	52	54 - https://web.archive.org/web/20071105034950/http://wow.allakhazam.com/db/mob.html?wmob=1785
6379, -- Thunderhead Patriarch	52	54 - https://web.archive.org/web/20071104120028/http://wow.allakhazam.com/db/mob.html?wmob=6379
6380, -- Thunderhead Consort	52	54 - https://web.archive.org/web/20071104120032/http://wow.allakhazam.com/db/mob.html?wmob=6380
6518, -- Tar Lurker	52	54 - https://web.archive.org/web/20071031011815/http://wow.allakhazam.com/db/mob.html?wmob=6518
6559, -- Glutinous Ooze	52	54 - https://web.archive.org/web/20071027152308/http://wow.allakhazam.com/db/mob.html?wmob=6559
10605, -- Scarlet Medic	52	54 - https://web.archive.org/web/20071104131221/http://wow.allakhazam.com/db/mob.html?wmob=10605
11552, -- Timbermaw Mystic	52	54 - https://web.archive.org/web/20071026085616/http://wow.allakhazam.com/db/mob.html?wmob=11552
1817, -- Diseased Wolf	53	54 - https://web.archive.org/web/20071105231143/http://wow.allakhazam.com/db/mob.html?wmob=1817
6349, -- Great Wavethrasher	53	54 - https://web.archive.org/web/20071026041720/http://wow.allakhazam.com/db/mob.html?wmob=6349
6352, -- Coralshell Lurker	53	54 - https://web.archive.org/web/20071030002022/http://wow.allakhazam.com/db/mob.html?wmob=6352
6520, -- Scorching Elemental	53	54 - https://web.archive.org/web/20071027062757/http://wow.allakhazam.com/db/mob.html?wmob=6520
7048, -- Scalding Broodling	53	54 - https://web.archive.org/web/20071026072849/http://wow.allakhazam.com/db/mob.html?wmob=7048
7132, -- Toxic Horror	53	54 - https://web.archive.org/web/20071026024138/http://wow.allakhazam.com/db/mob.html?wmob=7132
7135, -- Infernal Bodyguard	53	54 - https://web.archive.org/web/20071026091648/http://wow.allakhazam.com/db/mob.html?wmob=7135
8596, -- Plaguehound Runt	53	54 - https://web.archive.org/web/20071026002455/http://wow.allakhazam.com/db/mob.html?wmob=8596
9416, -- Scarshield Worg	53	54 - https://web.archive.org/web/20071106041028/http://wow.allakhazam.com/db/mob.html?wmob=9416
11675, -- Snowblind Windcaller	53	54 - https://web.archive.org/web/20071031090626/http://wow.allakhazam.com/db/mob.html?wmob=11675
11837, -- Wildpaw Shaman	53	54 - https://web.archive.org/web/20071031090631/http://wow.allakhazam.com/db/mob.html?wmob=11837
14282, -- Frostwolf Bloodhound	53	54 - https://web.archive.org/web/20071031091107/http://wow.allakhazam.com/db/mob.html?wmob=14282
14283, -- Stormpike Owl	53	54 - https://web.archive.org/web/20071031062736/http://wow.allakhazam.com/db/mob.html?wmob=14283
12418, -- Gordok Hyena	52	54 - https://web.archive.org/web/20071030030621/http://wow.allakhazam.com/db/mob.html?wmob=12418
8910); -- Blazing Fireguard	52	54 -- 52-52 in tbc+ - https://web.archive.org/web/20071027092430/http://wow.allakhazam.com/db/mob.html?wmob=8910
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(60327, 1979, 0, 1, 1, 1, 0, 'Wall of the Dead'),
(60327, 1315, 0, 1, 1, 1, 0, 'Lei of Lilies'),
(60327, 2244, 0, 1, 1, 1, 0, 'Krol Blade'),
(60327, 647, 0, 1, 1, 1, 0, 'Destiny'),
(60327, 17007, 0, 1, 1, 1, 0, 'Stonerender Gauntlets'),
(60327, 833, 0, 1, 1, 1, 0, 'Lifestone'),
(60327, 811, 0, 1, 1, 1, 0, 'Axe of the Deep Woods'),
(60327, 809, 0, 1, 1, 1, 0, 'Bloodrazor');

-- 60328	NPC LOOT (Purple World Drop) - (Item Levels: 53-55) - (NPC Levels: 54)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60328, -60328, 0.004, 0, 1 FROM `creature_template` WHERE `entry` IN ( -- 11 Items
10040, -- Gorishi Hive Guard	54	54 - https://web.archive.org/web/20071031014833/http://wow.allakhazam.com/db/mob.html?wmob=10040
13022); -- Whip Lasher	54	54 - https://web.archive.org/web/20071105202528/http://wow.allakhazam.com/db/mob.html?wmob=13022
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(60328, 2244, 0, 1, 1, 1, 0, 'Krol Blade'),
(60328, 942, 0, 1, 1, 1, 0, 'Freezing Band'),
(60328, 2915, 0, 1, 1, 1, 0, 'Taran Icebreaker'),
(60328, 833, 0, 1, 1, 1, 0, 'Lifestone'),
(60328, 811, 0, 1, 1, 1, 0, 'Axe of the Deep Woods');

-- 60329	NPC LOOT (Purple World Drop) - (Item Levels: 53-56) - (NPC Levels: 54-55)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60329, -60329, 0.004, 0, 1 FROM `creature_template` WHERE `entry` IN ( -- 16 Items
11602, -- Irondeep Skullthumper	54	55 - https://web.archive.org/web/20071031062336/http://wow.allakhazam.com/db/mob.html?wmob=11602
9695, -- Deathlash Scorpid	54	55 - https://web.archive.org/web/20071031050554/http://wow.allakhazam.com/db/mob.html?wmob=9695
7037, -- Thaurissan Firewalker	53	55 - https://web.archive.org/web/20071031050229/http://wow.allakhazam.com/db/mob.html?wmob=7037
7039, -- War Reaver	53	55 - https://web.archive.org/web/20071031050236/http://wow.allakhazam.com/db/mob.html?wmob=7039
7045, -- Scalding Drake	53	55 - https://web.archive.org/web/20071026091441/http://wow.allakhazam.com/db/mob.html?wmob=7045
7447, -- Fledgling Chillwind	53	55 - https://web.archive.org/web/20071104160629/http://wow.allakhazam.com/db/mob.html?wmob=7447
7450, -- Ragged Owlbeast	53	55 - https://web.archive.org/web/20071101195820/http://wow.allakhazam.com/db/mob.html?wmob=7450
7457, -- Rogue Ice Thistle	53	55 - https://web.archive.org/web/20071103054409/http://wow.allakhazam.com/db/mob.html?wmob=7457
8540, -- Torn Screamer	53	55 - https://web.archive.org/web/20071105023324/http://wow.allakhazam.com/db/mob.html?wmob=8540
8600, -- Plaguebat	53	55 - https://web.archive.org/web/20071031091847/http://wow.allakhazam.com/db/mob.html?wmob=8600
9164, -- Elder Diemetradon	54	55 - https://web.archive.org/web/20071027152503/http://wow.allakhazam.com/db/mob.html?wmob=9164
9452, -- Scarlet Enchanter	53	55 - https://web.archive.org/web/20071030130853/http://wow.allakhazam.com/db/mob.html?wmob=9452
1824, -- Plague Lurker	54	55 - https://web.archive.org/web/20071029194218/http://wow.allakhazam.com/db/mob.html?wmob=1824
6010, -- Felhound	54	55 - https://web.archive.org/web/20071102174244/http://wow.allakhazam.com/db/mob.html?wmob=6010
6498, -- Devilsaur	54	55 - https://web.archive.org/web/20071031011711/http://wow.allakhazam.com/db/mob.html?wmob=6498
6500, -- Tyrant Devilsaur	54	55 - https://web.archive.org/web/20071031011720/http://wow.allakhazam.com/db/mob.html?wmob=6500
6521, -- Living Blaze	54	55 - https://web.archive.org/web/20071027062801/http://wow.allakhazam.com/db/mob.html?wmob=6521
8519, -- Blighted Surge	54	55 - https://web.archive.org/web/20071030002142/http://wow.allakhazam.com/db/mob.html?wmob=8519
8603, -- Carrion Grub	54	55 - https://web.archive.org/web/20071105183814/http://wow.allakhazam.com/db/mob.html?wmob=8603
10659, -- Cobalt Whelp	54	55 - https://web.archive.org/web/20071018201043/http://wow.allakhazam.com/db/mob.html?wmob=10659
11605, -- Whitewhisker Overseer	54	55 - https://web.archive.org/web/20071031062351/http://wow.allakhazam.com/db/mob.html?wmob=11605
11735, -- Stonelash Scorpid	54	55 - https://web.archive.org/web/20071101001958/http://wow.allakhazam.com/db/mob.html?wmob=11735
8922); -- Bloodhound Mastiff	54	55 -- 52-53 tbc+ - https://web.archive.org/web/20071031050334/http://wow.allakhazam.com/db/mob.html?wmob=8922
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(60329, 1315, 0, 1, 1, 1, 0, 'Lei of Lilies'),
(60329, 942, 0, 1, 1, 1, 0, 'Freezing Band'),
(60329, 17007, 0, 1, 1, 1, 0, 'Stonerender Gauntlets'),
(60329, 811, 0, 1, 1, 1, 0, 'Axe of the Deep Woods'),
(60329, 2099, 0, 1, 1, 1, 0, 'Dwarven Hand Cannon'),
(60329, 647, 0, 1, 1, 1, 0, 'Destiny'),
(60329, 2915, 0, 1, 1, 1, 0, 'Taran Icebreaker'),
(60329, 2246, 0, 1, 1, 1, 0, 'Myrmidon\'s Signet');

-- 60330	NPC LOOT (Purple World Drop) - (Item Levels: 54-56) - (NPC Levels: 55)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60330, -60330, 0.004, 0, 1 FROM `creature_template` WHERE `entry` IN ( -- 11 Items
10919, -- Shatterspear Troll	52	58 -- use 55 due to scrolls III - https://web.archive.org/web/20071030063647/http://wow.allakhazam.com/db/mob.html?wmob=10919
2931, -- Zaricotl	55	55 - https://web.archive.org/web/20071102041204/http://wow.allakhazam.com/db/mob.html?wmob=2931
9622, -- U'cha	55	55 - https://web.archive.org/web/20071103054414/http://wow.allakhazam.com/db/mob.html?wmob=9622
12052, -- Frostwolf Warrior	55	55 - https://web.archive.org/web/20071012174800/http://wow.allakhazam.com/db/mob.html?wmob=12052
15333); -- Silicate Feeder	55	55 - https://web.archive.org/web/20071017232256/http://wow.allakhazam.com/db/mob.html?wmob=15333
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(60330, 2245, 0, 1, 1, 1, 0, 'Helm of Narv'),
(60330, 647, 0, 1, 1, 1, 0, 'Destiny'),
(60330, 2246, 0, 1, 1, 1, 0, 'Myrmidon\'s Signet'),
(60330, 2824, 0, 1, 1, 1, 0, 'Hurricane'),
(60330, 2163, 0, 1, 1, 1, 0, 'Shadowblade');

-- 60331	NPC LOOT (Purple World Drop) - (Item Levels: 54-57) - (NPC Levels: 55-56)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60331, -60331, 0.004, 0, 1 FROM `creature_template` WHERE `entry` IN ( -- 15 Items
7049, -- Flamescale Broodling	55	56 - https://web.archive.org/web/20071026091446/http://wow.allakhazam.com/db/mob.html?wmob=7049
1884, -- Scarlet Lumberjack	54	56 - https://web.archive.org/web/20071106033834/http://wow.allakhazam.com/db/mob.html?wmob=1884
6499, -- Ironhide Devilsaur	54	56 - https://web.archive.org/web/20071031011715/http://wow.allakhazam.com/db/mob.html?wmob=6499
7451, -- Raging Owlbeast	54	56 - https://web.archive.org/web/20071101002234/http://wow.allakhazam.com/db/mob.html?wmob=7451
8534, -- Putrid Gargoyle	54	56 - https://web.archive.org/web/20071028013638/http://wow.allakhazam.com/db/mob.html?wmob=8534
8601, -- Noxious Plaguebat	54	56 - https://web.archive.org/web/20071105183809/http://wow.allakhazam.com/db/mob.html?wmob=8601
10580, -- Fetid Zombie	54	56 - https://web.archive.org/web/20071105022153/http://wow.allakhazam.com/db/mob.html?wmob=10580
10661, -- Spell Eater	54	56 - https://web.archive.org/web/20071018132702/http://wow.allakhazam.com/db/mob.html?wmob=10661
14460, -- Blazing Invader	54	56 - https://web.archive.org/web/20071027090703/http://wow.allakhazam.com/db/mob.html?wmob=14460
7376, -- Sky Shadow	55	56 - https://web.archive.org/web/20071103105716/http://wow.allakhazam.com/db/mob.html?wmob=7376
7430, -- Frostsaber Cub	55	56 - https://web.archive.org/web/20071101002228/http://wow.allakhazam.com/db/mob.html?wmob=7430
7455, -- Winterspring Owl	54	56 - https://web.archive.org/web/20071012174953/http://wow.allakhazam.com/db/mob.html?wmob=7455
8520, -- Plague Ravager	55	56 - https://web.archive.org/web/20071030002147/http://wow.allakhazam.com/db/mob.html?wmob=8520
8597, -- Plaguehound	55	56 - https://web.archive.org/web/20071026002500/http://wow.allakhazam.com/db/mob.html?wmob=8597
9697, -- Giant Ember Worg	55	56 - https://web.archive.org/web/20071031040535/http://wow.allakhazam.com/db/mob.html?wmob=9697
10375, -- Spire Spiderling	55	56 - https://web.archive.org/web/20071029193524/http://wow.allakhazam.com/db/mob.html?wmob=10375
10660, -- Cobalt Broodling	55	56 - https://web.archive.org/web/20071018201048/http://wow.allakhazam.com/db/mob.html?wmob=10660
11738, -- Sand Skitterer	55	56 - https://web.archive.org/web/20071029164230/http://wow.allakhazam.com/db/mob.html?wmob=11738
11740, -- Dredge Striker	55	56 - https://web.archive.org/web/20071101002001/http://wow.allakhazam.com/db/mob.html?wmob=11740
13279, -- Discordant Surge	54	56 - https://web.archive.org/web/20071030001133/http://wow.allakhazam.com/db/mob.html?wmob=13279
8911, -- Fireguard Destroyer	54	56 -- 54-54 tbc+ - https://web.archive.org/web/20071027092431/http://wow.allakhazam.com/db/mob.html?wmob=8911
8920); -- Weapon Technician	55	56 -- 53-54 tbc+ - https://web.archive.org/web/20071031040254/http://wow.allakhazam.com/db/mob.html?wmob=8920
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(60331, 2099, 0, 1, 1, 1, 0, 'Dwarven Hand Cannon'),
(60331, 2163, 0, 1, 1, 1, 0, 'Shadowblade'),
(60331, 2246, 0, 1, 1, 1, 0, 'Myrmidon\'s Signet'),
(60331, 2824, 0, 1, 1, 1, 0, 'Hurricane'),
(60331, 2915, 0, 1, 1, 1, 0, 'Taran Icebreaker'),
(60331, 647, 0, 1, 1, 1, 0, 'Destiny'),
(60331, 2245, 0, 1, 1, 1, 0, 'Helm of Narv'),
(60331, 1168, 0, 1, 1, 1, 0, 'Skullflame Shield');

-- 60332	NPC LOOT (Purple World Drop) - (Item Levels: 55-57) - (NPC Levels: 56)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60332, -60332, 0.004, 0, 1 FROM `creature_template` WHERE `entry` IN ( -- 11 Items
7137, -- Immolatus	56	56 - https://web.archive.org/web/20071026041832/http://wow.allakhazam.com/db/mob.html?wmob=7137
9376, -- Blazerunner	56	56 - https://web.archive.org/web/20071027062811/http://wow.allakhazam.com/db/mob.html?wmob=9376
10041, -- Gorishi Hive Queen	56	56 - https://web.archive.org/web/20071031014839/http://wow.allakhazam.com/db/mob.html?wmob=10041
10662, -- Spellmaw	56	56 - https://web.archive.org/web/20071018132707/http://wow.allakhazam.com/db/mob.html?wmob=10662
13325, -- Seasoned Mountaineer	56	56 - https://web.archive.org/web/20070815131218/http://wow.allakhazam.com/db/mob.html?wmob=13325
9684, -- Lar'korwi	56	56 - https://web.archive.org/web/20071029034613/http://wow.allakhazam.com/db/mob.html?wmob=9684
11736, -- Stonelash Pincer	56	56 - https://web.archive.org/web/20071029034327/http://wow.allakhazam.com/db/mob.html?wmob=11736
13197, -- Fel Lash	56	56 - https://web.archive.org/web/20071101002104/http://wow.allakhazam.com/db/mob.html?wmob=13197
13330, -- Seasoned Warrior	56	56, they exist in some form in some version of av
13327); -- Seasoned Sentinel	56	56, they exist in some form in some version of av
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(60332, 810, 0, 1, 1, 1, 0, 'Hammer of the Northern Wind'),
(60332, 812, 0, 1, 1, 1, 0, 'Glowing Brightwood Staff'),
(60332, 2246, 0, 1, 1, 1, 0, 'Myrmidon\'s Signet'),
(60332, 1168, 0, 1, 1, 1, 0, 'Skullflame Shield'),
(60332, 2099, 0, 1, 1, 1, 0, 'Dwarven Hand Cannon');

-- 60333	NPC LOOT (Purple World Drop) - (Item Levels: 55-58) - (NPC Levels: 56-57)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60333, -60333, 0.004, 0, 1 FROM `creature_template` WHERE `entry` IN ( -- 16 Items
13301, -- Hive'Ashi Ambusher	56	57 - https://web.archive.org/web/20071109110619/http://wow.allakhazam.com/db/mob.html?wmob=13301
13448, -- Sergeant Yazra Bloodsnarl	56	57 - https://web.archive.org/web/20071031062646/http://wow.allakhazam.com/db/mob.html?wmob=13448
1883, -- Scarlet Worker	55	57 - https://web.archive.org/web/20070826014230/http://wow.allakhazam.com/db/mob.html?wmob=1883
7032, -- Greater Obsidian Elemental	55	57 - https://web.archive.org/web/20071031050224/http://wow.allakhazam.com/db/mob.html?wmob=7032
7379, -- Deadwind Ogre Mage	55	57 - https://web.archive.org/web/20071104033859/http://wow.allakhazam.com/db/mob.html?wmob=7379
7448, -- Chillwind Chimaera	55	57 - https://web.archive.org/web/20071012231225/http://wow.allakhazam.com/db/mob.html?wmob=7448
8541, -- Hate Shrieker	55	57 - https://web.archive.org/web/20071030145155/http://wow.allakhazam.com/db/mob.html?wmob=8541
9451, -- Scarlet Archmage	55	57 - https://web.archive.org/web/20071101110437/http://wow.allakhazam.com/db/mob.html?wmob=9451
10411, -- Eye of Naxxramas	55	57 - https://web.archive.org/web/20071028004207/http://wow.allakhazam.com/db/mob.html?wmob=10411
10608, -- Scarlet Priest	55	57 - https://web.archive.org/web/20071109164350/http://wow.allakhazam.com/db/mob.html?wmob=10608
11744, -- Dust Stormer	55	57 - https://web.archive.org/web/20071026023457/http://wow.allakhazam.com/db/mob.html?wmob=11744
14462, -- Thundering Invader	55	57 - https://web.archive.org/web/20071104115846/http://wow.allakhazam.com/db/mob.html?wmob=14462
7431, -- Frostsaber	56	57 - https://web.archive.org/web/20071031065554/http://wow.allakhazam.com/db/mob.html?wmob=7431
8521, -- Blighted Horror	56	57 - https://web.archive.org/web/20071029195809/http://wow.allakhazam.com/db/mob.html?wmob=8521
8605, -- Carrion Devourer	56	57 - https://web.archive.org/web/20071105192017/http://wow.allakhazam.com/db/mob.html?wmob=8605
9696, -- Bloodaxe Worg	56	57 - https://web.archive.org/web/20071106041037/http://wow.allakhazam.com/db/mob.html?wmob=9696
9698, -- Firetail Scorpid	56	57 - https://web.archive.org/web/20071031050559/http://wow.allakhazam.com/db/mob.html?wmob=9698
11838, -- Wildpaw Mystic	56	57 - https://web.archive.org/web/20071031090640/http://wow.allakhazam.com/db/mob.html?wmob=11838
11839, -- Wildpaw Brute	56	57 - https://web.archive.org/web/20071031090641/http://wow.allakhazam.com/db/mob.html?wmob=11839
12125); -- Mammoth Shark	56	57 - https://web.archive.org/web/20071102230321/http://wow.allakhazam.com/db/mob.html?wmob=12125
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(60333, 812, 0, 1, 1, 1, 0, 'Glowing Brightwood Staff'),
(60333, 2245, 0, 1, 1, 1, 0, 'Helm of Narv'),
(60333, 810, 0, 1, 1, 1, 0, 'Hammer of the Northern Wind'),
(60333, 2163, 0, 1, 1, 1, 0, 'Shadowblade'),
(60333, 1443, 0, 1, 1, 1, 0, 'Jeweled Amulet of Cainwyn'),
(60333, 2824, 0, 1, 1, 1, 0, 'Hurricane'),
(60333, 1168, 0, 1, 1, 1, 0, 'Skullflame Shield'),
(60333, 1263, 0, 1, 1, 1, 0, 'Brain Hacker');

-- 60334	NPC LOOT (Purple World Drop) - (Item Levels: 56-58) - (NPC Levels: 57)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60334, -60334, 0.004, 0, 1 FROM `creature_template` WHERE `entry` IN ( -- 11 Items
12127, -- Stormpike Guardsman	57	57 - https://web.archive.org/web/20071031090656/http://wow.allakhazam.com/db/mob.html?wmob=12127
13336, -- Veteran Sentinel	57	57 - https://web.archive.org/web/20070109002246/http://wow.allakhazam.com/db/mob.html?wmob=13336
13337, -- Veteran Warrior	57	57 - https://web.archive.org/web/20070117032938/http://wow.allakhazam.com/db/mob.html?wmob=13337#
12051); -- Frostwolf Legionnaire	57	57 - https://web.archive.org/web/20060831163416/http://wow.allakhazam.com/db/mob.html?wmob=12051
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(60334, 2245, 0, 1, 1, 1, 0, 'Helm of Narv'),
(60334, 3075, 0, 1, 1, 1, 0, 'Eye of Flame'),
(60334, 14552, 0, 1, 1, 1, 0, 'Stockade Pauldrons'),
(60334, 1168, 0, 1, 1, 1, 0, 'Skullflame Shield'),
(60334, 1443, 0, 1, 1, 1, 0, 'Jeweled Amulet of Cainwyn');

-- 60335	NPC LOOT (Purple World Drop) - (Item Levels: 56-59) - (NPC Levels: 57-58)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60335, -60335, 0.004, 0, 1 FROM `creature_template` WHERE `entry` IN ( -- 15 Items
14458, -- Watery Invader	56	58 - https://web.archive.org/web/20070102020125/http://wow.allakhazam.com/db/mob.html?wmob=14458
10983, -- Winterax Troll	57	58 - https://web.archive.org/web/20060614011404/http://wow.allakhazam.com/db/mob.html?wmob=10983
1802, -- Hungering Wraith	56	58 - https://web.archive.org/web/20060831112300/http://wow.allakhazam.com/db/mob.html?wmob=1802
7046, -- Searscale Drake	56	58 - https://web.archive.org/web/20060831162209/http://wow.allakhazam.com/db/mob.html?wmob=7046
8535, -- Putrid Shrieker	56	58 - https://web.archive.org/web/20060516152016/http://wow.allakhazam.com/db/mob.html?wmob=8535
8602, -- Monstrous Plaguebat	56	58 - https://web.archive.org/web/20060614171232/http://wow.allakhazam.com/db/mob.html?wmob=8602
11746, -- Desert Rumbler	56	58 - https://web.archive.org/web/20060720204038/http://wow.allakhazam.com/db/mob.html?wmob=11746
13160, -- Carrion Swarmer	57	58 - https://web.archive.org/web/20060721053456/http://wow.allakhazam.com/db/mob.html?wmob=13160
8522, -- Plague Monstrosity	57	58 - https://web.archive.org/web/20060831134543/http://wow.allakhazam.com/db/mob.html?wmob=8522
8557, -- Crypt Horror	57	58 - https://web.archive.org/web/20060630073036/http://wow.allakhazam.com/db/mob.html?wmob=8557
8598, -- Frenzied Plaguehound	57	58 - https://web.archive.org/web/20060721050953/http://wow.allakhazam.com/db/mob.html?wmob=8598
10374, -- Spire Spider	57	58 - https://web.archive.org/web/20060831134822/http://wow.allakhazam.com/db/mob.html?wmob=10374
10442, -- Chromatic Whelp	57	58 - https://web.archive.org/web/20060831112931/http://wow.allakhazam.com/db/mob.html?wmob=10442
11698, -- Hive'Ashi Stinger	57	58 - https://web.archive.org/web/20060614143141/http://wow.allakhazam.com/db/mob.html?wmob=11698
11721, -- Hive'Ashi Worker	57	58 - https://web.archive.org/web/20060614011627/http://wow.allakhazam.com/db/mob.html?wmob=11721
11724, -- Hive'Ashi Swarmer	57	58 - https://web.archive.org/web/20060721053017/http://wow.allakhazam.com/db/mob.html?wmob=11724
11737, -- Stonelash Flayer	57	58 - https://web.archive.org/web/20060721053151/http://wow.allakhazam.com/db/mob.html?wmob=11737
11741, -- Dredge Crusher	57	58 - https://web.archive.org/web/20060722033922/http://wow.allakhazam.com/db/mob.html?wmob=11741
13136, -- Hive'Ashi Drone	57	58 - https://web.archive.org/web/20060721053436/http://wow.allakhazam.com/db/mob.html?wmob=13136
13285, -- Death Lash	57	58 - https://web.archive.org/web/20060720204544/http://wow.allakhazam.com/db/mob.html?wmob=13285
14455, -- Whirling Invader	57	58 - https://web.archive.org/web/20060627073003/http://wow.allakhazam.com/db/mob.html?wmob=14455
11739); -- Rock Stalker	57	58 - https://web.archive.org/web/20060614011712/http://wow.allakhazam.com/db/mob.html?wmob=11739
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(60335, 810, 0, 1, 1, 1, 0, 'Hammer of the Northern Wind'),
(60335, 1263, 0, 1, 1, 1, 0, 'Brain Hacker'),
(60335, 3075, 0, 1, 1, 1, 0, 'Eye of Flame'),
(60335, 1443, 0, 1, 1, 1, 0, 'Jeweled Amulet of Cainwyn'),
(60335, 944, 0, 1, 1, 1, 0, 'Elemental Mage Staff'),
(60335, 14552, 0, 1, 1, 1, 0, 'Stockade Pauldrons'),
(60335, 14553, 0, 1, 1, 1, 0, 'Sash of Mercy');

-- 60336	NPC LOOT (Purple World Drop) - (Item Levels: 57-59) - (NPC Levels: 58)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60336, -60336, 0.004, 0, 1 FROM `creature_template` WHERE `entry` IN ( -- 12 Items
10663, -- Manaclaw	58	58 - https://web.archive.org/web/20071013201531/http://wow.allakhazam.com/db/mob.html?wmob=10663
10807, -- Brumeran	58	58 - https://web.archive.org/web/20071014003944/http://wow.allakhazam.com/db/mob.html?wmob=10807
13180, -- Wing Commander Jeztor	58	58 - https://web.archive.org/web/20071031062511/http://wow.allakhazam.com/db/mob.html?wmob=13180
13284, -- Frostwolf Shaman	58	58 - https://web.archive.org/web/20071031090841/http://wow.allakhazam.com/db/mob.html?wmob=13284
13427, -- Champion Sentinel	58	58 - https://web.archive.org/web/20070813180421/http://wow.allakhazam.com/db/mob.html?wmob=13427
13438, -- Wing Commander Slidore	58	58 - https://web.archive.org/web/20070812194129/http://wow.allakhazam.com/db/mob.html?wmob=13438
14461, -- Baron Charr	58	58 - https://web.archive.org/web/20070627090114/http://wow.allakhazam.com/db/mob.html?wmob=14461
10177, -- Spire Scarab	58	58 - https://web.archive.org/web/20071112184054/http://wow.allakhazam.com/db/mob.html?wmob=10177
11657, -- Morloch	58	58 - https://web.archive.org/web/20071031062356/http://wow.allakhazam.com/db/mob.html?wmob=11657
11677, -- Taskmaster Snivvle	58	58 - https://web.archive.org/web/20071031062401/http://wow.allakhazam.com/db/mob.html?wmob=11677
12050, -- Stormpike Defender	58	58 - https://web.archive.org/web/20071031062426/http://wow.allakhazam.com/db/mob.html?wmob=12050
12053, -- Frostwolf Guardian	58	58 - https://web.archive.org/web/20071031090646/http://wow.allakhazam.com/db/mob.html?wmob=12053
13324, -- Seasoned Guardsman	58	58 - https://web.archive.org/web/20071031062551/http://wow.allakhazam.com/db/mob.html?wmob=13324
13329, -- Seasoned Legionnaire	58	58 - https://web.archive.org/web/20071031062601/http://wow.allakhazam.com/db/mob.html?wmob=13329
13426, -- Champion Mountaineer	58	58 - https://web.archive.org/web/20060526201546/http://wow.allakhazam.com/db/mob.html?wmob=13426
13428, -- Champion Warrior	58	58 - https://web.archive.org/web/20060527142115/http://wow.allakhazam.com/db/mob.html?wmob=13428
13440, -- Frostwolf Wolf Rider	58	58 - https://web.archive.org/web/20060527142125/http://wow.allakhazam.com/db/mob.html?wmob=13440
13576); -- Stormpike Ram Rider	58	58 - https://web.archive.org/web/20060415044846/http://wow.allakhazam.com/db/mob.html?wmob=13576
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(60336, 833, 0, 1, 1, 1, 0, 'Lifestone'),
(60336, 2244, 0, 1, 1, 1, 0, 'Krol Blade'),
(60336, 1263, 0, 1, 1, 1, 0, 'Brain Hacker'),
(60336, 1443, 0, 1, 1, 1, 0, 'Jeweled Amulet of Cainwyn'),
(60336, 14553, 0, 1, 1, 1, 0, 'Sash of Mercy'),
(60336, 944, 0, 1, 1, 1, 0, 'Elemental Mage Staff');

-- 60337	NPC LOOT (Purple World Drop) - (Item Levels: 57-60) - (NPC Levels: 58-59)
DELETE FROM `creature_loot_template` WHERE `entry` = 8546 AND `mincountOrRef` = -60338;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60337, -60337, 0.004, 0, 1 FROM `creature_template` WHERE `entry` IN ( -- 15 Items
11840, -- Wildpaw Alpha	58	59 - https://web.archive.org/web/20060527141439/http://wow.allakhazam.com/db/mob.html?wmob=11840
11885, -- Blighthound	58	59 - https://web.archive.org/web/20060526161634/http://wow.allakhazam.com/db/mob.html?wmob=11885
7449, -- Chillwind Ravager	57	59 - https://web.archive.org/web/20060709063015/http://wow.allakhazam.com/db/mob.html?wmob=7449
7456, -- Winterspring Screecher	57	59 - https://web.archive.org/web/20060627004258/http://wow.allakhazam.com/db/mob.html?wmob=7456
8542, -- Death Singer	57	59 - https://web.archive.org/web/20060619193812/http://wow.allakhazam.com/db/mob.html?wmob=8542
8562, -- Mossflayer Cannibal	57	59 - https://web.archive.org/web/20060614115839/http://wow.allakhazam.com/db/mob.html?wmob=8562
10489, -- Risen Guard	57	59 - https://web.archive.org/web/20080109170403/http://wow.allakhazam.com/db/mob.html?wmob=10489
10678, -- Plagued Hatchling	57	59 - https://web.archive.org/web/20071226050834/http://wow.allakhazam.com/db/mob.html?wmob=10678
11458, -- Petrified Treant	57	59 - https://web.archive.org/web/20071231140012/http://wow.allakhazam.com/db/mob.html?wmob=11458
11459, -- Ironbark Protector	57	59 - https://web.archive.org/web/20071231140017/http://wow.allakhazam.com/db/mob.html?wmob=11459
11727, -- Hive'Zora Wasp	58	59 - https://web.archive.org/web/20080109015453/http://wow.allakhazam.com/db/mob.html?wmob=11727
11745, -- Cyclone Warrior	57	59 - https://web.archive.org/web/20071229154643/http://wow.allakhazam.com/db/mob.html?wmob=11745
13036, -- Gordok Mastiff	57	59 - https://web.archive.org/web/20071231150110/http://wow.allakhazam.com/db/mob.html?wmob=13036
14303, -- Petrified Guardian	57	59 - https://web.archive.org/web/20080103220833/http://wow.allakhazam.com/db/mob.html?wmob=14303
7433, -- Frostsaber Huntress	58	59 - https://web.archive.org/web/20080105082517/http://wow.allakhazam.com/db/mob.html?wmob=7433
11722, -- Hive'Ashi Defender	58	59 - https://web.archive.org/web/20080106150651/http://wow.allakhazam.com/db/mob.html?wmob=11722
11723, -- Hive'Ashi Sandstalker	58	59 - https://web.archive.org/web/20071229073818/http://wow.allakhazam.com/db/mob.html?wmob=11723
11725, -- Hive'Zora Waywatcher	58	59 - https://web.archive.org/web/20080106150652/http://wow.allakhazam.com/db/mob.html?wmob=11725
11726, -- Hive'Zora Tunneler	58	59 - https://web.archive.org/web/20080109013142/http://wow.allakhazam.com/db/mob.html?wmob=11726
11747, -- Desert Rager	58	59 - https://web.archive.org/web/20080109015458/http://wow.allakhazam.com/db/mob.html?wmob=11747
13447, -- Corporal Noreg Stormpike	58	59 - https://web.archive.org/web/20071230224120/http://wow.allakhazam.com/db/mob.html?wmob=13447
14398, -- Eldreth Darter	58	59 - https://web.archive.org/web/20071228095221/http://wow.allakhazam.com/db/mob.html?wmob=14398
8546); -- see delete (align repos, showed in diff)
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(60337, 2244, 0, 1, 1, 1, 0, 'Krol Blade'),
(60337, 833, 0, 1, 1, 1, 0, 'Lifestone'),
(60337, 14553, 0, 1, 1, 1, 0, 'Sash of Mercy'),
(60337, 3075, 0, 1, 1, 1, 0, 'Eye of Flame'),
(60337, 14552, 0, 1, 1, 1, 0, 'Stockade Pauldrons'),
(60337, 944, 0, 1, 1, 1, 0, 'Elemental Mage Staff'),
(60337, 2243, 0, 1, 1, 1, 0, 'Hand of Edward the Odd');

-- 60338	NPC LOOT (Purple World Drop) - (Item Levels: 58-60) - (NPC Levels: 59)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60338, -60338, 0.004, 0, 1 FROM `creature_template` WHERE `entry` IN ( -- 11 Items
1845, -- https://www.wowhead.com/wotlk/npc=1845/high-protector-tarsen
10738, -- https://www.wowhead.com/wotlk/npc=10738/high-chief-winterfall
12158, -- Winterax Hunter	59	59 - https://web.archive.org/web/20060524162759/http://wow.allakhazam.com/db/mob.html?wmob=12158
13137, -- Lieutenant Rugba	59	59 - https://web.archive.org/web/20060307185021/http://wow.allakhazam.com/db/mob.html?wmob=13137
13179, -- Wing Commander Guse	59	59 - https://web.archive.org/web/20060526204530/http://wow.allakhazam.com/db/mob.html?wmob=13179
13297, -- Lieutenant Stouthandle	59	59 - https://web.archive.org/web/20060614012259/http://wow.allakhazam.com/db/mob.html?wmob=13297
13300, -- Lieutenant Mancuso	59	59 - https://web.archive.org/web/20060307185224/http://wow.allakhazam.com/db/mob.html?wmob=13300
13439, -- Wing Commander Vipore	59	59 - https://web.archive.org/web/20060526204640/http://wow.allakhazam.com/db/mob.html?wmob=13439
14185, -- Najak Hexxen	59	59 - https://web.archive.org/web/20060613212544/http://wow.allakhazam.com/db/mob.html?wmob=14185
13138, -- Lieutenant Spencer	59	59 - https://web.archive.org/web/20071230204504/http://wow.allakhazam.com/db/mob.html?wmob=13138
13143, -- Lieutenant Stronghoof	59	59 - https://web.archive.org/web/20071230235911/http://wow.allakhazam.com/db/mob.html?wmob=13143
13144, -- Lieutenant Vol'talar	59	59 - https://web.archive.org/web/20071230224037/http://wow.allakhazam.com/db/mob.html?wmob=13144
13145, -- Lieutenant Grummus	59	59 - https://web.archive.org/web/20071230235916/http://wow.allakhazam.com/db/mob.html?wmob=13145
13146, -- Lieutenant Murp	59	59 - https://web.archive.org/web/20071230235921/http://wow.allakhazam.com/db/mob.html?wmob=13146
13147, -- Lieutenant Lewis	59	59 - https://web.archive.org/web/20071230235926/http://wow.allakhazam.com/db/mob.html?wmob=13147
13298, -- Lieutenant Greywand	59	59 - https://web.archive.org/web/20071231000001/http://wow.allakhazam.com/db/mob.html?wmob=13298
13299, -- Lieutenant Lonadin	59	59 - https://web.archive.org/web/20071231000006/http://wow.allakhazam.com/db/mob.html?wmob=13299
13326, -- Seasoned Defender	59	59 - https://web.archive.org/web/20071231000021/http://wow.allakhazam.com/db/mob.html?wmob=13326
13328, -- Seasoned Guardian	59	59 - https://web.archive.org/web/20071231000026/http://wow.allakhazam.com/db/mob.html?wmob=13328
13333, -- Veteran Guardsman	59	59 - https://web.archive.org/web/20080103014244/http://wow.allakhazam.com/db/mob.html?wmob=13333
13529, -- Seasoned Reaver	59	59 - https://web.archive.org/web/20080117103447/http://wow.allakhazam.com/db/mob.html?wmob=13529
13334); -- Veteran Legionnaire	59	59 - https://web.archive.org/web/20071231000042/http://wow.allakhazam.com/db/mob.html?wmob=13334
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(60338, 811, 0, 1, 1, 1, 0, 'Axe of the Deep Woods'),
(60338, 2243, 0, 1, 1, 1, 0, 'Hand of Edward the Odd'),
(60338, 14553, 0, 1, 1, 1, 0, 'Sash of Mercy'),
(60338, 2246, 0, 1, 1, 1, 0, 'Myrmidon\'s Signet'),
(60338, 647, 0, 1, 1, 1, 0, 'Destiny'),
(60338, 944, 0, 1, 1, 1, 0, 'Elemental Mage Staff');

-- 60339	NPC LOOT (Purple World Drop) - (Item Levels: 58-61) - (NPC Levels: 59-60)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60339, -60339, 0.004, 0, 1 FROM `creature_template` WHERE `entry` IN ( -- 14 Items
7070, -- https://www.wowhead.com/wotlk/npc=7070/condemned-cleric
11663, -- https://www.wowhead.com/classic/npc=11663/flamewaker-healer
14564, -- https://www.wowhead.com/classic/npc=14564/terrordale-spirit
10996, -- Fallen Hero	58	60 - https://web.archive.org/web/20060307182825/http://wow.allakhazam.com/db/mob.html?wmob=10996
12157, -- Winterax Shadow Hunter	59	60 - https://web.archive.org/web/20051206161806/http://wow.allakhazam.com/db/mob.html?wmob=12157
7462, -- Hederine Manastalker	59	60 - https://web.archive.org/web/20071214034728/http://wow.allakhazam.com/db/mob.html?wmob=7462
10487, -- Risen Protector	58	60 - https://web.archive.org/web/20080103195345/http://wow.allakhazam.com/db/mob.html?wmob=10487
10498, -- Spectral Tutor	58	60 - https://web.archive.org/web/20080109181346/http://wow.allakhazam.com/db/mob.html?wmob=10498
10499, -- Spectral Researcher	58	60 - https://web.archive.org/web/20080109170405/http://wow.allakhazam.com/db/mob.html?wmob=10499
11043, -- Crimson Monk	58	60 - https://web.archive.org/web/20071228040530/http://wow.allakhazam.com/db/mob.html?wmob=11043
11551, -- Necrofiend	58	60 - https://web.archive.org/web/20080109204553/http://wow.allakhazam.com/db/mob.html?wmob=11551
11728, -- Hive'Zora Reaver	59	60 - https://web.archive.org/web/20080103224400/http://wow.allakhazam.com/db/mob.html?wmob=11728
11729, -- Hive'Zora Hive Sister	59	60 - https://web.archive.org/web/20071229073823/http://wow.allakhazam.com/db/mob.html?wmob=11729
11730, -- Hive'Regal Ambusher	59	60 - https://web.archive.org/web/20071229075127/http://wow.allakhazam.com/db/mob.html?wmob=11730
11731, -- Hive'Regal Burrower	59	60 - https://web.archive.org/web/20080109181401/http://wow.allakhazam.com/db/mob.html?wmob=11731
11732, -- Hive'Regal Spitfire	59	60 - https://web.archive.org/web/20080106150702/http://wow.allakhazam.com/db/mob.html?wmob=11732
11733, -- Hive'Regal Slavemaker	59	60 - https://web.archive.org/web/20071230062637/http://wow.allakhazam.com/db/mob.html?wmob=11733
13358, -- Stormpike Bowman	59	60 - https://web.archive.org/web/20080507051010/http://wow.allakhazam.com/db/mob.html?wmob=13358
13359, -- Frostwolf Bowman	59	60 - https://web.archive.org/web/20080507172359/http://wow.allakhazam.com/db/mob.html?wmob=13359
7461, -- Hederine Initiate 57	60 - https://web.archive.org/web/20071229151120/http://wow.allakhazam.com/db/mob.html?wmob=7461
7463, -- Hederine Slayer 57	60 - https://web.archive.org/web/20071230010011/http://wow.allakhazam.com/db/mob.html?wmob=7463
11881, -- Twilight Geolord 58	60 - https://web.archive.org/web/20071225143014/http://wow.allakhazam.com/db/mob.html?wmob=11881
11882, -- Twilight Stonecaller 59	60 - https://web.archive.org/web/20071225143019/http://wow.allakhazam.com/db/mob.html?wmob=11882
11883, -- Twilight Master 59	60 - https://web.archive.org/web/20071225154959/http://wow.allakhazam.com/db/mob.html?wmob=11883
12379, -- 69-70 tbc+ https://web.archive.org/web/20060831064316/http://wow.allakhazam.com/db/mob.html?wmob=12379
12377, -- 69-70 tbc+ https://web.archive.org/web/20060831113722/http://wow.allakhazam.com/db/mob.html?wmob=12377
12380, -- Unliving Resident	59	60 -- 69-70 tbc+ - https://web.archive.org/web/20060831043708/http://wow.allakhazam.com/db/mob.html?wmob=12380
7370, -- Restless Shade	58	60 - 68 69 tbc+ - https://web.archive.org/web/20080101044455/http://wow.allakhazam.com/db/mob.html?wmob=7370
12378); -- Damned Soul 59	60 - 68 69 tbc+ - https://web.archive.org/web/20080104022253/http://wow.allakhazam.com/db/mob.html?wmob=12378
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(60339, 2243, 0, 1, 1, 1, 0, 'Hand of Edward the Odd'),
(60339, 647, 0, 1, 1, 1, 0, 'Destiny'),
(60339, 14554, 0, 1, 1, 1, 0, 'Cloudkeeper Legplates'),
(60339, 14555, 0, 1, 1, 1, 0, 'Alcor\'s Sunrazor'),
(60339, 811, 0, 1, 1, 1, 0, 'Axe of the Deep Woods'),
(60339, 2244, 0, 1, 1, 1, 0, 'Krol Blade');

-- 60340	NPC LOOT (Purple World Drop) - (Item Levels: 59-61) - (NPC Levels: 60)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60340, -60340, 0.004, 0, 1 FROM `creature_template` WHERE `entry` IN ( -- XXX Items
10119, -- https://www.wowhead.com/wotlk/npc=10119/volchan
11032, -- https://www.wowhead.com/classic/npc=11032/malor-the-zealous
11873, -- https://www.wowhead.com/classic/npc=11873/spectral-attendant
12128, -- https://www.wowhead.com/classic/npc=12128/crimson-elite
7846, -- Teremus the Devourer	60	60 - https://web.archive.org/web/20071022030105/http://wow.allakhazam.com/db/mob.html?wmob=7846
8718, -- Manahound	60	60 - https://web.archive.org/web/20071013134949/http://wow.allakhazam.com/db/mob.html?wmob=8718
10737, -- Shy-Rotam	60	60 - https://web.archive.org/web/20071028091209/http://wow.allakhazam.com/db/mob.html?wmob=10737
10741, -- Sian-Rotam	60	60 - https://web.archive.org/web/20071106002345/http://wow.allakhazam.com/db/mob.html?wmob=10741
11803, -- Twilight Keeper Exeter	60	60 - https://web.archive.org/web/20071110235625/http://wow.allakhazam.com/db/mob.html?wmob=11803
11897, -- Duskwing	60	60 - https://web.archive.org/web/20071105191038/http://wow.allakhazam.com/db/mob.html?wmob=11897
12121, -- Draka	60	60 - https://web.archive.org/web/20071018022546/http://wow.allakhazam.com/db/mob.html?wmob=12121
12122, -- Duros	60	60 - https://web.archive.org/web/20071017160508/http://wow.allakhazam.com/db/mob.html?wmob=12122
13176, -- Smith Regzar	60	60 - https://web.archive.org/web/20071031090826/http://wow.allakhazam.com/db/mob.html?wmob=13176
13181, -- Wing Commander Mulverick	60	60 - https://web.archive.org/web/20071030063833/http://wow.allakhazam.com/db/mob.html?wmob=13181
13257, -- Murgot Deepforge	60	60 - https://web.archive.org/web/20071031062516/http://wow.allakhazam.com/db/mob.html?wmob=13257
13377, -- Master Engineer Zinfizzlex	60	60 - https://web.archive.org/web/20070816013448/http://wow.allakhazam.com/db/mob.html?wmob=13377
13530, -- Veteran Reaver	60	60 - https://web.archive.org/web/20071031091017/http://wow.allakhazam.com/db/mob.html?wmob=13530
13551, -- Champion Coldmine Invader	60	60 - https://web.archive.org/web/20071031091052/http://wow.allakhazam.com/db/mob.html?wmob=13551
15318, -- Hive'Zara Drone	60	60 - https://web.archive.org/web/20071102151110/http://wow.allakhazam.com/db/mob.html?wmob=15318
16184, -- Nerubian Overseer	60	60 - https://web.archive.org/web/20071105191245/http://wow.allakhazam.com/db/mob.html?wmob=16184
10664, -- Scryer	60	60 - https://web.archive.org/web/20071213231311/http://wow.allakhazam.com:80/db/mob.html?wmob=10664
11350, -- Gurubashi Axe Thrower	60	60 - https://web.archive.org/web/20071228092729/http://wow.allakhazam.com/db/mob.html?wmob=11350
11351, -- Gurubashi Headhunter	60	60 - https://web.archive.org/web/20071228072238/http://wow.allakhazam.com/db/mob.html?wmob=11351
11353, -- Gurubashi Blood Drinker	60	60 - https://web.archive.org/web/20071227072745/http://wow.allakhazam.com/db/mob.html?wmob=11353
11357, -- Son of Hakkar	60	60 - https://web.archive.org/web/20071228102514/http://wow.allakhazam.com/db/mob.html?wmob=11357
11360, -- Zulian Cub	60	60 - https://web.archive.org/web/20071227071628/http://wow.allakhazam.com/db/mob.html?wmob=11360
11361, -- Zulian Tiger	60	60 - https://web.archive.org/web/20080110055128/http://wow.allakhazam.com/db/mob.html?wmob=11361
11365, -- Zulian Panther	60	60 - https://web.archive.org/web/20071228044230/http://wow.allakhazam.com/db/mob.html?wmob=11365
11368, -- Bloodseeker Bat	60	60 - https://web.archive.org/web/20071227071634/http://wow.allakhazam.com/db/mob.html?wmob=11368
11371, -- Razzashi Serpent	60	60 - https://web.archive.org/web/20071227140246/http://wow.allakhazam.com/db/mob.html?wmob=11371
11372, -- Razzashi Adder	60	60 - https://web.archive.org/web/20071228052241/http://wow.allakhazam.com/db/mob.html?wmob=11372
11831, -- Hakkari Witch Doctor	60	60 - https://web.archive.org/web/20071228052336/http://wow.allakhazam.com/db/mob.html?wmob=11831
13331, -- Veteran Defender	60	60 - https://web.archive.org/web/20071231000031/http://wow.allakhazam.com/db/mob.html?wmob=13331
13424, -- Champion Guardsman	60	60 - https://web.archive.org/web/20071231000052/http://wow.allakhazam.com/db/mob.html?wmob=13424
13425, -- Champion Legionnaire	60	60 - https://web.archive.org/web/20080105214654/http://wow.allakhazam.com/db/mob.html?wmob=13425
13437, -- Wing Commander Ichman	60	60 - https://web.archive.org/web/20071230204520/http://wow.allakhazam.com/db/mob.html?wmob=13437
13443, -- Druid of the Grove	60	60 - https://web.archive.org/web/20080102153826/http://wow.allakhazam.com/db/mob.html?wmob=13443
13577, -- Stormpike Ram Rider Commander	60	60 - https://web.archive.org/web/20071231000117/http://wow.allakhazam.com/db/mob.html?wmob=13577
13996, -- Blackwing Technician	60	60 - https://web.archive.org/web/20071229075131/http://wow.allakhazam.com/db/mob.html?wmob=13996
14187, -- Athramanis	60	60 - https://web.archive.org/web/20071230224145/http://wow.allakhazam.com/db/mob.html?wmob=14187
14532, -- Razzashi Venombrood	60	60 - https://web.archive.org/web/20071228102541/http://wow.allakhazam.com/db/mob.html?wmob=14532
14821, -- Razzashi Raptor	60	60 - https://web.archive.org/web/20071228052402/http://wow.allakhazam.com/db/mob.html?wmob=14821
14825, -- Withered Mistress	60	60 - https://web.archive.org/web/20071228052407/http://wow.allakhazam.com/db/mob.html?wmob=14825
14882, -- Atal'ai Mistress	60	60 - https://web.archive.org/web/20071227065554/http://wow.allakhazam.com/db/mob.html?wmob=14882
14883, -- Voodoo Slave	60	60 - https://web.archive.org/web/20071228072423/http://wow.allakhazam.com/db/mob.html?wmob=14883
15043, -- Zulian Crocolisk	60	60 - https://web.archive.org/web/20071227141321/http://wow.allakhazam.com/db/mob.html?wmob=15043
15209, -- Crimson Templar	60	60 - https://web.archive.org/web/20071226220720/http://wow.allakhazam.com/db/mob.html?wmob=15209
15211, -- Azure Templar	60	60 - https://web.archive.org/web/20071230013017/http://wow.allakhazam.com/db/mob.html?wmob=15211
15212, -- Hoary Templar	60	60 - https://web.archive.org/web/20071229060258/http://wow.allakhazam.com/db/mob.html?wmob=15212
15236, -- Vekniss Wasp	60	60 - https://web.archive.org/web/20071122012628/http://wow.allakhazam.com:80/db/mob.html?wmob=15236
15262, -- Obsidian Eradicator	60	60 - https://web.archive.org/web/20071103070710/http://wow.allakhazam.com/db/mob.html?wmob=15262
15307, -- Earthen Templar	60	60 - https://web.archive.org/web/20071106233542/http://wow.allakhazam.com/db/mob.html?wmob=15307
15461, -- Shrieker Scarab	60	60 - https://web.archive.org/web/20071017205530/http://wow.allakhazam.com/db/mob.html?wmob=15461
15462, -- Spitting Scarab	60	60 - https://web.archive.org/web/20071022155755/http://wow.allakhazam.com/db/mob.html?wmob=15462
13332, -- Veteran Guardian	60	60 - https://web.archive.org/web/20071031062606/http://wow.allakhazam.com/db/mob.html?wmob=13332
11830, -- Hakkari Priest		60	60 - https://web.archive.org/web/20071227140251/http://wow.allakhazam.com/db/mob.html?wmob=11830
15201); -- Twilight Flamereaver		60	60 - https://web.archive.org/web/20071225155004/http://wow.allakhazam.com/db/mob.html?wmob=15201
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(60340, 2099, 0, 1, 1, 1, 0, 'Dwarven Hand Cannon'),
(60340, 2243, 0, 1, 1, 1, 0, 'Hand of Edward the Odd'),
(60340, 14554, 0, 1, 1, 1, 0, 'Cloudkeeper Legplates'),
(60340, 2246, 0, 1, 1, 1, 0, 'Myrmidon\'s Signet'),
(60340, 14555, 0, 1, 1, 1, 0, 'Alcor\'s Sunrazor');

-- 60341	NPC LOOT (Purple World Drop) - (Item Levels: 59-62) - (NPC Levels: 60-61)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60341, -60341, 0.004, 0, 1 FROM `creature_template` WHERE `entry` IN ( -- XXX Items
4374, -- Strashaz Hydra	59	61 - https://web.archive.org/web/20071030001836/http://wow.allakhazam.com/db/mob.html?wmob=4374
13798, -- Jotek	60	61 - https://web.archive.org/web/20071031062721/http://wow.allakhazam.com/db/mob.html?wmob=13798
10488, -- Risen Construct	58	61 - https://web.archive.org/web/20071103223010/http://wow.allakhazam.com/db/mob.html?wmob=10488
10500, -- Spectral Teacher	58	61 - https://web.archive.org/web/20071104000511/http://wow.allakhazam.com/db/mob.html?wmob=10500
10486, -- Risen Warrior	59	61 - https://web.archive.org/web/20071103223005/http://wow.allakhazam.com/db/mob.html?wmob=10486
11598, -- Risen Guardian	59	61 - https://web.archive.org/web/20071113135029/http://wow.allakhazam.com/db/mob.html?wmob=11598
11734, -- Hive'Regal Hive Lord	59	61 - https://web.archive.org/web/20071028104413/http://wow.allakhazam.com/db/mob.html?wmob=11734
12800, -- Chimaerok	60	61 - https://web.archive.org/web/20071106033522/http://wow.allakhazam.com/db/mob.html?wmob=12800
13797, -- Mountaineer Boombellow	60	61 - https://web.archive.org/web/20071031062718/http://wow.allakhazam.com/db/mob.html?wmob=13797
15213); -- Twilight Overlord 59	61 - https://web.archive.org/web/20080105201211/http://wow.allakhazam.com/db/mob.html?wmob=15213
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(60341, 2099, 0, 1, 1, 1, 0, 'Dwarven Hand Cannon'),
(60341, 811, 0, 1, 1, 1, 0, 'Axe of the Deep Woods'),
(60341, 2246, 0, 1, 1, 1, 0, 'Myrmidon\'s Signet'),
(60341, 14558, 0, 1, 1, 1, 0, 'Lady Maye\'s Pendant'),
(60341, 2243, 0, 1, 1, 1, 0, 'Hand of Edward the Odd'),
(60341, 647, 0, 1, 1, 1, 0, 'Destiny'),
(60341, 14555, 0, 1, 1, 1, 0, 'Alcor\'s Sunrazor'),
(60341, 2801, 0, 1, 1, 1, 0, 'Blade of Hanna');

-- 60342	NPC LOOT (Purple World Drop) - (Item Levels: 59-64) - (NPC Levels: 61) - VANILLA NPC ONLY
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60342, -60342, 0.01, 0, 1 FROM `creature_template` WHERE `entry` IN ( -- 12 Items
1846, -- https://www.wowhead.com/wotlk/npc=1846/high-protector-lorik
1852, -- https://www.wowhead.com/wotlk/npc=1852/araj-the-summoner
12476, -- https://www.wowhead.com/classic/npc=12476/emeraldon-oracle
8197, -- Chronalis	61	61 - https://web.archive.org/web/20071026113542/http://wow.allakhazam.com/db/mob.html?wmob=8197
11339, -- Hakkari Shadow Hunter	61	61 - https://web.archive.org/web/20071028004639/http://wow.allakhazam.com/db/mob.html?wmob=11339
11340, -- Hakkari Blood Priest	61	61 - https://web.archive.org/web/20071028104343/http://wow.allakhazam.com/db/mob.html?wmob=11340
11356, -- Gurubashi Champion	61	61 - https://web.archive.org/web/20071028004644/http://wow.allakhazam.com/db/mob.html?wmob=11356
11947, -- Captain Galvangar	61	61 - https://web.archive.org/web/20071031062416/http://wow.allakhazam.com/db/mob.html?wmob=11947
12459, -- Blackwing Warlock	61	61 - https://web.archive.org/web/20071101105929/http://wow.allakhazam.com/db/mob.html?wmob=12459
12468, -- Death Talon Hatcher	61	61 - https://web.archive.org/web/20071030063818/http://wow.allakhazam.com/db/mob.html?wmob=12468
13154, -- Commander Louis Philips	61	61 - https://web.archive.org/web/20071031090822/http://wow.allakhazam.com/db/mob.html?wmob=13154
13318, -- Commander Mortimer	61	61 - https://web.archive.org/web/20071031062546/http://wow.allakhazam.com/db/mob.html?wmob=13318
13449, -- Warmaster Garrick	61	61 - https://web.archive.org/web/20071101062900/http://wow.allakhazam.com/db/mob.html?wmob=13449
13527, -- Champion Commando	61	61 - https://web.archive.org/web/20070821222747/http://wow.allakhazam.com/db/mob.html?wmob=13527
13959, -- Alterac Yeti	61	61 - https://web.archive.org/web/20071031062726/http://wow.allakhazam.com/db/mob.html?wmob=13959
15111, -- Mad Servant	61	61 - https://web.archive.org/web/20071028140257/http://wow.allakhazam.com/db/mob.html?wmob=15111
15230, -- Vekniss Warrior	61	61 - https://web.archive.org/web/20071121233948/http://wow.allakhazam.com/db/mob.html?wmob=15230
15246, -- Qiraji Mindslayer	61	61 - https://web.archive.org/web/20071122035508/http://wow.allakhazam.com/db/mob.html?wmob=15246
15264, -- Anubisath Sentinel	61	61 - https://web.archive.org/web/20071027062715/http://wow.allakhazam.com/db/mob.html?wmob=15264
15312, -- Obsidian Nullifier	61	61 - https://web.archive.org/web/20071122035513/http://wow.allakhazam.com/db/mob.html?wmob=15312
15336, -- Hive'Zara Tail Lasher	61	61 - https://web.archive.org/web/20071102230401/http://wow.allakhazam.com/db/mob.html?wmob=15336
11338, -- Hakkari Shadowcaster	61	61 - https://web.archive.org/web/20071028104338/http://wow.allakhazam.com/db/mob.html?wmob=11338
11359, -- Soulflayer	61	61 - https://web.archive.org/web/20071028135836/http://wow.allakhazam.com/db/mob.html?wmob=11359
11387, -- Sandfury Speaker	61	61 - https://web.archive.org/web/20071028104404/http://wow.allakhazam.com/db/mob.html?wmob=11387
11388, -- Witherbark Speaker	61	61 - https://web.archive.org/web/20071028135856/http://wow.allakhazam.com/db/mob.html?wmob=11388
11391, -- Vilebranch Speaker	61	61 - https://web.archive.org/web/20071028135911/http://wow.allakhazam.com/db/mob.html?wmob=11391
11896, -- Borelgore	61	61 - https://web.archive.org/web/20071105191033/http://wow.allakhazam.com/db/mob.html?wmob=11896
11949, -- Captain Balinda Stonehearth	61	61 - https://web.archive.org/web/20071031062421/http://wow.allakhazam.com/db/mob.html?wmob=11949
12465, -- Death Talon Wyrmkin	61	61 - https://web.archive.org/web/20071030123941/http://wow.allakhazam.com/db/mob.html?wmob=12465
13139, -- Commander Randolph	61	61 - https://web.archive.org/web/20071031090752/http://wow.allakhazam.com/db/mob.html?wmob=13139
13140, -- Commander Dardosh	61	61 - https://web.archive.org/web/20071031062456/http://wow.allakhazam.com/db/mob.html?wmob=13140
13152, -- Commander Malgor	61	61 - https://web.archive.org/web/20071031090811/http://wow.allakhazam.com/db/mob.html?wmob=13152
13153, -- Commander Mulfort	61	61 - https://web.archive.org/web/20071031090816/http://wow.allakhazam.com/db/mob.html?wmob=13153
13421, -- Champion Guardian	61	61 - https://web.archive.org/web/20071031062621/http://wow.allakhazam.com/db/mob.html?wmob=13421
13422, -- Champion Defender	61	61 - https://web.archive.org/web/20071031090932/http://wow.allakhazam.com/db/mob.html?wmob=13422
13531, -- Champion Reaver	61	61 - https://web.archive.org/web/20071031091022/http://wow.allakhazam.com/db/mob.html?wmob=13531
15229, -- Vekniss Soldier	61	61 - https://web.archive.org/web/20071105003139/http://wow.allakhazam.com/db/mob.html?wmob=15229
15233, -- Vekniss Guardian	61	61 - https://web.archive.org/web/20071103113903/http://wow.allakhazam.com/db/mob.html?wmob=15233
15247, -- Qiraji Brainwasher	61	61 - https://web.archive.org/web/20071122005313/http://wow.allakhazam.com/db/mob.html?wmob=15247
15249, -- Qiraji Lasher	61	61 - https://web.archive.org/web/20071122005319/http://wow.allakhazam.com/db/mob.html?wmob=15249
15250, -- Qiraji Slayer	61	61 - https://web.archive.org/web/20071214204824/http://wow.allakhazam.com/db/mob.html?wmob=15250
15320, -- Hive'Zara Soldier	61	61 - https://web.archive.org/web/20071216105438/http://wow.allakhazam.com/db/mob.html?wmob=15320
15323, -- Hive'Zara Sandstalker	61	61 - https://web.archive.org/web/20071220020256/http://wow.allakhazam.com/db/mob.html?wmob=15323
15324, -- Qiraji Gladiator	61	61 - https://web.archive.org/web/20080110230027/http://wow.allakhazam.com/db/mob.html?wmob=15324
15325, -- Hive'Zara Wasp	61	61 - https://web.archive.org/web/20080110233029/http://wow.allakhazam.com/db/mob.html?wmob=15325
15327, -- Hive'Zara Stinger	61	61 - https://web.archive.org/web/20071220020303/http://wow.allakhazam.com/db/mob.html?wmob=15327
15338, -- Obsidian Destroyer	61	61 - https://web.archive.org/web/20080102144351/http://wow.allakhazam.com/db/mob.html?wmob=15338
15343, -- Qiraji Swarmguard	61	61 - https://web.archive.org/web/20080102144355/http://wow.allakhazam.com/db/mob.html?wmob=15343
13320); -- Commander Karl Philips 61 61 - https://web.archive.org/web/20071230224100/http://wow.allakhazam.com/db/mob.html?wmob=13320
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(60342, 14557, 0, 1, 1, 1, 0, 'The Lion Horn of Stormwind'),
(60342, 14558, 0, 1, 1, 1, 0, 'Lady Maye\'s Pendant'),
(60342, 1168, 0, 1, 1, 1, 0, 'Skullflame Shield');

-- 60343	NPC LOOT (Purple World Drop) - (Item Levels: 60-64) - (NPC Levels: 61-62) - VANILLA NPC ONLY
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60343, -60343, 0.01, 0, 1 FROM `creature_template` WHERE `entry` IN ( -- XXX Items
12801, -- Arcane Chimaerok	60	62 - https://web.archive.org/web/20071106033527/http://wow.allakhazam.com/db/mob.html?wmob=12801
11666, -- Firewalker	61	62 - https://web.archive.org/web/20071027090606/http://wow.allakhazam.com/db/mob.html?wmob=11666
12101, -- Lava Surger	61	62 - https://web.archive.org/web/20071102213119/http://wow.allakhazam.com/db/mob.html?wmob=12101
12802, -- Chimaerok Devourer	61	62 - https://web.archive.org/web/20071111235336/http://wow.allakhazam.com/db/mob.html?wmob=12802
11665, -- Lava Annihilator	61	62 - https://web.archive.org/web/20071230131733/http://wow.allakhazam.com/db/mob.html?wmob=11665
11667, -- Flameguard	61	62 - https://web.archive.org/web/20071226230851/http://wow.allakhazam.com/db/mob.html?wmob=11667
11668, -- Firelord	61	62 - https://web.archive.org/web/20071226220130/http://wow.allakhazam.com/db/mob.html?wmob=11668
12076); -- Lava Elemental	61	62 - https://web.archive.org/web/20080103224404/http://wow.allakhazam.com/db/mob.html?wmob=12076
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(60343, 3475, 0, 1, 1, 1, 0, 'Cloak of Flames'),
(60343, 2245, 0, 1, 1, 1, 0, 'Helm of Narv'),
(60343, 2801, 0, 1, 1, 1, 0, 'Blade of Hanna'),
(60343, 14557, 0, 1, 1, 1, 0, 'The Lion Horn of Stormwind'),
(60343, 1168, 0, 1, 1, 1, 0, 'Skullflame Shield');

-- 60344	NPC LOOT (Purple World Drop) - (Item Levels: 59-65) - (NPC Levels: 62-63) - VANILLA NPC ONLY
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60344, -60344, 0.01, 0, 1 FROM `creature_template` WHERE `entry` IN ( -- 12 Items
5312, -- Lethlas (62-62) - https://web.archive.org/web/20071228102755/http://wow.allakhazam.com/db/mob.html?wmob=5312
12498, -- Dreamstalker (62-62) - https://web.archive.org/web/20071228052346/http://wow.allakhazam.com/db/mob.html?wmob=12498
12477, -- https://www.wowhead.com/classic/npc=12477/verdantine-boughguard
15335, -- https://www.wowhead.com/classic/npc=15335/flesh-hunter
15204, -- https://www.wowhead.com/classic/npc=15204/high-marshal-whirlaxis
12129, -- Onyxian Warder	60	63 - https://web.archive.org/web/20071014002949/http://wow.allakhazam.com/db/mob.html?wmob=12129
5314, -- Phantim	62	62 - https://web.archive.org/web/20071028141731/http://wow.allakhazam.com/db/mob.html?wmob=5314
5718, -- Rothos	62	62 - https://web.archive.org/web/20071013201657/http://wow.allakhazam.com/db/mob.html?wmob=5718
11352, -- Gurubashi Berserker	62	62 - https://web.archive.org/web/20071027150515/http://wow.allakhazam.com/db/mob.html?wmob=11352
12464, -- Death Talon Seether	62	62 - https://web.archive.org/web/20071030063808/http://wow.allakhazam.com/db/mob.html?wmob=12464
12496, -- Dreamtracker	62	62 - https://web.archive.org/web/20071013201547/http://wow.allakhazam.com/db/mob.html?wmob=12496
12497, -- Dreamroarer	62	62 - https://web.archive.org/web/20071028135951/http://wow.allakhazam.com/db/mob.html?wmob=12497
12899, -- Axtroz	62	62 - https://web.archive.org/web/20071026085645/http://wow.allakhazam.com/db/mob.html?wmob=12899
12900, -- Somnus	62	62 - https://web.archive.org/web/20071028104548/http://wow.allakhazam.com/db/mob.html?wmob=12900
15206, -- The Duke of Cynders	62	62 - https://web.archive.org/web/20071027090818/http://wow.allakhazam.com/db/mob.html?wmob=15206
15220, -- The Duke of Zephyrs	62	62 - https://web.archive.org/web/20070716021730/http://wow.allakhazam.com:80/db/mob.html?wmob=15220
16029, -- Sludge Belcher	62	62 - https://web.archive.org/web/20071113014408/http://wow.allakhazam.com/db/mob.html?wmob=16029
12460, -- Death Talon Wyrmguard	63	63 - https://web.archive.org/web/20071103113853/http://wow.allakhazam.com/db/mob.html?wmob=12460
15305, -- Lord Skwol	63	63 - https://web.archive.org/web/20071111012207/http://wow.allakhazam.com/db/mob.html?wmob=15305
15311, -- Anubisath Warder	63	63 - https://web.archive.org/web/20071117170849/http://wow.allakhazam.com/db/mob.html?wmob=15311
15385, -- Colonel Zerran	63	63 - https://web.archive.org/web/20071102230407/http://wow.allakhazam.com/db/mob.html?wmob=15385
15388, -- Major Pakkon	63	63 - https://web.archive.org/web/20071102213230/http://wow.allakhazam.com/db/mob.html?wmob=15388
15389, -- Captain Drenn	63	63 - https://web.archive.org/web/20071103052620/http://wow.allakhazam.com/db/mob.html?wmob=15389
15390, -- Captain Xurrem	63	63 - https://web.archive.org/web/20071022202350/http://wow.allakhazam.com/db/mob.html?wmob=15390
15391, -- Captain Qeez	63	63 - https://web.archive.org/web/20071102213234/http://wow.allakhazam.com/db/mob.html?wmob=15391
15392, -- Captain Tuubid	63	63 - https://web.archive.org/web/20071103023754/http://wow.allakhazam.com/db/mob.html?wmob=15392
12159, -- Korrak the Bloodrager	62	62 - https://web.archive.org/web/20080101105522/http://wow.allakhazam.com/db/mob.html?wmob=12159
12457, -- Blackwing Spellbinder	62	62 - https://web.archive.org/web/20080101054904/http://wow.allakhazam.com/db/mob.html?wmob=12457
12461, -- Death Talon Overseer	62	62 - https://web.archive.org/web/20071230014855/http://wow.allakhazam.com/db/mob.html?wmob=12461
12463, -- Death Talon Flamescale	62	62 - https://web.archive.org/web/20071230085432/http://wow.allakhazam.com/db/mob.html?wmob=12463
12467, -- Death Talon Captain	62	62 - https://web.archive.org/web/20071230014900/http://wow.allakhazam.com/db/mob.html?wmob=12467
12803, -- Lord Lakmaeran	62	62 - https://web.archive.org/web/20080111201632/http://wow.allakhazam.com/db/mob.html?wmob=12803
15207, -- The Duke of Fathoms	62	62 - https://web.archive.org/web/20071230013012/http://wow.allakhazam.com/db/mob.html?wmob=15207
15208, -- The Duke of Shards	62	62 - https://web.archive.org/web/20080108132503/http://wow.allakhazam.com/db/mob.html?wmob=15208
15235, -- Vekniss Stinger	62	62 - https://web.archive.org/web/20071122005308/http://wow.allakhazam.com:80/db/mob.html?wmob=15235
15240, -- Vekniss Hive Crawler	62	62 - https://web.archive.org/web/20071122043542/http://wow.allakhazam.com/db/mob.html?wmob=15240
15277, -- Anubisath Defender	62	62 - https://web.archive.org/web/20071026085811/http://wow.allakhazam.com/db/mob.html?wmob=15277
15355, -- Anubisath Guardian	62	62 - https://web.archive.org/web/20071011020214/http://wow.allakhazam.com/db/mob.html?wmob=15355
12100, -- Lava Reaver	62	63 - https://web.archive.org/web/20071031090651/http://wow.allakhazam.com/db/mob.html?wmob=12100
15252, -- Qiraji Champion	63	63 - https://web.archive.org/web/20071121224021/http://wow.allakhazam.com/db/mob.html?wmob=15252
15386, -- Major Yeggeth	63	63 - https://web.archive.org/web/20071102151121/http://wow.allakhazam.com/db/mob.html?wmob=15386
11658, -- Molten Giant	62	62 - https://web.archive.org/web/20071226220106/http://wow.allakhazam.com/db/mob.html?wmob=11658
11662, -- Flamewaker Priest	62	62 - https://web.archive.org/web/20071226220110/http://wow.allakhazam.com/db/mob.html?wmob=11662
11673, -- Ancient Core Hound	62	62 - https://web.archive.org/web/20071225143000/http://wow.allakhazam.com/db/mob.html?wmob=11673
11659, -- Molten Destroyer	63	63 - https://web.archive.org/web/20071215174107/http://wow.allakhazam.com/db/mob.html?wmob=11659
11664, -- Flamewaker Elite		62	62 - https://web.archive.org/web/20071226220120/http://wow.allakhazam.com/db/mob.html?wmob=11664
12119, -- Flamewaker Protector		62	62 - https://web.archive.org/web/20071226230851/http://wow.allakhazam.com/db/mob.html?wmob=12119
12474); -- Emeraldon Boughguard		62	62 - https://web.archive.org/web/20071225204243/http://wow.allakhazam.com/db/mob.html?wmob=12474
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(60344, 14557, 0, 1, 1, 1, 0, 'The Lion Horn of Stormwind'),
(60344, 1443, 0, 1, 1, 1, 0, 'Jeweled Amulet of Cainwyn'),
(60344, 1263, 0, 1, 1, 1, 0, 'Brain Hacker');

-- ==================================================================================
-- classicmangos only fixes due to item/mincountOrRef being async (level diff and loot not being adjusted correctly - only purple refloots)
-- SELECT clt.entry,clt.item,clt.mincountOrRef,ct.name,ct.minlevel,ct.maxlevel,comments FROM creature_loot_template clt left join creature_template ct on clt.entry=ct.entry where (clt.mincountorref between -60344 AND -60300) AND clt.item != -clt.mincountorref order by clt.entry;

-- 60304	NPC LOOT (Purple World Drop) - (Item Levels: 41-43) - (NPC Levels: 42)
UPDATE `creature_loot_template` SET `mincountOrRef` = -item WHERE `item` = 60304 AND `entry` =
7023; -- 60304	-60300	Obsidian Sentinel	42	42	NPC LOOT (Purple World Drop) - (Item Levels: 40-43) - (NPC Levels: 39-40)

-- 60305	NPC LOOT (Purple World Drop) - (Item Levels: 41-44) - (NPC Levels: 42-43)
UPDATE `creature_loot_template` SET `mincountOrRef` = -item WHERE `item` = 60305 AND `entry` IN (
1563, -- 60305	-60301	Bloodsail Swashbuckler	41	43	NPC LOOT (Purple World Drop) - (Item Levels: 40-44) - (NPC Levels: 40-41)
1564, -- 60305	-60301	Bloodsail Warlock	41	43	NPC LOOT (Purple World Drop) - (Item Levels: 40-44) - (NPC Levels: 40-41)
2549, -- 60305	-60304	Garr Salthoof	41	43	NPC LOOT (Purple World Drop) - (Item Levels: 41-43) - (NPC Levels: 42)
12216 -- 60305	-60304	Poison Sprite	42	43	NPC LOOT (Purple World Drop) - (Item Levels: 41-43) - (NPC Levels: 42)
);

UPDATE `creature_loot_template` SET `item` = 60306, `mincountOrRef` = -60306 WHERE `item` = 60305 AND `entry` =
2549; -- 60305	-60304	Garr Salthoof	41	43	NPC LOOT (Purple World Drop) - (Item Levels: 41-43) - (NPC Levels: 42)

-- 60307	NPC LOOT (Purple World Drop) - (Item Levels: 42-45) - (NPC Levels: 43-44)
UPDATE `creature_loot_template` SET `mincountOrRef` = -item WHERE `item` = 60307 AND `entry` IN (
4505, -- 60307	-60303	Bloodsail Deckhand	43	44	NPC LOOT (Purple World Drop) - (Item Levels: 40-45) - (NPC Levels: 41-42)
4506, -- 60307	-60301	Bloodsail Swabby	42	44	NPC LOOT (Purple World Drop) - (Item Levels: 40-44) - (NPC Levels: 40-41)
11790 -- 42-43 tbc+ https://web.archive.org/web/20080106091355/http://wow.allakhazam.com/db/mob.html?wmob=11790
);

-- 60309	NPC LOOT (Purple World Drop) - (Item Levels: 43-46) - (NPC Levels: 44-45)
UPDATE `creature_loot_template` SET `mincountOrRef` = -item WHERE `item` = 60309 AND `entry` IN (
1565, -- 60309	-60303	Bloodsail Sea Dog	43	45	NPC LOOT (Purple World Drop) - (Item Levels: 40-45) - (NPC Levels: 41-42)
1653, -- 60309	-60303	Bloodsail Elder Magus	44	45	NPC LOOT (Purple World Drop) - (Item Levels: 40-45) - (NPC Levels: 41-42)
11791 -- 60309	-60306	Putridus Trickster	43	45	NPC LOOT (Purple World Drop) - (Item Levels: 42-44) - (NPC Levels: 43)
);

-- 60311	NPC LOOT (Purple World Drop) - (Item Levels: 44-47) - (NPC Levels: 45-46)
UPDATE `creature_loot_template` SET `mincountOrRef` = -item WHERE `item` = 60311 AND `entry` IN (
2550, -- 60311	-60304	Captain Stillwater	45	46	NPC LOOT (Purple World Drop) - (Item Levels: 41-43) - (NPC Levels: 42)
7246, -- 60311	-60307	Sandfury Shadowhunter	45	46	NPC LOOT (Purple World Drop) - (Item Levels: 41-47) - (NPC Levels: 43-44)
7247, -- 60311	-60309	Sandfury Soul Eater	45	46	NPC LOOT (Purple World Drop) - (Item Levels: 41-48) - (NPC Levels: 44-45)
11793, -- 60311	-60310	Celebrian Dryad	45	46	NPC LOOT (Purple World Drop) - (Item Levels: 44-46) - (NPC Levels: 45)
12222, -- 60311	-60307	Creeping Sludge	45	46	NPC LOOT (Purple World Drop) - (Item Levels: 41-47) - (NPC Levels: 43-44)
12223 -- 60311	-60309	Cavern Lurker	45	46	NPC LOOT (Purple World Drop) - (Item Levels: 41-48) - (NPC Levels: 44-45)
);

UPDATE `creature_loot_template` SET `item` = 60312, `mincountOrRef` = -60312 WHERE `item` = 60311 AND `entry` =
2550; -- 60311	-60304	Captain Stillwater	45	46	NPC LOOT (Purple World Drop) - (Item Levels: 41-43) - (NPC Levels: 42)

-- 60312	NPC LOOT (Purple World Drop) - (Item Levels: 45-47) - (NPC Levels: 46)
UPDATE `creature_loot_template` SET `mincountOrRef` = -item WHERE `item` = 60312 AND `entry` IN (
7796, -- 60312	-60310	Nekrum Gutchewer	46	46	NPC LOOT (Purple World Drop) - (Item Levels: 44-46) - (NPC Levels: 45)
7797 -- 60312	-60310	Ruuzlu	46	46	NPC LOOT (Purple World Drop) - (Item Levels: 44-46) - (NPC Levels: 45)
);

UPDATE `creature_loot_template` SET `item` = 60311, `mincountOrRef` = -60311 WHERE `item` = 60312 AND `entry` =
7796; -- 60312	-60310	Nekrum Gutchewer	46	46	NPC LOOT (Purple World Drop) - (Item Levels: 44-46) - (NPC Levels: 45)

-- 60313	NPC LOOT (Purple World Drop) - (Item Levels: 45-48) - (NPC Levels: 46-47)
UPDATE `creature_loot_template` SET `mincountOrRef` = -item WHERE `item` = 60313 AND `entry` IN (
2548, -- 60313	-60304	Captain Keelhaul	46	47	NPC LOOT (Purple World Drop) - (Item Levels: 41-43) - (NPC Levels: 42)
11794, -- 60313	-60310	Sister of Celebrian	45	47	NPC LOOT (Purple World Drop) - (Item Levels: 44-46) - (NPC Levels: 45)
12221, -- 60313	-60307	Noxious Slime	46	47	NPC LOOT (Purple World Drop) - (Item Levels: 41-47) - (NPC Levels: 43-44)
12224 -- 60313	-60310	Cavern Shambler	46	47	NPC LOOT (Purple World Drop) - (Item Levels: 44-46) - (NPC Levels: 45)
);

UPDATE `creature_loot_template` SET `item` = 60314, `mincountOrRef` = -60314 WHERE `item` = 60313 AND `entry` =
2548; -- 60313	-60304	Captain Keelhaul	46	47	NPC LOOT (Purple World Drop) - (Item Levels: 41-43) - (NPC Levels: 42)

-- 60314	NPC LOOT (Purple World Drop) - (Item Levels: 46-48) - (NPC Levels: 47)
UPDATE `creature_loot_template` SET `mincountOrRef` = -item WHERE `item` = 60314 AND `entry` IN (
818, -- 60314	-60310	Mai'Zoth	47	47	NPC LOOT (Purple World Drop) - (Item Levels: 44-46) - (NPC Levels: 45)
1492 -- 60314	-60304	Gorlash	47	47	NPC LOOT (Purple World Drop) - (Item Levels: 41-43) - (NPC Levels: 42)
);

-- 60315	NPC LOOT (Purple World Drop) - (Item Levels: 46-49) - (NPC Levels: 47-48)
UPDATE `creature_loot_template` SET `mincountOrRef` = -item WHERE `item` = 60315 AND `entry` = 
5860; -- 60315	-60307	Twilight Dark Shaman	47	48	NPC LOOT (Purple World Drop) - (Item Levels: 41-47) - (NPC Levels: 43-44)

-- 60316	NPC LOOT (Purple World Drop) - (Item Levels: 47-49) - (NPC Levels: 48)
UPDATE `creature_loot_template` SET `mincountOrRef` = -item WHERE `item` = 60316 AND `entry` = 
2546; -- 60316	-60304	Fleet Master Firallon	48	48	NPC LOOT (Purple World Drop) - (Item Levels: 41-43) - (NPC Levels: 42)

-- 60317	NPC LOOT (Purple World Drop) - (Item Levels: 47-50) - (NPC Levels: 48-49)
UPDATE `creature_loot_template` SET `mincountOrRef` = -item WHERE `item` = 60317 AND `entry` = 
12206; -- 60317	-60314	Primordial Behemoth	48	49	NPC LOOT (Purple World Drop) - (Item Levels: 46-49) - (NPC Levels: 47)

-- 60318	NPC LOOT (Purple World Drop) - (Item Levels: 48-50) - (NPC Levels: 49) - fix for tbcmangos
UPDATE `creature_loot_template` SET `mincountOrRef` = -item WHERE `item` = 60318 AND `entry` IN (
5711, -- 60318	-60320	Ogom the Wretched	49	49	NPC LOOT (Purple World Drop) - (Item Levels: 48-51) - (NPC Levels: 50)
5712, -- 60318	-60320	Zolo	49	49	NPC LOOT (Purple World Drop) - (Item Levels: 48-51) - (NPC Levels: 50)
5713, -- 60318	-60320	Gasher	49	49	NPC LOOT (Purple World Drop) - (Item Levels: 48-51) - (NPC Levels: 50)
5714, -- 60318	-60320	Loro	49	49	NPC LOOT (Purple World Drop) - (Item Levels: 48-51) - (NPC Levels: 50)
5715, -- 60318	-60320	Hukku	49	49	NPC LOOT (Purple World Drop) - (Item Levels: 48-51) - (NPC Levels: 50)
5716, -- 60318	-60320	Zul'Lor	49	49	NPC LOOT (Purple World Drop) - (Item Levels: 48-51) - (NPC Levels: 50)
5717 -- 60318	-60320	Mijan	49	49	NPC LOOT (Purple World Drop) - (Item Levels: 48-51) - (NPC Levels: 50)
);

-- 60319	NPC LOOT (Purple World Drop) - (Item Levels: 48-51) - (NPC Levels: 49-50)
UPDATE `creature_loot_template` SET `mincountOrRef` = -item WHERE `item` = 60319 AND `entry` =
5862; -- 60319	-60309	Twilight Geomancer	49	50	NPC LOOT (Purple World Drop) - (Item Levels: 41-48) - (NPC Levels: 44-45)

-- 60321	NPC LOOT (Purple World Drop) - (Item Levels: 49-52) - (NPC Levels: 50-51)
UPDATE `creature_loot_template` SET `mincountOrRef` = -item WHERE `item` = 60321 AND `entry` =
8419; -- 60321	-60311	Twilight Idolater	49	51	NPC LOOT (Purple World Drop) - (Item Levels: 42-49) - (NPC Levels: 45-46)

-- 60322	NPC LOOT (Purple World Drop) - (Item Levels: 50-52) - (NPC Levels: 51)
UPDATE `creature_loot_template` SET `mincountOrRef` = -item WHERE `item` = 60322 AND `entry` = 
1559; -- 60322	-60304	King Mukla	51	51	NPC LOOT (Purple World Drop) - (Item Levels: 41-43) - (NPC Levels: 42)

-- 60323	NPC LOOT (Purple World Drop) - (Item Levels: 50-53) - (NPC Levels: 51-52)
UPDATE `creature_loot_template` SET `mincountOrRef` = -item WHERE `item` = 60323 AND `entry` =
8892; -- 60323	-60321	Anvilrage Footman	51	52	NPC LOOT (Purple World Drop) - (Item Levels: 48-54) - (NPC Levels: 50-51)

-- 60324	NPC LOOT (Purple World Drop) - (Item Levels: 51-53) - (NPC Levels: 52)
UPDATE `creature_loot_template` SET `mincountOrRef` = -item WHERE `item` = 60324 AND `entry` IN (
1494, -- 60324	-60304	Negolash	52	52	NPC LOOT (Purple World Drop) - (Item Levels: 41-43) - (NPC Levels: 42)
8391, -- 60324	-60312	Lathoric the Black	52	52	NPC LOOT (Purple World Drop) - (Item Levels: 44-49) - (NPC Levels: 46)
8400 -- 60324	-60312	Obsidion	52	52	NPC LOOT (Purple World Drop) - (Item Levels: 44-49) - (NPC Levels: 46)
);

-- 60325	NPC LOOT (Purple World Drop) - (Item Levels: 51-54) - (NPC Levels: 52-53)
UPDATE `creature_loot_template` SET `mincountOrRef` = -item WHERE `item` = 60325 AND `entry` IN (
8893, -- 60325	-60320	Anvilrage Soldier	52	53	NPC LOOT (Purple World Drop) - (Item Levels: 48-51) - (NPC Levels: 50)
8894 -- 60325	-60321	Anvilrage Medic	52	53	NPC LOOT (Purple World Drop) - (Item Levels: 48-54) - (NPC Levels: 50-51)
);
-- 60326	NPC LOOT (Purple World Drop) - (Item Levels: 52-54) - (NPC Levels: 53)
UPDATE `creature_loot_template` SET `item` = 60331, `mincountOrRef` = -60331 WHERE `item` = 60326 AND `entry` =
13149; -- 60326	-60331	Syndicate Brigand	53	53	NPC LOOT (Purple World Drop) - (Item Levels: 52-59) - (NPC Levels: 55-56)

-- 60327	NPC LOOT (Purple World Drop) - (Item Levels: 52-55) - (NPC Levels: 53-54)
UPDATE `creature_loot_template` SET `mincountOrRef` = -item WHERE `item` = 60327 AND `entry` IN (
8895, -- 60327	-60322	Anvilrage Officer	53	54	NPC LOOT (Purple World Drop) - (Item Levels: 50-52) - (NPC Levels: 51)
8896, -- 60327	-60321	Shadowforge Peasant	52	54	NPC LOOT (Purple World Drop) - (Item Levels: 48-54) - (NPC Levels: 50-51)
8897, -- 60327	-60322	Doomforge Craftsman	52	54	NPC LOOT (Purple World Drop) - (Item Levels: 50-52) - (NPC Levels: 51)
9445 -- 60327	-60324	Dark Guard	53	54	NPC LOOT (Purple World Drop) - (Item Levels: 51-54) - (NPC Levels: 52)
);

-- 60329	NPC LOOT (Purple World Drop) - (Item Levels: 53-56) - (NPC Levels: 54-55)
UPDATE `creature_loot_template` SET `mincountOrRef` = -item WHERE `item` = 60329 AND `entry` IN (
8898, -- 60329	-60327	Anvilrage Marshal	54	55	NPC LOOT (Purple World Drop) - (Item Levels: 50-57) - (NPC Levels: 53-54)
8899, -- 60329	-60327	Doomforge Dragoon	54	55	NPC LOOT (Purple World Drop) - (Item Levels: 50-57) - (NPC Levels: 53-54)
8900 -- 60329	-60328	Doomforge Arcanasmith	54	55	NPC LOOT (Purple World Drop) - (Item Levels: 52-57) - (NPC Levels: 54)
);

-- 60330	NPC LOOT (Purple World Drop) - (Item Levels: 54-56) - (NPC Levels: 55)
UPDATE `creature_loot_template` SET `mincountOrRef` = -item WHERE `item` = 60330 AND `entry` IN (
9437, -- 60330	-60326	Dark Keeper Vorfalk	55	55	NPC LOOT (Purple World Drop) - (Item Levels: 52-54) - (NPC Levels: 53)
9438, -- 60330	-60326	Dark Keeper Bethek	55	55	NPC LOOT (Purple World Drop) - (Item Levels: 52-54) - (NPC Levels: 53)
9439, -- 60330	-60326	Dark Keeper Uggel	55	55	NPC LOOT (Purple World Drop) - (Item Levels: 52-54) - (NPC Levels: 53)
9441, -- 60330	-60326	Dark Keeper Zimrel	55	55	NPC LOOT (Purple World Drop) - (Item Levels: 52-54) - (NPC Levels: 53)
9442, -- 60330	-60326	Dark Keeper Ofgut	55	55	NPC LOOT (Purple World Drop) - (Item Levels: 52-54) - (NPC Levels: 53)
9443, -- 60330	-60326	Dark Keeper Pelver	55	55	NPC LOOT (Purple World Drop) - (Item Levels: 52-54) - (NPC Levels: 53)
9476 -- 60330	-60328	Watchman Doomgrip	55	55	NPC LOOT (Purple World Drop) - (Item Levels: 52-57) - (NPC Levels: 54)
);

-- 60331	NPC LOOT (Purple World Drop) - (Item Levels: 54-57) - (NPC Levels: 55-56)
UPDATE `creature_loot_template` SET `mincountOrRef` = -item WHERE `item` = 60331 AND `entry` IN (
8902, -- 60331	-60323	Shadowforge Citizen	54	56	NPC LOOT (Purple World Drop) - (Item Levels: 47-55) - (NPC Levels: 51-52)
8903, -- 60331	-60330	Anvilrage Captain	55	56	NPC LOOT (Purple World Drop) - (Item Levels: 53-59) - (NPC Levels: 55)
8904, -- 60331	-60329	Shadowforge Senator	55	56	NPC LOOT (Purple World Drop) - (Item Levels: 51-58) - (NPC Levels: 54-55)
8907, -- 60331	-60328	Wrath Hammer Construct	55	56	NPC LOOT (Purple World Drop) - (Item Levels: 52-57) - (NPC Levels: 54)
8908 -- 60331	-60330	Molten War Golem	55	56	NPC LOOT (Purple World Drop) - (Item Levels: 53-59) - (NPC Levels: 55)
);

-- 60333	NPC LOOT (Purple World Drop) - (Item Levels: 55-58) - (NPC Levels: 56-57)
UPDATE `creature_loot_template` SET `mincountOrRef` = -item WHERE `item` = 60333 AND `entry` =
13776; -- 60333	-60332	Corporal Teeka Bloodsnarl	56	57	NPC LOOT (Purple World Drop) - (Item Levels: 54-59) - (NPC Levels: 56)

-- 60340	NPC LOOT (Purple World Drop) - (Item Levels: 59-61) - (NPC Levels: 60) - VANILLA NPC ONLY
UPDATE `creature_loot_template` SET `item` = 60337, `mincountOrRef` = -60337 WHERE `item` = 60340 AND `entry` =
13957; -- 60340	-60337	Winterax Warrior	60	60	NPC LOOT (Purple World Drop) - (Item Levels: 55-62) - (NPC Levels: 58-59) - VANILLA NPC ONLY

-- ==================================================================================

-- Correct wrong Levels for classicmangos diffed with tbcmangos/ccsdb
UPDATE `creature_template` SET `MinLevel` = 49, `MaxLevel` = 50 WHERE `entry` = 5454; -- Hazzali Sandreaver (48-48)
UPDATE `creature_template` SET `MinLevel` = 42, `MaxLevel` = 44 WHERE `entry` = 5646; -- Sandfury Axe Thrower (43,44)
UPDATE `creature_template` SET `MinLevel` = 47, `MaxLevel` = 48 WHERE `entry` = 5990; -- Redstone Basilisk (46-48)
UPDATE `creature_template` SET `MinLevel` = 50, `MaxLevel` = 52 WHERE `entry` = 6378; -- Thunderhead Skystormer (51-52)
UPDATE `creature_template` SET `MinLevel` = 54, `MaxLevel` = 56 WHERE `entry` = 7455; -- Winterspring Owl (55-56)
UPDATE `creature_template` SET `MinLevel` = 59, `MaxLevel` = 60 WHERE `entry` = 7462; -- Hederine Manastalker (58-60)
UPDATE `creature_template` SET `MinLevel` = 56, `MaxLevel` = 58 WHERE `entry` = 8535; -- Putrid Shrieker (56-57)
UPDATE `creature_template` SET `MinLevel` = 54, `MaxLevel` = 55 WHERE `entry` = 9164; -- Elder Diemetradon (53-55)
UPDATE `creature_template` SET `MinLevel` = 52, `MaxLevel` = 54 WHERE `entry` = 9167; -- Frenzied Pterrordax (51-54)
UPDATE `creature_template` SET `MinLevel` = 54, `MaxLevel` = 55 WHERE `entry` = 9695; -- Deathlash Scorpid (54-54)
UPDATE `creature_template` SET `MinLevel` = 53, `MaxLevel` = 54 WHERE `entry` = 9879; -- Entropic Horror (51-54)
UPDATE `creature_template` SET `MinLevel` = 52, `MaxLevel` = 58 WHERE `entry` = 10919; -- Shatterspear Troll (57-57) - lol abuseable aoe farming perfect level to push 60 - drops scrolls III so use ~55lvl as loot
UPDATE `creature_template` SET `MinLevel` = 58, `MaxLevel` = 59 WHERE `entry` = 11727; -- Hive'Zora Wasp (57-59)
UPDATE `creature_template` SET `MinLevel` = 57, `MaxLevel` = 58 WHERE `entry` = 11739; -- Rock Stalker (57-59)
UPDATE `creature_template` SET `MinLevel` = 57, `MaxLevel` = 57 WHERE `entry` = 12051; -- Frostwolf Legionnaire (56-57)
UPDATE `creature_template` SET `MinLevel` = 56, `MaxLevel` = 57 WHERE `entry` = 12125; -- Mammoth Shark (54-54)
UPDATE `creature_template` SET `MinLevel` = 52, `MaxLevel` = 54 WHERE `entry` = 12418; -- Gordok Hyena (52-53)
UPDATE `creature_template` SET `MinLevel` = 57, `MaxLevel` = 58 WHERE `entry` = 13160; -- Carrion Swarmer (56-58)
UPDATE `creature_template` SET `MinLevel` = 54, `MaxLevel` = 56 WHERE `entry` = 13279; -- Discordant Surge (54-57)
UPDATE `creature_template` SET `MinLevel` = 56, `MaxLevel` = 56 WHERE `entry` = 13327; -- Seasoned Sentinel (58-58)
UPDATE `creature_template` SET `MinLevel` = 60, `MaxLevel` = 60 WHERE `entry` = 13332; -- Veteran Guardian (59-60)
UPDATE `creature_template` SET `MinLevel` = 59, `MaxLevel` = 59 WHERE `entry` = 13334; -- Veteran Legionnaire (58-59)

-- Correct wrong Levels for tbc+
-- UPDATE `creature_template` SET `MinLevel` = 46, `MaxLevel` = 48 WHERE `entry` = 5982; -- Black Slayer (47-48)
-- UPDATE `creature_template` SET `MinLevel` = 45, `MaxLevel` = 47 WHERE `entry` = 8095; -- Sul'lithuz Sandcrawler (46-47)
-- UPDATE `creature_template` SET `MinLevel` = 56, `MaxLevel` = 58 WHERE `entry` = 8535; -- Putrid Shrieker (55-57)
-- UPDATE `creature_template` SET `MinLevel` = 50, `MaxLevel` = 51 WHERE `entry` = 8928; -- Burrowing Thundersnout (50-52)
-- UPDATE `creature_template` SET `MinLevel` = 44, `MaxLevel` = 45 WHERE `entry` = 12219; -- Barbed Lasher (45-45)
-- UPDATE `creature_template` SET `MinLevel` = 54, `MaxLevel` = 56 WHERE `entry` = 13279; -- Discordant Surge (54-58)
-- av mobs need special attention... tbc+
-- UPDATE `creature_template` SET `MinLevel` = 50, `MaxLevel` = 51, `HeroicEntry` = 22737 WHERE `entry` = 10981; -- Frostwolf (61-61) - do all again even if already right to align levels, av is just messy
-- UPDATE `creature_template` SET `MinLevel` = 60, `MaxLevel` = 61 WHERE `entry` = 22737; -- Frostwolf (60-61)
-- UPDATE `creature_template` SET `MinLevel` = 52, `MaxLevel` = 53, `HeroicEntry` = 22785 WHERE `entry` = 10991; -- Wildpaw Gnoll (62-63)
-- UPDATE `creature_template` SET `MinLevel` = 62, `MaxLevel` = 63 WHERE `entry` = 22785; -- Wildpaw Gnoll
-- UPDATE `creature_template` SET `MinLevel` = 54, `MaxLevel` = 55, `HeroicEntry` = 22780 WHERE `entry` = 11605; -- Whitewhisker Overseer (64-65)
-- UPDATE `creature_template` SET `MinLevel` = 64, `MaxLevel` = 65 WHERE `entry` = 22780; -- Whitewhisker Overseer
-- UPDATE `creature_template` SET `MinLevel` = 58, `MaxLevel` = 58, `HeroicEntry` = 22690 WHERE `entry` = 12050; -- Stormpike Defender (68-68)
-- UPDATE `creature_template` SET `MinLevel` = 68, `MaxLevel` = 68 WHERE `entry` = 22690; -- Stormpike Defender
-- UPDATE `creature_template` SET `MinLevel` = 57, `MaxLevel` = 57, `HeroicEntry` = 22665 WHERE `entry` = 12051; -- Frostwolf Legionnaire (67-67)
-- UPDATE `creature_template` SET `MinLevel` = 67, `MaxLevel` = 67 WHERE `entry` = 22665; -- Frostwolf Legionnaire
-- UPDATE `creature_template` SET `MinLevel` = 55, `MaxLevel` = 55, `HeroicEntry` = 22649 WHERE `entry` = 12052; -- Frostwolf Warrior (65-65)
-- UPDATE `creature_template` SET `MinLevel` = 65, `MaxLevel` = 65 WHERE `entry` = 22649; -- Frostwolf Warrior
-- UPDATE `creature_template` SET `MinLevel` = 58, `MaxLevel` = 58, `HeroicEntry` = 22674 WHERE `entry` = 12053; -- Frostwolf Guardian (68-68)
-- UPDATE `creature_template` SET `MinLevel` = 68, `MaxLevel` = 68 WHERE `entry` = 22674; -- Frostwolf Guardian
-- UPDATE `creature_template` SET `MinLevel` = 57, `MaxLevel` = 57, `HeroicEntry` = 22666 WHERE `entry` = 12127; -- Stormpike Guardsman (67-67)
-- UPDATE `creature_template` SET `MinLevel` = 67, `MaxLevel` = 67 WHERE `entry` = 22666; -- Stormpike Guardsman
-- UPDATE `creature_template` SET `MinLevel` = 59, `MaxLevel` = 59, `HeroicEntry` = 22708 WHERE `entry` = 13138; -- Lieutenant Spencer (69-69)
-- UPDATE `creature_template` SET `MinLevel` = 69, `MaxLevel` = 69 WHERE `entry` = 22708; -- Lieutenant Spencer
-- UPDATE `creature_template` SET `MinLevel` = 59, `MaxLevel` = 59, `HeroicEntry` = 22710 WHERE `entry` = 13143; -- Lieutenant Stronghoof (69-69)
-- UPDATE `creature_template` SET `MinLevel` = 69, `MaxLevel` = 69 WHERE `entry` = 22710; -- Lieutenant Stronghoof
-- UPDATE `creature_template` SET `MinLevel` = 59, `MaxLevel` = 59, `HeroicEntry` = 22711 WHERE `entry` = 13144; -- Lieutenant Vol'talar (69-69)
-- UPDATE `creature_template` SET `MinLevel` = 69, `MaxLevel` = 69 WHERE `entry` = 22711; -- Lieutenant Vol'talar
-- UPDATE `creature_template` SET `MinLevel` = 59, `MaxLevel` = 59, `HeroicEntry` = 22701 WHERE `entry` = 13145; -- Lieutenant Grummus (69-69)
-- UPDATE `creature_template` SET `MinLevel` = 69, `MaxLevel` = 69 WHERE `entry` = 22701; -- Lieutenant Grummus
-- UPDATE `creature_template` SET `MinLevel` = 59, `MaxLevel` = 59, `HeroicEntry` = 22706 WHERE `entry` = 13146; -- Lieutenant Murp (69-69)
-- UPDATE `creature_template` SET `MinLevel` = 69, `MaxLevel` = 69 WHERE `entry` = 22706; -- Lieutenant Murp
-- UPDATE `creature_template` SET `MinLevel` = 59, `MaxLevel` = 59, `HeroicEntry` = 22703 WHERE `entry` = 13147; -- Lieutenant Lewis (69-69)
-- UPDATE `creature_template` SET `MinLevel` = 69, `MaxLevel` = 69 WHERE `entry` = 22703; -- Lieutenant Lewis
-- UPDATE `creature_template` SET `MinLevel` = 59, `MaxLevel` = 59, `HeroicEntry` = 22700 WHERE `entry` = 13298; -- Lieutenant Greywand (69-69)
-- UPDATE `creature_template` SET `MinLevel` = 69, `MaxLevel` = 69 WHERE `entry` = 22700; -- Lieutenant Greywand
-- UPDATE `creature_template` SET `MinLevel` = 59, `MaxLevel` = 59, `HeroicEntry` = 22704 WHERE `entry` = 13299; -- Lieutenant Lonadin (69-69)
-- UPDATE `creature_template` SET `MinLevel` = 69, `MaxLevel` = 69 WHERE `entry` = 22704; -- Lieutenant Lonadin
-- UPDATE `creature_template` SET `MinLevel` = 58, `MaxLevel` = 58, `HeroicEntry` = 22687 WHERE `entry` = 13324; -- Seasoned Guardsman (68-68)
-- UPDATE `creature_template` SET `MinLevel` = 68, `MaxLevel` = 68 WHERE `entry` = 22687; -- Seasoned Guardsman
-- UPDATE `creature_template` SET `MinLevel` = 56, `MaxLevel` = 56, `HeroicEntry` = 22663 WHERE `entry` = 13327; -- Seasoned Sentinel (68-68)
-- UPDATE `creature_template` SET `MinLevel` = 66, `MaxLevel` = 66 WHERE `entry` = 22663; -- Seasoned Sentinel
-- UPDATE `creature_template` SET `MinLevel` = 58, `MaxLevel` = 58, `HeroicEntry` = 22688 WHERE `entry` = 13329; -- Seasoned Legionnaire (68-68)
-- UPDATE `creature_template` SET `MinLevel` = 68, `MaxLevel` = 68 WHERE `entry` = 22688; -- Seasoned Legionnaire
-- UPDATE `creature_template` SET `MinLevel` = 56, `MaxLevel` = 56, `HeroicEntry` = 22664 WHERE `entry` = 13330; -- Seasoned Warrior (68-68)
-- UPDATE `creature_template` SET `MinLevel` = 66, `MaxLevel` = 66 WHERE `entry` = 22664; -- Seasoned Warrior
-- UPDATE `creature_template` SET `MinLevel` = 60, `MaxLevel` = 60, `HeroicEntry` = 22589 WHERE `entry` = 13332; -- Veteran Guardian (68-68)
-- UPDATE `creature_template` SET `MinLevel` = 70, `MaxLevel` = 70 WHERE `entry` = 22589; -- Veteran Guardian
-- UPDATE `creature_template` SET `MinLevel` = 59, `MaxLevel` = 59, `HeroicEntry` = 22719 WHERE `entry` = 13333; -- Veteran Guardsman (69-69)
-- UPDATE `creature_template` SET `MinLevel` = 69, `MaxLevel` = 69 WHERE `entry` = 22719; -- Veteran Guardsman
-- UPDATE `creature_template` SET `MinLevel` = 59, `MaxLevel` = 59, `HeroicEntry` = 22720 WHERE `entry` = 13334; -- Veteran Legionnaire (69-69)
-- UPDATE `creature_template` SET `MinLevel` = 69, `MaxLevel` = 69 WHERE `entry` = 22720; -- Veteran Legionnaire
-- UPDATE `creature_template` SET `MinLevel` = 57, `MaxLevel` = 57, `HeroicEntry` = 22668 WHERE `entry` = 13336; -- Veteran Sentinel (67-67)
-- UPDATE `creature_template` SET `MinLevel` = 67, `MaxLevel` = 67 WHERE `entry` = 22668; -- Veteran Sentinel
-- UPDATE `creature_template` SET `MinLevel` = 57, `MaxLevel` = 57, `HeroicEntry` = 22669 WHERE `entry` = 13337; -- Veteran Warrior (67-67)
-- UPDATE `creature_template` SET `MinLevel` = 67, `MaxLevel` = 67 WHERE `entry` = 22669; -- Veteran Warrior
-- UPDATE `creature_template` SET `MinLevel` = 60, `MaxLevel` = 60, `HeroicEntry` = 22533 WHERE `entry` = 13424; -- Champion Guardsman (70-70)
-- UPDATE `creature_template` SET `MinLevel` = 70, `MaxLevel` = 70 WHERE `entry` = 22533; -- Champion Guardsman
-- UPDATE `creature_template` SET `MinLevel` = 60, `MaxLevel` = 60, `HeroicEntry` = 22538 WHERE `entry` = 13425; -- Champion Legionnaire (70-70)
-- UPDATE `creature_template` SET `MinLevel` = 70, `MaxLevel` = 70 WHERE `entry` = 22538; -- Champion Legionnaire
-- UPDATE `creature_template` SET `MinLevel` = 58, `MaxLevel` = 58, `HeroicEntry` = 22671 WHERE `entry` = 13426; -- Champion Mountaineer (68-68)
-- UPDATE `creature_template` SET `MinLevel` = 68, `MaxLevel` = 68 WHERE `entry` = 22671; -- Champion Mountaineer
-- UPDATE `creature_template` SET `MinLevel` = 58, `MaxLevel` = 58, `HeroicEntry` = 22673 WHERE `entry` = 13428; -- Champion Warrior (68-68)
-- UPDATE `creature_template` SET `MinLevel` = 68, `MaxLevel` = 68 WHERE `entry` = 22673; -- Champion Warrior
-- UPDATE `creature_template` SET `MinLevel` = 58, `MaxLevel` = 58, `HeroicEntry` = 22679 WHERE `entry` = 13440; -- Frostwolf Wolf Rider (68-68)
-- UPDATE `creature_template` SET `MinLevel` = 68, `MaxLevel` = 68 WHERE `entry` = 22679; -- Frostwolf Wolf Rider
-- UPDATE `creature_template` SET `MinLevel` = 59, `MaxLevel` = 59, `HeroicEntry` = 22718 WHERE `entry` = 13529; -- Seasoned Reaver (69-69)
-- UPDATE `creature_template` SET `MinLevel` = 69, `MaxLevel` = 69 WHERE `entry` = 22718; -- Seasoned Reaver
-- UPDATE `creature_template` SET `MinLevel` = 61, `MaxLevel` = 61, `HeroicEntry` = 22612 WHERE `entry` = 13531; -- Champion Reaver (71-71)
-- UPDATE `creature_template` SET `MinLevel` = 71, `MaxLevel` = 71 WHERE `entry` = 22612; -- Champion Reaver
-- UPDATE `creature_template` SET `MinLevel` = 58, `MaxLevel` = 58, `HeroicEntry` = 22691 WHERE `entry` = 13576; -- Stormpike Ram Rider (68-68)
-- UPDATE `creature_template` SET `MinLevel` = 68, `MaxLevel` = 68 WHERE `entry` = 22691; -- Stormpike Ram Rider
-- UPDATE `creature_template` SET `MinLevel` = 50, `MaxLevel` = 51, `HeroicEntry` = 22764 WHERE `entry` = 13676; -- Stabled Alterac Ram (60-61)
-- UPDATE `creature_template` SET `MinLevel` = 60, `MaxLevel` = 61 WHERE `entry` = 22764; -- Stabled Alterac Ram
-- UPDATE `creature_template` SET `MinLevel` = 61, `MaxLevel` = 61, `HeroicEntry` = 22615 WHERE `entry` = 13320; -- Commander Karl Philips (71-71)
-- UPDATE `creature_template` SET `MinLevel` = 71, `MaxLevel` = 71 WHERE `entry` = 22615; -- Commander Karl Philips

-- Rename Refloots due to newly added items
UPDATE `reference_loot_template_names` SET `name` = 'NPC LOOT (Purple World Drop) - (Item Levels: 40-43) - (NPC Levels: 38-40)' WHERE `entry` = 60300;
UPDATE `reference_loot_template_names` SET `name` = 'NPC LOOT (Purple World Drop) - (Item Levels: 40-44) - (NPC Levels: 40-41)' WHERE `entry` = 60301;
UPDATE `reference_loot_template_names` SET `name` = 'NPC LOOT (Purple World Drop) - (Item Levels: 40-42) - (NPC Levels: 41)' WHERE `entry` = 60302;
UPDATE `reference_loot_template_names` SET `name` = 'NPC LOOT (Purple World Drop) - (Item Levels: 40-45) - (NPC Levels: 41-42)' WHERE `entry` = 60303;
UPDATE `reference_loot_template_names` SET `name` = 'NPC LOOT (Purple World Drop) - (Item Levels: 41-43) - (NPC Levels: 42)' WHERE `entry` = 60304;
UPDATE `reference_loot_template_names` SET `name` = 'NPC LOOT (Purple World Drop) - (Item Levels: 40-46) - (NPC Levels: 42-43)' WHERE `entry` = 60305;
UPDATE `reference_loot_template_names` SET `name` = 'NPC LOOT (Purple World Drop) - (Item Levels: 42-44) - (NPC Levels: 43)' WHERE `entry` = 60306;
UPDATE `reference_loot_template_names` SET `name` = 'NPC LOOT (Purple World Drop) - (Item Levels: 41-47) - (NPC Levels: 43-44)' WHERE `entry` = 60307;
UPDATE `reference_loot_template_names` SET `name` = 'NPC LOOT (Purple World Drop) - (Item Levels: 43-45) - (NPC Levels: 44)' WHERE `entry` = 60308;
UPDATE `reference_loot_template_names` SET `name` = 'NPC LOOT (Purple World Drop) - (Item Levels: 41-48) - (NPC Levels: 44-45)' WHERE `entry` = 60309;
UPDATE `reference_loot_template_names` SET `name` = 'NPC LOOT (Purple World Drop) - (Item Levels: 44-46) - (NPC Levels: 45)' WHERE `entry` = 60310;
UPDATE `reference_loot_template_names` SET `name` = 'NPC LOOT (Purple World Drop) - (Item Levels: 42-49) - (NPC Levels: 45-46)' WHERE `entry` = 60311;
UPDATE `reference_loot_template_names` SET `name` = 'NPC LOOT (Purple World Drop) - (Item Levels: 44-49) - (NPC Levels: 46)' WHERE `entry` = 60312;
UPDATE `reference_loot_template_names` SET `name` = 'NPC LOOT (Purple World Drop) - (Item Levels: 43-50) - (NPC Levels: 46-47)' WHERE `entry` = 60313;
UPDATE `reference_loot_template_names` SET `name` = 'NPC LOOT (Purple World Drop) - (Item Levels: 46-49) - (NPC Levels: 47)' WHERE `entry` = 60314;
UPDATE `reference_loot_template_names` SET `name` = 'NPC LOOT (Purple World Drop) - (Item Levels: 44-51) - (NPC Levels: 47-48)' WHERE `entry` = 60315;
UPDATE `reference_loot_template_names` SET `name` = 'NPC LOOT (Purple World Drop) - (Item Levels: 47-49) - (NPC Levels: 48)' WHERE `entry` = 60316;
UPDATE `reference_loot_template_names` SET `name` = 'NPC LOOT (Purple World Drop) - (Item Levels: 45-52) - (NPC Levels: 48-49)' WHERE `entry` = 60317;
UPDATE `reference_loot_template_names` SET `name` = 'NPC LOOT (Purple World Drop) - (Item Levels: 48-50) - (NPC Levels: 49)' WHERE `entry` = 60318;
UPDATE `reference_loot_template_names` SET `name` = 'NPC LOOT (Purple World Drop) - (Item Levels: 46-53) - (NPC Levels: 49-50)' WHERE `entry` = 60319;
UPDATE `reference_loot_template_names` SET `name` = 'NPC LOOT (Purple World Drop) - (Item Levels: 48-51) - (NPC Levels: 50)' WHERE `entry` = 60320;
UPDATE `reference_loot_template_names` SET `name` = 'NPC LOOT (Purple World Drop) - (Item Levels: 48-54) - (NPC Levels: 50-51)' WHERE `entry` = 60321;
UPDATE `reference_loot_template_names` SET `name` = 'NPC LOOT (Purple World Drop) - (Item Levels: 50-52) - (NPC Levels: 51)' WHERE `entry` = 60322;
UPDATE `reference_loot_template_names` SET `name` = 'NPC LOOT (Purple World Drop) - (Item Levels: 47-55) - (NPC Levels: 51-52)' WHERE `entry` = 60323;
UPDATE `reference_loot_template_names` SET `name` = 'NPC LOOT (Purple World Drop) - (Item Levels: 51-54) - (NPC Levels: 52)' WHERE `entry` = 60324;
UPDATE `reference_loot_template_names` SET `name` = 'NPC LOOT (Purple World Drop) - (Item Levels: 50-56) - (NPC Levels: 52-53)' WHERE `entry` = 60325;
UPDATE `reference_loot_template_names` SET `name` = 'NPC LOOT (Purple World Drop) - (Item Levels: 52-54) - (NPC Levels: 53)' WHERE `entry` = 60326;
UPDATE `reference_loot_template_names` SET `name` = 'NPC LOOT (Purple World Drop) - (Item Levels: 50-57) - (NPC Levels: 53-54)' WHERE `entry` = 60327;
UPDATE `reference_loot_template_names` SET `name` = 'NPC LOOT (Purple World Drop) - (Item Levels: 52-57) - (NPC Levels: 54)' WHERE `entry` = 60328;
UPDATE `reference_loot_template_names` SET `name` = 'NPC LOOT (Purple World Drop) - (Item Levels: 51-58) - (NPC Levels: 54-55)' WHERE `entry` = 60329;
UPDATE `reference_loot_template_names` SET `name` = 'NPC LOOT (Purple World Drop) - (Item Levels: 53-59) - (NPC Levels: 55)' WHERE `entry` = 60330;
UPDATE `reference_loot_template_names` SET `name` = 'NPC LOOT (Purple World Drop) - (Item Levels: 52-59) - (NPC Levels: 55-56)' WHERE `entry` = 60331;
UPDATE `reference_loot_template_names` SET `name` = 'NPC LOOT (Purple World Drop) - (Item Levels: 54-59) - (NPC Levels: 56)' WHERE `entry` = 60332;
UPDATE `reference_loot_template_names` SET `name` = 'NPC LOOT (Purple World Drop) - (Item Levels: 53-60) - (NPC Levels: 56-57)' WHERE `entry` = 60333;
UPDATE `reference_loot_template_names` SET `name` = 'NPC LOOT (Purple World Drop) - (Item Levels: 55-60) - (NPC Levels: 57)' WHERE `entry` = 60334;
UPDATE `reference_loot_template_names` SET `name` = 'NPC LOOT (Purple World Drop) - (Item Levels: 54-61) - (NPC Levels: 57-58) - VANILLA NPC ONLY' WHERE `entry` = 60335;
UPDATE `reference_loot_template_names` SET `name` = 'NPC LOOT (Purple World Drop) - (Item Levels: 56-61) - (NPC Levels: 58) - VANILLA NPC ONLY' WHERE `entry` = 60336;
UPDATE `reference_loot_template_names` SET `name` = 'NPC LOOT (Purple World Drop) - (Item Levels: 55-62) - (NPC Levels: 58-59) - VANILLA NPC ONLY' WHERE `entry` = 60337;
UPDATE `reference_loot_template_names` SET `name` = 'NPC LOOT (Purple World Drop) - (Item Levels: 57-62) - (NPC Levels: 59) - VANILLA NPC ONLY' WHERE `entry` = 60338;
UPDATE `reference_loot_template_names` SET `name` = 'NPC LOOT (Purple World Drop) - (Item Levels: 56-63) - (NPC Levels: 59-60) - VANILLA NPC ONLY' WHERE `entry` = 60339;
UPDATE `reference_loot_template_names` SET `name` = 'NPC LOOT (Purple World Drop) - (Item Levels: 58-63) - (NPC Levels: 60) - VANILLA NPC ONLY' WHERE `entry` = 60340;
UPDATE `reference_loot_template_names` SET `name` = 'NPC LOOT (Purple World Drop) - (Item Levels: 57-64) - (NPC Levels: 60-61) - VANILLA NPC ONLY' WHERE `entry` = 60341;
UPDATE `reference_loot_template_names` SET `name` = 'NPC LOOT (Purple World Drop) - (Item Levels: 59-64) - (NPC Levels: 61) - VANILLA NPC ONLY' WHERE `entry` = 60342;
UPDATE `reference_loot_template_names` SET `name` = 'NPC LOOT (Purple World Drop) - (Item Levels: 59-65) - (NPC Levels: 61-62) - VANILLA NPC ONLY' WHERE `entry` = 60343;
UPDATE `reference_loot_template_names` SET `name` = 'NPC LOOT (Purple World Drop) - (Item Levels: 60-65) - (NPC Levels: 62) - VANILLA NPC ONLY' WHERE `entry` = 60344;

-- Remove 24079-24090 which were used multiple times in same mob making epics drop left and right!
DELETE FROM `creature_loot_template` WHERE (`mincountorref` BETWEEN -24090 AND -24079); -- diffed with wotlk, included all seemingly good cases
DELETE FROM `reference_loot_template` WHERE `entry` BETWEEN 24079 AND 24090;
DELETE FROM `reference_loot_template_names` WHERE `entry` BETWEEN 24079 AND 24090;

-- Align Chances Range (0.004 - 0.1) -> 1:25000 to 1:10000
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 0.01 WHERE `entry` != 15818 AND `mincountOrRef` BETWEEN -60344 AND -60300; 

-- Check for Single Items in all creatures from the new refloots! - nada más
DELETE FROM `creature_loot_template` WHERE `item` IN (867,869,870,873,1204,1980,2825,868,1981,1982,2164,14549,1169,1447,940,871,943,2100,14551,1979,2291,17007,809,1315,942,2915,2163,2824,810,812,3075,14552,833,2244,647,811,2099,2246,2245,1168,1263,1443,944,14553,2243,14554,14555,2801,14558,14557,3475,1728)
-- wotlk+ mobs (with epic items) - that should get a refloot assigned instead of items
-- 28942	Citizen of New Avalon	30	50
-- 28557	Scarlet Peasant	44	46
-- 28846	Scarlet Ghost	50	50
-- 28608	Scarlet Medic	53	54
-- 28609	Scarlet Infantryman	53	54
-- 28939	Scarlet Preacher	53	54
-- 28610	Scarlet Marksman	54	55
-- 28611	Scarlet Captain	54	55
-- 28940	Scarlet Crusader	54	55
-- 28768	Dark Rider of Acherus	55	55
-- 28936	Scarlet Commander	55	56
-- 28945	Mayor Quimby	56	56
-- 28946	New Avalon Councilman	56	56
-- 29001	High Inquisitor Valroth	56	56

