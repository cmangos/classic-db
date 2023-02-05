-- Remove Refloots 24016-24078 (green itemlevel 10-65)
-- Remove Refloot 24106

-- at times there were chances of up to 1%*5 for one mob
-- care "tbc+" "wotlk+" "classic only" comments
-- 24016	green itemlevel 59-61
-- 24018	green itemlevel 62-63
-- 24020	green itemlevel 64-65
-- 24025	green itemlevel 50-51
-- 24027	green itemlevel 52-53
-- 24029	green itemlevel 54-55
-- 24031	green itemlevel 56-57
-- 24033	green itemlevel 58-59
-- 24037	green itemlevel 40-42
-- 24039	green itemlevel 42-43
-- 24041	green itemlevel 40-45
-- 24043	green itemlevel 46-47
-- 24045	green itemlevel 48-49
-- 24048	green itemlevel 30-31
-- 24050	green itemlevel 32-33
-- 24052	green itemlevel 34-35
-- 24054	green itemlevel 36-37
-- 24056	green itemlevel 38-39
-- 24060	green itemlevel 20-21
-- 24062	green itemlevel 22-23
-- 24064	green itemlevel 24-25
-- 24068	green itemlevel 28-29
-- 24074	green itemlevel 10-11
-- 24075	green itemlevel 12-13
-- 24076	green itemlevel 14-15
-- 24077	green itemlevel 16-17
-- 24078	green itemlevel 18-19
-- 24106	-24060 (25%) -24064 (25%) -24062 (50%)

-- See about Chance if its between 2-4% for a green item by default
-- 1547, -- Decrepit Darkhound (5-6) - https://web.archive.org/web/20071109115851/http://wow.allakhazam.com/db/mob.html?wmob=1547
-- 3125, -- Clattering Scorpid (5-6) - https://web.archive.org/web/20071102151753/http://wow.allakhazam.com/db/mob.html?wmob=3125
-- 2969, -- Wiry Swoop (5-7) - https://web.archive.org/web/20071110220439/http://wow.allakhazam.com/db/mob.html?wmob=2969

-- 60100	NPC LOOT (Green World Drop) - (Item Levels: 7-12) - (NPC Levels: 8)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60100, -60100, 0.1, 0, 1 FROM `creature_template` WHERE `entry` IN (
1126, -- Large Crag Boar (6-7) - https://web.archive.org/web/20071102173813/http://wow.allakhazam.com/db/mob.html?wmob=1126
1138, -- Snow Tracker Wolf (6-7) - https://web.archive.org/web/20071116001231/http://wow.allakhazam.com/db/mob.html?wmob=1138
1553, -- Greater Duskbat (6-7) - https://web.archive.org/web/20071109115901/http://wow.allakhazam.com/db/mob.html?wmob=1553
3099, -- Dire Mottled Boar (6-7) - https://web.archive.org/web/20071102174123/http://wow.allakhazam.com/db/mob.html?wmob=3099
2956); -- Adult Plainstrider (6-7) - https://web.archive.org/web/20071026023957/http://wow.allakhazam.com/db/mob.html?wmob=2956

-- 60100	NPC LOOT (Green World Drop) - (Item Levels: 7-12) - (NPC Levels: 8)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60100, -60100, 0.50, 0, 1 FROM `creature_template` WHERE `entry` IN (
3122, -- Bloodtalon Taillasher (6-8) - https://web.archive.org/web/20071102180357/http://wow.allakhazam.com/db/mob.html?wmob=3122
1127, -- Elder Crag Boar (7-8) - https://web.archive.org/web/20071102173818/http://wow.allakhazam.com/db/mob.html?wmob=1127
1131, -- Winter Wolf (7-8) - https://web.archive.org/web/20071116035529/http://wow.allakhazam.com/db/mob.html?wmob=1131
1201, -- Snow Leopard (7-8) - https://web.archive.org/web/20071115230859/http://wow.allakhazam.com/db/mob.html?wmob=1201
1548, -- Cursed Darkhound (7-8) - https://web.archive.org/web/20071031220803/http://wow.allakhazam.com/db/mob.html?wmob=1548
1922, -- Gray Forest Wolf (7-8) - https://web.archive.org/web/20071030064631/http://wow.allakhazam.com/db/mob.html?wmob=1922
1996, -- Strigid Screecher (7-8) - https://web.archive.org/web/20071018060806/http://wow.allakhazam.com/db/mob.html?wmob=1996
1999, -- Webwood Venomfang (7-8) - https://web.archive.org/web/20071104051402/http://wow.allakhazam.com/db/mob.html?wmob=1999
2043, -- Nightsaber Stalker (7-8) - https://web.archive.org/web/20071104051442/http://wow.allakhazam.com/db/mob.html?wmob=2043
2972, -- Kodo Calf (7-8) - https://web.archive.org/web/20071030130302/http://wow.allakhazam.com/db/mob.html?wmob=2972
3035, -- Flatland Cougar (7-8) - https://web.archive.org/web/20071030065321/http://wow.allakhazam.com/db/mob.html?wmob=3035
3107, -- Surf Crawler (7-8) - https://web.archive.org/web/20071103024438/http://wow.allakhazam.com/db/mob.html?wmob=3107
3126); -- Armored Scorpid (7-8) - https://web.archive.org/web/20071103024443/http://wow.allakhazam.com/db/mob.html?wmob=3126
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 0.50 WHERE `mincountOrRef` = -60100 AND `ChanceOrQuestChance` IN (2,30);

-- 60101	NPC LOOT (Green World Drop) - (Item Levels: 7-12) - (NPC Levels: 8-9)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60101, -60101, 0.75, 0, 1 FROM `creature_template` WHERE `entry` IN (
2970, -- Swoop (7-9) - https://web.archive.org/web/20071106082958/http://wow.allakhazam.com/db/mob.html?wmob=2970 - little less maybe 0.5
1133, -- Starving Winter Wolf (8-9) - https://web.archive.org/web/20071116012624/http://wow.allakhazam.com/db/mob.html?wmob=1133
1554, -- Vampiric Duskbat (8-9) - https://web.archive.org/web/20071109115907/http://wow.allakhazam.com/db/mob.html?wmob=1554
1997, -- Strigid Hunter (8-9) - https://web.archive.org/web/20071104032807/http://wow.allakhazam.com/db/mob.html?wmob=1997
2000, -- Webwood Silkspinner (8-9) - https://web.archive.org/web/20071104051407/http://wow.allakhazam.com/db/mob.html?wmob=2000
2033, -- Elder Nightsaber (8-9) - https://web.archive.org/web/20071104032912/http://wow.allakhazam.com/db/mob.html?wmob=2033
2957, -- Elder Plainstrider (8-9) - https://web.archive.org/web/20071030130252/http://wow.allakhazam.com/db/mob.html?wmob=2957
3100); -- Elder Mottled Boar (8-9) - https://web.archive.org/web/20071026090915/http://wow.allakhazam.com/db/mob.html?wmob=3100
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 0.75 WHERE `mincountOrRef` = -60101 AND `ChanceOrQuestChance` = 2;

-- 60102	NPC LOOT (Green World Drop) - (Item Levels: 8-12) - (NPC Levels: 9)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60102, -60102, 1, 0, 1 FROM `creature_template` WHERE `entry` = 330; -- Princess (9-9)
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 1 WHERE `mincountOrRef` = -60102 AND `ChanceOrQuestChance` = 2;

-- 60103	NPC LOOT (Green World Drop) - (Item Levels: 8-13) - (NPC Levels: 9-10)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60103, -60103, 1.5, 0, 1 FROM `creature_template` WHERE `entry` IN (
6911, -- Minion of Sethir (8-10) - https://web.archive.org/web/20071104033823/http://wow.allakhazam.com/db/mob.html?wmob=6911
1211, -- Leper Gnome (8-10) - https://web.archive.org/web/20071031015009/http://wow.allakhazam.com/db/mob.html?wmob=1211
2971, -- Taloned Swoop (8-10) - https://web.archive.org/web/20071030065316/http://wow.allakhazam.com/db/mob.html?wmob=2971
3123, -- Bloodtalon Scythemaw (8-10) - https://web.archive.org/web/20071031104519/http://wow.allakhazam.com/db/mob.html?wmob=3123
118, -- Prowler (9-10) - https://web.archive.org/web/20071030063732/http://wow.allakhazam.com/db/mob.html?wmob=118
1549, -- Ravenous Darkhound (9-10) - https://web.archive.org/web/20071109115856/http://wow.allakhazam.com/db/mob.html?wmob=1549
1555, -- Vicious Night Web Spider (9-10) - https://web.archive.org/web/20071029035514/http://wow.allakhazam.com/db/mob.html?wmob=1555
2231, -- Pygmy Tide Crawler (9-10) - https://web.archive.org/web/20071109010552/http://wow.allakhazam.com/db/mob.html?wmob=2231
3108, -- Encrusted Surf Crawler (9-10) - https://web.archive.org/web/20071102213927/http://wow.allakhazam.com/db/mob.html?wmob=3108
3127, -- Venomtail Scorpid (9-10) - https://web.archive.org/web/20071102151759/http://wow.allakhazam.com/db/mob.html?wmob=3127
6789); -- Thistle Cub (9-10) - https://web.archive.org/web/20071107002329/http://wow.allakhazam.com/db/mob.html?wmob=6789
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 1.5 WHERE `mincountOrRef` = -60103 AND `ChanceOrQuestChance` IN (2,20); -- rake has special grp, else normal chance

-- 60104	NPC LOOT (Green World Drop) - (Item Levels: 9-13) - (NPC Levels: 10)
-- 60105	NPC LOOT (Green World Drop) - (Item Levels: 9-14) - (NPC Levels: 10-11)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60105, -60105, 2, 0, 1 FROM `creature_template` WHERE `entry` IN (
3110, -- Dreadmaw Crocolisk (9-11) - https://web.archive.org/web/20071031222758/http://wow.allakhazam.com/db/mob.html?wmob=3110
1190, -- Mountain Boar (10-11) - https://web.archive.org/web/20071102173823/http://wow.allakhazam.com/db/mob.html?wmob=1190
1195, -- Forest Lurker (10-11) - https://web.archive.org/web/20071015210219/http://wow.allakhazam.com/db/mob.html?wmob=1195
1765, -- Worg (10-11) - https://web.archive.org/web/20071102202430/http://wow.allakhazam.com/db/mob.html?wmob=1765
2001, -- Giant Webwood Spider (10-11) - https://web.archive.org/web/20071104051412/http://wow.allakhazam.com/db/mob.html?wmob=2001
2034, -- Feral Nightsaber (10-11) - https://web.archive.org/web/20071104032918/http://wow.allakhazam.com/db/mob.html?wmob=2034
2070, -- Moonstalker Runt (10-11) - https://web.archive.org/web/20071106121453/http://wow.allakhazam.com/db/mob.html?wmob=2070
2234, -- Young Reef Crawler (10-11) - https://web.archive.org/web/20071106082813/http://wow.allakhazam.com/db/mob.html?wmob=2234
2973, -- Kodo Bull (10-11) - https://web.archive.org/web/20071031091458/http://wow.allakhazam.com/db/mob.html?wmob=2973
3225, -- Corrupted Mottled Boar (10-11) - https://web.archive.org/web/20071102174133/http://wow.allakhazam.com/db/mob.html?wmob=3225
3226, -- Corrupted Scorpid (10-11) - https://web.archive.org/web/20071031222808/http://wow.allakhazam.com/db/mob.html?wmob=3226
3227, -- Corrupted Bloodtalon Scythemaw (10-11) - https://web.archive.org/web/20071102180359/http://wow.allakhazam.com/db/mob.html?wmob=3227
3228); -- Corrupted Surf Crawler (10-11) - https://web.archive.org/web/20071102151854/http://wow.allakhazam.com/db/mob.html?wmob=3228

-- 60106	NPC LOOT (Green World Drop) - (Item Levels: 10-14) - (NPC Levels: 11)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60106, -60106, 5, 0, 1 FROM `creature_template` WHERE `entry` = 1961; -- Mangeclaw (11-11) - https://web.archive.org/web/20071115014736/http://wow.allakhazam.com/db/mob.html?wmob=1961
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60106, -60106, 2, 0, 1 FROM `creature_template` WHERE `entry` = 3058; -- Arra'chea (11-11) - https://web.archive.org/web/20071125092903/http://wow.allakhazam.com/db/mob.html?wmob=3058

-- 60107	NPC LOOT (Green World Drop) - (Item Levels: 10-15) - (NPC Levels: 11-12)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60107, -60107, 2, 0, 1 FROM `creature_template` WHERE `entry` IN (
1186, -- Elder Black Bear (11-12) - https://web.archive.org/web/20071106033456/http://wow.allakhazam.com/db/mob.html?wmob=1186
1766, -- Mottled Worg (11-12) - https://web.archive.org/web/20071102202435/http://wow.allakhazam.com/db/mob.html?wmob=1766
2163, -- Thistle Bear (11-12) - https://web.archive.org/web/20071106121523/http://wow.allakhazam.com/db/mob.html?wmob=2163
2974, -- Kodo Matriarch (11-12) - https://web.archive.org/web/20071029120620/http://wow.allakhazam.com/db/mob.html?wmob=2974
3231, -- Corrupted Dreadmaw Crocolisk (11-12) - https://web.archive.org/web/20071104112125/http://wow.allakhazam.com/db/mob.html?wmob=3231
3244, -- Greater Plainstrider (11-12) - https://web.archive.org/web/20071026041020/http://wow.allakhazam.com/db/mob.html?wmob=3244
3415); -- Savannah Huntress (11-12) - https://web.archive.org/web/20071104001123/http://wow.allakhazam.com/db/mob.html?wmob=3415

-- 60108	NPC LOOT (Green World Drop) - (Item Levels: 11-15) - (NPC Levels: 12)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60108, -60108, 2, 0, 1 FROM `creature_template` WHERE `entry` = 7319; -- Lady Sathrah (12-12) - https://web.archive.org/web/20071030074033/http://wow.allakhazam.com/db/mob.html?wmob=7319

-- 60109	NPC LOOT (Green World Drop) - (Item Levels: 11-16) - (NPC Levels: 12-13)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60109, -60109, 2, 0, 1 FROM `creature_template` WHERE `entry` IN (
2321, -- Foreststrider Fledgling (11-13) - https://web.archive.org/web/20071109010612/http://wow.allakhazam.com/db/mob.html?wmob=2321
3254, -- Sunscale Lashtail (11-13) - https://web.archive.org/web/20071102231247/http://wow.allakhazam.com/db/mob.html?wmob=3254
454, -- Young Goretusk (12-13) - https://web.archive.org/web/20071026072637/http://wow.allakhazam.com/db/mob.html?wmob=454
1193, -- Loch Frenzy (12-13) - https://web.archive.org/web/20071105153556/http://wow.allakhazam.com/db/mob.html?wmob=1193
1780, -- Moss Stalker (12-13) - https://web.archive.org/web/20071031015335/http://wow.allakhazam.com/db/mob.html?wmob=1780
1797, -- Giant Grizzled Bear (12-13) - https://web.archive.org/web/20071031015345/http://wow.allakhazam.com/db/mob.html?wmob=1797
3243, -- Savannah Highmane (12-13) - https://web.archive.org/web/20071104001028/http://wow.allakhazam.com/db/mob.html?wmob=3243
3246); -- Fleeting Plainstrider (12-13) - https://web.archive.org/web/20071030001711/http://wow.allakhazam.com/db/mob.html?wmob=3246
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60109, -60109, 4, 0, 1 FROM `creature_template` WHERE `entry` = 5435; -- Sand Shark (12-13)

-- 60110	NPC LOOT (Green World Drop) - (Item Levels: 12-16) - (NPC Levels: 13)
DELETE FROM `creature_loot_template` WHERE `entry` = 2175 AND `mincountOrRef` = -60109;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60110, -60110, 100, 0, 1 FROM `creature_template` WHERE `entry` = 2175; -- https://www.wowhead.com/tbc/npc=2175/shadowclaw

-- 60111	NPC LOOT (Green World Drop) - (Item Levels: 12-17) - (NPC Levels: 13-14)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60111, -60111, 2, 0, 1 FROM `creature_template` WHERE `entry` IN (
2185, -- Darkshore Thresher (12-14) - https://web.archive.org/web/20071107074728/http://wow.allakhazam.com/db/mob.html?wmob=2185
10160, -- Raging Moonkin (12-14) - https://web.archive.org/web/20071109005956/http://wow.allakhazam.com/db/mob.html?wmob=10160
830, -- Sand Crawler (13-14) - https://web.archive.org/web/20071107022314/http://wow.allakhazam.com/db/mob.html?wmob=830 unique item
1188, -- Grizzled Black Bear (13-14) - https://web.archive.org/web/20071105153551/http://wow.allakhazam.com/db/mob.html?wmob=1188
1781, -- Mist Creeper (13-14) - https://web.archive.org/web/20071031015340/http://wow.allakhazam.com/db/mob.html?wmob=1781
2232, -- Tide Crawler (12-14) - https://web.archive.org/web/20071109010557/http://wow.allakhazam.com/db/mob.html?wmob=2232
3242, -- Zhevra Runner (13-14) - https://web.archive.org/web/20071026090925/http://wow.allakhazam.com/db/mob.html?wmob=3242
1184); -- Cliff Lurker (13-14) - https://web.archive.org/web/20071030141311/http://wow.allakhazam.com/db/mob.html?wmob=1184
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60111, -60111, 10, 0, 1 FROM `creature_template` WHERE `entry` = 11320; -- Earthborer (13-14)

-- 60112	NPC LOOT (Green World Drop) - (Item Levels: 13-17) - (NPC Levels: 14)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60112, -60112, 2, 0, 1 FROM `creature_template` WHERE `entry` = 4263; -- Deepmoss Hatchling (14-14) - https://web.archive.org/web/20071118031645/http://wow.allakhazam.com/db/mob.html?wmob=4263

REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60112, -60112, 100, 0, 1 FROM `creature_template` WHERE `entry` = 2191; -- https://www.wowhead.com/tbc/npc=2191/licillin

-- 60113	NPC LOOT (Green World Drop) - (Item Levels: 13-18) - (NPC Levels: 14-15)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60113, -60113, 2, 0, 1 FROM `creature_template` WHERE `entry` IN (
3255, -- Sunscale Screecher (13-15) - https://web.archive.org/web/20071026041025/http://wow.allakhazam.com/db/mob.html?wmob=3255
1191, -- Mangy Mountain Boar (14-15) - https://web.archive.org/web/20071102180229/http://wow.allakhazam.com/db/mob.html?wmob=1191
1693, -- Loch Crocolisk (14-15) - https://web.archive.org/web/20071105062104/http://wow.allakhazam.com/db/mob.html?wmob=1693
2173, -- Reef Frenzy (14-15) - https://web.archive.org/web/20071013153036/http://wow.allakhazam.com/db/mob.html?wmob=2173
3234, -- Lost Barrens Kodo (14-15) - https://web.archive.org/web/20071028141611/http://wow.allakhazam.com/db/mob.html?wmob=3234
3425, -- Savannah Prowler (14-15) - https://web.archive.org/web/20071030133030/http://wow.allakhazam.com/db/mob.html?wmob=3425
8236); -- Muck Frenzy (14-15) - https://web.archive.org/web/20071104011413/http://wow.allakhazam.com/db/mob.html?wmob=8236

-- https://github.com/cmangos/tbc-db/commit/4392c4bd62dab0094953d26ce99baaf11afbacae - increase further.
DELETE FROM `creature_loot_template` WHERE `entry` IN (11318,11319,11321,11322,11323,11324) AND `mincountOrRef` = -60112;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60113, -60113, 8, 0, 1 FROM `creature_template` WHERE `entry` IN (
11318, -- Ragefire Trogg (13-15) - https://web.archive.org/web/20071012230407/http://wow.allakhazam.com/db/mob.html?wmob=11318
11319, -- Ragefire Shaman (13-15) - https://web.archive.org/web/20071014002740/http://wow.allakhazam.com/db/mob.html?wmob=11319
11321, -- Molten Elemental (13-15) - https://web.archive.org/web/20071027150510/http://wow.allakhazam.com/db/mob.html?wmob=11321
11322, -- Searing Blade Cultist (13-15) - https://web.archive.org/web/20071014002747/http://wow.allakhazam.com/db/mob.html?wmob=11322
11323, -- Searing Blade Enforcer (13-15) - https://web.archive.org/web/20071012230412/http://wow.allakhazam.com/db/mob.html?wmob=11323
11324); -- Searing Blade Warlock (13-15) - https://web.archive.org/web/20071012230417/http://wow.allakhazam.com/db/mob.html?wmob=11324

-- 60114	NPC LOOT (Green World Drop) - (Item Levels: 14-18) - (NPC Levels: 15)
-- 60115	NPC LOOT (Green World Drop) - (Item Levels: 14-19) - (NPC Levels: 15-16)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60115, -60115, 2, 0, 1 FROM `creature_template` WHERE `entry` IN (
2174, -- Coastal Frenzy (14-16) - https://web.archive.org/web/20071108233951/http://wow.allakhazam.com/db/mob.html?wmob=2174
2322, -- Foreststrider (14-16) - https://web.archive.org/web/20071106082903/http://wow.allakhazam.com/db/mob.html?wmob=2322
831, -- Sea Crawler (15-16) - https://web.archive.org/web/20071107022320/http://wow.allakhazam.com/db/mob.html?wmob=831 unique item
1194, -- Mountain Buzzard (15-16) - https://web.archive.org/web/20071105061702/http://wow.allakhazam.com/db/mob.html?wmob=1194
3241, -- Savannah Patriarch (15-16) - https://web.archive.org/web/20071104001023/http://wow.allakhazam.com/db/mob.html?wmob=3241
3248, -- Barrens Giraffe (15-16) - https://web.archive.org/web/20071011020635/http://wow.allakhazam.com/db/mob.html?wmob=3248
4127, -- Hecklefang Hyena (15-16) - https://web.archive.org/web/20071102231322/http://wow.allakhazam.com/db/mob.html?wmob=4127
6033); -- Lake Frenzy (15-16) - https://web.archive.org/web/20071031050039/http://wow.allakhazam.com/db/mob.html?wmob=6033

-- classicmangos 8% tbc+ 2%
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60115, -60115, 8, 0, 1 FROM `creature_template` WHERE `entry` IN (
3630, -- Deviate Coiler (15-16) - https://web.archive.org/web/20071029150826/http://wow.allakhazam.com/db/mob.html?wmob=3630
3632, -- Deviate Creeper (15-16) - https://web.archive.org/web/20071029195441/http://wow.allakhazam.com/db/mob.html?wmob=3632
3634); -- Deviate Stalker (15-16) - https://web.archive.org/web/20071029195451/http://wow.allakhazam.com/db/mob.html?wmob=3634

REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60115, -60115, 100, 0, 1 FROM `creature_template` WHERE `entry` = 7017; -- https://www.wowhead.com/tbc/npc=7017/lord-sinslayer

-- 60116	NPC LOOT (Green World Drop) - (Item Levels: 15-19) - (NPC Levels: 16)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60116, -60116, 2, 0, 1 FROM `creature_template` WHERE `entry` = 3475; -- Echeyakee (16-16) - https://web.archive.org/web/20071030051327/http://wow.allakhazam.com/db/mob.html?wmob=3475

REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60116, -60116, 100, 0, 1 FROM `creature_template` WHERE `entry` IN (2186,7015); -- https://www.wowhead.com/classic/npc=2186/carnivous-the-breaker

-- 60117	NPC LOOT (Green World Drop) - (Item Levels: 15-20) - (NPC Levels: 16-17)
DELETE FROM `creature_loot_template` WHERE `entry` = 3417 AND `mincountOrRef` = -60116;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60117, -60117, 2, 0, 1 FROM `creature_template` WHERE `entry` IN (
3417, -- https://www.wowhead.com/classic/npc=3417/living-flame#comments:id=2892657
2235, -- Reef Crawler (15-17) - https://web.archive.org/web/20071105191725/http://wow.allakhazam.com/db/mob.html?wmob=2235
4008, -- Cliff Stormer (15-17) - https://web.archive.org/web/20071117201450/http://wow.allakhazam.com/db/mob.html?wmob=4008
1189, -- Black Bear Patriarch (16-17) - https://web.archive.org/web/20071102113710/http://wow.allakhazam.com/db/mob.html?wmob=1189
1192, -- Elder Mountain Boar (16-17) - https://web.archive.org/web/20071102180237/http://wow.allakhazam.com/db/mob.html?wmob=1192
1923, -- Bloodsnout Worg (16-17) - https://web.archive.org/web/20071102202616/http://wow.allakhazam.com/db/mob.html?wmob=1923
2165, -- Grizzled Thistle Bear (16-17) - https://web.archive.org/web/20071101102209/http://wow.allakhazam.com/db/mob.html?wmob=2165
3245, -- Ornery Plainstrider (16-17) - https://web.archive.org/web/20071104001033/http://wow.allakhazam.com/db/mob.html?wmob=3245
4005); -- Deepmoss Creeper (16-17) - https://web.archive.org/web/20071109074531/http://wow.allakhazam.com/db/mob.html?wmob=4005

-- classicmangos 8% tbc+ 2%
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60117, -60117, 8, 0, 1 FROM `creature_template` WHERE `entry` IN (
3631, -- Deviate Stinglash (16-17) - https://web.archive.org/web/20071030001726/http://wow.allakhazam.com/db/mob.html?wmob=3631
3633); -- Deviate Slayer (16-17) - https://web.archive.org/web/20071029195446/http://wow.allakhazam.com/db/mob.html?wmob=3633

-- 60118	NPC LOOT (Green World Drop) - (Item Levels: 16-20) - (NPC Levels: 17)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60118, -60118, 100, 0, 1 FROM `creature_template` WHERE `entry` = 2184; -- https://www.wowhead.com/tbc/npc=2184/lady-moongazer

-- 60119	NPC LOOT (Green World Drop) - (Item Levels: 16-21) - (NPC Levels: 17-18)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60119, -60119, 2, 0, 1 FROM `creature_template` WHERE `entry` IN (
2187, -- Elder Darkshore Thresher (16-18) - https://web.archive.org/web/20071107074733/http://wow.allakhazam.com/db/mob.html?wmob=2187
3256, -- Sunscale Scytheclaw (16-18) - https://web.archive.org/web/20071120034611/http://wow.allakhazam.com/db/mob.html?wmob=3256
441, -- Black Dragon Whelp (17-18) - https://web.archive.org/web/20071026091120/http://wow.allakhazam.com/db/mob.html?wmob=441
1185, -- Wood Lurker (17-18) - https://web.archive.org/web/20071015180837/http://wow.allakhazam.com/db/mob.html?wmob=1185
1216, -- Shore Crawler (17-18) - https://web.archive.org/web/20071107021905/http://wow.allakhazam.com/db/mob.html?wmob=1216
2237, -- Moonstalker Sire (17-18) - https://web.archive.org/web/20071108221946/http://wow.allakhazam.com/db/mob.html?wmob=2237
3416, -- Savannah Matriarch (17-18) - https://web.archive.org/web/20071104001128/http://wow.allakhazam.com/db/mob.html?wmob=3416
3426, -- Zhevra Charger (17-18) - https://web.archive.org/web/20071104001133/http://wow.allakhazam.com/db/mob.html?wmob=3426
4007); -- Deepmoss Venomspitter (17-18) - https://web.archive.org/web/20071109074536/http://wow.allakhazam.com/db/mob.html?wmob=4007

-- 60120	NPC LOOT (Green World Drop) - (Item Levels: 17-21) - (NPC Levels: 18)
-- 60121	NPC LOOT (Green World Drop) - (Item Levels: 17-22) - (NPC Levels: 18-19)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60121, -60121, 2, 0, 1 FROM `creature_template` WHERE `entry` IN (
2323, -- Giant Foreststrider (17-19) - https://web.archive.org/web/20071101105954/http://wow.allakhazam.com/db/mob.html?wmob=2323
832, -- Dust Devil (18-19) - https://web.archive.org/web/20071107022325/http://wow.allakhazam.com/db/mob.html?wmob=832
3240, -- Stormsnout (18-19) - https://web.archive.org/web/20071120034606/http://wow.allakhazam.com/db/mob.html?wmob=3240
3463, -- Wandering Barrens Giraffe (18-19) - https://web.archive.org/web/20071104011020/http://wow.allakhazam.com/db/mob.html?wmob=3463
3503, -- Silithid Protector (18-19) - https://web.archive.org/web/20071031015656/http://wow.allakhazam.com/db/mob.html?wmob=3503
3816, -- Wild Buck (18-19) - https://web.archive.org/web/20071105063116/http://wow.allakhazam.com/db/mob.html?wmob=3816
4009, -- Raging Cliff Stormer (18-19) - https://web.archive.org/web/20071113114437/http://wow.allakhazam.com/db/mob.html?wmob=4009
5053, -- Deviate Crocolisk (18-19) - https://web.archive.org/web/20071030001851/http://wow.allakhazam.com/db/mob.html?wmob=5053
6788, -- Den Mother (18-19) - https://web.archive.org/web/20071109011854/http://wow.allakhazam.com/db/mob.html?wmob=6788
8886); -- Deviate Python (18-19) - https://web.archive.org/web/20071030002212/http://wow.allakhazam.com/db/mob.html?wmob=8886

REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60121, -60121, 8, 0, 1 FROM `creature_template` WHERE `entry` IN (
3636, -- Deviate Ravager (18-19) - https://web.archive.org/web/20071026064419/http://wow.allakhazam.com/db/mob.html?wmob=3636
3637, -- Deviate Guardian (18-19) - https://web.archive.org/web/20071030001731/http://wow.allakhazam.com/db/mob.html?wmob=3637
3861); -- Bleak Worg (18-19) - https://web.archive.org/web/20071106121820/http://wow.allakhazam.com/db/mob.html?wmob=3861

-- 60122	NPC LOOT (Green World Drop) - (Item Levels: 18-22) - (NPC Levels: 19)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60122, -60122, 2, 0, 1 FROM `creature_template` WHERE `entry` = 3257; -- Ishamuhale (19-19) - https://web.archive.org/web/20071019015713/http://wow.allakhazam.com/db/mob.html?wmob=3257

REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60122, -60122, 100, 0, 1 FROM `creature_template` WHERE `entry` = 2192; -- https://www.wowhead.com/classic/npc=2192/firecaller-radison

-- 60123	NPC LOOT (Green World Drop) - (Item Levels: 18-23) - (NPC Levels: 19-20)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60123, -60123, 2, 0, 1 FROM `creature_template` WHERE `entry` IN (
2233, -- Encrusted Tide Crawler (18-20) - https://web.archive.org/web/20071109010602/http://wow.allakhazam.com/db/mob.html?wmob=2233
3247, -- Thunderhawk Hatchling (18-20) - https://web.archive.org/web/20071115150633/http://wow.allakhazam.com/db/mob.html?wmob=3247
2071, -- Moonstalker Matriarch (19-20) - https://web.archive.org/web/20071106070723/http://wow.allakhazam.com/db/mob.html?wmob=2071
3236, -- Barrens Kodo (19-20) - https://web.archive.org/web/20071104010945/http://wow.allakhazam.com/db/mob.html?wmob=3236
3812, -- Clattering Crawler (19-20) - https://web.archive.org/web/20071029150851/http://wow.allakhazam.com/db/mob.html?wmob=3812
4006, -- Deepmoss Webspinner (19-20) - https://web.archive.org/web/20071113140008/http://wow.allakhazam.com/db/mob.html?wmob=4006
4011); -- Young Pridewing (19-20) - https://web.archive.org/web/20071113215744/http://wow.allakhazam.com/db/mob.html?wmob=4011

REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60123, -60123, 8, 0, 1 FROM `creature_template` WHERE `entry` = 3864; -- Fel Steed (19-20) - https://web.archive.org/web/20071027173319/http://wow.allakhazam.com/db/mob.html?wmob=3864

-- 60124	NPC LOOT (Green World Drop) - (Item Levels: 19-23) - (NPC Levels: 20)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60124, -60124, 2, 0, 1 FROM `creature_template` WHERE `entry` = 645; -- https://www.wowhead.com/tbc/npc=645/cookie ring special?

REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60124, -60124, 5, 0, 1 FROM `creature_template` WHERE `entry` = 1225; -- Ol' Sooty (20-20)

REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60124, -60124, 100, 0, 1 FROM `creature_template` WHERE `entry` = 2172; -- https://www.wowhead.com/classic/npc=2172/strider-clutchmother

REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60124, -60124, 2, 0, 1 FROM `creature_template` WHERE `entry` IN (
3251, -- Silithid Grub (20-20) - https://web.archive.org/web/20071031015641/http://wow.allakhazam.com/db/mob.html?wmob=3251
3398); -- Gesharahan (20-20) - https://web.archive.org/web/20071030130342/http://wow.allakhazam.com/db/mob.html?wmob=3398

-- 60125	NPC LOOT (Green World Drop) - (Item Levels: 19-24) - (NPC Levels: 20-21)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60125, -60125, 2, 0, 1 FROM `creature_template` WHERE `entry` IN (
3239, -- Thunderhead (20-21) - https://web.archive.org/web/20071031015631/http://wow.allakhazam.com/db/mob.html?wmob=3239
3250, -- Silithid Creeper (20-21) - https://web.archive.org/web/20071031015636/http://wow.allakhazam.com/db/mob.html?wmob=3250
3466, -- Zhevra Courser (20-21) - https://web.archive.org/web/20071104011025/http://wow.allakhazam.com/db/mob.html?wmob=3466
3814, -- Spined Crawler (20-21) - https://web.archive.org/web/20071029150856/http://wow.allakhazam.com/db/mob.html?wmob=3814
3819, -- Wildthorn Stalker (20-21) - https://web.archive.org/web/20071029120727/http://wow.allakhazam.com/db/mob.html?wmob=3819
3722); -- Mystlash Flayer (20-21) - https://web.archive.org/web/20071105062945/http://wow.allakhazam.com/db/mob.html?wmob=3722

REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60125, -60125, 5, 0, 1 FROM `creature_template` WHERE `entry` IN (
2477, -- Gradok (19-21) - https://web.archive.org/web/20071015183515/http://wow.allakhazam.com/db/mob.html?wmob=2477
2478, -- Haren Swifthoof (19-21) - https://web.archive.org/web/20071015210910/http://wow.allakhazam.com/db/mob.html?wmob=2478
7170); -- Thragomm (19-21)

-- 60126	NPC LOOT (Green World Drop) - (Item Levels: 20-24) - (NPC Levels: 21)
-- 60127	NPC LOOT (Green World Drop) - (Item Levels: 20-25) - (NPC Levels: 21-22)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60127, -60127, 2, 0, 1 FROM `creature_template` WHERE `entry` IN (
3424, -- Thunderhawk Cloudscraper (20-22) - https://web.archive.org/web/20071102184752/http://wow.allakhazam.com/db/mob.html?wmob=3424
12123); -- Reef Shark (21-22) - https://web.archive.org/web/20071102202425/http://wow.allakhazam.com/db/mob.html?wmob=12123

-- 60128	NPC LOOT (Green World Drop) - (Item Levels: 21-25) - (NPC Levels: 22)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60128, -60128, 2, 0, 1 FROM `creature_template` WHERE `entry` IN (
3474, -- Lakota'mani (22-22) - https://web.archive.org/web/20071104001158/http://wow.allakhazam.com/db/mob.html?wmob=3474
4264, -- Deepmoss Matriarch (22-22) - https://web.archive.org/web/20071114072647/http://wow.allakhazam.com/db/mob.html?wmob=4264
12940); -- Vorsha the Lasher (22-22) - https://web.archive.org/web/20071105061828/http://wow.allakhazam.com/db/mob.html?wmob=12940

REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60128, -60128, 100, 0, 1 FROM `creature_template` WHERE `entry` = 7016; -- https://www.wowhead.com/tbc/npc=7016/lady-vespira

-- 60129	NPC LOOT (Green World Drop) - (Item Levels: 21-26) - (NPC Levels: 22-23)
-- 60130	NPC LOOT (Green World Drop) - (Item Levels: 22-26) - (NPC Levels: 23)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60130, -60130, 100, 0, 1 FROM `creature_template` WHERE `entry` = 14281; -- https://www.wowhead.com/classic/npc=14281/jimmy-the-bleeder

-- 60131	NPC LOOT (Green World Drop) - (Item Levels: 22-27) - (NPC Levels: 23-24)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60131, -60131, 2, 0, 1 FROM `creature_template` WHERE `entry` = 1400; -- Wetlands Crocolisk (23-24) - https://web.archive.org/web/20071030141341/http://wow.allakhazam.com/db/mob.html?wmob=1400

-- 60132	NPC LOOT (Green World Drop) - (Item Levels: 23-27) - (NPC Levels: 24)
-- 60133	NPC LOOT (Green World Drop) - (Item Levels: 23-28) - (NPC Levels: 24-25)
-- 60134	NPC LOOT (Green World Drop) - (Item Levels: 24-28) - (NPC Levels: 25)
-- 60135	NPC LOOT (Green World Drop) - (Item Levels: 24-29) - (NPC Levels: 25-26)
-- 60136	NPC LOOT (Green World Drop) - (Item Levels: 25-29) - (NPC Levels: 26)
-- 60137	NPC LOOT (Green World Drop) - (Item Levels: 25-30) - (NPC Levels: 26-27)
-- 60138	NPC LOOT (Green World Drop) - (Item Levels: 26-30) - (NPC Levels: 27)
-- 60139	NPC LOOT (Green World Drop) - (Item Levels: 26-31) - (NPC Levels: 27-28)
-- 60140	NPC LOOT (Green World Drop) - (Item Levels: 27-31) - (NPC Levels: 28)
-- 60141	NPC LOOT (Green World Drop) - (Item Levels: 27-32) - (NPC Levels: 28-29)
-- 60142	NPC LOOT (Green World Drop) - (Item Levels: 28-32) - (NPC Levels: 29)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60142, -60142, 2, 0, 1 FROM `creature_template` WHERE `entry` = 1353; -- Sarltooth (29-29)

-- 60143	NPC LOOT (Green World Drop) - (Item Levels: 28-33) - (NPC Levels: 29-30)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60143, -60143, 2, 0, 1 FROM `creature_template` WHERE `entry` IN (
3811, -- Giant Ashenvale Bear	29	30 - https://web.archive.org/web/20071105035250/http://wow.allakhazam.com/db/mob.html?wmob=3811
6071, -- Legion Hound	29	30 - https://web.archive.org/web/20071105040003/http://wow.allakhazam.com/db/mob.html?wmob=6071
6073); -- Searing Infernal	29	30 - https://web.archive.org/web/20071105063622/http://wow.allakhazam.com/db/mob.html?wmob=6073

-- 60144	NPC LOOT (Green World Drop) - (Item Levels: 29-33) - (NPC Levels: 30)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60144, -60144, 2, 0, 1 FROM `creature_template` WHERE `entry` IN (
4548, -- Steelsnap	30	30 - https://web.archive.org/web/20071103055547/http://wow.allakhazam.com/db/mob.html?wmob=4548
10992); -- Enraged Panther	30	30 - https://web.archive.org/web/20071104151256/http://wow.allakhazam.com/db/mob.html?wmob=10992

REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60144, -60144, 5, 0, 1 FROM `creature_template` WHERE `entry` IN (
6215, -- Chomper (30-30) - 26-26 tbc+ - https://web.archive.org/web/20071031015731/http://wow.allakhazam.com/db/mob.html?wmob=6215
4499); -- Rok'Alim the Pounder	30	30 - https://web.archive.org/web/20071104033738/http://wow.allakhazam.com/db/mob.html?wmob=4499

REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60144, -60144, 100, 0, 1 FROM `creature_template` WHERE `entry` = 4066; -- Nal'taszar	30	30 - https://web.archive.org/web/20071103190338/http://wow.allakhazam.com/db/mob.html?wmob=4066

-- 60145	NPC LOOT (Green World Drop) - (Item Levels: 29-34) - (NPC Levels: 30-31)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60145, -60145, 2, 0, 1 FROM `creature_template` WHERE `entry` IN (
683, -- Young Panther	30	31 - https://web.archive.org/web/20071117203516/http://wow.allakhazam.com/db/mob.html?wmob=683
855, -- Young Stranglethorn Raptor	30	31 - https://web.archive.org/web/20071102214351/http://wow.allakhazam.com/db/mob.html?wmob=855
1150, -- River Crocolisk	30	31 - https://web.archive.org/web/20071104180223/http://wow.allakhazam.com/db/mob.html?wmob=1150
2408, -- Snapjaw	30	31 - https://web.archive.org/web/20071026090813/http://wow.allakhazam.com/db/mob.html?wmob=2408
2559, -- Highland Strider	30	31 - https://web.archive.org/web/20071026090829/http://wow.allakhazam.com/db/mob.html?wmob=2559
4110, -- Highperch Patriarch	30	31 - https://web.archive.org/web/20071105022627/http://wow.allakhazam.com/db/mob.html?wmob=4110
4142, -- Sparkleshell Tortoise	30	31 - https://web.archive.org/web/20071105022701/http://wow.allakhazam.com/db/mob.html?wmob=4142
4147, -- Saltstone Basilisk	30	31 - https://web.archive.org/web/20071116020158/http://wow.allakhazam.com/db/mob.html?wmob=4147
4696); -- Scorpashi Snapper	30	31 - https://web.archive.org/web/20071109064733/http://wow.allakhazam.com/db/mob.html?wmob=4696

-- 60146	NPC LOOT (Green World Drop) - (Item Levels: 30-34) - (NPC Levels: 31)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60146, -60146, 2, 0, 1 FROM `creature_template` WHERE `entry` = 12676; -- Sharptalon	31	31 - https://web.archive.org/web/20071113143144/http://wow.allakhazam.com/db/mob.html?wmob=12676

-- 60147	NPC LOOT (Green World Drop) - (Item Levels: 30-35) - (NPC Levels: 31-32)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60147, -60147, 2, 0, 1 FROM `creature_template` WHERE `entry` IN (
5185, -- Hammerhead Shark (31-32) - https://web.archive.org/web/20071101052639/http://wow.allakhazam.com/db/mob.html?wmob=5185
2271, -- https://www.wowhead.com/tbc/npc=2271
4154, -- Salt Flats Scavenger	30	32 - https://web.archive.org/web/20071105074709/http://wow.allakhazam.com/db/mob.html?wmob=4154
4689, -- Starving Bonepaw	30	32 - https://web.archive.org/web/20071105092058/http://wow.allakhazam.com/db/mob.html?wmob=4689
12347, -- Enraged Reef Crawler	30	32 - https://web.archive.org/web/20071109201352/http://wow.allakhazam.com/db/mob.html?wmob=12347
688, -- Stone Maw Basilisk	31	32 - https://web.archive.org/web/20071105023228/http://wow.allakhazam.com/db/mob.html?wmob=688
905, -- Sharptooth Frenzy	31	32 - https://web.archive.org/web/20071111231536/http://wow.allakhazam.com/db/mob.html?wmob=905
2578, -- Young Mesa Buzzard	31	32 - https://web.archive.org/web/20071027091538/http://wow.allakhazam.com/db/mob.html?wmob=2578
4140, -- Scorpid Reaver	31	32 - https://web.archive.org/web/20071105022656/http://wow.allakhazam.com/db/mob.html?wmob=4140
4728); -- Gritjaw Basilisk	31	32 - https://web.archive.org/web/20071105082450/http://wow.allakhazam.com/db/mob.html?wmob=4728

-- 60148	NPC LOOT (Green World Drop) - (Item Levels: 31-35) - (NPC Levels: 32)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60148, -60148, 100, 0, 1 FROM `creature_template` WHERE `entry` IN (14223,5934); -- Heartrazor	32	32 - https://web.archive.org/web/20071105023148/http://wow.allakhazam.com/db/mob.html?wmob=5934

-- 60149	NPC LOOT (Green World Drop) - (Item Levels: 31-36) - (NPC Levels: 32-33)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60149, -60149, 2, 0, 1 FROM `creature_template` WHERE `entry` IN (
682, -- Stranglethorn Tiger	32	33 - https://web.archive.org/web/20071117203511/http://wow.allakhazam.com/db/mob.html?wmob=682
1108, -- Mistvale Gorilla	32	33 - https://web.archive.org/web/20071105090321/http://wow.allakhazam.com/db/mob.html?wmob=1108
2406, -- Mountain Lion	32	33 - https://web.archive.org/web/20071029195404/http://wow.allakhazam.com/db/mob.html?wmob=2406
2563, -- Plains Creeper	32	33 - https://web.archive.org/web/20071027091442/http://wow.allakhazam.com/db/mob.html?wmob=2563
4144, -- Sparkleshell Borer	32	33 - https://web.archive.org/web/20071105022713/http://wow.allakhazam.com/db/mob.html?wmob=4144
4151, -- Saltstone Crystalhide	32	33 - https://web.archive.org/web/20071104151953/http://wow.allakhazam.com/db/mob.html?wmob=4151
4692); -- Dread Swoop	32	33 - https://web.archive.org/web/20071106012404/http://wow.allakhazam.com/db/mob.html?wmob=4692

-- 60150	NPC LOOT (Green World Drop) - (Item Levels: 32-36) - (NPC Levels: 33)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60150, -60150, 5, 0, 1 FROM `creature_template` WHERE `entry` = 4304; -- Scarlet Tracking Hound (33-33)

-- 60151	NPC LOOT (Green World Drop) - (Item Levels: 32-37) - (NPC Levels: 33-34)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60151, -60151, 2, 0, 1 FROM `creature_template` WHERE `entry` IN (
2555, -- https://www.wowhead.com/tbc/npc=2555
4158, -- Salt Flats Vulture	32	34 - https://web.archive.org/web/20071102134354/http://wow.allakhazam.com/db/mob.html?wmob=4158
11576, -- Whirlwind Ripper	32	34 - https://web.archive.org/web/20071113020323/http://wow.allakhazam.com/db/mob.html?wmob=11576
11578, -- Whirlwind Shredder	32	34 - https://web.archive.org/web/20071111202925/http://wow.allakhazam.com/db/mob.html?wmob=11578
685, -- Stranglethorn Raptor	33	34 - https://web.archive.org/web/20071117093708/http://wow.allakhazam.com/db/mob.html?wmob=685
856, -- Young Lashtail Raptor	33	34 - https://web.archive.org/web/20071103024750/http://wow.allakhazam.com/db/mob.html?wmob=856
2407, -- Hulking Mountain Lion	33	34 - https://web.archive.org/web/20071029221836/http://wow.allakhazam.com/db/mob.html?wmob=2407
2560, -- Highland Thrasher	33	34 - https://web.archive.org/web/20071027091431/http://wow.allakhazam.com/db/mob.html?wmob=2560
4139, -- Scorpid Terror	33	34 - https://web.archive.org/web/20071105022651/http://wow.allakhazam.com/db/mob.html?wmob=4139
4726, -- Raging Thunder Lizard	33	34 - https://web.archive.org/web/20071104160418/http://wow.allakhazam.com/db/mob.html?wmob=4726
9377); -- Swirling Vortex	33	34 - https://web.archive.org/web/20071105023351/http://wow.allakhazam.com/db/mob.html?wmob=9377

REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60151, -60151, 5, 0, 1 FROM `creature_template` WHERE `entry` = 4287; -- https://www.wowhead.com/classic/npc=4287

-- 60152	NPC LOOT (Green World Drop) - (Item Levels: 33-37) - (NPC Levels: 34)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60152, -60152, 2, 0, 1 FROM `creature_template` WHERE `entry` = 7333; -- Withered Battle Boar	34	34 - https://web.archive.org/web/20071105011429/http://wow.allakhazam.com/db/mob.html?wmob=7333

-- 60153	NPC LOOT (Green World Drop) - (Item Levels: 33-38) - (NPC Levels: 34-35)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60153, -60153, 2, 0, 1 FROM `creature_template` WHERE `entry` IN (
689, -- Crystal Spine Basilisk	34	35 - https://web.archive.org/web/20071112095749/http://wow.allakhazam.com/db/mob.html?wmob=689
1085, -- Elder Stranglethorn Tiger	34	35 - https://web.archive.org/web/20071104032410/http://wow.allakhazam.com/db/mob.html?wmob=1085
2579, -- Mesa Buzzard	34	35 - https://web.archive.org/web/20071027091543/http://wow.allakhazam.com/db/mob.html?wmob=2579
4143, -- Sparkleshell Snapper	34	35 - https://web.archive.org/web/20071105022706/http://wow.allakhazam.com/db/mob.html?wmob=4143
4150, -- Saltstone Gazer	34	35 - https://web.archive.org/web/20071116020203/http://wow.allakhazam.com/db/mob.html?wmob=4150
4697, -- Scorpashi Lasher	34	35 - https://web.archive.org/web/20071113020817/http://wow.allakhazam.com/db/mob.html?wmob=4697
4700); -- Aged Kodo	34	35 - https://web.archive.org/web/20071027135914/http://wow.allakhazam.com/db/mob.html?wmob=4700

-- 60154	NPC LOOT (Green World Drop) - (Item Levels: 34-38) - (NPC Levels: 35)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60154, -60154, 100, 0, 1 FROM `creature_template` WHERE `entry` IN (5937,14222); -- Vile Sting, -- 35, -- 35 - https://web.archive.org/web/20071105023153/http://wow.allakhazam.com/db/mob.html?wmob=5937

REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60154, -60154, 5, 0, 1 FROM `creature_template` WHERE `entry` = 7349; -- Tomb Fiend, -- 35, -- 35 - https://web.archive.org/web/20071105011448/http://wow.allakhazam.com/db/mob.html?wmob=7349

-- 60155	NPC LOOT (Green World Drop) - (Item Levels: 34-39) - (NPC Levels: 35-36)
DELETE FROM `creature_loot_template` WHERE `entry` = 7078 AND `mincountOrRef` = -60156;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60155, -60155, 2, 0, 1 FROM `creature_template` WHERE `entry` IN (
4346, -- Noxious Flayer (35-36) - https://www.wowhead.com/tbc/npc=4346/noxious-flayer#drops;mode:normal
686, -- https://www.wowhead.com/classic/npc=686
2253, -- https://www.wowhead.com/classic/npc=2253
7078, -- https://www.wowhead.com/tbc/npc=7078
1084, -- Young Sawtooth Crocolisk	35	36 - https://web.archive.org/web/20071104051057/http://wow.allakhazam.com/db/mob.html?wmob=1084
1151, -- Saltwater Crocolisk	35	36 - https://web.archive.org/web/20071103140521/http://wow.allakhazam.com/db/mob.html?wmob=1151
1152, -- Snapjaw Crocolisk	35	36 - https://web.archive.org/web/20071104131231/http://wow.allakhazam.com/db/mob.html?wmob=1152
2565, -- Giant Plains Creeper	35	36 - https://web.archive.org/web/20071027091451/http://wow.allakhazam.com/db/mob.html?wmob=2565
4341, -- Drywallow Crocolisk	35	36 - https://web.archive.org/web/20071105022742/http://wow.allakhazam.com/db/mob.html?wmob=4341
4351, -- Bloodfen Raptor	35	36 -- 36-37 tbc+ - https://web.archive.org/web/20071102214123/http://wow.allakhazam.com/db/mob.html?wmob=4351
4376, -- Darkmist Spider	35	36 -- 36-37 tbc+ - https://web.archive.org/web/20071105022807/http://wow.allakhazam.com/db/mob.html?wmob=4376
4413, -- Darkfang Spider	35	36 - https://web.archive.org/web/20071105022847/http://wow.allakhazam.com/db/mob.html?wmob=4413
4701, -- Dying Kodo	35	36 - https://web.archive.org/web/20071106100503/http://wow.allakhazam.com/db/mob.html?wmob=4701
4729); -- Hulking Gritjaw Basilisk	35	36 - https://web.archive.org/web/20071105035425/http://wow.allakhazam.com/db/mob.html?wmob=4729

DELETE FROM `creature_loot_template` WHERE `entry` = 4299 AND `mincountOrRef` = -60152;
DELETE FROM `creature_loot_template` WHERE `entry` = 7335 AND `mincountOrRef` = -60154;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60155, -60155, 5, 0, 1 FROM `creature_template` WHERE `entry` IN (
4299, -- https://www.wowhead.com/classic/npc=4299
4540, -- 34-35 tbc+ https://www.wowhead.com/tbc/npc=4540
4844, -- https://www.wowhead.com/tbc/npc=4844 2% tbc+
7328, -- https://www.wowhead.com/classic/npc=7328
7329, -- https://www.wowhead.com/tbc/npc=7329
7335); -- https://www.wowhead.com/classic/npc=7335

-- 60156	NPC LOOT (Green World Drop) - (Item Levels: 35-39) - (NPC Levels: 36)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60156, -60156, 100, 0, 1 FROM `creature_template` WHERE `entry` = 14221; -- https://www.wowhead.com/tbc/npc=14221/gravis-slipknot

-- 60157	NPC LOOT (Green World Drop) - (Item Levels: 35-40) - (NPC Levels: 36-37)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60157, -60157, 5, 0, 1 FROM `creature_template` WHERE `entry` IN (
4290, -- 35-36 tbc+ - https://www.wowhead.com/classic/npc=4290
4292); -- 35-36 tbc+ - https://www.wowhead.com/tbc/npc=4292

REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60157, -60157, 2, 0, 1 FROM `creature_template` WHERE `entry` IN (
2829, -- Starving Buzzard	35	37 - https://web.archive.org/web/20071017042319/http://wow.allakhazam.com/db/mob.html?wmob=2829
4695, -- Carrion Horror	35	37 - https://web.archive.org/web/20071113020811/http://wow.allakhazam.com/db/mob.html?wmob=4695
11577, -- Whirlwind Stormwalker	35	37 - https://web.archive.org/web/20071113020329/http://wow.allakhazam.com/db/mob.html?wmob=11577
691, -- Lesser Water Elemental	36	37 - https://web.archive.org/web/20071030074029/http://wow.allakhazam.com/db/mob.html?wmob=691
767, -- Swamp Jaguar	36	37 - https://web.archive.org/web/20071031065611/http://wow.allakhazam.com/db/mob.html?wmob=767
854, -- Young Jungle Stalker	36	37 - https://web.archive.org/web/20071102231724/http://wow.allakhazam.com/db/mob.html?wmob=854
858, -- Sorrow Spinner	36	37 - https://web.archive.org/web/20071104033924/http://wow.allakhazam.com/db/mob.html?wmob=858
2561, -- Highland Fleshstalker	36	37 - https://web.archive.org/web/20071106105320/http://wow.allakhazam.com/db/mob.html?wmob=2561
2731, -- Ridge Stalker	36	37 - https://web.archive.org/web/20071102031535/http://wow.allakhazam.com/db/mob.html?wmob=2731
2906, -- Dustbelcher Warrior	35	37 - https://web.archive.org/web/20071102031555/http://wow.allakhazam.com/db/mob.html?wmob=2906
4342, -- Drywallow Vicejaw	36	37 - https://web.archive.org/web/20071105022747/http://wow.allakhazam.com/db/mob.html?wmob=4342
4352, -- Bloodfen Screecher	36	37 - https://web.archive.org/web/20071102192923/http://wow.allakhazam.com/db/mob.html?wmob=4352
4378, -- Darkmist Recluse	36	37 - https://web.archive.org/web/20071103141438/http://wow.allakhazam.com/db/mob.html?wmob=4378
4396, -- Mudrock Tortoise	36	37 - https://web.archive.org/web/20071101032951/http://wow.allakhazam.com/db/mob.html?wmob=4396
4411, -- Darkfang Lurker	36	37 - https://web.archive.org/web/20071104195041/http://wow.allakhazam.com/db/mob.html?wmob=4411
4676, -- Lesser Infernal	36	37 - https://web.archive.org/web/20071109120814/http://wow.allakhazam.com/db/mob.html?wmob=4676
4693, -- Dread Flyer	36	37 - https://web.archive.org/web/20071113020801/http://wow.allakhazam.com/db/mob.html?wmob=4693
4702); -- Ancient Kodo	36	37 - https://web.archive.org/web/20071026091131/http://wow.allakhazam.com/db/mob.html?wmob=4702

-- 60158	NPC LOOT (Green World Drop) - (Item Levels: 36-40) - (NPC Levels: 37)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60158, -60158, 5, 0, 1 FROM `creature_template` WHERE `entry` = 7351; -- Tomb Reaver (37-37) - 36-37 tbc+ - https://web.archive.org/web/20071105011453/http://wow.allakhazam.com/db/mob.html?wmob=7351

DELETE FROM `creature_loot_template` WHERE `entry` = 2258 AND `mincountOrRef` = -60156;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60158, -60158, 100, 0, 1 FROM `creature_template` WHERE `entry` IN (
2258, -- https://www.wowhead.com/tbc/npc=2258/stone-fury
2850); -- https://www.wowhead.com/classic/npc=2850

REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60158, -60158, 2, 0, 1 FROM `creature_template` WHERE `entry` IN (
729, -- Sin'Dall	37	37 - https://web.archive.org/web/20071101051807/http://wow.allakhazam.com/db/mob.html?wmob=729
7334); -- Battle Boar Horror	37	37 - https://web.archive.org/web/20071028141823/http://wow.allakhazam.com/db/mob.html?wmob=7334

REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 65282, -65282, 100, 0, 1 FROM `creature_template` WHERE `entry` = 5935; -- Ironeye the Invincible (37-37) - https://web.archive.org/web/20071101045943/http://wow.allakhazam.com/db/mob.html?wmob=5935
DELETE FROM `reference_loot_template` WHERE `entry` = 65282; -- NPC LOOT (Rare NPC Loot) - Mosh'Ogg Butcher - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65282;
INSERT INTO `reference_loot_template_names` (`entry`, `name`) VALUES (65282, 'NPC LOOT (Rare NPC Loot) - Ironeye the Invincible (5935) - Special Items');
REPLACE INTO `reference_loot_template` (`item`, `entry`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `item`, 65282, 1, 0, 1, 1 FROM `reference_loot_template` WHERE `entry` = 60158;
REPLACE INTO `reference_loot_template` (`item`, `entry`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`) VALUES
(8223, 65282, 1, 50, 1, 1); -- Blade of the Basilisk
DELETE FROM `creature_loot_template` WHERE `entry` = 5935 AND `item` = 8223;

-- 60159	NPC LOOT (Green World Drop) - (Item Levels: 36-41) - (NPC Levels: 37-38)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60159, -60159, 2, 0, 1 FROM `creature_template` WHERE `entry` IN (
4690, -- Rabid Bonepaw (36-38) - https://web.archive.org/web/20071105063522/http://wow.allakhazam.com/db/mob.html?wmob=4690
4414, -- Darkfang Venomspitter (37-38) -- 36-37 tbc+ - https://web.archive.org/web/20071104160328/http://wow.allakhazam.com/db/mob.html?wmob=4414
4660, -- Maraudine Bonepaw (37-38) - https://web.archive.org/web/20071105082440/http://wow.allakhazam.com/db/mob.html?wmob=4660
684, -- Shadowmaw Panther	37	38 - https://web.archive.org/web/20071030074630/http://wow.allakhazam.com/db/mob.html?wmob=684
772, -- Stranglethorn Tigress	37	38 - https://web.archive.org/web/20071031091802/http://wow.allakhazam.com/db/mob.html?wmob=772
1114, -- Jungle Thunderer	37	38 - https://web.archive.org/web/20071030204428/http://wow.allakhazam.com/db/mob.html?wmob=1114
2580, -- Elder Mesa Buzzard	37	38 - https://web.archive.org/web/20071027091548/http://wow.allakhazam.com/db/mob.html?wmob=2580
2728, -- Feral Crag Coyote	37	38 - https://web.archive.org/web/20071031064419/http://wow.allakhazam.com/db/mob.html?wmob=2728
4343, -- Drywallow Snapper	37	38 - https://web.archive.org/web/20071104195036/http://wow.allakhazam.com/db/mob.html?wmob=4343
4347, -- Noxious Reaver	37	38 - https://web.archive.org/web/20071117191616/http://wow.allakhazam.com/db/mob.html?wmob=4347
4355, -- Bloodfen Scytheclaw	37	38 - https://web.archive.org/web/20071102192928/http://wow.allakhazam.com/db/mob.html?wmob=4355
4397, -- Mudrock Spikeshell	37	38 -- 35-36 tbc+ - https://web.archive.org/web/20071029221926/http://wow.allakhazam.com/db/mob.html?wmob=4397
4662, -- Magram Bonepaw	37	38 - https://web.archive.org/web/20071105063512/http://wow.allakhazam.com/db/mob.html?wmob=4662
4678, -- Mana Eater	37	38 - https://web.archive.org/web/20071105082445/http://wow.allakhazam.com/db/mob.html?wmob=4678
4727); -- Elder Thunder Lizard	37	38 - https://web.archive.org/web/20071106060726/http://wow.allakhazam.com/db/mob.html?wmob=4727

REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60159, -60159, 5, 0, 1 FROM `creature_template` WHERE `entry` = 4298; -- 36-37 tbc+ https://www.wowhead.com/classic/npc=4298

-- 60160	NPC LOOT (Green World Drop) - (Item Levels: 37-41) - (NPC Levels: 38)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60160, -60160, 2, 0, 1 FROM `creature_template` WHERE `entry` IN (
2794, -- Summoned Guardian (38-38) - https://web.archive.org/web/20071027092118/http://wow.allakhazam.com/db/mob.html?wmob=2794
11937, -- Demon Portal Guardian	38	38 - https://web.archive.org/web/20071113020409/http://wow.allakhazam.com/db/mob.html?wmob=11937
2635); -- Elder Saltwater Crocolisk	38	38 - https://web.archive.org/web/20071106070919/http://wow.allakhazam.com/db/mob.html?wmob=2635

REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60160, -60160, 5, 0, 1 FROM `creature_template` WHERE `entry` = 7057; -- Digmaster Shovelphlange (38-38) - https://web.archive.org/web/20071017020413/http://wow.allakhazam.com/db/mob.html?wmob=7057

-- 60161	NPC LOOT (Green World Drop) - (Item Levels: 37-42) - (NPC Levels: 38-39)
DELETE FROM `creature_loot_template` WHERE `entry` = 8138 AND `mincountOrRef` = -60162;
DELETE FROM `creature_loot_template` WHERE `entry` = 7346 AND `mincountOrRef` = -60156; -- classic only
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60161, -60161, 2, 0, 1 FROM `creature_template` WHERE `entry` IN (
8138, -- Sul'lithuz Broodling	39	39 - https://web.archive.org/web/20071030065817/http://wow.allakhazam.com/db/mob.html?wmob=8138
4348, -- Noxious Shredder (38-39) - https://www.wowhead.com/tbc/npc=4348/noxious-shredder#drops
7346, -- 36-37 tbc+ - https://www.wowhead.com/tbc/npc=7346
2735, -- Lesser Rock Elemental	37	39 - https://web.archive.org/web/20071026072406/http://wow.allakhazam.com/db/mob.html?wmob=2735
2830, -- Buzzard	37	39 - https://web.archive.org/web/20071031104515/http://wow.allakhazam.com/db/mob.html?wmob=2830
1082, -- Sawtooth Crocolisk	38	39 - https://web.archive.org/web/20071031103845/http://wow.allakhazam.com/db/mob.html?wmob=1082
2592, -- Rumbling Exile	38	39 - https://web.archive.org/web/20071027091643/http://wow.allakhazam.com/db/mob.html?wmob=2592
2760, -- Burning Exile	38	39 - https://web.archive.org/web/20071026061727/http://wow.allakhazam.com/db/mob.html?wmob=2760
2761, -- Cresting Exile	38	39 - https://web.archive.org/web/20071027091917/http://wow.allakhazam.com/db/mob.html?wmob=2761
2762, -- Thundering Exile	38	39 - https://web.archive.org/web/20071027091922/http://wow.allakhazam.com/db/mob.html?wmob=2762
4344, -- Mottled Drywallow Crocolisk	38	39 - https://web.archive.org/web/20071105022752/http://wow.allakhazam.com/db/mob.html?wmob=4344
4379, -- Darkmist Silkspinner	38	39 -- 36-37 tbc+ - https://web.archive.org/web/20071101063601/http://wow.allakhazam.com/db/mob.html?wmob=4379
4412, -- Darkfang Creeper	38	39 -- 37-38 tbc+ - https://web.archive.org/web/20071104152010/http://wow.allakhazam.com/db/mob.html?wmob=4412
4681, -- Mage Hunter	38	39 - https://web.archive.org/web/20071031065459/http://wow.allakhazam.com/db/mob.html?wmob=4681
4699); -- Scorpashi Venomlash	38	39 - https://web.archive.org/web/20071101110106/http://wow.allakhazam.com/db/mob.html?wmob=4699

REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60161, -60161, 5, 0, 1 FROM `creature_template` WHERE `entry` = 4861; -- Shrike Bat (38-39) -- 37-38 tbc+ - https://web.archive.org/web/20071217035030/http://wow.allakhazam.com/db/mob.html?wmob=4861

REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60162, -60162, 100, 0, 1 FROM `creature_template` WHERE `entry` = 2453; -- https://www.wowhead.com/classic/npc=2453/logrosh

-- 60163	NPC LOOT (Green World Drop) - (Item Levels: 38-43) - (NPC Levels: 39-40)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60163, -60163, 2, 0, 1 FROM `creature_template` WHERE `entry` IN (
765, -- 37-38 tbc+ https://www.wowhead.com/classic/npc=765
4356, -- Bloodfen Razormaw	39	40 -- 38-39 tbc+ - https://web.archive.org/web/20071031104544/http://wow.allakhazam.com/db/mob.html?wmob=4356
4398, -- Mudrock Burrower	39	40 - https://web.archive.org/web/20071105022832/http://wow.allakhazam.com/db/mob.html?wmob=4398
4694, -- Dread Ripper	39	40 - https://web.archive.org/web/20071113020806/http://wow.allakhazam.com/db/mob.html?wmob=4694
4392, -- Corrosive Swamp Ooze	38	40 - https://web.archive.org/web/20071101092437/http://wow.allakhazam.com/db/mob.html?wmob=4392
92, -- Rock Elemental	39	40 - https://web.archive.org/web/20070825002405/http://wow.allakhazam.com/db/mob.html?wmob=92
690, -- Cold Eye Basilisk	39	40 - https://web.archive.org/web/20070825131442/http://wow.allakhazam.com/db/mob.html?wmob=690
4685); -- Ley Hunter	39	40 - https://web.archive.org/web/20071101053856/http://wow.allakhazam.com/db/mob.html?wmob=4685

REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60163, -60163, 5, 0, 1 FROM `creature_template` WHERE `entry` IN (
4863, -- Jadespine Basilisk	39	40 -- 37-38 tbc+ - https://web.archive.org/web/20071017042459/http://wow.allakhazam.com/db/mob.html?wmob=4863
7022); -- Venomlash Scorpid	39	40 -- 37-38 tbc+ - https://web.archive.org/web/20071017042552/http://wow.allakhazam.com/db/mob.html?wmob=7022

-- 60164	NPC LOOT (Green World Drop) - (Item Levels: 39-43) - (NPC Levels: 40)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60164, -60164, 2, 0, 1 FROM `creature_template` WHERE `entry` IN (
2347, -- Wild Gryphon, -- 40, -- 40 - https://web.archive.org/web/20080102133734/http://wow.allakhazam.com/db/mob.html?wmob=2347
728, -- Bhag'thera	40	40 - https://web.archive.org/web/20071011003358/http://wow.allakhazam.com/db/mob.html?wmob=728
2473, -- Granistad	40	40 - https://web.archive.org/web/20071101083219/http://wow.allakhazam.com/db/mob.html?wmob=2473
2474, -- Kurdros	40	40 - https://web.archive.org/web/20071102180334/http://wow.allakhazam.com/db/mob.html?wmob=2474
6239); -- Cyclonian	40	40 - https://web.archive.org/web/20071022032208/http://wow.allakhazam.com/db/mob.html?wmob=6239

-- 60165	NPC LOOT (Green World Drop) - (Item Levels: 39-44) - (NPC Levels: 40-41)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60165, -60165, 2, 0, 1 FROM `creature_template` WHERE `entry` IN (
4393, -- Acidic Swamp Ooze, -- 39, -- 41 - https://web.archive.org/web/20071225143912/http://wow.allakhazam.com/db/mob.html?wmob=4393
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

-- 60166	NPC LOOT (Green World Drop) - (Item Levels: 40-44) - (NPC Levels: 41)
-- 60167	NPC LOOT (Green World Drop) - (Item Levels: 40-45) - (NPC Levels: 41-42)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60167, -60167, 2, 0, 1 FROM `creature_template` WHERE `entry` IN (
4400, -- Mudrock Snapjaw (41-42) - https://web.archive.org/web/20071105022837/http://wow.allakhazam.com/db/mob.html?wmob=4400
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

-- 60168	NPC LOOT (Green World Drop) - (Item Levels: 41-45) - (NPC Levels: 42)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60168, -60168, 2, 0, 1 FROM `creature_template` WHERE `entry` = 2745; -- Ambassador Infernus, -- 42, -- 42 - https://web.archive.org/web/20080112095058/http://wow.allakhazam.com/db/mob.html?wmob=2745

-- 60169	NPC LOOT (Green World Drop) - (Item Levels: 41-46) - (NPC Levels: 42-43)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60169, -60169, 2, 0, 1 FROM `creature_template` WHERE `entry` IN (
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

-- 60170	NPC LOOT (Green World Drop) - (Item Levels: 42-46) - (NPC Levels: 43)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60170, -60170, 2, 0, 1 FROM `creature_template` WHERE `entry` IN (
730, -- Tethis	43	43 exclude? - https://web.archive.org/web/20071227082229/http://wow.allakhazam.com/db/mob.html?wmob=730
731); -- King Bangalash	43	43 - https://web.archive.org/web/20071016050608/http://wow.allakhazam.com/db/mob.html?wmob=731

-- 60171	NPC LOOT (Green World Drop) - (Item Levels: 42-47) - (NPC Levels: 43-44)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60171, -60171, 2, 0, 1 FROM `creature_template` WHERE `entry` IN (
2691, -- https://web.archive.org/web/20071227070144/http://wow.allakhazam.com/db/mob.html?wmob=2691
2736, -- Greater Rock Elemental	42	44 - https://web.archive.org/web/20071214012405/http://wow.allakhazam.com/db/mob.html?wmob=2736
2924, -- Silvermane Wolf	43	44 - https://web.archive.org/web/20071227070203/http://wow.allakhazam.com/db/mob.html?wmob=2924
5287, -- Longtooth Howler	43	44 - https://web.archive.org/web/20080105073607/http://wow.allakhazam.com/db/mob.html?wmob=5287
5300, -- Frayfeather Hippogryph	43	44 - https://web.archive.org/web/20071221160234/http://wow.allakhazam.com/db/mob.html?wmob=5300
5423, -- Scorpid Tail Lasher	43	44 - https://web.archive.org/web/20080103183830/http://wow.allakhazam.com/db/mob.html?wmob=5423
5646); -- Sandfury Axe Thrower	42	44 - https://web.archive.org/web/20071231140635/http://wow.allakhazam.com/db/mob.html?wmob=5646

REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60171, -60171, 5, 0, 1 FROM `creature_template` WHERE `entry` = 11790; -- 42-43 tbc+ https://web.archive.org/web/20080106091355/http://wow.allakhazam.com/db/mob.html?wmob=11790

-- 60172	NPC LOOT (Green World Drop) - (Item Levels: 43-47) - (NPC Levels: 44)
DELETE FROM `creature_loot_template` WHERE `entry` IN (2447,2755) AND `mincountOrRef` = -60171;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60172, -60172, 100, 0, 1 FROM `creature_template` WHERE `entry` = 2447; -- Narillasanz	44	44 - https://web.archive.org/web/20071026072346/http://wow.allakhazam.com/db/mob.html?wmob=2447
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60172, -60172, 2, 0, 1 FROM `creature_template` WHERE `entry` = 2755; -- Myzrael	44	44 exclude?

-- 60173	NPC LOOT (Green World Drop) - (Item Levels: 43-48) - (NPC Levels: 44-45)
DELETE FROM `creature_loot_template` WHERE `entry` = 5295 AND `mincountOrRef` = -60181;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60173, -60173, 2, 0, 1 FROM `creature_template` WHERE `entry` IN (
2928, -- https://web.archive.org/web/20080115141239/http://wow.allakhazam.com/db/mob.html?wmob=2928
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
5295); -- 60309	-60317	Enraged Feral Scar	44	45	NPC LOOT (Purple World Drop) - (Item Levels: 45-52) - (NPC Levels: 48-49)


REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60173, -60173, 5, 0, 1 FROM `creature_template` WHERE `entry` IN (
5650, -- https://web.archive.org/web/20071225214515/http://wow.allakhazam.com/db/mob.html?wmob=5650
12219); -- Barbed Lasher	44	45 - https://web.archive.org/web/20071230131813/http://wow.allakhazam.com/db/mob.html?wmob=12219

-- 60174	NPC LOOT (Green World Drop) - (Item Levels: 44-48) - (NPC Levels: 45)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60174, -60174, 100, 0, 1 FROM `creature_template` WHERE `entry` IN (
4339, -- Brimgore, -- 45, -- 45 -- 41-41 tbc+ - https://web.archive.org/web/20071230091900/http://wow.allakhazam.com/db/mob.html?wmob=4339
4841); -- Deadmire, -- 45, -- 45 -- 41-41 tbc+ - https://web.archive.org/web/20071222030013/http://wow.allakhazam.com/db/mob.html?wmob=4841 kek droprate

REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60174, -60174, 2, 0, 1 FROM `creature_template` WHERE `entry` = 2919; -- Fam'retor Guardian	45	45 - https://web.archive.org/web/20080101142340/http://wow.allakhazam.com/db/mob.html?wmob=2919

-- 60175	NPC LOOT (Green World Drop) - (Item Levels: 44-49) - (NPC Levels: 45-46)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60175, -60175, 2, 0, 1 FROM `creature_template` WHERE `entry` IN (
5308, -- Rogue Vale Screecher	44	46 - https://web.archive.org/web/20080102133945/http://wow.allakhazam.com/db/mob.html?wmob=5308
7584, -- Wandering Forest Walker	44	46 - https://web.archive.org/web/20071231045809/http://wow.allakhazam.com/db/mob.html?wmob=7584
2925, -- Silvermane Howler	45	46 - https://web.archive.org/web/20080111155312/http://wow.allakhazam.com/db/mob.html?wmob=2925
5224, -- Murk Slitherer	45	46 - https://web.archive.org/web/20071229053310/http://wow.allakhazam.com/db/mob.html?wmob=5224
5244, -- Zukk'ash Stinger	45	46 - https://web.archive.org/web/20080106101901/http://wow.allakhazam.com/db/mob.html?wmob=5244
5247, -- Zukk'ash Tunneler	45	46 - https://web.archive.org/web/20080228024309/http://wow.allakhazam.com/db/mob.html?wmob=5247
5305, -- Frayfeather Skystormer	45	46 - https://web.archive.org/web/20080104162851/http://wow.allakhazam.com/db/mob.html?wmob=5305
5420, -- Glasshide Gazer	45	46 - https://web.archive.org/web/20071231150858/http://wow.allakhazam.com/db/mob.html?wmob=5420
5984, -- Starving Snickerfang	45	46 - https://web.archive.org/web/20080108091425/http://wow.allakhazam.com/db/mob.html?wmob=5984
7269, -- Scarab	44	46 -- 44-44 tbc+ - https://web.archive.org/web/20071231173128/http://wow.allakhazam.com/db/mob.html?wmob=7269
7268); -- Sandfury Guardian	45	46 -- 45-45 tbc+ - https://web.archive.org/web/20080103215227/http://wow.allakhazam.com/db/mob.html?wmob=7268

REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60175, -60175, 5, 0, 1 FROM `creature_template` WHERE `entry` IN (
12220, -- Constrictor Vine	45	46 -- 44-45 tbc+ - https://web.archive.org/web/20071231140047/http://wow.allakhazam.com/db/mob.html?wmob=12220
13696); -- Noxxious Scion	45	46 -- 44-44 tbc+ - https://web.archive.org/web/20080103224414/http://wow.allakhazam.com/db/mob.html?wmob=13696

-- 60176	NPC LOOT (Green World Drop) - (Item Levels: 45-50) - (NPC Levels: 46)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60176, -60176, 2, 0, 1 FROM `creature_template` WHERE `entry` = 11783; -- Theradrim Shardling	46	46 -- 45-45 tbc+ - https://web.archive.org/web/20071231140032/http://wow.allakhazam.com/db/mob.html?wmob=11783

-- 60177	NPC LOOT (Green World Drop) - (Item Levels: 46-50) - (NPC Levels: 46-47)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60177, -60177, 2, 0, 1 FROM `creature_template` WHERE `entry` IN (
5434, -- Coral Shark (46-47) - https://web.archive.org/web/20080104181513/http://wow.allakhazam.com/db/mob.html?wmob=5434
5465, -- Land Rager	45	47 - https://web.archive.org/web/20080104223309/http://wow.allakhazam.com/db/mob.html?wmob=5465
5843, -- Slave Worker	45	47 - https://web.archive.org/web/20071230035021/http://wow.allakhazam.com/db/mob.html?wmob=5843
5850, -- Blazing Elemental	45	47 - https://web.archive.org/web/20071226222250/http://wow.allakhazam.com/db/mob.html?wmob=5850
5853, -- Tempered War Golem	45	47 - https://web.archive.org/web/20071230043146/http://wow.allakhazam.com/db/mob.html?wmob=5853
5857, -- Searing Lava Spider	45	47 - https://web.archive.org/web/20071229234751/http://wow.allakhazam.com/db/mob.html?wmob=5857
5979, -- Wretched Lost One	45	47 - https://web.archive.org/web/20080220184334/http://wow.allakhazam.com:80/db/mob.html?wmob=5979
6126, -- Haldarr Trickster	45	47 - https://web.archive.org/web/20080104162906/http://wow.allakhazam.com/db/mob.html?wmob=6126
8759, -- Mosshoof Runner	45	47 - https://www.wowhead.com/classic/item=2291/kang-the-decapitator
2680, -- Vilebranch Wolf Pup	46	47 - https://web.archive.org/web/20071226221609/http://wow.allakhazam.com/db/mob.html?wmob=2680
5225, -- Murk Spitter	46	47 - https://web.archive.org/web/20071229053315/http://wow.allakhazam.com/db/mob.html?wmob=5225
5306, -- Frayfeather Patriarch	46	47 - https://web.archive.org/web/20080105082502/http://wow.allakhazam.com/db/mob.html?wmob=5306
5424, -- Scorpid Dunestalker	46	47 - https://web.archive.org/web/20080104223229/http://wow.allakhazam.com/db/mob.html?wmob=5424 - edgemasters
12207, -- Thessala Hydra	46	47 - https://web.archive.org/web/20071230004303/http://wow.allakhazam.com/db/mob.html?wmob=12207
7803, -- Scorpid Duneburrower	46	47 - https://web.archive.org/web/20080104223419/http://wow.allakhazam.com/db/mob.html?wmob=7803
12218, -- Vile Larva	45	47 -- 44-44 tbc+ - https://web.archive.org/web/20071231140042/http://wow.allakhazam.com/db/mob.html?wmob=12218
13599); -- Stolid Snapjaw	46	47 -- 45-46 tbc+ - https://web.archive.org/web/20071230004317/http://wow.allakhazam.com/db/mob.html?wmob=13599

REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60177, -60177, 5, 0, 1 FROM `creature_template` WHERE `entry` =
8095; -- Sul'lithuz Sandcrawler	45	47 - https://web.archive.org/web/20071231173134/http://wow.allakhazam.com/db/mob.html?wmob=8095

-- 60178	NPC LOOT (Green World Drop) - (Item Levels: 46-51) - (NPC Levels: 47)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60178, -60178, 2, 0, 1 FROM `creature_template` WHERE `entry` IN (
8120, -- Sul'lithuz Abomination	47	47 - https://web.archive.org/web/20080103200045/http://wow.allakhazam.com/db/mob.html?wmob=8120
14661); -- Stinglasher	47	47 - https://web.archive.org/web/20071216060047/http://wow.allakhazam.com/db/mob.html?wmob=14661

-- 60179	NPC LOOT (Green World Drop) - (Item Levels: 47-51) - (NPC Levels: 47-48)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60179, -60179, 2, 0, 1 FROM `creature_template` WHERE `entry` IN (
2659, -- Razorbeak Skylord	46	48 - https://web.archive.org/web/20080110193012/http://wow.allakhazam.com/db/mob.html?wmob=2659
5855, -- Magma Elemental	46	48 - https://web.archive.org/web/20071226222305/http://wow.allakhazam.com/db/mob.html?wmob=5855
5982, -- Black Slayer	46	48 - https://web.archive.org/web/20071227202223/http://wow.allakhazam.com/db/mob.html?wmob=5982
5990, -- Redstone Basilisk	47	48 - https://web.archive.org/web/20080102095405/http://wow.allakhazam.com/db/mob.html?wmob=5990
5998, -- Nethergarde Foreman	46	48 - https://web.archive.org/web/20080101044449/http://wow.allakhazam.com/db/mob.html?wmob=5998
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

-- 60180	NPC LOOT (Green World Drop) - (Item Levels: 47-52) - (NPC Levels: 48)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60180, -60180, 2, 0, 1 FROM `creature_template` WHERE `entry` IN (
5833, -- Margol the Rager	48	48 -- 43-43 tbc+ - https://web.archive.org/web/20080102024442/http://wow.allakhazam.com/db/mob.html?wmob=5833
7977); -- Gammerita	48	48 - https://web.archive.org/web/20071219115814/http://wow.allakhazam.com/db/mob.html?wmob=7977

-- 60181	NPC LOOT (Green World Drop) - (Item Levels: 48-52) - (NPC Levels: 48-49)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60181, -60181, 2, 0, 1 FROM `creature_template` WHERE `entry` IN (
5360, -- Deep Strider	47	49 - https://web.archive.org/web/20080104223219/http://wow.allakhazam.com/db/mob.html?wmob=5360
5430, -- Searing Roc	47	49 - https://web.archive.org/web/20071104033753/http://wow.allakhazam.com:80/db/mob.html?wmob=5430
5852, -- Inferno Elemental	47	49 - https://web.archive.org/web/20071027092335/http://wow.allakhazam.com/db/mob.html?wmob=5852
5854, -- Heavy War Golem	47	49 - https://web.archive.org/web/20071030081503/http://wow.allakhazam.com/db/mob.html?wmob=5854
5858, -- Greater Lava Spider	47	49 - https://web.archive.org/web/20071030001957/http://wow.allakhazam.com/db/mob.html?wmob=5858
8837, -- Muck Splash	47	49 - https://web.archive.org/web/20071102231734/http://wow.allakhazam.com/db/mob.html?wmob=8837
9318, -- Incendosaur	47	49 - https://web.archive.org/web/20071106111616/http://wow.allakhazam.com/db/mob.html?wmob=9318
9397, -- Living Storm	47	49 - https://web.archive.org/web/20071105082616/http://wow.allakhazam.com/db/mob.html?wmob=9397
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

-- 60182	NPC LOOT (Green World Drop) - (Item Levels: 48-52) - (NPC Levels: 49)
-- 60183	NPC LOOT (Green World Drop) - (Item Levels: 48-53) - (NPC Levels: 49-50)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60183, -60183, 2, 0, 1 FROM `creature_template` WHERE `entry` IN (
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

-- 60184	NPC LOOT (Green World Drop) - (Item Levels: 49-53) - (NPC Levels: 50)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60184, -60184, 2, 0, 1 FROM `creature_template` WHERE `entry` IN (
2757, -- Blacklash	50	50 - https://web.archive.org/web/20071101050813/http://wow.allakhazam.com/db/mob.html?wmob=2757
2759, -- Hematus	50	50 - https://web.archive.org/web/20071102031545/http://wow.allakhazam.com/db/mob.html?wmob=2759
8196); -- Occulus	50	50 - https://web.archive.org/web/20071028110421/http://wow.allakhazam.com/db/mob.html?wmob=8196

-- 60185	NPC LOOT (Green World Drop) - (Item Levels: 49-54) - (NPC Levels: 50-51)
DELETE FROM `creature_loot_template` WHERE `entry` = 6002 AND `mincountOrRef` = -60183;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60185, -60185, 2, 0, 1 FROM `creature_template` WHERE `entry` IN (
3094, -- Unseen	49	51 - https://web.archive.org/web/20071102213917/http://wow.allakhazam.com/db/mob.html?wmob=3094
1822, -- Venom Mist Lurker	50	51 - https://web.archive.org/web/20071029164541/http://wow.allakhazam.com/db/mob.html?wmob=1822
2681, -- Vilebranch Raiding Wolf	50	51 - https://web.archive.org/web/20071027112003/http://wow.allakhazam.com/db/mob.html?wmob=2681
6508, -- Venomhide Ravasaur	50	51 - https://web.archive.org/web/20071031011740/http://wow.allakhazam.com/db/mob.html?wmob=6508
6514, -- Un'Goro Gorilla	50	51 - https://web.archive.org/web/20071031011805/http://wow.allakhazam.com/db/mob.html?wmob=6514
7099, -- Ironbeak Hunter	50	51 - https://web.archive.org/web/20071026041806/http://wow.allakhazam.com/db/mob.html?wmob=7099
7125, -- Jaedenar Hound	50	51 - https://web.archive.org/web/20071026064539/http://wow.allakhazam.com/db/mob.html?wmob=7125
8675, -- Felbeast	50	51 - https://web.archive.org/web/20071031065652/http://wow.allakhazam.com/db/mob.html?wmob=8675
6002, -- Nethergarde Riftwatcher	49	51 - https://web.archive.org/web/20071102184843/http://wow.allakhazam.com/db/mob.html?wmob=6002
5988); -- Scorpok Stinger	50	51 -- 46-47 tbc+ - https://web.archive.org/web/20071102174230/http://wow.allakhazam.com/db/mob.html?wmob=5988

REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60185, -60185, 0.25, 0, 1 FROM `creature_template` WHERE `entry` IN (
10981, -- Frostwolf	50	51 - https://web.archive.org/web/20071031090611/http://wow.allakhazam.com/db/mob.html?wmob=10981
10990, -- Alterac Ram	50	51 - https://web.archive.org/web/20071011020117/http://wow.allakhazam.com/db/mob.html?wmob=10990
13676, -- Stabled Alterac Ram	50	51 - https://web.archive.org/web/20071017232151/http://wow.allakhazam.com/db/mob.html?wmob=13676
13618); -- Stabled Frostwolf	50	51 - https://web.archive.org/web/20071012200438/http://wow.allakhazam.com/db/mob.html?wmob=13618

-- 60186	NPC LOOT (Green World Drop) - (Item Levels: 50-54) - (NPC Levels: 51)
-- 60187	NPC LOOT (Green World Drop) - (Item Levels: 50-55) - (NPC Levels: 51-52)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60187, -60187, 2, 0, 1 FROM `creature_template` WHERE `entry` IN (
6369, -- Coralshell Tortoise (50-52) - https://web.archive.org/web/20071230005955/http://wow.allakhazam.com/db/mob.html?wmob=6369
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

-- 60188	NPC LOOT (Green World Drop) - (Item Levels: 51-55) - (NPC Levels: 52)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60188, -60188, 2, 0, 1 FROM `creature_template` WHERE `entry` IN (
8198, -- Tick	52	52 - https://web.archive.org/web/20071028141843/http://wow.allakhazam.com/db/mob.html?wmob=8198
9026); -- Overmaster Pyron	52	52 -- 51-51 tbc+ - https://web.archive.org/web/20071027062806/http://wow.allakhazam.com/db/mob.html?wmob=9026
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60188, -60188, 100, 0, 1 FROM `creature_template` WHERE `entry` = 13896; -- Scalebeard	52	52 - https://web.archive.org/web/20071029193557/http://wow.allakhazam.com/db/mob.html?wmob=13896

-- 60189	NPC LOOT (Green World Drop) - (Item Levels: 51-56) - (NPC Levels: 52-53)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60189, -60189, 1, 0, 1 FROM `creature_template` WHERE `entry` IN (
13396, -- Irondeep Miner (52-53) - https://web.archive.org/web/20080104022314/http://wow.allakhazam.com/db/mob.html?wmob=13396
13317, -- Coldmine Miner (52-53) - https://web.archive.org/web/20080103014239/http://wow.allakhazam.com/db/mob.html?wmob=13317
10982, -- Whitewhisker Vermin	52	53 - https://web.archive.org/web/20071031090616/http://wow.allakhazam.com/db/mob.html?wmob=10982
13316, -- Coldmine Peon	52	53 - https://web.archive.org/web/20071031090848/http://wow.allakhazam.com/db/mob.html?wmob=13316
13397, -- Irondeep Peon	52	53 - https://web.archive.org/web/20071031090926/http://wow.allakhazam.com/db/mob.html?wmob=13397
10986, -- Snowblind Harpy	52	53 - https://web.archive.org/web/20071031090621/http://wow.allakhazam.com/db/mob.html?wmob=10986
10987, -- Irondeep Trogg	52	53 - https://web.archive.org/web/20071031062321/http://wow.allakhazam.com/db/mob.html?wmob=10987
10991, -- Wildpaw Gnoll	52	53 - https://web.archive.org/web/20071031062326/http://wow.allakhazam.com/db/mob.html?wmob=10991
11603, -- Whitewhisker Digger	52	53 - https://web.archive.org/web/20071031062342/http://wow.allakhazam.com/db/mob.html?wmob=11603
11678); -- Snowblind Ambusher	52	53 - https://web.archive.org/web/20071031062406/http://wow.allakhazam.com/db/mob.html?wmob=11678

REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60189, -60189, 2, 0, 1 FROM `creature_template` WHERE `entry` IN (
6501, -- Stegodon	52	53 - https://web.archive.org/web/20071028074916/http://wow.allakhazam.com/db/mob.html?wmob=6501
7098, -- Ironbeak Screecher	52	53 - https://web.archive.org/web/20071026064454/http://wow.allakhazam.com/db/mob.html?wmob=7098
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
10221); -- Bloodaxe Worg Pup	52	53 - https://web.archive.org/web/20071105213019/http://wow.allakhazam.com/db/mob.html?wmob=10221

-- 60190	NPC LOOT (Green World Drop) - (Item Levels: 52-56) - (NPC Levels: 53)
-- 60191	NPC LOOT (Green World Drop) - (Item Levels: 52-57) - (NPC Levels: 53-54)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60191, -60191, 1, 0, 1 FROM `creature_template` WHERE `entry` IN (
11600, -- Irondeep Shaman	53	54 - https://web.archive.org/web/20071031062331/http://wow.allakhazam.com/db/mob.html?wmob=11600
11604, -- Whitewhisker Geomancer	53	54 - https://web.archive.org/web/20071031062346/http://wow.allakhazam.com/db/mob.html?wmob=11604
11675, -- Snowblind Windcaller	53	54 - https://web.archive.org/web/20071031090626/http://wow.allakhazam.com/db/mob.html?wmob=11675
11837, -- Wildpaw Shaman	53	54 - https://web.archive.org/web/20071031090631/http://wow.allakhazam.com/db/mob.html?wmob=11837
14282, -- Frostwolf Bloodhound	53	54 - https://web.archive.org/web/20071031091107/http://wow.allakhazam.com/db/mob.html?wmob=14282
14283); -- Stormpike Owl	53	54 - https://web.archive.org/web/20071031062736/http://wow.allakhazam.com/db/mob.html?wmob=14283

REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60191, -60191, 2, 0, 1 FROM `creature_template` WHERE `entry` IN (
8910, -- Blazing Fireguard	52	54 -- 52-52 in tbc+ - https://web.archive.org/web/20071027092430/http://wow.allakhazam.com/db/mob.html?wmob=8910
6502, -- Plated Stegodon	52	54 - https://web.archive.org/web/20071027152302/http://wow.allakhazam.com/db/mob.html?wmob=6502
8916, -- Arena Spectator	52	54 - https://web.archive.org/web/20071031040248/http://wow.allakhazam.com/db/mob.html?wmob=8916
6503, -- Spiked Stegodon	53	54 - https://web.archive.org/web/20071027173344/http://wow.allakhazam.com/db/mob.html?wmob=6503
9694, -- Slavering Ember Worg	53	54 - https://web.archive.org/web/20071031050549/http://wow.allakhazam.com/db/mob.html?wmob=9694
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
12418); -- Gordok Hyena	52	54 - https://web.archive.org/web/20071030030621/http://wow.allakhazam.com/db/mob.html?wmob=12418

-- 60192	NPC LOOT (Green World Drop) - (Item Levels: 53-57) - (NPC Levels: 54)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60192, -60192, 2, 0, 1 FROM `creature_template` WHERE `entry` IN (
10040, -- Gorishi Hive Guard	54	54 - https://web.archive.org/web/20071031014833/http://wow.allakhazam.com/db/mob.html?wmob=10040
13022); -- Whip Lasher	54	54 - https://web.archive.org/web/20071105202528/http://wow.allakhazam.com/db/mob.html?wmob=13022

-- 60193	NPC LOOT (Green World Drop) - (Item Levels: 53-58) - (NPC Levels: 54-55)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60193, -60193, 1, 0, 1 FROM `creature_template` WHERE `entry` IN (
13087, -- Coldmine Invader (54-55) - https://web.archive.org/web/20080115210345/http://wow.allakhazam.com/db/mob.html?wmob=13087
13099, -- Irondeep Explorer (54-55) - https://web.archive.org/web/20080113104924/http://wow.allakhazam.com/db/mob.html?wmob=13099
13089, -- Coldmine Guard (54-55) - https://web.archive.org/web/20071230235856/http://wow.allakhazam.com/db/mob.html?wmob=13089
13097, -- Coldmine Surveyor (54-55) - https://web.archive.org/web/20080113130636/http://wow.allakhazam.com/db/mob.html?wmob=13097
13081, -- Irondeep Raider (54-55) - https://web.archive.org/web/20080113084054/http://wow.allakhazam.com/db/mob.html?wmob=13081
13096, -- Coldmine Explorer (54-55) - https://web.archive.org/web/20080101070752/http://wow.allakhazam.com/db/mob.html?wmob=13096
11602, -- Irondeep Skullthumper	54	55 - https://web.archive.org/web/20071031062336/http://wow.allakhazam.com/db/mob.html?wmob=11602
11605); -- Whitewhisker Overseer	54	55 - https://web.archive.org/web/20071031062351/http://wow.allakhazam.com/db/mob.html?wmob=11605

REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60193, -60193, 2, 0, 1 FROM `creature_template` WHERE `entry` IN (
6504, -- Thunderstomp Stegodon (54-55) - https://web.archive.org/web/20071230143303/http://wow.allakhazam.com/db/mob.html?wmob=6504
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
11735, -- Stonelash Scorpid	54	55 - https://web.archive.org/web/20071101001958/http://wow.allakhazam.com/db/mob.html?wmob=11735
8922); -- Bloodhound Mastiff	54	55 -- 52-53 tbc+ - https://web.archive.org/web/20071031050334/http://wow.allakhazam.com/db/mob.html?wmob=8922

-- 60194	NPC LOOT (Green World Drop) - (Item Levels: 54-58) - (NPC Levels: 55)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60194, -60194, 1, 0, 1 FROM `creature_template` WHERE `entry` =
12052; -- Frostwolf Warrior	55	55 - https://web.archive.org/web/20071012174800/http://wow.allakhazam.com/db/mob.html?wmob=12052

REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60194, -60194, 2, 0, 1 FROM `creature_template` WHERE `entry` IN (
2707, -- Shadra (55-55) - https://web.archive.org/web/20071225191048/http://wow.allakhazam.com/db/mob.html?wmob=2707
6140, -- Hetaera (55-55) - https://web.archive.org/web/20071229234800/http://wow.allakhazam.com/db/mob.html?wmob=6140
11196, -- Shatterspear Drummer (52-58) -- 55 - https://web.archive.org/web/20080109181356/http://wow.allakhazam.com/db/mob.html?wmob=11196
10919, -- Shatterspear Troll	52	58 -- use 55 due to scrolls III - https://web.archive.org/web/20071030063647/http://wow.allakhazam.com/db/mob.html?wmob=10919
9622, -- U'cha	55	55 - https://web.archive.org/web/20071103054414/http://wow.allakhazam.com/db/mob.html?wmob=9622
15333); -- Silicate Feeder	55	55 - https://web.archive.org/web/20071017232256/http://wow.allakhazam.com/db/mob.html?wmob=15333

REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`) -- seems more complicated
SELECT `entry`, 60194, -60194, 50, 0, 1 FROM `creature_template` WHERE `entry` = 9499; -- Plugger Spazzring (55-55) - https://web.archive.org/web/20060820172125/http://wow.allakhazam.com/db/mob.html?wmob=9499
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60194, -60194, 100, 0, 1 FROM `creature_template` WHERE `entry` = 2931; -- Zaricotl	55	55 - https://web.archive.org/web/20071102041204/http://wow.allakhazam.com/db/mob.html?wmob=2931

-- 60195	NPC LOOT (Green World Drop) - (Item Levels: 54-59) - (NPC Levels: 55-56)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60195, -60195, 2, 0, 1 FROM `creature_template` WHERE `entry` IN (
8911, -- Fireguard Destroyer	54	56 -- 54-54 tbc+ - https://web.archive.org/web/20071027092431/http://wow.allakhazam.com/db/mob.html?wmob=8911
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
8920); -- Weapon Technician	55	56 -- 53-54 tbc+ - https://web.archive.org/web/20071031040254/http://wow.allakhazam.com/db/mob.html?wmob=8920

-- 60196	NPC LOOT (Green World Drop) - (Item Levels: 55-59) - (NPC Levels: 56)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60196, -60196, 1, 0, 1 FROM `creature_template` WHERE `entry` IN (
13325, -- Seasoned Mountaineer	56	56 - https://web.archive.org/web/20070815131218/http://wow.allakhazam.com/db/mob.html?wmob=13325
13330, -- Seasoned Warrior	56	56, they exist in some form in some version of av
13327); -- Seasoned Sentinel	56	56, they exist in some form in some version of av

REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60196, -60196, 2, 0, 1 FROM `creature_template` WHERE `entry` IN (
9376, -- Blazerunner	56	56 - https://web.archive.org/web/20071027062811/http://wow.allakhazam.com/db/mob.html?wmob=9376
10041, -- Gorishi Hive Queen	56	56 - https://web.archive.org/web/20071031014839/http://wow.allakhazam.com/db/mob.html?wmob=10041
10662, -- Spellmaw	56	56 - https://web.archive.org/web/20071018132707/http://wow.allakhazam.com/db/mob.html?wmob=10662
9684, -- Lar'korwi	56	56 - https://web.archive.org/web/20071029034613/http://wow.allakhazam.com/db/mob.html?wmob=9684
11736, -- Stonelash Pincer	56	56 - https://web.archive.org/web/20071029034327/http://wow.allakhazam.com/db/mob.html?wmob=11736
13197); -- Fel Lash	56	56 - https://web.archive.org/web/20071101002104/http://wow.allakhazam.com/db/mob.html?wmob=13197

REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60196, -60196, 100, 0, 1 FROM `creature_template` WHERE `entry` = 7137; -- Immolatus	56	56 - https://web.archive.org/web/20071026041832/http://wow.allakhazam.com/db/mob.html?wmob=7137

-- 60197	NPC LOOT (Green World Drop) - (Item Levels: 55-60) - (NPC Levels: 56-57)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60197, -60197, 1, 0, 1 FROM `creature_template` WHERE `entry` IN (
13546, -- Seasoned Coldmine Explorer (56-57)
13549, -- Seasoned Coldmine Invader (56-57)
13540, -- Seasoned Irondeep Explorer (56-57)
13537, -- Seasoned Coldmine Surveyor (56-57)
13552, -- Seasoned Irondeep Guard (56-57)
13534, -- Seasoned Coldmine Guard (56-57)
13543, -- Seasoned Irondeep Raider (56-57)
13448, -- Sergeant Yazra Bloodsnarl	56	57 - https://web.archive.org/web/20071031062646/http://wow.allakhazam.com/db/mob.html?wmob=13448
11838, -- Wildpaw Mystic	56	57 - https://web.archive.org/web/20071031090640/http://wow.allakhazam.com/db/mob.html?wmob=11838
11839); -- Wildpaw Brute	56	57 - https://web.archive.org/web/20071031090641/http://wow.allakhazam.com/db/mob.html?wmob=11839

REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60197, -60197, 2, 0, 1 FROM `creature_template` WHERE `entry` IN (
13301, -- Hive'Ashi Ambusher	56	57 - https://web.archive.org/web/20071109110619/http://wow.allakhazam.com/db/mob.html?wmob=13301
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
12125); -- Mammoth Shark	56	57 - https://web.archive.org/web/20071102230321/http://wow.allakhazam.com/db/mob.html?wmob=12125

-- 60198	NPC LOOT (Green World Drop) - (Item Levels: 56-60) - (NPC Levels: 57)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60198, -60198, 1, 0, 1 FROM `creature_template` WHERE `entry` IN (
13335, -- Veteran Mountaineer	57	57 - https://web.archive.org/web/20051202182137/http://wow.allakhazam.com/db/mob.html?wmob=13335
12127, -- Stormpike Guardsman	57	57 - https://web.archive.org/web/20071031090656/http://wow.allakhazam.com/db/mob.html?wmob=12127
13336, -- Veteran Sentinel	57	57 - https://web.archive.org/web/20070109002246/http://wow.allakhazam.com/db/mob.html?wmob=13336
13337, -- Veteran Warrior	57	57 - https://web.archive.org/web/20070117032938/http://wow.allakhazam.com/db/mob.html?wmob=13337#
12051); -- Frostwolf Legionnaire	57	57 - https://web.archive.org/web/20060831163416/http://wow.allakhazam.com/db/mob.html?wmob=12051

REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60198, -60198, 100, 0, 1 FROM `creature_template` WHERE `entry` IN (
6583, -- Gruff (57-57) - https://web.archive.org/web/20071031011905/http://wow.allakhazam.com/db/mob.html?wmob=6583
14475); -- Rex Ashil (57-57) - https://web.archive.org/web/20071109110639/http://wow.allakhazam.com/db/mob.html?wmob=14475

-- 60199	NPC LOOT (Green World Drop) - (Item Levels: 56-61) - (NPC Levels: 57-58)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60199, -60199, 1, 0, 1 FROM `creature_template` WHERE `entry` IN (
10983); -- Winterax Troll	57	58 - https://web.archive.org/web/20060614011404/http://wow.allakhazam.com/db/mob.html?wmob=10983

REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60199, -60199, 2, 0, 1 FROM `creature_template` WHERE `entry` IN (
14458, -- Watery Invader	56	58 - https://web.archive.org/web/20070102020125/http://wow.allakhazam.com/db/mob.html?wmob=14458
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

REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60199, -60199, 8, 0, 1 FROM `creature_template` WHERE `entry` IN (
14880); -- Razzashi Skitterer (56-58) - https://web.archive.org/web/20060112205357/http://wow.allakhazam.com/db/mob.html?wmob=14880

-- 60290	NPC LOOT (Green World Drop) - (Item Levels: 57-61) - (NPC Levels: 58) - VANILLA NPC ONLY
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60290, -60290, 1, 0, 1 FROM `creature_template` WHERE `entry` IN (
13086, -- Aggi Rumblestomp (58-58) - https://web.archive.org/web/20060525095615/http://wow.allakhazam.com/db/mob.html?wmob=13086
13524, -- Stormpike Commando (58-58) - https://www.wowhead.com/classic/npc=13524/stormpike-commando
13078, -- Umi Thorson (58-58) - https://web.archive.org/web/20060627040050/http://wow.allakhazam.com/db/mob.html?wmob=13078
13079, -- Keetar (58-58) - https://web.archive.org/web/20060630044816/http://wow.allakhazam.com/db/mob.html?wmob=13079
13088, -- Masha Swiftcut (58-58) - https://web.archive.org/web/20060630011848/http://wow.allakhazam.com/db/mob.html?wmob=13088
13218, -- https://web.archive.org/web/20060722034044/http://wow.allakhazam.com/db/mob.html?wmob=13218
13180, -- Wing Commander Jeztor	58	58 - https://web.archive.org/web/20071031062511/http://wow.allakhazam.com/db/mob.html?wmob=13180
13284, -- Frostwolf Shaman	58	58 - https://web.archive.org/web/20071031090841/http://wow.allakhazam.com/db/mob.html?wmob=13284
13427, -- Champion Sentinel	58	58 - https://web.archive.org/web/20070813180421/http://wow.allakhazam.com/db/mob.html?wmob=13427
13438, -- Wing Commander Slidore	58	58 - https://web.archive.org/web/20070812194129/http://wow.allakhazam.com/db/mob.html?wmob=13438
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

REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60290, -60290, 2, 0, 1 FROM `creature_template` WHERE `entry` IN (
14464, -- Avalanchion (58-58) - https://web.archive.org/web/20060614012534/http://wow.allakhazam.com/db/mob.html?wmob=14464
10663, -- Manaclaw	58	58 - https://web.archive.org/web/20071013201531/http://wow.allakhazam.com/db/mob.html?wmob=10663
10807, -- Brumeran	58	58 - https://web.archive.org/web/20071014003944/http://wow.allakhazam.com/db/mob.html?wmob=10807
14461, -- Baron Charr	58	58 - https://web.archive.org/web/20070627090114/http://wow.allakhazam.com/db/mob.html?wmob=14461
10177); -- Spire Scarab	58	58 - https://web.archive.org/web/20071112184054/http://wow.allakhazam.com/db/mob.html?wmob=10177

-- 60291	NPC LOOT (Green World Drop) - (Item Levels: 57-62) - (NPC Levels: 58-59) - VANILLA NPC ONLY
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60291, -60291, 1, 0, 1 FROM `creature_template` WHERE `entry` IN (
13541, -- Veteran Irondeep Explorer (58-59) - https://web.archive.org/web/20060630031217/http://wow.allakhazam.com/db/mob.html?wmob=13541
13547, -- Veteran Coldmine Explorer (58-59) - https://web.archive.org/web/20060626063155/http://wow.allakhazam.com/db/mob.html?wmob=13547
13544, -- Veteran Irondeep Raider (58-59) - https://web.archive.org/web/20070124063403/http://wow.allakhazam.com/db/mob.html?wmob=13544
13535, -- Veteran Coldmine Guard (58-59) - https://web.archive.org/web/20071101082607/http://wow.allakhazam.com/db/mob.html?wmob=13535
13538, -- Veteran Coldmine Surveyor (58-59) - https://web.archive.org/web/20071031103932/http://wow.allakhazam.com/db/mob.html?wmob=13538
13550, -- Veteran Coldmine Invader (58-59) - https://web.archive.org/web/20071031103936/http://wow.allakhazam.com/db/mob.html?wmob=13550
13553, -- Veteran Irondeep Guard (58-59) - https://web.archive.org/web/20071101062910/http://wow.allakhazam.com/db/mob.html?wmob=13553
13556, -- Veteran Irondeep Surveyor (58-59) - https://web.archive.org/web/20071101082612/http://wow.allakhazam.com/db/mob.html?wmob=13556
11840, -- Wildpaw Alpha	58	59 - https://web.archive.org/web/20060527141439/http://wow.allakhazam.com/db/mob.html?wmob=11840
13447); -- Corporal Noreg Stormpike	58	59 - https://web.archive.org/web/20071230224120/http://wow.allakhazam.com/db/mob.html?wmob=13447

REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60291, -60291, 2, 0, 1 FROM `creature_template` WHERE `entry` IN (
11483, -- Mana Remnant (57-59) - https://web.archive.org/web/20071106134435/http://wow.allakhazam.com/db/mob.html?wmob=11483
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
14398); -- Eldreth Darter	58	59 - https://web.archive.org/web/20071228095221/http://wow.allakhazam.com/db/mob.html?wmob=14398

-- 60292	NPC LOOT (Green World Drop) - (Item Levels: 58-62) - (NPC Levels: 59) - VANILLA NPC ONLY
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60292, -60292, 1, 0, 1 FROM `creature_template` WHERE `entry` IN (
13296, -- Lieutenant Largent (59-59) - https://web.archive.org/web/20071031062521/http://wow.allakhazam.com/db/mob.html?wmob=13296
13356, -- Stormpike Mine Layer (59-59) - https://web.archive.org/web/20070812020816/http://wow.allakhazam.com/db/mob.html?wmob=13356
13525, -- Seasoned Commando (59-59) - https://web.archive.org/web/20070112102644/http://wow.allakhazam.com/db/mob.html?wmob=13525
13528, -- Frostwolf Reaver (59-59) - https://web.archive.org/web/20060620190607/http://wow.allakhazam.com/db/mob.html?wmob=13528
14188, -- https://web.archive.org/web/20071230204544/http://wow.allakhazam.com/db/mob.html?wmob=14188
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

REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60292, -60292, 100, 0, 1 FROM `creature_template` WHERE `entry` IN (
10202, -- Azurous (59-59) - https://web.archive.org/web/20071018142252/http://wow.allakhazam.com/db/mob.html?wmob=10202
14474); -- Zora (59-59) - https://web.archive.org/web/20060416003807/http://wow.allakhazam.com/db/mob.html?wmob=14474

-- 60293	NPC LOOT (Green World Drop) - (Item Levels: 58-63) - (NPC Levels: 59-60) - VANILLA NPC ONLY
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60293, -60293, 1, 0, 1 FROM `creature_template` WHERE `entry` IN (
11679, -- Winterax Witch Doctor (59-60) - https://web.archive.org/web/20060516160341/http://wow.allakhazam.com/db/mob.html?wmob=11679
12156, -- Winterax Axe Thrower (59-60) - https://web.archive.org/web/20060524162747/http://wow.allakhazam.com/db/mob.html?wmob=12156
12157, -- Winterax Shadow Hunter	59	60 - https://web.archive.org/web/20051206161806/http://wow.allakhazam.com/db/mob.html?wmob=12157
13358, -- Stormpike Bowman	59	60 - https://web.archive.org/web/20080507051010/http://wow.allakhazam.com/db/mob.html?wmob=13358
13359); -- Frostwolf Bowman	59	60 - https://web.archive.org/web/20080507172359/http://wow.allakhazam.com/db/mob.html?wmob=13359

DELETE FROM `creature_loot_template` WHERE `entry` = 11883 AND `mincountOrRef` = -60294;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60293, -60293, 2, 0, 1 FROM `creature_template` WHERE `entry` IN (
14399, -- Arcane Torrent (59-60) - https://web.archive.org/web/20060613212654/http://wow.allakhazam.com/db/mob.html?wmob=14399
14400, -- Arcane Feedback (59-60) - https://web.archive.org/web/20060613212709/http://wow.allakhazam.com/db/mob.html?wmob=14400
10996, -- Fallen Hero	58	60 - https://web.archive.org/web/20060307182825/http://wow.allakhazam.com/db/mob.html?wmob=10996
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
7461, -- Hederine Initiate 57	60 - https://web.archive.org/web/20071229151120/http://wow.allakhazam.com/db/mob.html?wmob=7461
7463, -- Hederine Slayer 57	60 - https://web.archive.org/web/20071230010011/http://wow.allakhazam.com/db/mob.html?wmob=7463
11881, -- Twilight Geolord 58	60 - https://web.archive.org/web/20071225143014/http://wow.allakhazam.com/db/mob.html?wmob=11881
11882, -- Twilight Stonecaller 59	60 - https://web.archive.org/web/20071225143019/http://wow.allakhazam.com/db/mob.html?wmob=11882
11883, -- Twilight Master 59	60 - https://web.archive.org/web/20071225154959/http://wow.allakhazam.com/db/mob.html?wmob=11883
12380, -- Unliving Resident	59	60 -- 69-70 tbc+ - https://web.archive.org/web/20060831043708/http://wow.allakhazam.com/db/mob.html?wmob=12380
7370, -- Restless Shade	58	60 - 68 69 tbc+ - https://web.archive.org/web/20080101044455/http://wow.allakhazam.com/db/mob.html?wmob=7370
12378); -- Damned Soul 59	60 - 68 69 tbc+ - https://web.archive.org/web/20080104022253/http://wow.allakhazam.com/db/mob.html?wmob=12378

REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60293, -60293, 5, 0, 1 FROM `creature_template` WHERE `entry` IN (
11480, -- Arcane Aberration (59-60) - https://web.archive.org/web/20060415044311/http://wow.allakhazam.com/db/mob.html?wmob=11480
11484); -- Residual Monstrosity (59-60) - https://web.archive.org/web/20060415192418/http://wow.allakhazam.com/db/mob.html?wmob=11484

-- 60294	NPC LOOT (Green World Drop) - (Item Levels: 59-63) - (NPC Levels: 60) - VANILLA NPC ONLY
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60294, -60294, 1, 0, 1 FROM `creature_template` WHERE `entry` IN (
603, -- Grimtooth (60-60) - https://web.archive.org/web/20071031104830/http://wow.allakhazam.com/db/mob.html?wmob=603
13236, -- Primalist Thurloga (60-60) - https://web.archive.org/web/20071031090837/http://wow.allakhazam.com/db/mob.html?wmob=13236
13378, -- Frostwolf Shredder Unit (60-60) - https://web.archive.org/web/20080101070808/http://wow.allakhazam.com/db/mob.html?wmob=13378
13441, -- Frostwolf Wolf Rider Commander (60-60) - https://web.archive.org/web/20071231042224/http://wow.allakhazam.com/db/mob.html?wmob=13441
13442, -- Arch Druid Renferal (60-60) - https://web.archive.org/web/20071231000107/http://wow.allakhazam.com/db/mob.html?wmob=13442
13526, -- Veteran Commando (60-60) - https://web.archive.org/web/20071213022508/http://wow.allakhazam.com/db/mob.html?wmob=13526
13536, -- Champion Coldmine Guard (60-60) - https://web.archive.org/web/20080117103456/http://wow.allakhazam.com/db/mob.html?wmob=13536
13539, -- Champion Coldmine Surveyor (60-60) - https://web.archive.org/web/20080106082649/http://wow.allakhazam.com/db/mob.html?wmob=13539
13542, -- Champion Irondeep Explorer (60-60) - https://web.archive.org/web/20080117211401/http://wow.allakhazam.com/db/mob.html?wmob=13542
13545, -- Champion Irondeep Raider (60-60) - https://web.archive.org/web/20080116111716/http://wow.allakhazam.com/db/mob.html?wmob=13545
13548, -- Champion Coldmine Explorer (60-60) - https://web.archive.org/web/20080113071306/http://wow.allakhazam.com/db/mob.html?wmob=13548
13554, -- Champion Irondeep Guard (60-60) - https://web.archive.org/web/20080115231314/http://wow.allakhazam.com/db/mob.html?wmob=13554
13598, -- Stormpike Explosives Expert (60-60) - https://web.archive.org/web/20080201180021/http://wow.allakhazam.com/db/mob.html?wmob=13598
13617, -- Stormpike Stable Master (60-60) - https://web.archive.org/web/20071231183300/http://wow.allakhazam.com/db/mob.html?wmob=13617
14186, -- Ravak Grimtotem (60-60) - https://web.archive.org/web/20080109105054/http://wow.allakhazam.com/db/mob.html?wmob=14186
12121, -- Draka	60	60 - https://web.archive.org/web/20071018022546/http://wow.allakhazam.com/db/mob.html?wmob=12121
12122, -- Duros	60	60 - https://web.archive.org/web/20071017160508/http://wow.allakhazam.com/db/mob.html?wmob=12122
13176, -- Smith Regzar	60	60 - https://web.archive.org/web/20071031090826/http://wow.allakhazam.com/db/mob.html?wmob=13176
13181, -- Wing Commander Mulverick	60	60 - https://web.archive.org/web/20071030063833/http://wow.allakhazam.com/db/mob.html?wmob=13181
13257, -- Murgot Deepforge	60	60 - https://web.archive.org/web/20071031062516/http://wow.allakhazam.com/db/mob.html?wmob=13257
13377, -- Master Engineer Zinfizzlex	60	60 - https://web.archive.org/web/20070816013448/http://wow.allakhazam.com/db/mob.html?wmob=13377
13530, -- Veteran Reaver	60	60 - https://web.archive.org/web/20071031091017/http://wow.allakhazam.com/db/mob.html?wmob=13530
13551, -- Champion Coldmine Invader	60	60 - https://web.archive.org/web/20071031091052/http://wow.allakhazam.com/db/mob.html?wmob=13551
13331, -- Veteran Defender	60	60 - https://web.archive.org/web/20071231000031/http://wow.allakhazam.com/db/mob.html?wmob=13331
13424, -- Champion Guardsman	60	60 - https://web.archive.org/web/20071231000052/http://wow.allakhazam.com/db/mob.html?wmob=13424
13425, -- Champion Legionnaire	60	60 - https://web.archive.org/web/20080105214654/http://wow.allakhazam.com/db/mob.html?wmob=13425
13437, -- Wing Commander Ichman	60	60 - https://web.archive.org/web/20071230204520/http://wow.allakhazam.com/db/mob.html?wmob=13437
13443, -- Druid of the Grove	60	60 - https://web.archive.org/web/20080102153826/http://wow.allakhazam.com/db/mob.html?wmob=13443
13577, -- Stormpike Ram Rider Commander	60	60 - https://web.archive.org/web/20071231000117/http://wow.allakhazam.com/db/mob.html?wmob=13577
14187, -- Athramanis	60	60 - https://web.archive.org/web/20071230224145/http://wow.allakhazam.com/db/mob.html?wmob=14187
13332); -- Veteran Guardian	60	60 - https://web.archive.org/web/20071031062606/http://wow.allakhazam.com/db/mob.html?wmob=13332

REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60294, -60294, 2, 0, 1 FROM `creature_template` WHERE `entry` IN (
1756, -- https://web.archive.org/web/20080112145852/http://wow.allakhazam.com/db/mob.html?wmob=1756
11804, -- Twilight Keeper Havunth (60-60) - https://web.archive.org/web/20071026023502/http://wow.allakhazam.com/db/mob.html?wmob=11804
14454, -- The Windreaver (60-60) - https://web.archive.org/web/20080118044309/http://wow.allakhazam.com/db/mob.html?wmob=14454
14457, -- Princess Tempestria (60-60) - https://web.archive.org/web/20080115141044/http://wow.allakhazam.com/db/mob.html?wmob=14457
15319, -- Hive'Zara Collector (60-60) - https://web.archive.org/web/20080110230023/http://wow.allakhazam.com/db/mob.html?wmob=15319
16022, -- Surgical Assistant (60-60) - https://web.archive.org/web/20080112001329/http://wow.allakhazam.com/db/mob.html?wmob=16022
7846, -- Teremus the Devourer	60	60 - https://web.archive.org/web/20071022030105/http://wow.allakhazam.com/db/mob.html?wmob=7846
8718, -- Manahound	60	60 - https://web.archive.org/web/20071013134949/http://wow.allakhazam.com/db/mob.html?wmob=8718
10737, -- Shy-Rotam	60	60 - https://web.archive.org/web/20071028091209/http://wow.allakhazam.com/db/mob.html?wmob=10737
10741, -- Sian-Rotam	60	60 - https://web.archive.org/web/20071106002345/http://wow.allakhazam.com/db/mob.html?wmob=10741
11803, -- Twilight Keeper Exeter	60	60 - https://web.archive.org/web/20071110235625/http://wow.allakhazam.com/db/mob.html?wmob=11803
11897, -- Duskwing	60	60 - https://web.archive.org/web/20071105191038/http://wow.allakhazam.com/db/mob.html?wmob=11897
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
13996, -- Blackwing Technician	60	60 - https://web.archive.org/web/20071229075131/http://wow.allakhazam.com/db/mob.html?wmob=13996
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
11830, -- Hakkari Priest		60	60 - https://web.archive.org/web/20071227140251/http://wow.allakhazam.com/db/mob.html?wmob=11830
15201); -- Twilight Flamereaver		60	60 - https://web.archive.org/web/20071225155004/http://wow.allakhazam.com/db/mob.html?wmob=15201

REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60294, -60294, 100, 0, 1 FROM `creature_template` WHERE `entry` IN (
1837, -- Scarlet Judge
6584, -- King Mosh (60-60) - https://web.archive.org/web/20071031015832/http://wow.allakhazam.com/db/mob.html?wmob=6584
8976, -- Hematos (60-60) - https://web.archive.org/web/20071026092037/http://wow.allakhazam.com/db/mob.html?wmob=8976
14473); -- Lapress (60-60) - https://web.archive.org/web/20080109204704/http://wow.allakhazam.com/db/mob.html?wmob=14473

-- 60295	NPC LOOT (Green World Drop) - (Item Levels: 59-64) - (NPC Levels: 60-61) - VANILLA NPC ONLY
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60295, -60295, 1, 0, 1 FROM `creature_template` WHERE `entry` IN (
13798, -- Jotek	60	61 - https://web.archive.org/web/20071031062721/http://wow.allakhazam.com/db/mob.html?wmob=13798
13797); -- Mountaineer Boombellow	60	61 - https://web.archive.org/web/20071031062718/http://wow.allakhazam.com/db/mob.html?wmob=13797

REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60295, -60295, 2, 0, 1 FROM `creature_template` WHERE `entry` IN (
4366, -- Strashaz Serpent Guard (59-61) - https://web.archive.org/web/20080104175133/http://wow.allakhazam.com/db/mob.html?wmob=4366
4374, -- Strashaz Hydra	59	61 - https://web.archive.org/web/20071030001836/http://wow.allakhazam.com/db/mob.html?wmob=4374
10488, -- Risen Construct	58	61 - https://web.archive.org/web/20071103223010/http://wow.allakhazam.com/db/mob.html?wmob=10488
10500, -- Spectral Teacher	58	61 - https://web.archive.org/web/20071104000511/http://wow.allakhazam.com/db/mob.html?wmob=10500
10486, -- Risen Warrior	59	61 - https://web.archive.org/web/20071103223005/http://wow.allakhazam.com/db/mob.html?wmob=10486
11598, -- Risen Guardian	59	61 - https://web.archive.org/web/20071113135029/http://wow.allakhazam.com/db/mob.html?wmob=11598
11734, -- Hive'Regal Hive Lord	59	61 - https://web.archive.org/web/20071028104413/http://wow.allakhazam.com/db/mob.html?wmob=11734
12800, -- Chimaerok	60	61 - https://web.archive.org/web/20071106033522/http://wow.allakhazam.com/db/mob.html?wmob=12800
15213); -- Twilight Overlord 59	61 - https://web.archive.org/web/20080105201211/http://wow.allakhazam.com/db/mob.html?wmob=15213

-- 60296	NPC LOOT (Green World Drop) - (Item Levels: 60-64) - (NPC Levels: 61) - VANILLA NPC ONLY
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60296, -60296, 1, 0, 1 FROM `creature_template` WHERE `entry` IN (
13155, -- Deathstalker Agent (61-61) - https://www.wowhead.com/tbc/npc=13155/deathstalker-agent
13319, -- Commander Duffy (61-61) - https://www.wowhead.com/tbc/npc=13319/commander-duffy
13446, -- Field Marshal Teravaine (61-61) - https://www.wowhead.com/tbc/npc=13446/field-marshal-teravaine
14285, -- Frostwolf Battleguard (61-61) - https://www.wowhead.com/tbc/npc=14285/frostwolf-battleguard
11947, -- Captain Galvangar	61	61 - https://web.archive.org/web/20071031062416/http://wow.allakhazam.com/db/mob.html?wmob=11947
13154, -- Commander Louis Philips	61	61 - https://web.archive.org/web/20071031090822/http://wow.allakhazam.com/db/mob.html?wmob=13154
13318, -- Commander Mortimer	61	61 - https://web.archive.org/web/20071031062546/http://wow.allakhazam.com/db/mob.html?wmob=13318
13449, -- Warmaster Garrick	61	61 - https://web.archive.org/web/20071101062900/http://wow.allakhazam.com/db/mob.html?wmob=13449
13527, -- Champion Commando	61	61 - https://web.archive.org/web/20070821222747/http://wow.allakhazam.com/db/mob.html?wmob=13527
13959, -- Alterac Yeti	61	61 - https://web.archive.org/web/20071031062726/http://wow.allakhazam.com/db/mob.html?wmob=13959
11949, -- Captain Balinda Stonehearth	61	61 - https://web.archive.org/web/20071031062421/http://wow.allakhazam.com/db/mob.html?wmob=11949
13139, -- Commander Randolph	61	61 - https://web.archive.org/web/20071031090752/http://wow.allakhazam.com/db/mob.html?wmob=13139
13140, -- Commander Dardosh	61	61 - https://web.archive.org/web/20071031062456/http://wow.allakhazam.com/db/mob.html?wmob=13140
13152, -- Commander Malgor	61	61 - https://web.archive.org/web/20071031090811/http://wow.allakhazam.com/db/mob.html?wmob=13152
13153, -- Commander Mulfort	61	61 - https://web.archive.org/web/20071031090816/http://wow.allakhazam.com/db/mob.html?wmob=13153
13421, -- Champion Guardian	61	61 - https://web.archive.org/web/20071031062621/http://wow.allakhazam.com/db/mob.html?wmob=13421
13422, -- Champion Defender	61	61 - https://web.archive.org/web/20071031090932/http://wow.allakhazam.com/db/mob.html?wmob=13422
13531, -- Champion Reaver	61	61 - https://web.archive.org/web/20071031091022/http://wow.allakhazam.com/db/mob.html?wmob=13531
13320); -- Commander Karl Philips 61 61 - https://web.archive.org/web/20071230224100/http://wow.allakhazam.com/db/mob.html?wmob=13320

-- wotlk+ (dont add any naxx npcs)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60296, -60296, 2, 0, 1 FROM `creature_template` WHERE `entry` IN (
13840, -- Warmaster Laggrond (61-61) - https://web.archive.org/web/20071230204534/http://wow.allakhazam.com/db/mob.html?wmob=13840
11370, -- Razzashi Broodwidow (61-61) - https://web.archive.org/web/20071228072243/http://wow.allakhazam.com/db/mob.html?wmob=11370
14750, -- Gurubashi Bat Rider (61-61) - https://www.wowhead.com/tbc/npc=14750/gurubashi-bat-rider
15974, -- Dread Creeper (61-61) - https://www.wowhead.com/tbc/npc=15974/dread-creeper
15975, -- Carrion Spinner (61-61) - https://www.wowhead.com/tbc/npc=15975/carrion-spinner
15976, -- Venom Stalker (61-61) - https://www.wowhead.com/tbc/npc=15976/venom-stalker
15978, -- Crypt Reaver (61-61) - https://www.wowhead.com/tbc/npc=15978/crypt-reaver
15980, -- Naxxramas Cultist (61-61) - https://www.wowhead.com/tbc/npc=15980/naxxramas-cultist
15981, -- Naxxramas Acolyte (61-61) - https://www.wowhead.com/tbc/npc=15981/naxxramas-acolyte
16017, -- Patchwork Golem (61-61) - https://www.wowhead.com/tbc/npc=16017/patchwork-golem
16018, -- Bile Retcher (61-61) - https://www.wowhead.com/tbc/npc=16018/bile-retcher
16020, -- Mad Scientist (61-61) - https://www.wowhead.com/tbc/npc=16020/mad-scientist
16067, -- Skeletal Steed (61-61) - https://www.wowhead.com/tbc/npc=16067/skeletal-steed
16145, -- Deathknight Captain (61-61) - https://www.wowhead.com/tbc/npc=16145/deathknight-captain
16154, -- Risen Deathknight (61-61) - https://www.wowhead.com/tbc/npc=16154/risen-deathknight
16156, -- Dark Touched Warrior (61-61) - https://www.wowhead.com/tbc/npc=16156/dark-touched-warrior
16157, -- Doom Touched Warrior (61-61) - https://www.wowhead.com/tbc/npc=16157/doom-touched-warrior
16158, -- Death Touched Warrior (61-61) - https://www.wowhead.com/tbc/npc=16158/death-touched-warrior
16163, -- Deathknight Cavalier (61-61) - https://www.wowhead.com/tbc/npc=16163/deathknight-cavalier
16164, -- Shade of Naxxramas (61-61) - https://www.wowhead.com/tbc/npc=16164/shade-of-naxxramas
16165, -- Necro Knight (61-61) - https://www.wowhead.com/tbc/npc=16165/necro-knight
16167, -- Bony Construct (61-61) - https://www.wowhead.com/tbc/npc=16167/bony-construct
16168, -- Stoneskin Gargoyle (61-61) - https://www.wowhead.com/tbc/npc=16168/stoneskin-gargoyle
16193, -- Skeletal Smith (61-61) - https://www.wowhead.com/tbc/npc=16193/skeletal-smith
16244, -- Infectious Ghoul (61-61) - https://www.wowhead.com/tbc/npc=16244/infectious-ghoul
16446, -- Plagued Gargoyle (61-61) - https://www.wowhead.com/tbc/npc=16446/plagued-gargoyle
16447, -- Plagued Ghoul (61-61) - https://www.wowhead.com/tbc/npc=16447/plagued-ghoul
16448, -- Plagued Deathhound (61-61) - https://www.wowhead.com/tbc/npc=16448/plagued-deathhound
16449, -- Spirit of Naxxramas (61-61) - https://www.wowhead.com/tbc/npc=16449/spirit-of-naxxramas
16453, -- Necro Stalker (61-61) - https://www.wowhead.com/tbc/npc=16453/necro-stalker
13256, -- Lokholar the Ice Lord (61-61) - https://web.archive.org/web/20071225202118/http://wow.allakhazam.com/db/mob.html?wmob=13256
13419, -- Ivus the Forest Lord (61-61) - https://web.archive.org/web/20071225202124/http://wow.allakhazam.com/db/mob.html?wmob=13419
8197, -- Chronalis	61	61 - https://web.archive.org/web/20071026113542/http://wow.allakhazam.com/db/mob.html?wmob=8197
11339, -- Hakkari Shadow Hunter	61	61 - https://web.archive.org/web/20071028004639/http://wow.allakhazam.com/db/mob.html?wmob=11339
11340, -- Hakkari Blood Priest	61	61 - https://web.archive.org/web/20071028104343/http://wow.allakhazam.com/db/mob.html?wmob=11340
11356, -- Gurubashi Champion	61	61 - https://web.archive.org/web/20071028004644/http://wow.allakhazam.com/db/mob.html?wmob=11356
12459, -- Blackwing Warlock	61	61 - https://web.archive.org/web/20071101105929/http://wow.allakhazam.com/db/mob.html?wmob=12459
12468, -- Death Talon Hatcher	61	61 - https://web.archive.org/web/20071030063818/http://wow.allakhazam.com/db/mob.html?wmob=12468
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
12465, -- Death Talon Wyrmkin	61	61 - https://web.archive.org/web/20071030123941/http://wow.allakhazam.com/db/mob.html?wmob=12465
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
15343); -- Qiraji Swarmguard	61	61 - https://web.archive.org/web/20080102144355/http://wow.allakhazam.com/db/mob.html?wmob=15343

REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60296, -60296, 40, 0, 1 FROM `creature_template` WHERE `entry` = 10439; -- Ramstein the Gorger (61-61) -- https://web.archive.org/web/20071215123911/http://wow.allakhazam.com/db/mob.html?wmob=10439 - 100%? (133.61% - 60% -30% = 40% a group with blue items?)

-- 60297	NPC LOOT (Green World Drop) - (Item Levels: 60-65) - (NPC Levels: 61-62) - VANILLA NPC ONLY
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60297, -60297, 2, 0, 1 FROM `creature_template` WHERE `entry` IN (
12801, -- Arcane Chimaerok	60	62 - https://web.archive.org/web/20071106033527/http://wow.allakhazam.com/db/mob.html?wmob=12801
11666, -- Firewalker	61	62 - https://web.archive.org/web/20071027090606/http://wow.allakhazam.com/db/mob.html?wmob=11666
12101, -- Lava Surger	61	62 - https://web.archive.org/web/20071102213119/http://wow.allakhazam.com/db/mob.html?wmob=12101
12802, -- Chimaerok Devourer	61	62 - https://web.archive.org/web/20071111235336/http://wow.allakhazam.com/db/mob.html?wmob=12802
11665, -- Lava Annihilator	61	62 - https://web.archive.org/web/20071230131733/http://wow.allakhazam.com/db/mob.html?wmob=11665
11667, -- Flameguard	61	62 - https://web.archive.org/web/20071226230851/http://wow.allakhazam.com/db/mob.html?wmob=11667
11668, -- Firelord	61	62 - https://web.archive.org/web/20071226220130/http://wow.allakhazam.com/db/mob.html?wmob=11668
12076); -- Lava Elemental	61	62 - https://web.archive.org/web/20080103224404/http://wow.allakhazam.com/db/mob.html?wmob=12076

-- wotlk+ (dont add any naxx npcs)
-- 60298	NPC LOOT (Green World Drop) - (Item Levels: 61-65) - (NPC Levels: 62) - VANILLA NPC ONLY
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60298, -60298, 2, 0, 1 FROM `creature_template` WHERE `entry` IN (
466, -- General Marcus Jonathan (62-62) - https://web.archive.org/web/20080106121408/http://wow.allakhazam.com/db/mob.html?wmob=466
15215, -- Mistress Natalia Mar'alith (62-62) - https://web.archive.org/web/20080105050331/http://wow.allakhazam.com/db/mob.html?wmob=15215
5312, -- Lethlas (62-62) - https://web.archive.org/web/20071228102755/http://wow.allakhazam.com/db/mob.html?wmob=5312
12498, -- Dreamstalker (62-62) - https://web.archive.org/web/20071228052346/http://wow.allakhazam.com/db/mob.html?wmob=12498
16021, -- Living Monstrosity (62-62) - https://web.archive.org/web/20080105090932/http://wow.allakhazam.com/db/mob.html?wmob=16021
16368, -- Necropolis Acolyte (62-62) - https://web.archive.org/web/20080104234432/http://wow.allakhazam.com/db/mob.html?wmob=16368
16451, -- Deathknight Vindicator (62-62) - https://www.wowhead.com/tbc/npc=16451/deathknight-vindicator
16452, -- Necro Knight Guardian (62-62) - https://www.wowhead.com/tbc/npc=16452/necro-knight-guardian
15203, -- Prince Skaldrenox (63-63) - https://www.wowhead.com/tbc/npc=15203/prince-skaldrenox
15204, -- High Marshal Whirlaxis (63-63) - https://www.wowhead.com/tbc/npc=15204/high-marshal-whirlaxis
15205, -- Baron Kazum (63-63) - https://www.wowhead.com/tbc/npc=15205/baron-kazum
16025, -- Stitched Spewer (63-63) - https://www.wowhead.com/tbc/npc=16025/stitched-spewer
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

-- ==================================================================================
-- classicmangos only fixes due to item/mincountOrRef being async (level diff and loot not being adjusted correctly - only blue refloots)
-- SELECT clt.entry,clt.item,clt.mincountOrRef,ct.name,ct.minlevel,ct.maxlevel,comments FROM creature_loot_template clt left join creature_template ct on clt.entry=ct.entry
-- where (clt.mincountorref between -60298 AND -60290) AND clt.item != -clt.mincountorref AND `item` != 1 order by ct.minlevel,ct.maxlevel,ct.entry;

-- SELECT clt.entry,clt.item,clt.mincountOrRef,ct.name,ct.minlevel,ct.maxlevel,comments FROM creature_loot_template clt left join creature_template ct on clt.entry=ct.entry
-- where (clt.mincountorref between -60199 AND -60100) AND clt.item != -clt.mincountorref AND `item` != 1 order by ct.minlevel,ct.maxlevel,ct.entry;

UPDATE `creature_loot_template` SET `item` = -mincountorref WHERE `mincountorref` = -60293 AND `entry` = 
7072; -- 60199	-60293	Cursed Justicar	59	60	NPC LOOT (Green World Drop) - (Item Levels: 58-63) - (NPC Levels: 59-60)

UPDATE `creature_loot_template` SET `item` = 60293, `mincountOrRef` = -60293 WHERE `item` = 60294 AND `entry` =
13957; -- 60294	-60291	Winterax Warrior	59	60	NPC LOOT (Green World Drop) - (Item Levels: 57-62) - (NPC Levels: 58-59)

-- SELECT clt.entry,clt.item,clt.mincountOrRef,ct.name,ct.minlevel,ct.maxlevel,comments FROM creature_loot_template clt left join creature_template ct on clt.entry=ct.entry
-- where (clt.mincountorref between -60199 AND -60100) AND clt.item != -clt.mincountorref AND `item` != 1 order by ct.minlevel,ct.maxlevel,ct.entry;

UPDATE `creature_loot_template` SET `item` = 60104, `mincountOrRef` = -60104 WHERE `item` = 60106 AND `entry` =
1753; -- 60106	-60104	Maggot Eye	11	11	NPC LOOT (Green World Drop) - (Item Levels: 9-13) - (NPC Levels: 10)

UPDATE `creature_loot_template` SET `mincountOrRef` = -item WHERE `item` = 60112 AND `entry` IN (
1177); -- 60112	-60105	Tunnel Rat Surveyor	14	14	NPC LOOT (Green World Drop) - (Item Levels: 9-14) - (NPC Levels: 10-11)

UPDATE `creature_loot_template` SET `mincountOrRef` = -item WHERE `item` = 60120 AND `entry` IN (
3655); -- 60120	-60118	Mad Magglish	18	18	NPC LOOT (Green World Drop) - (Item Levels: 16-20) - (NPC Levels: 17)

UPDATE `creature_loot_template` SET `mincountOrRef` = -item WHERE `item` = 60123 AND `entry` IN (
446, -- 60123	-60121	Redridge Basher	19	20	NPC LOOT (Green World Drop) - (Item Levels: 17-22) - (NPC Levels: 18-19)
636, -- 60123	-60122	Defias Blackguard	19	20	NPC LOOT (Green World Drop) - (Item Levels: 18-22) - (NPC Levels: 19)
1732, -- 60123	-60122	Defias Squallshaper	19	20	NPC LOOT (Green World Drop) - (Item Levels: 18-22) - (NPC Levels: 19)
5761); -- 60123	-60122	Deviate Shambler	19	20	NPC LOOT (Green World Drop) - (Item Levels: 18-22) - (NPC Levels: 19)

UPDATE `creature_loot_template` SET `mincountOrRef` = -item WHERE `item` = 60124 AND `entry` IN (
626); -- 60124	-60120	Foreman Thistlenettle	20	20	NPC LOOT (Green World Drop) - (Item Levels: 17-21) - (NPC Levels: 18)

UPDATE `creature_loot_template` SET `item` = 60123, `mincountOrRef` = -60123 WHERE `item` = 60124 AND `entry` =
5755; -- 60124	-60122	Deviate Viper	20	20	NPC LOOT (Green World Drop) - (Item Levels: 18-22) - (NPC Levels: 19)

UPDATE `creature_loot_template` SET `mincountOrRef` = -item WHERE `item` = 60125 AND `entry` IN (
5056, -- 60125	-60122	Deviate Dreadfang	20	21	NPC LOOT (Green World Drop) - (Item Levels: 18-22) - (NPC Levels: 19)
5756, -- 60125	-60122	Deviate Venomwing	20	21	NPC LOOT (Green World Drop) - (Item Levels: 18-22) - (NPC Levels: 19)
5763); -- 60125	-60124	Nightmare Ectoplasm	20	21	NPC LOOT (Green World Drop) - (Item Levels: 19-23) - (NPC Levels: 20)

UPDATE `creature_loot_template` SET `item` = 60125, `mincountOrRef` = -60125 WHERE `item` = 60126 AND `entry` =
3855; -- 60126	-60122	Shadowfang Darksoul	21	21	NPC LOOT (Green World Drop) - (Item Levels: 18-22) - (NPC Levels: 19)

UPDATE `creature_loot_template` SET `mincountOrRef` = -item WHERE `item` = 60129 AND `entry` IN (
4807); -- 60129	-60128	Blackfathom Myrmidon	22	23	NPC LOOT (Green World Drop) - (Item Levels: 21-25) - (NPC Levels: 22)

UPDATE `creature_loot_template` SET `mincountOrRef` = -item WHERE `item` = 60131 AND `entry` IN (
1706, -- 60131	-60130	Defias Prisoner	23	24	NPC LOOT (Green World Drop) - (Item Levels: 22-26) - (NPC Levels: 23)
4798, -- 60131	-60129	Fallenroot Shadowstalker	23	24	NPC LOOT (Green World Drop) - (Item Levels: 21-26) - (NPC Levels: 22-23)
4805); -- 60131	-60129	Blackfathom Sea Witch	23	24	NPC LOOT (Green World Drop) - (Item Levels: 21-26) - (NPC Levels: 22-23)

UPDATE `creature_loot_template` SET `mincountOrRef` = -item WHERE `item` = 60132 AND `entry` IN (
1947); -- 60132	-60124	Thule Ravenclaw	24	24	NPC LOOT (Green World Drop) - (Item Levels: 19-23) - (NPC Levels: 20)

UPDATE `creature_loot_template` SET `item` = -mincountOrRef WHERE `mincountOrRef` = -60132 AND `entry` =
3392; -- 60136	-60132	Prospector Khazgorm	24	24	NPC LOOT (Green World Drop) - (Item Levels: 23-27) - (NPC Levels: 24)

UPDATE `creature_loot_template` SET `mincountOrRef` = -item WHERE `item` = 60133 AND `entry` IN (
1708, -- 60133	-60131	Defias Inmate	24	25	NPC LOOT (Green World Drop) - (Item Levels: 22-27) - (NPC Levels: 23-24)
1711, -- 60133	-60131	Defias Convict	24	25	NPC LOOT (Green World Drop) - (Item Levels: 22-27) - (NPC Levels: 23-24)
4799, -- 60133	-60129	Fallenroot Hellcaller	24	25	NPC LOOT (Green World Drop) - (Item Levels: 21-26) - (NPC Levels: 22-23)
4809, -- 60133	-60129	Twilight Acolyte	24	25	NPC LOOT (Green World Drop) - (Item Levels: 21-26) - (NPC Levels: 22-23)
4812); -- 60133	-60129	Twilight Loreseeker	24	25	NPC LOOT (Green World Drop) - (Item Levels: 21-26) - (NPC Levels: 22-23)

UPDATE `creature_loot_template` SET `mincountOrRef` = -item WHERE `item` = 60134 AND `entry` IN (
518); -- 60134	-60124	Yowler	25	25	NPC LOOT (Green World Drop) - (Item Levels: 19-23) - (NPC Levels: 20)

UPDATE `creature_loot_template` SET `mincountOrRef` = -item WHERE `item` = 60135 AND `entry` IN (
1715, -- 60135	-60132	Defias Insurgent	25	26	NPC LOOT (Green World Drop) - (Item Levels: 23-27) - (NPC Levels: 24)
4436, -- 60135	-60134	Razorfen Quilguard	25	26	NPC LOOT (Green World Drop) - (Item Levels: 24-28) - (NPC Levels: 25)
4437, -- 60135	-60134	Razorfen Warden	25	26	NPC LOOT (Green World Drop) - (Item Levels: 24-28) - (NPC Levels: 25)
4530, -- 60135	-60134	Razorfen Handler	25	26	NPC LOOT (Green World Drop) - (Item Levels: 24-28) - (NPC Levels: 25)
4810, -- 60135	-60130	Twilight Reaver	25	26	NPC LOOT (Green World Drop) - (Item Levels: 22-26) - (NPC Levels: 23)
4811); -- 60135	-60130	Twilight Aquamancer	25	26	NPC LOOT (Green World Drop) - (Item Levels: 22-26) - (NPC Levels: 23)

UPDATE `creature_loot_template` SET `mincountOrRef` = -item WHERE `item` = 60136 AND `entry` IN (
1663); -- 60136	-60134	Dextren Ward	26	26	NPC LOOT (Green World Drop) - (Item Levels: 24-28) - (NPC Levels: 25)

UPDATE `creature_loot_template` SET `mincountOrRef` = -item WHERE `item` = 60137 AND `entry` IN (
1034, -- 60137	-60131	Dragonmaw Raider	26	27	NPC LOOT (Green World Drop) - (Item Levels: 22-27) - (NPC Levels: 23-24)
4517, -- 60137	-60134	Death's Head Priest	26	27	NPC LOOT (Green World Drop) - (Item Levels: 24-28) - (NPC Levels: 25)
4813, -- 60137	-60130	Twilight Shadowmage	26	27	NPC LOOT (Green World Drop) - (Item Levels: 22-26) - (NPC Levels: 23)
4814); -- 60137	-60130	Twilight Elementalist	26	27	NPC LOOT (Green World Drop) - (Item Levels: 22-26) - (NPC Levels: 23)

UPDATE `creature_loot_template` SET `mincountOrRef` = -item WHERE `item` = 60139 AND `entry` IN (
1035, -- 60139	-60131	Dragonmaw Swamprunner	27	28	NPC LOOT (Green World Drop) - (Item Levels: 22-27) - (NPC Levels: 23-24)
4442, -- 60139	-60135	Razorfen Defender	27	28	NPC LOOT (Green World Drop) - (Item Levels: 24-29) - (NPC Levels: 25-26)
4516, -- 60139	-60135	Death's Head Adept	27	28	NPC LOOT (Green World Drop) - (Item Levels: 24-29) - (NPC Levels: 25-26)
4523, -- 60139	-60135	Razorfen Groundshaker	27	28	NPC LOOT (Green World Drop) - (Item Levels: 24-29) - (NPC Levels: 25-26)
6218); -- 60139	-60136	Irradiated Slime	27	28	NPC LOOT (Green World Drop) - (Item Levels: 25-29) - (NPC Levels: 26)

UPDATE `creature_loot_template` SET `item` = 60139, `mincountOrRef` = -60139 WHERE `item` = 60138 AND `entry` =
1057; -- 60138	-60131	Dragonmaw Bonewarder	27	28	NPC LOOT (Green World Drop) - (Item Levels: 22-27) - (NPC Levels: 23-24)

UPDATE `creature_loot_template` SET `mincountOrRef` = -item WHERE `item` = 60140 AND `entry` IN (
6168); -- 60140	-60136	Roogug	28	28	NPC LOOT (Green World Drop) - (Item Levels: 25-29) - (NPC Levels: 26)

UPDATE `creature_loot_template` SET `mincountOrRef` = -item WHERE `item` = 60141 AND `entry` IN (
1036, -- 60141	-60133	Dragonmaw Centurion	28	29	NPC LOOT (Green World Drop) - (Item Levels: 23-28) - (NPC Levels: 24-25)
1038, -- 60141	-60131	Dragonmaw Shadowwarder	28	29	NPC LOOT (Green World Drop) - (Item Levels: 22-27) - (NPC Levels: 23-24)
4515, -- 60141	-60135	Death's Head Acolyte	28	29	NPC LOOT (Green World Drop) - (Item Levels: 24-29) - (NPC Levels: 25-26)
4519, -- 60141	-60135	Death's Head Seer	28	29	NPC LOOT (Green World Drop) - (Item Levels: 24-29) - (NPC Levels: 25-26)
4522, -- 60141	-60135	Razorfen Dustweaver	28	29	NPC LOOT (Green World Drop) - (Item Levels: 24-29) - (NPC Levels: 25-26)
4531, -- 60141	-60135	Razorfen Beast Trainer	28	29	NPC LOOT (Green World Drop) - (Item Levels: 24-29) - (NPC Levels: 25-26)
6035, -- 60141	-60135	Razorfen Stalker	28	29	NPC LOOT (Green World Drop) - (Item Levels: 24-29) - (NPC Levels: 25-26)
6219, -- 60141	-60137	Corrosive Lurker	28	29	NPC LOOT (Green World Drop) - (Item Levels: 25-30) - (NPC Levels: 26-27)
6223, -- 60141	-60137	Leprous Defender	28	29	NPC LOOT (Green World Drop) - (Item Levels: 25-30) - (NPC Levels: 26-27)
7603); -- 60141	-60137	Leprous Assistant	28	29	NPC LOOT (Green World Drop) - (Item Levels: 25-30) - (NPC Levels: 26-27)

UPDATE `creature_loot_template` SET `mincountOrRef` = -item WHERE `item` = 60142 AND `entry` IN (
1716, -- 60142	-60134	Bazil Thredd	29	29	NPC LOOT (Green World Drop) - (Item Levels: 24-28) - (NPC Levels: 25)
4440); -- 60142	-60135	Razorfen Totemic	29	29	NPC LOOT (Green World Drop) - (Item Levels: 24-29) - (NPC Levels: 25-26)

UPDATE `creature_loot_template` SET `mincountOrRef` = -item WHERE `item` = 60143 AND `entry` IN (
4438, -- 60143	-60135	Razorfen Spearhide	29	30	NPC LOOT (Green World Drop) - (Item Levels: 24-29) - (NPC Levels: 25-26)
4518, -- 60143	-60135	Death's Head Sage	29	30	NPC LOOT (Green World Drop) - (Item Levels: 24-29) - (NPC Levels: 25-26)
6222, -- 60143	-60137	Leprous Technician	29	30	NPC LOOT (Green World Drop) - (Item Levels: 25-30) - (NPC Levels: 26-27)
6224); -- 60143	-60137	Leprous Machinesmith	29	30	NPC LOOT (Green World Drop) - (Item Levels: 25-30) - (NPC Levels: 26-27)

UPDATE `creature_loot_template` SET `item` = -mincountOrRef WHERE `mincountOrRef` = -60144 AND `entry` IN (
300); -- 60150	-60144	Zzarc' Vul	30	30	NPC LOOT (Green World Drop) - (Item Levels: 29-33) - (NPC Levels: 30)

UPDATE `creature_loot_template` SET `mincountOrRef` = -item WHERE `item` = 60144 AND `entry` IN (
1037); -- 60144	-60133	Dragonmaw Battlemaster	30	30	NPC LOOT (Green World Drop) - (Item Levels: 23-28) - (NPC Levels: 24-25)

UPDATE `creature_loot_template` SET `mincountOrRef` = -item WHERE `item` = 60145 AND `entry` IN (
4525, -- 60145	-60136	Razorfen Earthbreaker	30	31	NPC LOOT (Green World Drop) - (Item Levels: 25-29) - (NPC Levels: 26)
4532, -- 60145	-60136	Razorfen Beastmaster	30	31	NPC LOOT (Green World Drop) - (Item Levels: 25-29) - (NPC Levels: 26)
4538, -- 60145	-60136	Kraul Bat	30	31	NPC LOOT (Green World Drop) - (Item Levels: 25-29) - (NPC Levels: 26)
4623); -- 60145	-60136	Quilguard Champion	30	31	NPC LOOT (Green World Drop) - (Item Levels: 25-29) - (NPC Levels: 26)

UPDATE `creature_loot_template` SET `item` = 60145, `mincountOrRef` = -60145 WHERE `item` = 60144 AND `entry` =
6230; -- 60144	-60138	Peacekeeper Security Suit	30	31	NPC LOOT (Green World Drop) - (Item Levels: 26-30) - (NPC Levels: 27)

UPDATE `creature_loot_template` SET `mincountOrRef` = -item WHERE `item` = 60146 AND `entry` IN (
314, -- 60146	-60144	Eliza	31	31	NPC LOOT (Green World Drop) - (Item Levels: 29-33) - (NPC Levels: 30)
4427); -- 60146	-60136	Ward Guardian	31	31	NPC LOOT (Green World Drop) - (Item Levels: 25-29) - (NPC Levels: 26)

UPDATE `creature_loot_template` SET `mincountOrRef` = -item WHERE `item` = 60148 AND `entry` IN (
2091, -- 60148	-60136	Chieftain Nek'rosh	32	32	NPC LOOT (Green World Drop) - (Item Levels: 25-29) - (NPC Levels: 26)
4539); -- 60148	-60136	Greater Kraul Bat	32	32	NPC LOOT (Green World Drop) - (Item Levels: 25-29) - (NPC Levels: 26)

UPDATE `creature_loot_template` SET `mincountOrRef` = -item WHERE `item` = 60149 AND `entry` IN (
6212, -- 60149	-60138	Dark Iron Agent	32	33	NPC LOOT (Green World Drop) - (Item Levels: 26-30) - (NPC Levels: 27)
6232); -- 60149	-60138	Arcane Nullifier X-21	32	33	NPC LOOT (Green World Drop) - (Item Levels: 26-30) - (NPC Levels: 27)

UPDATE `creature_loot_template` SET `mincountOrRef` = -item WHERE `item` = 60152 AND `entry` IN (
1364); -- 60152	-60146	Balgaras the Foul	34	34	NPC LOOT (Green World Drop) - (Item Levels: 30-34) - (NPC Levels: 31)

UPDATE `creature_loot_template` SET `mincountOrRef` = -item WHERE `item` = 60153 AND `entry` IN (
4291); -- 60153	-60152	Scarlet Diviner	34	35	NPC LOOT (Green World Drop) - (Item Levels: 33-37) - (NPC Levels: 34)

UPDATE `creature_loot_template` SET `mincountOrRef` = -item WHERE `item` = 60154 AND `entry` IN (
522); -- 60154	-60144	Mor'Ladim	35	35	NPC LOOT (Green World Drop) - (Item Levels: 29-33) - (NPC Levels: 30)

UPDATE `creature_loot_template` SET `mincountOrRef` = -item WHERE `item` = 60155 AND `entry` IN (
4286, -- 60155	-60154	Scarlet Soldier	35	36	NPC LOOT (Green World Drop) - (Item Levels: 34-38) - (NPC Levels: 35)
4297); -- 60155	-60154	Scarlet Conjuror	35	36	NPC LOOT (Green World Drop) - (Item Levels: 34-38) - (NPC Levels: 35)

UPDATE `creature_loot_template` SET `item` = 60156, `mincountOrRef` = -60156 WHERE `item` = 60158 AND `entry` =
4132; -- 60158	-60156	Silithid Ravager	36	36	NPC LOOT (Green World Drop) - (Item Levels: 35-39) - (NPC Levels: 36)

UPDATE `creature_loot_template` SET `mincountOrRef` = -item WHERE `item` = 60156 AND `entry` IN (
12865); -- 60156	-60154	Ambassador Malcin	36	36	NPC LOOT (Green World Drop) - (Item Levels: 34-38) - (NPC Levels: 35)

UPDATE `creature_loot_template` SET `mincountOrRef` = -item WHERE `item` = 60157 AND `entry` IN (
4289, -- 60157	-60155	Scarlet Evoker	36	37	NPC LOOT (Green World Drop) - (Item Levels: 34-39) - (NPC Levels: 35-36)
4845); -- 60157	-60155	Shadowforge Ruffian	36	37	NPC LOOT (Green World Drop) - (Item Levels: 34-39) - (NPC Levels: 35-36)

UPDATE `creature_loot_template` SET `mincountOrRef` = -item WHERE `item` = 60159 AND `entry` IN (
4295, -- 60159	-60156	Scarlet Myrmidon	37	38	NPC LOOT (Green World Drop) - (Item Levels: 35-39) - (NPC Levels: 36)
4363, -- 60159	-60157	Mirefin Oracle	37	38	NPC LOOT (Green World Drop) - (Item Levels: 35-40) - (NPC Levels: 36-37)
4852); -- 60159	-60158	Stonevault Oracle	37	38	NPC LOOT (Green World Drop) - (Item Levels: 36-40) - (NPC Levels: 37)

UPDATE `creature_loot_template` SET `mincountOrRef` = -item WHERE `item` = 60160 AND `entry` IN (
2932, -- 60160	-60158	Magregan Deepshadow	38	38	NPC LOOT (Green World Drop) - (Item Levels: 36-40) - (NPC Levels: 37)
14230); -- 60160	-60158	Burgle Eye	38	38	NPC LOOT (Green World Drop) - (Item Levels: 36-40) - (NPC Levels: 37)

UPDATE `creature_loot_template` SET `mincountOrRef` = -item WHERE `item` = 60161 AND `entry` IN (
2584); -- 60161	-60159	Stromgarde Defender	38	39	NPC LOOT (Green World Drop) - (Item Levels: 36-41) - (NPC Levels: 37-38)

UPDATE `creature_loot_template` SET `mincountOrRef` = -item WHERE `item` = 60163 AND `entry` IN (
2585, -- 60163	-60161	Stromgarde Vindicator	39	40	NPC LOOT (Green World Drop) - (Item Levels: 37-42) - (NPC Levels: 38-39)
2892, -- 60163	-60159	Stonevault Seer	39	40	NPC LOOT (Green World Drop) - (Item Levels: 36-41) - (NPC Levels: 37-38)
4302, -- 60163	-60162	Scarlet Champion	39	40	NPC LOOT (Green World Drop) - (Item Levels: 38-42) - (NPC Levels: 39)
4303, -- 60163	-60162	Scarlet Abbot	39	40	NPC LOOT (Green World Drop) - (Item Levels: 38-42) - (NPC Levels: 39)
4401, -- 60163	-60155	Muckshell Clacker	39	40	NPC LOOT (Green World Drop) - (Item Levels: 34-39) - (NPC Levels: 35-36)
4847, -- 60163	-60161	Shadowforge Relic Hunter	39	40	NPC LOOT (Green World Drop) - (Item Levels: 37-42) - (NPC Levels: 38-39)
6733); -- 60163	-60159	Stonevault Basher	39	40	NPC LOOT (Green World Drop) - (Item Levels: 36-41) - (NPC Levels: 37-38)

UPDATE `creature_loot_template` SET `mincountOrRef` = -item WHERE `item` = 60165 AND `entry` IN (
7030); -- 60165	-60161	Shadowforge Geologist	40	41	NPC LOOT (Green World Drop) - (Item Levels: 37-42) - (NPC Levels: 38-39)

UPDATE `creature_loot_template` SET `mincountOrRef` = -item WHERE `item` = 60167 AND `entry` IN (
4403); -- 60167	-60155	Muckshell Pincer	41	42	NPC LOOT (Green World Drop) - (Item Levels: 34-39) - (NPC Levels: 35-36)

UPDATE `creature_loot_template` SET `mincountOrRef` = -item WHERE `item` = 60169 AND `entry` IN (
1563, -- 60169	-60165	Bloodsail Swashbuckler	41	43	NPC LOOT (Green World Drop) - (Item Levels: 39-44) - (NPC Levels: 40-41)
1564, -- 60169	-60165	Bloodsail Warlock	41	43	NPC LOOT (Green World Drop) - (Item Levels: 39-44) - (NPC Levels: 40-41)
4404, -- 60169	-60155	Muckshell Scrabbler	42	43	NPC LOOT (Green World Drop) - (Item Levels: 34-39) - (NPC Levels: 35-36)
12216); -- 60169	-60168	Poison Sprite	42	43	NPC LOOT (Green World Drop) - (Item Levels: 41-45) - (NPC Levels: 42)

UPDATE `creature_loot_template` SET `mincountOrRef` = -item WHERE `item` = 60168 AND `entry` IN (
7023); -- 60168	-60164	Obsidian Sentinel	42	42	NPC LOOT (Green World Drop) - (Item Levels: 39-43) - (NPC Levels: 40)

UPDATE `creature_loot_template` SET `item` = 60170, `mincountOrRef` = -60170 WHERE `item` = 60169 AND `entry` =
2549; -- 60169	-60168	Garr Salthoof	43	43	NPC LOOT (Green World Drop) - (Item Levels: 41-45) - (NPC Levels: 42)

UPDATE `creature_loot_template` SET `mincountOrRef` = -item WHERE `item` = 60171 AND `entry` IN (
4505, -- 60171	-60167	Bloodsail Deckhand	43	44	NPC LOOT (Green World Drop) - (Item Levels: 40-45) - (NPC Levels: 41-42)
4506, -- 60171	-60165	Bloodsail Swabby	43	44	NPC LOOT (Green World Drop) - (Item Levels: 39-44) - (NPC Levels: 40-41)
4848, -- 60171	-60161	Shadowforge Darkcaster	43	44	NPC LOOT (Green World Drop) - (Item Levels: 37-42) - (NPC Levels: 38-39)
4849, -- 60171	-60161	Shadowforge Archaeologist	43	44	NPC LOOT (Green World Drop) - (Item Levels: 37-42) - (NPC Levels: 38-39)
7091, -- 60171	-60161	Shadowforge Ambusher	43	44	NPC LOOT (Green World Drop) - (Item Levels: 37-42) - (NPC Levels: 38-39)
7290); -- 60171	-60161	Shadowforge Sharpshooter	43	44	NPC LOOT (Green World Drop) - (Item Levels: 37-42) - (NPC Levels: 38-39)

UPDATE `creature_loot_template` SET `mincountOrRef` = -item WHERE `item` = 60172 AND `entry` IN (
14236); -- 60172	-60158	Lord Angler	44	44	NPC LOOT (Green World Drop) - (Item Levels: 36-40) - (NPC Levels: 37)

UPDATE `creature_loot_template` SET `mincountOrRef` = -item WHERE `item` = 60173 AND `entry` IN (
1565, -- 60173	-60167	Bloodsail Sea Dog	44	45	NPC LOOT (Green World Drop) - (Item Levels: 40-45) - (NPC Levels: 41-42)
1653, -- 60173	-60167	Bloodsail Elder Magus	44	45	NPC LOOT (Green World Drop) - (Item Levels: 40-45) - (NPC Levels: 41-42)
11791); -- 60173	-60170	Putridus Trickster	44	45	NPC LOOT (Green World Drop) - (Item Levels: 42-46) - (NPC Levels: 43)

UPDATE `creature_loot_template` SET `mincountOrRef` = -item WHERE `item` = 60175 AND `entry` IN (
7246, -- 60175	-60171	Sandfury Shadowhunter	45	46	NPC LOOT (Green World Drop) - (Item Levels: 42-47) - (NPC Levels: 43-44)
7247, -- 60175	-60173	Sandfury Soul Eater	45	46	NPC LOOT (Green World Drop) - (Item Levels: 43-48) - (NPC Levels: 44-45)
11793, -- 60175	-60174	Celebrian Dryad	45	46	NPC LOOT (Green World Drop) - (Item Levels: 44-48) - (NPC Levels: 45)
12222, -- 60175	-60171	Creeping Sludge	45	46	NPC LOOT (Green World Drop) - (Item Levels: 42-47) - (NPC Levels: 43-44)
12223); -- 60175	-60173	Cavern Lurker	45	46	NPC LOOT (Green World Drop) - (Item Levels: 43-48) - (NPC Levels: 44-45)

UPDATE `creature_loot_template` SET `item` = 60175, `mincountOrRef` = -60175 WHERE `item` = 60176 AND `entry` =
7796; -- 60176	-60174	Nekrum Gutchewer	45	46	NPC LOOT (Green World Drop) - (Item Levels: 44-48) - (NPC Levels: 45)

UPDATE `creature_loot_template` SET `mincountOrRef` = -item WHERE `item` = 60177 AND `entry` IN (
11794, -- 60177	-60174	Sister of Celebrian	45	47	NPC LOOT (Green World Drop) - (Item Levels: 44-48) - (NPC Levels: 45)
12221, -- 60177	-60171	Noxious Slime	46	47	NPC LOOT (Green World Drop) - (Item Levels: 42-47) - (NPC Levels: 43-44)
12224); -- 60177	-60174	Cavern Shambler	46	47	NPC LOOT (Green World Drop) - (Item Levels: 44-48) - (NPC Levels: 45)

UPDATE `creature_loot_template` SET `item` = 60176, `mincountOrRef` = -60176 WHERE `item` = 60175 AND `entry` =
2550; -- 60175	-60168	Captain Stillwater	46	46	NPC LOOT (Green World Drop) - (Item Levels: 41-45) - (NPC Levels: 42)

UPDATE `creature_loot_template` SET `mincountOrRef` = -item WHERE `item` = 60176 AND `entry` IN (
7797); -- 60176	-60174	Ruuzlu	46	46	NPC LOOT (Green World Drop) - (Item Levels: 44-48) - (NPC Levels: 45)

UPDATE `creature_loot_template` SET `mincountOrRef` = -item WHERE `item` = 60178 AND `entry` IN (
818, -- 60178	-60174	Mai'Zoth	47	47	NPC LOOT (Green World Drop) - (Item Levels: 44-48) - (NPC Levels: 45)
1492); -- 60178	-60168	Gorlash	47	47	NPC LOOT (Green World Drop) - (Item Levels: 41-45) - (NPC Levels: 42)

UPDATE `creature_loot_template` SET `item` = 60178, `mincountOrRef` = -60178 WHERE `item` = 60177 AND `entry` =
2548; -- 60177	-60168	Captain Keelhaul	47	47	NPC LOOT (Green World Drop) - (Item Levels: 41-45) - (NPC Levels: 42)

UPDATE `creature_loot_template` SET `mincountOrRef` = -item WHERE `item` = 60179 AND `entry` IN (
5860); -- 60179	-60171	Twilight Dark Shaman	47	48	NPC LOOT (Green World Drop) - (Item Levels: 42-47) - (NPC Levels: 43-44)

UPDATE `creature_loot_template` SET `mincountOrRef` = -item WHERE `item` = 60180 AND `entry` IN (
2546); -- 60180	-60168	Fleet Master Firallon	48	48	NPC LOOT (Green World Drop) - (Item Levels: 41-45) - (NPC Levels: 42)

UPDATE `creature_loot_template` SET `mincountOrRef` = -item WHERE `item` = 60181 AND `entry` IN (
12206); -- 60181	-60178	Primordial Behemoth	48	49	NPC LOOT (Green World Drop) - (Item Levels: 46-51) - (NPC Levels: 47)

UPDATE `creature_loot_template` SET `mincountOrRef` = -item WHERE `item` = 60183 AND `entry` IN (
5862); -- 60183	-60173	Twilight Geomancer	49	50	NPC LOOT (Green World Drop) - (Item Levels: 43-48) - (NPC Levels: 44-45)

UPDATE `creature_loot_template` SET `mincountOrRef` = -item WHERE `item` = 60185 AND `entry` IN (
8419); -- 60185	-60175	Twilight Idolater	49	51	NPC LOOT (Green World Drop) - (Item Levels: 44-49) - (NPC Levels: 45-46)

UPDATE `creature_loot_template` SET `mincountOrRef` = -item WHERE `item` = 60186 AND `entry` IN (
1559); -- 60186	-60168	King Mukla	51	51	NPC LOOT (Green World Drop) - (Item Levels: 41-45) - (NPC Levels: 42)

UPDATE `creature_loot_template` SET `mincountOrRef` = -item WHERE `item` = 60187 AND `entry` IN (
8892); -- 60187	-60185	Anvilrage Footman	51	52	NPC LOOT (Green World Drop) - (Item Levels: 49-54) - (NPC Levels: 50-51)

UPDATE `creature_loot_template` SET `mincountOrRef` = -item WHERE `item` = 60188 AND `entry` IN (
1494, -- 60188	-60168	Negolash	52	52	NPC LOOT (Green World Drop) - (Item Levels: 41-45) - (NPC Levels: 42)
8391, -- 60188	-60176	Lathoric the Black	52	52	NPC LOOT (Green World Drop) - (Item Levels: 45-50) - (NPC Levels: 46)
8400); -- 60188	-60176	Obsidion	52	52	NPC LOOT (Green World Drop) - (Item Levels: 45-50) - (NPC Levels: 46)

UPDATE `creature_loot_template` SET `mincountOrRef` = -item WHERE `item` = 60189 AND `entry` IN (
8893, -- 60189	-60184	Anvilrage Soldier	52	53	NPC LOOT (Green World Drop) - (Item Levels: 49-53) - (NPC Levels: 50)
8894); -- 60189	-60185	Anvilrage Medic	52	53	NPC LOOT (Green World Drop) - (Item Levels: 49-54) - (NPC Levels: 50-51)

UPDATE `creature_loot_template` SET `mincountOrRef` = -item WHERE `item` = 60191 AND `entry` IN (
8896, -- 60191	-60185	Shadowforge Peasant	52	54	NPC LOOT (Green World Drop) - (Item Levels: 49-54) - (NPC Levels: 50-51)
8897, -- 60191	-60186	Doomforge Craftsman	52	54	NPC LOOT (Green World Drop) - (Item Levels: 50-54) - (NPC Levels: 51)
8895, -- 60191	-60186	Anvilrage Officer	53	54	NPC LOOT (Green World Drop) - (Item Levels: 50-54) - (NPC Levels: 51)
9445); -- 60191	-60188	Dark Guard	53	54	NPC LOOT (Green World Drop) - (Item Levels: 51-55) - (NPC Levels: 52)

UPDATE `creature_loot_template` SET `mincountOrRef` = -item WHERE `item` = 60193 AND `entry` IN (
8898, -- 60193	-60191	Anvilrage Marshal	54	55	NPC LOOT (Green World Drop) - (Item Levels: 52-57) - (NPC Levels: 53-54)
8899, -- 60193	-60191	Doomforge Dragoon	54	55	NPC LOOT (Green World Drop) - (Item Levels: 52-57) - (NPC Levels: 53-54)
8900); -- 60193	-60192	Doomforge Arcanasmith	54	55	NPC LOOT (Green World Drop) - (Item Levels: 53-57) - (NPC Levels: 54)

UPDATE `creature_loot_template` SET `mincountOrRef` = -item WHERE `item` = 60195 AND `entry` IN (
8902, -- 60195	-60187	Shadowforge Citizen	54	56	NPC LOOT (Green World Drop) - (Item Levels: 50-55) - (NPC Levels: 51-52)
8903, -- 60195	-60194	Anvilrage Captain	55	56	NPC LOOT (Green World Drop) - (Item Levels: 54-58) - (NPC Levels: 55)
8904, -- 60195	-60193	Shadowforge Senator	55	56	NPC LOOT (Green World Drop) - (Item Levels: 53-58) - (NPC Levels: 54-55)
8907, -- 60195	-60192	Wrath Hammer Construct	55	56	NPC LOOT (Green World Drop) - (Item Levels: 53-57) - (NPC Levels: 54)
8908); -- 60195	-60194	Molten War Golem	55	56	NPC LOOT (Green World Drop) - (Item Levels: 54-58) - (NPC Levels: 55)

UPDATE `creature_loot_template` SET `mincountOrRef` = -item WHERE `item` = 60194 AND `entry` IN (
9437, -- 60194	-60190	Dark Keeper Vorfalk	55	55	NPC LOOT (Green World Drop) - (Item Levels: 52-56) - (NPC Levels: 53)
9438, -- 60194	-60190	Dark Keeper Bethek	55	55	NPC LOOT (Green World Drop) - (Item Levels: 52-56) - (NPC Levels: 53)
9439, -- 60194	-60190	Dark Keeper Uggel	55	55	NPC LOOT (Green World Drop) - (Item Levels: 52-56) - (NPC Levels: 53)
9441, -- 60194	-60190	Dark Keeper Zimrel	55	55	NPC LOOT (Green World Drop) - (Item Levels: 52-56) - (NPC Levels: 53)
9442, -- 60194	-60190	Dark Keeper Ofgut	55	55	NPC LOOT (Green World Drop) - (Item Levels: 52-56) - (NPC Levels: 53)
9443, -- 60194	-60190	Dark Keeper Pelver	55	55	NPC LOOT (Green World Drop) - (Item Levels: 52-56) - (NPC Levels: 53)
9476); -- 60194	-60192	Watchman Doomgrip	55	55	NPC LOOT (Green World Drop) - (Item Levels: 53-57) - (NPC Levels: 54)

UPDATE `creature_loot_template` SET `item` = 60195, `mincountOrRef` = -60195 WHERE `item` = 60190 AND `entry` =
13149; -- 60190	-60195	Syndicate Brigand	55	56	NPC LOOT (Green World Drop) - (Item Levels: 54-59) - (NPC Levels: 55-56)

UPDATE `creature_loot_template` SET `mincountOrRef` = -item WHERE `item` = 60197 AND `entry` IN (
13776); -- 60197	-60196	Corporal Teeka Bloodsnarl	56	57	NPC LOOT (Green World Drop) - (Item Levels: 55-59) - (NPC Levels: 56)

-- ==================================================================================

-- Correct wrong Levels for classicmangos diffed with tbcmangos/ccsdb (there are alot more cases, but not subject of this update)
UPDATE `creature_template` SET `MinLevel` = 10, `MaxLevel` = 10 WHERE `entry` = 1753; -- Maggot Eye	11	11
UPDATE `creature_template` SET `MinLevel` = 19, `MaxLevel` = 20 WHERE `entry` = 5755; -- Deviate Viper	20	20
UPDATE `creature_template` SET `MinLevel` = 20, `MaxLevel` = 21 WHERE `entry` = 3855; -- Shadowfang Darksoul	21	21
UPDATE `creature_template` SET `MinLevel` = 6, `MaxLevel` = 7 WHERE `entry` = 2956; -- Adult Plainstrider (6-8)
UPDATE `creature_template` SET `MinLevel` = 8, `MaxLevel` = 10 WHERE `entry` = 6911; -- Minion of Sethir (8-9)
UPDATE `creature_template` SET `MinLevel` = 12, `MaxLevel` = 13 WHERE `entry` = 5435; -- Sand Shark (14-14)
UPDATE `creature_template` SET `MinLevel` = 12, `MaxLevel` = 14 WHERE `entry` = 2232; -- Tide Crawler (13-14)
UPDATE `creature_template` SET `MinLevel` = 13, `MaxLevel` = 14 WHERE `entry` = 1184; -- Cliff Lurker (18-18)
UPDATE `creature_template` SET `MinLevel` = 14, `MaxLevel` = 16 WHERE `entry` = 2174; -- Coastal Frenzy (14-15)
UPDATE `creature_template` SET `MinLevel` = 19, `MaxLevel` = 20 WHERE `entry` = 125; -- Riverpaw Overseer (19-19)
UPDATE `creature_template` SET `MinLevel` = 19, `MaxLevel` = 21 WHERE `entry` = 2478; -- Haren Swifthoof (20-21)
UPDATE `creature_template` SET `MinLevel` = 19, `MaxLevel` = 21 WHERE `entry` = 7170; -- Thragomm (20-21)
UPDATE `creature_template` SET `MinLevel` = 20, `MaxLevel` = 21 WHERE `entry` = 3722; -- Mystlash Flayer (23-23)
UPDATE `creature_template` SET `MinLevel` = 30, `MaxLevel` = 30 WHERE `entry` = 300; -- Zzarc' Vul (33-33) - already nerfed in classic! https://www.wowhead.com/tbc/npc=300/zzarc-vul#comments:id=2892657
UPDATE `creature_template` SET `MinLevel` = 31, `MaxLevel` = 32 WHERE `entry` = 5185; -- Hammerhead Shark (31-31)
UPDATE `creature_template` SET `MinLevel` = 50, `MaxLevel` = 52 WHERE `entry` = 6369; -- Coralshell Tortoise (50-50)
UPDATE `creature_template` SET `MinLevel` = 50, `MaxLevel` = 52 WHERE `entry` = 9621; -- Gargantuan Ooze (50-51)
UPDATE `creature_template` SET `MinLevel` = 51, `MaxLevel` = 52 WHERE `entry` = 12124; -- Great Shark (52-52)
UPDATE `creature_template` SET `MinLevel` = 54, `MaxLevel` = 55 WHERE `entry` = 13087; -- Coldmine Invader (54-54)
UPDATE `creature_template` SET `MinLevel` = 54, `MaxLevel` = 55 WHERE `entry` = 13099; -- Irondeep Explorer (54-54)
UPDATE `creature_template` SET `MinLevel` = 58, `MaxLevel` = 59 WHERE `entry` = 13541; -- Veteran Irondeep Explorer (54-54)
UPDATE `creature_template` SET `MinLevel` = 56, `MaxLevel` = 57 WHERE `entry` = 13546; -- Seasoned Coldmine Explorer (54-54)
UPDATE `creature_template` SET `MinLevel` = 58, `MaxLevel` = 59 WHERE `entry` = 13547; -- Veteran Coldmine Explorer (54-54)
UPDATE `creature_template` SET `MinLevel` = 56, `MaxLevel` = 57 WHERE `entry` = 13549; -- Seasoned Coldmine Invader (54-54)
UPDATE `creature_template` SET `MinLevel` = 58, `MaxLevel` = 59 WHERE `entry` = 13544; -- Veteran Irondeep Raider (54-55)
UPDATE `creature_template` SET `MinLevel` = 54, `MaxLevel` = 55 WHERE `entry` = 13089; -- Coldmine Guard (55-55)
UPDATE `creature_template` SET `MinLevel` = 54, `MaxLevel` = 55 WHERE `entry` = 13097; -- Coldmine Surveyor (55-55)
UPDATE `creature_template` SET `MinLevel` = 58, `MaxLevel` = 59 WHERE `entry` = 13535; -- Veteran Coldmine Guard (55-55)
UPDATE `creature_template` SET `MinLevel` = 58, `MaxLevel` = 59 WHERE `entry` = 13538; -- Veteran Coldmine Surveyor (55-55)
UPDATE `creature_template` SET `MinLevel` = 58, `MaxLevel` = 59 WHERE `entry` = 13550; -- Veteran Coldmine Invader (55-55)
UPDATE `creature_template` SET `MinLevel` = 52, `MaxLevel` = 58 WHERE `entry` = 11196; -- Shatterspear Drummer (56-56)
UPDATE `creature_template` SET `MinLevel` = 54, `MaxLevel` = 55 WHERE `entry` = 13081; -- Irondeep Raider (56-56)
UPDATE `creature_template` SET `MinLevel` = 58, `MaxLevel` = 58 WHERE `entry` = 13086; -- Aggi Rumblestomp (56-56)
UPDATE `creature_template` SET `MinLevel` = 54, `MaxLevel` = 55 WHERE `entry` = 13096; -- Coldmine Explorer (56-56)
UPDATE `creature_template` SET `MinLevel` = 58, `MaxLevel` = 58 WHERE `entry` = 13524; -- Stormpike Commando (56-56)
UPDATE `creature_template` SET `MinLevel` = 56, `MaxLevel` = 57 WHERE `entry` = 13540; -- Seasoned Irondeep Explorer (56-56)
UPDATE `creature_template` SET `MinLevel` = 56, `MaxLevel` = 57 WHERE `entry` = 13534; -- Seasoned Coldmine Guard (57-57)
UPDATE `creature_template` SET `MinLevel` = 52, `MaxLevel` = 53 WHERE `entry` = 13317; -- Coldmine Miner (58-58)
UPDATE `creature_template` SET `MinLevel` = 56, `MaxLevel` = 57 WHERE `entry` = 13543; -- Seasoned Irondeep Raider (58-58)
UPDATE `creature_template` SET `MinLevel` = 60, `MaxLevel` = 60 WHERE `entry` = 603; -- Grimtooth (59-59)
UPDATE `creature_template` SET `MinLevel` = 61, `MaxLevel` = 61 WHERE `entry` = 13840; -- Warmaster Laggrond (59-59)
UPDATE `creature_template` SET `MinLevel` = 62, `MaxLevel` = 62 WHERE `entry` = 466; -- General Marcus Jonathan (60-60)
UPDATE `creature_template` SET `MinLevel` = 59, `MaxLevel` = 60 WHERE `entry` = 12156; -- Winterax Axe Thrower (60-60)
UPDATE `creature_template` SET `MinLevel` = 62, `MaxLevel` = 62 WHERE `entry` = 15215; -- Mistress Natalia Mar''alith (61-62)
UPDATE `creature_template` SET `MinLevel` = 61, `MaxLevel` = 61 WHERE `entry` = 13256; -- Lokholar the Ice Lord (63-63)
UPDATE `creature_template` SET `MinLevel` = 61, `MaxLevel` = 61 WHERE `entry` = 13419; -- Ivus the Forest Lord (63-63)

-- Correct wrong Levels for tbc+
-- UPDATE `creature_template` SET `MinLevel` = 41, `MaxLevel` = 42 WHERE `entry` = 4400; -- Mudrock Snapjaw (36-37)
-- UPDATE `creature_template` SET `MinLevel` = 52, `MaxLevel` = 58 WHERE `entry` = 11196; -- Shatterspear Drummer (56-56)
-- av mobs need special attention... tbc+ (HeroicEntry)
-- UPDATE `creature_template` SET `MinLevel` = 54, `MaxLevel` = 55, `HeroicEntry` = 22731 WHERE `entry` = 13087; -- Coldmine Invader (64-65)
-- UPDATE `creature_template` SET `MinLevel` = 64, `MaxLevel` = 65 WHERE `entry` = 22731;
-- UPDATE `creature_template` SET `MinLevel` = 54, `MaxLevel` = 55, `HeroicEntry` = 22741 WHERE `entry` = 13099; -- Irondeep Explorer (54-54)
-- UPDATE `creature_template` SET `MinLevel` = 64, `MaxLevel` = 65 WHERE `entry` = 22741;
-- UPDATE `creature_template` SET `MinLevel` = 58, `MaxLevel` = 59, `HeroicEntry` = 22774 WHERE `entry` = 13541; -- Veteran Irondeep Explorer (58-59)
-- UPDATE `creature_template` SET `MinLevel` = 68, `MaxLevel` = 69 WHERE `entry` = 22774;
-- UPDATE `creature_template` SET `MinLevel` = 56, `MaxLevel` = 57, `HeroicEntry` = 22753 WHERE `entry` = 13549; -- Seasoned Coldmine Invader (54-54)
-- UPDATE `creature_template` SET `MinLevel` = 66, `MaxLevel` = 67 WHERE `entry` = 22753;
-- UPDATE `creature_template` SET `MinLevel` = 58, `MaxLevel` = 59, `HeroicEntry` = 22776 WHERE `entry` = 13544; -- Veteran Irondeep Raider (54-55)
-- UPDATE `creature_template` SET `MinLevel` = 68, `MaxLevel` = 69 WHERE `entry` = 22776;
-- UPDATE `creature_template` SET `MinLevel` = 54, `MaxLevel` = 55, `HeroicEntry` = 22730 WHERE `entry` = 13089; -- Coldmine Guard (55-55)
-- UPDATE `creature_template` SET `MinLevel` = 64, `MaxLevel` = 65 WHERE `entry` = 22730;
-- UPDATE `creature_template` SET `MinLevel` = 54, `MaxLevel` = 55, `HeroicEntry` = 22734 WHERE `entry` = 13097; -- Coldmine Surveyor (55-55)
-- UPDATE `creature_template` SET `MinLevel` = 64, `MaxLevel` = 65 WHERE `entry` = 22734;
-- UPDATE `creature_template` SET `MinLevel` = 58, `MaxLevel` = 59, `HeroicEntry` = 22771 WHERE `entry` = 13535; -- Veteran Coldmine Guard (55-55)
-- UPDATE `creature_template` SET `MinLevel` = 68, `MaxLevel` = 69 WHERE `entry` = 22771;
-- UPDATE `creature_template` SET `MinLevel` = 58, `MaxLevel` = 59, `HeroicEntry` = 22773 WHERE `entry` = 13538; -- Veteran Coldmine Surveyor (55-55)
-- UPDATE `creature_template` SET `MinLevel` = 68, `MaxLevel` = 69 WHERE `entry` = 22773;
-- UPDATE `creature_template` SET `MinLevel` = 58, `MaxLevel` = 59, `HeroicEntry` = 22772 WHERE `entry` = 13550; -- Veteran Coldmine Invader (55-55)
-- UPDATE `creature_template` SET `MinLevel` = 68, `MaxLevel` = 69 WHERE `entry` = 22772;
-- UPDATE `creature_template` SET `MinLevel` = 54, `MaxLevel` = 55, `HeroicEntry` = 22746 WHERE `entry` = 13081; -- Irondeep Raider (56-56)
-- UPDATE `creature_template` SET `MinLevel` = 64, `MaxLevel` = 65 WHERE `entry` = 22746;
-- UPDATE `creature_template` SET `MinLevel` = 58, `MaxLevel` = 58, `HeroicEntry` = 22670 WHERE `entry` = 13086; -- Aggi Rumblestomp (56-56)
-- UPDATE `creature_template` SET `MinLevel` = 68, `MaxLevel` = 68 WHERE `entry` = 22670;
-- UPDATE `creature_template` SET `MinLevel` = 54, `MaxLevel` = 55, `HeroicEntry` = 22729 WHERE `entry` = 13096; -- Coldmine Explorer (56-56)
-- UPDATE `creature_template` SET `MinLevel` = 64, `MaxLevel` = 65 WHERE `entry` = 22729;
-- UPDATE `creature_template` SET `MinLevel` = 58, `MaxLevel` = 58, `HeroicEntry` = 22689 WHERE `entry` = 13524; -- Stormpike Commando (56-56)
-- UPDATE `creature_template` SET `MinLevel` = 68, `MaxLevel` = 68 WHERE `entry` = 22689;
-- UPDATE `creature_template` SET `MinLevel` = 56, `MaxLevel` = 57, `HeroicEntry` = 22755 WHERE `entry` = 13540; -- Seasoned Irondeep Explorer (56-56)
-- UPDATE `creature_template` SET `MinLevel` = 66, `MaxLevel` = 67 WHERE `entry` = 22755;
-- UPDATE `creature_template` SET `MinLevel` = 56, `MaxLevel` = 57, `HeroicEntry` = 22756 WHERE `entry` = 13552; -- Seasoned Irondeep Guard (56-57)
-- UPDATE `creature_template` SET `MinLevel` = 66, `MaxLevel` = 67 WHERE `entry` = 22756;
-- UPDATE `creature_template` SET `MinLevel` = 56, `MaxLevel` = 57, `HeroicEntry` = 22752 WHERE `entry` = 13534; -- Seasoned Coldmine Guard (57-57)
-- UPDATE `creature_template` SET `MinLevel` = 66, `MaxLevel` = 67 WHERE `entry` = 22752;
-- UPDATE `creature_template` SET `MinLevel` = 52, `MaxLevel` = 53, `HeroicEntry` = 22732 WHERE `entry` = 13317; -- Coldmine Miner (58-58)
-- UPDATE `creature_template` SET `MinLevel` = 62, `MaxLevel` = 63 WHERE `entry` = 22732;
-- UPDATE `creature_template` SET `MinLevel` = 56, `MaxLevel` = 57, `HeroicEntry` = 22757 WHERE `entry` = 13543; -- Seasoned Irondeep Raider (58-58)
-- UPDATE `creature_template` SET `MinLevel` = 66, `MaxLevel` = 67 WHERE `entry` = 22757;
-- UPDATE `creature_template` SET `MinLevel` = 58, `MaxLevel` = 59, `HeroicEntry` = 22775 WHERE `entry` = 13553; -- Veteran Irondeep Guard (58-59)
-- UPDATE `creature_template` SET `MinLevel` = 68, `MaxLevel` = 69 WHERE `entry` = 22775;
-- UPDATE `creature_template` SET `MinLevel` = 60, `MaxLevel` = 60, `HeroicEntry` = 22555 WHERE `entry` = 603; -- Grimtooth (59-59)
-- UPDATE `creature_template` SET `MinLevel` = 70, `MaxLevel` = 70 WHERE `entry` = 22555;
-- UPDATE `creature_template` SET `MinLevel` = 59, `MaxLevel` = 59, `HeroicEntry` = 22702 WHERE `entry` = 13296; -- Lieutenant Largent (59-59)
-- UPDATE `creature_template` SET `MinLevel` = 69, `MaxLevel` = 69 WHERE `entry` = 22702;
-- UPDATE `creature_template` SET `MinLevel` = 59, `MaxLevel` = 59, `HeroicEntry` = 22713 WHERE `entry` = 13525; -- Seasoned Commando (59-59)
-- UPDATE `creature_template` SET `MinLevel` = 69, `MaxLevel` = 69 WHERE `entry` = 22713;
-- UPDATE `creature_template` SET `MinLevel` = 59, `MaxLevel` = 59, `HeroicEntry` = 22676 WHERE `entry` = 13528; -- Seasoned Commando (59-59)
-- UPDATE `creature_template` SET `MinLevel` = 69, `MaxLevel` = 69 WHERE `entry` = 22676;
-- UPDATE `creature_template` SET `MinLevel` = 59, `MaxLevel` = 60, `HeroicEntry` = 22788 WHERE `entry` = 12156; -- Winterax Axe Thrower (60-60)
-- UPDATE `creature_template` SET `MinLevel` = 69, `MaxLevel` = 70 WHERE `entry` = 22788;
-- UPDATE `creature_template` SET `MinLevel` = 60, `MaxLevel` = 60, `HeroicEntry` = 22552 WHERE `entry` = 13441; -- Frostwolf Wolf Rider Commander (59-59)
-- UPDATE `creature_template` SET `MinLevel` = 70, `MaxLevel` = 70 WHERE `entry` = 22552;
-- UPDATE `creature_template` SET `MinLevel` = 60, `MaxLevel` = 60, `HeroicEntry` = 22587 WHERE `entry` = 13526; -- Veteran Commando (70-70)
-- UPDATE `creature_template` SET `MinLevel` = 70, `MaxLevel` = 70 WHERE `entry` = 22587;
-- UPDATE `creature_template` SET `MinLevel` = 60, `MaxLevel` = 60, `HeroicEntry` = 22530 WHERE `entry` = 13536; -- Champion Coldmine Guard (70-70)
-- UPDATE `creature_template` SET `MinLevel` = 70, `MaxLevel` = 70 WHERE `entry` = 22530;
-- UPDATE `creature_template` SET `MinLevel` = 60, `MaxLevel` = 60, `HeroicEntry` = 22536 WHERE `entry` = 13545; -- Champion Irondeep Raider (70-70)
-- UPDATE `creature_template` SET `MinLevel` = 70, `MaxLevel` = 70 WHERE `entry` = 22536;
-- UPDATE `creature_template` SET `MinLevel` = 60, `MaxLevel` = 60, `HeroicEntry` = 22535 WHERE `entry` = 13554; -- Champion Irondeep Guard (70-70)
-- UPDATE `creature_template` SET `MinLevel` = 70, `MaxLevel` = 70 WHERE `entry` = 22535;
-- UPDATE `creature_template` SET `MinLevel` = 61, `MaxLevel` = 61, `HeroicEntry` = 22614 WHERE `entry` = 13319; -- Commander Duffy (71-71)
-- UPDATE `creature_template` SET `MinLevel` = 71, `MaxLevel` = 71 WHERE `entry` = 22614;
-- UPDATE `creature_template` SET `MinLevel` = 61, `MaxLevel` = 61, `HeroicEntry` = 22622 WHERE `entry` = 14285; -- Frostwolf Battleguard (71-71)
-- UPDATE `creature_template` SET `MinLevel` = 71, `MaxLevel` = 71 WHERE `entry` = 22622;
-- UPDATE `creature_template` SET `MinLevel` = 61, `MaxLevel` = 61, `HeroicEntry` = 22629 WHERE `entry` = 13256; -- Lokholar the Ice Lord (63-63)
-- UPDATE `creature_template` SET `MinLevel` = 71, `MaxLevel` = 71 WHERE `entry` = 22629;
-- UPDATE `creature_template` SET `MinLevel` = 61, `MaxLevel` = 61, `HeroicEntry` = 22627 WHERE `entry` = 13419; -- Ivus the Forest Lord (63-63)
-- UPDATE `creature_template` SET `MinLevel` = 71, `MaxLevel` = 71 WHERE `entry` = 22627;
-- UPDATE `creature_template` SET `MinLevel` = 62, `MaxLevel` = 62, `HeroicEntry` = 22641 WHERE `entry` = 11946; -- Drek'Thar (62-62)
-- UPDATE `creature_template` SET `MinLevel` = 72, `MaxLevel` = 72 WHERE `entry` = 22641;
-- UPDATE `creature_template` SET `MinLevel` = 62, `MaxLevel` = 62, `HeroicEntry` = 22644 WHERE `entry` = 11948; -- Vanndar Stormpike (73-73)
-- UPDATE `creature_template` SET `MinLevel` = 72, `MaxLevel` = 72 WHERE `entry` = 22644;

-- Additional Fixes
UPDATE `creature_template` SET `SchoolImmuneMask` = 4 WHERE `entry` = 4339; -- Brimgore (45-45)

UPDATE `creature_template` SET `LootId` = 0 WHERE `entry` = 5780;
DELETE FROM `creature_loot_template` WHERE `entry` = 5780; -- Cloned Ectoplasm (16-17) - https://www.wowhead.com/tbc/npc=5780/cloned-ectoplasm#comments

UPDATE `creature_template` SET `LootId` = 0 WHERE `entry` = 4510;
DELETE FROM `creature_loot_template` WHERE `entry` = 4510; -- Heralath Fallowbrook (25-25) - https://web.archive.org/web/20071031065328/http://wow.allakhazam.com/db/mob.html?wmob=4510

-- https://www.wowhead.com/classic/npc=11876/demon-spirit
DELETE FROM `creature_loot_template` WHERE `item` != 13542 AND `entry` = 11876; -- Demon Spirit (37-37) - https://web.archive.org/web/20071113020359/http://wow.allakhazam.com/db/mob.html?wmob=11876

UPDATE `creature_template` SET `LootId` = 0 WHERE `entry` = 2817;
DELETE FROM `creature_loot_template` WHERE `entry` = 2817; -- Rigglefuzz (37-37) - https://www.wowhead.com/classic/npc=2817/rigglefuzz

UPDATE `creature_template` SET `LootId` = 0 WHERE `entry` = 2712;
DELETE FROM `creature_loot_template` WHERE `entry` = 2712; -- Quae (38-38) - https://www.wowhead.com/tbc/npc=2712/quae

UPDATE `creature_template` SET `LootId` = 0 WHERE `entry` = 8386;
DELETE FROM `creature_loot_template` WHERE `entry` = 8386; -- Horizon Scout Crewman, -- 42, -- 42

UPDATE `creature_template` SET `LootId` = 0 WHERE `entry` = 8876;
DELETE FROM `creature_loot_template` WHERE `entry` = 8876; -- Sandfury Acolyte, -- 42, -- 44

UPDATE `creature_template` SET `LootId` = 0 WHERE `entry` = 8877;
DELETE FROM `creature_loot_template` WHERE `entry` = 8877; -- Sandfury Zealot (44-45) - https://web.archive.org/web/20080103215407/http://wow.allakhazam.com/db/mob.html?wmob=8877

UPDATE `creature_template` SET `LootId` = 0 WHERE `entry` = 7789; -- false positive? - https://www.wowhead.com/classic/npc=7789/sandfury-cretin
DELETE FROM `creature_loot_template` WHERE `entry` = 7789; -- Sandfury Cretin	43	45 - https://web.archive.org/web/20080103200034/http://wow.allakhazam.com/db/mob.html?wmob=7789

-- https://www.wowhead.com/tbc/npc=14748/vilebranch-kidnapper
DELETE FROM `creature_loot_template` WHERE `item` != 19034 AND `entry` = 14748; -- Vilebranch Kidnapper, -- 49, -- 49 - https://web.archive.org/web/20071228233432/http://wow.allakhazam.com/db/mob.html?wmob=14748

UPDATE `creature_template` SET `LootId` = 0 WHERE `entry` = 10601;
DELETE FROM `creature_loot_template` WHERE `entry` = 10601; -- Urok Enforcer (54-55) - https://web.archive.org/web/20071212150453/http://wow.allakhazam.com/db/mob.html?wmob=10601

UPDATE `creature_template` SET `LootId` = 0 WHERE `entry` = 10602;
DELETE FROM `creature_loot_template` WHERE `entry` = 10602; -- Urok Ogre Magus (54-55) - https://web.archive.org/web/20071202100059/http://wow.allakhazam.com/db/mob.html?wmob=10602

UPDATE `creature_template` SET `LootId` = 0 WHERE `entry` = 10637;
DELETE FROM `creature_loot_template` WHERE `entry` = 10637; -- Malyfous Darkhammer (59-59) - https://www.wowhead.com/tbc/npc=10637/malyfous-darkhammer

-- Respawn Wild Gryphon 2347 (-2 / +6) - one was falling below map (confirmed)
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|1048576 WHERE `entry` = 2347;
DELETE FROM `creature` WHERE `id` = 2347;
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
(191507, 2347, 0, -343.74, -1451.68, 68.3545, 3.35103, 300, 480, 0, 0), -- confirmed out of bounds
(191508, 2347, 0, -489.536, -1727.08, 81.0306, 5.61232, 300, 480, 25, 1),
(191509, 2347, 0, -287.825012, -1449.839966, 85.952904, 0, 300, 480, 25, 1),
(191510, 2347, 0, -312.272003, -1552.390015, 84.543602, 0, 300, 480, 25, 1),
(191511, 2347, 0, -315.050995, -1643.180054, 91.154503, 0, 300, 480, 25, 1),
(191512, 2347, 0, -413.169006, -1693.650024, 87.505501, 0, 300, 480, 25, 1);

-- Remove old refloots which were used multiple times in same mob making greens drop left and right!
DELETE FROM `creature_loot_template` WHERE `mincountorref` IN (-24016,-24018,-24020,-24025,-24027,-24029,-24031,-24033,-24037,-24039,-24041,-24043,-24045,-24048,-24050,-24052,-24054,-24056,-24060,-24062,-24064,-24068,-24074,-24075,-24076,-24077,-24078,-24106)
AND `entry` IN (1837,1216,1400,1547,3125,2969,1126,1138,1553,3099,2956,3122,1127,1131,1201,1548,1922,1996,1999,2043,2972,3035,3107,3126,2970,1133,1554,1997,2000,2033,2957,3100,6911,1211,2971,3123,330,118,1549,1555,2231,3108,3127,6789,3110,1190,1195,1765,2001,2034,2070,2234,2973,3225,3226,3227,3228,1961,3058,1186,1766,2163,2974,3231,3244,3415,2321,3254,7319,454,1193,1780,1797,3243,3246,2185,10160,830,1188,1781,2232,3242,11320,3255,11318,11319,11321,11322,11323,11324,4263,2172,2175,5435,1191,1693,2173,2174,3234,3425,8236,2322,831,1194,3241,3248,3630,3632,7017,3634,4127,6033,2235,4008,3475,1189,1192,1923,2165,3245,3631,3633,4005,5780,2187,3256,441,1185,1216,2237,3416,3426,4007,2323,1184,832,3240,3463,3503,3636,3637,3816,3861,4009,5053,6788,8886,2233,3247,2192,3257,2071,3236,3812,3864,4006,4011,2477,645,1225,3251,3398,2478,3239,3250,3466,3814,3819,7170,3424,12123,3474,4264,12940,3722,4510,1353,3811,6071,6073,4066,4499,4548,6215,10992,683,855,1150,2408,2559,4110,4142,4147,4696,4154,4689,12347,5185,12676,688,905,2578,4140,4728,5934,682,1108,2406,2563,4144,4692,4158,11576,11578,4304,685,856,2407,2560,4139,4726,9377,7333,689,1085,2579,4143,4150,4697,4700,5937,7349,1084,1151,1152,2565,4341,4346,4351,4376,4413,4701,4729,2829,2906,4695,11577,691,767,854,858,2561,2731,4342,4352,4378,4396,4411,4676,4693,4702,4690,729,2817,5935,7334,7351,11876,684,772,1114,2580,2728,4343,4347,4355,4397,4414,4660,4662,4678,4727,2735,2830,2635,2712,2794,7057,11937,1082,2592,2760,2761,2762,4344,4348,4379,4412,4681,4699,4861,4392,8138,92,690,4356,4398,4685,4694,4863,7022,2831,4393,728,2347,2473,2474,6239,687,1557,2544,2734,4345,4357,4415,5286,5422,11777,11781,11785,11787,2657,11685,1087,1550,2923,4323,4400,5425,11778,11786,11788,2725,5307,5428,9396,2745,8386,1558,1713,2730,2791,4324,4399,5260,5419,7405,11782,14123,2736,5646,8876,8337,730,731,2924,5287,5300,5423,2658,2726,5278,5429,5856,7789,8667,2447,2755,2686,5245,5246,5304,5426,8877,12219,5308,7269,7584,2919,4339,4841,2925,5224,5244,5247,5305,5420,5984,7268,12220,13696,5465,5843,5850,5853,5857,5979,6126,8095,8759,12218,11783,2680,5225,5306,5424,5434,7803,12207,13599,2659,5855,5982,5998,6375,8917,11789,13323,8120,14661,5288,5427,5441,5452,5455,5459,5462,5990,8762,8959,11784,5360,5430,5852,5854,5858,8837,9318,9397,5276,8442,5833,7977,5421,5453,5456,5458,5461,5861,5992,6505,6509,7097,5431,5432,6377,6556,7864,9165,9545,9547,9554,10043,14748,2505,5262,5450,5451,5454,5457,5460,5985,6506,6507,6511,8760,8763,8921,8960,9162,9683,3094,2757,2759,6369,8196,1822,2681,5988,6508,6514,7099,7125,8675,9621,10981,10990,13618,13676,1791,1809,6378,6557,7044,8909,8925,8926,8927,8928,8932,8933,9166,9477,5991,6347,6510,6513,6551,6552,8961,9163,9690,9878,5981,6201,6553,7031,8198,9026,12124,13896,1821,5993,6348,6501,6512,6516,6554,6555,7098,7126,7136,8761,8764,9691,10221,10982,10986,10987,10991,11603,11678,13316,13396,13397,1785,6379,6380,6502,6518,6559,8910,8916,9167,10605,11552,12418,10919,1817,6349,6352,6503,6520,7048,7132,7135,8596,9416,9694,9879,11600,11604,11675,11837,14282,14283,7037,7039,7045,7447,7450,7457,8540,8600,9452,16383,10040,13022,13087,13099,13541,13546,13547,13549,1824,6010,6498,6500,6504,6521,8519,8603,8922,9164,9695,10601,10602,10659,11602,11605,11735,13544,1884,6499,7451,7455,8534,8601,8911,10580,10661,13279,14460,2707,2931,6140,9499,9622,12052,13089,13097,13535,13538,13550,15333,7049,7376,7430,8520,8597,8920,9697,10375,10660,11738,11740,1883,7032,7379,7448,8541,9451,10411,10608,11744,14462,7137,9376,9684,10041,10662,11196,11736,13081,13086,13096,13197,13325,13327,13330,13524,13540,7431,8521,8605,9696,9698,11838,11839,12125,13301,13448,13537,13552,1802,7046,8535,8602,11746,14458,14880,6583,12051,12127,13335,13336,13337,13534,14475,8522,8557,8598,10374,10442,10983,11698,11721,11724,11737,11739,11741,13136,13160,13285,14455,7449,7456,8542,8562,10489,10678,11458,11459,11483,11745,13036,14303,10177,10663,10807,11657,11677,12050,12053,13078,13079,13088,13180,13218,13284,13317,13324,13329,13426,13427,13428,13438,13440,13543,13576,14461,14464,7433,11722,11723,11725,11726,11727,11747,11840,11885,13447,13553,13556,14398,10487,10498,10499,10996,11043,11551,10488,10500,603,10202,10637,12158,13137,13138,13143,13144,13145,13146,13147,13179,13296,13297,13298,13299,13300,13326,13328,13333,13334,13356,13439,13525,13528,13529,13840,14185,14188,14474,7462,11480,11484,11679,11728,11729,11730,11731,11732,11733,12157,12380,13358,13359,14399,14400,4366,4374,10486,11598,11734,466,6584,7846,8718,8976,10664,10737,10741,11350,11351,11353,11357,11360,11361,11365,11368,11371,11372,11804,11831,11897,12121,12122,12156,13176,13181,13236,13257,13331,13332,13377,13378,13424,13425,13437,13441,13442,13443,13526,13530,13536,13539,13542,13545,13548,13551,13554,13577,13598,13617,13996,14186,14187,14454,14457,14473,14532,14821,14825,14882,14883,15043,15209,15211,15212,15236,15262,15307,15318,15319,15461,15462,16022,16184,12800,13797,13798,12801,12129,8197,10439,11338,11339,11340,11356,11359,11370,11387,11388,11391,11896,11947,11949,12459,12465,12468,13139,13140,13152,13153,13154,13155,13318,13319,13320,13421,13422,13446,13449,13527,13531,13959,14285,14750,15111,15229,15230,15233,15246,15247,15249,15250,15264,15312,15320,15323,15324,15325,15327,15336,15338,15343,15974,15975,15976,15978,15980,15981,16017,16018,16020,16067,16145,16154,16156,16157,16158,16163,16164,16165,16167,16168,16193,16244,16446,16447,16448,16449,16453,11665,11666,11667,11668,12076,12101,12802,15215,5312,5314,5718,11352,11673,12159,12457,12461,12463,12464,12467,12496,12497,12498,12803,12899,12900,15206,15207,15208,15220,15235,15240,15277,15355,16021,16029,16368,16451,16452,12100,12460,13256,13419,15203,15204,15205,15252,15305,15311,15385,15386,15388,15389,15390,15391,15392,16025);

DELETE FROM `reference_loot_template` WHERE `entry` IN (24016,24018,24020,24025,24027,24029,24031,24033,24037,24039,24041,24043,24045,24048,24050,24052,24054,24056,24060,24062,24064,24068,24074,24075,24076,24077,24078,24106);
DELETE FROM `reference_loot_template_names` WHERE `entry` IN (24016,24018,24020,24025,24027,24029,24031,24033,24037,24039,24041,24043,24045,24048,24050,24052,24054,24056,24060,24062,24064,24068,24074,24075,24076,24077,24078,24106);

-- Integrate 24020 into 34003 where its referenced
-- Table 'reference_loot_template' entry 24020 (reference id) not exist but used as loot id in DB.
REPLACE INTO `reference_loot_template` (`item`, `entry`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`) SELECT `entry`, 34003, 1, 0, 1, 1 FROM `item_template` WHERE `entry` IN (
10135,10143,10151,10157,10158,10271,11980,12058,14456,14464,14680,14811,14812,15941,15968,15989);
DELETE FROM `reference_loot_template` WHERE `entry` = 34003 AND `mincountOrRef` = -24020;

-- Check for Single Items in all creatures from the new refloots! - nada más
-- Can savely delete without entry check as all wotlk cases were added to this list!
DELETE FROM `creature_loot_template` WHERE `item` IN (
727,789,790,863,864,865,866,1207,1465,1608,1613,1625,1639,1640,1988,1990,1994,2072,2073,2075,2077,2078,2079,2080,2140,2632,2819,2957,2958,2961,2962,2965,2966,2969,2970,2973,2974,2976,2977,2978,2980,2981,2982,2983,2984,2985,2986,2987,2988,2989,2990,2991,2992,3036,3037,3039,3040,3041,3042,3045,3047,3048,3049,3055,3056,3057,3058,3065,3066,3067,3069,3184,3185,3186,3187,3192,3193,3195,3196,3197,3198,3199,3201,3202,3205,3206,3208,3210,3211,3212,3282,3283,3287,3288,3291,3292,3302,3305,3306,3307,3308,3309,3310,3313,3314,3315,3430,3645,3647,3651,3652,3653,3654,3655,3656,3740,4035,4036,4037,4038,4039,4040,4041,4042,4043,4044,4045,4046,4047,4048,4049,4050,4051,4052,4054,4055,4057,4058,4059,4060,4061,4062,4063,4064,4065,4066,4067,4068,4069,4070,4071,4072,4073,4074,4075,4076,4077,4078,4079,4080,4082,4083,4084,4087,4088,4089,4561,4562,4564,4566,4567,4568,4569,4570,4571,4575,4576,4577,4661,4695,4697,4699,4701,4705,4706,4707,4708,4709,4710,4711,4712,4713,4714,4715,4716,4717,4718,4719,4720,4721,4722,4725,4726,4727,4729,4731,4732,4733,4734,4735,4736,4737,4738,4998,4999,5001,5002,5003,5007,5009,5011,5069,5071,5207,5212,5213,5214,5215,5216,6266,6267,6268,6269,6336,6337,6378,6379,6380,6381,6382,6383,6386,6387,6388,6389,6393,6394,6395,6396,6397,6398,6399,6400,6402,6403,6404,6405,6406,6407,6408,6409,6410,6411,6412,6413,6415,6416,6417,6418,6419,6420,6421,6422,6423,6424,6425,6426,6427,6428,6429,6430,6431,6432,6433,6511,6512,6527,6528,6531,6536,6537,6538,6539,6540,6541,6542,6543,6545,6546,6547,6548,6550,6551,6552,6553,6554,6556,6557,6558,6559,6560,6561,6562,6563,6564,6565,6567,6568,6569,6570,6571,6572,6573,6574,6575,6576,6577,6578,6580,6581,6582,6583,6584,6585,6586,6587,6590,6591,6592,6593,6594,6595,6596,6597,6598,6599,6600,6601,6602,6603,6604,6605,6607,6608,6609,6610,6611,6612,6613,6614,6615,6616,6617,7108,7110,7111,7112,7113,7330,7331,7332,7353,7354,7355,7356,7357,7366,7367,7368,7369,7370,7406,7407,7408,7409,7410,7411,7412,7413,7414,7415,7416,7417,7418,7419,7420,7421,7422,7423,7424,7429,7430,7431,7432,7433,7434,7435,7436,7437,7438,7439,7440,7441,7443,7444,7445,7446,7447,7448,7454,7455,7456,7457,7458,7459,7460,7461,7462,7463,7465,7468,7469,7470,7471,7472,7473,7474,7475,7476,7477,7478,7479,7480,7481,7482,7483,7484,7485,7486,7487,7488,7489,7490,7491,7492,7493,7494,7495,7496,7517,7518,7519,7520,7521,7522,7523,7524,7525,7526,7527,7528,7529,7530,7531,7532,7533,7534,7535,7536,7537,7538,7539,7540,7541,7542,7543,7544,7545,7546,7552,7553,7554,7555,7556,7557,7558,7608,7609,7610,7611,8106,8107,8108,8109,8110,8111,8112,8113,8114,8115,8116,8117,8118,8119,8120,8121,8122,8123,8124,8125,8126,8127,8128,8129,8130,8131,8132,8133,8134,8135,8137,8138,8139,8140,8141,8142,8143,8144,8156,8157,8158,8159,8160,8161,8162,8163,8178,8180,8183,8184,8186,8188,8194,8196,8199,8245,8246,8247,8248,8249,8250,8251,8252,8253,8254,8255,8256,8257,8258,8259,8260,8261,8262,8263,8264,8265,8266,8267,8268,8269,8270,8271,8272,8273,8274,8275,8276,8277,8278,8279,8280,8281,8282,8283,8284,8285,8286,8287,8288,8289,8290,8291,8292,8293,8294,8295,8296,8297,8298,8299,8300,8301,8302,8303,8304,8305,8306,8307,8308,8309,8310,8311,8312,8313,8314,8315,8316,8317,8318,8319,8320,9285,9286,9287,9288,9289,9290,9291,9292,9747,9748,9749,9753,9756,9757,9763,9764,9765,9766,9767,9768,9769,9770,9771,9772,9773,9774,9775,9776,9777,9778,9779,9780,9781,9782,9783,9784,9785,9786,9787,9788,9789,9790,9791,9792,9793,9794,9795,9796,9797,9798,9799,9800,9801,9802,9803,9804,9805,9806,9807,9808,9809,9810,9811,9812,9813,9814,9815,9816,9817,9818,9819,9820,9821,9822,9823,9824,9825,9826,9827,9828,9829,9830,9831,9832,9833,9834,9835,9836,9837,9838,9839,9840,9841,9842,9843,9844,9845,9846,9847,9848,9849,9850,9851,9852,9853,9854,9855,9856,9857,9858,9859,9860,9861,9862,9863,9864,9865,9866,9867,9868,9869,9870,9871,9872,9873,9874,9875,9876,9877,9878,9879,9880,9881,9882,9883,9884,9885,9886,9887,9889,9890,9891,9892,9893,9894,9895,9896,9897,9898,9899,9900,9901,9902,9903,9904,9905,9906,9907,9908,9909,9910,9911,9912,9913,9914,9915,9916,9917,9918,9919,9920,9921,9922,9923,9924,9925,9926,9927,9928,9929,9930,9931,9932,9933,9934,9935,9936,9937,9938,9939,9940,9941,9942,9943,9944,9945,9946,9947,9948,9949,9950,9951,9952,9953,9954,9955,9956,9957,9958,9959,9960,9961,9962,9963,9964,9965,9966,9967,9968,9969,9970,9971,9972,9973,9974,10057,10058,10059,10060,10061,10062,10063,10064,10065,10066,10067,10068,10069,10070,10071,10072,10073,10074,10075,10076,10077,10078,10079,10080,10081,10082,10083,10084,10085,10086,10087,10088,10089,10090,10091,10092,10093,10094,10095,10096,10097,10098,10099,10100,10101,10102,10103,10104,10105,10106,10107,10108,10109,10110,10111,10112,10113,10118,10119,10120,10121,10122,10123,10124,10125,10126,10127,10128,10129,10130,10131,10132,10133,10134,10135,10136,10137,10138,10139,10140,10141,10142,10143,10144,10145,10146,10147,10148,10149,10150,10151,10152,10153,10154,10155,10156,10157,10158,10159,10160,10161,10162,10163,10164,10165,10166,10167,10168,10169,10170,10171,10172,10173,10174,10175,10176,10177,10178,10179,10180,10181,10182,10183,10184,10185,10186,10187,10188,10189,10190,10191,10192,10193,10194,10195,10196,10197,10198,10199,10200,10201,10202,10203,10204,10205,10206,10207,10208,10209,10210,10211,10212,10213,10214,10215,10216,10217,10218,10219,10220,10221,10222,10223,10224,10225,10226,10227,10228,10229,10230,10231,10232,10233,10234,10235,10236,10237,10238,10239,10240,10241,10242,10243,10244,10245,10246,10247,10248,10249,10250,10251,10252,10253,10254,10255,10256,10257,10258,10259,10260,10261,10262,10263,10264,10265,10266,10267,10268,10269,10270,10271,10272,10273,10274,10275,10276,10277,10278,10279,10280,10281,10282,10287,10288,10289,10362,10363,10364,10365,10366,10367,10368,10369,10370,10371,10372,10373,10374,10375,10376,10377,10378,10379,10380,10381,10382,10383,10384,10385,10386,10387,10388,10389,10390,10391,10404,10406,10408,10409,11965,11967,11968,11969,11970,11971,11972,11973,11974,11975,11976,11977,11978,11979,11980,11981,11982,11983,11984,11985,11986,11987,11988,11989,11990,11991,11992,11993,11994,11995,11996,11997,11998,11999,12001,12002,12004,12005,12006,12007,12008,12009,12010,12011,12012,12013,12014,12015,12016,12017,12019,12020,12022,12023,12024,12025,12026,12027,12028,12029,12030,12031,12032,12034,12035,12036,12039,12040,12042,12043,12044,12045,12046,12047,12048,12052,12053,12054,12055,12056,12057,12058,14025,14090,14091,14094,14096,14097,14109,14113,14114,14117,14119,14120,14121,14122,14123,14124,14125,14127,14129,14131,14133,14158,14159,14160,14161,14162,14163,14164,14165,14166,14167,14168,14171,14172,14173,14174,14175,14176,14177,14178,14179,14180,14181,14182,14183,14184,14185,14186,14187,14188,14189,14190,14191,14192,14193,14194,14195,14196,14197,14198,14199,14200,14201,14202,14203,14204,14205,14206,14207,14208,14209,14210,14211,14212,14213,14214,14215,14216,14217,14218,14219,14220,14221,14222,14223,14224,14225,14226,14228,14229,14230,14231,14232,14233,14234,14235,14236,14237,14238,14239,14240,14241,14242,14243,14244,14245,14246,14247,14248,14249,14250,14251,14252,14253,14254,14255,14257,14258,14259,14260,14261,14262,14263,14264,14265,14266,14267,14268,14269,14270,14271,14272,14273,14274,14275,14276,14277,14278,14279,14280,14281,14282,14283,14284,14285,14286,14287,14288,14289,14290,14291,14292,14293,14294,14295,14296,14297,14298,14299,14300,14301,14302,14303,14304,14305,14306,14307,14308,14309,14310,14311,14312,14313,14314,14315,14316,14317,14318,14319,14320,14321,14322,14323,14324,14325,14326,14327,14328,14329,14330,14331,14332,14333,14334,14335,14336,14337,14364,14365,14366,14367,14369,14370,14371,14372,14373,14374,14375,14376,14377,14378,14379,14380,14397,14398,14399,14400,14401,14402,14403,14404,14405,14406,14407,14408,14409,14410,14411,14412,14413,14414,14415,14416,14417,14418,14419,14420,14421,14422,14423,14424,14425,14426,14427,14428,14429,14430,14431,14432,14433,14434,14435,14436,14437,14438,14439,14440,14441,14442,14443,14444,14445,14446,14447,14448,14449,14450,14451,14452,14453,14454,14455,14456,14457,14458,14459,14460,14461,14462,14463,14464,14465,14559,14560,14561,14562,14563,14564,14565,14566,14567,14568,14569,14570,14571,14572,14573,14574,14578,14579,14580,14581,14582,14583,14584,14585,14587,14588,14589,14590,14591,14592,14593,14594,14595,14596,14598,14599,14600,14601,14602,14603,14604,14605,14606,14607,14608,14652,14653,14654,14655,14656,14657,14658,14659,14660,14661,14662,14663,14664,14665,14666,14667,14668,14669,14670,14671,14672,14673,14674,14675,14676,14677,14678,14680,14681,14682,14683,14684,14685,14686,14687,14688,14722,14723,14724,14725,14726,14727,14729,14730,14742,14743,14744,14745,14746,14747,14748,14749,14750,14751,14752,14753,14754,14755,14756,14757,14758,14759,14760,14761,14762,14763,14764,14765,14766,14767,14768,14769,14770,14771,14772,14773,14774,14775,14776,14777,14778,14779,14780,14781,14782,14783,14784,14785,14786,14787,14788,14789,14790,14791,14792,14793,14794,14795,14796,14797,14798,14799,14800,14801,14802,14803,14804,14805,14806,14807,14808,14809,14810,14811,14812,14813,14814,14815,14816,14817,14821,14825,14826,14827,14828,14829,14830,14831,14832,14833,14834,14835,14838,14839,14840,14841,14842,14843,14844,14846,14847,14848,14849,14850,14851,14852,14853,14854,14855,14856,14857,14858,14859,14860,14861,14862,14863,14864,14865,14866,14867,14868,14869,14895,14896,14897,14898,14899,14900,14901,14902,14903,14904,14905,14906,14907,14908,14909,14910,14911,14912,14913,14914,14915,14916,14917,14918,14919,14920,14921,14922,14923,14924,14925,14926,14927,14928,14929,14930,14931,14932,14933,14934,14935,14936,14937,14938,14939,14940,14941,14942,14943,14944,14945,14946,14947,14948,14949,14950,14951,14952,14953,14954,14955,14956,14957,14958,14959,14960,14961,14962,14963,14964,14965,14966,14967,14968,14969,14970,14971,14972,14973,14974,14975,14976,14977,14978,14979,14980,14981,14982,14983,15009,15010,15011,15012,15014,15016,15017,15018,15110,15111,15112,15113,15114,15115,15116,15117,15118,15119,15120,15121,15122,15123,15124,15125,15126,15127,15128,15129,15130,15131,15132,15133,15134,15135,15136,15137,15139,15140,15142,15143,15144,15145,15146,15147,15148,15149,15150,15151,15152,15153,15154,15155,15156,15157,15158,15159,15160,15161,15162,15163,15164,15165,15166,15167,15168,15169,15170,15171,15172,15173,15174,15175,15176,15177,15178,15179,15180,15181,15182,15183,15184,15185,15186,15187,15188,15189,15190,15191,15192,15193,15194,15195,15210,15211,15212,15213,15214,15215,15216,15217,15218,15219,15220,15221,15222,15223,15224,15225,15226,15227,15228,15229,15230,15231,15232,15233,15234,15235,15236,15237,15238,15239,15240,15241,15242,15243,15244,15245,15246,15247,15248,15249,15250,15251,15252,15253,15254,15255,15256,15257,15258,15259,15260,15261,15262,15263,15264,15265,15266,15267,15268,15269,15270,15271,15272,15273,15274,15275,15276,15278,15279,15280,15281,15282,15283,15284,15285,15286,15287,15288,15289,15291,15294,15295,15296,15298,15303,15304,15305,15306,15307,15308,15309,15310,15311,15312,15322,15323,15324,15325,15329,15330,15331,15332,15333,15334,15336,15337,15338,15339,15340,15341,15342,15343,15344,15345,15346,15347,15348,15349,15350,15351,15352,15353,15354,15355,15356,15357,15358,15359,15360,15361,15362,15363,15364,15365,15366,15367,15368,15369,15370,15371,15372,15373,15374,15375,15376,15377,15378,15379,15380,15381,15382,15383,15384,15385,15386,15387,15388,15389,15390,15391,15392,15393,15394,15395,15425,15426,15427,15428,15429,15430,15431,15432,15433,15434,15435,15436,15437,15438,15439,15440,15441,15442,15477,15479,15485,15486,15487,15488,15489,15491,15492,15493,15494,15495,15497,15498,15499,15500,15501,15502,15503,15504,15506,15507,15508,15509,15510,15511,15512,15513,15514,15515,15516,15517,15518,15519,15520,15521,15522,15523,15524,15525,15526,15527,15528,15529,15530,15531,15532,15533,15534,15535,15536,15537,15538,15539,15540,15541,15542,15543,15544,15545,15546,15547,15548,15549,15550,15551,15552,15553,15554,15555,15556,15557,15558,15559,15560,15561,15562,15563,15565,15566,15567,15568,15569,15570,15571,15572,15573,15574,15575,15576,15577,15578,15579,15580,15581,15582,15583,15584,15589,15590,15591,15592,15593,15594,15595,15596,15597,15598,15599,15600,15601,15602,15603,15604,15605,15606,15607,15608,15609,15610,15611,15612,15613,15614,15615,15616,15617,15618,15619,15620,15621,15622,15623,15624,15625,15626,15627,15628,15629,15630,15631,15632,15633,15634,15635,15636,15637,15638,15639,15640,15641,15642,15643,15644,15645,15646,15647,15648,15649,15650,15651,15652,15653,15654,15655,15656,15657,15658,15659,15660,15661,15662,15663,15664,15665,15666,15667,15668,15669,15670,15671,15672,15673,15674,15675,15676,15677,15678,15679,15680,15681,15682,15683,15684,15685,15686,15687,15693,15694,15887,15890,15891,15892,15893,15894,15912,15918,15925,15926,15927,15928,15929,15930,15931,15932,15933,15934,15935,15936,15937,15938,15939,15940,15941,15942,15943,15944,15945,15946,15947,15962,15963,15964,15965,15966,15967,15968,15969,15970,15971,15972,15973,15974,15975,15976,15977,15978,15979,15980,15981,15982,15983,15984,15985,15986,15987,15988,15989,15990,15991)
AND `mincountOrRef` = 1 AND `entry` != 645; -- seemingly high unique chance

-- wotlk+ mobs (with green items) - that should get a refloot assigned instead of items
-- 28941	Citizen of New Avalon	30	45
-- 28942	Citizen of New Avalon	30	50
-- 28559	Citizen of New Avalon	39	43
-- 28819	Scarlet Miner	44	46
-- 28557	Scarlet Peasant	44	46
-- 28822	Scarlet Miner	44	46
-- 28846	Scarlet Ghost	50	50
-- 28939	Scarlet Preacher	53	54
-- 28529	Scarlet Crusader	53	54
-- 28608	Scarlet Medic	53	54
-- 28609	Scarlet Infantryman	53	54
-- 28940	Scarlet Crusader	54	55
-- 28769	Shadowy Tormentor	54	55
-- 28611	Scarlet Captain	54	55
-- 28610	Scarlet Marksman	54	55
-- 28768	Dark Rider of Acherus	55	55
-- 28936	Scarlet Commander	55	56
-- 28654	Dark Rider of Acherus	55	56
-- 28530	Scarlet Commander	56	56
-- 28945	Mayor Quimby	56	56
-- 28946	New Avalon Councilman	56	56
-- 29000	Scarlet Commander Rodrick	56	56
-- 29076	Scarlet Courier	56	56

-- Cleanup move to next file.
UPDATE reference_loot_template SET comments='';
UPDATE reference_loot_template ct JOIN item_template it ON it.entry = ct.item AND ct.MinCountOrRef > 0 SET ct.comments = CONCAT(ct.comments, "", it.name);
UPDATE reference_loot_template ct JOIN reference_loot_template_names rltn ON rltn.entry = -ct.MinCountOrRef AND ct.MinCountOrRef < 0 SET ct.comments = CONCAT(ct.comments, "", rltn.name);

UPDATE creature_loot_template SET comments='';
UPDATE creature_loot_template ct JOIN item_template it ON it.entry = ct.item AND ct.MinCountOrRef > 0 SET ct.comments = CONCAT(ct.comments, "", it.name);
UPDATE creature_loot_template ct JOIN reference_loot_template_names rltn ON rltn.entry = -ct.MinCountOrRef AND ct.MinCountOrRef < 0 SET ct.comments = CONCAT(ct.comments, "", rltn.name);

