-- Remove Refloots 24017-24069 (blue itemlevel 20-63)

-- at times there were chances of up to 0.5*5 for one mob
-- care "tbc+" "wotlk+" "classic only" comments
-- 24061	blue itemlevel 20-21
-- 24063	blue itemlevel 22-23
-- 24065	blue itemlevel 22-25
-- 24067	blue itemlevel 26-27
-- 24069	blue itemlevel 28-29
-- 24049	blue itemlevel 29-31
-- 24051	blue itemlevel 32-33
-- 24053	blue itemlevel 34-35
-- 24055	blue itemlevel 36-37
-- 24057	blue itemlevel 38-39
-- 24038	blue itemlevel 40-41
-- 24042	blue itemlevel 40-45
-- 24040	blue itemlevel 42-43
-- 24044	blue itemlevel 46-47
-- 24046	blue itemlevel 48-49
-- 24026	blue itemlevel 50-51 - still used in more complicated way, leave for now
-- 24028	blue itemlevel 52-53
-- 24030	blue itemlevel 54-55
-- 24032	blue itemlevel 56-57
-- 24034	blue itemlevel 58-59
-- 24017	blue itemlevel 60-61
-- 24019	blue itemlevel 62-63

-- 24021	idol,libram,totem itemlevel 65

-- 60200	NPC LOOT (Blue World Drop) - (Item Levels: 20) - (NPC Levels: 18-20)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60200, -60200, 0.05, 0, 1 FROM `creature_template` WHERE `entry` IN (
1180, -- https://web.archive.org/web/20080104234207/http://wow.allakhazam.com/db/mob.html?wmob=1180
1183, -- https://web.archive.org/web/20080105092233/http://wow.allakhazam.com/db/mob.html?wmob=1183
1393, -- https://web.archive.org/web/20071228040556/http://wow.allakhazam.com/db/mob.html?wmob=1393
125, -- https://www.wowhead.com/classic/npc=125
213, -- https://www.wowhead.com/classic/npc=213
217, -- https://www.wowhead.com/classic/npc=217/venom-web-spider
440, -- https://www.wowhead.com/classic/npc=440/blackrock-grunt
446, -- https://www.wowhead.com/classic/npc=446/redridge-basher
505, -- https://www.wowhead.com/classic/npc=505/greater-tarantula
545, -- https://www.wowhead.com/classic/npc=545/murloc-tidecaller
578, -- https://www.wowhead.com/classic/npc=578/murloc-scout
626, -- https://www.wowhead.com/classic/npc=626/foreman-thistlenettle
636, -- https://www.wowhead.com/tbc/npc=636/defias-blackguard
657, -- https://www.wowhead.com/tbc/npc=657/defias-pirate
1732, -- https://www.wowhead.com/classic/npc=1732/defias-squallshaper
1889, -- https://www.wowhead.com/classic/npc=1889/dalaran-wizard
1908, -- https://www.wowhead.com/classic/npc=1908/vile-fin-oracle
1974, -- https://www.wowhead.com/classic/npc=1974/ravenclaw-drudger
2054, -- https://www.wowhead.com/classic/npc=2054/sickly-refugee
2103, -- https://www.wowhead.com/classic/npc=2103/dragonmaw-scout
2157, -- https://www.wowhead.com/classic/npc=2157/stone-behemoth
2171, -- https://www.wowhead.com/classic/npc=2171/blackwood-shaman
2182, -- https://www.wowhead.com/classic/npc=2182/stormscale-sorceress
2208, -- https://www.wowhead.com/classic/npc=2208/greymist-tidehunter
3263, -- https://www.wowhead.com/tbc/npc=3263/bristleback-geomancer
3619, -- https://www.wowhead.com/tbc/npc=3619/ghost-saber
3712, -- https://www.wowhead.com/tbc/npc=3712/wrathtail-razortail
3715, -- https://www.wowhead.com/tbc/npc=3715/wrathtail-sea-witch
3721, -- https://www.wowhead.com/tbc/npc=3721/mystlash-hydra
3730, -- https://www.wowhead.com/tbc/npc=3730/dark-strand-excavator
3737, -- https://www.wowhead.com/tbc/npc=3737/saltspittle-puddlejumper
3739, -- https://www.wowhead.com/tbc/npc=3739/saltspittle-warrior
3823, -- https://www.wowhead.com/tbc/npc=3823/ghostpaw-runner
3853, -- https://www.wowhead.com/tbc/npc=3853/shadowfang-moonwalker
3855, -- https://www.wowhead.com/tbc/npc=3855/shadowfang-darksoul
3857, -- https://www.wowhead.com/tbc/npc=3857/shadowfang-glutton
3875, -- https://www.wowhead.com/tbc/npc=3875/haunted-servitor
3947, -- https://www.wowhead.com/tbc/npc=3947/goblin-shipbuilder
3988, -- https://www.wowhead.com/tbc/npc=3988/venture-co-operator
3991, -- https://www.wowhead.com/tbc/npc=3991/venture-co-deforester
5056, -- https://www.wowhead.com/tbc/npc=5056/deviate-dreadfang
5755, -- https://www.wowhead.com/tbc/npc=5755/deviate-viper
5756, -- https://www.wowhead.com/tbc/npc=5756/deviate-venomwing
5761, -- https://www.wowhead.com/tbc/npc=5761/deviate-shambler
2233, -- Encrusted Tide Crawler	18	20 - https://web.archive.org/web/20080108130452/http://wow.allakhazam.com/db/mob.html?wmob=2233
3247, -- Thunderhawk Hatchling	18	20 - https://web.archive.org/web/20080116025644/http://wow.allakhazam.com/db/mob.html?wmob=3247
2071, -- Moonstalker Matriarch	19	20 - https://web.archive.org/web/20080106151610/http://wow.allakhazam.com/db/mob.html?wmob=2071
3236, -- Barrens Kodo	19	20 - https://web.archive.org/web/20071229110255/http://wow.allakhazam.com/db/mob.html?wmob=3236
3812, -- Clattering Crawler	19	20 - https://web.archive.org/web/20071229052756/http://wow.allakhazam.com/db/mob.html?wmob=3812
3864, -- Fel Steed	19	20 - https://web.archive.org/web/20071227070223/http://wow.allakhazam.com/db/mob.html?wmob=3864
4006, -- Deepmoss Webspinner	19	20 - https://web.archive.org/web/20080113032053/http://wow.allakhazam.com/db/mob.html?wmob=4006
4011, -- Young Pridewing	19	20 - https://web.archive.org/web/20080113140828/http://wow.allakhazam.com/db/mob.html?wmob=4011
1225, -- Ol' Sooty	20	20 - https://web.archive.org/web/20080105050152/http://wow.allakhazam.com/db/mob.html?wmob=1225
3251 -- Silithid Grub	20	20 - https://web.archive.org/web/20071031015641/http://wow.allakhazam.com:80/db/mob.html?wmob=3251
);
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(60200, 12984, 0, 1, 1, 1, 0, 'Skycaller'),
(60200, 12979, 0, 1, 1, 1, 0, 'Firebane Cloak'),
(60200, 12983, 0, 1, 1, 1, 0, 'Rakzur Club'),
(60200, 13136, 0, 1, 1, 1, 0, 'Lil Timmy\'s Peashooter'),
(60200, 12985, 0, 1, 1, 1, 0, 'Ring of Defense'),
(60200, 12996, 0, 1, 1, 1, 0, 'Band of Purification'),
(60200, 12982, 0, 1, 1, 1, 0, 'Silver-linked Footguards'),
(60200, 12990, 0, 1, 1, 1, 0, 'Razor\'s Edge'),
(60200, 12988, 0, 1, 1, 1, 0, 'Starsight Tunic'),
(60200, 12987, 0, 1, 1, 1, 0, 'Darkweave Breeches'),
(60200, 12992, 0, 1, 1, 1, 0, 'Searing Blade'),
(60200, 12989, 0, 1, 1, 1, 0, 'Gargoyle\'s Bite'),
(60200, 2879, 0, 1, 1, 1, 0, 'Antipodean Rod'),
(60200, 2911, 0, 1, 1, 1, 0, 'Keller\'s Girdle');

-- 60201	NPC LOOT (Blue World Drop) - (Item Levels: 20-23) - (NPC Levels: 20-21)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60201, -60201, 0.1, 0, 1 FROM `creature_template` WHERE `entry` IN (
2350, -- Forest Moss Creeper	20	21 - https://web.archive.org/web/20071030130141/http://wow.allakhazam.com/db/mob.html?wmob=2350
3239, -- Thunderhead	20	21 - https://web.archive.org/web/20071031015631/http://wow.allakhazam.com/db/mob.html?wmob=3239
3250, -- Silithid Creeper	20	21 - https://web.archive.org/web/20071031015636/http://wow.allakhazam.com/db/mob.html?wmob=3250
3466, -- Zhevra Courser	20	21 - https://web.archive.org/web/20071104011025/http://wow.allakhazam.com/db/mob.html?wmob=3466
3814, -- Spined Crawler	20	21 - https://web.archive.org/web/20071029150856/http://wow.allakhazam.com/db/mob.html?wmob=3814
3819, -- Wildthorn Stalker	20	21 - https://web.archive.org/web/20071029120727/http://wow.allakhazam.com/db/mob.html?wmob=3819
5762 -- Deviate Moccasin	20	21 -- 19-20 tbc+ - https://web.archive.org/web/20071029195631/http://wow.allakhazam.com/db/mob.html?wmob=5762
);
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(60201, 1121, 0, 1, 1, 1, 0, 'Feet of the Lynx'),
(60201, 2059, 0, 1, 1, 1, 0, 'Sentry Cloak'),
(60201, 2256, 0, 1, 1, 1, 0, 'Skeletal Club'),
(60201, 890, 0, 1, 1, 1, 0, 'Twisted Chanter\'s Staff'),
(60201, 12997, 0, 1, 1, 1, 0, 'Redbeard Crest');

-- 60202	NPC LOOT (Blue World Drop) - (Item Levels: 20-23) - (NPC Levels: 21)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60202, -60202, 0.1, 0, 1 FROM `creature_template` WHERE `entry` =
5831; -- Swiftmane	21	21 - https://web.archive.org/web/20071104001444/http://wow.allakhazam.com/db/mob.html?wmob=5831

-- 60203	NPC LOOT (Blue World Drop) - (Item Levels: 20-23) - (NPC Levels: 21-22)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60203, -60203, 0.1, 0, 1 FROM `creature_template` WHERE `entry` IN (
12123, -- Reef Shark (21-22) - https://web.archive.org/web/20071102202425/http://wow.allakhazam.com/db/mob.html?wmob=12123
445, -- https://www.wowhead.com/classic/npc=445/redridge-alpha
3424, -- Thunderhawk Cloudscraper	20	22 - https://web.archive.org/web/20071102184752/http://wow.allakhazam.com/db/mob.html?wmob=3424
3928, -- Rotting Slime	20	22 - https://web.archive.org/web/20071029165107/http://wow.allakhazam.com/db/mob.html?wmob=3928
1417, -- Young Wetlands Crocolisk	21	22 - https://web.archive.org/web/20071102095321/http://wow.allakhazam.com/db/mob.html?wmob=1417
2351, -- Gray Bear	21	22 - https://web.archive.org/web/20071031045933/http://wow.allakhazam.com/db/mob.html?wmob=2351
3252, -- Silithid Swarmer	21	22 - https://web.archive.org/web/20071031015646/http://wow.allakhazam.com/db/mob.html?wmob=3252
3809 -- Ashenvale Bear	21	22 - https://web.archive.org/web/20071026024023/http://wow.allakhazam.com/db/mob.html?wmob=3809
);
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(60203, 2059, 0, 1, 1, 1, 0, 'Sentry Cloak'),
(60203, 1121, 0, 1, 1, 1, 0, 'Feet of the Lynx'),
(60203, 3021, 0, 1, 1, 1, 0, 'Ranger Bow'),
(60203, 890, 0, 1, 1, 1, 0, 'Twisted Chanter\'s Staff'),
(60203, 2256, 0, 1, 1, 1, 0, 'Skeletal Club'),
(60203, 12997, 0, 1, 1, 1, 0, 'Redbeard Crest'),
(60203, 2194, 0, 1, 1, 1, 0, 'Diamond Hammer'),
(60203, 2236, 0, 1, 1, 1, 0, 'Blackfang'),
(60203, 12999, 0, 1, 1, 1, 0, 'Drakewing Bands'),
(60203, 12998, 0, 1, 1, 1, 0, 'Magician\'s Mantle');

-- 60204	NPC LOOT (Blue World Drop) - (Item Levels: 21-23) - (NPC Levels: 22)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60204, -60204, 0.1, 0, 1 FROM `creature_template` WHERE `entry` IN (
3474, -- Lakota'mani	22	22 - https://web.archive.org/web/20071104001158/http://wow.allakhazam.com/db/mob.html?wmob=3474
4264, -- Deepmoss Matriarch	22	22 - https://web.archive.org/web/20071114072647/http://wow.allakhazam.com/db/mob.html?wmob=4264
12940 -- Vorsha the Lasher	22	22 - https://web.archive.org/web/20071105061828/http://wow.allakhazam.com/db/mob.html?wmob=12940
);
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(60204, 3021, 0, 1, 1, 1, 0, 'Ranger Bow'),
(60204, 2256, 0, 1, 1, 1, 0, 'Skeletal Club');

-- 60205	NPC LOOT (Blue World Drop) - (Item Levels: 21-25) - (NPC Levels: 22-23)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60205, -60205, 0.1, 0, 1 FROM `creature_template` WHERE `entry` IN (
3780, -- Shadethicket Moss Eater	21	23 - https://web.archive.org/web/20071105063030/http://wow.allakhazam.com/db/mob.html?wmob=3780
1020, -- Mottled Raptor	22	23 - https://web.archive.org/web/20071102095150/http://wow.allakhazam.com/db/mob.html?wmob=1020
2354, -- Vicious Gray Bear	22	23 - https://web.archive.org/web/20071029164937/http://wow.allakhazam.com/db/mob.html?wmob=2354
3238, -- Stormhide	22	23 - https://web.archive.org/web/20071024113412/http://wow.allakhazam.com/db/mob.html?wmob=3238
3774, -- Felslayer	22	23 - https://web.archive.org/web/20071105035230/http://wow.allakhazam.com/db/mob.html?wmob=3774
3817, -- Shadowhorn Stag	22	23 - https://web.archive.org/web/20071105063123/http://wow.allakhazam.com/db/mob.html?wmob=3817
4018, -- Antlered Courser	22	23 - https://web.archive.org/web/20071026012449/http://wow.allakhazam.com/db/mob.html?wmob=4018
4128 -- Hecklefang Stalker	22	23 - https://web.archive.org/web/20071031011655/http://wow.allakhazam.com/db/mob.html?wmob=4128
);
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(60205, 13016, 0, 1, 1, 1, 0, 'Killmaim'),
(60205, 12978, 0, 1, 1, 1, 0, 'Stormbringer Belt'),
(60205, 12977, 0, 1, 1, 1, 0, 'Magefist Gloves'),
(60205, 2011, 0, 1, 1, 1, 0, 'Twisted Sabre'),
(60205, 2800, 0, 1, 1, 1, 0, 'Black Velvet Robes'),
(60205, 12975, 0, 1, 1, 1, 0, 'Prospector Axe'),
(60205, 12976, 0, 1, 1, 1, 0, 'Ironpatch Blade'),
(60205, 935, 0, 1, 1, 1, 0, 'Night Watch Shortsword'),
(60205, 13010, 0, 1, 1, 1, 0, 'Dreamsinger Legguards'),
(60205, 13041, 0, 1, 1, 1, 0, 'Guardian Blade');

-- 60206	NPC LOOT (Blue World Drop) - (Item Levels: 21-25) - (NPC Levels: 22-23)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60206, -60206, 0.1, 0, 1 FROM `creature_template` WHERE `entry` =
17359; -- tbc+

-- 60207	NPC LOOT (Blue World Drop) - (Item Levels: 21-26) - (NPC Levels: 23-24)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60207, -60207, 0.1, 0, 1 FROM `creature_template` WHERE `entry` IN (
1400, -- Wetlands Crocolisk (23-24) - https://web.archive.org/web/20071030141341/http://wow.allakhazam.com/db/mob.html?wmob=1400
1042, -- Red Whelp	23	24 - https://web.archive.org/web/20071102113615/http://wow.allakhazam.com/db/mob.html?wmob=1042
1400, -- Wetlands Crocolisk	23	24 - https://web.archive.org/web/20071030141341/http://wow.allakhazam.com/db/mob.html?wmob=1400
2384, -- Starving Mountain Lion	23	24 - https://web.archive.org/web/20071026090808/http://wow.allakhazam.com/db/mob.html?wmob=2384
3249, -- Greater Thunderhawk	23	24 - https://web.archive.org/web/20071102180404/http://wow.allakhazam.com/db/mob.html?wmob=3249
3824, -- Ghostpaw Howler	23	24 - https://web.archive.org/web/20071101083329/http://wow.allakhazam.com/db/mob.html?wmob=3824
4036, -- Rogue Flame Spirit	23	24 - https://web.archive.org/web/20071111073238/http://wow.allakhazam.com/db/mob.html?wmob=4036
4044, -- Blackened Basilisk	23	24 - https://web.archive.org/web/20071030053054/http://wow.allakhazam.com/db/mob.html?wmob=4044
4067, -- Twilight Runner	23	24 - https://web.archive.org/web/20071103164154/http://wow.allakhazam.com/db/mob.html?wmob=4067
4824 -- Aku'mai Fisher	23	24 -- 22-23 tbc+ - https://web.archive.org/web/20071026091141/http://wow.allakhazam.com/db/mob.html?wmob=4824
);
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(60207, 13011, 0, 1, 1, 1, 0, 'Silver-lined Belt'),
(60207, 13062, 0, 1, 1, 1, 0, 'Thunderwood'),
(60207, 13012, 0, 1, 1, 1, 0, 'Yorgen Bracers'),
(60207, 13032, 0, 1, 1, 1, 0, 'Sword of Corruption'),
(60207, 2098, 0, 1, 1, 1, 0, 'Double-barreled Shotgun');

-- 60208	NPC LOOT (Blue World Drop) - (Item Levels: 22-26) - (NPC Levels: 24)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60208, -60208, 0.1, 0, 1 FROM `creature_template` WHERE `entry` IN (
345, -- Bellygrub	24	24 - https://web.archive.org/web/20071105080609/http://wow.allakhazam.com/db/mob.html?wmob=345
3473, -- Owatanka	24	24 - https://web.archive.org/web/20071104011030/http://wow.allakhazam.com/db/mob.html?wmob=3473
4250 -- Galak Packhound	24	24 - https://web.archive.org/web/20071105022716/http://wow.allakhazam.com/db/mob.html?wmob=4250
);
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(60208, 13032, 0, 1, 1, 1, 0, 'Sword of Corruption');

-- 60209	NPC LOOT (Blue World Drop) - (Item Levels: 22-27) - (NPC Levels: 24-25)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60209, -60209, 0.1, 0, 1 FROM `creature_template` WHERE `entry` IN (
3917, -- Befouled Water Elemental	23	25 - https://web.archive.org/web/20071101093724/http://wow.allakhazam.com/db/mob.html?wmob=3917
4032, -- Young Chimaera	23	25 - https://web.archive.org/web/20071112004220/http://wow.allakhazam.com/db/mob.html?wmob=4032
4053, -- Daughter of Cenarius	23	25 - https://web.archive.org/web/20071107014648/http://wow.allakhazam.com/db/mob.html?wmob=4053
1016, -- Highland Lashtail	24	25 - https://web.archive.org/web/20071102095134/http://wow.allakhazam.com/db/mob.html?wmob=1016
1021, -- Mottled Screecher	24	25 - https://web.archive.org/web/20071102095155/http://wow.allakhazam.com/db/mob.html?wmob=1021
1043, -- Lost Whelp	24	25 - https://web.archive.org/web/20071102095209/http://wow.allakhazam.com/db/mob.html?wmob=1043
2349, -- Giant Moss Creeper	24	25 - https://web.archive.org/web/20071027091336/http://wow.allakhazam.com/db/mob.html?wmob=2349
3235, -- Greater Barrens Kodo	24	25 - https://web.archive.org/web/20071104001018/http://wow.allakhazam.com/db/mob.html?wmob=3235
3820, -- Wildthorn Venomspitter	24	25 - https://web.archive.org/web/20071105063126/http://wow.allakhazam.com/db/mob.html?wmob=3820
4016, -- Fey Dragon	24	25 - https://web.archive.org/web/20071103190323/http://wow.allakhazam.com/db/mob.html?wmob=4016
4019, -- Great Courser	24	25 - https://web.archive.org/web/20071103190333/http://wow.allakhazam.com/db/mob.html?wmob=4019
4034, -- Enraged Stone Spirit	24	25 - https://web.archive.org/web/20071114035012/http://wow.allakhazam.com/db/mob.html?wmob=4034
4511, -- Agam'ar	24	25 - https://web.archive.org/web/20071101050339/http://wow.allakhazam.com/db/mob.html?wmob=4511
4627 -- Arugal's Voidwalker	24	25 -- 20-20 tbc+, one single item (Rift Bracers) was converted to blue in tbc+ - https://web.archive.org/web/20071105013427/http://wow.allakhazam.com/db/mob.html?wmob=4627
);
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(60209, 13136, 0, 1, 1, 1, 0, 'Lil Timmy\'s Peashooter'),
(60209, 3203, 0, 1, 1, 1, 0, 'Dense Triangle Mace'),
(60209, 720, 0, 1, 1, 1, 0, 'Brawler Gloves'),
(60209, 12982, 0, 1, 1, 1, 0, 'Silver-linked Footguards'),
(60209, 12983, 0, 1, 1, 1, 0, 'Rakzur Club'),
(60209, 13005, 0, 1, 1, 1, 0, 'Amy\'s Blanket'),
(60209, 13031, 0, 1, 1, 1, 0, 'Orb of Mistmantle'),
(60209, 13057, 0, 1, 1, 1, 0, 'Bloodpike');

-- 60210	NPC LOOT (Blue World Drop) - (Item Levels: 23-27) - (NPC Levels: 25)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60210, -60210, 0.1, 0, 1 FROM `creature_template` WHERE `entry` IN (
3472, -- Washte Pawne	25	25 - https://web.archive.org/web/20071112095728/http://wow.allakhazam.com/db/mob.html?wmob=3472
12678); -- Ursangous	25	25
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(60210, 13031, 0, 1, 1, 1, 0, 'Orb of Mistmantle');

-- 60211	NPC LOOT (Blue World Drop) - (Item Levels: 23-28) - (NPC Levels: 25-26)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60211, -60211, 0.1, 0, 1 FROM `creature_template` WHERE `entry` IN (
6213, -- Irradiated Invader	24	26 - https://web.archive.org/web/20071031015726/http://wow.allakhazam.com/db/mob.html?wmob=6213
949, -- Carrion Recluse	25	26 - https://web.archive.org/web/20071103024816/http://wow.allakhazam.com/db/mob.html?wmob=949
1017, -- Highland Scytheclaw	25	26 - https://web.archive.org/web/20071102095139/http://wow.allakhazam.com/db/mob.html?wmob=1017
1022, -- Mottled Scytheclaw	25	26 - https://web.archive.org/web/20071026085410/http://wow.allakhazam.com/db/mob.html?wmob=1022
1069, -- Crimson Whelp	25	26 - https://web.archive.org/web/20071102095219/http://wow.allakhazam.com/db/mob.html?wmob=1069
2356, -- Elder Gray Bear	25	26 - https://web.archive.org/web/20071031045938/http://wow.allakhazam.com/db/mob.html?wmob=2356
3237, -- Wooly Kodo	25	26 - https://web.archive.org/web/20071104010950/http://wow.allakhazam.com/db/mob.html?wmob=3237
3810, -- Elder Ashenvale Bear	25	26 - https://web.archive.org/web/20071105035245/http://wow.allakhazam.com/db/mob.html?wmob=3810
4117, -- Cloud Serpent	25	26 - https://web.archive.org/web/20071030040657/http://wow.allakhazam.com/db/mob.html?wmob=4117
4126, -- Crag Stalker	25	26 - https://web.archive.org/web/20071104115911/http://wow.allakhazam.com/db/mob.html?wmob=4126
4514, -- Raging Agam'ar	25	26 - https://web.archive.org/web/20071031065333/http://wow.allakhazam.com/db/mob.html?wmob=4514
6208); -- Caverndeep Invader	25	26 - https://web.archive.org/web/20071031015711/http://wow.allakhazam.com/db/mob.html?wmob=6208
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(60211, 12988, 0, 1, 1, 1, 0, 'Starsight Tunic'),
(60211, 13131, 0, 1, 1, 1, 0, 'Sparkleshell Mantle'),
(60211, 13099, 0, 1, 1, 1, 0, 'Moccasins of the White Hare'),
(60211, 13049, 0, 1, 1, 1, 0, 'Deanship Claymore'),
(60211, 13097, 0, 1, 1, 1, 0, 'Thunderbrow Ring');

-- 60212	NPC LOOT (Blue World Drop) - (Item Levels: 24-28) - (NPC Levels: 26)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60211, -60211, 0.1, 0, 1 FROM `creature_template` WHERE `entry` IN (
462, -- https://web.archive.org/web/20080110011036/http://wow.allakhazam.com/db/mob.html?wmob=462
6209); -- Caverndeep Looter	26	26 - https://web.archive.org/web/20071021032838/http://wow.allakhazam.com/db/mob.html?wmob=6209

-- 60213	NPC LOOT (Blue World Drop) - (Item Levels: 24-29) - (NPC Levels: 26-27)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60213, -60213, 0.1, 0, 1 FROM `creature_template` WHERE `entry` IN (
4031, -- Fledgling Chimaera	25	27 - https://web.archive.org/web/20071113140011/http://wow.allakhazam.com/db/mob.html?wmob=4031
10760, -- Grimtotem Geomancer	25	27 - https://web.archive.org/web/20071102113653/http://wow.allakhazam.com/db/mob.html?wmob=10760
1023, -- Mottled Razormaw	26	27 - https://web.archive.org/web/20071031004921/http://wow.allakhazam.com/db/mob.html?wmob=1023
1044, -- Flamesnorting Whelp	26	27 - https://web.archive.org/web/20071102095215/http://wow.allakhazam.com/db/mob.html?wmob=1044
2348, -- Elder Moss Creeper	26	27 - https://web.archive.org/web/20071030040427/http://wow.allakhazam.com/db/mob.html?wmob=2348
3815, -- Blink Dragon	26	27 - https://web.archive.org/web/20071105035255/http://wow.allakhazam.com/db/mob.html?wmob=3815
3818, -- Elder Shadowhorn Stag	26	27 - https://web.archive.org/web/20071026091050/http://wow.allakhazam.com/db/mob.html?wmob=3818
4017, -- Wily Fey Dragon	26	27 - https://web.archive.org/web/20071103190328/http://wow.allakhazam.com/db/mob.html?wmob=4017
4035, -- Furious Stone Spirit	26	27 - https://web.archive.org/web/20071113192254/http://wow.allakhazam.com/db/mob.html?wmob=4035
4038, -- Burning Destroyer	26	27 - https://web.archive.org/web/20071113114442/http://wow.allakhazam.com/db/mob.html?wmob=4038
4248); -- Pesterhide Hyena	26	27 - https://web.archive.org/web/20071104115916/http://wow.allakhazam.com/db/mob.html?wmob=4248
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(60213, 12994, 0, 1, 1, 1, 0, 'Thorbia\'s Gauntlets'),
(60213, 13024, 0, 1, 1, 1, 0, 'Beazel\'s Basher'),
(60213, 1717, 0, 1, 1, 1, 0, 'Double Link Tunic'),
(60213, 2878, 0, 1, 1, 1, 0, 'Bearded Boneaxe'),
(60213, 13094, 0, 1, 1, 1, 0, 'The Queen\'s Jewel');

-- 60214	NPC LOOT (Blue World Drop) - (Item Levels: 25-29) - (NPC Levels: 27)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60214, -60214, 0.1, 0, 1 FROM `creature_template` WHERE `entry` =
12759; -- Tideress	27	27 - https://web.archive.org/web/20071101050743/http://wow.allakhazam.com/db/mob.html?wmob=12759

-- 60215	NPC LOOT (Blue World Drop) - (Item Levels: 25-30) - (NPC Levels: 27-28)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60215, -60215, 0.1, 0, 1 FROM `creature_template` WHERE `entry` IN (
4118, -- Venomous Cloud Serpent	26	28 - https://web.archive.org/web/20071030053100/http://wow.allakhazam.com/db/mob.html?wmob=4118
11680, -- Horde Scout	26	28 - https://web.archive.org/web/20071105081639/http://wow.allakhazam.com/db/mob.html?wmob=11680
2385, -- Feral Mountain Lion	27	28 - https://web.archive.org/web/20071029164942/http://wow.allakhazam.com/db/mob.html?wmob=2385
3825, -- Ghostpaw Alpha	27	28 - https://web.archive.org/web/20071105035305/http://wow.allakhazam.com/db/mob.html?wmob=3825
4041, -- Scorched Basilisk	27	28 - https://web.archive.org/web/20071105082425/http://wow.allakhazam.com/db/mob.html?wmob=4041
4124, -- Needles Cougar	27	28 - https://web.archive.org/web/20071105022646/http://wow.allakhazam.com/db/mob.html?wmob=4124
10757); -- Boiling Elemental	27	28 - https://web.archive.org/web/20071104032400/http://wow.allakhazam.com/db/mob.html?wmob=10757
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(60215, 890, 0, 1, 1, 1, 0, 'Twisted Chanter\'s Staff'),
(60215, 13048, 0, 1, 1, 1, 0, 'Looming Gavel'),
(60215, 791, 0, 1, 1, 1, 0, 'Gnarled Ash Staff'),
(60215, 12997, 0, 1, 1, 1, 0, 'Redbeard Crest'),
(60215, 13106, 0, 1, 1, 1, 0, 'Glowing Magical Bracelets'),
(60215, 2278, 0, 1, 1, 1, 0, 'Forest Tracker Epaulets'),
(60215, 12974, 0, 1, 1, 1, 0, 'The Black Knight');

-- 60216	NPC LOOT (Blue World Drop) - (Item Levels: 26-30) - (NPC Levels: 28)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60216, -60216, 0.1, 0, 1 FROM `creature_template` WHERE `entry` IN (
6167, -- Chimaera Matriarch	28	28 - https://web.archive.org/web/20071113172826/http://wow.allakhazam.com/db/mob.html?wmob=6167
10882, -- Arikara	28	28 - https://web.archive.org/web/20071111115358/http://wow.allakhazam.com/db/mob.html?wmob=10882
12677); -- Shadumbra	28	28 - https://web.archive.org/web/20071031055401/http://wow.allakhazam.com/db/mob.html?wmob=12677
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(60216, 2278, 0, 1, 1, 1, 0, 'Forest Tracker Epaulets');

-- 60217	NPC LOOT (Blue World Drop) - (Item Levels: 26-31) - (NPC Levels: 28-29)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60217, -60217, 0.1, 0, 1 FROM `creature_template` WHERE `entry` IN (
4119, -- Elder Cloud Serpent	27	29 - https://web.archive.org/web/20071030053105/http://wow.allakhazam.com/db/mob.html?wmob=4119
3821, -- Wildthorn Lurker	28	29 - https://web.archive.org/web/20071105035300/http://wow.allakhazam.com/db/mob.html?wmob=3821
4120, -- Thundering Boulderkin	28	29 - https://web.archive.org/web/20071108225531/http://wow.allakhazam.com/db/mob.html?wmob=4120
4249, -- Pesterhide Snarler	28	29 - https://web.archive.org/web/20071105015848/http://wow.allakhazam.com/db/mob.html?wmob=4249
6220, -- Irradiated Horror	28	29 -- 26-27 tbc+ - https://web.archive.org/web/20071031015746/http://wow.allakhazam.com/db/mob.html?wmob=6220
10756); -- Scalding Elemental	28	29 - https://web.archive.org/web/20071104032355/http://wow.allakhazam.com/db/mob.html?wmob=10756
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(60217, 2721, 0, 1, 1, 1, 0, 'Holy Shroud'),
(60217, 12998, 0, 1, 1, 1, 0, 'Magician\'s Mantle'),
(60217, 13019, 0, 1, 1, 1, 0, 'Harpyclaw Short Bow'),
(60217, 13127, 0, 1, 1, 1, 0, 'Frostreaver Crown'),
(60217, 13037, 0, 1, 1, 1, 0, 'Crystalpine Stinger');

-- 60218	NPC LOOT (Blue World Drop) - (Item Levels: 27-31) - (NPC Levels: 29)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60217, -60217, 0.1, 0, 1 FROM `creature_template` WHERE `entry` =
1353; -- Sarltooth	29	29 - https://web.archive.org/web/20071102113730/http://wow.allakhazam.com/db/mob.html?wmob=1353

-- 60219	NPC LOOT (Blue World Drop) - (Item Levels: 27-32) - (NPC Levels: 29-30)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60219, -60219, 0.1, 0, 1 FROM `creature_template` WHERE `entry` IN (
3811, -- Giant Ashenvale Bear	29	30 - https://web.archive.org/web/20071105035250/http://wow.allakhazam.com/db/mob.html?wmob=3811
6071, -- Legion Hound	29	30 - https://web.archive.org/web/20071105040003/http://wow.allakhazam.com/db/mob.html?wmob=6071
6073); -- Searing Infernal	29	30 - https://web.archive.org/web/20071105063622/http://wow.allakhazam.com/db/mob.html?wmob=6073
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(60219, 9405, 0, 1, 1, 1, 0, 'Girdle of Golem Strength'),
(60219, 2877, 0, 1, 1, 1, 0, 'Combatant Claymore');

-- 60220	NPC LOOT (Blue World Drop) - (Item Levels: 28-32) - (NPC Levels: 30)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60220, -60220, 0.1, 0, 1 FROM `creature_template` WHERE `entry` IN (
4066, -- Nal'taszar	30	30 - https://web.archive.org/web/20071103190338/http://wow.allakhazam.com/db/mob.html?wmob=4066
4499, -- Rok'Alim the Pounder	30	30 - https://web.archive.org/web/20071104033738/http://wow.allakhazam.com/db/mob.html?wmob=4499
4548, -- Steelsnap	30	30 - https://web.archive.org/web/20071103055547/http://wow.allakhazam.com/db/mob.html?wmob=4548
10992); -- Enraged Panther	30	30 - https://web.archive.org/web/20071104151256/http://wow.allakhazam.com/db/mob.html?wmob=10992
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(60220, 3020, 0, 1, 1, 1, 0, 'Enduring Cap'),
(60220, 9405, 0, 1, 1, 1, 0, 'Girdle of Golem Strength'),
(60220, 2877, 0, 1, 1, 1, 0, 'Combatant Claymore');

-- 60221	NPC LOOT (Blue World Drop) - (Item Levels: 28-33) - (NPC Levels: 30-31)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60221, -60221, 0.1, 0, 1 FROM `creature_template` WHERE `entry` IN (
683, -- Young Panther	30	31 - https://web.archive.org/web/20071117203516/http://wow.allakhazam.com/db/mob.html?wmob=683
855, -- Young Stranglethorn Raptor	30	31 - https://web.archive.org/web/20071102214351/http://wow.allakhazam.com/db/mob.html?wmob=855
1150, -- River Crocolisk	30	31 - https://web.archive.org/web/20071104180223/http://wow.allakhazam.com/db/mob.html?wmob=1150
2408, -- Snapjaw	30	31 - https://web.archive.org/web/20071026090813/http://wow.allakhazam.com/db/mob.html?wmob=2408
2559, -- Highland Strider	30	31 - https://web.archive.org/web/20071026090829/http://wow.allakhazam.com/db/mob.html?wmob=2559
4110, -- Highperch Patriarch	30	31 - https://web.archive.org/web/20071105022627/http://wow.allakhazam.com/db/mob.html?wmob=4110
4142, -- Sparkleshell Tortoise	30	31 - https://web.archive.org/web/20071105022701/http://wow.allakhazam.com/db/mob.html?wmob=4142
4147, -- Saltstone Basilisk	30	31 - https://web.archive.org/web/20071116020158/http://wow.allakhazam.com/db/mob.html?wmob=4147
4696); -- Scorpashi Snapper	30	31 - https://web.archive.org/web/20071109064733/http://wow.allakhazam.com/db/mob.html?wmob=4696
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(60221, 13063, 0, 1, 1, 1, 0, 'Starfaller'),
(60221, 13108, 0, 1, 1, 1, 0, 'Tigerstrike Mantle'),
(60221, 13033, 0, 1, 1, 1, 0, 'Zealot Blade'),
(60221, 13137, 0, 1, 1, 1, 0, 'Ironweaver'),
(60221, 9395, 0, 1, 1, 1, 0, 'Gloves of Old');

-- 60222	NPC LOOT (Blue World Drop) - (Item Levels: 29-33) - (NPC Levels: 31)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60222, -60222, 0.1, 0, 1 FROM `creature_template` WHERE `entry` =
12676; -- Sharptalon	31	31 - https://web.archive.org/web/20071113143144/http://wow.allakhazam.com/db/mob.html?wmob=12676

-- 60223	NPC LOOT (Blue World Drop) - (Item Levels: 29-34) - (NPC Levels: 31-32)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60223, -60223, 0.1, 0, 1 FROM `creature_template` WHERE `entry` IN (
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
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(60223, 13031, 0, 1, 1, 1, 0, 'Orb of Mistmantle'),
(60223, 720, 0, 1, 1, 1, 0, 'Brawler Gloves'),
(60223, 2565, 0, 1, 1, 1, 0, 'Rod of Molten Fire'),
(60223, 13084, 0, 1, 1, 1, 0, 'Kaleidoscope Chain');

-- 60224	NPC LOOT (Blue World Drop) - (Item Levels: 30-34) - (NPC Levels: 32)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60224, -60224, 0.1, 0, 1 FROM `creature_template` WHERE `entry` =
5934; -- Heartrazor	32	32 - https://web.archive.org/web/20071105023148/http://wow.allakhazam.com/db/mob.html?wmob=5934

-- 60225	NPC LOOT (Blue World Drop) - (Item Levels: 30-35) - (NPC Levels: 32-33)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60225, -60225, 0.1, 0, 1 FROM `creature_template` WHERE `entry` IN (
682, -- Stranglethorn Tiger	32	33 - https://web.archive.org/web/20071117203511/http://wow.allakhazam.com/db/mob.html?wmob=682
1108, -- Mistvale Gorilla	32	33 - https://web.archive.org/web/20071105090321/http://wow.allakhazam.com/db/mob.html?wmob=1108
2406, -- Mountain Lion	32	33 - https://web.archive.org/web/20071029195404/http://wow.allakhazam.com/db/mob.html?wmob=2406
2563, -- Plains Creeper	32	33 - https://web.archive.org/web/20071027091442/http://wow.allakhazam.com/db/mob.html?wmob=2563
4144, -- Sparkleshell Borer	32	33 - https://web.archive.org/web/20071105022713/http://wow.allakhazam.com/db/mob.html?wmob=4144
4151, -- Saltstone Crystalhide	32	33 - https://web.archive.org/web/20071104151953/http://wow.allakhazam.com/db/mob.html?wmob=4151
4692); -- Dread Swoop	32	33 - https://web.archive.org/web/20071106012404/http://wow.allakhazam.com/db/mob.html?wmob=4692
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(60225, 9435, 0, 1, 1, 1, 0, 'Reticulated Bone Gauntlets'),
(60225, 2951, 0, 1, 1, 1, 0, 'Ring of the Underwood'),
(60225, 13110, 0, 1, 1, 1, 0, 'Wolffear Harness'),
(60225, 9385, 0, 1, 1, 1, 0, 'Archaic Defender'),
(60225, 1726, 0, 1, 1, 1, 0, 'Poison-tipped Bone Spear');

-- 60227	NPC LOOT (Blue World Drop) - (Item Levels: 31-36) - (NPC Levels: 33-34)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60227, -60227, 0.1, 0, 1 FROM `creature_template` WHERE `entry` IN (
2555, -- https://www.wowhead.com/tbc/npc=2555
4287, -- https://www.wowhead.com/classic/npc=4287
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
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(60227, 13114, 0, 1, 1, 1, 0, 'Troll\'s Bane Leggings'),
(60227, 13093, 0, 1, 1, 1, 0, 'Blush Ember Ring'),
(60227, 13105, 0, 1, 1, 1, 0, 'Sutarn\'s Ring'),
(60227, 2276, 0, 1, 1, 1, 0, 'Swampwalker Boots'),
(60227, 934, 0, 1, 1, 1, 0, 'Stalvan\'s Reaper');

-- 60228	NPC LOOT (Blue World Drop) - (Item Levels: 32-36) - (NPC Levels: 34)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60228, -60228, 0.1, 0, 1 FROM `creature_template` WHERE `entry` = 7333; -- Withered Battle Boar	34	34 - https://web.archive.org/web/20071105011429/http://wow.allakhazam.com/db/mob.html?wmob=7333

-- 60229	NPC LOOT (Blue World Drop) - (Item Levels: 32-36) - (NPC Levels: 34-35)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60229, -60229, 0.1, 0, 1 FROM `creature_template` WHERE `entry` IN (
689, -- Crystal Spine Basilisk	34	35 - https://web.archive.org/web/20071112095749/http://wow.allakhazam.com/db/mob.html?wmob=689
1085, -- Elder Stranglethorn Tiger	34	35 - https://web.archive.org/web/20071104032410/http://wow.allakhazam.com/db/mob.html?wmob=1085
2579, -- Mesa Buzzard	34	35 - https://web.archive.org/web/20071027091543/http://wow.allakhazam.com/db/mob.html?wmob=2579
4143, -- Sparkleshell Snapper	34	35 - https://web.archive.org/web/20071105022706/http://wow.allakhazam.com/db/mob.html?wmob=4143
4150, -- Saltstone Gazer	34	35 - https://web.archive.org/web/20071116020203/http://wow.allakhazam.com/db/mob.html?wmob=4150
4697, -- Scorpashi Lasher	34	35 - https://web.archive.org/web/20071113020817/http://wow.allakhazam.com/db/mob.html?wmob=4697
4700); -- Aged Kodo	34	35 - https://web.archive.org/web/20071027135914/http://wow.allakhazam.com/db/mob.html?wmob=4700
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(60229, 13081, 0, 1, 1, 1, 0, 'Skullance Shield'),
(60229, 934, 0, 1, 1, 1, 0, 'Stalvan\'s Reaper'),
(60229, 2276, 0, 1, 1, 1, 0, 'Swampwalker Boots'),
(60229, 13093, 0, 1, 1, 1, 0, 'Blush Ember Ring'),
(60229, 13103, 0, 1, 1, 1, 0, 'Pads of the Venom Spider'),
(60229, 13105, 0, 1, 1, 1, 0, 'Sutarn\'s Ring'),
(60229, 936, 0, 1, 1, 1, 0, 'Midnight Mace'),
(60229, 13121, 0, 1, 1, 1, 0, 'Wing of the Whelpling'),
(60229, 2276, 0, 1, 1, 1, 0, 'Swampwalker Boots'),
(60229, 937, 0, 1, 1, 1, 0, 'Black Duskwood Staff');

-- 60230	NPC LOOT (Blue World Drop) - (Item Levels: 33-37) - (NPC Levels: 35)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60230, -60230, 0.1, 0, 1 FROM `creature_template` WHERE `entry` =
7349; -- Tomb Fiend	35	35

-- 60231	NPC LOOT (Blue World Drop) - (Item Levels: 33-38) - (NPC Levels: 35-36)
DELETE FROM `creature_loot_template` WHERE `entry` = 4299 AND `mincountOrRef` = -60228;
DELETE FROM `creature_loot_template` WHERE `entry` = 7078 AND `mincountOrRef` = -60232;
DELETE FROM `creature_loot_template` WHERE `entry` = 7335 AND `mincountOrRef` = -60230;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60231, -60231, 0.1, 0, 1 FROM `creature_template` WHERE `entry` IN (
4346, -- Noxious Flayer (35-36) - https://www.wowhead.com/tbc/npc=4346/noxious-flayer#drops;mode:normal
686, -- https://www.wowhead.com/classic/npc=686
2253, -- https://www.wowhead.com/classic/npc=2253
4299, -- https://www.wowhead.com/classic/npc=4299
4540, -- 34-35 tbc+ https://www.wowhead.com/tbc/npc=4540
4844, -- https://www.wowhead.com/tbc/npc=4844
7078, -- https://www.wowhead.com/tbc/npc=7078
7328, -- https://www.wowhead.com/classic/npc=7328
7329, -- https://www.wowhead.com/tbc/npc=7329
7335, -- https://www.wowhead.com/classic/npc=7335
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
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(60231, 13119, 0, 1, 1, 1, 0, 'Enchanted Kodo Bracers'),
(60231, 8006, 0, 1, 1, 1, 0, 'The Ziggler'),
(60231, 1265, 0, 1, 1, 1, 0, 'Scorpion Sting'),
(60231, 13020, 0, 1, 1, 1, 0, 'Skystriker Bow'),
(60231, 9719, 0, 1, 1, 1, 0, 'Broken Blade of Heroes');

-- 60233	NPC LOOT (Blue World Drop) - (Item Levels: 34-39) - (NPC Levels: 36-37)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60233, -60233, 0.1, 0, 1 FROM `creature_template` WHERE `entry` IN (
4290, -- 35-36 tbc+ - https://www.wowhead.com/classic/npc=4290
4292, -- 35-36 tbc+ - https://www.wowhead.com/tbc/npc=4292
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
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(60233, 13054, 0, 1, 1, 1, 0, 'Grim Reaper'),
(60233, 1716, 0, 1, 1, 1, 0, 'Robe of the Magi'),
(60233, 9719, 0, 1, 1, 1, 0, 'Broken Blade of Heroes'),
(60233, 13145, 0, 1, 1, 1, 0, 'Enormous Ogre Belt'),
(60233, 13017, 0, 1, 1, 1, 0, 'Hellslayer Battle Axe'),
(60233, 13038, 0, 1, 1, 1, 0, 'Swiftwind');

-- 60234	NPC LOOT (Blue World Drop) - (Item Levels: 35-39) - (NPC Levels: 37)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60234, -60234, 0.1, 0, 1 FROM `creature_template` WHERE `entry` IN (
2258, -- https://www.wowhead.com/tbc/npc=2258/stone-fury
2850, -- https://www.wowhead.com/classic/npc=2850
729, -- Sin'Dall	37	37 - https://web.archive.org/web/20071101051807/http://wow.allakhazam.com/db/mob.html?wmob=729
7334); -- Battle Boar Horror	37	37 - https://web.archive.org/web/20071028141823/http://wow.allakhazam.com/db/mob.html?wmob=7334
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(60234, 9719, 0, 1, 1, 1, 0, 'Broken Blade of Heroes'),
(60234, 1716, 0, 1, 1, 1, 0, 'Robe of the Magi');

-- 60235	NPC LOOT (Blue World Drop) - (Item Levels: 35-40) - (NPC Levels: 37-38)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60235, -60235, 0.1, 0, 1 FROM `creature_template` WHERE `entry` IN (
4414, -- Darkfang Venomspitter (37-38) -- 36-37 tbc+ - https://web.archive.org/web/20071104160328/http://wow.allakhazam.com/db/mob.html?wmob=4414
4298, -- 36-37 tbc+ https://www.wowhead.com/classic/npc=4298
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
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(60235, 13042, 0, 1, 1, 1, 0, 'Sword of the Magistrate'),
(60235, 13034, 0, 1, 1, 1, 0, 'Speedsteel Rapier'),
(60235, 9719, 0, 1, 1, 1, 0, 'Broken Blade of Heroes'),
(60235, 13088, 0, 1, 1, 1, 0, 'Gazlowe\'s Charm'),
(60235, 13199, 0, 1, 1, 1, 0, 'Crushridge Bindings'),
(60235, 9434, 0, 1, 1, 1, 0, 'Elemental Raiment');

-- 60236	NPC LOOT (Blue World Drop) - (Item Levels: 36-40) - (NPC Levels: 38)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60236, -60236, 0.1, 0, 1 FROM `creature_template` WHERE `entry` IN (
11937, -- Demon Portal Guardian	38	38 - https://web.archive.org/web/20071113020409/http://wow.allakhazam.com/db/mob.html?wmob=11937
2635); -- Elder Saltwater Crocolisk	38	38
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(60236, 9719, 0, 1, 1, 1, 0, 'Broken Blade of Heroes'),
(60236, 13042, 0, 1, 1, 1, 0, 'Sword of the Magistrate');

-- 60237	NPC LOOT (Blue World Drop) - (Item Levels: 36-41) - (NPC Levels: 38-39)
DELETE FROM `creature_loot_template` WHERE `entry` = 7346 AND `mincountOrRef` = -60232;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60237, -60237, 0.1, 0, 1 FROM `creature_template` WHERE `entry` IN (
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
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(60237, 13124, 0, 1, 1, 1, 0, 'Ravasaur Scale Boots'),
(60237, 2565, 0, 1, 1, 1, 0, 'Rod of Molten Fire'),
(60237, 13045, 0, 1, 1, 1, 0, 'Viscous Hammer'),
(60237, 13138, 0, 1, 1, 1, 0, 'The Silencer'),
(60237, 13068, 0, 1, 1, 1, 0, 'Obsidian Greaves'),
(60237, 13117, 0, 1, 1, 1, 0, 'Ogron\'s Sash'),
(60237, 13064, 0, 1, 1, 1, 0, 'Jaina\'s Firestarter'),
(60237, 1722, 0, 1, 1, 1, 0, 'Thornstone Sledgehammer'),
(60237, 9719, 0, 1, 1, 1, 0, 'Broken Blade of Heroes');

-- 60238	NPC LOOT (Blue World Drop) - (Item Levels: 37-41) - (NPC Levels: 39)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60238, -60238, 0.1, 0, 1 FROM `creature_template` WHERE `entry` =
8138; -- Sul'lithuz Broodling	39	39 - https://web.archive.org/web/20071030065817/http://wow.allakhazam.com/db/mob.html?wmob=8138
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(60238, 13068, 0, 1, 1, 1, 0, 'Obsidian Greaves');

-- 60239	NPC LOOT (Blue World Drop) - (Item Levels: 37-42) - (NPC Levels: 39-40)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60239, -60239, 0.1, 0, 1 FROM `creature_template` WHERE `entry` IN (
765, -- 37-38 tbc+ https://www.wowhead.com/classic/npc=765
4356, -- Bloodfen Razormaw	39	40 -- 38-39 tbc+ - https://web.archive.org/web/20071031104544/http://wow.allakhazam.com/db/mob.html?wmob=4356
4398, -- Mudrock Burrower	39	40 - https://web.archive.org/web/20071105022832/http://wow.allakhazam.com/db/mob.html?wmob=4398
4694, -- Dread Ripper	39	40 - https://web.archive.org/web/20071113020806/http://wow.allakhazam.com/db/mob.html?wmob=4694
4392, -- Corrosive Swamp Ooze	38	40 - https://web.archive.org/web/20071101092437/http://wow.allakhazam.com/db/mob.html?wmob=4392
92, -- Rock Elemental	39	40 - https://web.archive.org/web/20070825002405/http://wow.allakhazam.com/db/mob.html?wmob=92
690, -- Cold Eye Basilisk	39	40 - https://web.archive.org/web/20070825131442/http://wow.allakhazam.com/db/mob.html?wmob=690
4685, -- Ley Hunter	39	40 - https://web.archive.org/web/20071101053856/http://wow.allakhazam.com/db/mob.html?wmob=4685
4863, -- Jadespine Basilisk	39	40 -- 37-38 tbc+ - https://web.archive.org/web/20071017042459/http://wow.allakhazam.com/db/mob.html?wmob=4863
7022); -- Venomlash Scorpid	39	40 -- 37-38 tbc+ - https://web.archive.org/web/20071017042552/http://wow.allakhazam.com/db/mob.html?wmob=7022
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(60239, 9719, 0, 1, 1, 1, 0, 'Broken Blade of Heroes'),
(60239, 9385, 0, 1, 1, 1, 0, 'Archaic Defender'),
(60239, 1714, 0, 1, 1, 1, 0, 'Necklace of Calisea'),
(60239, 13068, 0, 1, 1, 1, 0, 'Obsidian Greaves'),
(60239, 1722, 0, 1, 1, 1, 0, 'Thornstone Sledgehammer'),
(60239, 2802, 0, 1, 1, 1, 0, 'Blazing Emblem'),
(60239, 13132, 0, 1, 1, 1, 0, 'Skeletal Shoulders');

-- 60240	NPC LOOT (Blue World Drop) - (Item Levels: 38-42) - (NPC Levels: 40)
DELETE FROM `creature_loot_template` WHERE `entry` = 2473 AND `mincountOrRef` = -60239;
DELETE FROM `creature_loot_template` WHERE `entry` = 2474 AND `mincountOrRef` = -60242;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60240, -60240, 0.1, 0, 1 FROM `creature_template` WHERE `entry` IN (
2347, -- Wild Gryphon, -- 40, -- 40 - https://web.archive.org/web/20080102133734/http://wow.allakhazam.com/db/mob.html?wmob=2347
728, -- Bhag'thera	40	40 - https://web.archive.org/web/20071011003358/http://wow.allakhazam.com/db/mob.html?wmob=728
2473, -- Granistad	40	40 - https://web.archive.org/web/20071101083219/http://wow.allakhazam.com/db/mob.html?wmob=2473
2474, -- Kurdros	40	40 - https://web.archive.org/web/20071102180334/http://wow.allakhazam.com/db/mob.html?wmob=2474
6239); -- Cyclonian	40	40 - https://web.archive.org/web/20071022032208/http://wow.allakhazam.com/db/mob.html?wmob=6239
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(60240, 9719, 0, 1, 1, 1, 0, 'Broken Blade of Heroes'),
(60240, 13029, 0, 1, 1, 1, 0, 'Umbral Crystal'),
(60240, 13068, 0, 1, 1, 1, 0, 'Obsidian Greaves');

-- 60241	NPC LOOT (Blue World Drop) - (Item Levels: 38-43) - (NPC Levels: 40-41)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60241, -60241, 0.1, 0, 1 FROM `creature_template` WHERE `entry` IN (
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
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(60241, 2276, 0, 1, 1, 1, 0, 'Swampwalker Boots'),
(60241, 13025, 0, 1, 1, 1, 0, 'Deadwood Sledge'),
(60241, 13058, 0, 1, 1, 1, 0, 'Khoo\'s Point'),
(60241, 13093, 0, 1, 1, 1, 0, 'Blush Ember Ring'),
(60241, 13051, 0, 1, 1, 1, 0, 'Witchfury'),
(60241, 13068, 0, 1, 1, 1, 0, 'Obsidian Greaves'),
(60241, 13100, 0, 1, 1, 1, 0, 'Furen\'s Boots'),
(60241, 9719, 0, 1, 1, 1, 0, 'Broken Blade of Heroes'),
(60241, 13095, 0, 1, 1, 1, 0, 'Assault Band'),
(60241, 1715, 0, 1, 1, 1, 0, 'Polished Jazeraint Armor');

-- 60242	NPC LOOT (Blue World Drop) - (Item Levels: 39-43) - (NPC Levels: 41)
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(60242, 13068, 0, 1, 1, 1, 0, 'Obsidian Greaves');

-- 60243	NPC LOOT (Blue World Drop) - (Item Levels: 39-44) - (NPC Levels: 41-42)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60243, -60243, 0.1, 0, 1 FROM `creature_template` WHERE `entry` IN (
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
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(60243, 13068, 0, 1, 1, 1, 0, 'Obsidian Greaves'),
(60243, 13026, 0, 1, 1, 1, 0, 'Heaven\'s Light'),
(60243, 13071, 0, 1, 1, 1, 0, 'Plated Fist of Hakoo');

REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(60244, 13068, 0, 1, 1, 1, 0, 'Obsidian Greaves');

-- 60245	NPC LOOT (Blue World Drop) - (Item Levels: 40-45) - (NPC Levels: 42-43)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60245, -60245, 0.1, 0, 1 FROM `creature_template` WHERE `entry` IN (
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
(60245, 13068, 0, 1, 1, 1, 0, 'Obsidian Greaves'),
(60245, 1720, 0, 1, 1, 1, 0, 'Tanglewood Staff'),
(60245, 8006, 0, 1, 1, 1, 0, 'The Ziggler'),
(60245, 13020, 0, 1, 1, 1, 0, 'Skystriker Bow'),
(60245, 13119, 0, 1, 1, 1, 0, 'Enchanted Kodo Bracers'),
(60245, 13082, 0, 1, 1, 1, 0, 'Mountainside Buckler'),
(60245, 9433, 0, 1, 1, 1, 0, 'Forgotten Wraps'),
(60245, 4090, 0, 1, 1, 1, 0, 'Mug O\' Hurt');

-- 60246	NPC LOOT (Blue World Drop) - (Item Levels: 41-45) - (NPC Levels: 43)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60246, -60246, 0.1, 0, 1 FROM `creature_template` WHERE `entry` IN (
730, -- Tethis	43	43 exclude? - https://web.archive.org/web/20071227082229/http://wow.allakhazam.com/db/mob.html?wmob=730
731); -- King Bangalash	43	43 - https://web.archive.org/web/20071016050608/http://wow.allakhazam.com/db/mob.html?wmob=731
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(60246, 13068, 0, 1, 1, 1, 0, 'Obsidian Greaves');

-- 60247	NPC LOOT (Blue World Drop) - (Item Levels: 41-46) - (NPC Levels: 43-44)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60247, -60247, 0.1, 0, 1 FROM `creature_template` WHERE `entry` IN (
2691, -- https://web.archive.org/web/20071227070144/http://wow.allakhazam.com/db/mob.html?wmob=2691
11790, -- 42-43 tbc+ https://web.archive.org/web/20080106091355/http://wow.allakhazam.com/db/mob.html?wmob=11790
2736, -- Greater Rock Elemental	42	44 - https://web.archive.org/web/20071214012405/http://wow.allakhazam.com/db/mob.html?wmob=2736
2924, -- Silvermane Wolf	43	44 - https://web.archive.org/web/20071227070203/http://wow.allakhazam.com/db/mob.html?wmob=2924
5287, -- Longtooth Howler	43	44 - https://web.archive.org/web/20080105073607/http://wow.allakhazam.com/db/mob.html?wmob=5287
5300, -- Frayfeather Hippogryph	43	44 - https://web.archive.org/web/20071221160234/http://wow.allakhazam.com/db/mob.html?wmob=5300
5423, -- Scorpid Tail Lasher	43	44 - https://web.archive.org/web/20080103183830/http://wow.allakhazam.com/db/mob.html?wmob=5423
5646); -- Sandfury Axe Thrower	42	44 - https://web.archive.org/web/20071231140635/http://wow.allakhazam.com/db/mob.html?wmob=5646
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(60247, 13068, 0, 1, 1, 1, 0, 'Obsidian Greaves'),
(60247, 1716, 0, 1, 1, 1, 0, 'Robe of the Magi'),
(60247, 13145, 0, 1, 1, 1, 0, 'Enormous Ogre Belt'),
(60247, 4091, 0, 1, 1, 1, 0, 'Widowmaker'),
(60247, 13038, 0, 1, 1, 1, 0, 'Swiftwind'),
(60247, 13021, 0, 1, 1, 1, 0, 'Needle Threader'),
(60247, 754, 0, 1, 1, 1, 0, 'Shortsword of Vengeance');

-- 60248	NPC LOOT (Blue World Drop) - (Item Levels: 42-46) - (NPC Levels: 44)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60248, -60248, 0.1, 0, 1 FROM `creature_template` WHERE `entry` IN (
2447, -- Narillasanz	44	44 - https://web.archive.org/web/20071026072346/http://wow.allakhazam.com/db/mob.html?wmob=2447
2755); -- Myzrael	44	44 exclude?
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(60248, 4091, 0, 1, 1, 1, 0, 'Widowmaker'),
(60248, 13068, 0, 1, 1, 1, 0, 'Obsidian Greaves');

-- 60249	NPC LOOT (Blue World Drop) - (Item Levels: 42-47) - (NPC Levels: 44-45)
DELETE FROM `creature_loot_template` WHERE `entry` = 5295 AND `mincountOrRef` = -60257;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60249, -60249, 0.1, 0, 1 FROM `creature_template` WHERE `entry` IN (
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
(60249, 13199, 0, 1, 1, 1, 0, 'Crushridge Bindings'),
(60249, 13055, 0, 1, 1, 1, 0, 'Bonechewer'),
(60249, 13088, 0, 1, 1, 1, 0, 'Gazlowe\'s Charm'),
(60249, 13068, 0, 1, 1, 1, 0, 'Obsidian Greaves'),
(60249, 9434, 0, 1, 1, 1, 0, 'Elemental Raiment'),
(60249, 13034, 0, 1, 1, 1, 0, 'Speedsteel Rapier'),
(60249, 13112, 0, 1, 1, 1, 0, 'Winged Helm'),
(60249, 13039, 0, 1, 1, 1, 0, 'Skull Splitting Crossbow'),
(60249, 13076, 0, 1, 1, 1, 0, 'Giantslayer Bracers');

-- 60250	NPC LOOT (Blue World Drop) - (Item Levels: 43-47) - (NPC Levels: 45)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60249, -60249, 0.1, 0, 1 FROM `creature_template` WHERE `entry` IN (
2919, -- Fam'retor Guardian	45	45 - https://web.archive.org/web/20080101142340/http://wow.allakhazam.com/db/mob.html?wmob=2919
4339, -- Brimgore, -- 45, -- 45 -- 41-41 tbc+ - https://web.archive.org/web/20071230091900/http://wow.allakhazam.com/db/mob.html?wmob=4339
4841); -- Deadmire, -- 45, -- 45 -- 41-41 tbc+ - https://web.archive.org/web/20071222030013/http://wow.allakhazam.com/db/mob.html?wmob=4841 kek droprate

-- 60251	NPC LOOT (Blue World Drop) - (Item Levels: 43-48) - (NPC Levels: 45-46)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60251, -60251, 0.1, 0, 1 FROM `creature_template` WHERE `entry` IN (
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
7268, -- Sandfury Guardian	45	46 -- 45-45 tbc+ - https://web.archive.org/web/20080103215227/http://wow.allakhazam.com/db/mob.html?wmob=7268
12220, -- Constrictor Vine	45	46 -- 44-45 tbc+ - https://web.archive.org/web/20071231140047/http://wow.allakhazam.com/db/mob.html?wmob=12220
13696); -- Noxxious Scion	45	46 -- 44-44 tbc+ - https://web.archive.org/web/20080103224414/http://wow.allakhazam.com/db/mob.html?wmob=13696
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(60251, 13134, 0, 1, 1, 1, 0, 'Belt of the Gladiator'),
(60251, 13043, 0, 1, 1, 1, 0, 'Blade of the Titans'),
(60251, 10634, 0, 1, 1, 1, 0, 'Mindseye Circle'),
(60251, 10624, 0, 1, 1, 1, 0, 'Stinging Bow'),
(60251, 10631, 0, 1, 1, 1, 0, 'Murkwater Gauntlets'),
(60251, 10623, 0, 1, 1, 1, 0, 'Winter\'s Bite'),
(60251, 10625, 0, 1, 1, 1, 0, 'Stealthblade'),
(60251, 10627, 0, 1, 1, 1, 0, 'Bludgeon of the Grinning Dog'),
(60251, 10628, 0, 1, 1, 1, 0, 'Deathblow'),
(60251, 13109, 0, 1, 1, 1, 0, 'Blackflame Cape'),
(60251, 9719, 0, 1, 1, 1, 0, 'Broken Blade of Heroes'), -- two npcs confirmed so leaving it in eventhough itemlevel doesnt exactly match the range
(60251, 13035, 0, 1, 1, 1, 0, 'Serpent Slicer'),
(60251, 13089, 0, 1, 1, 1, 0, 'Skibi\'s Pendant'),
(60251, 13117, 0, 1, 1, 1, 0, 'Ogron\'s Sash'),
(60251, 13064, 0, 1, 1, 1, 0, 'Jaina\'s Firestarter'),
(60251, 13068, 0, 1, 1, 1, 0, 'Obsidian Greaves');

-- 60252	NPC LOOT (Blue World Drop) - (Item Levels: 44-48) - (NPC Levels: 46)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60252, -60252, 0.1, 0, 1 FROM `creature_template` WHERE `entry` =
11783; -- Theradrim Shardling	46	46 -- 45-45 tbc+ - https://web.archive.org/web/20071231140032/http://wow.allakhazam.com/db/mob.html?wmob=11783
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(60252, 13043, 0, 1, 1, 1, 0, 'Blade of the Titans'),
(60252, 13134, 0, 1, 1, 1, 0, 'Belt of the Gladiator');

-- 60253	NPC LOOT (Blue World Drop) - (Item Levels: 44-49) - (NPC Levels: 46-47)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60253, -60253, 0.1, 0, 1 FROM `creature_template` WHERE `entry` IN (
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
(60253, 2802, 0, 1, 1, 1, 0, 'Blazing Emblem'),
(60253, 1718, 0, 1, 1, 1, 0, 'Basilisk Hide Pants'),
(60253, 2564, 0, 1, 1, 1, 0, 'Elven Spirit Claws'),
(60253, 9434, 0, 1, 1, 1, 0, 'Elemental Raiment'),
(60253, 13029, 0, 1, 1, 1, 0, 'Umbral Crystal'),
(60253, 13046, 0, 1, 1, 1, 0, 'Blanchard\'s Stout'),
(60253, 13132, 0, 1, 1, 1, 0, 'Skeletal Shoulders'),
(60253, 13139, 0, 1, 1, 1, 0, 'Guttbuster'),
(60253, 13065, 0, 1, 1, 1, 0, 'Wand of Allistarj'),
(60253, 13125, 0, 1, 1, 1, 0, 'Elven Chain Boots');

-- 60254	NPC LOOT (Blue World Drop) - (Item Levels: 45-49) - (NPC Levels: 47)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60254, -60254, 0.1, 0, 1 FROM `creature_template` WHERE `entry` IN (
8120, -- Sul'lithuz Abomination	47	47 - https://web.archive.org/web/20080103200045/http://wow.allakhazam.com/db/mob.html?wmob=8120
14661); -- Stinglasher	47	47 - https://web.archive.org/web/20071216060047/http://wow.allakhazam.com/db/mob.html?wmob=14661

-- 60255	NPC LOOT (Blue World Drop) - (Item Levels: 45-50) - (NPC Levels: 47-48)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60255, -60255, 0.1, 0, 1 FROM `creature_template` WHERE `entry` IN (
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
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(60255, 13085, 0, 1, 1, 1, 0, 'Horizon Choker'),
(60255, 13058, 0, 1, 1, 1, 0, 'Khoo\'s Point'),
(60255, 1715, 0, 1, 1, 1, 0, 'Polished Jazeraint Armor'),
(60255, 13051, 0, 1, 1, 1, 0, 'Witchfury'),
(60255, 13066, 0, 1, 1, 1, 0, 'Wyrmslayer Spaulders'),
(60255, 13009, 0, 1, 1, 1, 0, 'Cow King\'s Hide'),
(60255, 13100, 0, 1, 1, 1, 0, 'Furen\'s Boots'),
(60255, 13095, 0, 1, 1, 1, 0, 'Assault Band'),
(60255, 13030, 0, 1, 1, 1, 0, 'Basilisk Bone'),
(60255, 7734, 0, 1, 1, 1, 0, 'Six Demon Bag');

-- 60256	NPC LOOT (Blue World Drop) - (Item Levels: 46-50) - (NPC Levels: 48)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60256, -60256, 0.1, 0, 1 FROM `creature_template` WHERE `entry` IN (
5833, -- Margol the Rager	48	48 -- 43-43 tbc+ - https://web.archive.org/web/20080102024442/http://wow.allakhazam.com/db/mob.html?wmob=5833
7977); -- Gammerita	48	48 - https://web.archive.org/web/20071219115814/http://wow.allakhazam.com/db/mob.html?wmob=7977

-- 60257	NPC LOOT (Blue World Drop) - (Item Levels: 46-51) - (NPC Levels: 48-49)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60257, -60257, 0.1, 0, 1 FROM `creature_template` WHERE `entry` IN (
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
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(60257, 2815, 0, 1, 1, 1, 0, 'Curve-bladed Ripper'),
(60257, 13115, 0, 1, 1, 1, 0, 'Sheepshear Mantle'),
(60257, 13008, 0, 1, 1, 1, 0, 'Dalewind Trousers'),
(60257, 1713, 0, 1, 1, 1, 0, 'Ankh of Life'),
(60257, 13073, 0, 1, 1, 1, 0, 'Mugthol\'s Helm'),
(60257, 13026, 0, 1, 1, 1, 0, 'Heaven\'s Light'),
(60257, 13052, 0, 1, 1, 1, 0, 'Warmonger'),
(60257, 13059, 0, 1, 1, 1, 0, 'Stoneraven'),
(60257, 13071, 0, 1, 1, 1, 0, 'Plated Fist of Hakoo'),
(60257, 11302, 0, 1, 1, 1, 0, 'Uther\'s Strength');

-- 60259	NPC LOOT (Blue World Drop) - (Item Levels: 47-52) - (NPC Levels: 49-50)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60259, -60259, 0.1, 0, 1 FROM `creature_template` WHERE `entry` IN (
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
(60259, 9433, 0, 1, 1, 1, 0, 'Forgotten Wraps'),
(60259, 9359, 0, 1, 1, 1, 0, 'Wirt\'s Third Leg'),
(60259, 4090, 0, 1, 1, 1, 0, 'Mug O\' Hurt'),
(60259, 13126, 0, 1, 1, 1, 0, 'Battlecaller Gauntlets'),
(60259, 13014, 0, 1, 1, 1, 0, 'Axe of Rin\'ji'),
(60259, 13027, 0, 1, 1, 1, 0, 'Bonesnapper'),
(60259, 13144, 0, 1, 1, 1, 0, 'Serenity Belt'),
(60259, 5266, 0, 1, 1, 1, 0, 'Eye of Adaegus');

-- 60260	NPC LOOT (Blue World Drop) - (Item Levels: 48-52) - (NPC Levels: 50)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60260, -60260, 0.1, 0, 1 FROM `creature_template` WHERE `entry` IN (
2757, -- Blacklash	50	50 - https://web.archive.org/web/20071101050813/http://wow.allakhazam.com/db/mob.html?wmob=2757
2759, -- Hematus	50	50 - https://web.archive.org/web/20071102031545/http://wow.allakhazam.com/db/mob.html?wmob=2759
8196); -- Occulus	50	50 - https://web.archive.org/web/20071028110421/http://wow.allakhazam.com/db/mob.html?wmob=8196

-- 60261	NPC LOOT (Blue World Drop) - (Item Levels: 48-53) - (NPC Levels: 50-51)
DELETE FROM `creature_loot_template` WHERE `entry` = 6002 AND `mincountOrRef` = -60259;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60261, -60261, 0.1, 0, 1 FROM `creature_template` WHERE `entry` IN (
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
(60261, 13111, 0, 1, 1, 1, 0, 'Sandals of the Insurgent'),
(60261, 1203, 0, 1, 1, 1, 0, 'Aegis of Stormwind'),
(60261, 1721, 0, 1, 1, 1, 0, 'Viking Warhammer'),
(60261, 13067, 0, 1, 1, 1, 0, 'Hydralick Armor'),
(60261, 1607, 0, 1, 1, 1, 0, 'Soulkeeper');

-- 60263	NPC LOOT (Blue World Drop) - (Item Levels: 49-54) - (NPC Levels: 51-52)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60263, -60263, 0.1, 0, 1 FROM `creature_template` WHERE `entry` IN (
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
(60263, 13102, 0, 1, 1, 1, 0, 'Cassandra\'s Grace'),
(60263, 13021, 0, 1, 1, 1, 0, 'Needle Threader'),
(60263, 13039, 0, 1, 1, 1, 0, 'Skull Splitting Crossbow'),
(60263, 13055, 0, 1, 1, 1, 0, 'Bonechewer'),
(60263, 13022, 0, 1, 1, 1, 0, 'Gryphonwing Long Bow'),
(60263, 13018, 0, 1, 1, 1, 0, 'Executioner\'s Cleaver'),
(60263, 13076, 0, 1, 1, 1, 0, 'Giantslayer Bracers'),
(60263, 13120, 0, 1, 1, 1, 0, 'Deepfury Bracers'),
(60263, 6660, 0, 1, 1, 1, 0, 'Julie\'s Dagger'),
(60263, 8190, 0, 1, 1, 1, 0, 'Hanzo Sword'),
(60263, 13122, 0, 1, 1, 1, 0, 'Dark Phantom Cape');

-- 60264	NPC LOOT (Blue World Drop) - (Item Levels: 50-54) - (NPC Levels: 52)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60264, -60264, 0.1, 0, 1 FROM `creature_template` WHERE `entry` IN (
8198, -- Tick	52	52 - https://web.archive.org/web/20071028141843/http://wow.allakhazam.com/db/mob.html?wmob=8198
13896, -- Scalebeard	52	52 - https://web.archive.org/web/20071029193557/http://wow.allakhazam.com/db/mob.html?wmob=13896
9026); -- Overmaster Pyron	52	52 -- 51-51 tbc+ - https://web.archive.org/web/20071027062806/http://wow.allakhazam.com/db/mob.html?wmob=9026

-- 60265	NPC LOOT (Blue World Drop) - (Item Levels: 50-55) - (NPC Levels: 52-53)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60265, -60265, 0.1, 0, 1 FROM `creature_template` WHERE `entry` IN (
13396, -- Irondeep Miner (52-53) - https://web.archive.org/web/20080104022314/http://wow.allakhazam.com/db/mob.html?wmob=13396

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
(60265, 13003, 0, 1, 1, 1, 0, 'Lord Alexander\'s Battle Axe'),
(60265, 13035, 0, 1, 1, 1, 0, 'Serpent Slicer'),
(60265, 13043, 0, 1, 1, 1, 0, 'Blade of the Titans'),
(60265, 13013, 0, 1, 1, 1, 0, 'Elder Wizard\'s Mantle'),
(60265, 13056, 0, 1, 1, 1, 0, 'Frenzied Striker'),
(60265, 13109, 0, 1, 1, 1, 0, 'Blackflame Cape'),
(60265, 13130, 0, 1, 1, 1, 0, 'Windrunner Legguards'),
(60265, 13134, 0, 1, 1, 1, 0, 'Belt of the Gladiator'),
(60265, 13089, 0, 1, 1, 1, 0, 'Skibi\'s Pendant');

-- 60267	NPC LOOT (Blue World Drop) - (Item Levels: 51-56) - (NPC Levels: 53-54)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60267, -60267, 0.1, 0, 1 FROM `creature_template` WHERE `entry` IN (
6502, -- Plated Stegodon	52	54 - https://web.archive.org/web/20071027152302/http://wow.allakhazam.com/db/mob.html?wmob=6502
8916, -- Arena Spectator	52	54 - https://web.archive.org/web/20071031040248/http://wow.allakhazam.com/db/mob.html?wmob=8916
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
12418); -- Gordok Hyena	52	54 - https://web.archive.org/web/20071030030621/http://wow.allakhazam.com/db/mob.html?wmob=12418
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(60267, 13065, 0, 1, 1, 1, 0, 'Wand of Allistarj'),
(60267, 2564, 0, 1, 1, 1, 0, 'Elven Spirit Claws'),
(60267, 24222, 0, 1, 1, 1, 0, 'The Shadowfoot Stabber'),
(60267, 13118, 0, 1, 1, 1, 0, 'Serpentine Sash'),
(60267, 13044, 0, 1, 1, 1, 0, 'Demonslayer'),
(60267, 13091, 0, 1, 1, 1, 0, 'Medallion of Grand Marshal Morris'),
(60267, 13125, 0, 1, 1, 1, 0, 'Elven Chain Boots'),
(60267, 13036, 0, 1, 1, 1, 0, 'Assassination Blade'),
(60267, 13077, 0, 1, 1, 1, 0, 'Girdle of Uther');

-- 60268	NPC LOOT (Blue World Drop) - (Item Levels: 52-56) - (NPC Levels: 54)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60268, -60268, 0.1, 0, 1 FROM `creature_template` WHERE `entry` IN (
10040, -- Gorishi Hive Guard	54	54 - https://web.archive.org/web/20071031014833/http://wow.allakhazam.com/db/mob.html?wmob=10040
13022); -- Whip Lasher	54	54 - https://web.archive.org/web/20071105202528/http://wow.allakhazam.com/db/mob.html?wmob=13022
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(60268, 13044, 0, 1, 1, 1, 0, 'Demonslayer'),
(60268, 13036, 0, 1, 1, 1, 0, 'Assassination Blade'),
(60268, 13118, 0, 1, 1, 1, 0, 'Serpentine Sash'),
(60268, 13091, 0, 1, 1, 1, 0, 'Medallion of Grand Marshal Morris');

-- 60269	NPC LOOT (Blue World Drop) - (Item Levels: 52-57) - (NPC Levels: 54-55)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60269, -60269, 0.1, 0, 1 FROM `creature_template` WHERE `entry` IN (
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
(60269, 13070, 0, 1, 1, 1, 0, 'Sapphiron\'s Scale Boots'),
(60269, 13047, 0, 1, 1, 1, 0, 'Twig of the World Tree'),
(60269, 13004, 0, 1, 1, 1, 0, 'Torch of Austen'),
(60269, 13007, 0, 1, 1, 1, 0, 'Mageflame Cloak'),
(60269, 13009, 0, 1, 1, 1, 0, 'Cow King\'s Hide'),
(60269, 7734, 0, 1, 1, 1, 0, 'Six Demon Bag'),
(60269, 13030, 0, 1, 1, 1, 0, 'Basilisk Bone'),
(60269, 13146, 0, 1, 1, 1, 0, 'Shell Launcher Shotgun');

-- 60270	NPC LOOT (Blue World Drop) - (Item Levels: 53-57) - (NPC Levels: 55)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60270, -60270, 0.1, 0, 1 FROM `creature_template` WHERE `entry` IN (
8578, -- https://web.archive.org/web/20071212140812/http://wow.allakhazam.com/db/mob.html?wmob=8578
10919, -- Shatterspear Troll	52	58 -- use 55 due to scrolls III - https://web.archive.org/web/20071030063647/http://wow.allakhazam.com/db/mob.html?wmob=10919
2931, -- Zaricotl	55	55 - https://web.archive.org/web/20071102041204/http://wow.allakhazam.com/db/mob.html?wmob=2931
9622, -- U'cha	55	55 - https://web.archive.org/web/20071103054414/http://wow.allakhazam.com/db/mob.html?wmob=9622
12052, -- Frostwolf Warrior	55	55 - https://web.archive.org/web/20071012174800/http://wow.allakhazam.com/db/mob.html?wmob=12052
15333); -- Silicate Feeder	55	55 - https://web.archive.org/web/20071017232256/http://wow.allakhazam.com/db/mob.html?wmob=15333
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(60270, 13004, 0, 1, 1, 1, 0, 'Torch of Austen'),
(60270, 13008, 0, 1, 1, 1, 0, 'Dalewind Trousers'),
(60270, 13030, 0, 1, 1, 1, 0, 'Basilisk Bone'),
(60270, 13059, 0, 1, 1, 1, 0, 'Stoneraven'),
(60270, 13070, 0, 1, 1, 1, 0, 'Sapphiron\'s Scale Boots'),
(60270, 13047, 0, 1, 1, 1, 0, 'Twig of the World Tree'),
(60270, 13146, 0, 1, 1, 1, 0, 'Shell Launcher Shotgun');

-- 60271	NPC LOOT (Blue World Drop) - (Item Levels: 53-58) - (NPC Levels: 55-56)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60271, -60271, 0.1, 0, 1 FROM `creature_template` WHERE `entry` IN (
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
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(60271, 1973, 0, 1, 1, 1, 0, 'Orb of Deception'),
(60271, 13101, 0, 1, 1, 1, 0, 'Wolfrunner Shoes'),
(60271, 4696, 0, 1, 1, 1, 0, 'Lapidis Tankard of Tidesippe'),
(60271, 13002, 0, 1, 1, 1, 0, 'Lady Alizabeth\'s Pendant'),
(60271, 13135, 0, 1, 1, 1, 0, 'Lordly Armguards');

-- 60272	NPC LOOT (Blue World Drop) - (Item Levels: 54-58) - (NPC Levels: 56)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60272, -60272, 0.1, 0, 1 FROM `creature_template` WHERE `entry` IN (
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
(60272, 13002, 0, 1, 1, 1, 0, 'Lady Alizabeth\'s Pendant'),
(60272, 13135, 0, 1, 1, 1, 0, 'Lordly Armguards'),
(60272, 4696, 0, 1, 1, 1, 0, 'Lapidis Tankard of Tidesippe');

-- 60273	NPC LOOT (Blue World Drop) - (Item Levels: 54-59) - (NPC Levels: 56-57)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60273, -60273, 0.1, 0, 1 FROM `creature_template` WHERE `entry` IN (
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
(60273, 13096, 0, 1, 1, 1, 0, 'Band of the Hierophant'),
(60273, 13060, 0, 1, 1, 1, 0, 'The Needler'),
(60273, 13053, 0, 1, 1, 1, 0, 'Doombringer'),
(60273, 13072, 0, 1, 1, 1, 0, 'Stonegrip Gauntlets'),
(60273, 13144, 0, 1, 1, 1, 0, 'Serenity Belt'),
(60273, 5266, 0, 1, 1, 1, 0, 'Eye of Adaegus'),
(60273, 13027, 0, 1, 1, 1, 0, 'Bonesnapper'),
(60273, 13014, 0, 1, 1, 1, 0, 'Axe of Rin\'ji'),
(60273, 23197, 0, 1, 1, 1, 0, 'Idol of the Moon'),
(60273, 23198, 0, 1, 1, 1, 0, 'Idol of Brutality'),
(60273, 23199, 0, 1, 1, 1, 3, 'Totem of the Storm'), -- Horde Player in classic only
(60273, 23203, 0, 1, 1, 1, 4, 'Libram of Fervor'); -- Alliance Player in classic only

-- 60274	NPC LOOT (Blue World Drop) - (Item Levels: 55-59) - (NPC Levels: 57)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60274, -60274, 0.1, 0, 1 FROM `creature_template` WHERE `entry` IN (
13335, -- Veteran Mountaineer	57	57 - https://web.archive.org/web/20051202182137/http://wow.allakhazam.com/db/mob.html?wmob=13335
12127, -- Stormpike Guardsman	57	57 - https://web.archive.org/web/20071031090656/http://wow.allakhazam.com/db/mob.html?wmob=12127
13336, -- Veteran Sentinel	57	57 - https://web.archive.org/web/20070109002246/http://wow.allakhazam.com/db/mob.html?wmob=13336
13337, -- Veteran Warrior	57	57 - https://web.archive.org/web/20070117032938/http://wow.allakhazam.com/db/mob.html?wmob=13337#
12051); -- Frostwolf Legionnaire	57	57 - https://web.archive.org/web/20060831163416/http://wow.allakhazam.com/db/mob.html?wmob=12051
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(60274, 13072, 0, 1, 1, 1, 0, 'Stonegrip Gauntlets'),
(60274, 9402, 0, 1, 1, 1, 0, 'Earthborn Kilt'),
(60274, 13053, 0, 1, 1, 1, 0, 'Doombringer'),
(60274, 13096, 0, 1, 1, 1, 0, 'Band of the Hierophant'),
(60274, 23197, 0, 1, 1, 1, 0, 'Idol of the Moon'),
(60274, 23198, 0, 1, 1, 1, 0, 'Idol of Brutality'),
(60274, 23199, 0, 1, 1, 1, 3, 'Totem of the Storm'), -- Horde Player in classic only
(60274, 23203, 0, 1, 1, 1, 4, 'Libram of Fervor'); -- Alliance Player in classic only

-- 60275	NPC LOOT (Blue World Drop) - (Item Levels: 55-60) - (NPC Levels: 57-58) - VANILLA NPC ONLY
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60275, -60275, 0.1, 0, 1 FROM `creature_template` WHERE `entry` IN (
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
(60275, 1203, 0, 1, 1, 1, 0, 'Aegis of Stormwind'),
(60275, 13133, 0, 1, 1, 1, 0, 'Drakesfire Epaulets'),
(60275, 1721, 0, 1, 1, 1, 0, 'Viking Warhammer'),
(60275, 13015, 0, 1, 1, 1, 0, 'Serathil'),
(60275, 13067, 0, 1, 1, 1, 0, 'Hydralick Armor'),
(60275, 13028, 0, 1, 1, 1, 0, 'Bludstone Hammer'),
(60275, 13001, 0, 1, 1, 1, 0, 'Maiden\'s Circle'),
(60275, 23197, 0, 1, 1, 1, 0, 'Idol of the Moon'),
(60275, 23198, 0, 1, 1, 1, 0, 'Idol of Brutality'),
(60275, 23199, 0, 1, 1, 1, 3, 'Totem of the Storm'), -- Horde Player in classic only
(60275, 23203, 0, 1, 1, 1, 4, 'Libram of Fervor'); -- Alliance Player in classic only

-- 60276	NPC LOOT (Blue World Drop) - (Item Levels: 56-60) - (NPC Levels: 58) - VANILLA NPC ONLY
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60276, -60276, 0.1, 0, 1 FROM `creature_template` WHERE `entry` IN (
10435, -- https://web.archive.org/web/20071227071608/http://wow.allakhazam.com/db/mob.html?wmob=10435
13218, -- https://www.wowhead.com/wotlk/npc=13218/grunnda-wolfheart
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
(60276, 13028, 0, 1, 1, 1, 0, 'Bludstone Hammer'),
(60276, 13001, 0, 1, 1, 1, 0, 'Maiden\'s Circle'),
(60276, 13015, 0, 1, 1, 1, 0, 'Serathil'),
(60276, 13116, 0, 1, 1, 1, 0, 'Spaulders of the Unseen'),
(60276, 23197, 0, 1, 1, 1, 0, 'Idol of the Moon'),
(60276, 23198, 0, 1, 1, 1, 0, 'Idol of Brutality'),
(60276, 23199, 0, 1, 1, 1, 3, 'Totem of the Storm'), -- Horde Player in classic only
(60276, 23203, 0, 1, 1, 1, 4, 'Libram of Fervor'); -- Alliance Player in classic only

-- 60277	NPC LOOT (Blue World Drop) - (Item Levels: 56-60) - (NPC Levels: 58-59) - VANILLA NPC ONLY
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60277, -60277, 0.1, 0, 1 FROM `creature_template` WHERE `entry` IN (
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
(60277, 13107, 0, 1, 1, 1, 0, 'Magiskull Cuffs'),
(60277, 13123, 0, 1, 1, 1, 0, 'Dreamwalker Armor'),
(60277, 13000, 0, 1, 1, 1, 0, 'Staff of Hale Magefire'),
(60277, 6660, 0, 1, 1, 1, 0, 'Julie\'s Dagger'),
(60277, 13083, 0, 1, 1, 1, 0, 'Garrett Family Crest'),
(60277, 8190, 0, 1, 1, 1, 0, 'Hanzo Sword'),
(60277, 13120, 0, 1, 1, 1, 0, 'Deepfury Bracers'),
(60277, 13122, 0, 1, 1, 1, 0, 'Dark Phantom Cape'),
(60277, 13006, 0, 1, 1, 1, 0, 'Mass of McGowan'),
(60277, 13022, 0, 1, 1, 1, 0, 'Gryphonwing Long Bow'),
(60277, 23197, 0, 1, 1, 1, 0, 'Idol of the Moon'),
(60277, 23198, 0, 1, 1, 1, 0, 'Idol of Brutality'),
(60277, 23199, 0, 1, 1, 1, 3, 'Totem of the Storm'), -- Horde Player in classic only
(60277, 23203, 0, 1, 1, 1, 4, 'Libram of Fervor'); -- Alliance Player in classic only

-- 60278	NPC LOOT (Blue World Drop) - (Item Levels: 56-60) - (NPC Levels: 59) - VANILLA NPC ONLY
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60278, -60278, 0.1, 0, 1 FROM `creature_template` WHERE `entry` IN (
9237, -- 58 58 tbc+ https://web.archive.org/web/20080112092350/http://wow.allakhazam.com/db/mob.html?wmob=9237
13296, -- Lieutenant Largent (59-59) - https://web.archive.org/web/20071031062521/http://wow.allakhazam.com/db/mob.html?wmob=13296
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
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(60278, 13107, 0, 1, 1, 1, 0, 'Magiskull Cuffs'),
(60278, 13083, 0, 1, 1, 1, 0, 'Garrett Family Crest'),
(60278, 23197, 0, 1, 1, 1, 0, 'Idol of the Moon'),
(60278, 23198, 0, 1, 1, 1, 0, 'Idol of Brutality'),
(60278, 23199, 0, 1, 1, 1, 3, 'Totem of the Storm'), -- Horde Player in classic only
(60278, 23203, 0, 1, 1, 1, 4, 'Libram of Fervor'); -- Alliance Player in classic only

-- 60279	NPC LOOT (Blue World Drop) - (Item Levels: 56-60) - (NPC Levels: 59-60) - VANILLA NPC ONLY
DELETE FROM `creature_loot_template` WHERE `entry` = 11883 AND `mincountOrRef` = -60280;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60279, -60279, 0.1, 0, 1 FROM `creature_template` WHERE `entry` IN (
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
(60279, 13023, 0, 1, 1, 1, 0, 'Eaglehorn Long Bow'),
(60279, 13113, 0, 1, 1, 1, 0, 'Feathermoon Headdress'),
(60279, 13075, 0, 1, 1, 1, 0, 'Direwing Legguards'),
(60279, 6622, 0, 1, 1, 1, 0, 'Sword of Zeal'),
(60279, 5267, 0, 1, 1, 1, 0, 'Scarlet Kris'),
(60279, 13013, 0, 1, 1, 1, 0, 'Elder Wizard\'s Mantle'),
(60279, 13040, 0, 1, 1, 1, 0, 'Heartseeking Crossbow'),
(60279, 23197, 0, 1, 1, 1, 0, 'Idol of the Moon'),
(60279, 23198, 0, 1, 1, 1, 0, 'Idol of Brutality'),
(60279, 23199, 0, 1, 1, 1, 3, 'Totem of the Storm'), -- Horde Player in classic only
(60279, 23203, 0, 1, 1, 1, 4, 'Libram of Fervor'); -- Alliance Player in classic only

-- 60280	NPC LOOT (Blue World Drop) - (Item Levels: 56-60) - (NPC Levels: 60) - VANILLA NPC ONLY
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60280, -60280, 0.1, 0, 1 FROM `creature_template` WHERE `entry` IN (
11120, -- https://web.archive.org/web/20071222062337/http://wow.allakhazam.com/db/mob.html?wmob=11120
13617, -- Stormpike Stable Master (60-60) - https://web.archive.org/web/20071231183300/http://wow.allakhazam.com/db/mob.html?wmob=13617
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
(60280, 13113, 0, 1, 1, 1, 0, 'Feathermoon Headdress'),
(60280, 6622, 0, 1, 1, 1, 0, 'Sword of Zeal'),
(60280, 13023, 0, 1, 1, 1, 0, 'Eaglehorn Long Bow'),
(60280, 13075, 0, 1, 1, 1, 0, 'Direwing Legguards'),
(60280, 6622, 0, 1, 1, 1, 0, 'Sword of Zeal'),
(60280, 5267, 0, 1, 1, 1, 0, 'Scarlet Kris'),
(60280, 23197, 0, 1, 1, 1, 0, 'Idol of the Moon'),
(60280, 23198, 0, 1, 1, 1, 0, 'Idol of Brutality'),
(60280, 23199, 0, 1, 1, 1, 3, 'Totem of the Storm'), -- Horde Player in classic only
(60280, 23203, 0, 1, 1, 1, 4, 'Libram of Fervor'); -- Alliance Player in classic only

-- 60281	NPC LOOT (Blue World Drop) - (Item Levels: 56-60) - (NPC Levels: 60-61) - VANILLA NPC ONLY
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60281, -60281, 0.1, 0, 1 FROM `creature_template` WHERE `entry` IN (
4366, -- Strashaz Serpent Guard (59-61) - https://web.archive.org/web/20080104175133/http://wow.allakhazam.com/db/mob.html?wmob=4366
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
(60281, 13077, 0, 1, 1, 1, 0, 'Girdle of Uther'),
(60281, 13118, 0, 1, 1, 1, 0, 'Serpentine Sash'),
(60281, 13036, 0, 1, 1, 1, 0, 'Assassination Blade'),
(60281, 13044, 0, 1, 1, 1, 0, 'Demonslayer'),
(60281, 13040, 0, 1, 1, 1, 0, 'Heartseeking Crossbow'),
(60281, 13003, 0, 1, 1, 1, 0, 'Lord Alexander\'s Battle Axe'),
(60281, 13013, 0, 1, 1, 1, 0, 'Elder Wizard\'s Mantle'),
(60281, 13091, 0, 1, 1, 1, 0, 'Medallion of Grand Marshal Morris'),
(60281, 24222, 0, 1, 1, 1, 0, 'The Shadowfoot Stabber'),
(60281, 23197, 0, 1, 1, 1, 0, 'Idol of the Moon'),
(60281, 23198, 0, 1, 1, 1, 0, 'Idol of Brutality'),
(60281, 23199, 0, 1, 1, 1, 3, 'Totem of the Storm'), -- Horde Player in classic only
(60281, 23203, 0, 1, 1, 1, 4, 'Libram of Fervor'); -- Alliance Player in classic only

-- 60282	NPC LOOT (Blue World Drop) - (Item Levels: 56-60) - (NPC Levels: 61) - VANILLA NPC ONLY
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60282, -60282, 0.1, 0, 1 FROM `creature_template` WHERE `entry` IN (
10503, -- https://web.archive.org/web/20071225212324/http://wow.allakhazam.com/db/mob.html?wmob=10503
1853, -- https://web.archive.org/web/20071218195824/http://wow.allakhazam.com/db/mob.html?wmob=1853
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
(60282, 13004, 0, 1, 1, 1, 0, 'Torch of Austen'),
(60282, 23197, 0, 1, 1, 1, 0, 'Idol of the Moon'),
(60282, 23198, 0, 1, 1, 1, 0, 'Idol of Brutality'),
(60282, 23199, 0, 1, 1, 1, 3, 'Totem of the Storm'), -- Horde Player in classic only
(60282, 23203, 0, 1, 1, 1, 4, 'Libram of Fervor'); -- Alliance Player in classic only

-- 60283	NPC LOOT (Blue World Drop) - (Item Levels: 56-60) - (NPC Levels: 61-62) - VANILLA NPC ONLY
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60283, -60283, 0.1, 0, 1 FROM `creature_template` WHERE `entry` IN (
12801, -- Arcane Chimaerok	60	62 - https://web.archive.org/web/20071106033527/http://wow.allakhazam.com/db/mob.html?wmob=12801
11666, -- Firewalker	61	62 - https://web.archive.org/web/20071027090606/http://wow.allakhazam.com/db/mob.html?wmob=11666
12101, -- Lava Surger	61	62 - https://web.archive.org/web/20071102213119/http://wow.allakhazam.com/db/mob.html?wmob=12101
12802, -- Chimaerok Devourer	61	62 - https://web.archive.org/web/20071111235336/http://wow.allakhazam.com/db/mob.html?wmob=12802
11665, -- Lava Annihilator	61	62 - https://web.archive.org/web/20071230131733/http://wow.allakhazam.com/db/mob.html?wmob=11665
11667, -- Flameguard	61	62 - https://web.archive.org/web/20071226230851/http://wow.allakhazam.com/db/mob.html?wmob=11667
11668, -- Firelord	61	62 - https://web.archive.org/web/20071226220130/http://wow.allakhazam.com/db/mob.html?wmob=11668
12076); -- Lava Elemental	61	62 - https://web.archive.org/web/20080103224404/http://wow.allakhazam.com/db/mob.html?wmob=12076
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(60283, 13047, 0, 1, 1, 1, 0, 'Twig of the World Tree'),
(60283, 23197, 0, 1, 1, 1, 0, 'Idol of the Moon'),
(60283, 23198, 0, 1, 1, 1, 0, 'Idol of Brutality'),
(60283, 23199, 0, 1, 1, 1, 3, 'Totem of the Storm'), -- Horde Player in classic only
(60283, 23203, 0, 1, 1, 1, 4, 'Libram of Fervor'); -- Alliance Player in classic only

-- 60284	NPC LOOT (Blue World Drop) - (Item Levels: 56-60) - (NPC Levels: 62-63) - VANILLA NPC ONLY
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60284, -60284, 0.1, 0, 1 FROM `creature_template` WHERE `entry` IN (
10429, -- https://web.archive.org/web/20071229110227/http://wow.allakhazam.com/db/mob.html?wmob=10429
5312, -- Lethlas (62-62) - https://web.archive.org/web/20071228102755/http://wow.allakhazam.com/db/mob.html?wmob=5312
12498, -- Dreamstalker (62-62) - https://web.archive.org/web/20071228052346/http://wow.allakhazam.com/db/mob.html?wmob=12498
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
(60284, 13146, 0, 1, 1, 1, 0, 'Shell Launcher Shotgun'),
(60284, 13002, 0, 1, 1, 1, 0, 'Lady Alizabeth\'s Pendant'),
(60284, 13101, 0, 1, 1, 1, 0, 'Wolfrunner Shoes'),
(60284, 13044, 0, 1, 1, 1, 0, 'Demonslayer'),
(60284, 23197, 0, 1, 1, 1, 0, 'Idol of the Moon'),
(60284, 23198, 0, 1, 1, 1, 0, 'Idol of Brutality'),
(60284, 23199, 0, 1, 1, 1, 3, 'Totem of the Storm'), -- Horde Player in classic only
(60284, 23203, 0, 1, 1, 1, 4, 'Libram of Fervor'); -- Alliance Player in classic only

-- =======================================
-- Bonus: Some Instance Blue Item Refloots
-- =======================================

-- 30001	Shadowfang Keep - Zone Drop - 11 items
DELETE FROM `creature_loot_template` WHERE `item` IN (1483,3194,1974,1484,2807,1318,1482,1935,2205,1489,2292);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 30001, -30001, 0.25, 0, 1 FROM `creature_template` WHERE `entry` IN (
3864,3866,3863,3868,3877,3855,3886,3873,3914,3859,3865,3875,2529,3887,3850,4278,3861,3927,3857,3853,3862,3851,4274,4275,4279,3854,14682);

-- 30002	Blackfathom Deeps - Zone Drop - 11 items
DELETE FROM `creature_loot_template` WHERE `item` IN (2567,2271,1486,3415,1481,3413,1491,3417,3416,1454,3414);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 30002, -30002, 0.25, 0, 1 FROM `creature_template` WHERE `entry` IN (
4824,4827,4814,4821,4822,4805,4799,4798,4809,4978,4825,4807,4819,4823,4820,4812,4887,4811,4803,12902,4818,4829,4789,4813,4815,4832,4788,4810,4802,12876);
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 0.1 WHERE `MinCountOrRef` = -30002 AND `entry` IN (4788,4789,4802,4803);

-- 30003	Razorfen Kraul - Zone Drop - 10 items
DELETE FROM `creature_loot_template` WHERE `item` IN (2549,1978,1727,1975,1976,2039,2264,4438,1488,776);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 30003, -30003, 0.25, 0, 1 FROM `creature_template` WHERE `entry` IN (
4511,4424,4522,4427,4523,4516,4435,4442,45184623,4519,4440,6168,4428,4538,4532,4525,4520,4512,4438,4531,4436,4515,4517,4539,6035,4530,4514,4437,4420,4518,4623);

-- 30004	Gnomeregan - Zone Drop - 10 items
DELETE FROM `creature_loot_template` WHERE `item` IN (9486,9488,9487,9490,9509,9485,9508,9489,9510,9491);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 30004, -30004, 0.25, 0, 1 FROM `creature_template` WHERE `entry` IN (
6213,6392,6232,6215,6223,6220,6233,6227,6234,6225,6391,7800,6230,6208,6207,6211,6231,6226,6212,6206,6235,6329,7079,6210,6407);
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 0.1 WHERE `MinCountOrRef` = -30004 AND `entry` IN (6231,6207,6208,6210,6213);

-- 30005	Scarlet Monastery (Graveyard / Library / Armory / Cathedral) - Zone Drop - 23 items (maybe split inbetween parts of Scarlet Monastery?)
DELETE FROM `creature_loot_template` WHERE `item` IN (1992,2262,5756,5819,7727,7728,7729,7730,7736,7752,7753,7754,7755,7757,7758,7759,7760,7761,7786,7787,8225,8226,10332);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 30005, -30005, 0.25, 0, 1 FROM `creature_template` WHERE `entry` IN (
6426,4543,3975,3977,4303,4288,4302,3976,4298,4289,4290,4295,4286,4304,6487,6427,4542,3974,4296,4301,4299,4297,4291,4287,4540,4292,4294,4300,4293,4306,14693);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 30005, -30005, 0.1, 0, 1 FROM `creature_template` WHERE `entry` IN (4280,4281,4282,4284,4285,4308,4283); -- outside & nonelites

-- 30006	Razorfen Downs - Zone Drop - 11 items
DELETE FROM `creature_loot_template` WHERE `item` IN (10584,10582,10571,10573,10578,10567,10583,10570,10572,10574,10581);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 30006, -30006, 0.25, 0, 1 FROM `creature_template` WHERE `entry` IN (
7349,7352,7337,7351,7332,7341,7328,7327,7348,7347,7342,7353,7329,7873,7345,7355,7335,7874,7358,7872,12865,14686);
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 0.1 WHERE `MinCountOrRef` = -30006 AND `entry` IN (7349,12865,7874,7873,7872);

-- 30007	Uldaman - Zone Drop - 23 items (maybe split inbetween parts of the instance)
DELETE FROM `creature_loot_template` WHERE `item` IN (9428,9406,9384,9386,9420,9391,9381,9393,9396,9397,9392,9383,9426,9424,9427,9432,9431,9422,9429,9425,9423,9465,9430);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 30007, -30007, 0.25, 0, 1 FROM `creature_template` WHERE `entry` IN (
4863,4852,4851,4860,4845,4856,4846,4844,7030,4850,4861,4847,7022,7012,7228,7206,4853,7290,7321,4855,4854,7320,4848,4849,4857,4872,7023,7091);
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 0.1 WHERE `MinCountOrRef` = -30007 AND `entry` IN (4844,4872,7012,4856,7091,4851,4845,4846);

-- 30008	Zul'Farrak - Zone Drop - 11 items
DELETE FROM `creature_loot_template` WHERE `item` IN (9512,9511,5616,9482,9480,2040,6440,9481,9483,862,9484);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 30008, -30008, 0.25, 0, 1 FROM `creature_template` WHERE `entry` IN (7797,7795,7608,7606,7274,7796,7273,7604,7267,7272,8127,7275,7605,10082,7271);

-- 30009	Sunken Temple (Temple of Atal'Hakkar) - Zone Drop - 12 items (already have 0.25%)
DELETE FROM `reference_loot_template` WHERE `item` IN (10634,10631,10627,10624,10623,10628,10625,10632,10629,10626,10633,10630) AND `entry` = 60251; -- NPC LOOT (Blue World Drop) - (Item Levels: 42-49) - (NPC Levels: 45-46)
DELETE FROM `creature_loot_template` WHERE `item` IN (10634,10631,10627,10624,10623,10628,10625,10632,10629,10626,10633,10630);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 30009, -30009, 0.1, 0, 1 FROM `creature_template` WHERE `entry` IN (5225,5224,5263,5235); -- outside

-- 30010	Blackrock Depths - Zone Drop - 13 items
DELETE FROM `creature_loot_template` WHERE `item` IN (12542,12531,12528,12549,12527,12550,12535,12546,12555,12552,12551,12547,12532);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 30010, -30010, 0.25, 0, 1 FROM `creature_template` WHERE `entry` IN (
9678,8894,8903,8893,8895,9554,9032,9029,8899,10043,8891,8892,9041,8907,8908,8898,9541,8983,8890,8911,8905,8910,8914,8912,9018,
9019,9033,8889,8909,9056,9017,8906,9026,9442,9441,9681,9319,9680,9445,9024,9016,9042,9025,9437,9438,9439,9476,9677
-- tbc+
-- ,24818,24819
);
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 0.1 WHERE `MinCountOrRef` = -30010 AND `entry` IN (24818,24819);

-- 30011	Dire Maul (East / West) - Zone Drop - Unique Items
DELETE FROM `reference_loot_template` WHERE `entry` = 30011;
DELETE FROM `reference_loot_template_names` WHERE `entry` = 30011;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 1.2, `groupid` = 9 WHERE `item` = 18295 /*Phasing Boots*/ AND `entry` = 13196; -- https://web.archive.org/web/20060614131011/http://wow.allakhazam.com/db/mob.html?wmob=13196
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 0.6, `groupid` = 9 WHERE `item` = 18296 /*Marksman Bands*/ AND `entry` IN (11451,11452,11454,11455,11456,11457); -- https://web.archive.org/web/20080113021305/http://wow.allakhazam.com/db/item.html?witem=18296
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 0.6, `groupid` = 9 WHERE `item` = 18298 /*Unbridled Leggings*/ AND `entry` IN (11451,11452,11454,11455,11456,11457); -- https://web.archive.org/web/20080119015122/http://wow.allakhazam.com/db/item.html?witem=18298
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 0.8, `groupid` = 9 WHERE `item` = 18289 /*Barbed Thorn Necklace*/ AND `entry` IN (11461,11462,11464,11465,13021); -- https://web.archive.org/web/20080203044704/http://wow.allakhazam.com/db/item.html?witem=18289
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 0.8, `groupid` = 9 WHERE `item` = 18338 /*Wand of Arcane Potency*/ AND `entry` IN (11480,11483,11484,14399); -- https://web.archive.org/web/20080203044915/http://wow.allakhazam.com/db/item.html?witem=18338
DELETE FROM `creature_loot_template` WHERE `item` = 18338 AND `entry` = 14690;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 0.5, `groupid` = 9 WHERE `item` = 18344 /*Stonebark Gauntlets*/ AND `entry` IN (11458,11459,14303); -- https://web.archive.org/web/20080203044925/http://wow.allakhazam.com/db/item.html?witem=18344
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 0.6, `groupid` = 9 WHERE `item` = 18340 /*Eidolon Talisman*/ AND `entry` IN (11471,11472,11473,11475); -- https://web.archive.org/web/20080228130551/http://wow.allakhazam.com/db/item.html?witem=18340

-- ==================================================================================
-- classicmangos only fixes due to item/mincountOrRef being async (level diff and loot not being adjusted correctly - only blue refloots)
-- SELECT clt.entry,clt.item,clt.mincountOrRef,ct.name,ct.minlevel,ct.maxlevel,comments FROM creature_loot_template clt left join creature_template ct on clt.entry=ct.entry
-- where (clt.mincountorref between -60284 AND -60200) AND clt.item != -clt.mincountorref order by clt.entry;

UPDATE `creature_loot_template` SET `mincountOrRef` = -item WHERE `item` = 60201 AND `entry` IN (
5763); -- 60201	-60200	Nightmare Ectoplasm	20	21	NPC LOOT (Blue World Drop) - (Item Levels: 20-23) - (NPC Levels: 18-20)

UPDATE `creature_loot_template` SET `mincountOrRef` = -item WHERE `item` = 60203 AND `entry` IN (
4789, -- 60203	-60202	Fallenroot Rogue	21	22	NPC LOOT (Blue World Drop) - (Item Levels: 20-23) - (NPC Levels: 21)
4803); -- 60203	-60202	Blackfathom Oracle	21	22	NPC LOOT (Blue World Drop) - (Item Levels: 20-23) - (NPC Levels: 21)

UPDATE `creature_loot_template` SET `mincountOrRef` = -item WHERE `item` = 60205 AND `entry` IN (
4807); -- 60205	-60204	Blackfathom Myrmidon	22	23	NPC LOOT (Blue World Drop) - (Item Levels: 21-25) - (NPC Levels: 22)

UPDATE `creature_loot_template` SET `mincountOrRef` = -item WHERE `item` = 60207 AND `entry` IN (
1706, -- 60207	-60206	Defias Prisoner	23	24	NPC LOOT (Blue World Drop) - (Item Levels: 21-25) - (NPC Levels: 23)
4798, -- 60207	-60205	Fallenroot Shadowstalker	23	24	NPC LOOT (Blue World Drop) - (Item Levels: 20-26) - (NPC Levels: 22-23)
4805); -- 60207	-60205	Blackfathom Sea Witch	23	24	NPC LOOT (Blue World Drop) - (Item Levels: 20-26) - (NPC Levels: 22-23)

UPDATE `creature_loot_template` SET `mincountOrRef` = -item WHERE `item` = 60208 AND `entry` IN (
1947); -- 60208	-60200	Thule Ravenclaw	24	24	NPC LOOT (Blue World Drop) - (Item Levels: 20-23) - (NPC Levels: 18-20)
UPDATE `creature_loot_template` SET `item` = -mincountOrRef WHERE `mincountOrRef` = -60208 AND `entry` IN (
3392); -- 60212	-60208	Prospector Khazgorm	26	26	NPC LOOT (Blue World Drop) - (Item Levels: 22-27) - (NPC Levels: 24)

UPDATE `creature_loot_template` SET `mincountOrRef` = -item WHERE `item` = 60209 AND `entry` IN (
1708, -- 60209	-60207	Defias Inmate	24	25	NPC LOOT (Blue World Drop) - (Item Levels: 21-27) - (NPC Levels: 23-24)
1711, -- 60209	-60207	Defias Convict	24	25	NPC LOOT (Blue World Drop) - (Item Levels: 21-27) - (NPC Levels: 23-24)
4799, -- 60209	-60205	Fallenroot Hellcaller	24	25	NPC LOOT (Blue World Drop) - (Item Levels: 20-26) - (NPC Levels: 22-23)
4809, -- 60209	-60205	Twilight Acolyte	24	25	NPC LOOT (Blue World Drop) - (Item Levels: 20-26) - (NPC Levels: 22-23)
4812); -- 60209	-60205	Twilight Loreseeker	24	25	NPC LOOT (Blue World Drop) - (Item Levels: 20-26) - (NPC Levels: 22-23)

UPDATE `creature_loot_template` SET `mincountOrRef` = -item WHERE `item` = 60210 AND `entry` IN (
518); -- 60210	-60200	Yowler	25	25	NPC LOOT (Blue World Drop) - (Item Levels: 20-23) - (NPC Levels: 18-20)

UPDATE `creature_loot_template` SET `mincountOrRef` = -item WHERE `item` = 60211 AND `entry` IN (
1715, -- 60211	-60208	Defias Insurgent	25	26	NPC LOOT (Blue World Drop) - (Item Levels: 22-27) - (NPC Levels: 24)
4436, -- 60211	-60210	Razorfen Quilguard	25	26	NPC LOOT (Blue World Drop) - (Item Levels: 23-28) - (NPC Levels: 25)
4437, -- 60211	-60210	Razorfen Warden	25	26	NPC LOOT (Blue World Drop) - (Item Levels: 23-28) - (NPC Levels: 25)
4530, -- 60211	-60210	Razorfen Handler	25	26	NPC LOOT (Blue World Drop) - (Item Levels: 23-28) - (NPC Levels: 25)
4810, -- 60211	-60206	Twilight Reaver	25	26	NPC LOOT (Blue World Drop) - (Item Levels: 21-25) - (NPC Levels: 23)
4811); -- 60211	-60206	Twilight Aquamancer	25	26	NPC LOOT (Blue World Drop) - (Item Levels: 21-25) - (NPC Levels: 23)

UPDATE `creature_loot_template` SET `mincountOrRef` = -item WHERE `item` = 60212 AND `entry` IN (
1663); -- 60212	-60210	Dextren Ward	26	26	NPC LOOT (Blue World Drop) - (Item Levels: 23-28) - (NPC Levels: 25)

UPDATE `creature_loot_template` SET `mincountOrRef` = -item WHERE `item` = 60213 AND `entry` IN (
1034, -- 60213	-60207	Dragonmaw Raider	26	27	NPC LOOT (Blue World Drop) - (Item Levels: 21-27) - (NPC Levels: 23-24)
4517, -- 60213	-60210	Death's Head Priest	26	27	NPC LOOT (Blue World Drop) - (Item Levels: 23-28) - (NPC Levels: 25)
4813, -- 60213	-60206	Twilight Shadowmage	26	27	NPC LOOT (Blue World Drop) - (Item Levels: 21-25) - (NPC Levels: 23)
4814); -- 60213	-60206	Twilight Elementalist	26	27	NPC LOOT (Blue World Drop) - (Item Levels: 21-25) - (NPC Levels: 23)

UPDATE `creature_loot_template` SET `item` = 60215, `mincountOrRef` = -60215 WHERE `item` = 60214 AND `entry` =
1057; -- 60214	-60207	Dragonmaw Bonewarder	27	27	NPC LOOT (Blue World Drop) - (Item Levels: 21-27) - (NPC Levels: 23-24)

UPDATE `creature_loot_template` SET `mincountOrRef` = -item WHERE `item` = 60215 AND `entry` IN (
1035, -- 60215	-60207	Dragonmaw Swamprunner	27	28	NPC LOOT (Blue World Drop) - (Item Levels: 21-27) - (NPC Levels: 23-24)
4442, -- 60215	-60211	Razorfen Defender	27	28	NPC LOOT (Blue World Drop) - (Item Levels: 22-29) - (NPC Levels: 25-26)
4516, -- 60215	-60211	Death's Head Adept	27	28	NPC LOOT (Blue World Drop) - (Item Levels: 22-29) - (NPC Levels: 25-26)
4523, -- 60215	-60211	Razorfen Groundshaker	27	28	NPC LOOT (Blue World Drop) - (Item Levels: 22-29) - (NPC Levels: 25-26)
6218); -- 60215	-60212	Irradiated Slime	27	28	NPC LOOT (Blue World Drop) - (Item Levels: 24-28) - (NPC Levels: 26)

UPDATE `creature_loot_template` SET `mincountOrRef` = -item WHERE `item` = 60216 AND `entry` IN (
6168); -- 60216	-60212	Roogug	28	28	NPC LOOT (Blue World Drop) - (Item Levels: 24-28) - (NPC Levels: 26)

UPDATE `creature_loot_template` SET `mincountOrRef` = -item WHERE `item` = 60217 AND `entry` IN (
1036, -- 60217	-60209	Dragonmaw Centurion	28	29	NPC LOOT (Blue World Drop) - (Item Levels: 21-28) - (NPC Levels: 24-25)
1038, -- 60217	-60207	Dragonmaw Shadowwarder	28	29	NPC LOOT (Blue World Drop) - (Item Levels: 21-27) - (NPC Levels: 23-24)
4515, -- 60217	-60211	Death's Head Acolyte	28	29	NPC LOOT (Blue World Drop) - (Item Levels: 22-29) - (NPC Levels: 25-26)
4519, -- 60217	-60211	Death's Head Seer	28	29	NPC LOOT (Blue World Drop) - (Item Levels: 22-29) - (NPC Levels: 25-26)
4522, -- 60217	-60211	Razorfen Dustweaver	28	29	NPC LOOT (Blue World Drop) - (Item Levels: 22-29) - (NPC Levels: 25-26)
4531, -- 60217	-60211	Razorfen Beast Trainer	28	29	NPC LOOT (Blue World Drop) - (Item Levels: 22-29) - (NPC Levels: 25-26)
6035, -- 60217	-60211	Razorfen Stalker	28	29	NPC LOOT (Blue World Drop) - (Item Levels: 22-29) - (NPC Levels: 25-26)
6219, -- 60217	-60213	Corrosive Lurker	28	29	NPC LOOT (Blue World Drop) - (Item Levels: 23-30) - (NPC Levels: 26-27)
6223, -- 60217	-60213	Leprous Defender	28	29	NPC LOOT (Blue World Drop) - (Item Levels: 23-30) - (NPC Levels: 26-27)
7603); -- 60217	-60213	Leprous Assistant	28	29	NPC LOOT (Blue World Drop) - (Item Levels: 23-30) - (NPC Levels: 26-27)

UPDATE `creature_loot_template` SET `mincountOrRef` = -item WHERE `item` = 60218 AND `entry` IN (
1716, -- 60218	-60210	Bazil Thredd	29	29	NPC LOOT (Blue World Drop) - (Item Levels: 23-28) - (NPC Levels: 25)
4440); -- 60218	-60211	Razorfen Totemic	29	29	NPC LOOT (Blue World Drop) - (Item Levels: 22-29) - (NPC Levels: 25-26)

UPDATE `creature_loot_template` SET `mincountOrRef` = -item WHERE `item` = 60219 AND `entry` IN (
4438, -- 60219	-60211	Razorfen Spearhide	29	30	NPC LOOT (Blue World Drop) - (Item Levels: 22-29) - (NPC Levels: 25-26)
4518, -- 60219	-60211	Death's Head Sage	29	30	NPC LOOT (Blue World Drop) - (Item Levels: 22-29) - (NPC Levels: 25-26)
6222, -- 60219	-60213	Leprous Technician	29	30	NPC LOOT (Blue World Drop) - (Item Levels: 23-30) - (NPC Levels: 26-27)
6224); -- 60219	-60213	Leprous Machinesmith	29	30	NPC LOOT (Blue World Drop) - (Item Levels: 23-30) - (NPC Levels: 26-27)

UPDATE `creature_loot_template` SET `item` = -mincountOrRef WHERE `mincountOrRef` = -60220 AND `entry` IN (
300); -- 60226	-60220	Zzarc' Vul	30	30	NPC LOOT (Blue World Drop) - (Item Levels: 28-33) - (NPC Levels: 30)

UPDATE `creature_loot_template` SET `mincountOrRef` = -item WHERE `item` = 60220 AND `entry` IN (
1037); -- 60220	-60209	Dragonmaw Battlemaster	30	30	NPC LOOT (Blue World Drop) - (Item Levels: 21-28) - (NPC Levels: 24-25)

UPDATE `creature_loot_template` SET `item` = 60221, `mincountOrRef` = -60221 WHERE `item` = 60220 AND `entry` =
6230; -- 60220	-60214	Peacekeeper Security Suit	30	30	NPC LOOT (Blue World Drop) - (Item Levels: 25-29) - (NPC Levels: 27)

UPDATE `creature_loot_template` SET `mincountOrRef` = -item WHERE `item` = 60221 AND `entry` IN (
4525, -- 60221	-60212	Razorfen Earthbreaker	30	31	NPC LOOT (Blue World Drop) - (Item Levels: 24-28) - (NPC Levels: 26)
4532, -- 60221	-60212	Razorfen Beastmaster	30	31	NPC LOOT (Blue World Drop) - (Item Levels: 24-28) - (NPC Levels: 26)
4538, -- 60221	-60212	Kraul Bat	30	31	NPC LOOT (Blue World Drop) - (Item Levels: 24-28) - (NPC Levels: 26)
4623); -- 60221	-60212	Quilguard Champion	30	31	NPC LOOT (Blue World Drop) - (Item Levels: 24-28) - (NPC Levels: 26)

UPDATE `creature_loot_template` SET `mincountOrRef` = -item WHERE `item` = 60222 AND `entry` IN (
314, -- 60222	-60220	Eliza	31	31	NPC LOOT (Blue World Drop) - (Item Levels: 28-33) - (NPC Levels: 30)
4427); -- 60222	-60212	Ward Guardian	31	31	NPC LOOT (Blue World Drop) - (Item Levels: 24-28) - (NPC Levels: 26)

UPDATE `creature_loot_template` SET `mincountOrRef` = -item WHERE `item` = 60224 AND `entry` IN (
2091, -- 60224	-60212	Chieftain Nek'rosh	32	32	NPC LOOT (Blue World Drop) - (Item Levels: 24-28) - (NPC Levels: 26)
4539); -- 60224	-60212	Greater Kraul Bat	32	32	NPC LOOT (Blue World Drop) - (Item Levels: 24-28) - (NPC Levels: 26)

UPDATE `creature_loot_template` SET `mincountOrRef` = -item WHERE `item` = 60225 AND `entry` IN (
6212, -- 60225	-60214	Dark Iron Agent	32	33	NPC LOOT (Blue World Drop) - (Item Levels: 25-29) - (NPC Levels: 27)
6232); -- 60225	-60214	Arcane Nullifier X-21	32	33	NPC LOOT (Blue World Drop) - (Item Levels: 25-29) - (NPC Levels: 27)

UPDATE `creature_loot_template` SET `mincountOrRef` = -item WHERE `item` = 60228 AND `entry` IN (
1364); -- 60228	-60222	Balgaras the Foul	34	34	NPC LOOT (Blue World Drop) - (Item Levels: 29-33) - (NPC Levels: 31)

UPDATE `creature_loot_template` SET `mincountOrRef` = -item WHERE `item` = 60229 AND `entry` IN (
4291); -- 60229	-60228	Scarlet Diviner	34	35	NPC LOOT (Blue World Drop) - (Item Levels: 32-36) - (NPC Levels: 34)

UPDATE `creature_loot_template` SET `mincountOrRef` = -item WHERE `item` = 60230 AND `entry` IN (
522); -- 60230	-60220	Mor'Ladim	35	35	NPC LOOT (Blue World Drop) - (Item Levels: 28-33) - (NPC Levels: 30)

UPDATE `creature_loot_template` SET `mincountOrRef` = -item WHERE `item` = 60231 AND `entry` IN (
4286, -- 60231	-60230	Scarlet Soldier	35	36	NPC LOOT (Blue World Drop) - (Item Levels: 33-37) - (NPC Levels: 35)
4297); -- 60231	-60230	Scarlet Conjuror	35	36	NPC LOOT (Blue World Drop) - (Item Levels: 33-37) - (NPC Levels: 35)

UPDATE `creature_loot_template` SET `mincountOrRef` = -item WHERE `item` = 60232 AND `entry` IN (
12865); -- 60232	-60230	Ambassador Malcin	36	36	NPC LOOT (Blue World Drop) - (Item Levels: 33-37) - (NPC Levels: 35)

UPDATE `creature_loot_template` SET `mincountOrRef` = -item WHERE `item` = 60233 AND `entry` IN (
4289, -- 60233	-60231	Scarlet Evoker	36	37	NPC LOOT (Blue World Drop) - (Item Levels: 33-39) - (NPC Levels: 35-36)
4845); -- 60233	-60231	Shadowforge Ruffian	36	37	NPC LOOT (Blue World Drop) - (Item Levels: 33-39) - (NPC Levels: 35-36)

UPDATE `creature_loot_template` SET `item` = 60232, `mincountOrRef` = -60232 WHERE `item` = 60234 AND `entry` =
4132; -- 60234	-60232	Silithid Ravager	37	37	NPC LOOT (Blue World Drop) - (Item Levels: 34-38) - (NPC Levels: 36)

UPDATE `creature_loot_template` SET `mincountOrRef` = -item WHERE `item` = 60235 AND `entry` IN (
4295, -- 60235	-60232	Scarlet Myrmidon	37	38	NPC LOOT (Blue World Drop) - (Item Levels: 34-38) - (NPC Levels: 36)
4363, -- 60235	-60233	Mirefin Oracle	37	38	NPC LOOT (Blue World Drop) - (Item Levels: 34-40) - (NPC Levels: 36-37)
4852); -- 60235	-60234	Stonevault Oracle	37	38	NPC LOOT (Blue World Drop) - (Item Levels: 35-40) - (NPC Levels: 37)

UPDATE `creature_loot_template` SET `mincountOrRef` = -item WHERE `item` = 60236 AND `entry` IN (
2932, -- 60236	-60234	Magregan Deepshadow	38	38	NPC LOOT (Blue World Drop) - (Item Levels: 35-40) - (NPC Levels: 37)
14230); -- 60236	-60234	Burgle Eye	38	38	NPC LOOT (Blue World Drop) - (Item Levels: 35-40) - (NPC Levels: 37)

UPDATE `creature_loot_template` SET `mincountOrRef` = -item WHERE `item` = 60237 AND `entry` IN (
2584); -- 60237	-60235	Stromgarde Defender	38	39	NPC LOOT (Blue World Drop) - (Item Levels: 35-41) - (NPC Levels: 37-38)

UPDATE `creature_loot_template` SET `mincountOrRef` = -item WHERE `item` = 60239 AND `entry` IN (
2585, -- 60239	-60237	Stromgarde Vindicator	39	40	NPC LOOT (Blue World Drop) - (Item Levels: 35-42) - (NPC Levels: 38-39)
2892, -- 60239	-60235	Stonevault Seer	39	40	NPC LOOT (Blue World Drop) - (Item Levels: 35-41) - (NPC Levels: 37-38)
4302, -- 60239	-60238	Scarlet Champion	39	40	NPC LOOT (Blue World Drop) - (Item Levels: 37-42) - (NPC Levels: 39)
4303, -- 60239	-60238	Scarlet Abbot	39	40	NPC LOOT (Blue World Drop) - (Item Levels: 37-42) - (NPC Levels: 39)
4401, -- 60239	-60231	Muckshell Clacker	39	40	NPC LOOT (Blue World Drop) - (Item Levels: 33-39) - (NPC Levels: 35-36)
4847, -- 60239	-60237	Shadowforge Relic Hunter	39	40	NPC LOOT (Blue World Drop) - (Item Levels: 35-42) - (NPC Levels: 38-39)
6733); -- 60239	-60235	Stonevault Basher	39	40	NPC LOOT (Blue World Drop) - (Item Levels: 35-41) - (NPC Levels: 37-38)

UPDATE `creature_loot_template` SET `mincountOrRef` = -item WHERE `item` = 60241 AND `entry` IN (
7030); -- 60241	-60237	Shadowforge Geologist	40	41	NPC LOOT (Blue World Drop) - (Item Levels: 35-42) - (NPC Levels: 38-39)

UPDATE `creature_loot_template` SET `mincountOrRef` = -item WHERE `item` = 60243 AND `entry` IN (
4403); -- 60243	-60231	Muckshell Pincer	41	42	NPC LOOT (Blue World Drop) - (Item Levels: 33-39) - (NPC Levels: 35-36)

UPDATE `creature_loot_template` SET `mincountOrRef` = -item WHERE `item` = 60244 AND `entry` IN (
7023); -- 60244	-60240	Obsidian Sentinel	42	42	NPC LOOT (Blue World Drop) - (Item Levels: 38-43) - (NPC Levels: 40)

UPDATE `creature_loot_template` SET `mincountOrRef` = -item WHERE `item` = 60245 AND `entry` IN (
1563, -- 60245	-60241	Bloodsail Swashbuckler	41	43	NPC LOOT (Blue World Drop) - (Item Levels: 37-44) - (NPC Levels: 40-41)
1564, -- 60245	-60241	Bloodsail Warlock	41	43	NPC LOOT (Blue World Drop) - (Item Levels: 37-44) - (NPC Levels: 40-41)
4404, -- 60245	-60231	Muckshell Scrabbler	42	43	NPC LOOT (Blue World Drop) - (Item Levels: 33-39) - (NPC Levels: 35-36)
12216); -- 60245	-60244	Poison Sprite	42	43	NPC LOOT (Blue World Drop) - (Item Levels: 40-44) - (NPC Levels: 42)

UPDATE `creature_loot_template` SET `item` = 60246, `mincountOrRef` = -60246 WHERE `item` = 60245 AND `entry` =
2549; -- 60245	-60244	Garr Salthoof	41	43	NPC LOOT (Blue World Drop) - (Item Levels: 40-44) - (NPC Levels: 42)

UPDATE `creature_loot_template` SET `mincountOrRef` = -item WHERE `item` = 60247 AND `entry` IN (
4506, -- 60247	-60241	Bloodsail Swabby	42	44	NPC LOOT (Blue World Drop) - (Item Levels: 37-44) - (NPC Levels: 40-41)
4505, -- 60247	-60243	Bloodsail Deckhand	43	44	NPC LOOT (Blue World Drop) - (Item Levels: 39-45) - (NPC Levels: 41-42)
4848, -- 60247	-60237	Shadowforge Darkcaster	43	44	NPC LOOT (Blue World Drop) - (Item Levels: 35-42) - (NPC Levels: 38-39)
4849, -- 60247	-60237	Shadowforge Archaeologist	43	44	NPC LOOT (Blue World Drop) - (Item Levels: 35-42) - (NPC Levels: 38-39)
7091, -- 60247	-60237	Shadowforge Ambusher	43	44	NPC LOOT (Blue World Drop) - (Item Levels: 35-42) - (NPC Levels: 38-39)
7290); -- 60247	-60237	Shadowforge Sharpshooter	43	44	NPC LOOT (Blue World Drop) - (Item Levels: 35-42) - (NPC Levels: 38-39)

UPDATE `creature_loot_template` SET `mincountOrRef` = -item WHERE `item` = 60248 AND `entry` IN (
14236); -- 60248	-60234	Lord Angler	44	44	NPC LOOT (Blue World Drop) - (Item Levels: 35-40) - (NPC Levels: 37)

UPDATE `creature_loot_template` SET `mincountOrRef` = -item WHERE `item` = 60249 AND `entry` IN (
1565, -- 60249	-60243	Bloodsail Sea Dog	43	45	NPC LOOT (Blue World Drop) - (Item Levels: 39-45) - (NPC Levels: 41-42)
11791, -- 60249	-60246	Putridus Trickster	43	45	NPC LOOT (Blue World Drop) - (Item Levels: 41-45) - (NPC Levels: 43)
1653); -- 60249	-60243	Bloodsail Elder Magus	44	45	NPC LOOT (Blue World Drop) - (Item Levels: 39-45) - (NPC Levels: 41-42)

UPDATE `creature_loot_template` SET `mincountOrRef` = -item WHERE `item` = 60251 AND `entry` IN (
7246, -- 60251	-60247	Sandfury Shadowhunter	45	46	NPC LOOT (Blue World Drop) - (Item Levels: 40-47) - (NPC Levels: 43-44)
7247, -- 60251	-60249	Sandfury Soul Eater	45	46	NPC LOOT (Blue World Drop) - (Item Levels: 41-48) - (NPC Levels: 44-45)
11793, -- 60251	-60250	Celebrian Dryad	45	46	NPC LOOT (Blue World Drop) - (Item Levels: 43-47) - (NPC Levels: 45)
12222, -- 60251	-60247	Creeping Sludge	45	46	NPC LOOT (Blue World Drop) - (Item Levels: 40-47) - (NPC Levels: 43-44)
12223); -- 60251	-60249	Cavern Lurker	45	46	NPC LOOT (Blue World Drop) - (Item Levels: 41-48) - (NPC Levels: 44-45)

UPDATE `creature_loot_template` SET `item` = 60252, `mincountOrRef` = -60252 WHERE `item` = 60251 AND `entry` =
2550; -- 60251	-60244	Captain Stillwater	45	46	NPC LOOT (Blue World Drop) - (Item Levels: 40-44) - (NPC Levels: 42)

UPDATE `creature_loot_template` SET `item` = 60251, `mincountOrRef` = -60251 WHERE `item` = 60252 AND `entry` =
7796; -- 60252	-60250	Nekrum Gutchewer	46	46	NPC LOOT (Blue World Drop) - (Item Levels: 43-47) - (NPC Levels: 45)

UPDATE `creature_loot_template` SET `mincountOrRef` = -item WHERE `item` = 60252 AND `entry` IN (
7797); -- 60252	-60250	Ruuzlu	46	46	NPC LOOT (Blue World Drop) - (Item Levels: 43-47) - (NPC Levels: 45)

UPDATE `creature_loot_template` SET `mincountOrRef` = -item WHERE `item` = 60253 AND `entry` IN (
11794, -- 60253	-60250	Sister of Celebrian	45	47	NPC LOOT (Blue World Drop) - (Item Levels: 43-47) - (NPC Levels: 45)
12221, -- 60253	-60247	Noxious Slime	46	47	NPC LOOT (Blue World Drop) - (Item Levels: 40-47) - (NPC Levels: 43-44)
12224); -- 60253	-60250	Cavern Shambler	46	47	NPC LOOT (Blue World Drop) - (Item Levels: 43-47) - (NPC Levels: 45)

UPDATE `creature_loot_template` SET `item` = 60254, `mincountOrRef` = -60254 WHERE `item` = 60253 AND `entry` =
2548; -- 60253	-60244	Captain Keelhaul	46	47	NPC LOOT (Blue World Drop) - (Item Levels: 40-44) - (NPC Levels: 42)

UPDATE `creature_loot_template` SET `mincountOrRef` = -item WHERE `item` = 60254 AND `entry` IN (
818, -- 60254	-60250	Mai'Zoth	47	47	NPC LOOT (Blue World Drop) - (Item Levels: 43-47) - (NPC Levels: 45)
1492); -- 60254	-60244	Gorlash	47	47	NPC LOOT (Blue World Drop) - (Item Levels: 40-44) - (NPC Levels: 42)

UPDATE `creature_loot_template` SET `mincountOrRef` = -item WHERE `item` = 60255 AND `entry` IN (
5860); -- 60255	-60247	Twilight Dark Shaman	47	48	NPC LOOT (Blue World Drop) - (Item Levels: 40-47) - (NPC Levels: 43-44)

UPDATE `creature_loot_template` SET `mincountOrRef` = -item WHERE `item` = 60256 AND `entry` IN (
2546); -- 60256	-60244	Fleet Master Firallon	48	48	NPC LOOT (Blue World Drop) - (Item Levels: 40-44) - (NPC Levels: 42)

UPDATE `creature_loot_template` SET `mincountOrRef` = -item WHERE `item` = 60257 AND `entry` IN (
12206); -- 60257	-60254	Primordial Behemoth	48	49	NPC LOOT (Blue World Drop) - (Item Levels: 45-49) - (NPC Levels: 47)

UPDATE `creature_loot_template` SET `mincountOrRef` = -item WHERE `item` = 60259 AND `entry` IN (
5862); -- 60259	-60249	Twilight Geomancer	49	50	NPC LOOT (Blue World Drop) - (Item Levels: 41-48) - (NPC Levels: 44-45)

UPDATE `creature_loot_template` SET `mincountOrRef` = -item WHERE `item` = 60261 AND `entry` IN (
8419); -- 60261	-60251	Twilight Idolater	49	51	NPC LOOT (Blue World Drop) - (Item Levels: 42-49) - (NPC Levels: 45-46)

UPDATE `creature_loot_template` SET `mincountOrRef` = -item WHERE `item` = 60262 AND `entry` IN (
1559); -- 60262	-60244	King Mukla	51	51	NPC LOOT (Blue World Drop) - (Item Levels: 40-44) - (NPC Levels: 42)

UPDATE `creature_loot_template` SET `mincountOrRef` = -item WHERE `item` = 60263 AND `entry` IN (
8892); -- 60263	-60261	Anvilrage Footman	51	52	NPC LOOT (Blue World Drop) - (Item Levels: 48-54) - (NPC Levels: 50-51)

UPDATE `creature_loot_template` SET `mincountOrRef` = -item WHERE `item` = 60264 AND `entry` IN (
1494, -- 60264	-60244	Negolash	52	52	NPC LOOT (Blue World Drop) - (Item Levels: 40-44) - (NPC Levels: 42)
8391, -- 60264	-60252	Lathoric the Black	52	52	NPC LOOT (Blue World Drop) - (Item Levels: 44-49) - (NPC Levels: 46)
8400); -- 60264	-60252	Obsidion	52	52	NPC LOOT (Blue World Drop) - (Item Levels: 44-49) - (NPC Levels: 46)

UPDATE `creature_loot_template` SET `mincountOrRef` = -item WHERE `item` = 60265 AND `entry` IN (
8893, -- 60265	-60260	Anvilrage Soldier	52	53	NPC LOOT (Blue World Drop) - (Item Levels: 48-52) - (NPC Levels: 50)
8894); -- 60265	-60261	Anvilrage Medic	52	53	NPC LOOT (Blue World Drop) - (Item Levels: 48-54) - (NPC Levels: 50-51)

UPDATE `creature_loot_template` SET `item` = 60271, `mincountOrRef` = -60271 WHERE `item` = 60266 AND `entry` =
13149; -- 60266	-60271	Syndicate Brigand	53	53	NPC LOOT (Blue World Drop) - (Item Levels: 53-59) - (NPC Levels: 55-56)

UPDATE `creature_loot_template` SET `mincountOrRef` = -item WHERE `item` = 60267 AND `entry` IN (
8896, -- 60267	-60261	Shadowforge Peasant	52	54	NPC LOOT (Blue World Drop) - (Item Levels: 48-54) - (NPC Levels: 50-51)
8897, -- 60267	-60262	Doomforge Craftsman	52	54	NPC LOOT (Blue World Drop) - (Item Levels: 49-53) - (NPC Levels: 51)
8895, -- 60267	-60262	Anvilrage Officer	53	54	NPC LOOT (Blue World Drop) - (Item Levels: 49-53) - (NPC Levels: 51)
9445); -- 60267	-60264	Dark Guard	53	54	NPC LOOT (Blue World Drop) - (Item Levels: 50-54) - (NPC Levels: 52)

UPDATE `creature_loot_template` SET `mincountOrRef` = -item WHERE `item` = 60269 AND `entry` IN (
8898, -- 60269	-60267	Anvilrage Marshal	54	55	NPC LOOT (Blue World Drop) - (Item Levels: 50-57) - (NPC Levels: 53-54)
8899, -- 60269	-60267	Doomforge Dragoon	54	55	NPC LOOT (Blue World Drop) - (Item Levels: 50-57) - (NPC Levels: 53-54)
8900); -- 60269	-60268	Doomforge Arcanasmith	54	55	NPC LOOT (Blue World Drop) - (Item Levels: 52-57) - (NPC Levels: 54)

UPDATE `creature_loot_template` SET `mincountOrRef` = -item WHERE `item` = 60270 AND `entry` IN (
9437, -- 60270	-60266	Dark Keeper Vorfalk	55	55	NPC LOOT (Blue World Drop) - (Item Levels: 51-55) - (NPC Levels: 53)
9438, -- 60270	-60266	Dark Keeper Bethek	55	55	NPC LOOT (Blue World Drop) - (Item Levels: 51-55) - (NPC Levels: 53)
9439, -- 60270	-60266	Dark Keeper Uggel	55	55	NPC LOOT (Blue World Drop) - (Item Levels: 51-55) - (NPC Levels: 53)
9441, -- 60270	-60266	Dark Keeper Zimrel	55	55	NPC LOOT (Blue World Drop) - (Item Levels: 51-55) - (NPC Levels: 53)
9442, -- 60270	-60266	Dark Keeper Ofgut	55	55	NPC LOOT (Blue World Drop) - (Item Levels: 51-55) - (NPC Levels: 53)
9443, -- 60270	-60266	Dark Keeper Pelver	55	55	NPC LOOT (Blue World Drop) - (Item Levels: 51-55) - (NPC Levels: 53)
9476); -- 60270	-60268	Watchman Doomgrip	55	55	NPC LOOT (Blue World Drop) - (Item Levels: 52-57) - (NPC Levels: 54)

UPDATE `creature_loot_template` SET `mincountOrRef` = -item WHERE `item` = 60271 AND `entry` IN (
8902, -- 60271	-60263	Shadowforge Citizen	54	56	NPC LOOT (Blue World Drop) - (Item Levels: 47-55) - (NPC Levels: 51-52)
8903, -- 60271	-60270	Anvilrage Captain	55	56	NPC LOOT (Blue World Drop) - (Item Levels: 51-58) - (NPC Levels: 55)
8904, -- 60271	-60269	Shadowforge Senator	55	56	NPC LOOT (Blue World Drop) - (Item Levels: 51-58) - (NPC Levels: 54-55)
8907, -- 60271	-60268	Wrath Hammer Construct	55	56	NPC LOOT (Blue World Drop) - (Item Levels: 52-57) - (NPC Levels: 54)
8908); -- 60271	-60270	Molten War Golem	55	56	NPC LOOT (Blue World Drop) - (Item Levels: 51-58) - (NPC Levels: 55)

UPDATE `creature_loot_template` SET `mincountOrRef` = -item WHERE `item` = 60273 AND `entry` IN (
13776); -- 60273	-60272	Corporal Teeka Bloodsnarl	56	57	NPC LOOT (Blue World Drop) - (Item Levels: 54-59) - (NPC Levels: 56)

UPDATE `creature_loot_template` SET `item` = 60279, `mincountOrRef` = -60279 WHERE `item` = 60275 AND `entry` =
7072; -- 60275	-60279	Cursed Justicar	57	58	NPC LOOT (Blue World Drop) - (Item Levels: 56-65) - (NPC Levels: 59-60) - VANILLA NPC ONLY

UPDATE `creature_loot_template` SET `item` = 60277, `mincountOrRef` = -60277 WHERE `item` = 60280 AND `entry` =
13957; -- 60280	-60277	Winterax Warrior	60	60	NPC LOOT (Blue World Drop) - (Item Levels: 55-65) - (NPC Levels: 58-59) - VANILLA NPC ONLY

-- ==================================================================================

-- Correct wrong Levels for classicmangos diffed with tbcmangos/ccsdb
UPDATE `creature_template` SET `minlevel` = 24, `maxlevel` = 24 WHERE `entry` = 3392; -- Prospector Khazgorm	26	26
UPDATE `creature_template` SET `minlevel` = 27, `maxlevel` = 28 WHERE `entry` = 1057; -- Dragonmaw Bonewarder	27	27
UPDATE `creature_template` SET `minlevel` = 30, `maxlevel` = 31 WHERE `entry` = 6230; -- Peacekeeper Security Suit	30	30
UPDATE `creature_template` SET `minlevel` = 36, `maxlevel` = 36 WHERE `entry` = 4132; -- Silithid Ravager 37	37
UPDATE `creature_template` SET `minlevel` = 43, `maxlevel` = 43 WHERE `entry` = 2549; -- Garr Salthoof	41	43
UPDATE `creature_template` SET `minlevel` = 43, `maxlevel` = 44 WHERE `entry` = 4506; -- Bloodsail Swabby	42	44
UPDATE `creature_template` SET `minlevel` = 44, `maxlevel` = 45 WHERE `entry` = 1565; -- Bloodsail Sea Dog	43	45
UPDATE `creature_template` SET `minlevel` = 44, `maxlevel` = 45 WHERE `entry` = 11791; -- Putridus Trickster	43	45
UPDATE `creature_template` SET `minlevel` = 46, `maxlevel` = 46 WHERE `entry` = 2550; -- Captain Stillwater	45	46
UPDATE `creature_template` SET `minlevel` = 45, `maxlevel` = 46 WHERE `entry` = 7796; -- Nekrum Gutchewer	46	46
UPDATE `creature_template` SET `minlevel` = 47, `maxlevel` = 47 WHERE `entry` = 2548; -- Captain Keelhaul	46	47
UPDATE `creature_template` SET `minlevel` = 55, `maxlevel` = 56 WHERE `entry` = 13149; -- Syndicate Brigand	53	53
UPDATE `creature_template` SET `minlevel` = 59, `maxlevel` = 60 WHERE `entry` = 7072; -- Cursed Justicar	57	58
UPDATE `creature_template` SET `minlevel` = 58, `maxlevel` = 59 WHERE `entry` = 13957; -- Winterax Warrior	60	60
UPDATE `creature_template` SET `minlevel` = 35, `maxlevel` = 37 WHERE `entry` = 2906; -- Dustbelcher Warrior (36-37)
UPDATE `creature_template` SET `minlevel` = 47, `maxlevel` = 50 WHERE `entry` = 5276; -- Sprite Dragon (47-48)
UPDATE `creature_template` SET `minlevel` = 49, `maxlevel` = 51 WHERE `entry` = 6002; -- Nethergarde Riftwatcher (50-50)
UPDATE `creature_template` SET `minlevel` = 51, `maxlevel` = 52 WHERE `entry` = 6347; -- Young Wavethrasher (51-51)
UPDATE `creature_template` SET `minlevel` = 49, `maxlevel` = 50 WHERE `entry` = 8760; -- Mosshoof Stag (51-51)
UPDATE `creature_template` SET `minlevel` = 47, `maxlevel` = 49 WHERE `entry` = 9397; -- Living Storm (48-48)
UPDATE `creature_template` SET `minlevel` = 58, `maxlevel` = 60 WHERE `entry` = 10996; -- Fallen Hero (58-59)
UPDATE `creature_template` SET `minlevel` = 38, `maxlevel` = 38 WHERE `entry` = 11937; -- Demon Portal Guardian (38-39)
UPDATE `creature_template` SET `MinLevel` = 58, `MaxLevel` = 58 WHERE `entry` = 13218; -- Wing Commander Mulverick (54-58)
UPDATE `creature_template` SET `MinLevel` = 50, `MaxLevel` = 51 WHERE `entry` = 13618; -- Stabled Frostwolf (50-50)

-- Correct wrong Levels for tbc+
-- UPDATE `creature_template` SET `minlevel` = 31, `maxlevel` = 32 WHERE `entry` = 2578; -- Young Mesa Buzzard (31-31)
-- UPDATE `creature_template` SET `minlevel` = 46, `maxlevel` = 48 WHERE `entry` = 5982; -- Black Slayer (47-48)
-- UPDATE `creature_template` SET `minlevel` = 25, `maxlevel` = 26 WHERE `entry` = 6208; -- Caverndeep Invader (24-26)
-- UPDATE `creature_template` SET `minlevel` = 26, `maxlevel` = 26 WHERE `entry` = 6209; -- Caverndeep Looter (24-26)

-- av mobs need special attention... tbc+ (HeroicEntry)
-- UPDATE `creature_template` SET `MinLevel` = 54, `MaxLevel` = 55, `HeroicEntry` = 22748 WHERE `entry` = 11602; -- Irondeep Skullthumper (64-65) - do all again even if already right to align levels, av is just messy
-- UPDATE `creature_template` SET `MinLevel` = 64, `MaxLevel` = 65 WHERE `entry` = 22748;
-- UPDATE `creature_template` SET `MinLevel` = 58, `MaxLevel` = 59, `HeroicEntry` = 22783 WHERE `entry` = 11840; -- Wildpaw Alpha (68-69)
-- UPDATE `creature_template` SET `MinLevel` = 68, `MaxLevel` = 69 WHERE `entry` = 22783;
-- UPDATE `creature_template` SET `MinLevel` = 60, `MaxLevel` = 60, `HeroicEntry` = 22540 WHERE `entry` = 12121; -- Draka (70-70)
-- UPDATE `creature_template` SET `MinLevel` = 70, `MaxLevel` = 70 WHERE `entry` = 22540;
-- UPDATE `creature_template` SET `MinLevel` = 60, `MaxLevel` = 60, `HeroicEntry` = 22546 WHERE `entry` = 12122; -- Duros (70-70)
-- UPDATE `creature_template` SET `MinLevel` = 70, `MaxLevel` = 70 WHERE `entry` = 22546;
-- UPDATE `creature_template` SET `MinLevel` = 59, `MaxLevel` = 59, `HeroicEntry` = 22707 WHERE `entry` = 13137; -- Lieutenant Rugba (69-69)
-- UPDATE `creature_template` SET `MinLevel` = 69, `MaxLevel` = 69 WHERE `entry` = 22707;
-- UPDATE `creature_template` SET `MinLevel` = 60, `MaxLevel` = 60, `HeroicEntry` = 22598 WHERE `entry` = 13181; -- Wing Commander Mulverick (70-70)
-- UPDATE `creature_template` SET `MinLevel` = 70, `MaxLevel` = 70 WHERE `entry` = 22598;
-- UPDATE `creature_template` SET `MinLevel` = 58, `MaxLevel` = 58, `HeroicEntry` = 22681 WHERE `entry` = 13218; -- Wing Commander Mulverick (58-58) - wrong lvl classicmangos
-- UPDATE `creature_template` SET `MinLevel` = 68, `MaxLevel` = 68 WHERE `entry` = 22681;
-- UPDATE `creature_template` SET `MinLevel` = 60, `MaxLevel` = 60, `HeroicEntry` = 22567 WHERE `entry` = 13257; -- Wing Commander Mulverick (58-58)
-- UPDATE `creature_template` SET `MinLevel` = 70, `MaxLevel` = 70 WHERE `entry` = 22567;
-- UPDATE `creature_template` SET `MinLevel` = 59, `MaxLevel` = 59, `HeroicEntry` = 22709 WHERE `entry` = 13297; -- Lieutenant Stouthandle (69-69)
-- UPDATE `creature_template` SET `MinLevel` = 69, `MaxLevel` = 69 WHERE `entry` = 22709;
-- UPDATE `creature_template` SET `MinLevel` = 59, `MaxLevel` = 59, `HeroicEntry` = 22705 WHERE `entry` = 13300; -- Lieutenant Mancuso (69-69)
-- UPDATE `creature_template` SET `MinLevel` = 69, `MaxLevel` = 69 WHERE `entry` = 22705;
-- UPDATE `creature_template` SET `MinLevel` = 61, `MaxLevel` = 61, `HeroicEntry` = 22618 WHERE `entry` = 13318; -- Commander Mortimer (71-71)
-- UPDATE `creature_template` SET `MinLevel` = 71, `MaxLevel` = 71 WHERE `entry` = 22618;
-- UPDATE `creature_template` SET `MinLevel` = 56, `MaxLevel` = 56, `HeroicEntry` = 22662 WHERE `entry` = 13325; -- Seasoned Mountaineer (66-66)
-- UPDATE `creature_template` SET `MinLevel` = 66, `MaxLevel` = 66 WHERE `entry` = 22662;
-- UPDATE `creature_template` SET `MinLevel` = 57, `MaxLevel` = 57, `HeroicEntry` = 22667 WHERE `entry` = 13335; -- Veteran Mountaineer (67-67)
-- UPDATE `creature_template` SET `MinLevel` = 67, `MaxLevel` = 67 WHERE `entry` = 22667;
-- UPDATE `creature_template` SET `MinLevel` = 58, `MaxLevel` = 58, `HeroicEntry` = 22672 WHERE `entry` = 13427; -- Champion Sentinel (68-68)
-- UPDATE `creature_template` SET `MinLevel` = 68, `MaxLevel` = 68 WHERE `entry` = 22672;
-- UPDATE `creature_template` SET `MinLevel` = 61, `MaxLevel` = 61, `HeroicEntry` = 22639 WHERE `entry` = 13449; -- Warmaster Garrick (71-71)
-- UPDATE `creature_template` SET `MinLevel` = 71, `MaxLevel` = 71 WHERE `entry` = 22639;
-- UPDATE `creature_template` SET `MinLevel` = 61, `MaxLevel` = 61, `HeroicEntry` = 22607 WHERE `entry` = 13527; -- Champion Commando (71-71)
-- UPDATE `creature_template` SET `MinLevel` = 71, `MaxLevel` = 71 WHERE `entry` = 22607;
-- UPDATE `creature_template` SET `MinLevel` = 60, `MaxLevel` = 60, `HeroicEntry` = 22592 WHERE `entry` = 13530; -- Veteran Reaver (70-70)
-- UPDATE `creature_template` SET `MinLevel` = 70, `MaxLevel` = 70 WHERE `entry` = 22592;
-- UPDATE `creature_template` SET `MinLevel` = 60, `MaxLevel` = 60, `HeroicEntry` = 22531 WHERE `entry` = 13551; -- Champion Coldmine Invader (70-70)
-- UPDATE `creature_template` SET `MinLevel` = 70, `MaxLevel` = 70 WHERE `entry` = 22531;
-- UPDATE `creature_template` SET `MinLevel` = 50, `MaxLevel` = 51, `HeroicEntry` = 22765 WHERE `entry` = 13618; -- Stabled Frostwolf (60-61)
-- UPDATE `creature_template` SET `MinLevel` = 60, `MaxLevel` = 61 WHERE `entry` = 22765;
-- UPDATE `creature_template` SET `MinLevel` = 61, `MaxLevel` = 61, `HeroicEntry` = 22604 WHERE `entry` = 13959; -- Alterac Yeti (71-71)
-- UPDATE `creature_template` SET `MinLevel` = 71, `MaxLevel` = 71 WHERE `entry` = 22604;
-- UPDATE `creature_template` SET `MinLevel` = 57, `MaxLevel` = 58, `HeroicEntry` = 22794 WHERE `entry` = 10983; -- Winterax Troll (56-58)
-- UPDATE `creature_template` SET `MinLevel` = 67, `MaxLevel` = 68 WHERE `entry` = 22794;
-- UPDATE `creature_template` SET `MinLevel` = 59, `MaxLevel` = 59, `HeroicEntry` = 22699 WHERE `entry` = 14188; -- Dirk Swindle (59-59)
-- UPDATE `creature_template` SET `MinLevel` = 69, `MaxLevel` = 69 WHERE `entry` = 22699;

-- Rename Refloots due to newly added items
UPDATE `reference_loot_template_names` SET `name` = 'NPC LOOT (Blue World Drop) - (Item Levels: 20-23) - (NPC Levels: 18-20)' WHERE `entry` = 60200;
UPDATE `reference_loot_template_names` SET `name` = 'NPC LOOT (Blue World Drop) - (Item Levels: 20-24) - (NPC Levels: 20-21)' WHERE `entry` = 60201;
UPDATE `reference_loot_template_names` SET `name` = 'NPC LOOT (Blue World Drop) - (Item Levels: 20-23) - (NPC Levels: 21)' WHERE `entry` = 60202;
UPDATE `reference_loot_template_names` SET `name` = 'NPC LOOT (Blue World Drop) - (Item Levels: 20-25) - (NPC Levels: 21-22)' WHERE `entry` = 60203;
UPDATE `reference_loot_template_names` SET `name` = 'NPC LOOT (Blue World Drop) - (Item Levels: 21-25) - (NPC Levels: 22)' WHERE `entry` = 60204;
UPDATE `reference_loot_template_names` SET `name` = 'NPC LOOT (Blue World Drop) - (Item Levels: 20-26) - (NPC Levels: 22-23)' WHERE `entry` = 60205;
UPDATE `reference_loot_template_names` SET `name` = 'NPC LOOT (Blue World Drop) - (Item Levels: 21-25) - (NPC Levels: 23)' WHERE `entry` = 60206;
UPDATE `reference_loot_template_names` SET `name` = 'NPC LOOT (Blue World Drop) - (Item Levels: 21-27) - (NPC Levels: 23-24)' WHERE `entry` = 60207;
UPDATE `reference_loot_template_names` SET `name` = 'NPC LOOT (Blue World Drop) - (Item Levels: 22-27) - (NPC Levels: 24)' WHERE `entry` = 60208;
UPDATE `reference_loot_template_names` SET `name` = 'NPC LOOT (Blue World Drop) - (Item Levels: 21-28) - (NPC Levels: 24-25)' WHERE `entry` = 60209;
UPDATE `reference_loot_template_names` SET `name` = 'NPC LOOT (Blue World Drop) - (Item Levels: 23-28) - (NPC Levels: 25)' WHERE `entry` = 60210;
UPDATE `reference_loot_template_names` SET `name` = 'NPC LOOT (Blue World Drop) - (Item Levels: 22-29) - (NPC Levels: 25-26)' WHERE `entry` = 60211;
UPDATE `reference_loot_template_names` SET `name` = 'NPC LOOT (Blue World Drop) - (Item Levels: 24-28) - (NPC Levels: 26)' WHERE `entry` = 60212;
UPDATE `reference_loot_template_names` SET `name` = 'NPC LOOT (Blue World Drop) - (Item Levels: 23-30) - (NPC Levels: 26-27)' WHERE `entry` = 60213;
UPDATE `reference_loot_template_names` SET `name` = 'NPC LOOT (Blue World Drop) - (Item Levels: 25-29) - (NPC Levels: 27)' WHERE `entry` = 60214;
UPDATE `reference_loot_template_names` SET `name` = 'NPC LOOT (Blue World Drop) - (Item Levels: 24-31) - (NPC Levels: 27-28)' WHERE `entry` = 60215;
UPDATE `reference_loot_template_names` SET `name` = 'NPC LOOT (Blue World Drop) - (Item Levels: 26-31) - (NPC Levels: 28)' WHERE `entry` = 60216;
UPDATE `reference_loot_template_names` SET `name` = 'NPC LOOT (Blue World Drop) - (Item Levels: 25-32) - (NPC Levels: 28-29)' WHERE `entry` = 60217;
UPDATE `reference_loot_template_names` SET `name` = 'NPC LOOT (Blue World Drop) - (Item Levels: 27-31) - (NPC Levels: 29)' WHERE `entry` = 60218;
UPDATE `reference_loot_template_names` SET `name` = 'NPC LOOT (Blue World Drop) - (Item Levels: 27-33) - (NPC Levels: 29-30)' WHERE `entry` = 60219;
UPDATE `reference_loot_template_names` SET `name` = 'NPC LOOT (Blue World Drop) - (Item Levels: 28-33) - (NPC Levels: 30)' WHERE `entry` = 60220;
UPDATE `reference_loot_template_names` SET `name` = 'NPC LOOT (Blue World Drop) - (Item Levels: 28-34) - (NPC Levels: 30-31)' WHERE `entry` = 60221;
UPDATE `reference_loot_template_names` SET `name` = 'NPC LOOT (Blue World Drop) - (Item Levels: 29-33) - (NPC Levels: 31)' WHERE `entry` = 60222;
UPDATE `reference_loot_template_names` SET `name` = 'NPC LOOT (Blue World Drop) - (Item Levels: 28-35) - (NPC Levels: 31-32)' WHERE `entry` = 60223;
UPDATE `reference_loot_template_names` SET `name` = 'NPC LOOT (Blue World Drop) - (Item Levels: 30-34) - (NPC Levels: 32)' WHERE `entry` = 60224;
UPDATE `reference_loot_template_names` SET `name` = 'NPC LOOT (Blue World Drop) - (Item Levels: 30-36) - (NPC Levels: 32-33)' WHERE `entry` = 60225;
UPDATE `reference_loot_template_names` SET `name` = 'NPC LOOT (Blue World Drop) - (Item Levels: 31-35) - (NPC Levels: 33)' WHERE `entry` = 60226;
UPDATE `reference_loot_template_names` SET `name` = 'NPC LOOT (Blue World Drop) - (Item Levels: 30-37) - (NPC Levels: 33-34)' WHERE `entry` = 60227;
UPDATE `reference_loot_template_names` SET `name` = 'NPC LOOT (Blue World Drop) - (Item Levels: 32-36) - (NPC Levels: 34)' WHERE `entry` = 60228;
UPDATE `reference_loot_template_names` SET `name` = 'NPC LOOT (Blue World Drop) - (Item Levels: 32-38) - (NPC Levels: 34-35)' WHERE `entry` = 60229;
UPDATE `reference_loot_template_names` SET `name` = 'NPC LOOT (Blue World Drop) - (Item Levels: 33-37) - (NPC Levels: 35)' WHERE `entry` = 60230;
UPDATE `reference_loot_template_names` SET `name` = 'NPC LOOT (Blue World Drop) - (Item Levels: 33-39) - (NPC Levels: 35-36)' WHERE `entry` = 60231;
UPDATE `reference_loot_template_names` SET `name` = 'NPC LOOT (Blue World Drop) - (Item Levels: 34-38) - (NPC Levels: 36)' WHERE `entry` = 60232;
UPDATE `reference_loot_template_names` SET `name` = 'NPC LOOT (Blue World Drop) - (Item Levels: 34-40) - (NPC Levels: 36-37)' WHERE `entry` = 60233;
UPDATE `reference_loot_template_names` SET `name` = 'NPC LOOT (Blue World Drop) - (Item Levels: 35-40) - (NPC Levels: 37)' WHERE `entry` = 60234;
UPDATE `reference_loot_template_names` SET `name` = 'NPC LOOT (Blue World Drop) - (Item Levels: 35-41) - (NPC Levels: 37-38)' WHERE `entry` = 60235;
UPDATE `reference_loot_template_names` SET `name` = 'NPC LOOT (Blue World Drop) - (Item Levels: 36-41) - (NPC Levels: 38)' WHERE `entry` = 60236;
UPDATE `reference_loot_template_names` SET `name` = 'NPC LOOT (Blue World Drop) - (Item Levels: 35-42) - (NPC Levels: 38-39)' WHERE `entry` = 60237;
UPDATE `reference_loot_template_names` SET `name` = 'NPC LOOT (Blue World Drop) - (Item Levels: 37-42) - (NPC Levels: 39)' WHERE `entry` = 60238;
UPDATE `reference_loot_template_names` SET `name` = 'NPC LOOT (Blue World Drop) - (Item Levels: 36-43) - (NPC Levels: 39-40)' WHERE `entry` = 60239;
UPDATE `reference_loot_template_names` SET `name` = 'NPC LOOT (Blue World Drop) - (Item Levels: 38-43) - (NPC Levels: 40)' WHERE `entry` = 60240;
UPDATE `reference_loot_template_names` SET `name` = 'NPC LOOT (Blue World Drop) - (Item Levels: 37-44) - (NPC Levels: 40-41)' WHERE `entry` = 60241;
UPDATE `reference_loot_template_names` SET `name` = 'NPC LOOT (Blue World Drop) - (Item Levels: 39-43) - (NPC Levels: 41)' WHERE `entry` = 60242;
UPDATE `reference_loot_template_names` SET `name` = 'NPC LOOT (Blue World Drop) - (Item Levels: 39-45) - (NPC Levels: 41-42)' WHERE `entry` = 60243;
UPDATE `reference_loot_template_names` SET `name` = 'NPC LOOT (Blue World Drop) - (Item Levels: 40-44) - (NPC Levels: 42)' WHERE `entry` = 60244;
UPDATE `reference_loot_template_names` SET `name` = 'NPC LOOT (Blue World Drop) - (Item Levels: 39-46) - (NPC Levels: 42-43)' WHERE `entry` = 60245;
UPDATE `reference_loot_template_names` SET `name` = 'NPC LOOT (Blue World Drop) - (Item Levels: 41-45) - (NPC Levels: 43)' WHERE `entry` = 60246;
UPDATE `reference_loot_template_names` SET `name` = 'NPC LOOT (Blue World Drop) - (Item Levels: 40-47) - (NPC Levels: 43-44)' WHERE `entry` = 60247;
UPDATE `reference_loot_template_names` SET `name` = 'NPC LOOT (Blue World Drop) - (Item Levels: 42-47) - (NPC Levels: 44)' WHERE `entry` = 60248;
UPDATE `reference_loot_template_names` SET `name` = 'NPC LOOT (Blue World Drop) - (Item Levels: 41-48) - (NPC Levels: 44-45)' WHERE `entry` = 60249;
UPDATE `reference_loot_template_names` SET `name` = 'NPC LOOT (Blue World Drop) - (Item Levels: 43-47) - (NPC Levels: 45)' WHERE `entry` = 60250;
UPDATE `reference_loot_template_names` SET `name` = 'NPC LOOT (Blue World Drop) - (Item Levels: 42-49) - (NPC Levels: 45-46)' WHERE `entry` = 60251;
UPDATE `reference_loot_template_names` SET `name` = 'NPC LOOT (Blue World Drop) - (Item Levels: 44-49) - (NPC Levels: 46)' WHERE `entry` = 60252;
UPDATE `reference_loot_template_names` SET `name` = 'NPC LOOT (Blue World Drop) - (Item Levels: 41-50) - (NPC Levels: 46-47)' WHERE `entry` = 60253;
UPDATE `reference_loot_template_names` SET `name` = 'NPC LOOT (Blue World Drop) - (Item Levels: 45-49) - (NPC Levels: 47)' WHERE `entry` = 60254;
UPDATE `reference_loot_template_names` SET `name` = 'NPC LOOT (Blue World Drop) - (Item Levels: 44-51) - (NPC Levels: 47-48)' WHERE `entry` = 60255;
UPDATE `reference_loot_template_names` SET `name` = 'NPC LOOT (Blue World Drop) - (Item Levels: 46-50) - (NPC Levels: 48)' WHERE `entry` = 60256;
UPDATE `reference_loot_template_names` SET `name` = 'NPC LOOT (Blue World Drop) - (Item Levels: 45-52) - (NPC Levels: 48-49)' WHERE `entry` = 60257;
UPDATE `reference_loot_template_names` SET `name` = 'NPC LOOT (Blue World Drop) - (Item Levels: 47-51) - (NPC Levels: 49)' WHERE `entry` = 60258;
UPDATE `reference_loot_template_names` SET `name` = 'NPC LOOT (Blue World Drop) - (Item Levels: 45-53) - (NPC Levels: 49-50)' WHERE `entry` = 60259;
UPDATE `reference_loot_template_names` SET `name` = 'NPC LOOT (Blue World Drop) - (Item Levels: 48-52) - (NPC Levels: 50)' WHERE `entry` = 60260;
UPDATE `reference_loot_template_names` SET `name` = 'NPC LOOT (Blue World Drop) - (Item Levels: 48-54) - (NPC Levels: 50-51)' WHERE `entry` = 60261;
UPDATE `reference_loot_template_names` SET `name` = 'NPC LOOT (Blue World Drop) - (Item Levels: 49-53) - (NPC Levels: 51)' WHERE `entry` = 60262;
UPDATE `reference_loot_template_names` SET `name` = 'NPC LOOT (Blue World Drop) - (Item Levels: 47-55) - (NPC Levels: 51-52)' WHERE `entry` = 60263;
UPDATE `reference_loot_template_names` SET `name` = 'NPC LOOT (Blue World Drop) - (Item Levels: 50-54) - (NPC Levels: 52)' WHERE `entry` = 60264;
UPDATE `reference_loot_template_names` SET `name` = 'NPC LOOT (Blue World Drop) - (Item Levels: 49-56) - (NPC Levels: 52-53)' WHERE `entry` = 60265;
UPDATE `reference_loot_template_names` SET `name` = 'NPC LOOT (Blue World Drop) - (Item Levels: 51-55) - (NPC Levels: 53)' WHERE `entry` = 60266;
UPDATE `reference_loot_template_names` SET `name` = 'NPC LOOT (Blue World Drop) - (Item Levels: 50-57) - (NPC Levels: 53-54)' WHERE `entry` = 60267;
UPDATE `reference_loot_template_names` SET `name` = 'NPC LOOT (Blue World Drop) - (Item Levels: 52-57) - (NPC Levels: 54)' WHERE `entry` = 60268;
UPDATE `reference_loot_template_names` SET `name` = 'NPC LOOT (Blue World Drop) - (Item Levels: 51-58) - (NPC Levels: 54-55)' WHERE `entry` = 60269;
UPDATE `reference_loot_template_names` SET `name` = 'NPC LOOT (Blue World Drop) - (Item Levels: 51-58) - (NPC Levels: 55)' WHERE `entry` = 60270;
UPDATE `reference_loot_template_names` SET `name` = 'NPC LOOT (Blue World Drop) - (Item Levels: 53-59) - (NPC Levels: 55-56)' WHERE `entry` = 60271;
UPDATE `reference_loot_template_names` SET `name` = 'NPC LOOT (Blue World Drop) - (Item Levels: 54-59) - (NPC Levels: 56)' WHERE `entry` = 60272;
UPDATE `reference_loot_template_names` SET `name` = 'NPC LOOT (Blue World Drop) - (Item Levels: 53-65) - (NPC Levels: 56-57)' WHERE `entry` = 60273;
UPDATE `reference_loot_template_names` SET `name` = 'NPC LOOT (Blue World Drop) - (Item Levels: 55-65) - (NPC Levels: 57)' WHERE `entry` = 60274;
UPDATE `reference_loot_template_names` SET `name` = 'NPC LOOT (Blue World Drop) - (Item Levels: 54-65) - (NPC Levels: 57-58) - VANILLA NPC ONLY' WHERE `entry` = 60275;
UPDATE `reference_loot_template_names` SET `name` = 'NPC LOOT (Blue World Drop) - (Item Levels: 56-65) - (NPC Levels: 58) - VANILLA NPC ONLY' WHERE `entry` = 60276;
UPDATE `reference_loot_template_names` SET `name` = 'NPC LOOT (Blue World Drop) - (Item Levels: 55-65) - (NPC Levels: 58-59) - VANILLA NPC ONLY' WHERE `entry` = 60277;
UPDATE `reference_loot_template_names` SET `name` = 'NPC LOOT (Blue World Drop) - (Item Levels: 57-65) - (NPC Levels: 59) - VANILLA NPC ONLY' WHERE `entry` = 60278;
UPDATE `reference_loot_template_names` SET `name` = 'NPC LOOT (Blue World Drop) - (Item Levels: 56-65) - (NPC Levels: 59-60) - VANILLA NPC ONLY' WHERE `entry` = 60279;
UPDATE `reference_loot_template_names` SET `name` = 'NPC LOOT (Blue World Drop) - (Item Levels: 56-65) - (NPC Levels: 60) - VANILLA NPC ONLY' WHERE `entry` = 60280;
UPDATE `reference_loot_template_names` SET `name` = 'NPC LOOT (Blue World Drop) - (Item Levels: 56-65) - (NPC Levels: 60-61) - VANILLA NPC ONLY' WHERE `entry` = 60281;
UPDATE `reference_loot_template_names` SET `name` = 'NPC LOOT (Blue World Drop) - (Item Levels: 58-65) - (NPC Levels: 61) - VANILLA NPC ONLY' WHERE `entry` = 60282;
UPDATE `reference_loot_template_names` SET `name` = 'NPC LOOT (Blue World Drop) - (Item Levels: 58-65) - (NPC Levels: 61-62) - VANILLA NPC ONLY' WHERE `entry` = 60283;
UPDATE `reference_loot_template_names` SET `name` = 'NPC LOOT (Blue World Drop) - (Item Levels: 57-65) - (NPC Levels: 62) - VANILLA NPC ONLY' WHERE `entry` = 60284;

-- Additional Fixes

UPDATE `creature_template` SET `LootId` = 0 WHERE `entry` = 11374;
DELETE FROM `creature_loot_template` WHERE `entry` = 11374;
-- https://www.wowhead.com/tbc/npc=11374/hooktooth-frenzy#comments:id=167876

-- Remove 24079-24090 which were used multiple times in same mob making epics drop left and right!
DELETE FROM `creature_loot_template` WHERE `mincountorref` IN (-24017,-24019,-24026,-24028,-24030,-24032,-24034,-24038,-24040,-24042,-24044,-24046,-24049,-24051,-24053,-24055,-24057,-24061,-24063,-24065,-24067,-24069) AND `entry` IN (
92,687,690,730,1087,1550,1557,1558,1713,1785,1791,1802,1809,1817,1821,1822,1824,1883,1884,2473,2505,2544,2657,2658,2659,2680,2681,2686,2725,2726,2734,2736,2757,2759,2791,2831,2923,2924,2925,2931,3094,4323,4324,4685,4863,5224,5225,5244,5245,5246,5247,5260,5262,5278,5286,5287,5288,5300,5304,5305,5306,5307,5308,5360,5419,5420,5422,5423,5424,5425,5426,5427,5428,5429,5430,5431,5432,5441,5450,5451,5452,5453,5454,5455,5456,5457,5458,5459,5461,5462,5465,5646,5843,5850,5852,5853,5854,5855,5856,5857,5858,5861,5979,5981,5982,5984,5985,5988,5990,5991,5992,5993,5998,6010,6126,6201,6348,6349,6352,6375,6377,6378,6379,6380,6498,6499,6500,6505,6506,6507,6508,6509,6510,6511,6512,6513,6514,6516,6518,6520,6521,6551,6552,6553,6554,6555,6556,6557,6559,7022,7031,7032,7037,7039,7044,7045,7046,7048,7097,7099,7125,7126,7132,7135,7136,7268,7269,7376,7379,7405,7430,7431,7433,7447,7448,7449,7450,7451,7455,7456,7457,7462,7584,7789,7977,8095,8120,8196,8198,8337,8442,8519,8520,8521,8522,8534,8535,8540,8541,8542,8557,8562,8596,8597,8598,8600,8601,8602,8603,8605,8667,8675,8759,8761,8762,8764,8837,8909,8910,8911,8917,8920,8921,8922,8925,8926,8927,8928,8932,8933,8959,8960,8961,9026,9162,9163,9164,9165,9166,9167,9318,9396,9416,9451,9452,9477,9545,9547,9622,9683,9684,9690,9691,9695,9696,9697,9698,9878,9879,10040,10043,10177,10221,10374,10375,10411,10442,10486,10487,10488,10489,10498,10499,10500,10580,10605,10608,10659,10660,10661,10664,10678,10919,10981,10986,10987,10990,10991,11043,11338,11350,11351,11353,11357,11359,11360,11361,11365,11368,11371,11372,11387,11388,11391,11458,11459,11551,11552,11598,11603,11605,11657,11675,11677,11678,11685,11698,11721,11722,11723,11724,11725,11726,11727,11728,11729,11730,11731,11732,11733,11734,11735,11736,11737,11738,11739,11740,11741,11744,11745,11746,11747,11777,11778,11781,11783,11784,11785,11786,11787,11788,11789,11831,11837,11838,11839,11896,11949,12050,12051,12052,12053,12100,12125,12127,12159,12207,12218,12219,12220,12380,12418,12457,12461,12463,12465,12467,12800,12803,13022,13036,13136,13138,13139,13140,13143,13144,13145,13146,13147,13152,13153,13160,13197,13279,13285,13298,13299,13323,13324,13326,13327,13328,13329,13330,13331,13332,13333,13334,13336,13337,13358,13359,13421,13422,13424,13425,13426,13428,13437,13440,13443,13447,13529,13531,13576,13577,13599,13676,13696,13797,13996,14123,14187,14282,14283,14303,14398,14455,14460,14462,14532,14821,14825,14882,14883,15043,15207,15208,15209,15211,15212,15229,15233,15235,15236,15240,15247,15249,15250,15252,15262,15277,15307,15320,15323,15324,15325,15327,15333,15338,15343,15355,15386,15461,15462);
DELETE FROM `reference_loot_template` WHERE `entry` IN (24017,24019,24028,24030,24032,24034,24038,24040,24042,24044,24046,24049,24051,24053,24055,24057,24061,24063,24065,24067,24069,24021);
DELETE FROM `reference_loot_template_names` WHERE `entry` IN (24017,24019,24028,24030,24032,24034,24038,24040,24042,24044,24046,24049,24051,24053,24055,24057,24061,24063,24065,24067,24069,24021);

-- Align Chances Range (0.05 ->> 0.5) -> 1:200 to 1:1000
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 0.1, `groupid` = 0 WHERE `ChanceOrQuestChance` < 5 AND `mincountOrRef` BETWEEN -60284 AND -60200;
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `mincountOrRef` BETWEEN -60284 AND -60200;

-- Check for Single Items in all creatures from the new refloots! - nada más
-- Can savely delete without entry check as all wotlk cases were added to this list!
DELETE FROM `creature_loot_template` WHERE `mincountOrRef` IN (-24017,-24019,-24026,-24028,-24030,-24032,-24034,-24038,-24040,-24042,-24044,-24046,-24049,-24051,-24053,-24055,-24057,-24061,-24063,-24065,-24067,-24069);
DELETE FROM `creature_loot_template` WHERE `mincountOrRef` = -24021; -- all have one of the refloots that contains these idol,totem,libram

-- wotlk+ mobs (with blue items) - that should get a refloot assigned instead of items
-- 10435 has Idol of Brutality in loot template!
-- 28529
-- 28557
-- 28594
-- 28608
-- 28609
-- 28610
-- 28611
-- 28768
-- 28769
-- 28822
-- 28846
-- 28936
-- 28939
-- 28940
-- 28942
-- 28945
-- 28946
-- 29000
-- 29001
-- 29076

-- Now part of RefLoots
DELETE FROM `creature_loot_template` WHERE `item` = 9719 AND `comments` = 'Broken Blade of Heroes';
DELETE FROM `creature_loot_template` WHERE `item` = 13068 AND `comments` = 'Obsidian Greaves';

