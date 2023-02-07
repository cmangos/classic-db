-- Remove Refloots 24036-24073 (green itemlevel 2-55)
-- at times there were chances of up to 5%*4 for one mob
-- care "tbc+" "wotlk+" "classic only" comments
-- 24036	grey itemlevel 42-55
-- 24047	grey itemlevel 32-40
-- 24058	grey itemlevel 26-31
-- 24059	grey itemlevel 21-25
-- 24070	grey itemlevel 16-20
-- 24071	grey itemlevel 11-15
-- 24073	grey itemlevel 2-10

-- 60000	NPC LOOT (Grey World Drop) - (Item Levels: 1-5) - (NPC Levels: 1-5)
DELETE FROM `creature_loot_template` WHERE `entry` IN (6,38,69,80,103,257,299,704,705,706,707,708,724,808,946,1501,1504,1505,1506,1507,1508,1509,1512,1513,1667,1688,1718,1890,1916,1917,1918,1919,1984,1985,1986,1988,1989,1994,2031,2032,2952,2953,2954,2955,2961,2966,3098,3101,3102,3124,3183,3229,3281,8554)
AND `item` = 60001;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60000, -60000, 9, 0, 1 FROM `creature_template` WHERE `entry` IN (
6, -- Kobold Vermin
38, -- Defias Thug
69, -- Diseased Timber Wolf
80, -- Kobold Laborer
103, -- Garrick Padfoot
257, -- Kobold Worker
299, -- Diseased Young Wolf
704, -- Ragged Timber Wolf
705, -- Ragged Young Wolf
706, -- Frostmane Troll Whelp
707, -- Rockjaw Trogg
708, -- Small Crag Boar
724, -- Burly Rockjaw Trogg
808, -- Grik'nir the Cold
946, -- Frostmane Novice
1501, -- Mindless Zombie
1504, -- Young Night Web Spider
1505, -- Night Web Spider
1506, -- Scarlet Convert
1507, -- Scarlet Initiate
1508, -- Young Scavenger
1509, -- Ragged Scavenger
1512, -- Duskbat
1513, -- Mangy Duskbat
1667, -- Meven Korgal
1688, -- Night Web Matriarch
1718, -- Rockjaw Raider
1890, -- Rattlecage Skeleton
1916, -- Stephen Bhartec
1917, -- Daniel Ulfman
1918, -- Karrel Grayves
1919, -- Samuel Fipps
1984, -- Young Thistle Boar
1985, -- Thistle Boar
1986, -- Webwood Spider
1988, -- Grell
1989, -- Grellkin
1994, -- Githyiss the Vile
2031, -- Young Nightsaber
2032, -- Mangy Nightsaber
2952, -- Bristleback Quilboar
2953, -- Bristleback Shaman
2954, -- Bristleback Battleboar
2955, -- Plainstrider
2961, -- Mountain Cougar
2966, -- Battleboar
3098, -- Mottled Boar
3101, -- Vile Familiar
3102, -- Felstalker
3124, -- Scorpid Worker
3183, -- Yarrog Baneshadow
3229, -- "Squealer" Thornmantle
3281, -- Sarkoth
8554); -- Chief Sharptusk Thornmantle

-- 60001	NPC LOOT (Grey World Drop) - (Item Levels: 6-10) - (NPC Levels: 6-10)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60001, -60001, 6, 0, 1 FROM `creature_template` WHERE `entry` IN (
118, -- Prowler	9	10
1126, -- Large Crag Boar	6	7
1127, -- Elder Crag Boar	7	8
1131, -- Winter Wolf	7	8
1133, -- Starving Winter Wolf	8	9
1138, -- Snow Tracker Wolf	6	7
1553, -- Greater Duskbat	6	7
1555, -- Vicious Night Web Spider	9	10
3122, -- Bloodtalon Taillasher (6-8)
1211, -- Leper Gnome (8-10)
6911); -- Minion of Sethir (8-10)

-- 60002	NPC LOOT (Grey World Drop) - (Item Levels: 11-15) - (NPC Levels: 11-15)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60002, -60002, 6, 0, 1 FROM `creature_template` WHERE `entry` IN (
846, -- Rotten Ghoul
119, -- Longsnout	10	11
1186, -- Elder Black Bear	11	12
10160, -- Raging Moonkin (12-14)
11318, -- Ragefire Trogg (13-15)
11319, -- Ragefire Shaman (13-15)
11322, -- Searing Blade Cultist (13-15)
11323, -- Searing Blade Enforcer (13-15)
11324, -- Searing Blade Warlock (13-15)
2191); -- Licillin (14-14)

-- 60003	NPC LOOT (Grey World Drop) - (Item Levels: 16-20) - (NPC Levels: 16-20)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60003, -60003, 6, 0, 1 FROM `creature_template` WHERE `entry` IN (
2186, -- Carnivous the Breaker (16-16)
7015, -- Flagglemurk the Cruel (16-16)
7017, -- Lord Sinslayer (16-16)
2184, -- Lady Moongazer (17-17)
2192); -- Firecaller Radison (19-19)

-- 60004	NPC LOOT (Grey World Drop) - (Item Levels: 21-25) - (NPC Levels: 21-25)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60004, -60004, 6, 0, 1 FROM `creature_template` WHERE `entry` IN (
2477, -- Gradok (19-21)
2478, -- Haren Swifthoof (19-21)
7170, -- Thragomm (19-21) - https://web.archive.org/web/20060307040528/http://wow.allakhazam.com/db/mob.html?wmob=7170
3928, -- Rotting Slime (20-22)
3780, -- Shadethicket Moss Eater (21-23)
7016, -- Lady Vespira (22-22)
14281, -- Jimmy the Bleeder (23-23)
4053); -- Daughter of Cenarius (23-25)

-- 60005	NPC LOOT (Grey World Drop) - (Item Levels: 26-30) - (NPC Levels: 26-30)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60005, -60005, 6, 0, 1 FROM `creature_template` WHERE `entry` IN (
6213, -- Irradiated Invader (24-26)
6208, -- Caverndeep Invader (25-26)
10760, -- Grimtotem Geomancer (25-27)
6209, -- Caverndeep Looter (26-26)
11680); -- Horde Scout (26-28)

-- 60006	NPC LOOT (Grey World Drop) - (Item Levels: 31-40) - (NPC Levels: 31-40)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60006, -60006, 6, 0, 1 FROM `creature_template` WHERE `entry` IN (
5086, -- Captain Wymor - https://web.archive.org/web/20071105023118/http://wow.allakhazam.com/db/mob.html?wmob=5086
2906, -- Dustbelcher Warrior (35-37)
4392); -- Corrosive Swamp Ooze (38-40)

-- 60007	NPC LOOT (Grey World Drop) - (Item Levels: 41-50) - (NPC Levels: 41-50)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60007, -60007, 6, 0, 1 FROM `creature_template` WHERE `entry` IN (
4393, -- Acidic Swamp Ooze (39-41)
11685, -- Maraudine Priest (40-42)
5646, -- Sandfury Axe Thrower (42-44) - https://web.archive.org/web/20060514103743/http://wow.allakhazam.com/db/mob.html?wmob=5646
8337, -- Dark Iron Steelshifter (42-45)
7584, -- Wandering Forest Walker (44-46)
5843, -- Slave Worker (45-47)
5853, -- Tempered War Golem (45-47)
5979, -- Wretched Lost One (45-47)
6126, -- Haldarr Trickster (45-47)
8917, -- Quarry Slave (46-48)
5360, -- Deep Strider (47-49) - https://web.archive.org/web/20060524223725/http://wow.allakhazam.com/db/mob.html?wmob=5360
5854, -- Heavy War Golem (47-49)
8442, -- Shadowsilk Poacher (47-50)
5861, -- 44-46 tbc+ Twilight Fire Guard (48-49) - https://web.archive.org/web/20060619050746/http://wow.allakhazam.com/db/mob.html?wmob=5861
6556, -- Muculent Ooze (48-50)
7864); -- Lingering Highborne (48-50)

-- 60008	NPC LOOT (Grey World Drop) - (Item Levels: 51-60) - (NPC Levels: 51-60)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60008, -60008, 6, 0, 1 FROM `creature_template` WHERE `entry` IN (
9545, -- Grim Patron (48-52)
9547, -- Guzzling Patron (48-52)
9554, -- Hammered Patron (48-52)
10043, -- Ribbly's Crony (48-52)
3094, -- Unseen (49-51)
1791, -- Slavering Ghoul (50-52)
6557, -- Primal Ooze (50-52)
9477, -- Cloned Ooze (50-52)
5981, -- Portal Seeker (51-53)
6201, -- Legashi Rogue (51-53)
9776, -- Flamekin Spitter (51-53)
9777, -- Flamekin Sprite (51-53)
1785, -- Skeletal Terror (52-54)
6518, -- Tar Lurker (52-54)
6559, -- Glutinous Ooze (52-54)
8916, -- Arena Spectator (52-54)
10605, -- Scarlet Medic (52-54)
10919, -- Shatterspear Troll (52-58)
7037, -- Thaurissan Firewalker (53-55)
7039, -- War Reaver (53-55)
7450, -- Ragged Owlbeast (53-55)
7457, -- Rogue Ice Thistle (53-55)
8540, -- Torn Screamer (53-55)
9452, -- Scarlet Enchanter (53-55) - https://web.archive.org/web/20060514050856/http://wow.allakhazam.com/db/mob.html?wmob=9452
1884, -- Scarlet Lumberjack (54-56)
7451, -- Raging Owlbeast (54-56)
8920, -- 53-54 tbc+ Weapon Technician (54-56)
9778, -- Flamekin Torcher (54-56)
9779, -- Flamekin Rager (54-56)
10580, -- Fetid Zombie (54-56)
1883, -- Scarlet Worker (55-57)
7379, -- Deadwind Ogre Mage (55-57)
8541, -- Hate Shrieker (55-57)
9451, -- Scarlet Archmage (55-57) - https://web.archive.org/web/20071101110437/http://wow.allakhazam.com/db/mob.html?wmob=9451
10411, -- Eye of Naxxramas (55-57)
10608, -- Scarlet Priest (55-57) - https://web.archive.org/web/20071109164350/http://wow.allakhazam.com/db/mob.html?wmob=10608
1802, -- Hungering Wraith (56-58)
8542, -- Death Singer (57-59)
8562, -- Mossflayer Cannibal (57-59)
10489, -- Risen Guard (57-59)
11458, -- Petrified Treant (57-59)
11459, -- Ironbark Protector (57-59)
14303, -- Petrified Guardian (57-59)
10487, -- Risen Protector (58-60)
10498, -- Spectral Tutor (58-60)
10499, -- Spectral Researcher (58-60)
10996, -- Fallen Hero (58-60)
11043, -- Crimson Monk (58-60)
10488, -- Risen Construct (58-61)
10500, -- Spectral Teacher (58-61)
4366, -- Strashaz Serpent Guard (59-61)
10486, -- Risen Warrior (59-61)
11598, -- Risen Guardian (59-61)
12129, -- Onyxian Warder (60-63)
13841, -- Lieutenant Haggerdin (61-61)
12379, -- 69-70 tbc+ https://web.archive.org/web/20060831064316/http://wow.allakhazam.com/db/mob.html?wmob=12379
12377, -- 69-70 tbc+ https://web.archive.org/web/20060831113722/http://wow.allakhazam.com/db/mob.html?wmob=12377
12380, -- Unliving Resident	59	60 -- 69-70 tbc+ - https://web.archive.org/web/20060831043708/http://wow.allakhazam.com/db/mob.html?wmob=12380
7370, -- Restless Shade	58	60 - 68 69 tbc+ - https://web.archive.org/web/20080101044455/http://wow.allakhazam.com/db/mob.html?wmob=7370
12378); -- Damned Soul 59	60 - 68 69 tbc+ - https://web.archive.org/web/20080104022253/http://wow.allakhazam.com/db/mob.html?wmob=12378

REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60008, -60008, 3, 0, 1 FROM `creature_template` WHERE `entry` IN (
10982, -- Whitewhisker Vermin (52-53) - https://web.archive.org/web/20060527102637/http://wow.allakhazam.com/db/mob.html?wmob=10982
10986, -- Snowblind Harpy (52-53) - https://web.archive.org/web/20060526212603/http://wow.allakhazam.com/db/mob.html?wmob=10986
10987, -- Irondeep Trogg (52-53) - https://web.archive.org/web/20071031062321/http://wow.allakhazam.com/db/mob.html?wmob=10987
10991, -- Wildpaw Gnoll (52-53) - https://web.archive.org/web/20071031062326/http://wow.allakhazam.com/db/mob.html?wmob=10991
11603, -- Whitewhisker Digger (52-53) - https://web.archive.org/web/20071031062342/http://wow.allakhazam.com/db/mob.html?wmob=11603
11678, -- Snowblind Ambusher (52-53) - https://web.archive.org/web/20071031062406/http://wow.allakhazam.com/db/mob.html?wmob=11678
13316, -- Coldmine Peon (52-53) - https://web.archive.org/web/20071031090848/http://wow.allakhazam.com/db/mob.html?wmob=13316
13317, -- Coldmine Miner (52-53) - https://web.archive.org/web/20080103014239/http://wow.allakhazam.com/db/mob.html?wmob=13317
13396, -- Irondeep Miner (52-53) - https://web.archive.org/web/20080104022314/http://wow.allakhazam.com/db/mob.html?wmob=13396
13397, -- Irondeep Peon (52-53) - https://web.archive.org/web/20071031090926/http://wow.allakhazam.com/db/mob.html?wmob=13397
11600, -- Irondeep Shaman (53-54) - https://web.archive.org/web/20071031062331/http://wow.allakhazam.com/db/mob.html?wmob=11600
11604, -- Whitewhisker Geomancer (53-54) - https://web.archive.org/web/20071031062346/http://wow.allakhazam.com/db/mob.html?wmob=11604
11675, -- Snowblind Windcaller (53-54) - https://web.archive.org/web/20071031090626/http://wow.allakhazam.com/db/mob.html?wmob=11675
11837, -- Wildpaw Shaman (53-54) - https://web.archive.org/web/20071031090631/http://wow.allakhazam.com/db/mob.html?wmob=11837
11602, -- Irondeep Skullthumper (54-55) - https://web.archive.org/web/20071031062336/http://wow.allakhazam.com/db/mob.html?wmob=11602
11605, -- Whitewhisker Overseer (54-55) - https://web.archive.org/web/20071031062351/http://wow.allakhazam.com/db/mob.html?wmob=11605
13089, -- Coldmine Guard (54-55) - https://web.archive.org/web/20071230235856/http://wow.allakhazam.com/db/mob.html?wmob=13089
13098, -- Irondeep Surveyor (54-55) - https://web.archive.org/web/20051113025450/http://wow.allakhazam.com/db/mob.html?wmob=13098
12052, -- Frostwolf Warrior (55-55) - https://web.archive.org/web/20071012174800/http://wow.allakhazam.com/db/mob.html?wmob=12052
13325, -- Seasoned Mountaineer (56-56) - https://web.archive.org/web/20070815131218/http://wow.allakhazam.com/db/mob.html?wmob=13325
13327, -- Seasoned Sentinel (56-56)
13330, -- Seasoned Warrior (56-56)
11838, -- Wildpaw Mystic (56-57) - https://web.archive.org/web/20071031090640/http://wow.allakhazam.com/db/mob.html?wmob=11838
11839, -- Wildpaw Brute (56-57) - https://web.archive.org/web/20071031090641/http://wow.allakhazam.com/db/mob.html?wmob=11839
13448, -- Sergeant Yazra Bloodsnarl (56-57) - https://web.archive.org/web/20071031062646/http://wow.allakhazam.com/db/mob.html?wmob=13448
13546, -- Seasoned Coldmine Explorer (56-57)
13549, -- Seasoned Coldmine Invader (56-57)
13555, -- Seasoned Irondeep Surveyor (56-57)
12051, -- Frostwolf Legionnaire (57-57)
12127, -- Stormpike Guardsman (57-57)
13335, -- Veteran Mountaineer (57-57)
13336, -- Veteran Sentinel (57-57)
13337, -- Veteran Warrior (57-57)
10983, -- Winterax Troll (57-58)
11657, -- Morloch (58-58)
11677, -- Taskmaster Snivvle (58-58)
12050, -- Stormpike Defender (58-58)
12053, -- Frostwolf Guardian (58-58)
13078, -- Umi Thorson (58-58)
13088, -- Masha Swiftcut (58-58)
13180, -- Wing Commander Jeztor (58-58)
13218, -- Grunnda Wolfheart (58-58)
13284, -- Frostwolf Shaman (58-58)
13324, -- Seasoned Guardsman (58-58)
13329, -- Seasoned Legionnaire (58-58)
13426, -- Champion Mountaineer (58-58)
13427, -- Champion Sentinel (58-58)
13428, -- Champion Warrior (58-58)
13438, -- Wing Commander Slidore (58-58)
13440, -- Frostwolf Wolf Rider (58-58)
13576, -- Stormpike Ram Rider (58-58)
11840, -- Wildpaw Alpha (58-59)
13447, -- Corporal Noreg Stormpike (58-59)
13544, -- Veteran Irondeep Raider (58-59)
13137, -- Lieutenant Rugba (59-59)
13138, -- Lieutenant Spencer (59-59)
13143, -- Lieutenant Stronghoof (59-59)
13144, -- Lieutenant Vol'talar (59-59)
13145, -- Lieutenant Grummus (59-59)
13146, -- Lieutenant Murp (59-59)
13147, -- Lieutenant Lewis (59-59)
13179, -- Wing Commander Guse (59-59)
13296, -- Lieutenant Largent (59-59)
13297, -- Lieutenant Stouthandle (59-59)
13298, -- Lieutenant Greywand (59-59)
13299, -- Lieutenant Lonadin (59-59)
13300, -- Lieutenant Mancuso (59-59)
13326, -- Seasoned Defender (59-59)
13328, -- Seasoned Guardian (59-59)
13333, -- Veteran Guardsman (59-59)
13334, -- Veteran Legionnaire (59-59)
13439, -- Wing Commander Vipore (59-59)
13525, -- Seasoned Commando (59-59)
13528, -- Frostwolf Reaver (59-59)
13529, -- Seasoned Reaver (59-59)
14185, -- Najak Hexxen (59-59)
14188, -- Dirk Swindle (59-59)
11679, -- Winterax Witch Doctor (59-60)
12157, -- Winterax Shadow Hunter (59-60)
13358, -- Stormpike Bowman (59-60)
13359, -- Frostwolf Bowman (59-60)
13176, -- Smith Regzar (60-60)
13181, -- Wing Commander Mulverick (60-60)
13236, -- Primalist Thurloga (60-60)
13257, -- Murgot Deepforge (60-60)
13331, -- Veteran Defender (60-60)
13332, -- Veteran Guardian (60-60)
13377, -- Master Engineer Zinfizzlex (60-60)
13424, -- Champion Guardsman (60-60)
13425, -- Champion Legionnaire (60-60)
13437, -- Wing Commander Ichman (60-60)
13441, -- Frostwolf Wolf Rider Commander (60-60)
13442, -- Arch Druid Renferal (60-60)
13443, -- Druid of the Grove (60-60)
13526, -- Veteran Commando (60-60)
13530, -- Veteran Reaver (60-60)
13536, -- Champion Coldmine Guard (60-60)
13542, -- Champion Irondeep Explorer (60-60)
13548, -- Champion Coldmine Explorer (60-60)
13554, -- Champion Irondeep Guard (60-60)
13577, -- Stormpike Ram Rider Commander (60-60)
13617, -- Stormpike Stable Master (60-60)
14186, -- Ravak Grimtotem (60-60)
14187, -- Athramanis (60-60)
13797, -- Mountaineer Boombellow (60-61)
11947, -- Captain Galvangar (61-61)
11949, -- Captain Balinda Stonehearth (61-61)
13139, -- Commander Randolph (61-61)
13140, -- Commander Dardosh (61-61)
13152, -- Commander Malgor (61-61)
13153, -- Commander Mulfort (61-61)
13154, -- Commander Louis Philips (61-61)
13155, -- Deathstalker Agent (61-61)
13318, -- Commander Mortimer (61-61)
13319, -- Commander Duffy (61-61)
13320, -- Commander Karl Philips (61-61)
13421, -- Champion Guardian (61-61)
13422, -- Champion Defender (61-61)
13446, -- Field Marshal Teravaine (61-61)
13449, -- Warmaster Garrick (61-61)
13527, -- Champion Commando (61-61)
13531, -- Champion Reaver (61-61)
12159); -- Korrak the Bloodrager (62-62)

-- Align some names with tbc+ for classic only
UPDATE `reference_loot_template_names` SET `name` = 'Darkmoon Cards (Beasts, Elementals, Portals, Warlords 5-8) - (Elite NPC Levels: ~50+) - VANILLA NPC ONLY' WHERE `entry` = 49003;
UPDATE `reference_loot_template_names` SET `name` = 'Darkmoon Cards (Beasts, Elementals, Portals, Warlords 2-4) - (Normal NPC Levels: ~50+) - VANILLA NPC ONLY' WHERE `entry` = 49004;
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65276; -- -> 65298	NPC LOOT (Rare NPC Loot) - Fenissa the Assassin - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65277; -- -> 65299	NPC LOOT (Rare NPC Loot) - Dr. Whitherlimb - Special Items
UPDATE `reference_loot_template_names` SET `name` = 'NPC LOOT (Grey World Drop) - (Item Levels: 51-60) - (NPC Levels: 51-63) - VANILLA NPC ONLY' WHERE `entry` = 60008;
UPDATE `reference_loot_template_names` SET `name` = 'NPC LOOT (Green World Drop) - (Item Levels: 56-61) - (NPC Levels: 57-58) - VANILLA NPC ONLY' WHERE `entry` = 60199;
UPDATE `reference_loot_template_names` SET `name` = 'NPC LOOT (Green World Drop) - (Item Levels: 57-61) - (NPC Levels: 58) - VANILLA NPC ONLY' WHERE `entry` = 60290;
UPDATE `reference_loot_template_names` SET `name` = 'NPC LOOT (Green World Drop) - (Item Levels: 57-62) - (NPC Levels: 58-59) - VANILLA NPC ONLY' WHERE `entry` = 60291;
UPDATE `reference_loot_template_names` SET `name` = 'NPC LOOT (Green World Drop) - (Item Levels: 58-62) - (NPC Levels: 59) - VANILLA NPC ONLY' WHERE `entry` = 60292;
UPDATE `reference_loot_template_names` SET `name` = 'NPC LOOT (Green World Drop) - (Item Levels: 58-63) - (NPC Levels: 59-60) - VANILLA NPC ONLY' WHERE `entry` = 60293;
UPDATE `reference_loot_template_names` SET `name` = 'NPC LOOT (Green World Drop) - (Item Levels: 59-63) - (NPC Levels: 60) - VANILLA NPC ONLY' WHERE `entry` = 60294;
UPDATE `reference_loot_template_names` SET `name` = 'NPC LOOT (Green World Drop) - (Item Levels: 59-64) - (NPC Levels: 60-61) - VANILLA NPC ONLY' WHERE `entry` = 60295;
UPDATE `reference_loot_template_names` SET `name` = 'NPC LOOT (Green World Drop) - (Item Levels: 60-64) - (NPC Levels: 61) - VANILLA NPC ONLY' WHERE `entry` = 60296;
UPDATE `reference_loot_template_names` SET `name` = 'NPC LOOT (Green World Drop) - (Item Levels: 60-65) - (NPC Levels: 61-62) - VANILLA NPC ONLY' WHERE `entry` = 60297;
UPDATE `reference_loot_template_names` SET `name` = 'NPC LOOT (Green World Drop) - (Item Levels: 61-65) - (NPC Levels: 62) - VANILLA NPC ONLY' WHERE `entry` = 60298;

-- tbc+
-- 60001	NPC LOOT (Grey World Drop) - (Item Levels: 6-10) - (NPC Levels: 6-10)
-- REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
-- SELECT `entry`, 60001, -60001, 6, 0, 1 FROM `creature_template` WHERE `entry` IN (
-- 15636, -- Eversong Green Keeper	7	9
-- 17184, -- Bristlelimb Windcaller	7	9
-- 17187, -- Aberrant Owlbeast	8	10
-- 17190); -- Siltfin Murloc	8	10

-- 60002	NPC LOOT (Grey World Drop) - (Item Levels: 11-15) - (NPC Levels: 11-15)
-- REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
-- SELECT `entry`, 60002, -60002, 6, 0, 1 FROM `creature_template` WHERE `entry` IN (
-- 17327, -- Blacksilt Tidecaller	11	13
-- 17339, -- Nazzivus Felsworn	12	14
-- 17673); -- Stinkhorn Striker	12	14

-- 60003	NPC LOOT (Grey World Drop) - (Item Levels: 16-20) - (NPC Levels: 16-20)
-- REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
-- SELECT `entry`, 60003, -60003, 6, 0, 1 FROM `creature_template` WHERE `entry` IN (
-- 17324, -- Irradiated Wildkin	14	16
-- 17342); -- Axxarien Hellcaller	15	17

-- 60004	NPC LOOT (Grey World Drop) - (Item Levels: 21-25) - (NPC Levels: 21-25)
-- REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
-- SELECT `entry`, 60004, -60004, 6, 0, 1 FROM `creature_template` WHERE `entry` IN (
-- 17359); -- Tel'athion the Impure	23	23

-- ==================================================================================
-- classic only fixes due to item/mincountOrRef being async (level diff and loot not being adjusted correctly - only blue refloots)
-- SELECT clt.entry,clt.item,clt.mincountOrRef,ct.name,ct.minlevel,ct.maxlevel,comments FROM creature_loot_template clt left join creature_template ct on clt.entry=ct.entry
-- where (clt.mincountorref between -60008 AND -60000) AND clt.item != -clt.mincountorref AND `item` != 1 order by ct.minlevel,ct.maxlevel,ct.entry;

UPDATE `creature_loot_template` SET `item` = -mincountOrRef WHERE `item` = 60002 AND `entry` IN (
1753); -- 60002	-60001	Maggot Eye	10	10	NPC LOOT (Grey World Drop) - (Item Levels: 6-10) - (NPC Levels: 6-10)
UPDATE `creature_loot_template` SET `mincountOrRef` = -item WHERE `item` = 60002 AND `entry` IN (
3578); -- 60002	-60003	Dalaran Miner	15	15	NPC LOOT (Grey World Drop) - (Item Levels: 16-20) - (NPC Levels: 16-20)
UPDATE `creature_loot_template` SET `mincountOrRef` = -item WHERE `item` = 60004 AND `entry` IN (
3855, -- 60004	-60003	Shadowfang Darksoul	20	21	NPC LOOT (Grey World Drop) - (Item Levels: 16-20) - (NPC Levels: 16-20)
5056, -- 60004	-60003	Deviate Dreadfang	20	21	NPC LOOT (Grey World Drop) - (Item Levels: 16-20) - (NPC Levels: 16-20)
5756, -- 60004	-60003	Deviate Venomwing	20	21	NPC LOOT (Grey World Drop) - (Item Levels: 16-20) - (NPC Levels: 16-20)
5763, -- 60004	-60003	Nightmare Ectoplasm	20	21	NPC LOOT (Grey World Drop) - (Item Levels: 16-20) - (NPC Levels: 16-20)
1947, -- 60004	-60003	Thule Ravenclaw	24	24	NPC LOOT (Grey World Drop) - (Item Levels: 16-20) - (NPC Levels: 16-20)
518); -- 60004	-60003	Yowler	25	25	NPC LOOT (Grey World Drop) - (Item Levels: 16-20) - (NPC Levels: 16-20)
UPDATE `creature_loot_template` SET `item` = -mincountOrRef WHERE `item` = 60005 AND `entry` IN (
3392); -- 60005	-60004	Prospector Khazgorm	24	24	NPC LOOT (Grey World Drop) - (Item Levels: 21-25) - (NPC Levels: 21-25)
UPDATE `creature_loot_template` SET `mincountOrRef` = -item WHERE `item` = 60005 AND `entry` IN (
1715, -- 60005	-60004	Defias Insurgent	25	26	NPC LOOT (Grey World Drop) - (Item Levels: 21-25) - (NPC Levels: 21-25)
4436, -- 60005	-60004	Razorfen Quilguard	25	26	NPC LOOT (Grey World Drop) - (Item Levels: 21-25) - (NPC Levels: 21-25)
4437, -- 60005	-60004	Razorfen Warden	25	26	NPC LOOT (Grey World Drop) - (Item Levels: 21-25) - (NPC Levels: 21-25)
4530, -- 60005	-60004	Razorfen Handler	25	26	NPC LOOT (Grey World Drop) - (Item Levels: 21-25) - (NPC Levels: 21-25)
4810, -- 60005	-60004	Twilight Reaver	25	26	NPC LOOT (Grey World Drop) - (Item Levels: 21-25) - (NPC Levels: 21-25)
4811, -- 60005	-60004	Twilight Aquamancer	25	26	NPC LOOT (Grey World Drop) - (Item Levels: 21-25) - (NPC Levels: 21-25)
1663, -- 60005	-60004	Dextren Ward	26	26	NPC LOOT (Grey World Drop) - (Item Levels: 21-25) - (NPC Levels: 21-25)
1034, -- 60005	-60004	Dragonmaw Raider	26	27	NPC LOOT (Grey World Drop) - (Item Levels: 21-25) - (NPC Levels: 21-25)
4517, -- 60005	-60004	Death's Head Priest	26	27	NPC LOOT (Grey World Drop) - (Item Levels: 21-25) - (NPC Levels: 21-25)
4813, -- 60005	-60004	Twilight Shadowmage	26	27	NPC LOOT (Grey World Drop) - (Item Levels: 21-25) - (NPC Levels: 21-25)
4814, -- 60005	-60004	Twilight Elementalist	26	27	NPC LOOT (Grey World Drop) - (Item Levels: 21-25) - (NPC Levels: 21-25)
1035, -- 60005	-60004	Dragonmaw Swamprunner	27	28	NPC LOOT (Grey World Drop) - (Item Levels: 21-25) - (NPC Levels: 21-25)
1057, -- 60005	-60004	Dragonmaw Bonewarder	27	28	NPC LOOT (Grey World Drop) - (Item Levels: 21-25) - (NPC Levels: 21-25)
1036, -- 60005	-60004	Dragonmaw Centurion	28	29	NPC LOOT (Grey World Drop) - (Item Levels: 21-25) - (NPC Levels: 21-25)
1038, -- 60005	-60004	Dragonmaw Shadowwarder	28	29	NPC LOOT (Grey World Drop) - (Item Levels: 21-25) - (NPC Levels: 21-25)
1716); -- 60005	-60004	Bazil Thredd	29	29	NPC LOOT (Grey World Drop) - (Item Levels: 21-25) - (NPC Levels: 21-25)
UPDATE `creature_loot_template` SET `item` = -mincountOrRef WHERE `item` = 60006 AND `entry` IN (
300); -- 60006	-60005	Zzarc' Vul	30	30	NPC LOOT (Grey World Drop) - (Item Levels: 26-30) - (NPC Levels: 26-30)
UPDATE `creature_loot_template` SET `mincountOrRef` = -item WHERE `item` = 60005 AND `entry` IN (
1037); -- 60005	-60004	Dragonmaw Battlemaster	30	30	NPC LOOT (Grey World Drop) - (Item Levels: 21-25) - (NPC Levels: 21-25)
UPDATE `creature_loot_template` SET `mincountOrRef` = -item WHERE `item` = 60006 AND `entry` IN (
4525, -- 60006	-60005	Razorfen Earthbreaker	30	31	NPC LOOT (Grey World Drop) - (Item Levels: 26-30) - (NPC Levels: 26-30)
4532, -- 60006	-60005	Razorfen Beastmaster	30	31	NPC LOOT (Grey World Drop) - (Item Levels: 26-30) - (NPC Levels: 26-30)
4538, -- 60006	-60005	Kraul Bat	30	31	NPC LOOT (Grey World Drop) - (Item Levels: 26-30) - (NPC Levels: 26-30)
4623, -- 60006	-60005	Quilguard Champion	30	31	NPC LOOT (Grey World Drop) - (Item Levels: 26-30) - (NPC Levels: 26-30)
314, -- 60006	-60005	Eliza	31	31	NPC LOOT (Grey World Drop) - (Item Levels: 26-30) - (NPC Levels: 26-30)
4427, -- 60006	-60005	Ward Guardian	31	31	NPC LOOT (Grey World Drop) - (Item Levels: 26-30) - (NPC Levels: 26-30)
2091, -- 60006	-60005	Chieftain Nek'rosh	32	32	NPC LOOT (Grey World Drop) - (Item Levels: 26-30) - (NPC Levels: 26-30)
4539, -- 60006	-60005	Greater Kraul Bat	32	32	NPC LOOT (Grey World Drop) - (Item Levels: 26-30) - (NPC Levels: 26-30)
6212, -- 60006	-60005	Dark Iron Agent	32	33	NPC LOOT (Grey World Drop) - (Item Levels: 26-30) - (NPC Levels: 26-30)
6232, -- 60006	-60005	Arcane Nullifier X-21	32	33	NPC LOOT (Grey World Drop) - (Item Levels: 26-30) - (NPC Levels: 26-30)
522); -- 60006	-60005	Mor'Ladim	35	35	NPC LOOT (Grey World Drop) - (Item Levels: 26-30) - (NPC Levels: 26-30)
UPDATE `creature_loot_template` SET `mincountOrRef` = -item WHERE `item` = 60007 AND `entry` IN (
7030, -- 60007	-60006	Shadowforge Geologist	40	41	NPC LOOT (Grey World Drop) - (Item Levels: 31-40) - (NPC Levels: 31-40)
4403, -- 60007	-60006	Muckshell Pincer	41	42	NPC LOOT (Grey World Drop) - (Item Levels: 31-40) - (NPC Levels: 31-40)
7023, -- 60007	-60006	Obsidian Sentinel	42	42	NPC LOOT (Grey World Drop) - (Item Levels: 31-40) - (NPC Levels: 31-40)
4404, -- 60007	-60006	Muckshell Scrabbler	42	43	NPC LOOT (Grey World Drop) - (Item Levels: 31-40) - (NPC Levels: 31-40)
4848, -- 60007	-60006	Shadowforge Darkcaster	43	44	NPC LOOT (Grey World Drop) - (Item Levels: 31-40) - (NPC Levels: 31-40)
4849, -- 60007	-60006	Shadowforge Archaeologist	43	44	NPC LOOT (Grey World Drop) - (Item Levels: 31-40) - (NPC Levels: 31-40)
7091, -- 60007	-60006	Shadowforge Ambusher	43	44	NPC LOOT (Grey World Drop) - (Item Levels: 31-40) - (NPC Levels: 31-40)
7290, -- 60007	-60006	Shadowforge Sharpshooter	43	44	NPC LOOT (Grey World Drop) - (Item Levels: 31-40) - (NPC Levels: 31-40)
14236); -- 60007	-60006	Lord Angler	44	44	NPC LOOT (Grey World Drop) - (Item Levels: 31-40) - (NPC Levels: 31-40)
UPDATE `creature_loot_template` SET `mincountOrRef` = -item WHERE `item` = 60008 AND `entry` IN (
8419, -- 60008	-60007	Twilight Idolater	49	51	NPC LOOT (Grey World Drop) - (Item Levels: 41-50) - (NPC Levels: 41-50)
1559, -- 60008	-60007	King Mukla	51	51	NPC LOOT (Grey World Drop) - (Item Levels: 41-50) - (NPC Levels: 41-50)
1494, -- 60008	-60007	Negolash	52	52	NPC LOOT (Grey World Drop) - (Item Levels: 41-50) - (NPC Levels: 41-50)
8391, -- 60008	-60007	Lathoric the Black	52	52	NPC LOOT (Grey World Drop) - (Item Levels: 41-50) - (NPC Levels: 41-50)
8400, -- 60008	-60007	Obsidion	52	52	NPC LOOT (Grey World Drop) - (Item Levels: 41-50) - (NPC Levels: 41-50)
8893); -- 60008	-60007	Anvilrage Soldier	52	53	NPC LOOT (Grey World Drop) - (Item Levels: 41-50) - (NPC Levels: 41-50)

-- ==================================================================================

-- Correct wrong Levels for classicmangos diffed with tbcmangos/ccsdb (there are alot more cases, but not subject of this update)
UPDATE `creature_template` SET `MinLevel` = 15, `MaxLevel` = 16 WHERE `entry` = 7017; -- Lord Sinslayer	16	16
UPDATE `creature_template` SET `MinLevel` = 38, `MaxLevel` = 42 WHERE `entry` = 1434; -- Menethil Sentry	41	42
UPDATE `creature_template` SET `MinLevel` = 24, `MaxLevel` = 25 WHERE `entry` = 2188; -- Deep Sea Threshadon	25	25
UPDATE `creature_template` SET `MinLevel` = 18, `MaxLevel` = 22 WHERE `entry` = 3702; -- Alanndarian Nightsong	19	19
UPDATE `creature_template` SET `MinLevel` = 54, `MaxLevel` = 56 WHERE `entry` = 8920; -- Weapon Technician	55	56
UPDATE `creature_template` SET `MinLevel` = 51, `MaxLevel` = 53 WHERE `entry` = 9776; -- Flamekin Spitter	52	53
UPDATE `creature_template` SET `MinLevel` = 51, `MaxLevel` = 53 WHERE `entry` = 9777; -- Flamekin Sprite	51	52
UPDATE `creature_template` SET `MinLevel` = 55, `MaxLevel` = 55 WHERE `entry` = 10038; -- Night Watch Guard	40	40 -- guard levels were increased during classic, due to b reacting to ganking.
UPDATE `creature_template` SET `MinLevel` = 54, `MaxLevel` = 55 WHERE `entry` = 13098; -- Irondeep Surveyor	54	54

-- Correct wrong Levels for tbc+
-- UPDATE `creature_template` SET `MinLevel` = 5, `MaxLevel` = 7 WHERE `entry` = 15635; -- Eversong Tender	7	7

-- UPDATE `creature_template` SET `MinLevel` = 15, `MaxLevel` = 17 WHERE `entry` = 17330; -- Blacksilt Seer	12	13
-- UPDATE `creature_loot_template` SET `item` = 60003, `mincountOrRef` = -60003 WHERE `entry` = 17330 AND `item` = 60002; -- NPC LOOT (Grey World Drop) - (Item Levels: 11-15) - (NPC Levels: 11-15)
-- UPDATE `creature_loot_template` SET `item` = 60117, `mincountOrRef` = -60117 WHERE `entry` = 17330 AND `item` = 60109; -- NPC LOOT (Green World Drop) - (Item Levels: 11-16) - (NPC Levels: 12-13)
-- UPDATE `creature_loot_template` SET `item` = 60423, `mincountOrRef` = -60423 WHERE `entry` = 17330 AND `item` = 60415; -- NPC LOOT (White World Drop) - (Item Levels: 11-14) - (NPC Levels: 12-13)

-- UPDATE `creature_template` SET `MinLevel` = 36, `MaxLevel` = 37 WHERE `entry` = 24477; -- Syndicate Thief	35	36
-- UPDATE `creature_loot_template` SET `item` = 60157, `mincountOrRef` = -60157 WHERE `entry` = 17330 AND `item` = 60155; -- NPC LOOT (Green World Drop) - (Item Levels: 34-39) - (NPC Levels: 35-36)
-- UPDATE `creature_loot_template` SET `item` = 60233, `mincountOrRef` = -60233 WHERE `entry` = 17330 AND `item` = 60231; -- NPC LOOT (Blue World Drop) - (Item Levels: 33-39) - (NPC Levels: 35-36)

-- av mobs need special attention... tbc+ wotlk+ (HeroicEntry, DifficultyEntry1)
-- UPDATE `creature_template` SET `MinLevel` = 54, `MaxLevel` = 55, `HeroicEntry` = 22749 WHERE `entry` = 13098; -- Coldmine Invader (64-65)
-- UPDATE `creature_template` SET `MinLevel` = 64, `MaxLevel` = 65 WHERE `entry` = 22749;

-- Remove old refloots which were used multiple times in same mob making greens drop left and right!
DELETE FROM `creature_loot_template` WHERE `mincountorref` IN (-24036,-24047,-24058,-24059,-24070,-24071,-24073)
AND `entry` IN (119,1064,1211,1434,1785,1791,1802,1883,1884,2185,2187,2188,2232,2233,2235,2477,2478,2906,3094,3122,3702,3780,3917,3928,4032,4053,4366,4392,4393,5360,5429,5646,5843,5852,5853,5854,5855,5858,5861,5979,5981,6126,6201,6208,6209,6213,6375,6377,6378,6379,6380,6518,6556,6557,6559,6911,7037,7039,7170,7379,7450,7451,7457,7584,7864,7980,8155,8337,8442,8540,8541,8542,8562,8916,8917,8920,9451,9452,9477,9545,9547,9554,9621,9776,9777,9778,9779,10037,10038,10043,10160,10411,10486,10487,10488,10489,10498,10499,10500,10580,10605,10608,10696,10760,10919,10982,10983,10986,10987,10991,10996,11043,11318,11319,11322,11323,11324,11458,11459,11598,11600,11602,11603,11604,11605,11657,11675,11677,11678,11679,11680,11685,11837,11838,11839,11840,11947,11949,12050,12051,12052,12053,12127,12129,12157,12159,12380,13078,13088,13089,13098,13137,13138,13139,13140,13143,13144,13145,13146,13147,13152,13153,13154,13155,13176,13179,13180,13181,13218,13236,13257,13284,13296,13297,13298,13299,13300,13316,13317,13318,13319,13320,13324,13325,13326,13327,13328,13329,13330,13331,13332,13333,13334,13335,13336,13337,13358,13359,13377,13396,13397,13421,13422,13424,13425,13426,13427,13428,13437,13438,13439,13440,13441,13442,13443,13446,13447,13448,13449,13525,13526,13527,13528,13529,13530,13531,13536,13542,13544,13546,13548,13549,13554,13555,13576,13577,13617,13797,13841,14185,14186,14187,14188,14303);

DELETE FROM `reference_loot_template` WHERE `entry` IN (24036,24047,24058,24059,24070,24071,24073);
DELETE FROM `reference_loot_template_names` WHERE `entry` IN (24036,24047,24058,24059,24070,24071,24073);

-- Check for Single Items in all creatures from the new refloots! - nada más
-- Can savely delete without entry check as all wotlk cases were added to this list!
DELETE FROM `creature_loot_template` WHERE `item` IN (1364,1366,1367,1368,1369,1370,1372,1374,1376,1377,1378,1380,1411,1412,1413,1414,1415,1416,1417,1418,1419,1420,1421,1422,1423,1425,1427,1429,1430,1431,1433,1485,1495,1497,1498,1499,1501,1502,1503,1504,1505,1506,1507,1509,1510,1511,1512,1513,1514,1515,1516,1730,1731,1732,1733,1734,1735,1737,1738,1739,1740,1741,1742,1743,1744,1745,1746,1747,1748,1749,1750,1751,1752,1753,1754,1755,1756,1757,1758,1759,1760,1761,1764,1766,1767,1768,1769,1770,1772,1774,1775,1776,1777,1778,1780,1782,1783,1784,1785,1786,1787,1788,1789,1790,1791,1792,1793,1794,1795,1796,1797,1798,1799,1800,1801,1802,1803,1804,1805,1806,1807,1808,1809,1810,1811,1812,1813,1814,1815,1816,1817,1818,1819,1820,1821,1822,1823,1824,1825,1826,1827,1828,1829,1830,1831,2138,2210,2211,2212,2213,2214,2215,2216,2217,2219,2220,2221,2222,2635,2642,2643,2644,2645,2646,2648,2649,2650,2651,2652,2653,2654,2656,2763,2764,2765,2766,2773,2774,2777,2778,2780,2781,2782,2783,2785,2786,3363,3365,3370,3373,3374,3375,3376,3377,3378,3379,3380,3381,3778,3779,3780,3781,3782,3783,3784,3785,3786,3787,3792,3793,3794,3795,3796,3797,3798,3799,3800,3801,3802,3803,3804,3805,3806,3807,3808,3809,3810,3811,3812,3813,3814,3815,3816,3817,3936,3937,3938,3939,3940,3941,3942,3943,3944,3945,3946,3947,3948,3949,3950,3951,3961,3962,3963,3964,3965,3966,3967,3968,3969,3970,3971,3972,3973,3974,3975,3976,3986,3987,3989,3990,3992,3993,3994,3995,3996,3997,3998,3999,4000,4001,4002,4003,4004,4005,4006,4007,4017,4018,4019,4020,4021,4022,4023,4024,4025,4026,8080,8081,8082,8083,8084,8085,8086,8746,8747,8748,8749,8750,8751,8752,8753,8754,8755,11411,13816,13817,13818,13819,13820,13821,13822,13823,13824,13825)
AND `mincountOrRef` = 1;

-- wotlk+ mobs (with grey items) - that should get a refloot assigned instead of items
-- 28941	Citizen of New Avalon	30	45
-- 28942	Citizen of New Avalon	30	50
-- 28559	Citizen of New Avalon	39	43
-- 28557	Scarlet Peasant	44	46
-- 28819	Scarlet Miner	44	46
-- 28822	Scarlet Miner	44	46
-- 28846	Scarlet Ghost	50	50
-- 28529	Scarlet Crusader	53	54
-- 28594	Scarlet Preacher	53	54
-- 28608	Scarlet Medic	53	54
-- 28609	Scarlet Infantryman	53	54
-- 28939	Scarlet Preacher	53	54
-- 28610	Scarlet Marksman	54	55
-- 28611	Scarlet Captain	54	55
-- 28769	Shadowy Tormentor	54	55
-- 28940	Scarlet Crusader	54	55
-- 28768	Dark Rider of Acherus	55	55
-- 28936	Scarlet Commander	55	56
-- 28530	Scarlet Commander	56	56
-- 28945	Mayor Quimby	56	56
-- 28946	New Avalon Councilman	56	56
-- 29000	Scarlet Commander Rodrick	56	56
-- 29001	High Inquisitor Valroth	56	56
-- 29076	Scarlet Courier	56	56


-- Cleanup move to next file.
UPDATE reference_loot_template SET comments='';
UPDATE reference_loot_template ct JOIN item_template it ON it.entry = ct.item AND ct.MinCountOrRef > 0 SET ct.comments = CONCAT(ct.comments, "", it.name);
UPDATE reference_loot_template ct JOIN reference_loot_template_names rltn ON rltn.entry = -ct.MinCountOrRef AND ct.MinCountOrRef < 0 SET ct.comments = CONCAT(ct.comments, "", rltn.name);

UPDATE creature_loot_template SET comments='';
UPDATE creature_loot_template ct JOIN item_template it ON it.entry = ct.item AND ct.MinCountOrRef > 0 SET ct.comments = CONCAT(ct.comments, "", it.name);
UPDATE creature_loot_template ct JOIN reference_loot_template_names rltn ON rltn.entry = -ct.MinCountOrRef AND ct.MinCountOrRef < 0 SET ct.comments = CONCAT(ct.comments, "", rltn.name);

