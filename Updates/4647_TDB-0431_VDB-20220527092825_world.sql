-- Update gold dropped by mobs based on classic sniffs, vmangos and cmangos classic
-- Add your query below.
-- https://github.com/vmangos/core/commit/37b12caeb9becf4473096b319e1d69a105e2233f

-- ============
-- classic only
-- (npc elite status and too high difference in money loot)
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='1410'; -- Firewing Bloodwarder (957MinG) (1288MaxG)
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='5355'; -- Firewing Defender (952MinG) (1177MaxG)
UPDATE `creature_template` SET `MaxLootGold`='1040' WHERE `entry`='678'; -- Mosh'Ogg Mauler (295MinG) (391MaxG) https://www.wowhead.com/tbc/npc=678/moshogg-mauler similar npc (nonelite) in that range currently have like 1s,
UPDATE `creature_template` SET `MaxLootGold`='832' WHERE `entry`='679'; -- Mosh'Ogg Shaman (257MinG) (341MaxG) https://www.wowhead.com/tbc/npc=679/moshogg-shaman so its already increased, maybe even legit
UPDATE `creature_template` SET `MaxLootGold`='934' WHERE `entry`='709'; -- Mosh'Ogg Warmonger (275MinG) (364MaxG) https://www.wowhead.com/tbc/npc=709/moshogg-warmonger
UPDATE `creature_template` SET `MaxLootGold`='1098' WHERE `entry`='710'; -- Mosh'Ogg Spellcrafter (232MinG) (307MaxG) https://www.wowhead.com/tbc/npc=710/moshogg-spellcrafter
UPDATE `creature_template` SET `MaxLootGold`='1025' WHERE `entry`='813'; -- Colonel Kurzen (261MinG) (345MaxG) https://www.wowhead.com/cata/npc=813/colonel-kurzen
UPDATE `creature_template` SET `MinLootGold`='213', `MaxLootGold`='741' WHERE `entry`='871'; -- Saltscale Warrior (218MinG) (290MaxG) https://www.wowhead.com/tbc/npc=871/saltscale-warrior
UPDATE `creature_template` SET `MaxLootGold`='586' WHERE `entry`='877'; -- Saltscale Forager (218MinG) (290MaxG) https://www.wowhead.com/tbc/npc=877/saltscale-forager
UPDATE `creature_template` SET `MinLootGold`='132', `MaxLootGold`='733' WHERE `entry`='879'; -- Saltscale Hunter (218MinG) (290MaxG) https://www.wowhead.com/tbc/npc=879/saltscale-hunter
UPDATE `creature_template` SET `MaxLootGold`='1236' WHERE `entry`='1788'; -- Skeletal Warlord (445MinG) (586MaxG) https://www.wowhead.com/tbc/npc=1788/skeletal-warlord
UPDATE `creature_template` SET `MinLootGold`='400', `MaxLootGold`='2407' WHERE `entry`='1827'; -- Scarlet Sentinel (435MinG) (573MaxG) https://www.wowhead.com/tbc/npc=1827/scarlet-sentinel
UPDATE `creature_template` SET `MaxLootGold`='2067' WHERE `entry`='1834'; -- Scarlet Paladin (367MinG) (484MaxG) https://www.wowhead.com/tbc/npc=1834/scarlet-paladin
UPDATE `creature_template` SET `MinLootGold`='126', `MaxLootGold`='847' WHERE `entry`='2254'; -- Crushridge Mauler (228MinG) (303MaxG) (sample size 30)
UPDATE `creature_template` SET `MaxLootGold`='894' WHERE `entry`='2255'; -- Crushridge Mage (192MinG) (255MaxG) https://www.wowhead.com/tbc/npc=2255/crushridge-mage
UPDATE `creature_template` SET `MinLootGold`='159', `MaxLootGold`='913' WHERE `entry`='2256'; -- Crushridge Enforcer (249MinG) (330MaxG) (sample size 29)
UPDATE `creature_template` SET `MinLootGold`='281', `MaxLootGold`='487' WHERE `entry`='2257'; -- Mug'thol (291MinG) (385MaxG) https://www.wowhead.com/tbc/npc=2257/mugthol
UPDATE `creature_template` SET `MinLootGold`='158', `MaxLootGold`='1007' WHERE `entry`='2287'; -- Crushridge Warmonger (259MinG) (343MaxG) (sample size 32)
UPDATE `creature_template` SET `MinLootGold`='126', `MaxLootGold`='422' WHERE `entry`='2344'; -- Dun Garok Mountaineer (142MinG) (191MaxG) https://www.wowhead.com/tbc/npc=2344/dun-garok-mountaineer
UPDATE `creature_template` SET `MinLootGold`='132', `MaxLootGold`='470' WHERE `entry`='2345'; -- Dun Garok Rifleman (170MinG) (226MaxG) https://www.wowhead.com/tbc/npc=2345/dun-garok-rifleman
UPDATE `creature_template` SET `MinLootGold`='77', `MaxLootGold`='318' WHERE `entry`='2346'; -- Dun Garok Priest (153MinG) (204MaxG) https://www.wowhead.com/tbc/npc=2346/dun-garok-priest
UPDATE `creature_template` SET `MinLootGold`='158', `MaxLootGold`='633' WHERE `entry`='2416'; -- Crushridge Plunderer (232MinG) (308MaxG) https://www.wowhead.com/tbc/npc=2416/crushridge-plunderer
UPDATE `creature_template` SET `MinLootGold`='202', `MaxLootGold`='681' WHERE `entry`='2420'; -- Targ (402MinG) (530MaxG) https://www.wowhead.com/tbc/npc=2420/targ
UPDATE `creature_template` SET `MaxLootGold`='764' WHERE `entry`='2421'; -- Muckrake (261MinG) (345MaxG) https://www.wowhead.com/tbc/npc=2421/muckrake
UPDATE `creature_template` SET `MaxLootGold`='958' WHERE `entry`='2422'; -- Glommus (250MinG) (332MaxG) https://www.wowhead.com/tbc/npc=2422/glommus
UPDATE `creature_template` SET `MaxLootGold`='763' WHERE `entry`='2558'; -- Witherbark Berserker (237MinG) (314MaxG) https://www.wowhead.com/tbc/npc=2558/witherbark-berserker
UPDATE `creature_template` SET `MinLootGold`='208', `MaxLootGold`='860' WHERE `entry`='2569'; -- Boulderfist Mauler (238MinG) (316MaxG) (sample size 24)
UPDATE `creature_template` SET `MaxLootGold`='919' WHERE `entry`='2570'; -- Boulderfist Shaman (215MinG) (285MaxG) https://www.wowhead.com/tbc/npc=2570/boulderfist-shaman
UPDATE `creature_template` SET `MinLootGold`='186', `MaxLootGold`='904' WHERE `entry`='2571'; -- Boulderfist Lord (259MinG) (343MaxG) https://www.wowhead.com/tbc/npc=2571/boulderfist-lord
UPDATE `creature_template` SET `MaxLootGold`='429' WHERE `entry`='2583'; -- Stromgarde Troll Hunter (204MinG) (272MaxG) https://www.wowhead.com/tbc/npc=2583/stromgarde-troll-hunter
UPDATE `creature_template` SET `MaxLootGold`='855' WHERE `entry`='2584'; -- Stromgarde Defender (249MinG) (330MaxG) https://www.wowhead.com/tbc/npc=2584/stromgarde-defender
UPDATE `creature_template` SET `MinLootGold`='256', `MaxLootGold`='569' WHERE `entry`='2585'; -- Stromgarde Vindicator (259MinG) (343MaxG) https://www.wowhead.com/tbc/npc=2585/stromgarde-vindicator
UPDATE `creature_template` SET `MinLootGold`='160', `MaxLootGold`='815' WHERE `entry`='2588'; -- Syndicate Prowler (228MinG) (303MaxG) https://www.wowhead.com/tbc/npc=2588/syndicate-prowler
UPDATE `creature_template` SET `MaxLootGold`='774' WHERE `entry`='2590'; -- Syndicate Conjuror (180MinG) (240MaxG) https://www.wowhead.com/tbc/npc=2590/syndicate-conjuror
UPDATE `creature_template` SET `MaxLootGold`='847' WHERE `entry`='2591'; -- Syndicate Magus (192MinG) (255MaxG) https://www.wowhead.com/tbc/npc=2591/syndicate-magus
UPDATE `creature_template` SET `MaxLootGold`='1122' WHERE `entry`='2611'; -- Fozruk (277MinG) (366MaxG) https://www.wowhead.com/tbc/npc=2611/fozruk
UPDATE `creature_template` SET `MaxLootGold`='1484' WHERE `entry`='2641'; -- Vilebranch Headhunter (330MinG) (436MaxG) https://www.wowhead.com/tbc/npc=2641/vilebranch-headhunter
UPDATE `creature_template` SET `MaxLootGold`='1382' WHERE `entry`='2642'; -- Vilebranch Shadowcaster (268MinG) (355MaxG) https://www.wowhead.com/tbc/npc=2642/vilebranch-shadowcaster
UPDATE `creature_template` SET `MinLootGold`='245', `MaxLootGold`='1545' WHERE `entry`='2643'; -- Vilebranch Berserker (336MinG) (444MaxG) https://www.wowhead.com/tbc/npc=2643/vilebranch-berserker
UPDATE `creature_template` SET `MinLootGold`='310', `MaxLootGold`='1593' WHERE `entry`='2644'; -- Vilebranch Hideskinner (351MinG) (463MaxG) https://www.wowhead.com/tbc/npc=2644/vilebranch-hideskinner
UPDATE `creature_template` SET `MaxLootGold`='1687' WHERE `entry`='2645'; -- Vilebranch Shadow Hunter (295MinG) (391MaxG) https://www.wowhead.com/tbc/npc=2645/vilebranch-shadow-hunter
UPDATE `creature_template` SET `MinLootGold`='295', `MaxLootGold`='1728' WHERE `entry`='2646'; -- Vilebranch Blood Drinker (361MinG) (476MaxG) https://www.wowhead.com/tbc/npc=2646/vilebranch-blood-drinker
UPDATE `creature_template` SET `MinLootGold`='337', `MaxLootGold`='1710' WHERE `entry`='2647'; -- Vilebranch Soul Eater (361MinG) (476MaxG) https://www.wowhead.com/tbc/npc=2647/vilebranch-soul-eater
UPDATE `creature_template` SET `MinLootGold`='348', `MaxLootGold`='1888' WHERE `entry`='2648'; -- Vilebranch Aman'zasi Guard (375MinG) (495MaxG) https://www.wowhead.com/tbc/npc=2648/vilebranch-amanzasi-guard
UPDATE `creature_template` SET `MinLootGold`='183', `MaxLootGold`='1285' WHERE `entry`='2726'; -- Scorched Guardian (308MinG) (407MaxG) https://www.wowhead.com/tbc/npc=2726/scorched-guardian
UPDATE `creature_template` SET `MaxLootGold`='794' WHERE `entry`='2738'; -- Stromgarde Cavalryman (232MinG) (308MaxG) https://www.wowhead.com/tbc/npc=2738/stromgarde-cavalryman
UPDATE `creature_template` SET `MinLootGold`='129', `MaxLootGold`='1890' WHERE `entry`='2757'; -- Blacklash (550MinG) (723MaxG) https://www.wowhead.com/tbc/npc=2757/blacklash
UPDATE `creature_template` SET `MinLootGold`='115', `MaxLootGold`='1698' WHERE `entry`='2759'; -- Hematus (635MinG) (834MaxG) https://www.wowhead.com/tbc/npc=2759/hematus
UPDATE `creature_template` SET `MinLootGold`='107', `MaxLootGold`='814' WHERE `entry`='2763'; -- Thenan (281MinG) (372MaxG) https://www.wowhead.com/tbc/npc=2763/thenan
UPDATE `creature_template` SET `MaxLootGold`='699' WHERE `entry`='2780'; -- Caretaker Nevlin (275MinG) (364MaxG) https://www.wowhead.com/tbc/npc=2780/caretaker-nevlin
UPDATE `creature_template` SET `MinLootGold`='208' WHERE `entry`='2781'; -- Caretaker Weston (275MinG) (364MaxG) https://www.wowhead.com/tbc/npc=2781/caretaker-weston
UPDATE `creature_template` SET `MaxLootGold`='609' WHERE `entry`='2782'; -- Caretaker Alaric (266MinG) (353MaxG) https://www.wowhead.com/tbc/npc=2782/caretaker-alaric
UPDATE `creature_template` SET `MaxLootGold`='499' WHERE `entry`='4280'; -- Scarlet Preserver (153MinG) (204MaxG) https://www.wowhead.com/tbc/npc=4280/scarlet-preserver
UPDATE `creature_template` SET `MinLootGold`='167', `MaxLootGold`='339' WHERE `entry`='4281'; -- Scarlet Scout (174MinG) (232MaxG) https://www.wowhead.com/tbc/npc=4281/scarlet-scout
UPDATE `creature_template` SET `MaxLootGold`='347' WHERE `entry`='4282'; -- Scarlet Magician (148MinG) (199MaxG) https://www.wowhead.com/tbc/npc=4282/scarlet-magician
UPDATE `creature_template` SET `MinLootGold`='92', `MaxLootGold`='528' WHERE `entry`='4283'; -- Scarlet Sentry (188MinG) (251MaxG) https://www.wowhead.com/tbc/npc=4283/scarlet-sentry
UPDATE `creature_template` SET `MinLootGold`='159', `MaxLootGold`='531' WHERE `entry`='4284'; -- Scarlet Augur (167MinG) (223MaxG) https://www.wowhead.com/tbc/npc=4284/scarlet-augur
UPDATE `creature_template` SET `MinLootGold`='92', `MaxLootGold`='509' WHERE `entry`='4285'; -- Scarlet Disciple (167MinG) (223MaxG) https://www.wowhead.com/tbc/npc=4285/scarlet-disciple
UPDATE `creature_template` SET `MinLootGold`='63', `MaxLootGold`='399' WHERE `entry`='4324'; -- Searing Whelp (67MinG) (92MaxG) (sample size 63)
UPDATE `creature_template` SET `MinLootGold`='69', `MaxLootGold`='426' WHERE `entry`='4328'; -- Firemane Scalebane (72MinG) (99MaxG) (sample size 26)
UPDATE `creature_template` SET `MinLootGold`='59', `MaxLootGold`='381' WHERE `entry`='4329'; -- Firemane Scout (74MinG) (102MaxG) (sample size 42)
UPDATE `creature_template` SET `MinLootGold`='69', `MaxLootGold`='392' WHERE `entry`='4331'; -- Firemane Ash Tail (67MinG) (92MaxG) (sample size 34)
UPDATE `creature_template` SET `MinLootGold`='69', `MaxLootGold`='409' WHERE `entry`='4334'; -- Firemane Flamecaller (72MinG) (99MaxG) https://www.wowhead.com/tbc/npc=4334/firemane-flamecaller
UPDATE `creature_template` SET `MinLootGold`='285', `MaxLootGold`='1292' WHERE `entry`='4465'; -- Vilebranch Warrior (316MinG) (417MaxG) https://www.wowhead.com/tbc/npc=4465/vilebranch-warrior
UPDATE `creature_template` SET `MinLootGold`='165', `MaxLootGold`='890' WHERE `entry`='4468'; -- Jade Sludge (340MinG) (449MaxG) https://www.wowhead.com/tbc/npc=4468/jade-sludge
UPDATE `creature_template` SET `MinLootGold`='221', `MaxLootGold`='762' WHERE `entry`='4469'; -- Emerald Ooze (283MinG) (375MaxG) https://www.wowhead.com/tbc/npc=4469/emerald-ooze
UPDATE `creature_template` SET `MinLootGold`='35', `MaxLootGold`='203' WHERE `entry`='4788'; -- Fallenroot Satyr (95MinG) (129MaxG) https://www.wowhead.com/tbc/npc=4788/fallenroot-satyr
UPDATE `creature_template` SET `MinLootGold`='95', `MaxLootGold`='227' WHERE `entry`='4789'; -- Fallenroot Rogue (109MinG) (148MaxG) https://www.wowhead.com/tbc/npc=4789/fallenroot-rogue
UPDATE `creature_template` SET `MinLootGold`='41' WHERE `entry`='4802'; -- Blackfathom Tide Priestess (95MinG) (129MaxG) https://www.wowhead.com/tbc/npc=4802/blackfathom-tide-priestess
UPDATE `creature_template` SET `MinLootGold`='55', `MaxLootGold`='185' WHERE `entry`='4803'; -- Blackfathom Oracle (101MinG) (136MaxG) https://www.wowhead.com/tbc/npc=4803/blackfathom-oracle
UPDATE `creature_template` SET `MinLootGold`='142', `MaxLootGold`='776' WHERE `entry`='4844'; -- Shadowforge Surveyor (180MinG) (240MaxG) (sample size 40)
UPDATE `creature_template` SET `MinLootGold`='211', `MaxLootGold`='821' WHERE `entry`='4845'; -- Shadowforge Ruffian (228MinG) (303MaxG) https://www.wowhead.com/tbc/npc=4845/shadowforge-ruffian
UPDATE `creature_template` SET `MinLootGold`='138', `MaxLootGold`='774' WHERE `entry`='4846'; -- Shadowforge Digger (222MinG) (295MaxG) (sample size 60)
UPDATE `creature_template` SET `MinLootGold`='216', `MaxLootGold`='831' WHERE `entry`='4851'; -- Stonevault Rockchewer (232MinG) (308MaxG) https://www.wowhead.com/tbc/npc=4851/stonevault-rockchewer
UPDATE `creature_template` SET `MaxLootGold`='397' WHERE `entry`='4856'; -- Stonevault Cave Hunter (228MinG) (303MaxG) https://www.wowhead.com/tbc/npc=4856/stonevault-cave-hunter
UPDATE `creature_template` SET `MaxLootGold`='785' WHERE `entry`='5235'; -- Fungal Ooze (320MinG) (423MaxG) https://www.wowhead.com/tbc/npc=5235/fungal-ooze
UPDATE `creature_template` SET `MaxLootGold`='767' WHERE `entry`='5243'; -- Cursed Atal'ai (320MinG) (423MaxG) https://www.wowhead.com/tbc/npc=5243/cursed-atalai
UPDATE `creature_template` SET `MaxLootGold`='1033' WHERE `entry`='5261'; -- Enthralled Atal'ai (320MinG) (423MaxG) https://www.wowhead.com/tbc/npc=5261/enthralled-atalai
UPDATE `creature_template` SET `MaxLootGold`='1450' WHERE `entry`='5263'; -- Mummified Atal'ai (326MinG) (431MaxG) https://www.wowhead.com/tbc/npc=5263/mummified-atalai
UPDATE `creature_template` SET `MaxLootGold`='1240' WHERE `entry`='5269'; -- Atal'ai Priest (279MinG) (370MaxG) https://www.wowhead.com/tbc/npc=5269/atalai-priest
UPDATE `creature_template` SET `MaxLootGold`='970' WHERE `entry`='5645'; -- Sandfury Hideskinner (289MinG) (383MaxG) https://www.wowhead.com/tbc/npc=5645/sandfury-hideskinner
UPDATE `creature_template` SET `MaxLootGold`='878' WHERE `entry`='5647'; -- Sandfury Firecaller (232MinG) (307MaxG) https://www.wowhead.com/tbc/npc=5647/sandfury-firecaller
UPDATE `creature_template` SET `MinLootGold`='235', `MaxLootGold`='1459' WHERE `entry`='5860'; -- Twilight Dark Shaman (289MinG) (383MaxG) (sample size 21)
UPDATE `creature_template` SET `MinLootGold`='271', `MaxLootGold`='1697' WHERE `entry`='5861'; -- Twilight Fire Guard (351MinG) (463MaxG) (sample size 24)
UPDATE `creature_template` SET `MaxLootGold`='1738' WHERE `entry`='5862'; -- Twilight Geomancer (284MinG) (376MaxG) https://www.wowhead.com/tbc/npc=5862/twilight-geomancer
UPDATE `creature_template` SET `MaxLootGold`='947' WHERE `entry`='6733'; -- Stonevault Basher (263MinG) (348MaxG) https://www.wowhead.com/tbc/npc=6733/stonevault-basher
UPDATE `creature_template` SET `MaxLootGold`='2149' WHERE `entry`='7040'; -- Black Dragonspawn (400MinG) (527MaxG) https://www.wowhead.com/tbc/npc=7040/black-dragonspawn
UPDATE `creature_template` SET `MaxLootGold`='2071' WHERE `entry`='7041'; -- Black Wyrmkin (312MinG) (413MaxG) https://www.wowhead.com/tbc/npc=7041/black-wyrmkin
UPDATE `creature_template` SET `MaxLootGold`='1992' WHERE `entry`='7042'; -- Flamescale Dragonspawn (449MinG) (592MaxG) https://www.wowhead.com/tbc/npc=7042/flamescale-dragonspawn
UPDATE `creature_template` SET `MaxLootGold`='1210' WHERE `entry`='7044'; -- Black Drake (388MinG) (512MaxG) https://www.wowhead.com/tbc/npc=7044/black-drake
-- custom values from old nost/lh/vmangos see 30 30 38 38
UPDATE `creature_template` SET `MinLootGold`='1030', `MaxLootGold`='1830' WHERE `entry`='7068'; -- Condemned Acolyte (421MinG) (555MaxG) https://www.wowhead.com/tbc/npc=7068/condemned-acolyte
UPDATE `creature_template` SET `MinLootGold`='1138', `MaxLootGold`='1938' WHERE `entry`='7069'; -- Condemned Monk (474MinG) (624MaxG) https://www.wowhead.com/tbc/npc=7069/condemned-monk
UPDATE `creature_template` SET `MinLootGold`='1091', `MaxLootGold`='1891' WHERE `entry`='7070'; -- Condemned Cleric (454MinG) (598MaxG) https://www.wowhead.com/tbc/npc=7070/condemned-cleric
UPDATE `creature_template` SET `MinLootGold`='1065', `MaxLootGold`='1865' WHERE `entry`='7071'; -- Cursed Paladin (413MinG) (544MaxG) https://www.wowhead.com/tbc/npc=7071/cursed-paladin
UPDATE `creature_template` SET `MinLootGold`='1030', `MaxLootGold`='1830' WHERE `entry`='7072'; -- Cursed Justicar (527MinG) (693MaxG) https://www.wowhead.com/tbc/npc=7072/cursed-justicar
UPDATE `creature_template` SET `MinLootGold`='1171', `MaxLootGold`='1971' WHERE `entry`='7075'; -- Writhing Mage (397MinG) (524MaxG) https://www.wowhead.com/tbc/npc=7075/writhing-mage
UPDATE `creature_template` SET `MinLootGold`='244', `MaxLootGold`='1362' WHERE `entry`='7276'; -- Zul'Farrak Dead Hero (107MinG) (534MaxG) https://www.wowhead.com/tbc/npc=7276/zulfarrak-dead-hero
UPDATE `creature_template` SET `MinLootGold`='183', `MaxLootGold`='1286' WHERE `entry`='7286'; -- Zul'Farrak Zombie (300MinG) (396MaxG) https://www.wowhead.com/tbc/npc=7286/zulfarrak-zombie
UPDATE `creature_template` SET `MaxLootGold`='475' WHERE `entry`='7872'; -- Death's Head Cultist (168MinG) (224MaxG) https://www.wowhead.com/tbc/npc=7872/deaths-head-cultist
UPDATE `creature_template` SET `MinLootGold`='205', `MaxLootGold`='553' WHERE `entry`='7873'; -- Razorfen Battleguard (206MinG) (274MaxG) https://www.wowhead.com/tbc/npc=7873/razorfen-battleguard
UPDATE `creature_template` SET `MinLootGold`='144', `MaxLootGold`='689' WHERE `entry`='7874'; -- Razorfen Thornweaver (172MinG) (230MaxG) https://www.wowhead.com/tbc/npc=7874/razorfen-thornweaver
UPDATE `creature_template` SET `MaxLootGold`='2194' WHERE `entry`='7995'; -- Vile Priestess Hexx (432MinG) (569MaxG) https://www.wowhead.com/tbc/npc=7995/vile-priestess-hexx
UPDATE `creature_template` SET `MaxLootGold`='1948' WHERE `entry`='7996'; -- Qiaga the Keeper (409MinG) (539MaxG) https://www.wowhead.com/tbc/npc=7996/qiaga-the-keeper
UPDATE `creature_template` SET `MinLootGold`='115', `MaxLootGold`='1908' WHERE `entry`='8075'; -- Edana Hatetalon (307MinG) (576MaxG) https://www.wowhead.com/tbc/npc=8075/edana-hatetalon
UPDATE `creature_template` SET `MinLootGold`='261', `MaxLootGold`='1754' WHERE `entry`='8419'; -- Twilight Idolater (318MinG) (421MaxG) https://www.wowhead.com/tbc/npc=8419/twilight-idolater
UPDATE `creature_template` SET `MaxLootGold`='1897' WHERE `entry`='10608'; -- Scarlet Priest (401MinG) (528MaxG) https://www.wowhead.com/tbc/npc=10608/scarlet-priest
UPDATE `creature_template` SET `MaxLootGold`='2823' WHERE `entry`='10738'; -- High Chief Winterfall (399MinG) (526MaxG) https://www.wowhead.com/tbc/npc=10738/high-chief-winterfall
UPDATE `creature_template` SET `MaxLootGold`='1414' WHERE `entry`='10802'; -- Hitah'ya the Keeper (424MinG) (558MaxG) https://www.wowhead.com/tbc/npc=10802/hitahya-the-keeper
UPDATE `creature_template` SET `MaxLootGold`='1764' WHERE `entry`='11442'; -- Gordok Mauler (414MinG) (546MaxG) https://www.wowhead.com/tbc/npc=11442/gordok-mauler
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='11980'; -- Zuluhed the Whacked (3732MinG) (4878MaxG) https://www.wowhead.com/tbc/npc=11980/zuluhed-the-whacked
UPDATE `creature_template` SET `MinLevel` = 60, `MaxLevel` = 60 WHERE `entry` = 13378; -- Frostwolf Shredder Unit
UPDATE `creature_template` SET `MinLevel` = 60, `MaxLevel` = 60 WHERE `entry` = 13416; -- Stormpike Shredder Unit
UPDATE `creature_template` SET `MinLevel` = 61, `MaxLevel` = 61 WHERE `entry` = 13446; -- Field Marshal Teravaine
UPDATE `creature_template` SET `MinLevel` = 60, `MaxLevel` = 60 WHERE `entry` = 13161; -- Aerie Gryphon
UPDATE `creature_template` SET `MinLevel` = 60, `MaxLevel` = 60 WHERE `entry` = 13178; -- War Rider
UPDATE `creature_template` SET `MinLevel` = 60, `MaxLevel` = 60 WHERE `entry` = 14943; -- Guse's War Rider
UPDATE `creature_template` SET `MinLevel` = 60, `MaxLevel` = 60 WHERE `entry` = 14944; -- Jeztor's War Rider
UPDATE `creature_template` SET `MinLevel` = 60, `MaxLevel` = 60 WHERE `entry` = 14945; -- Mulverick's War Rider
UPDATE `creature_template` SET `MinLevel` = 60, `MaxLevel` = 60 WHERE `entry` = 14946; -- Slidore's Gryphon
UPDATE `creature_template` SET `MinLevel` = 60, `MaxLevel` = 60 WHERE `entry` = 14947; -- Ichman's Gryphon
UPDATE `creature_template` SET `MinLevel` = 60, `MaxLevel` = 60 WHERE `entry` = 14948; -- Vipore's Gryphon

-- Add elite npcs new MinLootGold from above section for tbc+, as the nerfed npcs cant have a lower money then their nerfed versions.
UPDATE `creature_template` SET `MinLootGold`='213' WHERE `entry`='871'; -- Saltscale Warrior (218MinG) (290MaxG) https://www.wowhead.com/tbc/npc=871/saltscale-warrior
UPDATE `creature_template` SET `MinLootGold`='132' WHERE `entry`='879'; -- Saltscale Hunter (218MinG) (290MaxG) https://www.wowhead.com/tbc/npc=879/saltscale-hunter
UPDATE `creature_template` SET `MinLootGold`='400' WHERE `entry`='1827'; -- Scarlet Sentinel (435MinG) (573MaxG) https://www.wowhead.com/tbc/npc=1827/scarlet-sentinel
UPDATE `creature_template` SET `MinLootGold`='126' WHERE `entry`='2254'; -- Crushridge Mauler (228MinG) (303MaxG) (sample size 30)
UPDATE `creature_template` SET `MinLootGold`='159' WHERE `entry`='2256'; -- Crushridge Enforcer (249MinG) (330MaxG) (sample size 29)
UPDATE `creature_template` SET `MinLootGold`='281' WHERE `entry`='2257'; -- Mug'thol (291MinG) (385MaxG) https://www.wowhead.com/tbc/npc=2257/mugthol
UPDATE `creature_template` SET `MinLootGold`='158' WHERE `entry`='2287'; -- Crushridge Warmonger (259MinG) (343MaxG) (sample size 32)
UPDATE `creature_template` SET `MinLootGold`='126' WHERE `entry`='2344'; -- Dun Garok Mountaineer (142MinG) (191MaxG) https://www.wowhead.com/tbc/npc=2344/dun-garok-mountaineer
UPDATE `creature_template` SET `MinLootGold`='132' WHERE `entry`='2345'; -- Dun Garok Rifleman (170MinG) (226MaxG) https://www.wowhead.com/tbc/npc=2345/dun-garok-rifleman
UPDATE `creature_template` SET `MinLootGold`='77' WHERE `entry`='2346'; -- Dun Garok Priest (153MinG) (204MaxG) https://www.wowhead.com/tbc/npc=2346/dun-garok-priest
UPDATE `creature_template` SET `MinLootGold`='158' WHERE `entry`='2416'; -- Crushridge Plunderer (232MinG) (308MaxG) https://www.wowhead.com/tbc/npc=2416/crushridge-plunderer
UPDATE `creature_template` SET `MinLootGold`='202' WHERE `entry`='2420'; -- Targ (402MinG) (530MaxG) https://www.wowhead.com/tbc/npc=2420/targ
UPDATE `creature_template` SET `MinLootGold`='208' WHERE `entry`='2569'; -- Boulderfist Mauler (238MinG) (316MaxG) (sample size 24)
UPDATE `creature_template` SET `MinLootGold`='186' WHERE `entry`='2571'; -- Boulderfist Lord (259MinG) (343MaxG) https://www.wowhead.com/tbc/npc=2571/boulderfist-lord
UPDATE `creature_template` SET `MinLootGold`='256' WHERE `entry`='2585'; -- Stromgarde Vindicator (259MinG) (343MaxG) https://www.wowhead.com/tbc/npc=2585/stromgarde-vindicator
UPDATE `creature_template` SET `MinLootGold`='160' WHERE `entry`='2588'; -- Syndicate Prowler (228MinG) (303MaxG) https://www.wowhead.com/tbc/npc=2588/syndicate-prowler
UPDATE `creature_template` SET `MinLootGold`='245' WHERE `entry`='2643'; -- Vilebranch Berserker (336MinG) (444MaxG) https://www.wowhead.com/tbc/npc=2643/vilebranch-berserker
UPDATE `creature_template` SET `MinLootGold`='310' WHERE `entry`='2644'; -- Vilebranch Hideskinner (351MinG) (463MaxG) https://www.wowhead.com/tbc/npc=2644/vilebranch-hideskinner
UPDATE `creature_template` SET `MinLootGold`='295' WHERE `entry`='2646'; -- Vilebranch Blood Drinker (361MinG) (476MaxG) https://www.wowhead.com/tbc/npc=2646/vilebranch-blood-drinker
UPDATE `creature_template` SET `MinLootGold`='337' WHERE `entry`='2647'; -- Vilebranch Soul Eater (361MinG) (476MaxG) https://www.wowhead.com/tbc/npc=2647/vilebranch-soul-eater
UPDATE `creature_template` SET `MinLootGold`='348' WHERE `entry`='2648'; -- Vilebranch Aman'zasi Guard (375MinG) (495MaxG) https://www.wowhead.com/tbc/npc=2648/vilebranch-amanzasi-guard
UPDATE `creature_template` SET `MinLootGold`='183' WHERE `entry`='2726'; -- Scorched Guardian (308MinG) (407MaxG) https://www.wowhead.com/tbc/npc=2726/scorched-guardian
UPDATE `creature_template` SET `MinLootGold`='129' WHERE `entry`='2757'; -- Blacklash (550MinG) (723MaxG) https://www.wowhead.com/tbc/npc=2757/blacklash
UPDATE `creature_template` SET `MinLootGold`='115' WHERE `entry`='2759'; -- Hematus (635MinG) (834MaxG) https://www.wowhead.com/tbc/npc=2759/hematus
UPDATE `creature_template` SET `MinLootGold`='107' WHERE `entry`='2763'; -- Thenan (281MinG) (372MaxG) https://www.wowhead.com/tbc/npc=2763/thenan
UPDATE `creature_template` SET `MinLootGold`='208' WHERE `entry`='2781'; -- Caretaker Weston (275MinG) (364MaxG) https://www.wowhead.com/tbc/npc=2781/caretaker-weston
UPDATE `creature_template` SET `MinLootGold`='167' WHERE `entry`='4281'; -- Scarlet Scout (174MinG) (232MaxG) https://www.wowhead.com/tbc/npc=4281/scarlet-scout
UPDATE `creature_template` SET `MinLootGold`='92' WHERE `entry`='4283'; -- Scarlet Sentry (188MinG) (251MaxG) https://www.wowhead.com/tbc/npc=4283/scarlet-sentry
UPDATE `creature_template` SET `MinLootGold`='159' WHERE `entry`='4284'; -- Scarlet Augur (167MinG) (223MaxG) https://www.wowhead.com/tbc/npc=4284/scarlet-augur
UPDATE `creature_template` SET `MinLootGold`='92' WHERE `entry`='4285'; -- Scarlet Disciple (167MinG) (223MaxG) https://www.wowhead.com/tbc/npc=4285/scarlet-disciple
UPDATE `creature_template` SET `MinLootGold`='63' WHERE `entry`='4324'; -- Searing Whelp (67MinG) (92MaxG) (sample size 63)
UPDATE `creature_template` SET `MinLootGold`='69' WHERE `entry`='4328'; -- Firemane Scalebane (72MinG) (99MaxG) (sample size 26)
UPDATE `creature_template` SET `MinLootGold`='59' WHERE `entry`='4329'; -- Firemane Scout (74MinG) (102MaxG) (sample size 42)
UPDATE `creature_template` SET `MinLootGold`='69' WHERE `entry`='4331'; -- Firemane Ash Tail (67MinG) (92MaxG) (sample size 34)
UPDATE `creature_template` SET `MinLootGold`='69' WHERE `entry`='4334'; -- Firemane Flamecaller (72MinG) (99MaxG) https://www.wowhead.com/tbc/npc=4334/firemane-flamecaller
UPDATE `creature_template` SET `MinLootGold`='285' WHERE `entry`='4465'; -- Vilebranch Warrior (316MinG) (417MaxG) https://www.wowhead.com/tbc/npc=4465/vilebranch-warrior
UPDATE `creature_template` SET `MinLootGold`='165' WHERE `entry`='4468'; -- Jade Sludge (340MinG) (449MaxG) https://www.wowhead.com/tbc/npc=4468/jade-sludge
UPDATE `creature_template` SET `MinLootGold`='221' WHERE `entry`='4469'; -- Emerald Ooze (283MinG) (375MaxG) https://www.wowhead.com/tbc/npc=4469/emerald-ooze
UPDATE `creature_template` SET `MinLootGold`='35' WHERE `entry`='4788'; -- Fallenroot Satyr (95MinG) (129MaxG) https://www.wowhead.com/tbc/npc=4788/fallenroot-satyr
UPDATE `creature_template` SET `MinLootGold`='95' WHERE `entry`='4789'; -- Fallenroot Rogue (109MinG) (148MaxG) https://www.wowhead.com/tbc/npc=4789/fallenroot-rogue
UPDATE `creature_template` SET `MinLootGold`='41' WHERE `entry`='4802'; -- Blackfathom Tide Priestess (95MinG) (129MaxG) https://www.wowhead.com/tbc/npc=4802/blackfathom-tide-priestess
UPDATE `creature_template` SET `MinLootGold`='55' WHERE `entry`='4803'; -- Blackfathom Oracle (101MinG) (136MaxG) https://www.wowhead.com/tbc/npc=4803/blackfathom-oracle
UPDATE `creature_template` SET `MinLootGold`='142' WHERE `entry`='4844'; -- Shadowforge Surveyor (180MinG) (240MaxG) (sample size 40)
UPDATE `creature_template` SET `MinLootGold`='211' WHERE `entry`='4845'; -- Shadowforge Ruffian (228MinG) (303MaxG) https://www.wowhead.com/tbc/npc=4845/shadowforge-ruffian
UPDATE `creature_template` SET `MinLootGold`='138' WHERE `entry`='4846'; -- Shadowforge Digger (222MinG) (295MaxG) (sample size 60)
UPDATE `creature_template` SET `MinLootGold`='216' WHERE `entry`='4851'; -- Stonevault Rockchewer (232MinG) (308MaxG) https://www.wowhead.com/tbc/npc=4851/stonevault-rockchewer
UPDATE `creature_template` SET `MinLootGold`='235' WHERE `entry`='5860'; -- Twilight Dark Shaman (289MinG) (383MaxG) (sample size 21)
UPDATE `creature_template` SET `MinLootGold`='271' WHERE `entry`='5861'; -- Twilight Fire Guard (351MinG) (463MaxG) (sample size 24)
UPDATE `creature_template` SET `MinLootGold`='183' WHERE `entry`='7286'; -- Zul'Farrak Zombie (300MinG) (396MaxG) https://www.wowhead.com/tbc/npc=7286/zulfarrak-zombie
UPDATE `creature_template` SET `MinLootGold`='205' WHERE `entry`='7873'; -- Razorfen Battleguard (206MinG) (274MaxG) https://www.wowhead.com/tbc/npc=7873/razorfen-battleguard
UPDATE `creature_template` SET `MinLootGold`='144' WHERE `entry`='7874'; -- Razorfen Thornweaver (172MinG) (230MaxG) https://www.wowhead.com/tbc/npc=7874/razorfen-thornweaver
UPDATE `creature_template` SET `MinLootGold`='115' WHERE `entry`='8075'; -- Edana Hatetalon (307MinG) (576MaxG) https://www.wowhead.com/tbc/npc=8075/edana-hatetalon
UPDATE `creature_template` SET `MinLootGold`='261' WHERE `entry`='8419'; -- Twilight Idolater (318MinG) (421MaxG) https://www.wowhead.com/tbc/npc=8419/twilight-idolater

-- End of migration.
UPDATE `creature_template` SET `MinLootGold`='3', `MaxLootGold`='24' WHERE `entry`='36'; -- Harvest Golem (13MinG) (21MaxG) (sample size 30)
UPDATE `creature_template` SET `MinLootGold`='1', `MaxLootGold`='5' WHERE `entry`='38'; -- Defias Thug (2MinG) (7MaxG) (sample size 134)
UPDATE `creature_template` SET `MinLootGold`='1' WHERE `entry`='40'; -- Kobold Miner (5MinG) (12MaxG) (sample size 65)
UPDATE `creature_template` SET `MinLootGold`='2', `MaxLootGold`='15' WHERE `entry`='46'; -- Murloc Forager (9MinG) (17MaxG) (sample size 26)
UPDATE `creature_template` SET `MinLootGold`='7', `MaxLootGold`='14' WHERE `entry`='60'; -- Ruklar the Trapper (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=60/ruklar-the-trapper
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='62'; -- Gug Fatcandle (2MinG) (4MaxG) nonexistant
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='68'; -- Stormwind City Guard (0MinG) (0MaxG)
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='89'; -- Infernal (0MinG) (0MaxG)
UPDATE `creature_template` SET `MinLootGold`='1', `MaxLootGold`='5' WHERE `entry`='80'; -- Kobold Laborer (2MinG) (8MaxG) (sample size 47)
UPDATE `creature_template` SET `MinLootGold`='1' WHERE `entry`='94'; -- Defias Cutpurse (5MinG) (12MaxG) https://www.wowhead.com/tbc/npc=94/defias-cutpurse
UPDATE `creature_template` SET `MinLootGold`='3', `MaxLootGold`='24' WHERE `entry`='95'; -- Defias Smuggler (12MinG) (20MaxG) (sample size 60)
UPDATE `creature_template` SET `MinLootGold`='2' WHERE `entry`='97'; -- Riverpaw Runt (8MinG) (15MaxG) https://www.wowhead.com/tbc/npc=97/riverpaw-runt
UPDATE `creature_template` SET `MaxLootGold`='52' WHERE `entry`='98'; -- Riverpaw Taskmaster (21MinG) (32MaxG) https://www.wowhead.com/tbc/npc=98/riverpaw-taskmaster
UPDATE `creature_template` SET `MinLootGold`='4' WHERE `entry`='100'; -- Gruff Swiftbite (13MinG) (21MaxG) https://www.wowhead.com/tbc/npc=100/gruff-swiftbite 
UPDATE `creature_template` SET `MinLootGold`='4', `MaxLootGold`='34' WHERE `entry`='114'; -- Harvest Watcher (16MinG) (26MaxG) (sample size 88)
UPDATE `creature_template` SET `MaxLootGold`='42' WHERE `entry`='115'; -- Harvest Reaper (21MinG) (32MaxG) https://www.wowhead.com/tbc/npc=115/harvest-reaper
UPDATE `creature_template` SET `MinLootGold`='2', `MaxLootGold`='14' WHERE `entry`='116'; -- Defias Bandit (8MinG) (15MaxG) (sample size 48)
UPDATE `creature_template` SET `MinLootGold`='3', `MaxLootGold`='24' WHERE `entry`='117'; -- Riverpaw Gnoll (12MinG) (20MaxG) (sample size 26)
UPDATE `creature_template` SET `MinLootGold`='5', `MaxLootGold`='38' WHERE `entry`='121'; -- Defias Pathstalker (18MinG) (28MaxG) https://www.wowhead.com/tbc/npc=121/defias-pathstalker
UPDATE `creature_template` SET `MinLootGold`='8', `MaxLootGold`='54' WHERE `entry`='122'; -- Defias Highwayman (21MinG) (32MaxG) (sample size 48)
UPDATE `creature_template` SET `MinLootGold`='4', `MaxLootGold`='28' WHERE `entry`='123'; -- Riverpaw Mongrel (14MinG) (24MaxG) https://www.wowhead.com/tbc/npc=123/riverpaw-mongrel
UPDATE `creature_template` SET `MaxLootGold`='35' WHERE `entry`='124'; -- Riverpaw Brute (18MinG) (28MaxG) https://www.wowhead.com/tbc/npc=124/riverpaw-brute
UPDATE `creature_template` SET `MinLootGold`='3', `MaxLootGold`='25' WHERE `entry`='126'; -- Murloc Coastrunner (13MinG) (22MaxG) https://www.wowhead.com/tbc/npc=126/murloc-coastrunner
UPDATE `creature_template` SET `MinLootGold`='13', `MaxLootGold`='47' WHERE `entry`='127'; -- Murloc Tidehunter (21MinG) (32MaxG) https://www.wowhead.com/tbc/npc=127/murloc-tidehunter
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='128'; -- Angry Programmer Tweedle Dee (117MinG) (586MaxG) nonexistant
UPDATE `creature_template` SET `MinLootGold`='7', `MaxLootGold`='36' WHERE `entry`='171'; -- Murloc Warrior (17MinG) (27MaxG) https://www.wowhead.com/tbc/npc=171/murloc-warrior
UPDATE `creature_template` SET `MinLootGold`='19' WHERE `entry`='202'; -- Skeletal Horror (31MinG) (45MaxG) https://www.wowhead.com/tbc/npc=202/skeletal-horror
UPDATE `creature_template` SET `MaxLootGold`='63' WHERE `entry`='203'; -- Skeletal Mage (27MinG) (40MaxG) https://www.wowhead.com/tbc/npc=203/skeletal-mage
UPDATE `creature_template` SET `MinLootGold`='28', `MaxLootGold`='144' WHERE `entry`='205'; -- Nightbane Dark Runner (41MinG) (58MaxG) https://www.wowhead.com/tbc/npc=205/nightbane-dark-runner
UPDATE `creature_template` SET `MaxLootGold`='169' WHERE `entry`='206'; -- Nightbane Vile Fang (43MinG) (61MaxG) https://www.wowhead.com/tbc/npc=206/nightbane-vile-fang
UPDATE `creature_template` SET `MinLootGold`='22' WHERE `entry`='210'; -- Bone Chewer (37MinG) (53MaxG) https://www.wowhead.com/tbc/npc=210/bone-chewer
UPDATE `creature_template` SET `MaxLootGold`='143' WHERE `entry`='212'; -- Splinter Fist Warrior (43MinG) (61MaxG) https://www.wowhead.com/tbc/npc=212/splinter-fist-warrior
UPDATE `creature_template` SET `MaxLootGold`='110' WHERE `entry`='215'; -- Defias Night Runner (33MinG) (48MaxG) https://www.wowhead.com/tbc/npc=215/defias-night-runner
UPDATE `creature_template` SET `MaxLootGold`='75' WHERE `entry`='218'; -- Grave Robber (32MinG) (47MaxG) https://www.wowhead.com/tbc/npc=218/grave-robber
UPDATE `creature_template` SET `MinLootGold`='17', `MaxLootGold`='103' WHERE `entry`='232'; -- Farmer Ray (30MinG) (44MaxG) https://www.wowhead.com/tbc/npc=232/farmer-ray
UPDATE `creature_template` SET `MaxLootGold`='5' WHERE `entry`='257'; -- Kobold Worker (1MinG) (7MaxG) (sample size 64)
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='284'; -- Riding Horse (Brown) (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=284/riding-horse-brown
UPDATE `creature_template` SET `MinLootGold`='1' WHERE `entry`='285'; -- Murloc (5MinG) (12MaxG) (sample size 23)
UPDATE `creature_template` SET `MaxLootGold`='118' WHERE `entry`='300'; -- Zzarc' Vul (44MinG) (62MaxG) https://www.wowhead.com/tbc/npc=300/zzarc-vul
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='304'; -- Riding Horse (Felsteed) (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=304/riding-horse-felsteed
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='305'; -- Riding Horse (White Stallion) (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=305/riding-horse-white-stallion
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='306'; -- Riding Horse (Palomino) (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=306/riding-horse-palomino
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='307'; -- Riding Horse (Pinto) (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=307/riding-horse-pinto
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='308'; -- Riding Horse (Black Stallion) (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=308/riding-horse-black-stallion
UPDATE `creature_template` SET `MinLootGold`='75', `MaxLootGold`='374' WHERE `entry`='314'; -- Eliza (147MinG) (197MaxG) https://www.wowhead.com/tbc/npc=314/eliza
UPDATE `creature_template` SET `MinLootGold`='42', `MaxLootGold`='249' WHERE `entry`='315'; -- Stalvan Mistmantle (58MinG) (81MaxG) https://www.wowhead.com/tbc/npc=315/stalvan-mistmantle
UPDATE `creature_template` SET `MinLootGold`='2' WHERE `entry`='327'; -- Goldtooth (7MinG) (14MaxG) https://www.wowhead.com/tbc/npc=327/goldtooth
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='353'; -- Antonia Dart (1MinG) (774MaxG) https://www.wowhead.com/tbc/npc=353/antonia-dart
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='358'; -- Riding Wolf (Brown) (0MinG) (0MaxG) dummy
UPDATE `creature_template` SET `MaxLootGold`='141' WHERE `entry`='391'; -- Old Murk-Eye (27MinG) (40MaxG) https://www.wowhead.com/tbc/npc=391/old-murk-eye
UPDATE `creature_template` SET `MinLootGold`='192', `MaxLootGold`='1265' WHERE `entry`='412'; -- Stitches (567MinG) (745MaxG) https://www.wowhead.com/tbc/npc=412/stitches
UPDATE `creature_template` SET `MinLootGold`='8', `MaxLootGold`='58' WHERE `entry`='422'; -- Murloc Flesheater (22MinG) (33MaxG) https://www.wowhead.com/tbc/npc=422/murloc-flesheater
UPDATE `creature_template` SET `MinLootGold`='7', `MaxLootGold`='38' WHERE `entry`='423'; -- Redridge Mongrel (17MinG) (28MaxG) (sample size 21)
UPDATE `creature_template` SET `MinLootGold`='9', `MaxLootGold`='48' WHERE `entry`='424'; -- Redridge Poacher (19MinG) (29MaxG) https://www.wowhead.com/tbc/npc=424/redridge-poacher
UPDATE `creature_template` SET `MinLootGold`='7', `MaxLootGold`='52' WHERE `entry`='426'; -- Redridge Brute (20MinG) (32MaxG) (sample size 22)
UPDATE `creature_template` SET `MaxLootGold`='82' WHERE `entry`='429'; -- Shadowhide Darkweaver (33MinG) (48MaxG) https://www.wowhead.com/tbc/npc=429/shadowhide-darkweaver
UPDATE `creature_template` SET `MinLootGold`='8', `MaxLootGold`='59' WHERE `entry`='430'; -- Redridge Mystic (21MinG) (32MaxG) (sample size 21)
UPDATE `creature_template` SET `MinLootGold`='28', `MaxLootGold`='94' WHERE `entry`='431'; -- Shadowhide Slayer (37MinG) (53MaxG) https://www.wowhead.com/tbc/npc=431/shadowhide-slayer
UPDATE `creature_template` SET `MaxLootGold`='86' WHERE `entry`='432'; -- Shadowhide Brute (31MinG) (45MaxG) https://www.wowhead.com/tbc/npc=432/shadowhide-brute
UPDATE `creature_template` SET `MinLootGold`='14', `MaxLootGold`='86' WHERE `entry`='433'; -- Shadowhide Gnoll (29MinG) (43MaxG) https://www.wowhead.com/tbc/npc=433/shadowhide-gnoll
UPDATE `creature_template` SET `MinLootGold`='15', `MaxLootGold`='87' WHERE `entry`='434'; -- Rabid Shadowhide Gnoll (27MinG) (40MaxG) (sample size 37)
UPDATE `creature_template` SET `MinLootGold`='17', `MaxLootGold`='113' WHERE `entry`='435'; -- Blackrock Champion (33MinG) (48MaxG) (sample size 38)
UPDATE `creature_template` SET `MinLootGold`='17', `MaxLootGold`='79' WHERE `entry`='437'; -- Blackrock Renegade (27MinG) (40MaxG) https://www.wowhead.com/tbc/npc=437/blackrock-renegade
UPDATE `creature_template` SET `MinLootGold`='15', `MaxLootGold`='59' WHERE `entry`='440'; -- Blackrock Grunt (24MinG) (36MaxG) https://www.wowhead.com/tbc/npc=440/blackrock-grunt
UPDATE `creature_template` SET `MinLootGold`='7', `MaxLootGold`='54' WHERE `entry`='441'; -- Black Dragon Whelp (19MinG) (30MaxG) (sample size 26)
UPDATE `creature_template` SET `MinLootGold`='13' WHERE `entry`='446'; -- Redridge Basher (23MinG) (35MaxG) https://www.wowhead.com/tbc/npc=446/redridge-basher
UPDATE `creature_template` SET `MinLootGold`='24' WHERE `entry`='448'; -- Hogger (45MinG) (64MaxG) https://www.wowhead.com/tbc/npc=448/hogger
UPDATE `creature_template` SET `MinLootGold`='10', `MaxLootGold`='47' WHERE `entry`='449'; -- Defias Knuckleduster (19MinG) (30MaxG) https://www.wowhead.com/tbc/npc=449/defias-knuckleduster
UPDATE `creature_template` SET `MinLootGold`='6', `MaxLootGold`='48' WHERE `entry`='450'; -- Defias Renegade Mage (21MinG) (32MaxG) https://www.wowhead.com/tbc/npc=450/defias-renegade-mage
UPDATE `creature_template` SET `MaxLootGold`='48' WHERE `entry`='452'; -- Riverpaw Bandit (20MinG) (31MaxG) https://www.wowhead.com/tbc/npc=452/riverpaw-bandit
UPDATE `creature_template` SET `MinLootGold`='15' WHERE `entry`='453'; -- Riverpaw Mystic (22MinG) (34MaxG) https://www.wowhead.com/tbc/npc=453/riverpaw-mystic
UPDATE `creature_template` SET `MinLootGold`='8' WHERE `entry`='456'; -- Murloc Minor Oracle (14MinG) (24MaxG) https://www.wowhead.com/tbc/npc=456/murloc-minor-oracle
UPDATE `creature_template` SET `MinLootGold`='14', `MaxLootGold`='45' WHERE `entry`='458'; -- Murloc Hunter (19MinG) (30MaxG) https://www.wowhead.com/tbc/npc=458/murloc-hunter
UPDATE `creature_template` SET `MinLootGold`='5' WHERE `entry`='473'; -- Morgan the Collector (10MinG) (18MaxG) https://www.wowhead.com/tbc/npc=473/morgan-the-collector
UPDATE `creature_template` SET `MinLootGold`='1', `MaxLootGold`='873' WHERE `entry`='466'; -- General Marcus Jonathan (451MinG) (594MaxG) https://www.wowhead.com/tbc/npc=466/general-marcus-jonathan
UPDATE `creature_template` SET `MinLootGold`='2' WHERE `entry`='474'; -- Defias Rogue Wizard (10MinG) (17MaxG) https://www.wowhead.com/tbc/npc=474/defias-rogue-wizard
UPDATE `creature_template` SET `MinLootGold`='1', `MaxLootGold`='11' WHERE `entry`='475'; -- Kobold Tunneler (4MinG) (10MaxG) (sample size 87)
UPDATE `creature_template` SET `MinLootGold`='3' WHERE `entry`='476'; -- Kobold Geomancer (6MinG) (13MaxG) https://www.wowhead.com/tbc/npc=476/kobold-geomancer
UPDATE `creature_template` SET `MinLootGold`='2', `MaxLootGold`='15' WHERE `entry`='478'; -- Riverpaw Outrunner (10MinG) (18MaxG) (sample size 39)
UPDATE `creature_template` SET `MinLootGold`='2' WHERE `entry`='480'; -- Rusty Harvest Golem (10MinG) (18MaxG) https://www.wowhead.com/tbc/npc=480/rusty-harvest-golem
UPDATE `creature_template` SET `MinLootGold`='2' WHERE `entry`='481'; -- Defias Footpad (10MinG) (18MaxG) https://www.wowhead.com/tbc/npc=481/defias-footpad
UPDATE `creature_template` SET `MinLootGold`='14', `MaxLootGold`='70' WHERE `entry`='485'; -- Blackrock Outrunner (26MinG) (39MaxG) https://www.wowhead.com/tbc/npc=485/blackrock-outrunner
UPDATE `creature_template` SET `MinLootGold`='3', `MaxLootGold`='27' WHERE `entry`='500'; -- Riverpaw Scout (13MinG) (22MaxG) https://www.wowhead.com/tbc/npc=500/riverpaw-scout
UPDATE `creature_template` SET `MaxLootGold`='27' WHERE `entry`='501'; -- Riverpaw Herbalist (16MinG) (26MaxG) https://www.wowhead.com/tbc/npc=501/riverpaw-herbalist
UPDATE `creature_template` SET `MinLootGold`='7' WHERE `entry`='502'; -- Benny Blaanco (17MinG) (27MaxG) https://www.wowhead.com/tbc/npc=502/benny-blaanco
UPDATE `creature_template` SET `MaxLootGold`='110' WHERE `entry`='503'; -- Lord Malathrom (43MinG) (61MaxG) https://www.wowhead.com/tbc/npc=503/lord-malathrom
UPDATE `creature_template` SET `MinLootGold`='3', `MaxLootGold`='27' WHERE `entry`='504'; -- Defias Trapper (13MinG) (22MaxG) (sample size 55)
UPDATE `creature_template` SET `MinLootGold`='8' WHERE `entry`='506'; -- Sergeant Brashclaw (21MinG) (33MaxG) https://www.wowhead.com/tbc/npc=506/sergeant-brashclaw
UPDATE `creature_template` SET `MinLootGold`='8', `MaxLootGold`='27' WHERE `entry`='513'; -- Murloc Netter (16MinG) (26MaxG) https://www.wowhead.com/tbc/npc=513/murloc-netter
UPDATE `creature_template` SET `MinLootGold`='3', `MaxLootGold`='21' WHERE `entry`='515'; -- Murloc Raider (12MinG) (20MaxG) https://www.wowhead.com/tbc/npc=515/murloc-raider
UPDATE `creature_template` SET `MinLootGold`='10', `MaxLootGold`='53' WHERE `entry`='517'; -- Murloc Oracle (20MinG) (31MaxG) https://www.wowhead.com/tbc/npc=517/murloc-oracle
UPDATE `creature_template` SET `MinLootGold`='6' WHERE `entry`='519'; -- Slark (17MinG) (27MaxG) https://www.wowhead.com/tbc/npc=519/slark
UPDATE `creature_template` SET `MinLootGold`='21' WHERE `entry`='520'; -- Brack (23MinG) (35MaxG) https://www.wowhead.com/tbc/npc=520/brack
UPDATE `creature_template` SET `MinLootGold`='24', `MaxLootGold`='136' WHERE `entry`='533'; -- Nightbane Shadow Weaver (37MinG) (53MaxG) https://www.wowhead.com/tbc/npc=533/nightbane-shadow-weaver
UPDATE `creature_template` SET `MinLootGold`='12', `MaxLootGold`='72' WHERE `entry`='544'; -- Murloc Nightcrawler (28MinG) (41MaxG) https://www.wowhead.com/tbc/npc=544/murloc-nightcrawler
UPDATE `creature_template` SET `MinLootGold`='13', `MaxLootGold`='59' WHERE `entry`='545'; -- Murloc Tidecaller (23MinG) (35MaxG) https://www.wowhead.com/tbc/npc=545/murloc-tidecaller
UPDATE `creature_template` SET `MinLootGold`='7', `MaxLootGold`='52' WHERE `entry`='548'; -- Murloc Minor Tidecaller (20MinG) (30MaxG) https://www.wowhead.com/tbc/npc=545/murloc-tidecaller
UPDATE `creature_template` SET `MinLootGold`='19', `MaxLootGold`='95' WHERE `entry`='568'; -- Shadowhide Warrior (33MinG) (48MaxG) https://www.wowhead.com/tbc/npc=568/shadowhide-warrior
UPDATE `creature_template` SET `MaxLootGold`='106' WHERE `entry`='570'; -- Brain Eater (42MinG) (59MaxG) https://www.wowhead.com/tbc/npc=570/brain-eater
UPDATE `creature_template` SET `MinLootGold`='9' WHERE `entry`='572'; -- Leprithus (23MinG) (35MaxG) https://www.wowhead.com/tbc/npc=572/leprithus
UPDATE `creature_template` SET `MinLootGold`='10', `MaxLootGold`='64' WHERE `entry`='578'; -- Murloc Scout (24MinG) (36MaxG) https://www.wowhead.com/tbc/npc=578/murloc-scout
UPDATE `creature_template` SET `MaxLootGold`='48' WHERE `entry`='579'; -- Shadowhide Assassin (31MinG) (45MaxG) https://www.wowhead.com/tbc/npc=579/shadowhide-assassin
UPDATE `creature_template` SET `MaxLootGold`='69' WHERE `entry`='580'; -- Redridge Drudger (25MinG) (38MaxG) https://www.wowhead.com/tbc/npc=580/redridge-drudger
UPDATE `creature_template` SET `MinLootGold`='2', `MaxLootGold`='11' WHERE `entry`='583'; -- Defias Ambusher (9MinG) (16MaxG) https://www.wowhead.com/tbc/npc=583/defias-ambusher
UPDATE `creature_template` SET `MinLootGold`='33', `MaxLootGold`='127' WHERE `entry`='584'; -- Kazon (50MinG) (80MaxG) https://www.wowhead.com/tbc/npc=584/kazon
UPDATE `creature_template` SET `MinLootGold`='39', `MaxLootGold`='226' WHERE `entry`='587'; -- Bloodscalp Warrior (55MinG) (76MaxG) (sample size 50)
UPDATE `creature_template` SET `MaxLootGold`='199' WHERE `entry`='588'; -- Bloodscalp Scout (56MinG) (78MaxG) https://www.wowhead.com/tbc/npc=588/bloodscalp-scout
UPDATE `creature_template` SET `MinLootGold`='4', `MaxLootGold`='34' WHERE `entry`='589'; -- Defias Pillager (16MinG) (26MaxG) (sample size 40)
UPDATE `creature_template` SET `MinLootGold`='4', `MaxLootGold`='29' WHERE `entry`='590'; -- Defias Looter (15MinG) (25MaxG) (sample size 41)
UPDATE `creature_template` SET `MaxLootGold`='243' WHERE `entry`='595'; -- Bloodscalp Hunter (54MinG) (75MaxG) https://www.wowhead.com/tbc/npc=595/bloodscalp-hunter
UPDATE `creature_template` SET `MaxLootGold`='280' WHERE `entry`='597'; -- Bloodscalp Berserker (59MinG) (83MaxG) https://www.wowhead.com/tbc/npc=597/bloodscalp-berserker
UPDATE `creature_template` SET `MinLootGold`='7', `MaxLootGold`='54' WHERE `entry`='598'; -- Defias Miner (23MinG) (35MaxG) (sample size 48)
UPDATE `creature_template` SET `MaxLootGold`='128' WHERE `entry`='604'; -- Plague Spreader (40MinG) (57MaxG) https://www.wowhead.com/tbc/npc=604/plague-spreader
UPDATE `creature_template` SET `MinLootGold`='18', `MaxLootGold`='102' WHERE `entry`='615'; -- Blackrock Tracker (31MinG) (45MaxG) (sample size 21)
UPDATE `creature_template` SET `MinLootGold`='49' WHERE `entry`='619'; -- Defias Conjurer (62MinG) (86MaxG) https://www.wowhead.com/tbc/npc=619/defias-conjurer
UPDATE `creature_template` SET `MaxLootGold`='178' WHERE `entry`='622'; -- Goblin Engineer (87MinG) (119MaxG) https://www.wowhead.com/tbc/npc=622/goblin-engineer
UPDATE `creature_template` SET `MinLootGold`='26', `MaxLootGold`='158' WHERE `entry`='634'; -- Defias Overseer (77MinG) (105MaxG) https://www.wowhead.com/tbc/npc=634/defias-overseer
UPDATE `creature_template` SET `MinLootGold`='49' WHERE `entry`='636'; -- Defias Blackguard (89MinG) (121MaxG) https://www.wowhead.com/tbc/npc=636/defias-blackguard
UPDATE `creature_template` SET `MinLootGold`='51' WHERE `entry`='639'; -- Edwin VanCleef (318MinG) (421MaxG) https://www.wowhead.com/tbc/npc=639/edwin-vancleef
UPDATE `creature_template` SET `MinLootGold`='32', `MaxLootGold`='161' WHERE `entry`='641'; -- Goblin Woodcarver (87MinG) (119MaxG) https://www.wowhead.com/tbc/npc=641/goblin-woodcarver
UPDATE `creature_template` SET `MinLootGold`='159' WHERE `entry`='642'; -- Sneed's Shredder (197MinG) (262MaxG) https://www.wowhead.com/tbc/npc=642/sneeds-shredder
UPDATE `creature_template` SET `MinLootGold`='14', `MaxLootGold`='144' WHERE `entry`='643'; -- Sneed (137MinG) (184MaxG) https://www.wowhead.com/tbc/npc=643/sneeds-shredder
UPDATE `creature_template` SET `MinLootGold`='108' WHERE `entry`='644'; -- Rhahk'Zor (225MinG) (298MaxG) https://www.wowhead.com/tbc/npc=644/rhahkzor
UPDATE `creature_template` SET `MinLootGold`='58' WHERE `entry`='645'; -- Cookie (159MinG) (212MaxG) https://www.wowhead.com/tbc/npc=645/cookie
UPDATE `creature_template` SET `MinLootGold`='69' WHERE `entry`='646'; -- Mr. Smite (201MinG) (267MaxG) https://www.wowhead.com/tbc/npc=646/mr-smite
UPDATE `creature_template` SET `MinLootGold`='76' WHERE `entry`='647'; -- Captain Greenskin (159MinG) (212MaxG) https://www.wowhead.com/tbc/npc=647/captain-greenskin
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='648'; -- Bridge Worker Trent (1MinG) (5MaxG) https://www.wowhead.com/tbc/npc=648/bridge-worker-trent
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='649'; -- Bridge Worker Dmitri (2MinG) (11MaxG) https://www.wowhead.com/tbc/npc=649/bridge-worker-dmitri
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='650'; -- Bridge Worker Jess (1MinG) (6MaxG) https://www.wowhead.com/tbc/npc=650/bridge-worker-jess
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='651'; -- Bridge Worker Daniel (1MinG) (6MaxG) https://www.wowhead.com/tbc/npc=651/bridge-worker-daniel
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='652'; -- Bridge Worker Matthew (1MinG) (6MaxG) https://www.wowhead.com/tbc/npc=652/bridge-worker-matthew
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='653'; -- Bridge Worker Alex (1MinG) (6MaxG) https://www.wowhead.com/tbc/npc=653/bridge-worker-alex
UPDATE `creature_template` SET `MinLootGold`='44', `MaxLootGold`='196' WHERE `entry`='657'; -- Defias Pirate (93MinG) (126MaxG) (sample size 26)
UPDATE `creature_template` SET `MinLootGold`='43', `MaxLootGold`='289' WHERE `entry`='660'; -- Bloodscalp Witch Doctor (54MinG) (75MaxG) https://www.wowhead.com/tbc/npc=660/bloodscalp-witch-doctor
UPDATE `creature_template` SET `MinLootGold`='48', `MaxLootGold`='325' WHERE `entry`='667'; -- Skullsplitter Warrior (66MinG) (91MaxG) (sample size 39)
UPDATE `creature_template` SET `MaxLootGold`='374' WHERE `entry`='669'; -- Skullsplitter Hunter (76MinG) (105MaxG) https://www.wowhead.com/tbc/npc=669/skullsplitter-hunter
UPDATE `creature_template` SET `MinLootGold`='58', `MaxLootGold`='358' WHERE `entry`='670'; -- Skullsplitter Witch Doctor (68MinG) (94MaxG) https://www.wowhead.com/tbc/npc=670/skullsplitter-witch-doctor
UPDATE `creature_template` SET `MinLootGold`='41', `MaxLootGold`='281' WHERE `entry`='671'; -- Bloodscalp Headhunter (59MinG) (83MaxG) (sample size 31)
UPDATE `creature_template` SET `MaxLootGold`='448' WHERE `entry`='672'; -- Skullsplitter Spiritchaser (71MinG) (97MaxG) https://www.wowhead.com/tbc/npc=672/skullsplitter-spiritchaser
UPDATE `creature_template` SET `MinLootGold`='55', `MaxLootGold`='360' WHERE `entry`='674'; -- Venture Co. Strip Miner (71MinG) (98MaxG) (sample size 38)
UPDATE `creature_template` SET `MaxLootGold`='249' WHERE `entry`='675'; -- Venture Co. Foreman (75MinG) (103MaxG) https://www.wowhead.com/tbc/npc=675/venture-co-foreman
UPDATE `creature_template` SET `MaxLootGold`='340' WHERE `entry`='676'; -- Venture Co. Surveyor (66MinG) (91MaxG) https://www.wowhead.com/tbc/npc=676/venture-co-surveyor
UPDATE `creature_template` SET `MaxLootGold`='264' WHERE `entry`='677'; -- Venture Co. Tinkerer (61MinG) (84MaxG) https://www.wowhead.com/tbc/npc=677/venture-co-tinkerer
UPDATE `creature_template` SET `MaxLootGold`='230' WHERE `entry`='694'; -- Bloodscalp Axe Thrower (53MinG) (74MaxG) (sample size 38)
UPDATE `creature_template` SET `MinLootGold`='53', `MaxLootGold`='323' WHERE `entry`='696'; -- Skullsplitter Axe Thrower (66MinG) (91MaxG) (sample size 33)
UPDATE `creature_template` SET `MinLootGold`='33', `MaxLootGold`='229' WHERE `entry`='697'; -- Bloodscalp Shaman (51MinG) (71MaxG) (sample size 47)
UPDATE `creature_template` SET `MaxLootGold`='215' WHERE `entry`='699'; -- Bloodscalp Beastmaster (56MinG) (78MaxG) https://www.wowhead.com/tbc/npc=699/bloodscalp-beastmaster
UPDATE `creature_template` SET `MaxLootGold`='211' WHERE `entry`='701'; -- Bloodscalp Mystic (51MinG) (72MaxG) https://www.wowhead.com/tbc/npc=701/bloodscalp-mystic
UPDATE `creature_template` SET `MinLootGold`='45', `MaxLootGold`='183' WHERE `entry`='702'; -- Bloodscalp Scavenger (55MinG) (76MaxG) https://www.wowhead.com/tbc/npc=702/bloodscalp-scavenger
UPDATE `creature_template` SET `MaxLootGold`='5' WHERE `entry`='706'; -- Frostmane Troll Whelp (1MinG) (7MaxG) (sample size 67)
UPDATE `creature_template` SET `MinLootGold`='4' WHERE `entry`='712'; -- Redridge Thrasher (16MinG) (26MaxG) https://www.wowhead.com/tbc/npc=712/redridge-thrasher
UPDATE `creature_template` SET `MinLootGold`='91', `MaxLootGold`='652' WHERE `entry`='723'; -- Mosh'Ogg Butcher (466MinG) (614MaxG) https://www.wowhead.com/tbc/npc=723/moshogg-butcher
UPDATE `creature_template` SET `MinLootGold`='2', `MaxLootGold`='15' WHERE `entry`='732'; -- Murloc Lurker (9MinG) (17MaxG) (sample size 39)
UPDATE `creature_template` SET `MinLootGold`='4' WHERE `entry`='735'; -- Murloc Streamrunner (5MinG) (12MaxG) https://www.wowhead.com/tbc/npc=735/murloc-streamrunner
UPDATE `creature_template` SET `MinLootGold`='42', `MaxLootGold`='239' WHERE `entry`='740'; -- Adolescent Whelp (47MinG) (66MaxG) (sample size 36)
UPDATE `creature_template` SET `MinLootGold`='45', `MaxLootGold`='264' WHERE `entry`='741'; -- Dreaming Whelp (50MinG) (70MaxG) (sample size 40)
UPDATE `creature_template` SET `MinLootGold`='76', `MaxLootGold`='364' WHERE `entry`='742'; -- Green Wyrmkin (76MinG) (105MaxG) https://www.wowhead.com/tbc/npc=742/green-wyrmkin
UPDATE `creature_template` SET `MinLootGold`='69', `MaxLootGold`='383' WHERE `entry`='743'; -- Wyrmkin Dreamwalker (69MinG) (95MaxG) https://www.wowhead.com/tbc/npc=743/wyrmkin-dreamwalker
UPDATE `creature_template` SET `MinLootGold`='75', `MaxLootGold`='383' WHERE `entry`='744'; -- Green Scalebane (75MinG) (103MaxG) https://www.wowhead.com/tbc/npc=744/green-scalebane
UPDATE `creature_template` SET `MinLootGold`='78', `MaxLootGold`='391' WHERE `entry`='745'; -- Scalebane Captain (78MinG) (107MaxG) https://www.wowhead.com/tbc/npc=745/scalebane-captain
UPDATE `creature_template` SET `MinLootGold`='84', `MaxLootGold`='406' WHERE `entry`='746'; -- Elder Dragonkin (84MinG) (115MaxG) https://www.wowhead.com/tbc/npc=746/elder-dragonkin
UPDATE `creature_template` SET `MinLootGold`='54', `MaxLootGold`='346' WHERE `entry`='747'; -- Marsh Murloc (74MinG) (102MaxG) (sample size 22)
UPDATE `creature_template` SET `MinLootGold`='59', `MaxLootGold`='404' WHERE `entry`='750'; -- Marsh Inkspewer (75MinG) (103MaxG) (sample size 87)
UPDATE `creature_template` SET `MinLootGold`='63', `MaxLootGold`='421' WHERE `entry`='751'; -- Marsh Flesheater (78MinG) (107MaxG) (sample size 95)
UPDATE `creature_template` SET `MinLootGold`='86', `MaxLootGold`='453' WHERE `entry`='752'; -- Marsh Oracle (73MinG) (100MaxG) (sample size 34)
UPDATE `creature_template` SET `MaxLootGold`='145' WHERE `entry`='754'; -- Rebel Watchman (59MinG) (83MaxG) https://www.wowhead.com/tbc/npc=754/rebel-watchman
UPDATE `creature_template` SET `MaxLootGold`='228' WHERE `entry`='755'; -- Lost One Mudlurker (75MinG) (103MaxG) https://www.wowhead.com/tbc/npc=755/lost-one-mudlurker
UPDATE `creature_template` SET `MinLootGold`='51', `MaxLootGold`='254' WHERE `entry`='757'; -- Lost One Fisherman (61MinG) (84MaxG) https://www.wowhead.com/tbc/npc=757/lost-one-fisherman
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='758'; -- Skullsplitter Tiger (1MinG) (3MaxG) https://www.wowhead.com/tbc/npc=758/skullsplitter-tiger
UPDATE `creature_template` SET `MinLootGold`='45', `MaxLootGold`='276' WHERE `entry`='759'; -- Lost One Hunter (59MinG) (83MaxG) https://www.wowhead.com/tbc/npc=759/lost-one-hunter
UPDATE `creature_template` SET `MinLootGold`='40', `MaxLootGold`='275' WHERE `entry`='760'; -- Lost One Muckdweller (59MinG) (83MaxG) (sample size 22)
UPDATE `creature_template` SET `MaxLootGold`='252' WHERE `entry`='761'; -- Lost One Seer (56MinG) (78MaxG) https://www.wowhead.com/tbc/npc=761/lost-one-seer
UPDATE `creature_template` SET `MinLootGold`='50', `MaxLootGold`='298' WHERE `entry`='762'; -- Lost One Riftseeker (52MinG) (73MaxG) https://www.wowhead.com/tbc/npc=762/lost-one-riftseeker
UPDATE `creature_template` SET `MaxLootGold`='243' WHERE `entry`='763'; -- Lost One Chieftain (64MinG) (89MaxG) https://www.wowhead.com/tbc/npc=763/lost-one-chieftain
UPDATE `creature_template` SET `MaxLootGold`='294' WHERE `entry`='764'; -- Swampwalker (59MinG) (82MaxG) https://www.wowhead.com/tbc/npc=764/swampwalker
UPDATE `creature_template` SET `MaxLootGold`='332' WHERE `entry`='765'; -- Swampwalker Elder (60MinG) (83MaxG) https://www.wowhead.com/tbc/npc=765/swampwalker-elder
UPDATE `creature_template` SET `MinLootGold`='54', `MaxLootGold`='241' WHERE `entry`='766'; -- Tangled Horror (63MinG) (87MaxG) https://www.wowhead.com/tbc/npc=766/tangled-horror
UPDATE `creature_template` SET `MaxLootGold`='155' WHERE `entry`='771'; -- Commander Felstrom (50MinG) (70MaxG) https://www.wowhead.com/tbc/npc=771/commander-felstrom
UPDATE `creature_template` SET `MinLootGold`='29', `MaxLootGold`='176' WHERE `entry`='775'; -- Kurzen's Agent (50MinG) (70MaxG) https://www.wowhead.com/tbc/npc=775/kurzens-agent
UPDATE `creature_template` SET `MinLootGold`='50', `MaxLootGold`='337' WHERE `entry`='780'; -- Skullsplitter Mystic (60MinG) (83MaxG) (sample size 32)
UPDATE `creature_template` SET `MaxLootGold`='388' WHERE `entry`='781'; -- Skullsplitter Headhunter (78MinG) (107MaxG) https://www.wowhead.com/tbc/npc=781/skullsplitter-headhunter
UPDATE `creature_template` SET `MinLootGold`='61', `MaxLootGold`='375' WHERE `entry`='782'; -- Skullsplitter Scout (76MinG) (105MaxG) (sample size 21)
UPDATE `creature_template` SET `MinLootGold`='75', `MaxLootGold`='393' WHERE `entry`='783'; -- Skullsplitter Berserker (78MinG) (107MaxG) https://www.wowhead.com/tbc/npc=783/skullsplitter-berserker
UPDATE `creature_template` SET `MaxLootGold`='324' WHERE `entry`='784'; -- Skullsplitter Beastmaster (76MinG) (105MaxG) https://www.wowhead.com/tbc/npc=784/skullsplitter-beastmaster
UPDATE `creature_template` SET `MinLootGold`='35', `MaxLootGold`='100' WHERE `entry`='785'; -- Skeletal Warder (39MinG) (55MaxG) https://www.wowhead.com/tbc/npc=785/skeletal-warder
UPDATE `creature_template` SET `MaxLootGold`='99' WHERE `entry`='787'; -- Skeletal Healer (35MinG) (50MaxG) https://www.wowhead.com/tbc/npc=787/skeletal-healer
UPDATE `creature_template` SET `MinLootGold`='46' WHERE `entry`='814'; -- Sergeant Malthus (57MinG) (79MaxG) https://www.wowhead.com/tbc/npc=814/sergeant-malthus
UPDATE `creature_template` SET `MinLootGold`='29' WHERE `entry`='815'; -- Bookie Herod (68MinG) (145MaxG) https://www.wowhead.com/tbc/npc=815/bookie-herod
UPDATE `creature_template` SET `MinLootGold`='4', `MaxLootGold`='21' WHERE `entry`='846'; -- Rotten Ghoul (19MinG) (29MaxG) https://www.wowhead.com/tbc/npc=846/rotten-ghoul
UPDATE `creature_template` SET `MaxLootGold`='264' WHERE `entry`='861'; -- Stonard Scout (70MinG) (96MaxG) https://www.wowhead.com/tbc/npc=861/stonard-scout
UPDATE `creature_template` SET `MaxLootGold`='215' WHERE `entry`='862'; -- Stonard Explorer (62MinG) (86MaxG) https://www.wowhead.com/tbc/npc=862/stonard-explorer
UPDATE `creature_template` SET `MaxLootGold`='399' WHERE `entry`='867'; -- Stonard Cartographer (105MinG) (142MaxG) https://www.wowhead.com/tbc/npc=867/stonard-cartographer
UPDATE `creature_template` SET `MinLootGold`='3' WHERE `entry`='880'; -- Erlan Drudgemoor (7MinG) (14MaxG) https://www.wowhead.com/tbc/npc=880/erlan-drudgemoor
UPDATE `creature_template` SET `MaxLootGold`='59' WHERE `entry`='889'; -- Splinter Fist Ogre (36MinG) (52MaxG) https://www.wowhead.com/tbc/npc=889/splinter-fist-ogre
UPDATE `creature_template` SET `MinLootGold`='22' WHERE `entry`='892'; -- Splinter Fist Taskmaster (39MinG) (56MaxG) https://www.wowhead.com/tbc/npc=892/splinter-fist-taskmaster
UPDATE `creature_template` SET `MinLootGold`='26', `MaxLootGold`='79' WHERE `entry`='909'; -- Defias Night Blade (35MinG) (51MaxG) https://www.wowhead.com/tbc/npc=909/defias-night-blade
UPDATE `creature_template` SET `MinLootGold`='21', `MaxLootGold`='126' WHERE `entry`='910'; -- Defias Enchanter (33MinG) (48MaxG) https://www.wowhead.com/tbc/npc=910/defias-enchanter
UPDATE `creature_template` SET `MinLootGold`='26', `MaxLootGold`='180' WHERE `entry`='920'; -- Nightbane Tainted One (42MinG) (60MaxG) https://www.wowhead.com/tbc/npc=920/nightbane-tainted-one
UPDATE `creature_template` SET `MinLootGold`='42', `MaxLootGold`='219' WHERE `entry`='921'; -- Venture Co. Lumberjack (54MinG) (75MaxG) https://www.wowhead.com/tbc/npc=921/venture-co-lumberjack
UPDATE `creature_template` SET `MinLootGold`='34', `MaxLootGold`='189' WHERE `entry`='937'; -- Kurzen Jungle Fighter (50MinG) (70MaxG) (sample size 35)
UPDATE `creature_template` SET `MinLootGold`='36', `MaxLootGold`='242' WHERE `entry`='938'; -- Kurzen Commando (54MinG) (75MaxG) (sample size 54)
UPDATE `creature_template` SET `MinLootGold`='45', `MaxLootGold`='281' WHERE `entry`='939'; -- Kurzen Elite (59MinG) (83MaxG) (sample size 25)
UPDATE `creature_template` SET `MinLootGold`='42', `MaxLootGold`='195' WHERE `entry`='940'; -- Kurzen Medicine Man (46MinG) (65MaxG) (sample size 25)
UPDATE `creature_template` SET `MinLootGold`='41', `MaxLootGold`='246' WHERE `entry`='941'; -- Kurzen Headshrinker (49MinG) (69MaxG) (sample size 37)
UPDATE `creature_template` SET `MinLootGold`='42', `MaxLootGold`='268' WHERE `entry`='942'; -- Kurzen Witch Doctor (53MinG) (74MaxG) https://www.wowhead.com/tbc/npc=942/kurzen-witch-doctor
UPDATE `creature_template` SET `MaxLootGold`='130' WHERE `entry`='947'; -- Rohh the Silent (36MinG) (52MaxG) https://www.wowhead.com/tbc/npc=947/rohh-the-silent
UPDATE `creature_template` SET `MaxLootGold`='51' WHERE `entry`='948'; -- Rotted One (35MinG) (50MaxG) https://www.wowhead.com/tbc/npc=948/rotted-one
UPDATE `creature_template` SET `MaxLootGold`='640' WHERE `entry`='950'; -- Swamp Talker (103MinG) (140MaxG) https://www.wowhead.com/tbc/npc=950/swamp-talker
UPDATE `creature_template` SET `MinLootGold`='52', `MaxLootGold`='318' WHERE `entry`='978'; -- Kurzen Subchief (57MinG) (79MaxG) (sample size 36)
UPDATE `creature_template` SET `MaxLootGold`='249' WHERE `entry`='979'; -- Kurzen Shadow Hunter (65MinG) (90MaxG) https://www.wowhead.com/tbc/npc=979/kurzen-shadow-hunter
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='1000'; -- Watcher Blomberg (0MinG) (0MaxG) Guard
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='1001'; -- Watcher Hutchins (0MinG) (0MaxG) Guard
UPDATE `creature_template` SET `MinLootGold`='10', `MaxLootGold`='69' WHERE `entry`='1007'; -- Mosshide Gnoll (25MinG) (38MaxG) (sample size 25)
UPDATE `creature_template` SET `MinLootGold`='16', `MaxLootGold`='75' WHERE `entry`='1008'; -- Mosshide Mongrel (27MinG) (40MaxG) (sample size 25)
UPDATE `creature_template` SET `MaxLootGold`='67' WHERE `entry`='1009'; -- Mosshide Mistweaver (27MinG) (40MaxG) https://www.wowhead.com/tbc/npc=1009/mosshide-mistweaver
UPDATE `creature_template` SET `MinLootGold`='18', `MaxLootGold`='86' WHERE `entry`='1010'; -- Mosshide Fenrunner (29MinG) (42MaxG) https://www.wowhead.com/tbc/npc=1010/mosshide-fenrunner
UPDATE `creature_template` SET `MinLootGold`='15', `MaxLootGold`='99' WHERE `entry`='1011'; -- Mosshide Trapper (31MinG) (45MaxG) https://www.wowhead.com/tbc/npc=1011/mosshide-trapper
UPDATE `creature_template` SET `MinLootGold`='32', `MaxLootGold`='163' WHERE `entry`='1012'; -- Mosshide Brute (33MinG) (48MaxG) https://www.wowhead.com/tbc/npc=1012/mosshide-brute
UPDATE `creature_template` SET `MaxLootGold`='110' WHERE `entry`='1013'; -- Mosshide Mystic (34MinG) (49MaxG) https://www.wowhead.com/tbc/npc=1013/mosshide-mystic
UPDATE `creature_template` SET `MaxLootGold`='125' WHERE `entry`='1014'; -- Mosshide Alpha (39MinG) (56MaxG) https://www.wowhead.com/tbc/npc=1014/mosshide-alpha
UPDATE `creature_template` SET `MinLootGold`='10', `MaxLootGold`='71' WHERE `entry`='1024'; -- Bluegill Murloc (25MinG) (38MaxG) (sample size 35)
UPDATE `creature_template` SET `MinLootGold`='15', `MaxLootGold`='86' WHERE `entry`='1025'; -- Bluegill Puddlejumper (27MinG) (40MaxG) https://www.wowhead.com/tbc/npc=1025/bluegill-puddlejumper
UPDATE `creature_template` SET `MaxLootGold`='76' WHERE `entry`='1026'; -- Bluegill Forager (29MinG) (43MaxG) https://www.wowhead.com/tbc/npc=1026/bluegill-forager
UPDATE `creature_template` SET `MaxLootGold`='133' WHERE `entry`='1027'; -- Bluegill Warrior (33MinG) (48MaxG) https://www.wowhead.com/tbc/npc=1027/bluegill-warrior
UPDATE `creature_template` SET `MinLootGold`='18' WHERE `entry`='1028'; -- Bluegill Muckdweller (28MinG) (42MaxG) https://www.wowhead.com/tbc/npc=1028/bluegill-muckdweller
UPDATE `creature_template` SET `MinLootGold`='14' WHERE `entry`='1030'; -- Black Slime (26MinG) (38MaxG) https://www.wowhead.com/tbc/npc=1030/black-slime
UPDATE `creature_template` SET `MinLootGold`='10' WHERE `entry`='1031'; -- Crimson Ooze (33MinG) (48MaxG) https://www.wowhead.com/tbc/npc=1031/crimson-ooze
UPDATE `creature_template` SET `MinLootGold`='6', `MaxLootGold`='38' WHERE `entry`='1032'; -- Black Ooze (31MinG) (45MaxG) (sample size 31)
UPDATE `creature_template` SET `MinLootGold`='23', `MaxLootGold`='133' WHERE `entry`='1034'; -- Dragonmaw Raider (37MinG) (53MaxG) (sample size 42)
UPDATE `creature_template` SET `MaxLootGold`='113' WHERE `entry`='1035'; -- Dragonmaw Swamprunner (40MinG) (57MaxG) https://www.wowhead.com/tbc/npc=1035/dragonmaw-swamprunner
UPDATE `creature_template` SET `MinLootGold`='28', `MaxLootGold`='145' WHERE `entry`='1036'; -- Dragonmaw Centurion (42MinG) (59MaxG) https://www.wowhead.com/tbc/npc=1036/dragonmaw-centurion
UPDATE `creature_template` SET `MinLootGold`='34', `MaxLootGold`='148' WHERE `entry`='1038'; -- Dragonmaw Shadowwarder (37MinG) (53MaxG) https://www.wowhead.com/tbc/npc=1038/dragonmaw-shadowwarder
UPDATE `creature_template` SET `MaxLootGold`='43' WHERE `entry`='1039'; -- Fen Dweller (26MinG) (38MaxG) https://www.wowhead.com/tbc/npc=1039/fen-dweller
UPDATE `creature_template` SET `MinLootGold`='32', `MaxLootGold`='164' WHERE `entry`='1040'; -- Fen Creeper (33MinG) (48MaxG) https://www.wowhead.com/tbc/npc=1040/fen-creeper
UPDATE `creature_template` SET `MinLootGold`='20' WHERE `entry`='1042'; -- Red Whelp (31MinG) (45MaxG) https://www.wowhead.com/tbc/npc=1042/red-whelp
UPDATE `creature_template` SET `MinLootGold`='72', `MaxLootGold`='423' WHERE `entry`='1051'; -- Dark Iron Dwarf (153MinG) (205MaxG) https://www.wowhead.com/tbc/npc=1051/dark-iron-dwarf
UPDATE `creature_template` SET `MinLootGold`='147', `MaxLootGold`='455' WHERE `entry`='1052'; -- Dark Iron Saboteur (159MinG) (213MaxG) https://www.wowhead.com/tbc/npc=1052/dark-iron-saboteur
UPDATE `creature_template` SET `MinLootGold`='119', `MaxLootGold`='496' WHERE `entry`='1053'; -- Dark Iron Tunneler (170MinG) (226MaxG) https://www.wowhead.com/tbc/npc=1053/dark-iron-tunneler
UPDATE `creature_template` SET `MaxLootGold`='308' WHERE `entry`='1054'; -- Dark Iron Demolitionist (176MinG) (234MaxG) https://www.wowhead.com/tbc/npc=1054/dark-iron-demolitionist
UPDATE `creature_template` SET `MinLootGold`='20', `MaxLootGold`='145' WHERE `entry`='1057'; -- Dragonmaw Bonewarder (35MinG) (50MaxG) https://www.wowhead.com/tbc/npc=1057/dragonmaw-bonewarder
UPDATE `creature_template` SET `MaxLootGold`='438' WHERE `entry`='1059'; -- Ana'thek the Cruel (84MinG) (115MaxG) https://www.wowhead.com/tbc/npc=1059/anathek-the-cruel
UPDATE `creature_template` SET `MinLootGold`='236' WHERE `entry`='1060'; -- Mogh the Undying (259MinG) (343MaxG) https://www.wowhead.com/tbc/npc=1060/mogh-the-undying
UPDATE `creature_template` SET `MinLootGold`='62', `MaxLootGold`='189' WHERE `entry`='1061'; -- Gan'zulah (74MinG) (102MaxG) https://www.wowhead.com/tbc/npc=1061/ganzulah
UPDATE `creature_template` SET `MinLootGold`='56', `MaxLootGold`='337' WHERE `entry`='1062'; -- Nezzliok the Dire (61MinG) (84MaxG) https://www.wowhead.com/tbc/npc=1062/nezzliok-the-dire
UPDATE `creature_template` SET `MinLootGold`='96', `MaxLootGold`='707' WHERE `entry`='1063'; -- Jade (538MinG) (707MaxG) https://www.wowhead.com/tbc/npc=1063/jade
UPDATE `creature_template` SET `MinLootGold`='6' WHERE `entry`='1065'; -- Riverpaw Shaman (13MinG) (22MaxG) https://www.wowhead.com/tbc/npc=1065/riverpaw-shaman
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='1066'; -- Mottled Riptooth (31MinG) (154MaxG) https://www.wowhead.com/tbc/npc=1066/mottled-riptooth
UPDATE `creature_template` SET `MaxLootGold`='171' WHERE `entry`='1081'; -- Mire Lord (86MinG) (117MaxG) https://www.wowhead.com/tbc/npc=1081/mire-lord
UPDATE `creature_template` SET `MinLootGold`='8', `MaxLootGold`='37' WHERE `entry`='1083'; -- Murloc Shorestriker (19MinG) (30MaxG) https://www.wowhead.com/tbc/npc=1083/murloc-shorestriker
UPDATE `creature_template` SET `MaxLootGold`='208' WHERE `entry`='1094'; -- Venture Co. Miner (54MinG) (75MaxG) https://www.wowhead.com/tbc/npc=1094/venture-co-miner
UPDATE `creature_template` SET `MaxLootGold`='175' WHERE `entry`='1095'; -- Venture Co. Workboss (59MinG) (83MaxG) https://www.wowhead.com/tbc/npc=1095/venture-co-workboss
UPDATE `creature_template` SET `MinLootGold`='50', `MaxLootGold`='263' WHERE `entry`='1096'; -- Venture Co. Geologist (52MinG) (73MaxG) (sample size 39)
UPDATE `creature_template` SET `MinLootGold`='44', `MaxLootGold`='229' WHERE `entry`='1097'; -- Venture Co. Mechanic (56MinG) (78MaxG) https://www.wowhead.com/tbc/npc=1097/venture-co-mechanic
UPDATE `creature_template` SET `MaxLootGold`='152' WHERE `entry`='1106'; -- Lost One Cook (58MinG) (81MaxG) https://www.wowhead.com/tbc/npc=1106/lost-one-cook
UPDATE `creature_template` SET `MinLootGold`='2', `MaxLootGold`='14' WHERE `entry`='1115'; -- Rockjaw Skullthumper (8MinG) (15MaxG) (sample size 29)
UPDATE `creature_template` SET `MinLootGold`='2' WHERE `entry`='1116'; -- Rockjaw Ambusher (9MinG) (17MaxG) https://www.wowhead.com/tbc/npc=1116/rockjaw-ambusher
UPDATE `creature_template` SET `MinLootGold`='3' WHERE `entry`='1117'; -- Rockjaw Bonesnapper (10MinG) (17MaxG) (sample size 22)
UPDATE `creature_template` SET `MinLootGold`='7' WHERE `entry`='1118'; -- Rockjaw Backbreaker (13MinG) (22MaxG) https://www.wowhead.com/tbc/npc=1118/rockjaw-backbreaker
UPDATE `creature_template` SET `MinLootGold`='1' WHERE `entry`='1120'; -- Frostmane Troll (7MinG) (14MaxG) https://www.wowhead.com/tbc/npc=1120/frostmane-troll
UPDATE `creature_template` SET `MinLootGold`='1' WHERE `entry`='1121'; -- Frostmane Snowstrider (12MinG) (20MaxG)https://www.wowhead.com/tbc/npc=1121/frostmane-snowstrider
UPDATE `creature_template` SET `MinLootGold`='3' WHERE `entry`='1122'; -- Frostmane Hideskinner (9MinG) (17MaxG)https://www.wowhead.com/tbc/npc=1122/frostmane-hideskinner
UPDATE `creature_template` SET `MinLootGold`='4' WHERE `entry`='1123'; -- Frostmane Headhunter (8MinG) (15MaxG)https://www.wowhead.com/tbc/npc=1123/frostmane-headhunter
UPDATE `creature_template` SET `MinLootGold`='1' WHERE `entry`='1134'; -- Young Wendigo (4MinG) (10MaxG) https://www.wowhead.com/tbc/npc=1134/young-wendigo
UPDATE `creature_template` SET `MinLootGold`='1', `MaxLootGold`='12' WHERE `entry`='1135'; -- Wendigo (6MinG) (13MaxG) (sample size 24)
UPDATE `creature_template` SET `MinLootGold`='44', `MaxLootGold`='275' WHERE `entry`='1142'; -- Mosh'Ogg Brute (62MinG) (85MaxG) (sample size 21)
UPDATE `creature_template` SET `MaxLootGold`='272' WHERE `entry`='1144'; -- Mosh'Ogg Witch Doctor (53MinG) (74MaxG) https://www.wowhead.com/tbc/npc=1144/moshogg-witch-doctor
UPDATE `creature_template` SET `MinLootGold`='19', `MaxLootGold`='132' WHERE `entry`='1157'; -- Cursed Sailor (37MinG) (53MaxG) (sample size 35)
UPDATE `creature_template` SET `MinLootGold`='24', `MaxLootGold`='130' WHERE `entry`='1158'; -- Cursed Marine (39MinG) (56MaxG) (sample size 21)
UPDATE `creature_template` SET `MaxLootGold`='145' WHERE `entry`='1159'; -- First Mate Snellig (42MinG) (60MaxG) https://www.wowhead.com/tbc/npc=1159/first-mate-snellig
UPDATE `creature_template` SET `MinLootGold`='27', `MaxLootGold`='165' WHERE `entry`='1160'; -- Captain Halyndor (44MinG) (62MaxG) https://www.wowhead.com/tbc/npc=1160/captain-halyndor
UPDATE `creature_template` SET `MinLootGold`='3', `MaxLootGold`='24' WHERE `entry`='1161'; -- Stonesplinter Trogg (12MinG) (20MaxG) (sample size 117)
UPDATE `creature_template` SET `MinLootGold`='3', `MaxLootGold`='24' WHERE `entry`='1162'; -- Stonesplinter Scout (12MinG) (20MaxG) (sample size 142)
UPDATE `creature_template` SET `MinLootGold`='5', `MaxLootGold`='29' WHERE `entry`='1163'; -- Stonesplinter Skullthumper (15MinG) (24MaxG) (sample size 92)
UPDATE `creature_template` SET `MinLootGold`='5', `MaxLootGold`='38' WHERE `entry`='1164'; -- Stonesplinter Bonesnapper (17MinG) (27MaxG) (sample size 61)
UPDATE `creature_template` SET `MinLootGold`='7', `MaxLootGold`='54' WHERE `entry`='1165'; -- Stonesplinter Geomancer (20MinG) (30MaxG) (sample size 23)
UPDATE `creature_template` SET `MinLootGold`='4', `MaxLootGold`='29' WHERE `entry`='1166'; -- Stonesplinter Seer (14MinG) (23MaxG) (sample size 68)
UPDATE `creature_template` SET `MinLootGold`='8', `MaxLootGold`='60' WHERE `entry`='1167'; -- Stonesplinter Digger (22MinG) (33MaxG) (sample size 21)
UPDATE `creature_template` SET `MinLootGold`='14', `MaxLootGold`='60' WHERE `entry`='1169'; -- Dark Iron Insurgent (22MinG) (34MaxG) https://www.wowhead.com/tbc/npc=1169/dark-iron-insurgent
UPDATE `creature_template` SET `MinLootGold`='3', `MaxLootGold`='17' WHERE `entry`='1172'; -- Tunnel Rat Vermin (10MinG) (18MaxG) (sample size 28)
UPDATE `creature_template` SET `MinLootGold`='2' WHERE `entry`='1173'; -- Tunnel Rat Scout (10MinG) (18MaxG) https://www.wowhead.com/tbc/npc=1173/tunnel-rat-scout
UPDATE `creature_template` SET `MinLootGold`='3', `MaxLootGold`='25' WHERE `entry`='1174'; -- Tunnel Rat Geomancer (12MinG) (21MaxG) https://www.wowhead.com/tbc/npc=1174/tunnel-rat-geomancer
UPDATE `creature_template` SET `MinLootGold`='4', `MaxLootGold`='27' WHERE `entry`='1175'; -- Tunnel Rat Digger (13MinG) (22MaxG) https://www.wowhead.com/tbc/npc=1175/tunnel-rat-digger
UPDATE `creature_template` SET `MinLootGold`='7' WHERE `entry`='1176'; -- Tunnel Rat Forager (12MinG) (20MaxG) https://www.wowhead.com/tbc/npc=1176/tunnel-rat-forager
UPDATE `creature_template` SET `MinLootGold`='34' WHERE `entry`='1178'; -- Mo'grosh Ogre (83MinG) (113MaxG) https://www.wowhead.com/tbc/npc=1178/mogrosh-ogre
UPDATE `creature_template` SET `MaxLootGold`='169' WHERE `entry`='1179'; -- Mo'grosh Enforcer (79MinG) (108MaxG) https://www.wowhead.com/tbc/npc=1179/mogrosh-enforcer
UPDATE `creature_template` SET `MinLootGold`='56' WHERE `entry`='1180'; -- Mo'grosh Brute (89MinG) (121MaxG) https://www.wowhead.com/tbc/npc=1180/mogrosh-brute
UPDATE `creature_template` SET `MinLootGold`='13' WHERE `entry`='1181'; -- Mo'grosh Shaman (79MinG) (108MaxG) https://www.wowhead.com/tbc/npc=1181/mogrosh-shaman
UPDATE `creature_template` SET `MinLootGold`='5', `MaxLootGold`='37' WHERE `entry`='1197'; -- Stonesplinter Shaman (17MinG) (27MaxG) (sample size 39)
UPDATE `creature_template` SET `MinLootGold`='8' WHERE `entry`='1202'; -- Tunnel Rat Kobold (12MinG) (20MaxG) https://www.wowhead.com/tbc/npc=1202/tunnel-rat-kobold
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='1203'; -- Watcher Sarys (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=1203/watcher-sarys
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='1204'; -- Watcher Corwin (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=1204/watcher-corwin
UPDATE `creature_template` SET `MinLootGold`='19' WHERE `entry`='1205'; -- Grawmug (20MinG) (31MaxG) https://www.wowhead.com/tbc/npc=1205/grawmug
UPDATE `creature_template` SET `MaxLootGold`='37' WHERE `entry`='1206'; -- Gnasher (18MinG) (29MaxG) https://www.wowhead.com/tbc/npc=1206/gnasher
UPDATE `creature_template` SET `MinLootGold`='13', `MaxLootGold`='46' WHERE `entry`='1207'; -- Brawler (18MinG) (29MaxG) https://www.wowhead.com/tbc/npc=1207/brawler
UPDATE `creature_template` SET `MinLootGold`='57' WHERE `entry`='1210'; -- Chok'sul (111MinG) (150MaxG) https://www.wowhead.com/tbc/npc=1210/choksul
UPDATE `creature_template` SET `MinLootGold`='2', `MaxLootGold`='14' WHERE `entry`='1211'; -- Leper Gnome (9MinG) (17MaxG) (sample size 54)
UPDATE `creature_template` SET `MaxLootGold`='50' WHERE `entry`='1222'; -- Dark Iron Sapper (20MinG) (31MaxG) https://www.wowhead.com/tbc/npc=1222/dark-iron-sapper
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='1233'; -- [UNUSED] Shaethis Darkoak (1MinG) (774MaxG) Dummy
UPDATE `creature_template` SET `MinLootGold`='4' WHERE `entry`='1236'; -- Kobold Digger (13MinG) (22MaxG) https://www.wowhead.com/tbc/npc=1236/kobold-digger
UPDATE `creature_template` SET `MaxLootGold`='56' WHERE `entry`='1251'; -- Splinter Fist Firemonger (37MinG) (54MaxG) https://www.wowhead.com/tbc/npc=1251/splinter-fist-firemonger
UPDATE `creature_template` SET `MaxLootGold`='91' WHERE `entry`='1259'; -- Gobbler (28MinG) (42MaxG) https://www.wowhead.com/tbc/npc=1259/gobbler
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='1262'; -- White Ram (13MinG) (64MaxG) Dummy
UPDATE `creature_template` SET `MaxLootGold`='145' WHERE `entry`='1270'; -- Fetid Corpse (43MinG) (61MaxG) https://www.wowhead.com/tbc/npc=1270/fetid-corpse
UPDATE `creature_template` SET `MinLootGold`='22' WHERE `entry`='1271'; -- Old Icebeard (44MinG) (63MaxG) https://www.wowhead.com/tbc/npc=1271/old-icebeard
UPDATE `creature_template` SET `MinLootGold`='2', `MaxLootGold`='15' WHERE `entry`='1380'; -- Saean (10MinG) (18MaxG) https://www.wowhead.com/tbc/npc=1380/saean
UPDATE `creature_template` SET `MinLootGold`='27' WHERE `entry`='1388'; -- Vagash (45MinG) (64MaxG) https://www.wowhead.com/tbc/npc=1388/vagash
UPDATE `creature_template` SET `MaxLootGold`='63' WHERE `entry`='1393'; -- Berserk Trogg (24MinG) (36MaxG) https://www.wowhead.com/tbc/npc=1393/berserk-trogg
UPDATE `creature_template` SET `MinLootGold`='1', `MaxLootGold`='14' WHERE `entry`='1397'; -- Frostmane Seer (8MinG) (15MaxG) (sample size 21)
UPDATE `creature_template` SET `MaxLootGold`='107' WHERE `entry`='1421'; -- Private Merle (49MinG) (69MaxG) https://www.wowhead.com/tbc/npc=1421/private-merle
UPDATE `creature_template` SET `MinLootGold`='4', `MaxLootGold`='33' WHERE `entry`='1426'; -- Riverpaw Miner (16MinG) (26MaxG) https://www.wowhead.com/tbc/npc=1426/riverpaw-miner
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='1433'; -- Corbett Schneider (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=1433/corbett-schneider
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='1436'; -- Watcher Cutford (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=1436/watcher-cutford
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='1475'; -- Menethil Guard (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=1475/menethil-guard
UPDATE `creature_template` SET `MaxLootGold`='118' WHERE `entry`='1487'; -- Splinter Fist Enslaver (46MinG) (65MaxG) https://www.wowhead.com/tbc/npc=1487/splinter-fist-enslaver
UPDATE `creature_template` SET `MinLootGold`='85', `MaxLootGold`='419' WHERE `entry`='1488'; -- Zanzil Zombie (80MinG) (110MaxG) (sample size 27)
UPDATE `creature_template` SET `MinLootGold`='74', `MaxLootGold`='413' WHERE `entry`='1489'; -- Zanzil Hunter (78MinG) (107MaxG) https://www.wowhead.com/tbc/npc=1489/zanzil-hunter
UPDATE `creature_template` SET `MaxLootGold`='428' WHERE `entry`='1490'; -- Zanzil Witch Doctor (71MinG) (97MaxG) https://www.wowhead.com/tbc/npc=1490/zanzil-witch-doctor
UPDATE `creature_template` SET `MinLootGold`='77', `MaxLootGold`='376' WHERE `entry`='1491'; -- Zanzil Naga (79MinG) (108MaxG) https://www.wowhead.com/tbc/npc=1491/zanzil-naga
UPDATE `creature_template` SET `MaxLootGold`='1181' WHERE `entry`='1492'; -- Gorlash (417MinG) (549MaxG) https://www.wowhead.com/tbc/npc=1492/gorlash
UPDATE `creature_template` SET `MinLootGold`='143', `MaxLootGold`='1044' WHERE `entry`='1494'; -- Negolash (789MinG) (1044MaxG) https://www.wowhead.com/tbc/npc=1494/negolash
UPDATE `creature_template` SET `MaxLootGold`='4' WHERE `entry`='1501'; -- Mindless Zombie (1MinG) (3MaxG) (sample size 45)
UPDATE `creature_template` SET `MaxLootGold`='5' WHERE `entry`='1506'; -- Scarlet Convert (1MinG) (6MaxG) (sample size 52)
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='1514'; -- Mokk the Savage (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=1514/mokk-the-savage
UPDATE `creature_template` SET `MinLootGold`='1' WHERE `entry`='1520'; -- Rattlecage Soldier (5MinG) (12MaxG) (sample size 22)
UPDATE `creature_template` SET `MinLootGold`='1' WHERE `entry`='1522'; -- Darkeye Bonecaster (6MinG) (13MaxG) (sample size 58)
UPDATE `creature_template` SET `MinLootGold`='3', `MaxLootGold`='14' WHERE `entry`='1523'; -- Cracked Skull Soldier (7MinG) (15MaxG) (sample size 26)
UPDATE `creature_template` SET `MinLootGold`='1', `MaxLootGold`='7' WHERE `entry`='1525'; -- Rotting Dead (4MinG) (10MaxG) (sample size 21)
UPDATE `creature_template` SET `MinLootGold`='1' WHERE `entry`='1526'; -- Ravaged Corpse (5MinG) (12MaxG) https://www.wowhead.com/tbc/npc=1526/ravaged-corpse
UPDATE `creature_template` SET `MinLootGold`='1' WHERE `entry`='1527'; -- Hungering Dead (6MinG) (13MaxG) https://www.wowhead.com/tbc/npc=1527/hungering-dead
UPDATE `creature_template` SET `MinLootGold`='4' WHERE `entry`='1528'; -- Shambling Horror (8MinG) (15MaxG) https://www.wowhead.com/tbc/npc=1528/shambling-horror
UPDATE `creature_template` SET `MinLootGold`='2' WHERE `entry`='1529'; -- Bleeding Horror (10MinG) (18MaxG) https://www.wowhead.com/tbc/npc=1529/bleeding-horror
UPDATE `creature_template` SET `MinLootGold`='2', `MaxLootGold`='16' WHERE `entry`='1530'; -- Rotting Ancestor (10MinG) (18MaxG) (sample size 22)
UPDATE `creature_template` SET `MinLootGold`='1' WHERE `entry`='1531'; -- Lost Soul (5MinG) (12MaxG) https://www.wowhead.com/tbc/npc=1531/lost-soul
UPDATE `creature_template` SET `MinLootGold`='3' WHERE `entry`='1532'; -- Wandering Spirit (11MinG) (20MaxG) https://www.wowhead.com/tbc/npc=1532/wandering-spirit
UPDATE `creature_template` SET `MinLootGold`='6' WHERE `entry`='1533'; -- Tormented Spirit (8MinG) (16MaxG) https://www.wowhead.com/tbc/npc=1533/tormented-spirit
UPDATE `creature_template` SET `MinLootGold`='2' WHERE `entry`='1534'; -- Wailing Ancestor (9MinG) (17MaxG) https://www.wowhead.com/tbc/npc=1534/wailing-ancestor
UPDATE `creature_template` SET `MinLootGold`='1' WHERE `entry`='1535'; -- Scarlet Warrior (5MinG) (12MaxG) (sample size 38)
UPDATE `creature_template` SET `MinLootGold`='1' WHERE `entry`='1536'; -- Scarlet Missionary (7MinG) (13MaxG) https://www.wowhead.com/tbc/npc=1536/scarlet-missionary
UPDATE `creature_template` SET `MinLootGold`='2' WHERE `entry`='1537'; -- Scarlet Zealot (9MinG) (17MaxG) https://www.wowhead.com/tbc/npc=1537/scarlet-zealot
UPDATE `creature_template` SET `MinLootGold`='2' WHERE `entry`='1538'; -- Scarlet Friar (9MinG) (17MaxG) https://www.wowhead.com/tbc/npc=1538/scarlet-friar
UPDATE `creature_template` SET `MinLootGold`='4' WHERE `entry`='1539'; -- Scarlet Neophyte (10MinG) (18MaxG) https://www.wowhead.com/tbc/npc=1539/scarlet-neophyte
UPDATE `creature_template` SET `MinLootGold`='6' WHERE `entry`='1540'; -- Scarlet Vanguard (11MinG) (20MaxG) https://www.wowhead.com/tbc/npc=1540/scarlet-vanguard
UPDATE `creature_template` SET `MinLootGold`='1' WHERE `entry`='1543'; -- Vile Fin Puddlejumper (6MinG) (13MaxG) https://www.wowhead.com/tbc/npc=1543/vile-fin-puddlejumper
UPDATE `creature_template` SET `MinLootGold`='3' WHERE `entry`='1544'; -- Vile Fin Minor Oracle (7MinG) (15MaxG) https://www.wowhead.com/tbc/npc=1544/vile-fin-minor-oracle
UPDATE `creature_template` SET `MinLootGold`='2' WHERE `entry`='1545'; -- Vile Fin Muckdweller (9MinG) (17MaxG) https://www.wowhead.com/tbc/npc=1545/vile-fin-muckdweller
UPDATE `creature_template` SET `MinLootGold`='76', `MaxLootGold`='350' WHERE `entry`='1561'; -- Bloodsail Raider (74MinG) (101MaxG) (sample size 30)
UPDATE `creature_template` SET `MinLootGold`='61', `MaxLootGold`='314' WHERE `entry`='1562'; -- Bloodsail Mage (59MinG) (81MaxG) (sample size 31)
UPDATE `creature_template` SET `MinLootGold`='61', `MaxLootGold`='404' WHERE `entry`='1563'; -- Bloodsail Swashbuckler (75MinG) (103MaxG) (sample size 57)
UPDATE `creature_template` SET `MaxLootGold`='401' WHERE `entry`='1564'; -- Bloodsail Warlock (62MinG) (86MaxG) (sample size 57)
UPDATE `creature_template` SET `MinLootGold`='73', `MaxLootGold`='452' WHERE `entry`='1565'; -- Bloodsail Sea Dog (83MinG) (114MaxG) (sample size 26)
UPDATE `creature_template` SET `MinLootGold`='66', `MaxLootGold`='444' WHERE `entry`='1653'; -- Bloodsail Elder Magus (68MinG) (94MaxG) (sample size 26)
UPDATE `creature_template` SET `MinLootGold`='6' WHERE `entry`='1654'; -- Gregor Agamand (10MinG) (18MaxG) https://www.wowhead.com/tbc/npc=1654/gregor-agamand
UPDATE `creature_template` SET `MinLootGold`='4' WHERE `entry`='1655'; -- Nissa Agamand (10MinG) (18MaxG) https://www.wowhead.com/tbc/npc=1655/nissa-agamand
UPDATE `creature_template` SET `MinLootGold`='9' WHERE `entry`='1656'; -- Thurman Agamand (10MinG) (18MaxG) https://www.wowhead.com/tbc/npc=1656/thurman-agamand
UPDATE `creature_template` SET `MinLootGold`='2' WHERE `entry`='1657'; -- Devlin Agamand (8MinG) (16MaxG) https://www.wowhead.com/tbc/npc=1657/devlin-agamand
UPDATE `creature_template` SET `MaxLootGold`='27' WHERE `entry`='1658'; -- Captain Dargol (14MinG) (23MaxG) https://www.wowhead.com/tbc/npc=1658/captain-dargol
UPDATE `creature_template` SET `MinLootGold`='2' WHERE `entry`='1660'; -- Scarlet Bodyguard (7MinG) (14MaxG) https://www.wowhead.com/tbc/npc=1660/scarlet-bodyguard
UPDATE `creature_template` SET `MinLootGold`='5' WHERE `entry`='1662'; -- Captain Perrine (8MinG) (16MaxG) https://www.wowhead.com/tbc/npc=1662/captain-perrine
UPDATE `creature_template` SET `MaxLootGold`='20' WHERE `entry`='1664'; -- Captain Vachon (11MinG) (19MaxG) https://www.wowhead.com/tbc/npc=1664/captain-vachon
UPDATE `creature_template` SET `MinLootGold`='10' WHERE `entry`='1665'; -- Captain Melrache (13MinG) (21MaxG) https://www.wowhead.com/tbc/npc=1665/captain-melrache
UPDATE `creature_template` SET `MinLootGold`='31' WHERE `entry`='1666'; -- Kam Deepfury (153MinG) (205MaxG) https://www.wowhead.com/tbc/npc=1666/kam-deepfury
UPDATE `creature_template` SET `MinLootGold`='1' WHERE `entry`='1667'; -- Meven Korgal (3MinG) (9MaxG) https://www.wowhead.com/tbc/npc=1667/meven-korgal
UPDATE `creature_template` SET `MinLootGold`='1' WHERE `entry`='1674'; -- Rot Hide Gnoll (5MinG) (12MaxG) https://www.wowhead.com/tbc/npc=1674/rot-hide-gnoll
UPDATE `creature_template` SET `MinLootGold`='1' WHERE `entry`='1675'; -- Rot Hide Mongrel (7MinG) (13MaxG) (sample size 35)
UPDATE `creature_template` SET `MaxLootGold`='266' WHERE `entry`='1696'; -- Targorr the Dread (123MinG) (165MaxG) https://www.wowhead.com/tbc/npc=1696/targorr-the-dread
UPDATE `creature_template` SET `MinLootGold`='64', `MaxLootGold`='323' WHERE `entry`='1706'; -- Defias Prisoner (121MinG) (163MaxG) (sample size 22)
UPDATE `creature_template` SET `MinLootGold`='60', `MaxLootGold`='325' WHERE `entry`='1707'; -- Defias Captive (121MinG) (163MaxG) https://www.wowhead.com/tbc/npc=1707/defias-captive
UPDATE `creature_template` SET `MinLootGold`='64', `MaxLootGold`='369' WHERE `entry`='1708'; -- Defias Inmate (131MinG) (176MaxG) https://www.wowhead.com/tbc/npc=1708/defias-inmate
UPDATE `creature_template` SET `MinLootGold`='74', `MaxLootGold`='348' WHERE `entry`='1711'; -- Defias Convict (127MinG) (171MaxG) https://www.wowhead.com/tbc/npc=1711/defias-convict
UPDATE `creature_template` SET `MinLootGold`='69', `MaxLootGold`='402' WHERE `entry`='1715'; -- Defias Insurgent (133MinG) (179MaxG) https://www.wowhead.com/tbc/npc=1715/defias-insurgent
UPDATE `creature_template` SET `MaxLootGold`='368' WHERE `entry`='1716'; -- Bazil Thredd (170MinG) (226MaxG) https://www.wowhead.com/tbc/npc=1716/bazil-thredd
UPDATE `creature_template` SET `MaxLootGold`='286' WHERE `entry`='1717'; -- Hamhock (147MinG) (196MaxG) https://www.wowhead.com/tbc/npc=1717/hamhock
UPDATE `creature_template` SET `MinLootGold`='34' WHERE `entry`='1725'; -- Defias Watchman (75MinG) (103MaxG) https://www.wowhead.com/tbc/npc=1725/defias-watchman
UPDATE `creature_template` SET `MaxLootGold`='98' WHERE `entry`='1726'; -- Defias Magician (66MinG) (91MaxG) https://www.wowhead.com/tbc/npc=1726/defias-magician
UPDATE `creature_template` SET `MinLootGold`='17', `MaxLootGold`='33' WHERE `entry`='1727'; -- Defias Worker (20MinG) (31MaxG) https://www.wowhead.com/tbc/npc=1727/defias-worker
UPDATE `creature_template` SET `MinLootGold`='23', `MaxLootGold`='156' WHERE `entry`='1729'; -- Defias Evoker (77MinG) (105MaxG) https://www.wowhead.com/tbc/npc=1729/defias-evoker
UPDATE `creature_template` SET `MinLootGold`='41', `MaxLootGold`='174' WHERE `entry`='1731'; -- Goblin Craftsman (87MinG) (119MaxG) https://www.wowhead.com/tbc/npc=1731/goblin-craftsman
UPDATE `creature_template` SET `MinLootGold`='30', `MaxLootGold`='156' WHERE `entry`='1732'; -- Defias Squallshaper (80MinG) (110MaxG) https://www.wowhead.com/tbc/npc=1732/defias-squallshaper
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='1747'; -- Anduin Wrynn (84MinG) (115MaxG) https://www.wowhead.com/tbc/npc=1747/anduin-wrynn
UPDATE `creature_template` SET `MinLootGold`='4' WHERE `entry`='1753'; -- Maggot Eye (10MinG) (18MaxG) https://www.wowhead.com/tbc/npc=1753/maggot-eye
UPDATE `creature_template` SET `MinLootGold`='103', `MaxLootGold`='517' WHERE `entry`='1756'; -- Stormwind Royal Guard (210MinG) (279MaxG) https://www.wowhead.com/tbc/npc=1756/stormwind-royal-guard
UPDATE `creature_template` SET `MinLootGold`='76' WHERE `entry`='1763'; -- Gilnid (163MinG) (217MaxG) https://www.wowhead.com/tbc/npc=1763/gilnid
UPDATE `creature_template` SET `MinLootGold`='3', `MaxLootGold`='27' WHERE `entry`='1767'; -- Vile Fin Shredder (14MinG) (23MaxG) (sample size 212)
UPDATE `creature_template` SET `MinLootGold`='4', `MaxLootGold`='29' WHERE `entry`='1768'; -- Vile Fin Tidehunter (16MinG) (26MaxG) (sample size 99)
UPDATE `creature_template` SET `MinLootGold`='2', `MaxLootGold`='17' WHERE `entry`='1769'; -- Moonrage Whitescalp (10MinG) (18MaxG) (sample size 47)
UPDATE `creature_template` SET `MinLootGold`='5', `MaxLootGold`='24' WHERE `entry`='1770'; -- Moonrage Darkrunner (12MinG) (20MaxG) (sample size 21)
UPDATE `creature_template` SET `MinLootGold`='4', `MaxLootGold`='24' WHERE `entry`='1772'; -- Rot Hide Gladerunner (12MinG) (20MaxG) https://www.wowhead.com/tbc/npc=1772/rot-hide-gladerunner
UPDATE `creature_template` SET `MaxLootGold`='27' WHERE `entry`='1773'; -- Rot Hide Mystic (13MinG) (22MaxG) https://www.wowhead.com/tbc/npc=1773/rot-hide-mystic
UPDATE `creature_template` SET `MinLootGold`='4', `MaxLootGold`='27' WHERE `entry`='1779'; -- Moonrage Glutton (13MinG) (22MaxG) (sample size 63)
UPDATE `creature_template` SET `MinLootGold`='5', `MaxLootGold`='28' WHERE `entry`='1782'; -- Moonrage Darksoul (15MinG) (24MaxG) (sample size 34)
UPDATE `creature_template` SET `MinLootGold`='93', `MaxLootGold`='638' WHERE `entry`='1783'; -- Skeletal Flayer (101MinG) (137MaxG) (sample size 203)
UPDATE `creature_template` SET `MinLootGold`='120', `MaxLootGold`='618' WHERE `entry`='1784'; -- Skeletal Sorcerer (93MinG) (127MaxG) (sample size 28)
UPDATE `creature_template` SET `MaxLootGold`='716' WHERE `entry`='1785'; -- Skeletal Terror (135MinG) (181MaxG) https://www.wowhead.com/tbc/npc=1785/skeletal-terror
UPDATE `creature_template` SET `MaxLootGold`='789' WHERE `entry`='1787'; -- Skeletal Executioner (117MinG) (158MaxG) (sample size 43)
UPDATE `creature_template` SET `MinLootGold`='139', `MaxLootGold`='813' WHERE `entry`='1789'; -- Skeletal Acolyte (108MinG) (145MaxG) (sample size 51)
UPDATE `creature_template` SET `MaxLootGold`='643' WHERE `entry`='1791'; -- Slavering Ghoul (103MinG) (140MaxG) (sample size 122)
UPDATE `creature_template` SET `MaxLootGold`='722' WHERE `entry`='1793'; -- Rotting Ghoul (117MinG) (158MaxG) https://www.wowhead.com/tbc/npc=1793/rotting-ghoul
UPDATE `creature_template` SET `MinLootGold`='127', `MaxLootGold`='791' WHERE `entry`='1794'; -- Soulless Ghoul (102MinG) (139MaxG) (sample size 45)
UPDATE `creature_template` SET `MinLootGold`='121', `MaxLootGold`='825' WHERE `entry`='1795'; -- Searing Ghoul (108MinG) (145MaxG) (sample size 33)
UPDATE `creature_template` SET `MaxLootGold`='807' WHERE `entry`='1796'; -- Freezing Ghoul (122MinG) (165MaxG) https://www.wowhead.com/tbc/npc=1796/freezing-ghoul
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='1800'; -- Cold Wraith (0MinG) (0MaxG) Dummy
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='1801'; -- Blood Wraith (0MinG) (0MaxG) Dummy
UPDATE `creature_template` SET `MaxLootGold`='632' WHERE `entry`='1802'; -- Hungering Wraith (127MinG) (171MaxG) https://www.wowhead.com/tbc/npc=1802/hungering-wraith
UPDATE `creature_template` SET `MaxLootGold`='492' WHERE `entry`='1804'; -- Wailing Death (125MinG) (169MaxG) https://www.wowhead.com/tbc/npc=1804/wailing-death
UPDATE `creature_template` SET `MinLootGold`='102', `MaxLootGold`='395' WHERE `entry`='1806'; -- Vile Slime (117MinG) (158MaxG) https://www.wowhead.com/tbc/npc=1806/vile-slime
UPDATE `creature_template` SET `MaxLootGold`='470' WHERE `entry`='1808'; -- Devouring Ooze (122MinG) (165MaxG) https://www.wowhead.com/tbc/npc=1808/devouring-ooze
UPDATE `creature_template` SET `MaxLootGold`='807' WHERE `entry`='1812'; -- Rotting Behemoth (125MinG) (168MaxG) https://www.wowhead.com/tbc/npc=1812/rotting-behemoth
UPDATE `creature_template` SET `MaxLootGold`='866' WHERE `entry`='1813'; -- Decaying Horror (125MinG) (169MaxG) https://www.wowhead.com/tbc/npc=1813/decaying-horror
UPDATE `creature_template` SET `MaxLootGold`='426' WHERE `entry`='1826'; -- Scarlet Mage (99MinG) (134MaxG) https://www.wowhead.com/tbc/npc=1826/scarlet-mage
UPDATE `creature_template` SET `MaxLootGold`='700' WHERE `entry`='1831'; -- Scarlet Hunter (109MinG) (148MaxG) https://www.wowhead.com/tbc/npc=1831/scarlet-hunter
UPDATE `creature_template` SET `MaxLootGold`='685' WHERE `entry`='1833'; -- Scarlet Knight (117MinG) (158MaxG) https://www.wowhead.com/tbc/npc=1833/scarlet-knight
UPDATE `creature_template` SET `MaxLootGold`='745' WHERE `entry`='1835'; -- Scarlet Invoker (99MinG) (135MaxG) https://www.wowhead.com/tbc/npc=1835/scarlet-invoker
UPDATE `creature_template` SET `MaxLootGold`='1198' WHERE `entry`='1836'; -- Scarlet Cavalier (472MinG) (621MaxG) https://www.wowhead.com/tbc/npc=1836/scarlet-cavalier
UPDATE `creature_template` SET `MinLootGold`='891', `MaxLootGold`='3970' WHERE `entry`='1840'; -- Grand Inquisitor Isillien (3037MinG) (3970MaxG) https://www.wowhead.com/tbc/npc=1840/grand-inquisitor-isillien
UPDATE `creature_template` SET `MaxLootGold`='558' WHERE `entry`='1845'; -- High Protector Tarsen (115MinG) (155MaxG) https://www.wowhead.com/tbc/npc=1845/high-protector-tarsen
UPDATE `creature_template` SET `MaxLootGold`='2874' WHERE `entry`='1846'; -- High Protector Lorik (424MinG) (558MaxG) https://www.wowhead.com/tbc/npc=1846/high-protector-lorik
UPDATE `creature_template` SET `MaxLootGold`='302' WHERE `entry`='1848'; -- Lord Maldazzar (108MinG) (146MaxG) https://www.wowhead.com/tbc/npc=1848/lord-maldazzar
UPDATE `creature_template` SET `MaxLootGold`='1364' WHERE `entry`='1852'; -- Araj the Summoner (458MinG) (603MaxG) https://www.wowhead.com/tbc/npc=1852/araj-the-summoner
UPDATE `creature_template` SET `MinLootGold`='503', `MaxLootGold`='2967' WHERE `entry`='1853'; -- Darkmaster Gandling (2268MinG) (2967MaxG) https://www.wowhead.com/tbc/npc=1853/darkmaster-gandling
UPDATE `creature_template` SET `MinLootGold`='7' WHERE `entry`='1865'; -- Ravenclaw Raider (14MinG) (23MaxG) https://www.wowhead.com/tbc/npc=1865/ravenclaw-raider
UPDATE `creature_template` SET `MinLootGold`='3', `MaxLootGold`='24' WHERE `entry`='1866'; -- Ravenclaw Slave (12MinG) (20MaxG) https://www.wowhead.com/tbc/npc=1866/ravenclaw-slave
UPDATE `creature_template` SET `MinLootGold`='4', `MaxLootGold`='28' WHERE `entry`='1867'; -- Dalaran Apprentice (14MinG) (24MaxG) https://www.wowhead.com/tbc/npc=1867/dalaran-apprentice
UPDATE `creature_template` SET `MinLootGold`='8', `MaxLootGold`='25' WHERE `entry`='1868'; -- Ravenclaw Servant (14MinG) (23MaxG) https://www.wowhead.com/tbc/npc=1868/ravenclaw-servant
UPDATE `creature_template` SET `MinLootGold`='5', `MaxLootGold`='28' WHERE `entry`='1869'; -- Ravenclaw Champion (16MinG) (26MaxG) https://www.wowhead.com/tbc/npc=1869/ravenclaw-champion
UPDATE `creature_template` SET `MaxLootGold`='38' WHERE `entry`='1870'; -- Hand of Ravenclaw (17MinG) (28MaxG) https://www.wowhead.com/tbc/npc=1870/hand-of-ravenclaw
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='1871'; -- Eliza's Guard (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=1871/elizas-guard
UPDATE `creature_template` SET `MaxLootGold`='664' WHERE `entry`='1883'; -- Scarlet Worker (125MinG) (168MaxG) https://www.wowhead.com/tbc/npc=1883/scarlet-worker
UPDATE `creature_template` SET `MaxLootGold`='769' WHERE `entry`='1884'; -- Scarlet Lumberjack (122MinG) (164MaxG) https://www.wowhead.com/tbc/npc=1884/scarlet-lumberjack
UPDATE `creature_template` SET `MinLootGold`='8', `MaxLootGold`='55' WHERE `entry`='1888'; -- Dalaran Watcher (21MinG) (32MaxG) https://www.wowhead.com/tbc/npc=1888/dalaran-watcher
UPDATE `creature_template` SET `MaxLootGold`='48' WHERE `entry`='1889'; -- Dalaran Wizard (22MinG) (33MaxG) https://www.wowhead.com/tbc/npc=1889/dalaran-wizard
UPDATE `creature_template` SET `MinLootGold`='14', `MaxLootGold`='87' WHERE `entry`='1891'; -- Pyrewood Watcher (59MinG) (81MaxG) https://www.wowhead.com/tbc/npc=1891/pyrewood-watcher
UPDATE `creature_template` SET `MinLootGold`='10', `MaxLootGold`='86' WHERE `entry`='1892'; -- Moonrage Watcher (57MinG) (80MaxG) https://www.wowhead.com/tbc/npc=1892/moonrage-watcher
UPDATE `creature_template` SET `MinLootGold`='9', `MaxLootGold`='95' WHERE `entry`='1893'; -- Moonrage Sentry (63MinG) (87MaxG) https://www.wowhead.com/tbc/npc=1893/moonrage-sentry
UPDATE `creature_template` SET `MinLootGold`='27', `MaxLootGold`='102' WHERE `entry`='1894'; -- Pyrewood Sentry (63MinG) (88MaxG) https://www.wowhead.com/tbc/npc=1894/pyrewood-sentry
UPDATE `creature_template` SET `MinLootGold`='24', `MaxLootGold`='86' WHERE `entry`='1895'; -- Pyrewood Elder (59MinG) (81MaxG) https://www.wowhead.com/tbc/npc=1895/pyrewood-elder
UPDATE `creature_template` SET `MinLootGold`='9', `MaxLootGold`='101' WHERE `entry`='1896'; -- Moonrage Elder (47MinG) (85MaxG) https://www.wowhead.com/tbc/npc=1896/moonrage-elder
UPDATE `creature_template` SET `MinLootGold`='74', `MaxLootGold`='425' WHERE `entry`='1907'; -- Naga Explorer (78MinG) (107MaxG) (sample size 86)
UPDATE `creature_template` SET `MaxLootGold`='62' WHERE `entry`='1908'; -- Vile Fin Oracle (29MinG) (43MaxG) https://www.wowhead.com/tbc/npc=1908/vile-fin-oracle
UPDATE `creature_template` SET `MinLootGold`='19' WHERE `entry`='1909'; -- Vile Fin Lakestalker (23MinG) (35MaxG) https://www.wowhead.com/tbc/npc=1909/vile-fin-lakestalker
UPDATE `creature_template` SET `MinLootGold`='5', `MaxLootGold`='34' WHERE `entry`='1912'; -- Dalaran Protector (16MinG) (26MaxG) (sample size 41)
UPDATE `creature_template` SET `MinLootGold`='8', `MaxLootGold`='49' WHERE `entry`='1913'; -- Dalaran Warder (19MinG) (30MaxG) https://www.wowhead.com/tbc/npc=1913/dalaran-warder
UPDATE `creature_template` SET `MinLootGold`='12', `MaxLootGold`='38' WHERE `entry`='1914'; -- Dalaran Mage (16MinG) (26MaxG) https://www.wowhead.com/tbc/npc=1914/dalaran-mage
UPDATE `creature_template` SET `MinLootGold`='12', `MaxLootGold`='50' WHERE `entry`='1915'; -- Dalaran Conjuror (19MinG) (30MaxG) https://www.wowhead.com/tbc/npc=1915/dalaran-conjuror
UPDATE `creature_template` SET `MinLootGold`='2' WHERE `entry`='1919'; -- Samuel Fipps (3MinG) (9MaxG) https://www.wowhead.com/tbc/npc=1919/samuel-fipps
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='1921'; -- Combat Dummy (1MinG) (1MaxG) https://www.wowhead.com/tbc/npc=1921/combat-dummy
UPDATE `creature_template` SET `MinLootGold`='13', `MaxLootGold`='37' WHERE `entry`='1924'; -- Moonrage Bloodhowler (18MinG) (29MaxG) https://www.wowhead.com/tbc/npc=1924/moonrage-bloodhowler
UPDATE `creature_template` SET `MinLootGold`='1' WHERE `entry`='1934'; -- Tirisfal Farmer (5MinG) (12MaxG) https://www.wowhead.com/tbc/npc=1934/tirisfal-farmer
UPDATE `creature_template` SET `MinLootGold`='1' WHERE `entry`='1935'; -- Tirisfal Farmhand (4MinG) (10MaxG) https://www.wowhead.com/tbc/npc=1935/tirisfal-farmhand
UPDATE `creature_template` SET `MinLootGold`='7', `MaxLootGold`='49' WHERE `entry`='1939'; -- Rot Hide Brute (20MinG) (31MaxG) (sample size 127)
UPDATE `creature_template` SET `MinLootGold`='7', `MaxLootGold`='54' WHERE `entry`='1940'; -- Rot Hide Plague Weaver (20MinG) (30MaxG) (sample size 72)
UPDATE `creature_template` SET `MinLootGold`='1' WHERE `entry`='1941'; -- Rot Hide Graverobber (5MinG) (12MaxG) (sample size 31)
UPDATE `creature_template` SET `MinLootGold`='8', `MaxLootGold`='59' WHERE `entry`='1942'; -- Rot Hide Savage (22MinG) (33MaxG) (sample size 40)
UPDATE `creature_template` SET `MinLootGold`='10', `MaxLootGold`='58' WHERE `entry`='1943'; -- Raging Rot Hide (22MinG) (34MaxG) (sample size 29)
UPDATE `creature_template` SET `MaxLootGold`='79' WHERE `entry`='1944'; -- Rot Hide Bruiser (28MinG) (42MaxG) https://www.wowhead.com/tbc/npc=1944/rot-hide-bruiser
UPDATE `creature_template` SET `MaxLootGold`='175' WHERE `entry`='1947'; -- Thule Ravenclaw (106MinG) (143MaxG) https://www.wowhead.com/tbc/npc=1947/thule-ravenclaw
UPDATE `creature_template` SET `MaxLootGold`='83' WHERE `entry`='1948'; -- Snarlmane (32MinG) (47MaxG) https://www.wowhead.com/tbc/npc=1948/snarlmane
UPDATE `creature_template` SET `MinLootGold`='5' WHERE `entry`='1949'; -- Servant of Azora (12MinG) (21MaxG) https://www.wowhead.com/tbc/npc=1949/servant-of-azora
UPDATE `creature_template` SET `MinLootGold`='8', `MaxLootGold`='38' WHERE `entry`='1953'; -- Lake Skulker (18MinG) (28MaxG) (sample size 25)
UPDATE `creature_template` SET `MinLootGold`='8', `MaxLootGold`='48' WHERE `entry`='1954'; -- Elder Lake Skulker (18MinG) (28MaxG) https://www.wowhead.com/tbc/npc=1954/elder-lake-skulker
UPDATE `creature_template` SET `MinLootGold`='10', `MaxLootGold`='53' WHERE `entry`='1955'; -- Lake Creeper (20MinG) (32MaxG) https://www.wowhead.com/tbc/npc=1955/lake-creeper
UPDATE `creature_template` SET `MinLootGold`='13', `MaxLootGold`='58' WHERE `entry`='1956'; -- Elder Lake Creeper (22MinG) (34MaxG) https://www.wowhead.com/tbc/npc=1956/elder-lake-creeper
UPDATE `creature_template` SET `MaxLootGold`='54' WHERE `entry`='1958'; -- Vile Fin Tidecaller (22MinG) (33MaxG) https://www.wowhead.com/tbc/npc=1958/vile-fin-tidecaller
UPDATE `creature_template` SET `MinLootGold`='11', `MaxLootGold`='26' WHERE `entry`='1971'; -- Ivar the Foul (14MinG) (23MaxG) https://www.wowhead.com/tbc/npc=1971/ivar-the-foul
UPDATE `creature_template` SET `MinLootGold`='14' WHERE `entry`='1972'; -- Grimson the Pale (17MinG) (27MaxG) https://www.wowhead.com/tbc/npc=1972/grimson-the-pale
UPDATE `creature_template` SET `MinLootGold`='10', `MaxLootGold`='70' WHERE `entry`='1973'; -- Ravenclaw Guardian (26MinG) (38MaxG) (sample size 22)
UPDATE `creature_template` SET `MinLootGold`='10', `MaxLootGold`='62' WHERE `entry`='1974'; -- Ravenclaw Drudger (24MinG) (36MaxG) https://www.wowhead.com/tbc/npc=1974/ravenclaw-drudger
UPDATE `creature_template` SET `MinLootGold`='3', `MaxLootGold`='18' WHERE `entry`='1981'; -- Dark Iron Ambusher (10MinG) (18MaxG) https://www.wowhead.com/tbc/npc=1981/dark-iron-ambusher
UPDATE `creature_template` SET `MinLootGold`='20' WHERE `entry`='1983'; -- Nightlash (23MinG) (34MaxG) https://www.wowhead.com/tbc/npc=1983/nightlash
UPDATE `creature_template` SET `MinLootGold`='1' WHERE `entry`='2002'; -- Rascal Sprite (4MinG) (10MaxG)https://www.wowhead.com/tbc/npc=2002/rascal-sprite
UPDATE `creature_template` SET `MinLootGold`='1', `MaxLootGold`='7' WHERE `entry`='2003'; -- Shadow Sprite (4MinG) (10MaxG) (sample size 21)
UPDATE `creature_template` SET `MinLootGold`='3' WHERE `entry`='2004'; -- Dark Sprite (5MinG) (12MaxG)https://www.wowhead.com/tbc/npc=2004/dark-sprite
UPDATE `creature_template` SET `MinLootGold`='1' WHERE `entry`='2005'; -- Vicious Grell (6MinG) (13MaxG) https://www.wowhead.com/tbc/npc=2005/vicious-grell
UPDATE `creature_template` SET `MinLootGold`='3' WHERE `entry`='2006'; -- Gnarlpine Ursa (4MinG) (11MaxG) https://www.wowhead.com/tbc/npc=2006/gnarlpine-ursa
UPDATE `creature_template` SET `MinLootGold`='3' WHERE `entry`='2007'; -- Gnarlpine Gardener (4MinG) (10MaxG) https://www.wowhead.com/tbc/npc=2007/gnarlpine-gardener
UPDATE `creature_template` SET `MinLootGold`='1' WHERE `entry`='2008'; -- Gnarlpine Warrior (5MinG) (12MaxG) (sample size 30)
UPDATE `creature_template` SET `MinLootGold`='1' WHERE `entry`='2009'; -- Gnarlpine Shaman (6MinG) (13MaxG) (sample size 105)
UPDATE `creature_template` SET `MinLootGold`='1' WHERE `entry`='2010'; -- Gnarlpine Defender (7MinG) (13MaxG) (sample size 66)
UPDATE `creature_template` SET `MinLootGold`='2' WHERE `entry`='2011'; -- Gnarlpine Augur (8MinG) (15MaxG) https://www.wowhead.com/tbc/npc=2011/gnarlpine-augur
UPDATE `creature_template` SET `MinLootGold`='3' WHERE `entry`='2012'; -- Gnarlpine Pathfinder (9MinG) (16MaxG) https://www.wowhead.com/tbc/npc=2012/gnarlpine-pathfinder
UPDATE `creature_template` SET `MinLootGold`='6' WHERE `entry`='2013'; -- Gnarlpine Avenger (9MinG) (17MaxG) https://www.wowhead.com/tbc/npc=2013/gnarlpine-avenger
UPDATE `creature_template` SET `MinLootGold`='2' WHERE `entry`='2014'; -- Gnarlpine Totemic (10MinG) (18MaxG) https://www.wowhead.com/tbc/npc=2014/gnarlpine-totemic
UPDATE `creature_template` SET `MinLootGold`='2' WHERE `entry`='2015'; -- Bloodfeather Harpy (8MinG) (15MaxG) https://www.wowhead.com/tbc/npc=2015/bloodfeather-harpy
UPDATE `creature_template` SET `MinLootGold`='3' WHERE `entry`='2017'; -- Bloodfeather Rogue (8MinG) (15MaxG) https://www.wowhead.com/tbc/npc=2017/bloodfeather-rogue
UPDATE `creature_template` SET `MinLootGold`='2' WHERE `entry`='2018'; -- Bloodfeather Sorceress (9MinG) (16MaxG) https://www.wowhead.com/tbc/npc=2018/bloodfeather-sorceress
UPDATE `creature_template` SET `MinLootGold`='2' WHERE `entry`='2019'; -- Bloodfeather Fury (9MinG) (17MaxG) https://www.wowhead.com/tbc/npc=2019/bloodfeather-fury
UPDATE `creature_template` SET `MinLootGold`='6' WHERE `entry`='2020'; -- Bloodfeather Wind Witch (9MinG) (17MaxG) https://www.wowhead.com/tbc/npc=2020/bloodfeather-wind-witch
UPDATE `creature_template` SET `MinLootGold`='3', `MaxLootGold`='24' WHERE `entry`='2021'; -- Bloodfeather Matriarch (12MinG) (20MaxG) https://www.wowhead.com/tbc/npc=2021/bloodfeather-matriarch
UPDATE `creature_template` SET `MinLootGold`='1', `MaxLootGold`='7' WHERE `entry`='2022'; -- Timberling (4MinG) (10MaxG) (sample size 68)
UPDATE `creature_template` SET `MinLootGold`='3' WHERE `entry`='2025'; -- Timberling Bark Ripper (6MinG) (13MaxG) https://www.wowhead.com/tbc/npc=2025/timberling-bark-ripper
UPDATE `creature_template` SET `MinLootGold`='3' WHERE `entry`='2027'; -- Timberling Trampler (8MinG) (15MaxG) https://www.wowhead.com/tbc/npc=2027/timberling-trampler
UPDATE `creature_template` SET `MinLootGold`='2' WHERE `entry`='2029'; -- Timberling Mire Beast (9MinG) (17MaxG) https://www.wowhead.com/tbc/npc=2029/timberling-mire-beast
UPDATE `creature_template` SET `MinLootGold`='3' WHERE `entry`='2030'; -- Elder Timberling (10MinG) (18MaxG) https://www.wowhead.com/tbc/npc=2030/elder-timberling
UPDATE `creature_template` SET `MinLootGold`='6' WHERE `entry`='2038'; -- Lord Melenas (7MinG) (14MaxG) https://www.wowhead.com/tbc/npc=2038/lord-melenas
UPDATE `creature_template` SET `MinLootGold`='9' WHERE `entry`='2039'; -- Ursal the Mauler (13MinG) (22MaxG) https://www.wowhead.com/tbc/npc=2039/ursal-the-mauler
UPDATE `creature_template` SET `MinLootGold`='12', `MaxLootGold`='64' WHERE `entry`='2044'; -- Forlorn Spirit (32MinG) (47MaxG) (sample size 6)
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='2045'; -- Gunther's Minion (2MinG) (10MaxG) https://www.wowhead.com/tbc/npc=2045/gunthers-minion
UPDATE `creature_template` SET `MaxLootGold`='48' WHERE `entry`='2053'; -- Haggard Refugee (22MinG) (34MaxG) https://www.wowhead.com/tbc/npc=2053/haggard-refugee
UPDATE `creature_template` SET `MaxLootGold`='51' WHERE `entry`='2054'; -- Sickly Refugee (23MinG) (34MaxG) https://www.wowhead.com/tbc/npc=2054/sickly-refugee
UPDATE `creature_template` SET `MinLootGold`='15', `MaxLootGold`='73' WHERE `entry`='2060'; -- Councilman Smithers (50MinG) (70MaxG) https://www.wowhead.com/tbc/npc=2060/councilman-smithers
UPDATE `creature_template` SET `MinLootGold`='13', `MaxLootGold`='67' WHERE `entry`='2061'; -- Councilman Thatcher (57MinG) (80MaxG) https://www.wowhead.com/tbc/npc=2061/councilman-thatcher
UPDATE `creature_template` SET `MinLootGold`='15', `MaxLootGold`='73' WHERE `entry`='2062'; -- Councilman Hendricks (56MinG) (78MaxG) https://www.wowhead.com/tbc/npc=2062/councilman-hendricks
UPDATE `creature_template` SET `MinLootGold`='10', `MaxLootGold`='50' WHERE `entry`='2063'; -- Councilman Wilhelm (58MinG) (80MaxG) https://www.wowhead.com/tbc/npc=2063/councilman-wilhelm
UPDATE `creature_template` SET `MinLootGold`='10', `MaxLootGold`='50' WHERE `entry`='2064'; -- Councilman Hartin (56MinG) (78MaxG) https://www.wowhead.com/tbc/npc=2064/councilman-hartin
UPDATE `creature_template` SET `MinLootGold`='10', `MaxLootGold`='50' WHERE `entry`='2065'; -- Councilman Cooper (54MinG) (75MaxG) https://www.wowhead.com/tbc/npc=2065/councilman-cooper
UPDATE `creature_template` SET `MinLootGold`='9', `MaxLootGold`='50' WHERE `entry`='2066'; -- Councilman Higarth (57MinG) (80MaxG) https://www.wowhead.com/tbc/npc=2066/councilman-higarth
UPDATE `creature_template` SET `MinLootGold`='4', `MaxLootGold`='50' WHERE `entry`='2067'; -- Councilman Brunswick (54MinG) (76MaxG) https://www.wowhead.com/tbc/npc=2067/councilman-brunswick
UPDATE `creature_template` SET `MinLootGold`='11', `MaxLootGold`='90' WHERE `entry`='2068'; -- Lord Mayor Morrison (65MinG) (90MaxG) https://www.wowhead.com/tbc/npc=2068/lord-mayor-morrison
UPDATE `creature_template` SET `MaxLootGold`='63' WHERE `entry`='2090'; -- Ma'ruk Wyrmscale (30MinG) (44MaxG) https://www.wowhead.com/tbc/npc=2090/maruk-wyrmscale
UPDATE `creature_template` SET `MinLootGold`='133' WHERE `entry`='2091'; -- Chieftain Nek'rosh (187MinG) (250MaxG) https://www.wowhead.com/tbc/npc=2091/chieftain-nekrosh
UPDATE `creature_template` SET `MinLootGold`='10', `MaxLootGold`='67' WHERE `entry`='2102'; -- Dragonmaw Grunt (26MinG) (38MaxG) https://www.wowhead.com/tbc/npc=2102/dragonmaw-grunt
UPDATE `creature_template` SET `MinLootGold`='9', `MaxLootGold`='65' WHERE `entry`='2103'; -- Dragonmaw Scout (23MinG) (35MaxG) (sample size 34)
UPDATE `creature_template` SET `MaxLootGold`='145' WHERE `entry`='2106'; -- Apothecary Berard (75MinG) (103MaxG) https://www.wowhead.com/tbc/npc=2106/apothecary-berard
UPDATE `creature_template` SET `MaxLootGold`='87' WHERE `entry`='2120'; -- Archmage Ataeric (26MinG) (39MaxG) https://www.wowhead.com/tbc/npc=2120/archmage-ataeric
UPDATE `creature_template` SET `MinLootGold`='6', `MaxLootGold`='31' WHERE `entry`='2149'; -- Dark Iron Raider (16MinG) (25MaxG) https://www.wowhead.com/tbc/npc=2149/dark-iron-raider
UPDATE `creature_template` SET `MinLootGold`='1' WHERE `entry`='2152'; -- Gnarlpine Ambusher (6MinG) (12MaxG) https://www.wowhead.com/tbc/npc=2152/gnarlpine-ambusher
UPDATE `creature_template` SET `MinLootGold`='19', `MaxLootGold`='58' WHERE `entry`='2156'; -- Cracked Golem (21MinG) (32MaxG) https://www.wowhead.com/tbc/npc=2156/cracked-golem
UPDATE `creature_template` SET `MinLootGold`='9', `MaxLootGold`='57' WHERE `entry`='2157'; -- Stone Behemoth (22MinG) (33MaxG) https://www.wowhead.com/tbc/npc=2157/stone-behemoth
UPDATE `creature_template` SET `MinLootGold`='5', `MaxLootGold`='52' WHERE `entry`='2158'; -- Gravelflint Scout (22MinG) (34MaxG) https://www.wowhead.com/tbc/npc=2158/gravelflint-scout
UPDATE `creature_template` SET `MinLootGold`='6', `MaxLootGold`='36' WHERE `entry`='2159'; -- Gravelflint Bonesnapper (24MinG) (36MaxG) https://www.wowhead.com/tbc/npc=2159/gravelflint-bonesnapper
UPDATE `creature_template` SET `MinLootGold`='7', `MaxLootGold`='62' WHERE `entry`='2160'; -- Gravelflint Geomancer (24MinG) (36MaxG) https://www.wowhead.com/tbc/npc=2160/gravelflint-geomancer
UPDATE `creature_template` SET `MinLootGold`='31' WHERE `entry`='2166'; -- Oakenscowl (35MinG) (51MaxG) https://www.wowhead.com/tbc/npc=2166/oakenscowl
UPDATE `creature_template` SET `MinLootGold`='3', `MaxLootGold`='26' WHERE `entry`='2167'; -- Blackwood Pathfinder (13MinG) (21MaxG) (sample size 23)
UPDATE `creature_template` SET `MinLootGold`='9', `MaxLootGold`='49' WHERE `entry`='2168'; -- Blackwood Warrior (19MinG) (29MaxG) (sample size 22)
UPDATE `creature_template` SET `MinLootGold`='9', `MaxLootGold`='51' WHERE `entry`='2169'; -- Blackwood Totemic (20MinG) (31MaxG) https://www.wowhead.com/tbc/npc=2169/blackwood-totemic
UPDATE `creature_template` SET `MinLootGold`='8', `MaxLootGold`='59' WHERE `entry`='2170'; -- Blackwood Ursa (21MinG) (32MaxG) (sample size 28)
UPDATE `creature_template` SET `MinLootGold`='9', `MaxLootGold`='59' WHERE `entry`='2171'; -- Blackwood Shaman (23MinG) (34MaxG) https://www.wowhead.com/tbc/npc=2171/blackwood-shaman
UPDATE `creature_template` SET `MinLootGold`='3' WHERE `entry`='2176'; -- Cursed Highborne (10MinG) (18MaxG) https://www.wowhead.com/tbc/npc=2176/cursed-highborne
UPDATE `creature_template` SET `MinLootGold`='3', `MaxLootGold`='24' WHERE `entry`='2177'; -- Writhing Highborne (12MinG) (20MaxG) (sample size 27)
UPDATE `creature_template` SET `MinLootGold`='3', `MaxLootGold`='27' WHERE `entry`='2178'; -- Wailing Highborne (13MinG) (22MaxG) https://www.wowhead.com/tbc/npc=2178/wailing-highborne
UPDATE `creature_template` SET `MinLootGold`='5', `MaxLootGold`='35' WHERE `entry`='2179'; -- Stormscale Wave Rider (17MinG) (27MaxG) https://www.wowhead.com/tbc/npc=2179/stormscale-wave-rider
UPDATE `creature_template` SET `MinLootGold`='9', `MaxLootGold`='49' WHERE `entry`='2180'; -- Stormscale Siren (18MinG) (29MaxG) https://www.wowhead.com/tbc/npc=2180/stormscale-siren
UPDATE `creature_template` SET `MinLootGold`='8', `MaxLootGold`='53' WHERE `entry`='2181'; -- Stormscale Myrmidon (22MinG) (33MaxG) (sample size 23)
UPDATE `creature_template` SET `MinLootGold`='9', `MaxLootGold`='59' WHERE `entry`='2182'; -- Stormscale Sorceress (22MinG) (33MaxG) https://www.wowhead.com/tbc/npc=2182/stormscale-sorceress
UPDATE `creature_template` SET `MinLootGold`='12', `MaxLootGold`='69' WHERE `entry`='2183'; -- Stormscale Warrior (25MinG) (38MaxG) https://www.wowhead.com/tbc/npc=2183/stormscale-warrior
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='2188'; -- Deep Sea Threshadon (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=2188/deep-sea-threshadon
UPDATE `creature_template` SET `MinLootGold`='3', `MaxLootGold`='17' WHERE `entry`='2189'; -- Vile Sprite (10MinG) (18MaxG) (sample size 31)
UPDATE `creature_template` SET `MinLootGold`='3', `MaxLootGold`='24' WHERE `entry`='2190'; -- Wild Grell (12MinG) (20MaxG) https://www.wowhead.com/tbc/npc=2190/wild-grell
UPDATE `creature_template` SET `MinLootGold`='5', `MaxLootGold`='22' WHERE `entry`='2201'; -- Greymist Raider (12MinG) (20MaxG) https://www.wowhead.com/tbc/npc=2201/greymist-raider
UPDATE `creature_template` SET `MinLootGold`='6', `MaxLootGold`='25' WHERE `entry`='2202'; -- Greymist Coastrunner (13MinG) (22MaxG) https://www.wowhead.com/tbc/npc=2202/greymist-coastrunner
UPDATE `creature_template` SET `MinLootGold`='4', `MaxLootGold`='28' WHERE `entry`='2203'; -- Greymist Seer (14MinG) (24MaxG) https://www.wowhead.com/tbc/npc=2203/greymist-seer
UPDATE `creature_template` SET `MinLootGold`='7', `MaxLootGold`='31' WHERE `entry`='2204'; -- Greymist Netter (16MinG) (26MaxG) https://www.wowhead.com/tbc/npc=2204/greymist-netter
UPDATE `creature_template` SET `MinLootGold`='5', `MaxLootGold`='37' WHERE `entry`='2205'; -- Greymist Warrior (17MinG) (28MaxG) https://www.wowhead.com/tbc/npc=2205/greymist-warrior
UPDATE `creature_template` SET `MinLootGold`='11', `MaxLootGold`='48' WHERE `entry`='2206'; -- Greymist Hunter (19MinG) (30MaxG) https://www.wowhead.com/tbc/npc=2206/greymist-hunter
UPDATE `creature_template` SET `MaxLootGold`='45' WHERE `entry`='2207'; -- Greymist Oracle (21MinG) (32MaxG) https://www.wowhead.com/tbc/npc=2207/greymist-oracle
UPDATE `creature_template` SET `MinLootGold`='14', `MaxLootGold`='62' WHERE `entry`='2208'; -- Greymist Tidehunter (23MinG) (34MaxG) https://www.wowhead.com/tbc/npc=2208/greymist-tidehunter
UPDATE `creature_template` SET `MinLootGold`='6', `MaxLootGold`='26' WHERE `entry`='2212'; -- Deth'ryll Satyr (13MinG) (22MaxG) https://www.wowhead.com/tbc/npc=2212/dethryll-satyr
UPDATE `creature_template` SET `MinLootGold`='28', `MaxLootGold`='190' WHERE `entry`='2240'; -- Syndicate Footpad (50MinG) (70MaxG) (sample size 34)
UPDATE `creature_template` SET `MinLootGold`='47', `MaxLootGold`='222' WHERE `entry`='2241'; -- Syndicate Thief (53MinG) (74MaxG) (sample size 30)
UPDATE `creature_template` SET `MinLootGold`='39', `MaxLootGold`='263' WHERE `entry`='2242'; -- Syndicate Spy (61MinG) (84MaxG) (sample size 26)
UPDATE `creature_template` SET `MaxLootGold`='225' WHERE `entry`='2243'; -- Syndicate Sentry (59MinG) (83MaxG) https://www.wowhead.com/tbc/npc=2243/syndicate-sentry
UPDATE `creature_template` SET `MaxLootGold`='84' WHERE `entry`='2244'; -- Syndicate Shadow Mage (25MinG) (37MaxG) https://www.wowhead.com/tbc/npc=2244/syndicate-shadow-mage
UPDATE `creature_template` SET `MaxLootGold`='289' WHERE `entry`='2245'; -- Syndicate Saboteur (62MinG) (86MaxG) https://www.wowhead.com/tbc/npc=2245/syndicate-saboteur
UPDATE `creature_template` SET `MaxLootGold`='317' WHERE `entry`='2246'; -- Syndicate Assassin (68MinG) (93MaxG) https://www.wowhead.com/tbc/npc=2246/syndicate-assassin
UPDATE `creature_template` SET `MaxLootGold`='308' WHERE `entry`='2247'; -- Syndicate Enforcer (68MinG) (94MaxG) https://www.wowhead.com/tbc/npc=2247/syndicate-enforcer
UPDATE `creature_template` SET `MinLootGold`='27', `MaxLootGold`='182' WHERE `entry`='2248'; -- Cave Yeti (46MinG) (65MaxG) (sample size 64)
UPDATE `creature_template` SET `MinLootGold`='32', `MaxLootGold`='197' WHERE `entry`='2249'; -- Ferocious Yeti (49MinG) (69MaxG) (sample size 33)
UPDATE `creature_template` SET `MinLootGold`='28', `MaxLootGold`='196' WHERE `entry`='2250'; -- Mountain Yeti (50MinG) (70MaxG) (sample size 29)
UPDATE `creature_template` SET `MinLootGold`='55', `MaxLootGold`='227' WHERE `entry`='2251'; -- Giant Yeti (53MinG) (74MaxG) (sample size 56)
UPDATE `creature_template` SET `MinLootGold`='39', `MaxLootGold`='244' WHERE `entry`='2252'; -- Crushridge Ogre (54MinG) (75MaxG) (sample size 27)
UPDATE `creature_template` SET `MinLootGold`='52', `MaxLootGold`='257' WHERE `entry`='2253'; -- Crushridge Brute (59MinG) (81MaxG) https://www.wowhead.com/tbc/npc=2253/crushridge-brute
UPDATE `creature_template` SET `MinLootGold`='21', `MaxLootGold`='85' WHERE `entry`='2260'; -- Syndicate Rogue (27MinG) (40MaxG) https://www.wowhead.com/tbc/npc=2260/syndicate-rogue
UPDATE `creature_template` SET `MinLootGold`='10', `MaxLootGold`='71' WHERE `entry`='2261'; -- Syndicate Watchman (26MinG) (38MaxG) (sample size 45)
UPDATE `creature_template` SET `MaxLootGold`='95' WHERE `entry`='2265'; -- Hillsbrad Apprentice Blacksmith (33MinG) (48MaxG) https://www.wowhead.com/tbc/npc=2265/hillsbrad-apprentice-blacksmith
UPDATE `creature_template` SET `MinLootGold`='21', `MaxLootGold`='102' WHERE `entry`='2266'; -- Hillsbrad Farmer (31MinG) (45MaxG) https://www.wowhead.com/tbc/npc=2266/hillsbrad-farmer
UPDATE `creature_template` SET `MinLootGold`='19', `MaxLootGold`='106' WHERE `entry`='2267'; -- Hillsbrad Peasant (32MinG) (47MaxG) https://www.wowhead.com/tbc/npc=2267/hillsbrad-peasant
UPDATE `creature_template` SET `MinLootGold`='21', `MaxLootGold`='120' WHERE `entry`='2268'; -- Hillsbrad Footman (35MinG) (51MaxG) (sample size 28)
UPDATE `creature_template` SET `MinLootGold`='19', `MaxLootGold`='131' WHERE `entry`='2269'; -- Hillsbrad Miner (37MinG) (53MaxG) (sample size 32)
UPDATE `creature_template` SET `MinLootGold`='38', `MaxLootGold`='136' WHERE `entry`='2270'; -- Hillsbrad Sentry (39MinG) (56MaxG) https://www.wowhead.com/tbc/npc=2270/hillsbrad-sentry
UPDATE `creature_template` SET `MinLootGold`='29', `MaxLootGold`='193' WHERE `entry`='2271'; -- Dalaran Shield Guard (49MinG) (69MaxG) (sample size 46)
UPDATE `creature_template` SET `MinLootGold`='28', `MaxLootGold`='194' WHERE `entry`='2272'; -- Dalaran Theurgist (44MinG) (62MaxG) https://www.wowhead.com/tbc/npc=2272/dalaran-theurgist
UPDATE `creature_template` SET `MinLootGold`='25', `MaxLootGold`='125' WHERE `entry`='2283'; -- Ravenclaw Regent (27MinG) (40MaxG) https://www.wowhead.com/tbc/npc=2283/ravenclaw-regent
UPDATE `creature_template` SET `MaxLootGold`='96' WHERE `entry`='2305'; -- Foreman Bonds (40MinG) (58MaxG) https://www.wowhead.com/tbc/npc=2305/foreman-bonds
UPDATE `creature_template` SET `MaxLootGold`='188' WHERE `entry`='2306'; -- Baron Vardus (57MinG) (79MaxG) https://www.wowhead.com/tbc/npc=2306/baron-vardus
UPDATE `creature_template` SET `MaxLootGold`='258' WHERE `entry`='2318'; -- Argus Shadow Mage (50MinG) (70MaxG) https://www.wowhead.com/tbc/npc=2318/argus-shadow-mage
UPDATE `creature_template` SET `MaxLootGold`='232' WHERE `entry`='2319'; -- Syndicate Wizard (47MinG) (66MaxG) https://www.wowhead.com/tbc/npc=2319/syndicate-wizard
UPDATE `creature_template` SET `MinLootGold`='58', `MaxLootGold`='309' WHERE `entry`='2320'; -- Nagaz (67MinG) (93MaxG) https://www.wowhead.com/tbc/npc=2320/nagaz
UPDATE `creature_template` SET `MinLootGold`='4', `MaxLootGold`='29' WHERE `entry`='2324'; -- Blackwood Windtalker (15MinG) (24MaxG) (sample size 25)
UPDATE `creature_template` SET `MaxLootGold`='40' WHERE `entry`='2332'; -- Valdred Moray (26MinG) (39MaxG) https://www.wowhead.com/tbc/npc=2332/valdred-moray
UPDATE `creature_template` SET `MaxLootGold`='174' WHERE `entry`='2335'; -- Magistrate Burnside (40MinG) (57MaxG) https://www.wowhead.com/tbc/npc=2335/magistrate-burnside
UPDATE `creature_template` SET `MinLootGold`='7', `MaxLootGold`='47' WHERE `entry`='2336'; -- Dark Strand Fanatic (19MinG) (30MaxG) (sample size 31)
UPDATE `creature_template` SET `MaxLootGold`='153' WHERE `entry`='2337'; -- Dark Strand Voidcaller (37MinG) (53MaxG) https://www.wowhead.com/tbc/npc=2337/dark-strand-voidcaller
UPDATE `creature_template` SET `MinLootGold`='10', `MaxLootGold`='40' WHERE `entry`='2338'; -- Twilight Disciple (18MinG) (29MaxG) https://www.wowhead.com/tbc/npc=2338/twilight-disciple
UPDATE `creature_template` SET `MinLootGold`='19', `MaxLootGold`='52' WHERE `entry`='2339'; -- Twilight Thug (21MinG) (32MaxG) https://www.wowhead.com/tbc/npc=2339/twilight-thug
UPDATE `creature_template` SET `MinLootGold`='36', `MaxLootGold`='234' WHERE `entry`='2358'; -- Dalaran Summoner (47MinG) (67MaxG) (sample size 42)
UPDATE `creature_template` SET `MinLootGold`='23', `MaxLootGold`='95' WHERE `entry`='2360'; -- Hillsbrad Farmhand (29MinG) (43MaxG) https://www.wowhead.com/tbc/npc=2360/hillsbrad-farmhand
UPDATE `creature_template` SET `MaxLootGold`='68' WHERE `entry`='2368'; -- Daggerspine Shorestalker (42MinG) (60MaxG) https://www.wowhead.com/tbc/npc=2368/daggerspine-shorestalker
UPDATE `creature_template` SET `MinLootGold`='30', `MaxLootGold`='181' WHERE `entry`='2369'; -- Daggerspine Shorehunter (46MinG) (65MaxG) https://www.wowhead.com/tbc/npc=2369/daggerspine-shorehunter
UPDATE `creature_template` SET `MaxLootGold`='118' WHERE `entry`='2370'; -- Daggerspine Screamer (41MinG) (58MaxG) https://www.wowhead.com/tbc/npc=2370/daggerspine-screamer
UPDATE `creature_template` SET `MinLootGold`='28', `MaxLootGold`='197' WHERE `entry`='2371'; -- Daggerspine Siren (45MinG) (63MaxG) (sample size 43)
UPDATE `creature_template` SET `MinLootGold`='19', `MaxLootGold`='134' WHERE `entry`='2372'; -- Mudsnout Gnoll (37MinG) (53MaxG) https://www.wowhead.com/tbc/npc=2372/mudsnout-gnoll
UPDATE `creature_template` SET `MinLootGold`='28', `MaxLootGold`='145' WHERE `entry`='2373'; -- Mudsnout Shaman (35MinG) (51MaxG) https://www.wowhead.com/tbc/npc=2373/mudsnout-shaman
UPDATE `creature_template` SET `MaxLootGold`='149' WHERE `entry`='2374'; -- Torn Fin Muckdweller (41MinG) (59MaxG) https://www.wowhead.com/tbc/npc=2374/torn-fin-muckdweller
UPDATE `creature_template` SET `MinLootGold`='26', `MaxLootGold`='147' WHERE `entry`='2375'; -- Torn Fin Coastrunner (43MinG) (61MaxG) (sample size 25)
UPDATE `creature_template` SET `MinLootGold`='28', `MaxLootGold`='177' WHERE `entry`='2376'; -- Torn Fin Oracle (42MinG) (60MaxG) (sample size 43)
UPDATE `creature_template` SET `MinLootGold`='36', `MaxLootGold`='197' WHERE `entry`='2377'; -- Torn Fin Tidehunter (44MinG) (63MaxG) (sample size 52)
UPDATE `creature_template` SET `MaxLootGold`='122' WHERE `entry`='2387'; -- Hillsbrad Councilman (32MinG) (47MaxG) https://www.wowhead.com/tbc/npc=2387/hillsbrad-councilman
UPDATE `creature_template` SET `MinLootGold`='29', `MaxLootGold`='95' WHERE `entry`='2403'; -- Farmer Getz (32MinG) (47MaxG) https://www.wowhead.com/tbc/npc=2403/farmer-getz
UPDATE `creature_template` SET `MaxLootGold`='80' WHERE `entry`='2404'; -- Blacksmith Verringtan (37MinG) (53MaxG) https://www.wowhead.com/tbc/npc=2404/blacksmith-verringtan
UPDATE `creature_template` SET `MaxLootGold`='231' WHERE `entry`='2411'; -- Ricter (51MinG) (71MaxG) https://www.wowhead.com/tbc/npc=2411/ricter
UPDATE `creature_template` SET `MaxLootGold`='190' WHERE `entry`='2412'; -- Alina (51MinG) (71MaxG) https://www.wowhead.com/tbc/npc=2412/alina
UPDATE `creature_template` SET `MaxLootGold`='202' WHERE `entry`='2413'; -- Dermot (54MinG) (75MaxG) https://www.wowhead.com/tbc/npc=2413/dermot
UPDATE `creature_template` SET `MinLootGold`='63', `MaxLootGold`='209' WHERE `entry`='2414'; -- Kegan Darkmar (100MinG) (150MaxG) https://www.wowhead.com/tbc/npc=2414/kegan-darkmar
UPDATE `creature_template` SET `MinLootGold`='42', `MaxLootGold`='154' WHERE `entry`='2415'; -- Warden Belamoore (51MinG) (71MaxG) https://www.wowhead.com/tbc/npc=2415/warden-belamoore
UPDATE `creature_template` SET `MaxLootGold`='942' WHERE `entry`='2417'; -- Grel'borg the Miser (216MinG) (287MaxG) https://www.wowhead.com/tbc/npc=2417/grelborg-the-miser
UPDATE `creature_template` SET `MaxLootGold`='320' WHERE `entry`='2423'; -- Lord Aliden Perenolde (66MinG) (91MaxG) https://www.wowhead.com/tbc/npc=2423/lord-aliden-perenolde
UPDATE `creature_template` SET `MaxLootGold`='56' WHERE `entry`='2427'; -- Jailor Eston (32MinG) (47MaxG) https://www.wowhead.com/tbc/npc=2427/jailor-eston
UPDATE `creature_template` SET `MaxLootGold`='102' WHERE `entry`='2428'; -- Jailor Marlgen (31MinG) (46MaxG) https://www.wowhead.com/tbc/npc=2428/jailor-marlgen
UPDATE `creature_template` SET `MaxLootGold`='224' WHERE `entry`='2431'; -- Jailor Borhuin (60MinG) (84MaxG) https://www.wowhead.com/tbc/npc=2431/jailor-borhuin
UPDATE `creature_template` SET `MinLootGold`='1', `MaxLootGold`='704' WHERE `entry`='2433'; -- Helcular's Remains (272MinG) (360MaxG) https://www.wowhead.com/tbc/npc=2433/helculars-remains
UPDATE `creature_template` SET `MinLootGold`='1', `MaxLootGold`='489' WHERE `entry`='2434'; -- Shadowy Assassin (65MinG) (89MaxG) https://www.wowhead.com/tbc/npc=2434/shadowy-assassin
UPDATE `creature_template` SET `MaxLootGold`='154' WHERE `entry`='2440'; -- Drunken Footpad (50MinG) (70MaxG) https://www.wowhead.com/tbc/npc=2440/drunken-footpad
UPDATE `creature_template` SET `MinLootGold`='20', `MaxLootGold`='80' WHERE `entry`='2448'; -- Clerk Horrace Whitesteed (37MinG) (54MaxG) https://www.wowhead.com/tbc/npc=2448/clerk-horrace-whitesteed
UPDATE `creature_template` SET `MaxLootGold`='71' WHERE `entry`='2449'; -- Citizen Wilkes (34MinG) (50MaxG) https://www.wowhead.com/tbc/npc=2449/citizen-wilkes
UPDATE `creature_template` SET `MaxLootGold`='114' WHERE `entry`='2450'; -- Miner Hackett (42MinG) (60MaxG) https://www.wowhead.com/tbc/npc=2450/miner-hackett
UPDATE `creature_template` SET `MaxLootGold`='98' WHERE `entry`='2451'; -- Farmer Kalaba (34MinG) (50MaxG) https://www.wowhead.com/tbc/npc=2451/farmer-kalaba
UPDATE `creature_template` SET `MaxLootGold`='223' WHERE `entry`='2452'; -- Skhowl (59MinG) (83MaxG) https://www.wowhead.com/tbc/npc=2452/skhowl
UPDATE `creature_template` SET `MinLootGold`='27', `MaxLootGold`='145' WHERE `entry`='2503'; -- Hillsbrad Foreman (40MinG) (57MaxG) https://www.wowhead.com/tbc/npc=2503/hillsbrad-foreman
UPDATE `creature_template` SET `MinLootGold`='63', `MaxLootGold`='328' WHERE `entry`='2529'; -- Son of Arugal (131MinG) (176MaxG) https://www.wowhead.com/tbc/npc=2529/son-of-arugal
UPDATE `creature_template` SET `MaxLootGold`='363' WHERE `entry`='2530'; -- Yenniku (74MinG) (102MaxG) https://www.wowhead.com/tbc/npc=2530/yenniku
UPDATE `creature_template` SET `MaxLootGold`='343' WHERE `entry`='2534'; -- Zanzil the Outcast (79MinG) (108MaxG) https://www.wowhead.com/tbc/npc=2534/zanzil-the-outcast
UPDATE `creature_template` SET `MaxLootGold`='392' WHERE `entry`='2535'; -- Maury "Club Foot" Wilkins (80MinG) (110MaxG) https://www.wowhead.com/tbc/npc=2535/maury-club-foot-wilkins
UPDATE `creature_template` SET `MaxLootGold`='288' WHERE `entry`='2536'; -- Jon-Jon the Crow (80MinG) (110MaxG) https://www.wowhead.com/tbc/npc=2536/jon-jon-the-crow
UPDATE `creature_template` SET `MaxLootGold`='427' WHERE `entry`='2537'; -- Chucky "Ten Thumbs" (80MinG) (110MaxG) https://www.wowhead.com/tbc/npc=2537/chucky-ten-thumbs
UPDATE `creature_template` SET `MaxLootGold`='316' WHERE `entry`='2541'; -- Lord Sakrasis (74MinG) (101MaxG) https://www.wowhead.com/tbc/npc=2541/lord-sakrasis
UPDATE `creature_template` SET `MaxLootGold`='237' WHERE `entry`='2545'; -- "Pretty Boy" Duncan (68MinG) (94MaxG) https://www.wowhead.com/tbc/npc=2545/pretty-boy-duncan
UPDATE `creature_template` SET `MinLootGold`='88', `MaxLootGold`='408' WHERE `entry`='2546'; -- Fleet Master Firallon (91MinG) (124MaxG) https://www.wowhead.com/tbc/npc=2546/fleet-master-firallon
UPDATE `creature_template` SET `MaxLootGold`='323' WHERE `entry`='2547'; -- Ironpatch (78MinG) (107MaxG) https://www.wowhead.com/tbc/npc=2547/ironpatch
UPDATE `creature_template` SET `MaxLootGold`='479' WHERE `entry`='2548'; -- Captain Keelhaul (92MinG) (125MaxG) https://www.wowhead.com/tbc/npc=2548/captain-keelhaul
UPDATE `creature_template` SET `MaxLootGold`='390' WHERE `entry`='2549'; -- Garr Salthoof (76MinG) (104MaxG) https://www.wowhead.com/tbc/npc=2549/garr-salthoof
UPDATE `creature_template` SET `MaxLootGold`='385' WHERE `entry`='2550'; -- Captain Stillwater (79MinG) (108MaxG) https://www.wowhead.com/tbc/npc=2550/captain-stillwater
UPDATE `creature_template` SET `MinLootGold`='72', `MaxLootGold`='253' WHERE `entry`='2551'; -- Brutus (93MinG) (126MaxG) https://www.wowhead.com/tbc/npc=2551/brutus
UPDATE `creature_template` SET `MinLootGold`='36', `MaxLootGold`='170' WHERE `entry`='2552'; -- Witherbark Troll (46MinG) (65MaxG) https://www.wowhead.com/tbc/npc=2552/witherbark-troll
UPDATE `creature_template` SET `MinLootGold`='33', `MaxLootGold`='161' WHERE `entry`='2553'; -- Witherbark Shadowcaster (43MinG) (61MaxG) https://www.wowhead.com/tbc/npc=2553/witherbark-shadowcaster
UPDATE `creature_template` SET `MinLootGold`='30', `MaxLootGold`='193' WHERE `entry`='2554'; -- Witherbark Axe Thrower (50MinG) (70MaxG) https://www.wowhead.com/tbc/npc=2554/witherbark-axe-thrower
UPDATE `creature_template` SET `MinLootGold`='35', `MaxLootGold`='222' WHERE `entry`='2555'; -- Witherbark Witch Doctor (48MinG) (68MaxG) https://www.wowhead.com/tbc/npc=2555/witherbark-witch-doctor
UPDATE `creature_template` SET `MinLootGold`='37', `MaxLootGold`='245' WHERE `entry`='2556'; -- Witherbark Headhunter (54MinG) (75MaxG) https://www.wowhead.com/tbc/npc=2556/witherbark-headhunter
UPDATE `creature_template` SET `MinLootGold`='43', `MaxLootGold`='262' WHERE `entry`='2557'; -- Witherbark Shadow Hunter (54MinG) (76MaxG) https://www.wowhead.com/tbc/npc=2557/witherbark-shadow-hunter
UPDATE `creature_template` SET `MinLootGold`='29', `MaxLootGold`='193' WHERE `entry`='2562'; -- Boulderfist Ogre (50MinG) (70MaxG) (sample size 26)
UPDATE `creature_template` SET `MinLootGold`='51', `MaxLootGold`='227' WHERE `entry`='2564'; -- Boulderfist Enforcer (53MinG) (74MaxG) (sample size 29)
UPDATE `creature_template` SET `MinLootGold`='54', `MaxLootGold`='264' WHERE `entry`='2566'; -- Boulderfist Brute (59MinG) (81MaxG) (sample size 33)
UPDATE `creature_template` SET `MinLootGold`='46', `MaxLootGold`='281' WHERE `entry`='2567'; -- Boulderfist Magus (51MinG) (71MaxG) https://www.wowhead.com/tbc/npc=2567/boulderfist-magus
UPDATE `creature_template` SET `MinLootGold`='40', `MaxLootGold`='264' WHERE `entry`='2572'; -- Drywhisker Kobold (61MinG) (84MaxG) (sample size 79)
UPDATE `creature_template` SET `MinLootGold`='60', `MaxLootGold`='295' WHERE `entry`='2573'; -- Drywhisker Surveyor (52MinG) (73MaxG) (sample size 25)
UPDATE `creature_template` SET `MinLootGold`='40', `MaxLootGold`='276' WHERE `entry`='2574'; -- Drywhisker Digger (62MinG) (85MaxG) (sample size 50)
UPDATE `creature_template` SET `MaxLootGold`='146' WHERE `entry`='2575'; -- Dark Iron Supplier (45MinG) (63MaxG) https://www.wowhead.com/tbc/npc=2575/dark-iron-supplier
UPDATE `creature_template` SET `MaxLootGold`='134' WHERE `entry`='2577'; -- Dark Iron Shadowcaster (43MinG) (61MaxG) https://www.wowhead.com/tbc/npc=2577/dark-iron-shadowcaster
UPDATE `creature_template` SET `MinLootGold`='32', `MaxLootGold`='191' WHERE `entry`='2581'; -- Dabyrie Militia (51MinG) (71MaxG) https://www.wowhead.com/tbc/npc=2581/dabyrie-militia
UPDATE `creature_template` SET `MinLootGold`='40', `MaxLootGold`='170' WHERE `entry`='2582'; -- Dabyrie Laborer (46MinG) (65MaxG) https://www.wowhead.com/tbc/npc=2582/dabyrie-laborer
UPDATE `creature_template` SET `MinLootGold`='27', `MaxLootGold`='181' WHERE `entry`='2586'; -- Syndicate Highwayman (46MinG) (65MaxG) https://www.wowhead.com/tbc/npc=2586/syndicate-highwayman
UPDATE `creature_template` SET `MinLootGold`='35', `MaxLootGold`='192' WHERE `entry`='2587'; -- Syndicate Pathstalker (50MinG) (70MaxG) https://www.wowhead.com/tbc/npc=2587/syndicate-pathstalker
UPDATE `creature_template` SET `MinLootGold`='34', `MaxLootGold`='197' WHERE `entry`='2589'; -- Syndicate Mercenary (49MinG) (69MaxG) https://www.wowhead.com/tbc/npc=2589/syndicate-mercenary
UPDATE `creature_template` SET `MinLootGold`='46', `MaxLootGold`='312' WHERE `entry`='2595'; -- Daggerspine Raider (65MinG) (90MaxG) (sample size 53)
UPDATE `creature_template` SET `MaxLootGold`='287' WHERE `entry`='2596'; -- Daggerspine Sorceress (56MinG) (78MaxG) https://www.wowhead.com/tbc/npc=2596/daggerspine-sorceress
UPDATE `creature_template` SET `MinLootGold`='185', `MaxLootGold`='783' WHERE `entry`='2597'; -- Lord Falconcrest (533MinG) (700MaxG) https://www.wowhead.com/tbc/npc=2597/lord-falconcrest
UPDATE `creature_template` SET `MinLootGold`='77', `MaxLootGold`='808' WHERE `entry`='2598'; -- Darbel Montrose (485MinG) (639MaxG) https://www.wowhead.com/tbc/npc=2598/darbel-montrose
UPDATE `creature_template` SET `MaxLootGold`='179' WHERE `entry`='2600'; -- Singer (49MinG) (69MaxG) https://www.wowhead.com/tbc/npc=2600/singer
UPDATE `creature_template` SET `MinLootGold`='326', `MaxLootGold`='780' WHERE `entry`='2602'; -- Ruul Onestone (326MinG) (590MaxG) https://www.wowhead.com/tbc/npc=2602/ruul-onestone
UPDATE `creature_template` SET `MinLootGold`='63', `MaxLootGold`='315' WHERE `entry`='2604'; -- Molok the Crusher (66MinG) (91MaxG) https://www.wowhead.com/tbc/npc=2604/molok-the-crusher
UPDATE `creature_template` SET `MinLootGold`='61', `MaxLootGold`='362' WHERE `entry`='2605'; -- Zalas Witherbark (61MinG) (84MaxG) https://www.wowhead.com/tbc/npc=2605/zalas-witherbark
UPDATE `creature_template` SET `MinLootGold`='60', `MaxLootGold`='330' WHERE `entry`='2606'; -- Nimar the Slayer (60MinG) (84MaxG) https://www.wowhead.com/tbc/npc=2606/nimar-the-slayer
UPDATE `creature_template` SET `MaxLootGold`='504' WHERE `entry`='2607'; -- Prince Galen Trollbane (259MinG) (343MaxG) https://www.wowhead.com/tbc/npc=2607/prince-galen-trollbane
UPDATE `creature_template` SET `MaxLootGold`='611' WHERE `entry`='2612'; -- Lieutenant Valorcall (215MinG) (285MaxG) https://www.wowhead.com/tbc/npc=2612/lieutenant-valorcall
UPDATE `creature_template` SET `MinLootGold`='45', `MaxLootGold`='188' WHERE `entry`='2618'; -- Hammerfall Peon (53MinG) (74MaxG) https://www.wowhead.com/tbc/npc=2618/hammerfall-peon
UPDATE `creature_template` SET `MinLootGold`='39', `MaxLootGold`='244' WHERE `entry`='2619'; -- Hammerfall Grunt (54MinG) (75MaxG) https://www.wowhead.com/tbc/npc=2619/hammerfall-grunt
UPDATE `creature_template` SET `MinLootGold`='67', `MaxLootGold`='347' WHERE `entry`='2624'; -- Gazban (67MinG) (93MaxG) https://www.wowhead.com/tbc/npc=2624/gazban
UPDATE `creature_template` SET `MinLootGold`='33', `MaxLootGold`='222' WHERE `entry`='2628'; -- Dalaran Worker (53MinG) (74MaxG) https://www.wowhead.com/tbc/npc=2628/dalaran-worker
UPDATE `creature_template` SET `MinLootGold`='71', `MaxLootGold`='456' WHERE `entry`='2639'; -- Vilebranch Axe Thrower (86MinG) (118MaxG) https://www.wowhead.com/tbc/npc=2639/vilebranch-axe-thrower
UPDATE `creature_template` SET `MaxLootGold`='476' WHERE `entry`='2640'; -- Vilebranch Witch Doctor (79MinG) (108MaxG) https://www.wowhead.com/tbc/npc=2640/vilebranch-witch-doctor
UPDATE `creature_template` SET `MinLootGold`='66', `MaxLootGold`='357' WHERE `entry`='2649'; -- Witherbark Scalper (71MinG) (98MaxG) https://www.wowhead.com/tbc/npc=2649/witherbark-scalper
UPDATE `creature_template` SET `MaxLootGold`='359' WHERE `entry`='2650'; -- Witherbark Zealot (74MinG) (102MaxG) https://www.wowhead.com/tbc/npc=2650/witherbark-zealot
UPDATE `creature_template` SET `MinLootGold`='79', `MaxLootGold`='392' WHERE `entry`='2651'; -- Witherbark Hideskinner (75MinG) (103MaxG) (sample size 23)
UPDATE `creature_template` SET `MaxLootGold`='415' WHERE `entry`='2652'; -- Witherbark Venomblood (76MinG) (104MaxG) https://www.wowhead.com/tbc/npc=2652/witherbark-venomblood
UPDATE `creature_template` SET `MaxLootGold`='445' WHERE `entry`='2653'; -- Witherbark Sadist (81MinG) (111MaxG) https://www.wowhead.com/tbc/npc=2653/witherbark-sadist
UPDATE `creature_template` SET `MinLootGold`='68', `MaxLootGold`='294' WHERE `entry`='2655'; -- Green Sludge (89MinG) (121MaxG) https://www.wowhead.com/tbc/npc=2655/green-sludge
UPDATE `creature_template` SET `MinLootGold`='52', `MaxLootGold`='240' WHERE `entry`='2656'; -- Jade Ooze (94MinG) (128MaxG) https://www.wowhead.com/tbc/npc=2656/jade-ooze
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='2662'; -- Port Master Szik (32MinG) (161MaxG) https://www.wowhead.com/tbc/npc=2662/port-master-szik
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='2674'; -- Advanced Target Dummy (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=2674/advanced-target-dummy
UPDATE `creature_template` SET `MinLootGold`='69', `MaxLootGold`='426' WHERE `entry`='2691'; -- Highvale Outrunner (78MinG) (107MaxG) https://www.wowhead.com/tbc/npc=2691/highvale-outrunner
UPDATE `creature_template` SET `MaxLootGold`='440' WHERE `entry`='2692'; -- Highvale Scout (81MinG) (111MaxG) https://www.wowhead.com/tbc/npc=2692/highvale-scout
UPDATE `creature_template` SET `MinLootGold`='84', `MaxLootGold`='456' WHERE `entry`='2693'; -- Highvale Marksman (88MinG) (120MaxG) https://www.wowhead.com/tbc/npc=2693/highvale-marksman
UPDATE `creature_template` SET `MinLootGold`='80', `MaxLootGold`='501' WHERE `entry`='2694'; -- Highvale Ranger (79MinG) (108MaxG) https://www.wowhead.com/tbc/npc=2694/highvale-ranger
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='2707'; -- Shadra (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=2707/shadra
UPDATE `creature_template` SET `MaxLootGold`='168' WHERE `entry`='2714'; -- Forsaken Courier (57MinG) (79MaxG) https://www.wowhead.com/tbc/npc=2714/forsaken-courier
UPDATE `creature_template` SET `MaxLootGold`='147' WHERE `entry`='2716'; -- Dustbelcher Wyrmhunter (71MinG) (98MaxG) https://www.wowhead.com/tbc/npc=2716/dustbelcher-wyrmhunter
UPDATE `creature_template` SET `MaxLootGold`='165' WHERE `entry`='2718'; -- Dustbelcher Shaman (67MinG) (92MaxG) https://www.wowhead.com/tbc/npc=2718/dustbelcher-shaman
UPDATE `creature_template` SET `MaxLootGold`='243' WHERE `entry`='2721'; -- Forsaken Bodyguard (54MinG) (76MaxG) https://www.wowhead.com/tbc/npc=2721/forsaken-bodyguard
UPDATE `creature_template` SET `MinLootGold`='56', `MaxLootGold`='285' WHERE `entry`='2723'; -- Stone Golem (65MinG) (90MaxG) https://www.wowhead.com/tbc/npc=2723/stone-golem
UPDATE `creature_template` SET `MaxLootGold`='357' WHERE `entry`='2725'; -- Scalding Whelp (66MinG) (91MaxG) https://www.wowhead.com/tbc/npc=2725/scalding-whelp
UPDATE `creature_template` SET `MaxLootGold`='227' WHERE `entry`='2733'; -- Apothecary Jorell (62MinG) (85MaxG) https://www.wowhead.com/tbc/npc=2733/apothecary-jorell
UPDATE `creature_template` SET `MaxLootGold`='251' WHERE `entry`='2739'; -- Shadowforge Tunneler (59MinG) (81MaxG) https://www.wowhead.com/tbc/npc=2739/shadowforge-tunneler
UPDATE `creature_template` SET `MaxLootGold`='264' WHERE `entry`='2740'; -- Shadowforge Darkweaver (51MinG) (71MaxG) https://www.wowhead.com/tbc/npc=2740/shadowforge-darkweaver
UPDATE `creature_template` SET `MaxLootGold`='315' WHERE `entry`='2742'; -- Shadowforge Chanter (59MinG) (82MaxG) https://www.wowhead.com/tbc/npc=2742/shadowforge-chanter
UPDATE `creature_template` SET `MinLootGold`='47', `MaxLootGold`='312' WHERE `entry`='2743'; -- Shadowforge Warrior (65MinG) (90MaxG) https://www.wowhead.com/tbc/npc=2743/shadowforge-warrior
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='2755'; -- Myzrael (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=2755/myzrael
UPDATE `creature_template` SET `MinLootGold`='55', `MaxLootGold`='126' WHERE `entry`='2765'; -- Znort (68MinG) (94MaxG) https://www.wowhead.com/tbc/npc=2765/znort
UPDATE `creature_template` SET `MaxLootGold`='306' WHERE `entry`='2779'; -- Prince Nazjak (72MinG) (99MaxG) https://www.wowhead.com/tbc/npc=2779/prince-nazjak
UPDATE `creature_template` SET `MaxLootGold`='237' WHERE `entry`='2793'; -- Kor'gresh Coldrage (60MinG) (83MaxG) https://www.wowhead.com/tbc/npc=2793/korgresh-coldrage
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='2794'; -- Summoned Guardian (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=2794/summoned-guardian
UPDATE `creature_template` SET `MinLootGold`='56', `MaxLootGold`='334' WHERE `entry`='2893'; -- Stonevault Bonesnapper (66MinG) (91MaxG) https://www.wowhead.com/tbc/npc=2893/stonevault-bonesnapper
UPDATE `creature_template` SET `MaxLootGold`='353' WHERE `entry`='2894'; -- Stonevault Shaman (63MinG) (87MaxG) https://www.wowhead.com/tbc/npc=2894/stonevault-shaman
UPDATE `creature_template` SET `MaxLootGold`='197' WHERE `entry`='2906'; -- Dustbelcher Warrior (59MinG) (81MaxG) https://www.wowhead.com/tbc/npc=2906/dustbelcher-warrior
UPDATE `creature_template` SET `MinLootGold`='45', `MaxLootGold`='210' WHERE `entry`='2907'; -- Dustbelcher Mystic (55MinG) (77MaxG) https://www.wowhead.com/tbc/npc=2907/dustbelcher-mystic
UPDATE `creature_template` SET `MaxLootGold`='346' WHERE `entry`='2927'; -- Vicious Owlbeast (77MinG) (106MaxG) https://www.wowhead.com/tbc/npc=2927/vicious-owlbeast
UPDATE `creature_template` SET `MaxLootGold`='449' WHERE `entry`='2928'; -- Primitive Owlbeast (81MinG) (111MaxG) https://www.wowhead.com/tbc/npc=2928/primitive-owlbeast
UPDATE `creature_template` SET `MinLootGold`='76', `MaxLootGold`='495' WHERE `entry`='2929'; -- Savage Owlbeast (89MinG) (121MaxG) https://www.wowhead.com/tbc/npc=2929/savage-owlbeast
UPDATE `creature_template` SET `MinLootGold`='80' WHERE `entry`='2932'; -- Magregan Deepshadow (249MinG) (330MaxG) https://www.wowhead.com/tbc/npc=2932/magregan-deepshadow
UPDATE `creature_template` SET `MinLootGold`='107', `MaxLootGold`='534' WHERE `entry`='2937'; -- Dagun the Ravenous (291MinG) (385MaxG) https://www.wowhead.com/tbc/npc=2937/dagun-the-ravenous
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='2942'; -- Dylan Bissel (1MinG) (63MaxG) https://www.wowhead.com/tbc/npc=2942/dylan-bissel
UPDATE `creature_template` SET `MaxLootGold`='270' WHERE `entry`='2944'; -- Boss Tho'grun (76MinG) (105MaxG) https://www.wowhead.com/tbc/npc=2944/boss-thogrun
UPDATE `creature_template` SET `MaxLootGold`='186' WHERE `entry`='2945'; -- Murdaloc (75MinG) (103MaxG) https://www.wowhead.com/tbc/npc=2945/murdaloc
UPDATE `creature_template` SET `MinLootGold`='1' WHERE `entry`='2949'; -- Palemane Tanner (4MinG) (10MaxG) https://www.wowhead.com/tbc/npc=2949/palemane-tanner
UPDATE `creature_template` SET `MinLootGold`='2' WHERE `entry`='2950'; -- Palemane Skinner (5MinG) (11MaxG) https://www.wowhead.com/tbc/npc=2950/palemane-skinner
UPDATE `creature_template` SET `MinLootGold`='1' WHERE `entry`='2951'; -- Palemane Poacher (6MinG) (13MaxG) https://www.wowhead.com/tbc/npc=2951/palemane-poacher
UPDATE `creature_template` SET `MaxLootGold`='5' WHERE `entry`='2952'; -- Bristleback Quilboar (1MinG) (7MaxG) (sample size 50)
UPDATE `creature_template` SET `MinLootGold`='1' WHERE `entry`='2962'; -- Windfury Harpy (6MinG) (13MaxG) (sample size 28)
UPDATE `creature_template` SET `MinLootGold`='2' WHERE `entry`='2963'; -- Windfury Wind Witch (8MinG) (15MaxG) https://www.wowhead.com/tbc/npc=2963/windfury-wind-witch
UPDATE `creature_template` SET `MinLootGold`='2', `MaxLootGold`='15' WHERE `entry`='2964'; -- Windfury Sorceress (8MinG) (16MaxG) (sample size 24)
UPDATE `creature_template` SET `MinLootGold`='2', `MaxLootGold`='16' WHERE `entry`='2965'; -- Windfury Matriarch (10MinG) (18MaxG) (sample size 26)
UPDATE `creature_template` SET `MinLootGold`='2' WHERE `entry`='2967'; -- Galak Centaur (10MinG) (18MaxG) https://www.wowhead.com/tbc/npc=2967/galak-centaur
UPDATE `creature_template` SET `MinLootGold`='1', `MaxLootGold`='7' WHERE `entry`='2975'; -- Venture Co. Hireling (4MinG) (10MaxG) (sample size 24)
UPDATE `creature_template` SET `MinLootGold`='1' WHERE `entry`='2976'; -- Venture Co. Laborer (6MinG) (13MaxG) https://www.wowhead.com/tbc/npc=2976/venture-co-laborer
UPDATE `creature_template` SET `MinLootGold`='1' WHERE `entry`='2977'; -- Venture Co. Taskmaster (7MinG) (13MaxG) https://www.wowhead.com/tbc/npc=2977/venture-co-taskmaster
UPDATE `creature_template` SET `MinLootGold`='2', `MaxLootGold`='14' WHERE `entry`='2978'; -- Venture Co. Worker (8MinG) (15MaxG) (sample size 36)
UPDATE `creature_template` SET `MinLootGold`='4', `MaxLootGold`='15' WHERE `entry`='2979'; -- Venture Co. Supervisor (9MinG) (17MaxG) (sample size 22)
UPDATE `creature_template` SET `MinLootGold`='1' WHERE `entry`='2989'; -- Bael'dun Digger (6MinG) (13MaxG) https://www.wowhead.com/tbc/npc=2989/baeldun-digger
UPDATE `creature_template` SET `MinLootGold`='4' WHERE `entry`='2990'; -- Bael'dun Appraiser (7MinG) (14MaxG) https://www.wowhead.com/tbc/npc=2990/baeldun-appraiser
UPDATE `creature_template` SET `MinLootGold`='5' WHERE `entry`='3051'; -- Supervisor Fizsprocket (13MinG) (21MaxG) https://www.wowhead.com/tbc/npc=3051/supervisor-fizsprocket
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='3083'; -- Honor Guard (199MinG) (265MaxG) https://www.wowhead.com/tbc/npc=3083/honor-guard
UPDATE `creature_template` SET `MinLootGold`='61', `MaxLootGold`='305' WHERE `entry`='3094'; -- Unseen (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=3094/unseen
UPDATE `creature_template` SET `MinLootGold`='1' WHERE `entry`='3101'; -- Vile Familiar (2MinG) (7MaxG) https://www.wowhead.com/tbc/npc=3101/vile-familiar
UPDATE `creature_template` SET `MinLootGold`='2' WHERE `entry`='3103'; -- Makrura Clacker (5MinG) (12MaxG) https://www.wowhead.com/tbc/npc=3103/makrura-clacker
UPDATE `creature_template` SET `MinLootGold`='1' WHERE `entry`='3104'; -- Makrura Shellhide (5MinG) (12MaxG) https://www.wowhead.com/tbc/npc=3104/makrura-shellhide
UPDATE `creature_template` SET `MinLootGold`='3' WHERE `entry`='3111'; -- Razormane Quilboar (5MinG) (12MaxG) https://www.wowhead.com/tbc/npc=3111/razormane-quilboar
UPDATE `creature_template` SET `MinLootGold`='4' WHERE `entry`='3112'; -- Razormane Scout (7MinG) (13MaxG) https://www.wowhead.com/tbc/npc=3112/razormane-scout
UPDATE `creature_template` SET `MinLootGold`='2' WHERE `entry`='3113'; -- Razormane Dustrunner (7MinG) (15MaxG) https://www.wowhead.com/tbc/npc=3113/razormane-dustrunner
UPDATE `creature_template` SET `MinLootGold`='3' WHERE `entry`='3114'; -- Razormane Battleguard (9MinG) (17MaxG) https://www.wowhead.com/tbc/npc=3114/razormane-battleguard
UPDATE `creature_template` SET `MinLootGold`='3' WHERE `entry`='3115'; -- Dustwind Harpy (8MinG) (15MaxG) https://www.wowhead.com/tbc/npc=3115/dustwind-harpy
UPDATE `creature_template` SET `MinLootGold`='5' WHERE `entry`='3116'; -- Dustwind Pillager (7MinG) (14MaxG) https://www.wowhead.com/tbc/npc=3116/dustwind-pillager
UPDATE `creature_template` SET `MinLootGold`='3' WHERE `entry`='3117'; -- Dustwind Savage (9MinG) (17MaxG) https://www.wowhead.com/tbc/npc=3117/dustwind-savage
UPDATE `creature_template` SET `MinLootGold`='10' WHERE `entry`='3118'; -- Dustwind Storm Witch (11MinG) (19MaxG) https://www.wowhead.com/tbc/npc=3118/dustwind-storm-witch
UPDATE `creature_template` SET `MinLootGold`='4' WHERE `entry`='3119'; -- Kolkar Drudge (5MinG) (12MaxG) https://www.wowhead.com/tbc/npc=3119/kolkar-drudge
UPDATE `creature_template` SET `MinLootGold`='1' WHERE `entry`='3128'; -- Kul Tiras Sailor (4MinG) (10MaxG) https://www.wowhead.com/tbc/npc=3128/kul-tiras-sailor
UPDATE `creature_template` SET `MinLootGold`='1' WHERE `entry`='3129'; -- Kul Tiras Marine (5MinG) (12MaxG) https://www.wowhead.com/tbc/npc=3129/kul-tiras-marine
UPDATE `creature_template` SET `MinLootGold`='3' WHERE `entry`='3195'; -- Burning Blade Thug (8MinG) (15MaxG) https://www.wowhead.com/tbc/npc=3195/burning-blade-thug
UPDATE `creature_template` SET `MinLootGold`='2' WHERE `entry`='3196'; -- Burning Blade Neophyte (9MinG) (16MaxG) https://www.wowhead.com/tbc/npc=3196/burning-blade-neophyte
UPDATE `creature_template` SET `MinLootGold`='2', `MaxLootGold`='15' WHERE `entry`='3197'; -- Burning Blade Fanatic (9MinG) (17MaxG) (sample size 46)
UPDATE `creature_template` SET `MinLootGold`='2', `MaxLootGold`='17' WHERE `entry`='3198'; -- Burning Blade Apprentice (10MinG) (18MaxG) (sample size 22)
UPDATE `creature_template` SET `MinLootGold`='2' WHERE `entry`='3199'; -- Burning Blade Cultist (10MinG) (18MaxG) https://www.wowhead.com/tbc/npc=3199/burning-blade-cultist
UPDATE `creature_template` SET `MinLootGold`='3' WHERE `entry`='3203'; -- Fizzle Darkstorm (12MinG) (21MaxG) https://www.wowhead.com/tbc/npc=3203/fizzle-darkstorm
UPDATE `creature_template` SET `MinLootGold`='12' WHERE `entry`='3204'; -- Gazz'uz (16MinG) (26MaxG) https://www.wowhead.com/tbc/npc=3204/gazzuz
UPDATE `creature_template` SET `MinLootGold`='5' WHERE `entry`='3206'; -- Voodoo Troll (7MinG) (15MaxG) https://www.wowhead.com/tbc/npc=3206/voodoo-troll
UPDATE `creature_template` SET `MinLootGold`='2' WHERE `entry`='3207'; -- Hexed Troll (7MinG) (15MaxG) https://www.wowhead.com/tbc/npc=3207/hexed-troll
UPDATE `creature_template` SET `MinLootGold`='2' WHERE `entry`='3232'; -- Bristleback Interloper (9MinG) (17MaxG) https://www.wowhead.com/tbc/npc=3232/bristleback-interloper
UPDATE `creature_template` SET `MinLootGold`='13', `MaxLootGold`='49' WHERE `entry`='3258'; -- Bristleback Hunter (20MinG) (31MaxG) https://www.wowhead.com/tbc/npc=3258/bristleback-hunter
UPDATE `creature_template` SET `MinLootGold`='7', `MaxLootGold`='47' WHERE `entry`='3260'; -- Bristleback Water Seeker (18MinG) (29MaxG) https://www.wowhead.com/tbc/npc=3260/bristleback-water-seeker
UPDATE `creature_template` SET `MinLootGold`='9', `MaxLootGold`='59' WHERE `entry`='3261'; -- Bristleback Thornweaver (21MinG) (33MaxG) (sample size 35)
UPDATE `creature_template` SET `MinLootGold`='12', `MaxLootGold`='62' WHERE `entry`='3263'; -- Bristleback Geomancer (22MinG) (33MaxG) (sample size 31)
UPDATE `creature_template` SET `MinLootGold`='6', `MaxLootGold`='23' WHERE `entry`='3265'; -- Razormane Hunter (12MinG) (20MaxG) https://www.wowhead.com/tbc/npc=3265/razormane-hunter
UPDATE `creature_template` SET `MinLootGold`='4', `MaxLootGold`='27' WHERE `entry`='3266'; -- Razormane Defender (13MinG) (22MaxG) https://www.wowhead.com/tbc/npc=3266/razormane-defender
UPDATE `creature_template` SET `MinLootGold`='4', `MaxLootGold`='17' WHERE `entry`='3267'; -- Razormane Water Seeker (11MinG) (19MaxG) (sample size 27)
UPDATE `creature_template` SET `MinLootGold`='2', `MaxLootGold`='17' WHERE `entry`='3268'; -- Razormane Thornweaver (10MinG) (18MaxG) (sample size 24)
UPDATE `creature_template` SET `MinLootGold`='4', `MaxLootGold`='27' WHERE `entry`='3269'; -- Razormane Geomancer (12MinG) (21MaxG) https://www.wowhead.com/tbc/npc=3269/razormane-geomancer
UPDATE `creature_template` SET `MinLootGold`='4' WHERE `entry`='3271'; -- Razormane Mystic (14MinG) (23MaxG) https://www.wowhead.com/tbc/npc=3271/razormane-mystic
UPDATE `creature_template` SET `MinLootGold`='3', `MaxLootGold`='27' WHERE `entry`='3272'; -- Kolkar Wrangler (13MinG) (22MaxG) (sample size 29)
UPDATE `creature_template` SET `MinLootGold`='6', `MaxLootGold`='29' WHERE `entry`='3273'; -- Kolkar Stormer (15MinG) (24MaxG) (sample size 29)
UPDATE `creature_template` SET `MinLootGold`='13' WHERE `entry`='3275'; -- Kolkar Marauder (17MinG) (27MaxG) https://www.wowhead.com/tbc/npc=3275/kolkar-marauder
UPDATE `creature_template` SET `MinLootGold`='4', `MaxLootGold`='34' WHERE `entry`='3276'; -- Witchwing Harpy (16MinG) (26MaxG) (sample size 31)
UPDATE `creature_template` SET `MinLootGold`='5', `MaxLootGold`='38' WHERE `entry`='3277'; -- Witchwing Roguefeather (17MinG) (27MaxG) (sample size 22)
UPDATE `creature_template` SET `MinLootGold`='9', `MaxLootGold`='46' WHERE `entry`='3278'; -- Witchwing Slayer (19MinG) (30MaxG) (sample size 24)
UPDATE `creature_template` SET `MaxLootGold`='47' WHERE `entry`='3280'; -- Witchwing Windcaller (20MinG) (30MaxG) https://www.wowhead.com/tbc/npc=3280/witchwing-windcaller
UPDATE `creature_template` SET `MinLootGold`='6', `MaxLootGold`='36' WHERE `entry`='3282'; -- Venture Co. Mercenary (17MinG) (28MaxG) https://www.wowhead.com/tbc/npc=3282/venture-co-mercenary
UPDATE `creature_template` SET `MinLootGold`='10', `MaxLootGold`='36' WHERE `entry`='3283'; -- Venture Co. Enforcer (19MinG) (30MaxG) https://www.wowhead.com/tbc/npc=3283/venture-co-enforcer
UPDATE `creature_template` SET `MinLootGold`='4', `MaxLootGold`='34' WHERE `entry`='3284'; -- Venture Co. Drudger (16MinG) (26MaxG) (sample size 48)
UPDATE `creature_template` SET `MinLootGold`='4', `MaxLootGold`='29' WHERE `entry`='3285'; -- Venture Co. Peon (15MinG) (24MaxG) (sample size 25)
UPDATE `creature_template` SET `MinLootGold`='8', `MaxLootGold`='43' WHERE `entry`='3286'; -- Venture Co. Overseer (20MinG) (32MaxG) https://www.wowhead.com/tbc/npc=3286/venture-co-overseer
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='3310'; -- Doras (205MinG) (273MaxG) https://www.wowhead.com/tbc/npc=3310/doras
UPDATE `creature_template` SET `MinLootGold`='12', `MaxLootGold`='86' WHERE `entry`='3374'; -- Bael'dun Excavator (27MinG) (40MaxG) (sample size 103)
UPDATE `creature_template` SET `MinLootGold`='13', `MaxLootGold`='95' WHERE `entry`='3375'; -- Bael'dun Foreman (29MinG) (43MaxG) (sample size 21)
UPDATE `creature_template` SET `MinLootGold`='17', `MaxLootGold`='102' WHERE `entry`='3376'; -- Bael'dun Soldier (31MinG) (45MaxG) https://www.wowhead.com/tbc/npc=3376/baeldun-soldier
UPDATE `creature_template` SET `MinLootGold`='34', `MaxLootGold`='111' WHERE `entry`='3377'; -- Bael'dun Rifleman (33MinG) (48MaxG) (sample size 22)
UPDATE `creature_template` SET `MaxLootGold`='111' WHERE `entry`='3378'; -- Bael'dun Officer (36MinG) (52MaxG) https://www.wowhead.com/tbc/npc=3378/baeldun-officer
UPDATE `creature_template` SET `MinLootGold`='2' WHERE `entry`='3379'; -- Burning Blade Bruiser (10MinG) (18MaxG) https://www.wowhead.com/tbc/npc=3379/burning-blade-bruiser
UPDATE `creature_template` SET `MinLootGold`='4', `MaxLootGold`='23' WHERE `entry`='3380'; -- Burning Blade Acolyte (11MinG) (19MaxG) https://www.wowhead.com/tbc/npc=3380/burning-blade-acolyte
UPDATE `creature_template` SET `MinLootGold`='3', `MaxLootGold`='27' WHERE `entry`='3381'; -- Southsea Brigand (13MinG) (22MaxG) (sample size 38)
UPDATE `creature_template` SET `MinLootGold`='4', `MaxLootGold`='29' WHERE `entry`='3382'; -- Southsea Cannoneer (14MinG) (24MaxG) (sample size 25)
UPDATE `creature_template` SET `MinLootGold`='5', `MaxLootGold`='38' WHERE `entry`='3385'; -- Theramore Marine (17MinG) (28MaxG) (sample size 58)
UPDATE `creature_template` SET `MinLootGold`='7', `MaxLootGold`='48' WHERE `entry`='3386'; -- Theramore Preserver (18MinG) (29MaxG) https://www.wowhead.com/tbc/npc=3386/theramore-preserver
UPDATE `creature_template` SET `MinLootGold`='24', `MaxLootGold`='134' WHERE `entry`='3392'; -- Prospector Khazgorm (31MinG) (45MaxG) https://www.wowhead.com/tbc/npc=3392/prospector-khazgorm
UPDATE `creature_template` SET `MaxLootGold`='55' WHERE `entry`='3393'; -- Captain Fairmount (25MinG) (37MaxG) https://www.wowhead.com/tbc/npc=3393/captain-fairmount
UPDATE `creature_template` SET `MinLootGold`='12', `MaxLootGold`='40' WHERE `entry`='3394'; -- Barak Kodobane (18MinG) (29MaxG) https://www.wowhead.com/tbc/npc=3394/barak-kodobane
UPDATE `creature_template` SET `MinLootGold`='5', `MaxLootGold`='26' WHERE `entry`='3395'; -- Verog the Dervish (21MinG) (32MaxG) https://www.wowhead.com/tbc/npc=3395/verog-the-dervish
UPDATE `creature_template` SET `MaxLootGold`='29' WHERE `entry`='3397'; -- Kolkar Bloodcharger (14MinG) (24MaxG) https://www.wowhead.com/tbc/npc=3397/kolkar-bloodcharger
UPDATE `creature_template` SET `MaxLootGold`='54' WHERE `entry`='3434'; -- Nak (28MinG) (42MaxG) https://www.wowhead.com/tbc/npc=3434/nak
UPDATE `creature_template` SET `MinLootGold`='28', `MaxLootGold`='122' WHERE `entry`='3435'; -- Lok Orcbane (34MinG) (49MaxG) https://www.wowhead.com/tbc/npc=3435/lok-orcbane
UPDATE `creature_template` SET `MinLootGold`='32', `MaxLootGold`='84' WHERE `entry`='3436'; -- Kuz (34MinG) (49MaxG) https://www.wowhead.com/tbc/npc=3436/kuz
UPDATE `creature_template` SET `MaxLootGold`='30' WHERE `entry`='3438'; -- Kreenig Snarlsnout (17MinG) (27MaxG) https://www.wowhead.com/tbc/npc=3438/kreenig-snarlsnout
UPDATE `creature_template` SET `MinLootGold`='19', `MaxLootGold`='53' WHERE `entry`='3445'; -- Supervisor Lugwizzle (21MinG) (33MaxG) https://www.wowhead.com/tbc/npc=3445/supervisor-lugwizzle
UPDATE `creature_template` SET `MaxLootGold`='46' WHERE `entry`='3454'; -- Cannoneer Smythe (23MinG) (35MaxG) https://www.wowhead.com/tbc/npc=3454/cannoneer-smythe
UPDATE `creature_template` SET `MaxLootGold`='45' WHERE `entry`='3455'; -- Cannoneer Whessan (23MinG) (35MaxG) https://www.wowhead.com/tbc/npc=3455/cannoneer-whessan
UPDATE `creature_template` SET `MinLootGold`='14', `MaxLootGold`='68' WHERE `entry`='3456'; -- Razormane Pathfinder (25MinG) (38MaxG) (sample size 22)
UPDATE `creature_template` SET `MinLootGold`='13', `MaxLootGold`='95' WHERE `entry`='3457'; -- Razormane Stalker (27MinG) (41MaxG) https://www.wowhead.com/tbc/npc=3457/razormane-stalker
UPDATE `creature_template` SET `MinLootGold`='17', `MaxLootGold`='104' WHERE `entry`='3458'; -- Razormane Seer (29MinG) (43MaxG) https://www.wowhead.com/tbc/npc=3458/razormane-seer
UPDATE `creature_template` SET `MinLootGold`='22', `MaxLootGold`='113' WHERE `entry`='3459'; -- Razormane Warfrenzy (33MinG) (48MaxG) https://www.wowhead.com/tbc/npc=3459/razormane-warfrenzy
UPDATE `creature_template` SET `MinLootGold`='8', `MaxLootGold`='42' WHERE `entry`='3467'; -- Baron Longshore (18MinG) (29MaxG) https://www.wowhead.com/tbc/npc=3467/baron-longshore
UPDATE `creature_template` SET `MinLootGold`='7' WHERE `entry`='3470'; -- Rathorian (17MinG) (27MaxG) https://www.wowhead.com/tbc/npc=3470/rathorian
UPDATE `creature_template` SET `MaxLootGold`='32' WHERE `entry`='3471'; -- Tinkerer Sniggles (18MinG) (28MaxG) https://www.wowhead.com/tbc/npc=3471/tinkerer-sniggles
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='3502'; -- Ratchet Bruiser (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=3502/ratchet-bruiser
UPDATE `creature_template` SET `MinLootGold`='1', `MaxLootGold`='252' WHERE `entry`='3529'; -- Moonrage Armorer (63MinG) (88MaxG) https://www.wowhead.com/tbc/npc=3529/moonrage-armorer
UPDATE `creature_template` SET `MinLootGold`='20' WHERE `entry`='3530'; -- Pyrewood Tailor (64MinG) (88MaxG) https://www.wowhead.com/tbc/npc=3530/pyrewood-tailor
UPDATE `creature_template` SET `MinLootGold`='1', `MaxLootGold`='282' WHERE `entry`='3531'; -- Moonrage Tailor (63MinG) (87MaxG) https://www.wowhead.com/tbc/npc=3531/moonrage-tailor
UPDATE `creature_template` SET `MinLootGold`='9', `MaxLootGold`='79' WHERE `entry`='3533'; -- Moonrage Leatherworker (62MinG) (86MaxG) https://www.wowhead.com/tbc/npc=3533/moonrage-leatherworker
UPDATE `creature_template` SET `MinLootGold`='9' WHERE `entry`='3535'; -- Blackmoss the Fetid (14MinG) (23MaxG) https://www.wowhead.com/tbc/npc=3535/blackmoss-the-fetid
UPDATE `creature_template` SET `MinLootGold`='1', `MaxLootGold`='4' WHERE `entry`='3569'; -- Bogling (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=3569/bogling
UPDATE `creature_template` SET `MinLootGold`='4', `MaxLootGold`='19' WHERE `entry`='3617'; -- Lordaeron Citizen (40MinG) (57MaxG) https://www.wowhead.com/tbc/npc=3617/lordaeron-citizen
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='3619'; -- Ghost Saber (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=3619/ghost-saber
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='3652'; -- Trigore the Lasher (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=3652/trigore-the-lasher
UPDATE `creature_template` SET `MaxLootGold`='270' WHERE `entry`='3654'; -- Mutanus the Devourer (50MinG) (300MaxG) https://www.wowhead.com/tbc/npc=3654/mutanus-the-devourer
UPDATE `creature_template` SET `MaxLootGold`='179' WHERE `entry`='3655'; -- Mad Magglish (79MinG) (108MaxG) https://www.wowhead.com/tbc/npc=3655/mad-magglish
UPDATE `creature_template` SET `MaxLootGold`='172' WHERE `entry`='3660'; -- Athrikus Narassin (47MinG) (66MaxG) https://www.wowhead.com/tbc/npc=3660/athrikus-narassin
UPDATE `creature_template` SET `MaxLootGold`='69' WHERE `entry`='3664'; -- Ilkrud Magthrull (34MinG) (50MaxG) https://www.wowhead.com/tbc/npc=3664/ilkrud-magthrull
UPDATE `creature_template` SET `MaxLootGold`='35' WHERE `entry`='3667'; -- Anaya Dawnrunner (18MinG) (28MaxG) https://www.wowhead.com/tbc/npc=3667/anaya-dawnrunner
UPDATE `creature_template` SET `MinLootGold`='87' WHERE `entry`='3669'; -- Lord Cobrahn (125MinG) (168MaxG) https://www.wowhead.com/tbc/npc=3669/lord-cobrahn
UPDATE `creature_template` SET `MinLootGold`='56', `MaxLootGold`='180' WHERE `entry`='3671'; -- Lady Anacondra (125MinG) (168MaxG) https://www.wowhead.com/tbc/npc=3671/lady-anacondra
UPDATE `creature_template` SET `MaxLootGold`='255' WHERE `entry`='3673'; -- Lord Serpentis (156MinG) (209MaxG) https://www.wowhead.com/tbc/npc=3673/lord-serpentis
UPDATE `creature_template` SET `MaxLootGold`='151' WHERE `entry`='3696'; -- Ran Bloodtooth (44MinG) (62MaxG) https://www.wowhead.com/tbc/npc=3696/ran-bloodtooth
UPDATE `creature_template` SET `MinLootGold`='23', `MaxLootGold`='57' WHERE `entry`='3711'; -- Wrathtail Myrmidon (25MinG) (38MaxG) https://www.wowhead.com/tbc/npc=3711/wrathtail-myrmidon
UPDATE `creature_template` SET `MinLootGold`='13', `MaxLootGold`='43' WHERE `entry`='3712'; -- Wrathtail Razortail (23MinG) (34MaxG) https://www.wowhead.com/tbc/npc=3712/wrathtail-razortail
UPDATE `creature_template` SET `MinLootGold`='8', `MaxLootGold`='59' WHERE `entry`='3713'; -- Wrathtail Wave Rider (22MinG) (33MaxG) (sample size 41)
UPDATE `creature_template` SET `MinLootGold`='10', `MaxLootGold`='64' WHERE `entry`='3715'; -- Wrathtail Sea Witch (23MinG) (34MaxG) https://www.wowhead.com/tbc/npc=3715/wrathtail-sea-witch
UPDATE `creature_template` SET `MinLootGold`='8', `MaxLootGold`='60' WHERE `entry`='3717'; -- Wrathtail Sorceress (20MinG) (32MaxG) (sample size 48)
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='3722'; -- Mystlash Flayer (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=3722/mystlash-flayer
UPDATE `creature_template` SET `MinLootGold`='13', `MaxLootGold`='55' WHERE `entry`='3725'; -- Dark Strand Cultist (20MinG) (32MaxG) https://www.wowhead.com/tbc/npc=3725/dark-strand-cultist
UPDATE `creature_template` SET `MinLootGold`='13', `MaxLootGold`='70' WHERE `entry`='3727'; -- Dark Strand Enforcer (26MinG) (38MaxG) https://www.wowhead.com/tbc/npc=3727/dark-strand-enforcer
UPDATE `creature_template` SET `MinLootGold`='15', `MaxLootGold`='59' WHERE `entry`='3728'; -- Dark Strand Adept (21MinG) (32MaxG) https://www.wowhead.com/tbc/npc=3728/dark-strand-adept
UPDATE `creature_template` SET `MinLootGold`='10', `MaxLootGold`='51' WHERE `entry`='3730'; -- Dark Strand Excavator (24MinG) (36MaxG) https://www.wowhead.com/tbc/npc=3730/dark-strand-excavator
UPDATE `creature_template` SET `MinLootGold`='20', `MaxLootGold`='52' WHERE `entry`='3732'; -- Forsaken Seeker (21MinG) (32MaxG) https://www.wowhead.com/tbc/npc=3732/forsaken-seeker
UPDATE `creature_template` SET `MinLootGold`='14', `MaxLootGold`='53' WHERE `entry`='3733'; -- Forsaken Herbalist (22MinG) (33MaxG) https://www.wowhead.com/tbc/npc=3733/forsaken-herbalist
UPDATE `creature_template` SET `MinLootGold`='20', `MaxLootGold`='66' WHERE `entry`='3734'; -- Forsaken Thug (25MinG) (37MaxG) https://www.wowhead.com/tbc/npc=3734/forsaken-thug
UPDATE `creature_template` SET `MinLootGold`='13', `MaxLootGold`='52' WHERE `entry`='3737'; -- Saltspittle Puddlejumper (24MinG) (36MaxG) https://www.wowhead.com/tbc/npc=3737/saltspittle-puddlejumper
UPDATE `creature_template` SET `MinLootGold`='14', `MaxLootGold`='61' WHERE `entry`='3739'; -- Saltspittle Warrior (23MinG) (35MaxG) https://www.wowhead.com/tbc/npc=3739/saltspittle-warrior
UPDATE `creature_template` SET `MinLootGold`='24', `MaxLootGold`='70' WHERE `entry`='3740'; -- Saltspittle Muckdweller (26MinG) (38MaxG) https://www.wowhead.com/tbc/npc=3740/saltspittle-muckdweller
UPDATE `creature_template` SET `MaxLootGold`='49' WHERE `entry`='3742'; -- Saltspittle Oracle (24MinG) (36MaxG) https://www.wowhead.com/tbc/npc=3742/saltspittle-oracle
UPDATE `creature_template` SET `MinLootGold`='14', `MaxLootGold`='104' WHERE `entry`='3743'; -- Foulweald Warrior (35MinG) (51MaxG) (sample size 28)
UPDATE `creature_template` SET `MinLootGold`='17', `MaxLootGold`='69' WHERE `entry`='3745'; -- Foulweald Pathfinder (31MinG) (45MaxG) https://www.wowhead.com/tbc/npc=3745/foulweald-pathfinder
UPDATE `creature_template` SET `MaxLootGold`='68' WHERE `entry`='3746'; -- Foulweald Den Watcher (33MinG) (48MaxG) https://www.wowhead.com/tbc/npc=3746/foulweald-den-watcher
UPDATE `creature_template` SET `MaxLootGold`='107' WHERE `entry`='3748'; -- Foulweald Shaman (31MinG) (45MaxG) https://www.wowhead.com/tbc/npc=3748/foulweald-shaman
UPDATE `creature_template` SET `MaxLootGold`='99' WHERE `entry`='3749'; -- Foulweald Ursa (33MinG) (48MaxG) https://www.wowhead.com/tbc/npc=3749/foulweald-ursa
UPDATE `creature_template` SET `MinLootGold`='15', `MaxLootGold`='102' WHERE `entry`='3750'; -- Foulweald Totemic (29MinG) (43MaxG) (sample size 22)
UPDATE `creature_template` SET `MaxLootGold`='156' WHERE `entry`='3752'; -- Xavian Rogue (43MinG) (61MaxG) https://www.wowhead.com/tbc/npc=3752/xavian-rogue
UPDATE `creature_template` SET `MinLootGold`='40', `MaxLootGold`='128' WHERE `entry`='3754'; -- Xavian Betrayer (42MinG) (59MaxG) https://www.wowhead.com/tbc/npc=3754/xavian-betrayer
UPDATE `creature_template` SET `MinLootGold`='31', `MaxLootGold`='75' WHERE `entry`='3755'; -- Xavian Felsworn (38MinG) (55MaxG) https://www.wowhead.com/tbc/npc=3755/xavian-felsworn
UPDATE `creature_template` SET `MinLootGold`='32', `MaxLootGold`='152' WHERE `entry`='3757'; -- Xavian Hellcaller (40MinG) (57MaxG) https://www.wowhead.com/tbc/npc=3757/xavian-hellcaller
UPDATE `creature_template` SET `MinLootGold`='25', `MaxLootGold`='113' WHERE `entry`='3758'; -- Felmusk Satyr (35MinG) (50MaxG) https://www.wowhead.com/tbc/npc=3758/felmusk-satyr
UPDATE `creature_template` SET `MinLootGold`='21', `MaxLootGold`='124' WHERE `entry`='3759'; -- Felmusk Rogue (37MinG) (53MaxG) https://www.wowhead.com/tbc/npc=3759/felmusk-rogue
UPDATE `creature_template` SET `MinLootGold`='19', `MaxLootGold`='121' WHERE `entry`='3762'; -- Felmusk Felsworn (33MinG) (48MaxG) (sample size 29)
UPDATE `creature_template` SET `MinLootGold`='21', `MaxLootGold`='128' WHERE `entry`='3763'; -- Felmusk Shadowstalker (37MinG) (54MaxG) (sample size 21)
UPDATE `creature_template` SET `MinLootGold`='21', `MaxLootGold`='129' WHERE `entry`='3765'; -- Bleakheart Satyr (37MinG) (53MaxG) (sample size 27)
UPDATE `creature_template` SET `MinLootGold`='24', `MaxLootGold`='140' WHERE `entry`='3767'; -- Bleakheart Trickster (40MinG) (57MaxG) (sample size 27)
UPDATE `creature_template` SET `MinLootGold`='22', `MaxLootGold`='133' WHERE `entry`='3770'; -- Bleakheart Shadowstalker (39MinG) (56MaxG) (sample size 28)
UPDATE `creature_template` SET `MinLootGold`='24', `MaxLootGold`='128' WHERE `entry`='3771'; -- Bleakheart Hellcaller (35MinG) (51MaxG) https://www.wowhead.com/tbc/npc=3771/bleakheart-hellcaller
UPDATE `creature_template` SET `MaxLootGold`='97' WHERE `entry`='3772'; -- Lesser Felguard (29MinG) (43MaxG) https://www.wowhead.com/tbc/npc=3772/lesser-felguard
UPDATE `creature_template` SET `MinLootGold`='15', `MaxLootGold`='80' WHERE `entry`='3780'; -- Shadethicket Moss Eater (28MinG) (41MaxG) https://www.wowhead.com/tbc/npc=3780/shadethicket-moss-eater
UPDATE `creature_template` SET `MaxLootGold`='93' WHERE `entry`='3781'; -- Shadethicket Wood Shaper (29MinG) (43MaxG) https://www.wowhead.com/tbc/npc=3781/shadethicket-wood-shaper
UPDATE `creature_template` SET `MinLootGold`='21', `MaxLootGold`='94' WHERE `entry`='3782'; -- Shadethicket Stone Mover (35MinG) (51MaxG) https://www.wowhead.com/tbc/npc=3782/shadethicket-stone-mover
UPDATE `creature_template` SET `MaxLootGold`='48' WHERE `entry`='3783'; -- Shadethicket Raincaller (28MinG) (41MaxG) https://www.wowhead.com/tbc/npc=3783/shadethicket-raincaller
UPDATE `creature_template` SET `MinLootGold`='23', `MaxLootGold`='122' WHERE `entry`='3784'; -- Shadethicket Bark Ripper (38MinG) (54MaxG) https://www.wowhead.com/tbc/npc=3784/shadethicket-bark-ripper
UPDATE `creature_template` SET `MinLootGold`='35', `MaxLootGold`='124' WHERE `entry`='3789'; -- Terrowulf Fleshripper (41MinG) (59MaxG) https://www.wowhead.com/tbc/npc=3789/terrowulf-fleshripper
UPDATE `creature_template` SET `MinLootGold`='28', `MaxLootGold`='123' WHERE `entry`='3791'; -- Terrowulf Shadow Weaver (43MinG) (61MaxG) https://www.wowhead.com/tbc/npc=3791/terrowulf-shadow-weaver
UPDATE `creature_template` SET `MaxLootGold`='104' WHERE `entry`='3797'; -- Cenarion Protector (33MinG) (48MaxG) https://www.wowhead.com/tbc/npc=3797/cenarion-protector
UPDATE `creature_template` SET `MinLootGold`='13', `MaxLootGold`='133' WHERE `entry`='3799'; -- Severed Druid (38MinG) (63MaxG) https://www.wowhead.com/tbc/npc=3799/severed-druid
UPDATE `creature_template` SET `MinLootGold`='24', `MaxLootGold`='130' WHERE `entry`='3801'; -- Severed Sleeper (38MinG) (55MaxG) https://www.wowhead.com/tbc/npc=3801/severed-sleeper
UPDATE `creature_template` SET `MinLootGold`='30', `MaxLootGold`='166' WHERE `entry`='3802'; -- Severed Dreamer (39MinG) (55MaxG) https://www.wowhead.com/tbc/npc=3802/severed-dreamer
UPDATE `creature_template` SET `MinLootGold`='37', `MaxLootGold`='166' WHERE `entry`='3803'; -- Severed Keeper (41MinG) (58MaxG) https://www.wowhead.com/tbc/npc=3803/severed-keeper
UPDATE `creature_template` SET `MinLootGold`='23', `MaxLootGold`='131' WHERE `entry`='3804'; -- Forsaken Intruder (42MinG) (59MaxG) https://www.wowhead.com/tbc/npc=3804/forsaken-intruder
UPDATE `creature_template` SET `MinLootGold`='31', `MaxLootGold`='156' WHERE `entry`='3806'; -- Forsaken Infiltrator (43MinG) (61MaxG) https://www.wowhead.com/tbc/npc=3806/forsaken-infiltrator
UPDATE `creature_template` SET `MaxLootGold`='151' WHERE `entry`='3807'; -- Forsaken Assassin (43MinG) (61MaxG) https://www.wowhead.com/tbc/npc=3807/forsaken-assassin
UPDATE `creature_template` SET `MaxLootGold`='150' WHERE `entry`='3808'; -- Forsaken Dark Stalker (41MinG) (59MaxG) https://www.wowhead.com/tbc/npc=3808/forsaken-dark-stalker
UPDATE `creature_template` SET `MaxLootGold`='133' WHERE `entry`='3815'; -- Blink Dragon (37MinG) (53MaxG) https://www.wowhead.com/tbc/npc=3815/blink-dragon
UPDATE `creature_template` SET `MinLootGold`='34', `MaxLootGold`='57' WHERE `entry`='3833'; -- Cenarion Vindicator (36MinG) (52MaxG) https://www.wowhead.com/tbc/npc=3833/cenarion-vindicator
UPDATE `creature_template` SET `MinLootGold`='30', `MaxLootGold`='143' WHERE `entry`='3834'; -- Crazed Ancient (40MinG) (57MaxG) https://www.wowhead.com/tbc/npc=3834/crazed-ancient
UPDATE `creature_template` SET `MinLootGold`='36', `MaxLootGold`='136' WHERE `entry`='3840'; -- Druid of the Fang (89MinG) (121MaxG) https://www.wowhead.com/tbc/npc=3840/druid-of-the-fang
UPDATE `creature_template` SET `MaxLootGold`='154' WHERE `entry`='3849'; -- Deathstalker Adamant (87MinG) (119MaxG) https://www.wowhead.com/tbc/npc=3849/deathstalker-adamant
UPDATE `creature_template` SET `MinLootGold`='59' WHERE `entry`='3850'; -- Sorcerer Ashcrombe (79MinG) (108MaxG) https://www.wowhead.com/tbc/npc=3850/sorcerer-ashcrombe
UPDATE `creature_template` SET `MinLootGold`='30', `MaxLootGold`='178' WHERE `entry`='3851'; -- Shadowfang Whitescalp (79MinG) (108MaxG) https://www.wowhead.com/tbc/npc=3851/shadowfang-whitescalp
UPDATE `creature_template` SET `MinLootGold`='32', `MaxLootGold`='192' WHERE `entry`='3853'; -- Shadowfang Moonwalker (85MinG) (115MaxG) https://www.wowhead.com/tbc/npc=3853/shadowfang-moonwalker
UPDATE `creature_template` SET `MinLootGold`='16', `MaxLootGold`='164' WHERE `entry`='3854'; -- Shadowfang Wolfguard (95MinG) (129MaxG) https://www.wowhead.com/tbc/npc=3854/shadowfang-wolfguard
UPDATE `creature_template` SET `MinLootGold`='40', `MaxLootGold`='209' WHERE `entry`='3855'; -- Shadowfang Darksoul (95MinG) (129MaxG) https://www.wowhead.com/tbc/npc=3855/shadowfang-darksoul
UPDATE `creature_template` SET `MinLootGold`='41', `MaxLootGold`='202' WHERE `entry`='3857'; -- Shadowfang Glutton (109MinG) (148MaxG) https://www.wowhead.com/tbc/npc=3857/shadowfang-glutton
UPDATE `creature_template` SET `MinLootGold`='74', `MaxLootGold`='303' WHERE `entry`='3859'; -- Shadowfang Ragetooth (117MinG) (158MaxG) https://www.wowhead.com/tbc/npc=3859/shadowfang-ragetooth
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='3865'; -- Shadow Charger (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=3865/shadow-charger
UPDATE `creature_template` SET `MinLootGold`='29', `MaxLootGold`='276' WHERE `entry`='3872'; -- Deathsworn Captain (207MinG) (276MaxG) https://www.wowhead.com/tbc/npc=3872/deathsworn-captain
UPDATE `creature_template` SET `MinLootGold`='48', `MaxLootGold`='290' WHERE `entry`='3873'; -- Tormented Officer (121MinG) (163MaxG) https://www.wowhead.com/tbc/npc=3873/tormented-officer
UPDATE `creature_template` SET `MinLootGold`='33', `MaxLootGold`='215' WHERE `entry`='3875'; -- Haunted Servitor (99MinG) (134MaxG) (sample size 32)
UPDATE `creature_template` SET `MinLootGold`='68', `MaxLootGold`='259' WHERE `entry`='3877'; -- Wailing Guardsman (113MinG) (153MaxG) (sample size 21)
UPDATE `creature_template` SET `MinLootGold`='7', `MaxLootGold`='60' WHERE `entry`='3879'; -- Dark Strand Assassin (27MinG) (40MaxG) https://www.wowhead.com/tbc/npc=3879/dark-strand-assassin
UPDATE `creature_template` SET `MinLootGold`='120', `MaxLootGold`='233' WHERE `entry`='3886'; -- Razorclaw the Butcher (128MinG) (172MaxG) https://www.wowhead.com/tbc/npc=3886/razorclaw-the-butcher
UPDATE `creature_template` SET `MinLootGold`='94', `MaxLootGold`='279' WHERE `entry`='3887'; -- Baron Silverlaine (178MinG) (237MaxG) https://www.wowhead.com/tbc/npc=3887/baron-silverlaine
UPDATE `creature_template` SET `MinLootGold`='10', `MaxLootGold`='88' WHERE `entry`='3893'; -- Forsaken Scout (30MinG) (43MaxG) https://www.wowhead.com/tbc/npc=3893/forsaken-scout
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='3895'; -- Captain Noteo (1MinG) (752MaxG) https://www.wowhead.com/tbc/npc=3895/captain-noteo
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='3896'; -- Captain Hart (1MinG) (502MaxG) https://www.wowhead.com/tbc/npc=3896/captain-hart
UPDATE `creature_template` SET `MinLootGold`='10', `MaxLootGold`='90' WHERE `entry`='3898'; -- Aligar the Tormentor (32MinG) (47MaxG) https://www.wowhead.com/tbc/npc=3898/aligar-the-tormentor
UPDATE `creature_template` SET `MinLootGold`='10', `MaxLootGold`='52' WHERE `entry`='3899'; -- Balizar the Umbrage (29MinG) (43MaxG) https://www.wowhead.com/tbc/npc=3899/balizar-the-umbrage
UPDATE `creature_template` SET `MinLootGold`='13', `MaxLootGold`='63' WHERE `entry`='3900'; -- Caedakar the Vicious (31MinG) (46MaxG) https://www.wowhead.com/tbc/npc=3900/caedakar-the-vicious
UPDATE `creature_template` SET `MinLootGold`='51', `MaxLootGold`='206' WHERE `entry`='3914'; -- Rethilgore (116MinG) (156MaxG) https://www.wowhead.com/tbc/npc=3914/rethilgore
UPDATE `creature_template` SET `MinLootGold`='27', `MaxLootGold`='117' WHERE `entry`='3919'; -- Withered Ancient (37MinG) (53MaxG) https://www.wowhead.com/tbc/npc=3919/withered-ancient
UPDATE `creature_template` SET `MinLootGold`='14', `MaxLootGold`='103' WHERE `entry`='3921'; -- Thistlefur Ursa (31MinG) (45MaxG) (sample size 33)
UPDATE `creature_template` SET `MinLootGold`='16', `MaxLootGold`='102' WHERE `entry`='3922'; -- Thistlefur Totemic (29MinG) (43MaxG) (sample size 28)
UPDATE `creature_template` SET `MinLootGold`='14', `MaxLootGold`='99' WHERE `entry`='3923'; -- Thistlefur Den Watcher (31MinG) (45MaxG) https://www.wowhead.com/tbc/npc=3923/thistlefur-den-watcher
UPDATE `creature_template` SET `MinLootGold`='21', `MaxLootGold`='103' WHERE `entry`='3924'; -- Thistlefur Shaman (29MinG) (43MaxG) (sample size 26)
UPDATE `creature_template` SET `MinLootGold`='15', `MaxLootGold`='103' WHERE `entry`='3925'; -- Thistlefur Avenger (31MinG) (45MaxG) (sample size 27)
UPDATE `creature_template` SET `MinLootGold`='17', `MaxLootGold`='104' WHERE `entry`='3926'; -- Thistlefur Pathfinder (31MinG) (45MaxG) https://www.wowhead.com/tbc/npc=3926/thistlefur-pathfinder
UPDATE `creature_template` SET `MinLootGold`='114', `MaxLootGold`='338' WHERE `entry`='3927'; -- Wolf Master Nandos (222MinG) (295MaxG) https://www.wowhead.com/tbc/npc=3927/wolf-master-nandos
UPDATE `creature_template` SET `MaxLootGold`='123' WHERE `entry`='3931'; -- Shadethicket Oracle (44MinG) (62MaxG) https://www.wowhead.com/tbc/npc=3931/shadethicket-oracle
UPDATE `creature_template` SET `MinLootGold`='29', `MaxLootGold`='145' WHERE `entry`='3932'; -- Bloodtooth Guard (39MinG) (56MaxG) https://www.wowhead.com/tbc/npc=3932/bloodtooth-guard
UPDATE `creature_template` SET `MaxLootGold`='112' WHERE `entry`='3941'; -- Uthil Mooncall (45MinG) (64MaxG) https://www.wowhead.com/tbc/npc=3941/uthil-mooncall
UPDATE `creature_template` SET `MaxLootGold`='126' WHERE `entry`='3942'; -- Mavoris Cloudsbreak (45MinG) (64MaxG) https://www.wowhead.com/tbc/npc=3942/mavoris-cloudsbreak
UPDATE `creature_template` SET `MaxLootGold`='95' WHERE `entry`='3943'; -- Ruuzel (32MinG) (46MaxG) https://www.wowhead.com/tbc/npc=3943/ruuzel
UPDATE `creature_template` SET `MinLootGold`='15', `MaxLootGold`='69' WHERE `entry`='3944'; -- Wrathtail Priestess (24MinG) (37MaxG) https://www.wowhead.com/tbc/npc=3944/wrathtail-priestess
UPDATE `creature_template` SET `MaxLootGold`='194' WHERE `entry`='3947'; -- Goblin Shipbuilder (89MinG) (121MaxG) https://www.wowhead.com/tbc/npc=3947/goblin-shipbuilder
UPDATE `creature_template` SET `MinLootGold`='232', `MaxLootGold`='729' WHERE `entry`='3974'; -- Houndmaster Loksey (386MinG) (509MaxG) https://www.wowhead.com/tbc/npc=3974/houndmaster-loksey
UPDATE `creature_template` SET `MinLootGold`='336' WHERE `entry`='3975'; -- Herod (575MinG) (756MaxG) https://www.wowhead.com/tbc/npc=3975/herod
UPDATE `creature_template` SET `MinLootGold`='285' WHERE `entry`='3976'; -- Scarlet Commander Mograine (319MinG) (422MaxG) https://www.wowhead.com/tbc/npc=3976/scarlet-commander-mograine
UPDATE `creature_template` SET `MaxLootGold`='773' WHERE `entry`='3977'; -- High Inquisitor Whitemane (298MinG) (394MaxG) https://www.wowhead.com/tbc/npc=3977/high-inquisitor-whitemane
UPDATE `creature_template` SET `MaxLootGold`='588' WHERE `entry`='3983'; -- Interrogator Vishas (281MinG) (372MaxG) https://www.wowhead.com/tbc/npc=3983/interrogator-vishas
UPDATE `creature_template` SET `MaxLootGold`='670' WHERE `entry`='3984'; -- Nancy Vishas (198MinG) (263MaxG) https://www.wowhead.com/tbc/npc=3984/nancy-vishas
UPDATE `creature_template` SET `MaxLootGold`='630' WHERE `entry`='3985'; -- Grandpa Vishas (204MinG) (271MaxG) https://www.wowhead.com/tbc/npc=3985/grandpa-vishas
UPDATE `creature_template` SET `MaxLootGold`='116' WHERE `entry`='3986'; -- Sarilus Foulborne (31MinG) (45MaxG) https://www.wowhead.com/tbc/npc=3986/sarilus-foulborne
UPDATE `creature_template` SET `MinLootGold`='19', `MaxLootGold`='77' WHERE `entry`='3987'; -- Dal Bloodclaw (34MinG) (50MaxG) https://www.wowhead.com/tbc/npc=3987/dal-bloodclaw
UPDATE `creature_template` SET `MinLootGold`='14', `MaxLootGold`='59' WHERE `entry`='3988'; -- Venture Co. Operator (23MinG) (35MaxG) (sample size 22)
UPDATE `creature_template` SET `MinLootGold`='8', `MaxLootGold`='59' WHERE `entry`='3989'; -- Venture Co. Logger (22MinG) (33MaxG) (sample size 62)
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='3990'; -- Venture Co. Cutter (5MinG) (24MaxG) https://www.wowhead.com/tbc/npc=3990/venture-co-cutter
UPDATE `creature_template` SET `MinLootGold`='9', `MaxLootGold`='65' WHERE `entry`='3991'; -- Venture Co. Deforester (22MinG) (33MaxG) (sample size 35)
UPDATE `creature_template` SET `MinLootGold`='17', `MaxLootGold`='65' WHERE `entry`='3992'; -- Venture Co. Engineer (25MinG) (38MaxG) https://www.wowhead.com/tbc/npc=3992/venture-co-engineer
UPDATE `creature_template` SET `MaxLootGold`='82' WHERE `entry`='3993'; -- Venture Co. Machine Smith (27MinG) (40MaxG) https://www.wowhead.com/tbc/npc=3993/venture-co-machine-smith
UPDATE `creature_template` SET `MinLootGold`='7', `MaxLootGold`='34' WHERE `entry`='3998'; -- Windshear Vermin (25MinG) (38MaxG) hmm
UPDATE `creature_template` SET `MinLootGold`='6', `MaxLootGold`='29' WHERE `entry`='4001'; -- Windshear Tunnel Rat (24MinG) (36MaxG) hmm
UPDATE `creature_template` SET `MinLootGold`='9', `MaxLootGold`='45' WHERE `entry`='4002'; -- Windshear Stonecutter (29MinG) (43MaxG) hmm
UPDATE `creature_template` SET `MaxLootGold`='66' WHERE `entry`='4003'; -- Windshear Geomancer (25MinG) (37MaxG) https://www.wowhead.com/tbc/npc=4003/windshear-geomancer
UPDATE `creature_template` SET `MinLootGold`='19', `MaxLootGold`='65' WHERE `entry`='4016'; -- Fey Dragon (31MinG) (45MaxG) https://www.wowhead.com/tbc/npc=4016/fey-dragon
UPDATE `creature_template` SET `MaxLootGold`='93' WHERE `entry`='4017'; -- Wily Fey Dragon (35MinG) (50MaxG) https://www.wowhead.com/tbc/npc=4017/wily-fey-dragon
UPDATE `creature_template` SET `MinLootGold`='6' WHERE `entry`='4020'; -- Sap Beast (29MinG) (43MaxG) https://www.wowhead.com/tbc/npc=4020/sap-beast
UPDATE `creature_template` SET `MinLootGold`='23' WHERE `entry`='4021'; -- Corrosive Sap Beast (33MinG) (48MaxG) https://www.wowhead.com/tbc/npc=4021/corrosive-sap-beast
UPDATE `creature_template` SET `MinLootGold`='15', `MaxLootGold`='104' WHERE `entry`='4022'; -- Bloodfury Harpy (31MinG) (45MaxG) https://www.wowhead.com/tbc/npc=4022/bloodfury-harpy
UPDATE `creature_template` SET `MaxLootGold`='121' WHERE `entry`='4023'; -- Bloodfury Roguefeather (35MinG) (51MaxG) https://www.wowhead.com/tbc/npc=4023/bloodfury-roguefeather
UPDATE `creature_template` SET `MaxLootGold`='117' WHERE `entry`='4024'; -- Bloodfury Slayer (33MinG) (48MaxG) https://www.wowhead.com/tbc/npc=4024/bloodfury-slayer
UPDATE `creature_template` SET `MinLootGold`='20', `MaxLootGold`='103' WHERE `entry`='4025'; -- Bloodfury Ambusher (26MinG) (39MaxG) https://www.wowhead.com/tbc/npc=4025/bloodfury-ambusher
UPDATE `creature_template` SET `MinLootGold`='16', `MaxLootGold`='113' WHERE `entry`='4026'; -- Bloodfury Windcaller (31MinG) (45MaxG) https://www.wowhead.com/tbc/npc=4026/bloodfury-windcaller
UPDATE `creature_template` SET `MinLootGold`='21', `MaxLootGold`='115' WHERE `entry`='4027'; -- Bloodfury Storm Witch (35MinG) (51MaxG) https://www.wowhead.com/tbc/npc=4027/bloodfury-storm-witch
UPDATE `creature_template` SET `MinLootGold`='20', `MaxLootGold`='86' WHERE `entry`='4028'; -- Charred Ancient (34MinG) (49MaxG) https://www.wowhead.com/tbc/npc=4028/charred-ancient
UPDATE `creature_template` SET `MaxLootGold`='116' WHERE `entry`='4029'; -- Blackened Ancient (39MinG) (56MaxG) https://www.wowhead.com/tbc/npc=4029/blackened-ancient
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='4033'; -- Charred Stone Spirit (7MinG) (37MaxG) https://www.wowhead.com/tbc/npc=4033/charred-stone-spirit
UPDATE `creature_template` SET `MinLootGold`='91', `MaxLootGold`='346' WHERE `entry`='4050'; -- Cenarion Caretaker (125MinG) (168MaxG) https://www.wowhead.com/tbc/npc=4050/cenarion-caretaker
UPDATE `creature_template` SET `MaxLootGold`='94' WHERE `entry`='4051'; -- Cenarion Botanist (29MinG) (43MaxG) https://www.wowhead.com/tbc/npc=4051/cenarion-botanist
UPDATE `creature_template` SET `MaxLootGold`='298' WHERE `entry`='4052'; -- Cenarion Druid (130MinG) (175MaxG) https://www.wowhead.com/tbc/npc=4052/cenarion-druid
UPDATE `creature_template` SET `MinLootGold`='20', `MaxLootGold`='83' WHERE `entry`='4053'; -- Daughter of Cenarius (30MinG) (44MaxG) https://www.wowhead.com/tbc/npc=4053/daughter-of-cenarius
UPDATE `creature_template` SET `MinLootGold`='16', `MaxLootGold`='106' WHERE `entry`='4054'; -- Laughing Sister (33MinG) (48MaxG) https://www.wowhead.com/tbc/npc=4054/laughing-sister
UPDATE `creature_template` SET `MinLootGold`='66' WHERE `entry`='4056'; -- Mirkfallon Keeper (143MinG) (192MaxG) https://www.wowhead.com/tbc/npc=4056/mirkfallon-keeper
UPDATE `creature_template` SET `MinLootGold`='26', `MaxLootGold`='72' WHERE `entry`='4057'; -- Son of Cenarius (33MinG) (48MaxG) https://www.wowhead.com/tbc/npc=4057/son-of-cenarius
UPDATE `creature_template` SET `MaxLootGold`='349' WHERE `entry`='4061'; -- Mirkfallon Dryad (133MinG) (179MaxG) https://www.wowhead.com/tbc/npc=4061/mirkfallon-dryad
UPDATE `creature_template` SET `MinLootGold`='30', `MaxLootGold`='180' WHERE `entry`='4062'; -- Dark Iron Bombardier (46MinG) (65MaxG) https://www.wowhead.com/tbc/npc=4062/dark-iron-bombardier
UPDATE `creature_template` SET `MaxLootGold`='225' WHERE `entry`='4063'; -- Feeboz (58MinG) (80MaxG) https://www.wowhead.com/tbc/npc=4063/feeboz
UPDATE `creature_template` SET `MaxLootGold`='66' WHERE `entry`='4070'; -- Venture Co. Builder (26MinG) (38MaxG) https://www.wowhead.com/tbc/npc=4070/venture-co-builder
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='4071'; -- Venture Co. Grinder (5MinG) (26MaxG) https://www.wowhead.com/tbc/npc=4071/venture-co-grinder
UPDATE `creature_template` SET `MaxLootGold`='68' WHERE `entry`='4073'; -- XT:4 (30MinG) (43MaxG) https://www.wowhead.com/tbc/npc=4073/xt-4
UPDATE `creature_template` SET `MaxLootGold`='79' WHERE `entry`='4074'; -- XT:9 (30MinG) (43MaxG) https://www.wowhead.com/tbc/npc=4074/xt-9
UPDATE `creature_template` SET `MinLootGold`='17', `MaxLootGold`='117' WHERE `entry`='4093'; -- Galak Wrangler (35MinG) (50MaxG) (sample size 34)
UPDATE `creature_template` SET `MinLootGold`='16', `MaxLootGold`='99' WHERE `entry`='4094'; -- Galak Scout (32MinG) (47MaxG) (sample size 31)
UPDATE `creature_template` SET `MinLootGold`='24', `MaxLootGold`='143' WHERE `entry`='4095'; -- Galak Mauler (39MinG) (56MaxG) https://www.wowhead.com/tbc/npc=4095/galak-mauler
UPDATE `creature_template` SET `MinLootGold`='21', `MaxLootGold`='111' WHERE `entry`='4096'; -- Galak Windchaser (31MinG) (45MaxG) (sample size 36)
UPDATE `creature_template` SET `MinLootGold`='20', `MaxLootGold`='134' WHERE `entry`='4097'; -- Galak Stormer (32MinG) (47MaxG) https://www.wowhead.com/tbc/npc=4097/galak-stormer
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='4098'; -- Galak Pack Runner (10MinG) (49MaxG) https://www.wowhead.com/tbc/npc=4098/galak-pack-runner
UPDATE `creature_template` SET `MinLootGold`='22', `MaxLootGold`='134' WHERE `entry`='4099'; -- Galak Marauder (37MinG) (53MaxG) https://www.wowhead.com/tbc/npc=4099/galak-marauder
UPDATE `creature_template` SET `MinLootGold`='27', `MaxLootGold`='125' WHERE `entry`='4111'; -- Gravelsnout Kobold (37MinG) (53MaxG) https://www.wowhead.com/tbc/npc=4111/gravelsnout-kobold
UPDATE `creature_template` SET `MinLootGold`='18', `MaxLootGold`='71' WHERE `entry`='4112'; -- Gravelsnout Vermin (35MinG) (51MaxG) https://www.wowhead.com/tbc/npc=4112/gravelsnout-vermin
UPDATE `creature_template` SET `MinLootGold`='13', `MaxLootGold`='63' WHERE `entry`='4113'; -- Gravelsnout Digger (41MinG) (59MaxG) https://www.wowhead.com/tbc/npc=4113/gravelsnout-digger
UPDATE `creature_template` SET `MaxLootGold`='135' WHERE `entry`='4114'; -- Gravelsnout Forager (40MinG) (57MaxG) https://www.wowhead.com/tbc/npc=4114/gravelsnout-forager
UPDATE `creature_template` SET `MaxLootGold`='154' WHERE `entry`='4116'; -- Gravelsnout Surveyor (38MinG) (55MaxG) https://www.wowhead.com/tbc/npc=4116/gravelsnout-surveyor
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='4196'; -- Silithid Swarm (34MinG) (49MaxG) https://www.wowhead.com/tbc/npc=4196/silithid-swarm
UPDATE `creature_template` SET `MaxLootGold`='109' WHERE `entry`='4202'; -- Gerenzo Wrenchwhistle (38MinG) (55MaxG) https://www.wowhead.com/tbc/npc=4202/gerenzo-wrenchwhistle
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='4207'; -- Valyen Wolfsong (1MinG) (502MaxG) https://www.wowhead.com/tbc/npc=4207/valyen-wolfsong
UPDATE `creature_template` SET `MaxLootGold`='259' WHERE `entry`='4260'; -- Venture Co. Shredder (60MinG) (84MaxG) https://www.wowhead.com/tbc/npc=4260/venture-co-shredder
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='4269'; -- Riding Horse (Chestnut) (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=4269/riding-horse-chestnut
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='4270'; -- Riding Wolf (Red) (1MinG) (3MaxG) https://www.wowhead.com/tbc/npc=4270/riding-wolf-red
UPDATE `creature_template` SET `MinLootGold`='118' WHERE `entry`='4275'; -- Archmage Arugal (322MinG) (425MaxG) https://www.wowhead.com/tbc/npc=4275/archmage-arugal
UPDATE `creature_template` SET `MinLootGold`='115', `MaxLootGold`='271' WHERE `entry`='4278'; -- Commander Springvale (161MinG) (215MaxG) https://www.wowhead.com/tbc/npc=4278/commander-springvale
UPDATE `creature_template` SET `MinLootGold`='65', `MaxLootGold`='316' WHERE `entry`='4279'; -- Odo the Blindwatcher (178MinG) (237MaxG) https://www.wowhead.com/tbc/npc=4279/odo-the-blindwatcher
UPDATE `creature_template` SET `MinLootGold`='223', `MaxLootGold`='787' WHERE `entry`='4286'; -- Scarlet Soldier (227MinG) (301MaxG) https://www.wowhead.com/tbc/npc=4286/scarlet-soldier
UPDATE `creature_template` SET `MinLootGold`='104', `MaxLootGold`='676' WHERE `entry`='4287'; -- Scarlet Gallant (185MinG) (246MaxG) (sample size 49)
UPDATE `creature_template` SET `MaxLootGold`='604' WHERE `entry`='4288'; -- Scarlet Beastmaster (216MinG) (287MaxG) https://www.wowhead.com/tbc/npc=4288/scarlet-beastmaster
UPDATE `creature_template` SET `MaxLootGold`='786' WHERE `entry`='4289'; -- Scarlet Evoker (181MinG) (242MaxG) https://www.wowhead.com/tbc/npc=4289/scarlet-evoker
UPDATE `creature_template` SET `MinLootGold`='143', `MaxLootGold`='826' WHERE `entry`='4290'; -- Scarlet Guardsman (232MinG) (308MaxG) https://www.wowhead.com/tbc/npc=4290/scarlet-guardsman
UPDATE `creature_template` SET `MinLootGold`='106', `MaxLootGold`='689' WHERE `entry`='4291'; -- Scarlet Diviner (191MinG) (254MaxG) (sample size 35)
UPDATE `creature_template` SET `MinLootGold`='133', `MaxLootGold`='815' WHERE `entry`='4292'; -- Scarlet Protector (203MinG) (270MaxG) https://www.wowhead.com/tbc/npc=4292/scarlet-protector
UPDATE `creature_template` SET `MinLootGold`='70', `MaxLootGold`='504' WHERE `entry`='4293'; -- Scarlet Scryer (154MinG) (206MaxG) https://www.wowhead.com/tbc/npc=4293/scarlet-scryer
UPDATE `creature_template` SET `MinLootGold`='150', `MaxLootGold`='905' WHERE `entry`='4294'; -- Scarlet Sorcerer (187MinG) (250MaxG) https://www.wowhead.com/tbc/npc=4294/scarlet-sorcerer
UPDATE `creature_template` SET `MinLootGold`='142', `MaxLootGold`='882' WHERE `entry`='4295'; -- Scarlet Myrmidon (243MinG) (322MaxG) (sample size 48)
UPDATE `creature_template` SET `MinLootGold`='139', `MaxLootGold`='668' WHERE `entry`='4296'; -- Scarlet Adept (185MinG) (246MaxG) https://www.wowhead.com/tbc/npc=4296/scarlet-adept
UPDATE `creature_template` SET `MaxLootGold`='488' WHERE `entry`='4297'; -- Scarlet Conjuror (184MinG) (245MaxG) https://www.wowhead.com/tbc/npc=4297/scarlet-conjuror
UPDATE `creature_template` SET `MinLootGold`='206', `MaxLootGold`='864' WHERE `entry`='4298'; -- Scarlet Defender (243MinG) (322MaxG) (sample size 45)
UPDATE `creature_template` SET `MinLootGold`='117', `MaxLootGold`='674' WHERE `entry`='4299'; -- Scarlet Chaplain (195MinG) (260MaxG) (sample size 43)
UPDATE `creature_template` SET `MinLootGold`='137', `MaxLootGold`='923' WHERE `entry`='4300'; -- Scarlet Wizard (223MinG) (296MaxG) (sample size 41)
UPDATE `creature_template` SET `MinLootGold`='151', `MaxLootGold`='899' WHERE `entry`='4301'; -- Scarlet Centurion (253MinG) (335MaxG) (sample size 63)
UPDATE `creature_template` SET `MinLootGold`='209', `MaxLootGold`='1008' WHERE `entry`='4302'; -- Scarlet Champion (216MinG) (287MaxG) (sample size 27)
UPDATE `creature_template` SET `MaxLootGold`='984' WHERE `entry`='4303'; -- Scarlet Abbot (225MinG) (298MaxG) https://www.wowhead.com/tbc/npc=4303/scarlet-abbot
UPDATE `creature_template` SET `MinLootGold`='81', `MaxLootGold`='542' WHERE `entry`='4306'; -- Scarlet Torturer (184MinG) (245MaxG) https://www.wowhead.com/tbc/npc=4306/scarlet-torturer
UPDATE `creature_template` SET `MinLootGold`='29', `MaxLootGold`='196' WHERE `entry`='4308'; -- Unfettered Spirit (49MinG) (69MaxG) (sample size 87)
UPDATE `creature_template` SET `MinLootGold`='54', `MaxLootGold`='372' WHERE `entry`='4323'; -- Searing Hatchling (74MinG) (102MaxG) (sample size 71)
UPDATE `creature_template` SET `MinLootGold`='29', `MaxLootGold`='249' WHERE `entry`='4358'; -- Mirefin Puddlejumper (57MinG) (79MaxG) https://www.wowhead.com/tbc/npc=4358/mirefin-puddlejumper
UPDATE `creature_template` SET `MaxLootGold`='259' WHERE `entry`='4359'; -- Mirefin Murloc (59MinG) (81MaxG) https://www.wowhead.com/tbc/npc=4359/mirefin-murloc
UPDATE `creature_template` SET `MinLootGold`='55', `MaxLootGold`='300' WHERE `entry`='4360'; -- Mirefin Warrior (62MinG) (86MaxG) (sample size 21)
UPDATE `creature_template` SET `MinLootGold`='44', `MaxLootGold`='276' WHERE `entry`='4361'; -- Mirefin Muckdweller (62MinG) (85MaxG) (sample size 48)
UPDATE `creature_template` SET `MinLootGold`='46', `MaxLootGold`='266' WHERE `entry`='4362'; -- Mirefin Coastrunner (59MinG) (83MaxG) (sample size 37)
UPDATE `creature_template` SET `MinLootGold`='48', `MaxLootGold`='302' WHERE `entry`='4363'; -- Mirefin Oracle (56MinG) (78MaxG) (sample size 28)
UPDATE `creature_template` SET `MaxLootGold`='2054' WHERE `entry`='4364'; -- Strashaz Warrior (497MinG) (654MaxG) https://www.wowhead.com/tbc/npc=4364/strashaz-warrior
UPDATE `creature_template` SET `MaxLootGold`='2915' WHERE `entry`='4366'; -- Strashaz Serpent Guard (501MinG) (659MaxG) https://www.wowhead.com/tbc/npc=4366/strashaz-serpent-guard
UPDATE `creature_template` SET `MaxLootGold`='2807' WHERE `entry`='4368'; -- Strashaz Myrmidon (503MinG) (661MaxG) https://www.wowhead.com/tbc/npc=4368/strashaz-myrmidon
UPDATE `creature_template` SET `MaxLootGold`='3087' WHERE `entry`='4370'; -- Strashaz Sorceress (426MinG) (562MaxG) https://www.wowhead.com/tbc/npc=4370/strashaz-sorceress
UPDATE `creature_template` SET `MaxLootGold`='2727' WHERE `entry`='4371'; -- Strashaz Siren (412MinG) (543MaxG) https://www.wowhead.com/tbc/npc=4371/strashaz-siren
UPDATE `creature_template` SET `MaxLootGold`='164' WHERE `entry`='4382'; -- Withervine Creeper (59MinG) (81MaxG) https://www.wowhead.com/tbc/npc=4382/withervine-creeper
UPDATE `creature_template` SET `MinLootGold`='29', `MaxLootGold`='190' WHERE `entry`='4386'; -- Withervine Bark Ripper (59MinG) (83MaxG) https://www.wowhead.com/tbc/npc=4386/withervine-bark-ripper
UPDATE `creature_template` SET `MinLootGold`='28', `MaxLootGold`='186' WHERE `entry`='4391'; -- Swamp Ooze (65MinG) (89MaxG) https://www.wowhead.com/tbc/npc=4391/swamp-ooze
UPDATE `creature_template` SET `MinLootGold`='43', `MaxLootGold`='289' WHERE `entry`='4392'; -- Corrosive Swamp Ooze (68MinG) (93MaxG) https://www.wowhead.com/tbc/npc=4392/corrosive-swamp-ooze
UPDATE `creature_template` SET `MinLootGold`='64' WHERE `entry`='4393'; -- Acidic Swamp Ooze (71MinG) (97MaxG) https://www.wowhead.com/tbc/npc=4393/acidic-swamp-ooze
UPDATE `creature_template` SET `MinLootGold`='308', `MaxLootGold`='520' WHERE `entry`='4394'; -- Bubbling Swamp Ooze (308MinG) (520MaxG) https://www.wowhead.com/tbc/npc=4394/bubbling-swamp-ooze
UPDATE `creature_template` SET `MaxLootGold`='318' WHERE `entry`='4401'; -- Muckshell Clacker (66MinG) (91MaxG) https://www.wowhead.com/tbc/npc=4401/muckshell-clacker
UPDATE `creature_template` SET `MinLootGold`='41', `MaxLootGold`='215' WHERE `entry`='4402'; -- Muckshell Snapclaw (71MinG) (98MaxG) https://www.wowhead.com/tbc/npc=4402/muckshell-snapclaw
UPDATE `creature_template` SET `MaxLootGold`='357' WHERE `entry`='4404'; -- Muckshell Scrabbler (69MinG) (95MaxG) https://www.wowhead.com/tbc/npc=4404/muckshell-scrabbler
UPDATE `creature_template` SET `MinLootGold`='44', `MaxLootGold`='375' WHERE `entry`='4405'; -- Muckshell Razorclaw (78MinG) (107MaxG) https://www.wowhead.com/tbc/npc=4405/muckshell-razorclaw
UPDATE `creature_template` SET `MaxLootGold`='339' WHERE `entry`='4409'; -- Gatekeeper Kordurus (129MinG) (173MaxG) https://www.wowhead.com/tbc/npc=4409/gatekeeper-kordurus
UPDATE `creature_template` SET `MinLootGold`='8', `MaxLootGold`='56' WHERE `entry`='4416'; -- Defias Strip Miner (24MinG) (36MaxG) (sample size 28)
UPDATE `creature_template` SET `MinLootGold`='66', `MaxLootGold`='171' WHERE `entry`='4417'; -- Defias Taskmaster (83MinG) (113MaxG) https://www.wowhead.com/tbc/npc=4417/defias-taskmaster
UPDATE `creature_template` SET `MaxLootGold`='169' WHERE `entry`='4418'; -- Defias Wizard (79MinG) (108MaxG) https://www.wowhead.com/tbc/npc=4418/defias-wizard
UPDATE `creature_template` SET `MinLootGold`='156' WHERE `entry`='4420'; -- Overlord Ramtusk (366MinG) (483MaxG) https://www.wowhead.com/tbc/npc=4420/overlord-ramtusk
UPDATE `creature_template` SET `MinLootGold`='328' WHERE `entry`='4421'; -- Charlga Razorflank (457MinG) (602MaxG) https://www.wowhead.com/tbc/npc=4421/charlga-razorflank
UPDATE `creature_template` SET `MinLootGold`='116', `MaxLootGold`='356' WHERE `entry`='4424'; -- Aggem Thorncurse (227MinG) (301MaxG) https://www.wowhead.com/tbc/npc=4424/aggem-thorncurse
UPDATE `creature_template` SET `MinLootGold`='226' WHERE `entry`='4428'; -- Death Speaker Jargba (227MinG) (301MaxG) https://www.wowhead.com/tbc/npc=4428/death-speaker-jargba
UPDATE `creature_template` SET `MinLootGold`='94' WHERE `entry`='4435'; -- Razorfen Warrior (136MinG) (182MaxG) https://www.wowhead.com/tbc/npc=4435/razorfen-warrior
UPDATE `creature_template` SET `MaxLootGold`='350' WHERE `entry`='4436'; -- Razorfen Quilguard (137MinG) (184MaxG) https://www.wowhead.com/tbc/npc=4436/razorfen-quilguard
UPDATE `creature_template` SET `MinLootGold`='112' WHERE `entry`='4437'; -- Razorfen Warden (133MinG) (179MaxG) https://www.wowhead.com/tbc/npc=4437/razorfen-warden
UPDATE `creature_template` SET `MaxLootGold`='459' WHERE `entry`='4438'; -- Razorfen Spearhide (167MinG) (222MaxG) https://www.wowhead.com/tbc/npc=4438/razorfen-spearhide
UPDATE `creature_template` SET `MaxLootGold`='284' WHERE `entry`='4440'; -- Razorfen Totemic (148MinG) (199MaxG) https://www.wowhead.com/tbc/npc=4440/razorfen-totemic
UPDATE `creature_template` SET `MaxLootGold`='400' WHERE `entry`='4442'; -- Razorfen Defender (153MinG) (205MaxG) https://www.wowhead.com/tbc/npc=4442/razorfen-defender
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='4445'; -- Griznak (1MinG) (439MaxG) https://www.wowhead.com/tbc/npc=4445/griznak
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='4449'; -- Crazzle Sprysprocket (1MinG) (439MaxG) https://www.wowhead.com/tbc/npc=4449/crazzle-sprysprocket
UPDATE `creature_template` SET `MaxLootGold`='159' WHERE `entry`='4458'; -- Murkgill Hunter (63MinG) (87MaxG) https://www.wowhead.com/tbc/npc=4458/murkgill-hunter
UPDATE `creature_template` SET `MaxLootGold`='200' WHERE `entry`='4461'; -- Murkgill Warrior (63MinG) (87MaxG) https://www.wowhead.com/tbc/npc=4461/murkgill-warrior
UPDATE `creature_template` SET `MinLootGold`='15', `MaxLootGold`='82' WHERE `entry`='4463'; -- Blackrock Summoner (27MinG) (40MaxG) https://www.wowhead.com/tbc/npc=4463/blackrock-summoner
UPDATE `creature_template` SET `MinLootGold`='76', `MaxLootGold`='507' WHERE `entry`='4466'; -- Vilebranch Scalper (89MinG) (121MaxG) https://www.wowhead.com/tbc/npc=4466/vilebranch-scalper
UPDATE `creature_template` SET `MinLootGold`='80', `MaxLootGold`='505' WHERE `entry`='4467'; -- Vilebranch Soothsayer (74MinG) (102MaxG) https://www.wowhead.com/tbc/npc=4467/vilebranch-soothsayer
UPDATE `creature_template` SET `MaxLootGold`='907' WHERE `entry`='4472'; -- Haunting Vision (113MinG) (153MaxG) https://www.wowhead.com/tbc/npc=4472/haunting-vision
UPDATE `creature_template` SET `MinLootGold`='113', `MaxLootGold`='736' WHERE `entry`='4474'; -- Rotting Cadaver (114MinG) (154MaxG) https://www.wowhead.com/tbc/npc=4474/rotting-cadaver
UPDATE `creature_template` SET `MaxLootGold`='686' WHERE `entry`='4475'; -- Blighted Zombie (107MinG) (145MaxG) https://www.wowhead.com/tbc/npc=4475/blighted-zombie
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='4476'; -- Screaming Haunt (147MinG) (737MaxG) https://www.wowhead.com/tbc/npc=4476/screaming-haunt
UPDATE `creature_template` SET `MaxLootGold`='155' WHERE `entry`='4479'; -- Fardel Dabyrie (51MinG) (71MaxG) https://www.wowhead.com/tbc/npc=4479/fardel-dabyrie
UPDATE `creature_template` SET `MaxLootGold`='280' WHERE `entry`='4480'; -- Kenata Dabyrie (120MinG) (160MaxG) https://www.wowhead.com/tbc/npc=4480/kenata-dabyrie
UPDATE `creature_template` SET `MaxLootGold`='244' WHERE `entry`='4481'; -- Marcel Dabyrie (54MinG) (75MaxG) https://www.wowhead.com/tbc/npc=4481/marcel-dabyrie
UPDATE `creature_template` SET `MinLootGold`='24', `MaxLootGold`='120' WHERE `entry`='4490'; -- Grenka Bloodscreech (47MinG) (66MaxG) https://www.wowhead.com/tbc/npc=4490/grenka-bloodscreech
UPDATE `creature_template` SET `MaxLootGold`='823' WHERE `entry`='4493'; -- Scarlet Avenger (125MinG) (169MaxG) https://www.wowhead.com/tbc/npc=4493/scarlet-avenger
UPDATE `creature_template` SET `MaxLootGold`='845' WHERE `entry`='4494'; -- Scarlet Spellbinder (105MinG) (142MaxG) https://www.wowhead.com/tbc/npc=4494/scarlet-spellbinder
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='4497'; -- Captain Quirk (22MinG) (109MaxG) https://www.wowhead.com/tbc/npc=4497/captain-quirk
UPDATE `creature_template` SET `MinLootGold`='29', `MaxLootGold`='270' WHERE `entry`='4504'; -- Frostmaw (60MinG) (84MaxG) https://www.wowhead.com/tbc/npc=4504/frostmaw
UPDATE `creature_template` SET `MinLootGold`='67', `MaxLootGold`='422' WHERE `entry`='4505'; -- Bloodsail Deckhand (78MinG) (107MaxG) (sample size 26)
UPDATE `creature_template` SET `MinLootGold`='71', `MaxLootGold`='424' WHERE `entry`='4506'; -- Bloodsail Swabby (80MinG) (110MaxG) (sample size 22)
UPDATE `creature_template` SET `MaxLootGold`='378' WHERE `entry`='4515'; -- Death's Head Acolyte (147MinG) (196MaxG) https://www.wowhead.com/tbc/npc=4515/deaths-head-acolyte
UPDATE `creature_template` SET `MinLootGold`='128' WHERE `entry`='4516'; -- Death's Head Adept (162MinG) (216MaxG) https://www.wowhead.com/tbc/npc=4516/deaths-head-adept
UPDATE `creature_template` SET `MinLootGold`='74', `MaxLootGold`='298' WHERE `entry`='4517'; -- Death's Head Priest (130MinG) (175MaxG) https://www.wowhead.com/tbc/npc=4517/deaths-head-priest
UPDATE `creature_template` SET `MinLootGold`='150', `MaxLootGold`='424' WHERE `entry`='4518'; -- Death's Head Sage (157MinG) (210MaxG) https://www.wowhead.com/tbc/npc=4518/deaths-head-sage
UPDATE `creature_template` SET `MaxLootGold`='373' WHERE `entry`='4519'; -- Death's Head Seer (147MinG) (196MaxG) https://www.wowhead.com/tbc/npc=4519/deaths-head-seer
UPDATE `creature_template` SET `MinLootGold`='86', `MaxLootGold`='228' WHERE `entry`='4520'; -- Razorfen Geomancer (120MinG) (162MaxG) https://www.wowhead.com/tbc/npc=4520/razorfen-geomancer
UPDATE `creature_template` SET `MinLootGold`='103', `MaxLootGold`='351' WHERE `entry`='4523'; -- Razorfen Groundshaker (141MinG) (189MaxG) https://www.wowhead.com/tbc/npc=4523/razorfen-groundshaker
UPDATE `creature_template` SET `MaxLootGold`='355' WHERE `entry`='4525'; -- Razorfen Earthbreaker (163MinG) (217MaxG) https://www.wowhead.com/tbc/npc=4525/razorfen-earthbreaker
UPDATE `creature_template` SET `MinLootGold`='117' WHERE `entry`='4530'; -- Razorfen Handler (137MinG) (184MaxG) https://www.wowhead.com/tbc/npc=4530/razorfen-handler
UPDATE `creature_template` SET `MaxLootGold`='314' WHERE `entry`='4531'; -- Razorfen Beast Trainer (164MinG) (219MaxG) https://www.wowhead.com/tbc/npc=4531/razorfen-beast-trainer
UPDATE `creature_template` SET `MinLootGold`='135', `MaxLootGold`='410' WHERE `entry`='4532'; -- Razorfen Beastmaster (184MinG) (245MaxG) https://www.wowhead.com/tbc/npc=4532/razorfen-beastmaster
UPDATE `creature_template` SET `MinLootGold`='125', `MaxLootGold`='791' WHERE `entry`='4540'; -- Scarlet Monk (227MinG) (301MaxG) (sample size 63)
UPDATE `creature_template` SET `MinLootGold`='96' WHERE `entry`='4541'; -- Blood of Agamaggan (153MinG) (205MaxG) https://www.wowhead.com/tbc/npc=4541/blood-of-agamaggan
UPDATE `creature_template` SET `MinLootGold`='172', `MaxLootGold`='497' WHERE `entry`='4542'; -- High Inquisitor Fairbanks (329MinG) (434MaxG) https://www.wowhead.com/tbc/npc=4542/high-inquisitor-fairbanks
UPDATE `creature_template` SET `MinLootGold`='121', `MaxLootGold`='720' WHERE `entry`='4543'; -- Bloodmage Thalnos (386MinG) (509MaxG) https://www.wowhead.com/tbc/npc=4543/bloodmage-thalnos
UPDATE `creature_template` SET `MinLootGold`='48', `MaxLootGold`='134' WHERE `entry`='4619'; -- Geltharis (50MinG) (70MaxG) https://www.wowhead.com/tbc/npc=4619/geltharis
UPDATE `creature_template` SET `MinLootGold`='137', `MaxLootGold`='506' WHERE `entry`='4623'; -- Quilguard Champion (180MinG) (240MaxG) https://www.wowhead.com/tbc/npc=4623/quilguard-champion
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='4624'; -- Booty Bay Bruiser (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=4624/booty-bay-bruiser - false positive
UPDATE `creature_template` SET `MinLootGold`='10', `MaxLootGold`='20' WHERE `entry`='4625'; -- Death's Head Ward Keeper (10MinG) (20MaxG) https://www.wowhead.com/tbc/npc=4625/deaths-head-ward-keeper
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='4627'; -- Arugal's Voidwalker (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=4627/arugals-voidwalker
UPDATE `creature_template` SET `MinLootGold`='28', `MaxLootGold`='163' WHERE `entry`='4632'; -- Kolkar Centaur (46MinG) (65MaxG) (sample size 23)
UPDATE `creature_template` SET `MinLootGold`='34', `MaxLootGold`='182' WHERE `entry`='4633'; -- Kolkar Scout (46MinG) (65MaxG) (sample size 21)
UPDATE `creature_template` SET `MinLootGold`='45', `MaxLootGold`='186' WHERE `entry`='4634'; -- Kolkar Mauler (49MinG) (69MaxG) (sample size 21)
UPDATE `creature_template` SET `MinLootGold`='32', `MaxLootGold`='189' WHERE `entry`='4635'; -- Kolkar Windchaser (44MinG) (63MaxG) https://www.wowhead.com/tbc/npc=4635/kolkar-windchaser
UPDATE `creature_template` SET `MaxLootGold`='202' WHERE `entry`='4636'; -- Kolkar Battle Lord (50MinG) (70MaxG) https://www.wowhead.com/tbc/npc=4636/kolkar-battle-lord
UPDATE `creature_template` SET `MaxLootGold`='174' WHERE `entry`='4637'; -- Kolkar Destroyer (46MinG) (65MaxG) https://www.wowhead.com/tbc/npc=4637/kolkar-destroyer
UPDATE `creature_template` SET `MinLootGold`='35', `MaxLootGold`='185' WHERE `entry`='4638'; -- Magram Scout (50MinG) (70MaxG) https://www.wowhead.com/tbc/npc=4638/magram-scout
UPDATE `creature_template` SET `MinLootGold`='31', `MaxLootGold`='213' WHERE `entry`='4639'; -- Magram Outrunner (50MinG) (70MaxG) https://www.wowhead.com/tbc/npc=4639/magram-outrunner
UPDATE `creature_template` SET `MinLootGold`='34', `MaxLootGold`='227' WHERE `entry`='4640'; -- Magram Wrangler (53MinG) (74MaxG) (sample size 23)
UPDATE `creature_template` SET `MinLootGold`='36', `MaxLootGold`='167' WHERE `entry`='4641'; -- Magram Windchaser (48MinG) (68MaxG) https://www.wowhead.com/tbc/npc=4641/magram-windchaser
UPDATE `creature_template` SET `MinLootGold`='43', `MaxLootGold`='246' WHERE `entry`='4642'; -- Magram Stormer (49MinG) (69MaxG) https://www.wowhead.com/tbc/npc=4642/magram-stormer
UPDATE `creature_template` SET `MinLootGold`='41', `MaxLootGold`='244' WHERE `entry`='4644'; -- Magram Marauder (59MinG) (81MaxG) https://www.wowhead.com/tbc/npc=4644/magram-marauder
UPDATE `creature_template` SET `MaxLootGold`='260' WHERE `entry`='4645'; -- Magram Mauler (59MinG) (81MaxG) https://www.wowhead.com/tbc/npc=4645/magram-mauler
UPDATE `creature_template` SET `MaxLootGold`='210' WHERE `entry`='4646'; -- Gelkis Outrunner (50MinG) (70MaxG) https://www.wowhead.com/tbc/npc=4646/gelkis-outrunner
UPDATE `creature_template` SET `MinLootGold`='31', `MaxLootGold`='213' WHERE `entry`='4647'; -- Gelkis Scout (50MinG) (70MaxG) https://www.wowhead.com/tbc/npc=4647/gelkis-scout
UPDATE `creature_template` SET `MinLootGold`='41', `MaxLootGold`='213' WHERE `entry`='4648'; -- Gelkis Stamper (53MinG) (74MaxG) https://www.wowhead.com/tbc/npc=4648/gelkis-stamper
UPDATE `creature_template` SET `MinLootGold`='42', `MaxLootGold`='230' WHERE `entry`='4649'; -- Gelkis Windchaser (48MinG) (68MaxG) https://www.wowhead.com/tbc/npc=4649/gelkis-windchaser
UPDATE `creature_template` SET `MinLootGold`='58', `MaxLootGold`='238' WHERE `entry`='4651'; -- Gelkis Earthcaller (47MinG) (66MaxG) https://www.wowhead.com/tbc/npc=4651/gelkis-earthcaller
UPDATE `creature_template` SET `MaxLootGold`='245' WHERE `entry`='4652'; -- Gelkis Mauler (59MinG) (81MaxG) https://www.wowhead.com/tbc/npc=4652/gelkis-mauler
UPDATE `creature_template` SET `MaxLootGold`='264' WHERE `entry`='4653'; -- Gelkis Marauder (59MinG) (81MaxG) https://www.wowhead.com/tbc/npc=4653/gelkis-marauder
UPDATE `creature_template` SET `MinLootGold`='44', `MaxLootGold`='296' WHERE `entry`='4654'; -- Maraudine Scout (62MinG) (86MaxG) https://www.wowhead.com/tbc/npc=4654/maraudine-scout
UPDATE `creature_template` SET `MaxLootGold`='157' WHERE `entry`='4655'; -- Maraudine Wrangler (62MinG) (86MaxG) https://www.wowhead.com/tbc/npc=4655/maraudine-wrangler
UPDATE `creature_template` SET `MinLootGold`='56', `MaxLootGold`='207' WHERE `entry`='4656'; -- Maraudine Mauler (61MinG) (85MaxG) https://www.wowhead.com/tbc/npc=4656/maraudine-mauler
UPDATE `creature_template` SET `MaxLootGold`='268' WHERE `entry`='4657'; -- Maraudine Windchaser (59MinG) (82MaxG) https://www.wowhead.com/tbc/npc=4657/maraudine-windchaser
UPDATE `creature_template` SET `MaxLootGold`='238' WHERE `entry`='4658'; -- Maraudine Stormer (58MinG) (80MaxG) https://www.wowhead.com/tbc/npc=4658/maraudine-stormer
UPDATE `creature_template` SET `MaxLootGold`='291' WHERE `entry`='4659'; -- Maraudine Marauder (68MinG) (94MaxG) https://www.wowhead.com/tbc/npc=4659/maraudine-marauder
UPDATE `creature_template` SET `MinLootGold`='33', `MaxLootGold`='176' WHERE `entry`='4663'; -- Burning Blade Augur (40MinG) (58MaxG) (sample size 21)
UPDATE `creature_template` SET `MinLootGold`='34', `MaxLootGold`='176' WHERE `entry`='4664'; -- Burning Blade Reaver (46MinG) (65MaxG) (sample size 25)
UPDATE `creature_template` SET `MinLootGold`='40', `MaxLootGold`='193' WHERE `entry`='4665'; -- Burning Blade Adept (42MinG) (60MaxG) (sample size 23)
UPDATE `creature_template` SET `MinLootGold`='30', `MaxLootGold`='197' WHERE `entry`='4666'; -- Burning Blade Felsworn (49MinG) (69MaxG) (sample size 47)
UPDATE `creature_template` SET `MaxLootGold`='193' WHERE `entry`='4667'; -- Burning Blade Shadowmage (44MinG) (62MaxG) https://www.wowhead.com/tbc/npc=4667/burning-blade-shadowmage
UPDATE `creature_template` SET `MaxLootGold`='201' WHERE `entry`='4668'; -- Burning Blade Summoner (55MinG) (76MaxG) https://www.wowhead.com/tbc/npc=4668/burning-blade-summoner
UPDATE `creature_template` SET `MinLootGold`='28', `MaxLootGold`='196' WHERE `entry`='4670'; -- Hatefury Rogue (49MinG) (69MaxG) (sample size 23)
UPDATE `creature_template` SET `MinLootGold`='28', `MaxLootGold`='194' WHERE `entry`='4671'; -- Hatefury Trickster (49MinG) (69MaxG) (sample size 35)
UPDATE `creature_template` SET `MinLootGold`='29', `MaxLootGold`='193' WHERE `entry`='4672'; -- Hatefury Felsworn (49MinG) (69MaxG) (sample size 27)
UPDATE `creature_template` SET `MinLootGold`='30', `MaxLootGold`='213' WHERE `entry`='4673'; -- Hatefury Betrayer (50MinG) (70MaxG) (sample size 32)
UPDATE `creature_template` SET `MinLootGold`='42', `MaxLootGold`='201' WHERE `entry`='4674'; -- Hatefury Shadowstalker (50MinG) (70MaxG) (sample size 22)
UPDATE `creature_template` SET `MaxLootGold`='211' WHERE `entry`='4675'; -- Hatefury Hellcaller (46MinG) (65MaxG) https://www.wowhead.com/tbc/npc=4675/hatefury-hellcaller
UPDATE `creature_template` SET `MinLootGold`='47', `MaxLootGold`='299' WHERE `entry`='4677'; -- Doomwarder (62MinG) (86MaxG) https://www.wowhead.com/tbc/npc=4677/doomwarder
UPDATE `creature_template` SET `MaxLootGold`='267' WHERE `entry`='4679'; -- Nether Maiden (56MinG) (78MaxG) https://www.wowhead.com/tbc/npc=4679/nether-maiden
UPDATE `creature_template` SET `MinLootGold`='54', `MaxLootGold`='292' WHERE `entry`='4680'; -- Doomwarder Captain (65MinG) (90MaxG) https://www.wowhead.com/tbc/npc=4680/doomwarder-captain
UPDATE `creature_template` SET `MinLootGold`='59', `MaxLootGold`='230' WHERE `entry`='4682'; -- Nether Sister (61MinG) (85MaxG) https://www.wowhead.com/tbc/npc=4682/nether-sister
UPDATE `creature_template` SET `MaxLootGold`='335' WHERE `entry`='4684'; -- Nether Sorceress (56MinG) (78MaxG) https://www.wowhead.com/tbc/npc=4684/nether-sorceress
UPDATE `creature_template` SET `MinLootGold`='93' WHERE `entry`='4686'; -- Deepstrider Giant (249MinG) (330MaxG) https://www.wowhead.com/tbc/npc=4686/deepstrider-giant
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='4710'; -- Riding Ram (Gray) (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=4710/riding-ram-gray
UPDATE `creature_template` SET `MaxLootGold`='208' WHERE `entry`='4711'; -- Slitherblade Naga (50MinG) (70MaxG) (sample size 22)
UPDATE `creature_template` SET `MaxLootGold`='196' WHERE `entry`='4712'; -- Slitherblade Sorceress (44MinG) (62MaxG) https://www.wowhead.com/tbc/npc=4712/slitherblade-sorceress
UPDATE `creature_template` SET `MinLootGold`='43', `MaxLootGold`='229' WHERE `entry`='4713'; -- Slitherblade Warrior (53MinG) (74MaxG) https://www.wowhead.com/tbc/npc=4713/slitherblade-warrior
UPDATE `creature_template` SET `MinLootGold`='36', `MaxLootGold`='239' WHERE `entry`='4714'; -- Slitherblade Myrmidon (54MinG) (75MaxG) (sample size 27)
UPDATE `creature_template` SET `MinLootGold`='40', `MaxLootGold`='264' WHERE `entry`='4715'; -- Slitherblade Razortail (59MinG) (81MaxG) (sample size 33)
UPDATE `creature_template` SET `MinLootGold`='42', `MaxLootGold`='257' WHERE `entry`='4716'; -- Slitherblade Tidehunter (53MinG) (74MaxG) https://www.wowhead.com/tbc/npc=4716/slitherblade-tidehunter
UPDATE `creature_template` SET `MinLootGold`='39', `MaxLootGold`='237' WHERE `entry`='4718'; -- Slitherblade Oracle (49MinG) (69MaxG) https://www.wowhead.com/tbc/npc=4718/slitherblade-oracle
UPDATE `creature_template` SET `MaxLootGold`='259' WHERE `entry`='4719'; -- Slitherblade Sea Witch (52MinG) (73MaxG) (sample size 23)
UPDATE `creature_template` SET `MaxLootGold`='311' WHERE `entry`='4723'; -- Foreman Cozzle (57MinG) (79MaxG) https://www.wowhead.com/tbc/npc=4723/foreman-cozzle
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='4777'; -- Riding Ram (White) (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=4777/riding-ram-white
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='4778'; -- Riding Ram (Blue) (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=4778/riding-ram-blue
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='4780'; -- Riding Ram (Black) (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=4780/riding-ram-black
UPDATE `creature_template` SET `MinLootGold`='48', `MaxLootGold`='271' WHERE `entry`='4798'; -- Fallenroot Shadowstalker (108MinG) (146MaxG) https://www.wowhead.com/tbc/npc=4798/fallenroot-shadowstalker
UPDATE `creature_template` SET `MinLootGold`='65', `MaxLootGold`='225' WHERE `entry`='4799'; -- Fallenroot Hellcaller (114MinG) (154MaxG) https://www.wowhead.com/tbc/npc=4799/fallenroot-hellcaller
UPDATE `creature_template` SET `MinLootGold`='53', `MaxLootGold`='285' WHERE `entry`='4805'; -- Blackfathom Sea Witch (113MinG) (152MaxG) https://www.wowhead.com/tbc/npc=4805/blackfathom-sea-witch
UPDATE `creature_template` SET `MinLootGold`='72', `MaxLootGold`='259' WHERE `entry`='4807'; -- Blackfathom Myrmidon (153MinG) (205MaxG) https://www.wowhead.com/tbc/npc=4807/blackfathom-myrmidon
UPDATE `creature_template` SET `MaxLootGold`='306' WHERE `entry`='4809'; -- Twilight Acolyte (119MinG) (160MaxG) https://www.wowhead.com/tbc/npc=4809/twilight-acolyte
UPDATE `creature_template` SET `MaxLootGold`='311' WHERE `entry`='4811'; -- Twilight Aquamancer (120MinG) (162MaxG) https://www.wowhead.com/tbc/npc=4811/twilight-aquamancer
UPDATE `creature_template` SET `MaxLootGold`='298' WHERE `entry`='4812'; -- Twilight Loreseeker (114MinG) (154MaxG) https://www.wowhead.com/tbc/npc=4812/twilight-loreseeker
UPDATE `creature_template` SET `MinLootGold`='103', `MaxLootGold`='385' WHERE `entry`='4813'; -- Twilight Shadowmage (126MinG) (170MaxG) https://www.wowhead.com/tbc/npc=4813/twilight-shadowmage
UPDATE `creature_template` SET `MaxLootGold`='270' WHERE `entry`='4814'; -- Twilight Elementalist (130MinG) (175MaxG) https://www.wowhead.com/tbc/npc=4814/twilight-elementalist
UPDATE `creature_template` SET `MinLootGold`='72', `MaxLootGold`='262' WHERE `entry`='4815'; -- Murkshallow Snapclaw (115MinG) (155MaxG) https://www.wowhead.com/tbc/npc=4815/murkshallow-snapclaw
UPDATE `creature_template` SET `MinLootGold`='54', `MaxLootGold`='262' WHERE `entry`='4818'; -- Blindlight Murloc (111MinG) (150MaxG) https://www.wowhead.com/tbc/npc=4818/blindlight-murloc
UPDATE `creature_template` SET `MinLootGold`='68' WHERE `entry`='4819'; -- Blindlight Muckdweller (137MinG) (184MaxG) https://www.wowhead.com/tbc/npc=4819/blindlight-muckdweller
UPDATE `creature_template` SET `MinLootGold`='76', `MaxLootGold`='290' WHERE `entry`='4820'; -- Blindlight Oracle (116MinG) (156MaxG) https://www.wowhead.com/tbc/npc=4820/blindlight-oracle
UPDATE `creature_template` SET `MinLootGold`='143' WHERE `entry`='4831'; -- Lady Sarevess (248MinG) (328MaxG) https://www.wowhead.com/tbc/npc=4831/lady-sarevess
UPDATE `creature_template` SET `MinLootGold`='43', `MaxLootGold`='241' WHERE `entry`='4834'; -- Theramore Infiltrator (59MinG) (81MaxG) (sample size 25)
UPDATE `creature_template` SET `MinLootGold`='70', `MaxLootGold`='349' WHERE `entry`='4842'; -- Earthcaller Halmgar (283MinG) (374MaxG) https://www.wowhead.com/tbc/npc=4842/earthcaller-halmgar
UPDATE `creature_template` SET `MaxLootGold`='930' WHERE `entry`='4848'; -- Shadowforge Darkcaster (257MinG) (341MaxG) https://www.wowhead.com/tbc/npc=4848/shadowforge-darkcaster
UPDATE `creature_template` SET `MaxLootGold`='867' WHERE `entry`='4850'; -- Stonevault Cave Lurker (249MinG) (330MaxG) https://www.wowhead.com/tbc/npc=4850/stonevault-cave-lurker
UPDATE `creature_template` SET `MinLootGold`='133', `MaxLootGold`='887' WHERE `entry`='4852'; -- Stonevault Oracle (200MinG) (266MaxG) https://www.wowhead.com/tbc/npc=4852/stonevault-oracle
UPDATE `creature_template` SET `MaxLootGold`='911' WHERE `entry`='4853'; -- Stonevault Geomancer (257MinG) (341MaxG) https://www.wowhead.com/tbc/npc=4853/stonevault-geomancer
UPDATE `creature_template` SET `MaxLootGold`='1378' WHERE `entry`='4854'; -- Grimlok (388MinG) (512MaxG) https://www.wowhead.com/tbc/npc=4854/grimlok
UPDATE `creature_template` SET `MinLootGold`='247', `MaxLootGold`='1195' WHERE `entry`='4855'; -- Stonevault Brawler (300MinG) (396MaxG) https://www.wowhead.com/tbc/npc=4855/stonevault-brawler
UPDATE `creature_template` SET `MaxLootGold`='1455' WHERE `entry`='4857'; -- Stone Keeper (322MinG) (425MaxG) https://www.wowhead.com/tbc/npc=4857/stone-keeper
UPDATE `creature_template` SET `MinLootGold`='211', `MaxLootGold`='993' WHERE `entry`='4860'; -- Stone Steward (297MinG) (393MaxG) https://www.wowhead.com/tbc/npc=4860/stone-steward
UPDATE `creature_template` SET `MinLootGold`='155' WHERE `entry`='4872'; -- Obsidian Golem (249MinG) (330MaxG) https://www.wowhead.com/tbc/npc=4872/obsidian-golem
UPDATE `creature_template` SET `MinLootGold`='13', `MaxLootGold`='92' WHERE `entry`='4969'; -- Old Town Thug (36MinG) (52MaxG) https://www.wowhead.com/tbc/npc=4969/old-town-thug
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='4978'; -- Aku'mai Servant (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=4978/akumai-servant
UPDATE `creature_template` SET `MinLootGold`='26', `MaxLootGold`='278' WHERE `entry`='5044'; -- Theramore Skirmisher (57MinG) (80MaxG) https://www.wowhead.com/tbc/npc=5044/theramore-skirmisher
UPDATE `creature_template` SET `MinLootGold`='24', `MaxLootGold`='119' WHERE `entry`='5045'; -- Private Hallan (57MinG) (80MaxG) https://www.wowhead.com/tbc/npc=5045/private-hallan
UPDATE `creature_template` SET `MinLootGold`='28', `MaxLootGold`='255' WHERE `entry`='5046'; -- Lieutenant Caldwell (62MinG) (86MaxG) https://www.wowhead.com/tbc/npc=5046/lieutenant-caldwell
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='5150'; -- Nissa Firestone (1MinG) (439MaxG) https://www.wowhead.com/tbc/npc=5150/nissa-firestone
UPDATE `creature_template` SET `MinLootGold`='50', `MaxLootGold`='237' WHERE `entry`='5184'; -- Theramore Sentry (61MinG) (84MaxG) https://www.wowhead.com/tbc/npc=5184/theramore-sentry
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='5185'; -- Hammerhead Shark (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=5185/hammerhead-shark
UPDATE `creature_template` SET `MinLootGold`='337', `MaxLootGold`='1182' WHERE `entry`='5228'; -- Saturated Ooze (349MinG) (461MaxG) https://www.wowhead.com/tbc/npc=5228/saturated-ooze
UPDATE `creature_template` SET `MinLootGold`='72', `MaxLootGold`='322' WHERE `entry`='5229'; -- Gordunni Ogre (71MinG) (98MaxG) (sample size 23)
UPDATE `creature_template` SET `MinLootGold`='62', `MaxLootGold`='401' WHERE `entry`='5232'; -- Gordunni Brute (75MinG) (103MaxG) (sample size 33)
UPDATE `creature_template` SET `MinLootGold`='71', `MaxLootGold`='422' WHERE `entry`='5234'; -- Gordunni Mauler (78MinG) (107MaxG) (sample size 31)
UPDATE `creature_template` SET `MinLootGold`='88', `MaxLootGold`='414' WHERE `entry`='5236'; -- Gordunni Shaman (73MinG) (100MaxG) (sample size 23)
UPDATE `creature_template` SET `MinLootGold`='60', `MaxLootGold`='374' WHERE `entry`='5237'; -- Gordunni Ogre Mage (66MinG) (91MaxG) (sample size 27)
UPDATE `creature_template` SET `MinLootGold`='76', `MaxLootGold`='475' WHERE `entry`='5238'; -- Gordunni Battlemaster (86MinG) (118MaxG) (sample size 28)
UPDATE `creature_template` SET `MaxLootGold`='467' WHERE `entry`='5239'; -- Gordunni Mage-Lord (71MinG) (98MaxG) https://www.wowhead.com/tbc/npc=5239/gordunni-mage-lord
UPDATE `creature_template` SET `MinLootGold`='62', `MaxLootGold`='421' WHERE `entry`='5240'; -- Gordunni Warlock (65MinG) (90MaxG) (sample size 38)
UPDATE `creature_template` SET `MaxLootGold`='455' WHERE `entry`='5241'; -- Gordunni Warlord (89MinG) (121MaxG) https://www.wowhead.com/tbc/npc=5241/gordunni-warlord
UPDATE `creature_template` SET `MinLootGold`='60', `MaxLootGold`='335' WHERE `entry`='5249'; -- Woodpaw Mongrel (71MinG) (98MaxG) (sample size 22)
UPDATE `creature_template` SET `MinLootGold`='56', `MaxLootGold`='361' WHERE `entry`='5251'; -- Woodpaw Trapper (74MinG) (102MaxG) (sample size 29)
UPDATE `creature_template` SET `MinLootGold`='57', `MaxLootGold`='381' WHERE `entry`='5253'; -- Woodpaw Brute (74MinG) (102MaxG) (sample size 36)
UPDATE `creature_template` SET `MinLootGold`='66', `MaxLootGold`='386' WHERE `entry`='5254'; -- Woodpaw Mystic (67MinG) (92MaxG) https://www.wowhead.com/tbc/npc=5254/woodpaw-mystic
UPDATE `creature_template` SET `MinLootGold`='63', `MaxLootGold`='398' WHERE `entry`='5255'; -- Woodpaw Reaver (75MinG) (103MaxG) https://www.wowhead.com/tbc/npc=5255/woodpaw-reaver
UPDATE `creature_template` SET `MaxLootGold`='1621' WHERE `entry`='5256'; -- Atal'ai Warrior (355MinG) (468MaxG) https://www.wowhead.com/tbc/npc=5256/atalai-warrior
UPDATE `creature_template` SET `MinLootGold`='74', `MaxLootGold`='376' WHERE `entry`='5258'; -- Woodpaw Alpha (78MinG) (107MaxG) https://www.wowhead.com/tbc/npc=5258/woodpaw-alpha
UPDATE `creature_template` SET `MinLootGold`='262', `MaxLootGold`='1779' WHERE `entry`='5259'; -- Atal'ai Witch Doctor (306MinG) (404MaxG) (sample size 28)
UPDATE `creature_template` SET `MinLootGold`='259', `MaxLootGold`='1466' WHERE `entry`='5267'; -- Unliving Atal'ai (351MinG) (463MaxG) https://www.wowhead.com/tbc/npc=5267/unliving-atalai
UPDATE `creature_template` SET `MaxLootGold`='1672' WHERE `entry`='5270'; -- Atal'ai Corpse Eater (361MinG) (476MaxG) https://www.wowhead.com/tbc/npc=5270/atalai-corpse-eater
UPDATE `creature_template` SET `MaxLootGold`='1760' WHERE `entry`='5271'; -- Atal'ai Deathwalker (320MinG) (423MaxG) https://www.wowhead.com/tbc/npc=5271/atalai-deathwalker
UPDATE `creature_template` SET `MaxLootGold`='1843' WHERE `entry`='5273'; -- Atal'ai High Priest (320MinG) (423MaxG) https://www.wowhead.com/tbc/npc=5273/atalai-high-priest
UPDATE `creature_template` SET `MaxLootGold`='1824' WHERE `entry`='5277'; -- Nightmare Scalebane (375MinG) (495MaxG) https://www.wowhead.com/tbc/npc=5277/nightmare-scalebane
UPDATE `creature_template` SET `MinLootGold`='57', `MaxLootGold`='405' WHERE `entry`='5278'; -- Sprite Darter (72MinG) (99MaxG) (sample size 92)
UPDATE `creature_template` SET `MaxLootGold`='1809' WHERE `entry`='5280'; -- Nightmare Wyrmkin (320MinG) (423MaxG) https://www.wowhead.com/tbc/npc=5280/nightmare-wyrmkin
UPDATE `creature_template` SET `MinLootGold`='289', `MaxLootGold`='1196' WHERE `entry`='5283'; -- Nightmare Wanderer (361MinG) (476MaxG) https://www.wowhead.com/tbc/npc=5283/nightmare-wanderer
UPDATE `creature_template` SET `MinLootGold`='65', `MaxLootGold`='427' WHERE `entry`='5292'; -- Feral Scar Yeti (74MinG) (101MaxG) (sample size 50)
UPDATE `creature_template` SET `MaxLootGold`='455' WHERE `entry`='5293'; -- Hulking Feral Scar (91MinG) (123MaxG) https://www.wowhead.com/tbc/npc=5293/hulking-feral-scar
UPDATE `creature_template` SET `MinLootGold`='72', `MaxLootGold`='455' WHERE `entry`='5295'; -- Enraged Feral Scar (81MinG) (111MaxG) (sample size 29)
UPDATE `creature_template` SET `MinLootGold`='84', `MaxLootGold`='419' WHERE `entry`='5296'; -- Rage Scar Yeti (89MinG) (121MaxG) https://www.wowhead.com/tbc/npc=5296/rage-scar-yeti
UPDATE `creature_template` SET `MinLootGold`='107', `MaxLootGold`='557' WHERE `entry`='5297'; -- Elder Rage Scar (95MinG) (129MaxG) (sample size 22)
UPDATE `creature_template` SET `MinLootGold`='77', `MaxLootGold`='533' WHERE `entry`='5299'; -- Ferocious Rage Scar (92MinG) (125MaxG) (sample size 32)
UPDATE `creature_template` SET `MaxLootGold`='1619' WHERE `entry`='5357'; -- Land Walker (244MinG) (324MaxG) https://www.wowhead.com/tbc/npc=5357/land-walker
UPDATE `creature_template` SET `MaxLootGold`='1394' WHERE `entry`='5358'; -- Cliff Giant (246MinG) (326MaxG) https://www.wowhead.com/tbc/npc=5358/cliff-giant
UPDATE `creature_template` SET `MaxLootGold`='571' WHERE `entry`='5362'; -- Northspring Harpy (82MinG) (113MaxG) https://www.wowhead.com/tbc/npc=5362/northspring-harpy
UPDATE `creature_template` SET `MaxLootGold`='394' WHERE `entry`='5363'; -- Northspring Roguefeather (82MinG) (113MaxG) https://www.wowhead.com/tbc/npc=5363/northspring-roguefeather
UPDATE `creature_template` SET `MaxLootGold`='573' WHERE `entry`='5364'; -- Northspring Slayer (85MinG) (116MaxG) https://www.wowhead.com/tbc/npc=5364/northspring-slayer
UPDATE `creature_template` SET `MinLootGold`='121', `MaxLootGold`='603' WHERE `entry`='5366'; -- Northspring Windcaller (85MinG) (116MaxG) (sample size 21)
UPDATE `creature_template` SET `MinLootGold`='111', `MaxLootGold`='752' WHERE `entry`='5399'; -- Veyzhak the Cannibal (572MinG) (752MaxG) https://www.wowhead.com/tbc/npc=5399/veyzhak-the-cannibal
UPDATE `creature_template` SET `MinLootGold`='100', `MaxLootGold`='677' WHERE `entry`='5400'; -- Zekkis (515MinG) (677MaxG) https://www.wowhead.com/tbc/npc=5400/zekkis
UPDATE `creature_template` SET `MinLootGold`='107', `MaxLootGold`='671' WHERE `entry`='5402'; -- Khan Hratha (285MinG) (377MaxG) https://www.wowhead.com/tbc/npc=5402/khan-hratha
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='5434'; -- Coral Shark (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=5434/coral-shark
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='5435'; -- Sand Shark (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=5435/sand-shark
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='5436'; -- Tamed Bird (3MinG) (14MaxG) https://www.wowhead.com/tbc/npc=5436/tamed-bird
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='5439'; -- Tamed Crawler (45MinG) (224MaxG) https://www.wowhead.com/tbc/npc=5439/tamed-crawler
UPDATE `creature_template` SET `MinLootGold`='155' WHERE `entry`='5469'; -- Dune Smasher (351MinG) (463MaxG) https://www.wowhead.com/tbc/npc=5469/dune-smasher
UPDATE `creature_template` SET `MinLootGold`='115', `MaxLootGold`='576' WHERE `entry`='5470'; -- Raging Dune Smasher (365MinG) (482MaxG) https://www.wowhead.com/tbc/npc=5470/raging-dune-smasher
UPDATE `creature_template` SET `MinLootGold`='72', `MaxLootGold`='442' WHERE `entry`='5471'; -- Dunemaul Ogre (88MinG) (120MaxG) https://www.wowhead.com/tbc/npc=5471/dunemaul-ogre
UPDATE `creature_template` SET `MinLootGold`='78', `MaxLootGold`='502' WHERE `entry`='5472'; -- Dunemaul Enforcer (89MinG) (121MaxG) (sample size 64)
UPDATE `creature_template` SET `MaxLootGold`='434' WHERE `entry`='5473'; -- Dunemaul Ogre Mage (79MinG) (108MaxG) https://www.wowhead.com/tbc/npc=5473/dunemaul-ogre-mage
UPDATE `creature_template` SET `MinLootGold`='79', `MaxLootGold`='540' WHERE `entry`='5474'; -- Dunemaul Brute (90MinG) (123MaxG) (sample size 69)
UPDATE `creature_template` SET `MaxLootGold`='515' WHERE `entry`='5475'; -- Dunemaul Warlock (82MinG) (111MaxG) https://www.wowhead.com/tbc/npc=5475/dunemaul-warlock
UPDATE `creature_template` SET `MaxLootGold`='202' WHERE `entry`='5477'; -- Noboru the Cudgel (66MinG) (91MaxG) https://www.wowhead.com/tbc/npc=5477/noboru-the-cudgel
UPDATE `creature_template` SET `MinLootGold`='86', `MaxLootGold`='528' WHERE `entry`='5481'; -- Thistleshrub Dew Collector (92MinG) (125MaxG) (sample size 67)
UPDATE `creature_template` SET `MinLootGold`='87', `MaxLootGold`='603' WHERE `entry`='5485'; -- Thistleshrub Rootshaper (85MinG) (116MaxG) (sample size 54)
UPDATE `creature_template` SET `MinLootGold`='85', `MaxLootGold`='566' WHERE `entry`='5490'; -- Gnarled Thistleshrub (95MinG) (129MaxG) (sample size 44)
UPDATE `creature_template` SET `MaxLootGold`='221' WHERE `entry`='5600'; -- Khan Dez'hepah (150MinG) (170MaxG) https://www.wowhead.com/tbc/npc=5600/khan-dezhepah
UPDATE `creature_template` SET `MaxLootGold`='238' WHERE `entry`='5601'; -- Khan Jehn (150MinG) (184MaxG) https://www.wowhead.com/tbc/npc=5601/khan-jehn
UPDATE `creature_template` SET `MinLootGold`='94' WHERE `entry`='5602'; -- Khan Shaka (150MinG) (170MaxG) https://www.wowhead.com/tbc/npc=5602/khan-shaka
UPDATE `creature_template` SET `MinLootGold`='61', `MaxLootGold`='412' WHERE `entry`='5615'; -- Wastewander Rogue (78MinG) (107MaxG) (sample size 42)
UPDATE `creature_template` SET `MinLootGold`='54', `MaxLootGold`='351' WHERE `entry`='5616'; -- Wastewander Thief (71MinG) (98MaxG) (sample size 49)
UPDATE `creature_template` SET `MinLootGold`='69', `MaxLootGold`='405' WHERE `entry`='5617'; -- Wastewander Shadow Mage (62MinG) (86MaxG) (sample size 56)
UPDATE `creature_template` SET `MinLootGold`='60', `MaxLootGold`='380' WHERE `entry`='5618'; -- Wastewander Bandit (74MinG) (102MaxG) (sample size 59)
UPDATE `creature_template` SET `MaxLootGold`='237' WHERE `entry`='5622'; -- Ongeku (60MinG) (84MaxG) https://www.wowhead.com/tbc/npc=5622/ongeku
UPDATE `creature_template` SET `MinLootGold`='80', `MaxLootGold`='453' WHERE `entry`='5623'; -- Wastewander Assassin (83MinG) (114MaxG) (sample size 30)
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='5624'; -- Undercity Guardian (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=5624/undercity-guardian
UPDATE `creature_template` SET `MaxLootGold`='255' WHERE `entry`='5643'; -- Tyranis Malem (53MinG) (74MaxG) https://www.wowhead.com/tbc/npc=5643/tyranis-malem
UPDATE `creature_template` SET `MinLootGold`='221', `MaxLootGold`='1282' WHERE `entry`='5648'; -- Sandfury Shadowcaster (236MinG) (313MaxG) (sample size 50)
UPDATE `creature_template` SET `MinLootGold`='209', `MaxLootGold`='1360' WHERE `entry`='5649'; -- Sandfury Blood Drinker (306MinG) (404MaxG) (sample size 110)
UPDATE `creature_template` SET `MinLootGold`='258', `MaxLootGold`='1346' WHERE `entry`='5650'; -- Sandfury Witch Doctor (263MinG) (348MaxG) (sample size 74)
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='5671'; -- [UNUSED] Lawrence Sawyer (6MinG) (32MaxG) https://www.wowhead.com/tbc/npc=5671/unused-lawrence-sawyer
UPDATE `creature_template` SET `MinLootGold`='672', `MaxLootGold`='2430' WHERE `entry`='5709'; -- Shade of Eranikus (1000MinG) (2010MaxG) https://www.wowhead.com/tbc/npc=5709/shade-of-eranikus
UPDATE `creature_template` SET `MaxLootGold`='1598' WHERE `entry`='5710'; -- Jammal'an the Prophet (514MinG) (676MaxG) https://www.wowhead.com/tbc/npc=5710/jammalan-the-prophet
UPDATE `creature_template` SET `MaxLootGold`='1745' WHERE `entry`='5711'; -- Ogom the Wretched (342MinG) (452MaxG) https://www.wowhead.com/tbc/npc=5711/ogom-the-wretched
UPDATE `creature_template` SET `MaxLootGold`='1994' WHERE `entry`='5712'; -- Zolo (475MinG) (625MaxG) https://www.wowhead.com/tbc/npc=5712/zolo
UPDATE `creature_template` SET `MaxLootGold`='1058' WHERE `entry`='5713'; -- Gasher (377MinG) (497MaxG) https://www.wowhead.com/tbc/npc=5713/gasher
UPDATE `creature_template` SET `MaxLootGold`='1771' WHERE `entry`='5714'; -- Loro (377MinG) (497MaxG) https://www.wowhead.com/tbc/npc=5714/loro
UPDATE `creature_template` SET `MaxLootGold`='1959' WHERE `entry`='5715'; -- Hukku (442MinG) (583MaxG) https://www.wowhead.com/tbc/npc=5715/hukku
UPDATE `creature_template` SET `MinLootGold`='387', `MaxLootGold`='1262' WHERE `entry`='5716'; -- Zul'Lor (850MinG) (1115MaxG) https://www.wowhead.com/tbc/npc=5716/zullor
UPDATE `creature_template` SET `MaxLootGold`='1628' WHERE `entry`='5717'; -- Mijan (553MinG) (727MaxG) https://www.wowhead.com/tbc/npc=5717/mijan
UPDATE `creature_template` SET `MinLootGold`='124', `MaxLootGold`='1968' WHERE `entry`='5720'; -- Weaver (551MinG) (725MaxG) https://www.wowhead.com/tbc/npc=5720/weaver
UPDATE `creature_template` SET `MinLootGold`='129', `MaxLootGold`='1765' WHERE `entry`='5721'; -- Dreamscythe (597MinG) (785MaxG) https://www.wowhead.com/tbc/npc=5721/dreamscythe
UPDATE `creature_template` SET `MaxLootGold`='1475' WHERE `entry`='5722'; -- Hazzas (597MinG) (785MaxG) https://www.wowhead.com/tbc/npc=5722/hazzas
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='5723'; -- Warug's Target Dummy (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=5723/warugs-target-dummy
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='5745'; -- Lazlow Ashby (6MinG) (32MaxG) https://www.wowhead.com/tbc/npc=5745/lazlow-ashby
UPDATE `creature_template` SET `MinLootGold`='255' WHERE `entry`='5760'; -- Lord Azrethoc (261MinG) (345MaxG) https://www.wowhead.com/tbc/npc=5760/lord-azrethoc
UPDATE `creature_template` SET `MinLootGold`='29', `MaxLootGold`='178' WHERE `entry`='5761'; -- Deviate Shambler (89MinG) (121MaxG) https://www.wowhead.com/tbc/npc=5761/deviate-shambler
UPDATE `creature_template` SET `MinLootGold`='21', `MaxLootGold`='104' WHERE `entry`='5762'; -- Deviate Moccasin (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=5762/deviate-moccasin
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='5763'; -- Nightmare Ectoplasm (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=5763/nightmare-ectoplasm
UPDATE `creature_template` SET `MaxLootGold`='354' WHERE `entry`='5771'; -- Jugkar Grim'rod (61MinG) (84MaxG) https://www.wowhead.com/tbc/npc=5771/jugkar-grimrod
UPDATE `creature_template` SET `MinLootGold`='27' WHERE `entry`='5785'; -- Sister Hatelash (53MinG) (74MaxG) https://www.wowhead.com/tbc/npc=5785/sister-hatelash
UPDATE `creature_template` SET `MinLootGold`='10' WHERE `entry`='5787'; -- Enforcer Emilgund (13MinG) (22MaxG) https://www.wowhead.com/tbc/npc=5787/enforcer-emilgund
UPDATE `creature_template` SET `MaxLootGold`='329' WHERE `entry`='5799'; -- Hannah Bladeleaf (186MinG) (247MaxG) https://www.wowhead.com/tbc/npc=5799/hannah-bladeleaf
UPDATE `creature_template` SET `MinLootGold`='93' WHERE `entry`='5800'; -- Marcus Bel (192MinG) (256MaxG) https://www.wowhead.com/tbc/npc=5800/marcus-bel
UPDATE `creature_template` SET `MinLootGold`='49' WHERE `entry`='5824'; -- Captain Flat Tusk (72MinG) (98MaxG) https://www.wowhead.com/tbc/npc=5824/captain-flat-tusk
UPDATE `creature_template` SET `MaxLootGold`='42' WHERE `entry`='5838'; -- Brokespear (20MinG) (31MaxG) https://www.wowhead.com/tbc/npc=5838/brokespear
UPDATE `creature_template` SET `MinLootGold`='85', `MaxLootGold`='423' WHERE `entry`='5839'; -- Dark Iron Geologist (65MinG) (90MaxG) (sample size 32)
UPDATE `creature_template` SET `MinLootGold`='83', `MaxLootGold`='479' WHERE `entry`='5840'; -- Dark Iron Steamsmith (89MinG) (121MaxG) (sample size 25)
UPDATE `creature_template` SET `MinLootGold`='101', `MaxLootGold`='477' WHERE `entry`='5843'; -- Slave Worker (91MinG) (123MaxG) (sample size 24)
UPDATE `creature_template` SET `MinLootGold`='70', `MaxLootGold`='480' WHERE `entry`='5844'; -- Dark Iron Slaver (88MinG) (120MaxG) (sample size 142)
UPDATE `creature_template` SET `MinLootGold`='78', `MaxLootGold`='536' WHERE `entry`='5846'; -- Dark Iron Taskmaster (94MinG) (128MaxG) (sample size 135)
UPDATE `creature_template` SET `MaxLootGold`='67' WHERE `entry`='5847'; -- Heggin Stonewhisker (31MinG) (45MaxG) https://www.wowhead.com/tbc/npc=5847/heggin-stonewhisker
UPDATE `creature_template` SET `MinLootGold`='21' WHERE `entry`='5849'; -- Digger Flameforge (32MinG) (47MaxG) https://www.wowhead.com/tbc/npc=5849/digger-flameforge
UPDATE `creature_template` SET `MinLootGold`='77', `MaxLootGold`='454' WHERE `entry`='5853'; -- Tempered War Golem (88MinG) (120MaxG) https://www.wowhead.com/tbc/npc=5853/tempered-war-golem
UPDATE `creature_template` SET `MaxLootGold`='540' WHERE `entry`='5854'; -- Heavy War Golem (92MinG) (125MaxG) (sample size 90)
UPDATE `creature_template` SET `MaxLootGold`='456' WHERE `entry`='5881'; -- Cursed Sycamore (82MinG) (112MaxG) https://www.wowhead.com/tbc/npc=5881/cursed-sycamore
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='5902'; -- Minor Manifestation of Air (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=5902/minor-manifestation-of-air
UPDATE `creature_template` SET `MaxLootGold`='285' WHERE `entry`='5916'; -- Sentinel Amarassan (200MinG) (266MaxG) https://www.wowhead.com/tbc/npc=5916/sentinel-amarassan
UPDATE `creature_template` SET `MinLootGold`='46' WHERE `entry`='5932'; -- Taskmaster Whipfang (161MinG) (216MaxG) https://www.wowhead.com/tbc/npc=5932/taskmaster-whipfang
UPDATE `creature_template` SET `MaxLootGold`='433' WHERE `entry`='5974'; -- Dreadmaul Ogre (91MinG) (123MaxG) https://www.wowhead.com/tbc/npc=5974/dreadmaul-ogre
UPDATE `creature_template` SET `MaxLootGold`='391' WHERE `entry`='5975'; -- Dreadmaul Ogre Mage (72MinG) (99MaxG) https://www.wowhead.com/tbc/npc=5975/dreadmaul-ogre-mage
UPDATE `creature_template` SET `MaxLootGold`='455' WHERE `entry`='5976'; -- Dreadmaul Brute (91MinG) (124MaxG) https://www.wowhead.com/tbc/npc=5976/dreadmaul-brute
UPDATE `creature_template` SET `MaxLootGold`='666' WHERE `entry`='5977'; -- Dreadmaul Mauler (114MinG) (154MaxG) https://www.wowhead.com/tbc/npc=5977/dreadmaul-mauler
UPDATE `creature_template` SET `MaxLootGold`='420' WHERE `entry`='5979'; -- Wretched Lost One (80MinG) (109MaxG) https://www.wowhead.com/tbc/npc=5979/wretched-lost-one
UPDATE `creature_template` SET `MinLootGold`='61', `MaxLootGold`='644' WHERE `entry`='5981'; -- Portal Seeker (89MinG) (305MaxG) https://www.wowhead.com/tbc/npc=5981/portal-seeker
UPDATE `creature_template` SET `MinLootGold`='113', `MaxLootGold`='674' WHERE `entry`='6004'; -- Shadowsworn Cultist (108MinG) (146MaxG) (sample size 32)
UPDATE `creature_template` SET `MaxLootGold`='704' WHERE `entry`='6005'; -- Shadowsworn Thug (111MinG) (150MaxG) https://www.wowhead.com/tbc/npc=6005/shadowsworn-thug
UPDATE `creature_template` SET `MinLootGold`='117', `MaxLootGold`='706' WHERE `entry`='6006'; -- Shadowsworn Adept (96MinG) (131MaxG) (sample size 36)
UPDATE `creature_template` SET `MaxLootGold`='672' WHERE `entry`='6007'; -- Shadowsworn Enforcer (112MinG) (151MaxG) https://www.wowhead.com/tbc/npc=6007/shadowsworn-enforcer
UPDATE `creature_template` SET `MaxLootGold`='614' WHERE `entry`='6008'; -- Shadowsworn Warlock (91MinG) (124MaxG) https://www.wowhead.com/tbc/npc=6008/shadowsworn-warlock
UPDATE `creature_template` SET `MaxLootGold`='503' WHERE `entry`='6009'; -- Shadowsworn Dreadweaver (100MinG) (136MaxG) https://www.wowhead.com/tbc/npc=6009/shadowsworn-dreadweaver
UPDATE `creature_template` SET `MaxLootGold`='166' WHERE `entry`='6011'; -- Felguard Sentry (117MinG) (158MaxG) https://www.wowhead.com/tbc/npc=6011/felguard-sentry
UPDATE `creature_template` SET `MaxLootGold`='43' WHERE `entry`='6020'; -- Slimeshell Makrura (24MinG) (36MaxG) https://www.wowhead.com/tbc/npc=6020/slimeshell-makrura
UPDATE `creature_template` SET `MaxLootGold`='354' WHERE `entry`='6035'; -- Razorfen Stalker (168MinG) (224MaxG) https://www.wowhead.com/tbc/npc=6035/razorfen-stalker
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='6047'; -- Aqua Guardian (27MinG) (40MaxG) https://www.wowhead.com/tbc/npc=6047/aqua-guardian
UPDATE `creature_template` SET `MinLootGold`='29', `MaxLootGold`='329' WHERE `entry`='6069'; -- Maraudine Khan Guard (68MinG) (94MaxG) https://www.wowhead.com/tbc/npc=6069/maraudine-khan-guard
UPDATE `creature_template` SET `MinLootGold`='28', `MaxLootGold`='138' WHERE `entry`='6070'; -- Maraudine Khan Advisor (57MinG) (79MaxG) https://www.wowhead.com/tbc/npc=6070/maraudine-khan-advisor
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='6071'; -- Legion Hound (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=6071/legion-hound
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='6074'; -- Riding Tiger (White Striped) (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=6074/riding-tiger-white-striped
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='6075'; -- Riding Raptor (Emerald) (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=6075/riding-raptor-emerald
UPDATE `creature_template` SET `MinLootGold`='1300000', `MaxLootGold`='1820000' WHERE `entry`='6109'; -- Azuregos (1300000MinG) (1820000MaxG) https://www.wowhead.com/tbc/npc=6109/azuregos
UPDATE `creature_template` SET `MinLootGold`='85', `MaxLootGold`='482' WHERE `entry`='6116'; -- Highborne Apparition (86MinG) (118MaxG) https://www.wowhead.com/tbc/npc=6116/highborne-apparition
UPDATE `creature_template` SET `MaxLootGold`='477' WHERE `entry`='6117'; -- Highborne Lichling (72MinG) (99MaxG) https://www.wowhead.com/tbc/npc=6117/highborne-lichling
UPDATE `creature_template` SET `MinLootGold`='5' WHERE `entry`='6123'; -- Dark Iron Spy (9MinG) (17MaxG) https://www.wowhead.com/tbc/npc=6123/dark-iron-spy
UPDATE `creature_template` SET `MinLootGold`='78', `MaxLootGold`='411' WHERE `entry`='6125'; -- Haldarr Satyr (86MinG) (118MaxG) https://www.wowhead.com/tbc/npc=6125/haldarr-satyr
UPDATE `creature_template` SET `MaxLootGold`='457' WHERE `entry`='6126'; -- Haldarr Trickster (88MinG) (120MaxG) https://www.wowhead.com/tbc/npc=6126/haldarr-trickster
UPDATE `creature_template` SET `MaxLootGold`='396' WHERE `entry`='6127'; -- Haldarr Felsworn (72MinG) (99MaxG) https://www.wowhead.com/tbc/npc=6127/haldarr-felsworn
UPDATE `creature_template` SET `MinLootGold`='101' WHERE `entry`='6132'; -- Razorfen Servitor (121MinG) (163MaxG) https://www.wowhead.com/tbc/npc=6132/razorfen-servitor
UPDATE `creature_template` SET `MinLootGold`='9' WHERE `entry`='6133'; -- Shade of Elura (11MinG) (20MaxG) https://www.wowhead.com/tbc/npc=6133/shade-of-elura
UPDATE `creature_template` SET `MaxLootGold`='733' WHERE `entry`='6135'; -- Arkkoran Clacker (114MinG) (154MaxG) https://www.wowhead.com/tbc/npc=6135/arkkoran-clacker
UPDATE `creature_template` SET `MinLootGold`='110', `MaxLootGold`='408' WHERE `entry`='6136'; -- Arkkoran Muckdweller (114MinG) (154MaxG) https://www.wowhead.com/tbc/npc=6136/arkkoran-muckdweller
UPDATE `creature_template` SET `MaxLootGold`='729' WHERE `entry`='6137'; -- Arkkoran Pincer (117MinG) (158MaxG) https://www.wowhead.com/tbc/npc=6137/arkkoran-pincer
UPDATE `creature_template` SET `MaxLootGold`='765' WHERE `entry`='6138'; -- Arkkoran Oracle (100MinG) (136MaxG) https://www.wowhead.com/tbc/npc=6138/arkkoran-oracle
UPDATE `creature_template` SET `MinLootGold`='114', `MaxLootGold`='1948' WHERE `entry`='6146'; -- Cliff Breaker (425MinG) (559MaxG) https://www.wowhead.com/tbc/npc=6146/cliff-breaker
UPDATE `creature_template` SET `MinLootGold`='114', `MaxLootGold`='1922' WHERE `entry`='6147'; -- Cliff Thunderer (410MinG) (540MaxG) https://www.wowhead.com/tbc/npc=6147/cliff-thunderer
UPDATE `creature_template` SET `MinLootGold`='114', `MaxLootGold`='1788' WHERE `entry`='6148'; -- Cliff Walker (400MinG) (527MaxG) https://www.wowhead.com/tbc/npc=6148/cliff-walker
UPDATE `creature_template` SET `MinLootGold`='128' WHERE `entry`='6168'; -- Roogug (142MinG) (191MaxG) https://www.wowhead.com/tbc/npc=6168/roogug
UPDATE `creature_template` SET `MinLootGold`='32', `MaxLootGold`='130' WHERE `entry`='6170'; -- Gutspill (45MinG) (64MaxG) https://www.wowhead.com/tbc/npc=6170/gutspill
UPDATE `creature_template` SET `MinLootGold`='5', `MaxLootGold`='43' WHERE `entry`='6180'; -- Defias Raider (20MinG) (31MaxG) https://www.wowhead.com/tbc/npc=6180/defias-raider
UPDATE `creature_template` SET `MinLootGold`='73', `MaxLootGold`='273' WHERE `entry`='6188'; -- Timbermaw Shaman (86MinG) (118MaxG) https://www.wowhead.com/tbc/npc=6188/timbermaw-shaman
UPDATE `creature_template` SET `MaxLootGold`='464' WHERE `entry`='6190'; -- Spitelash Warrior (91MinG) (124MaxG) https://www.wowhead.com/tbc/npc=6190/spitelash-warrior
UPDATE `creature_template` SET `MaxLootGold`='539' WHERE `entry`='6194'; -- Spitelash Serpent Guard (82MinG) (113MaxG) https://www.wowhead.com/tbc/npc=6194/spitelash-serpent-guard
UPDATE `creature_template` SET `MinLootGold`='122', `MaxLootGold`='678' WHERE `entry`='6195'; -- Spitelash Siren (91MinG) (124MaxG) (sample size 34)
UPDATE `creature_template` SET `MinLootGold`='102', `MaxLootGold`='612' WHERE `entry`='6196'; -- Spitelash Myrmidon (105MinG) (143MaxG) https://www.wowhead.com/tbc/npc=6196/spitelash-myrmidon
UPDATE `creature_template` SET `MaxLootGold`='682' WHERE `entry`='6198'; -- Blood Elf Surveyor (91MinG) (124MaxG) https://www.wowhead.com/tbc/npc=6198/blood-elf-surveyor
UPDATE `creature_template` SET `MaxLootGold`='690' WHERE `entry`='6199'; -- Blood Elf Reclaimer (88MinG) (120MaxG) https://www.wowhead.com/tbc/npc=6199/blood-elf-reclaimer
UPDATE `creature_template` SET `MinLootGold`='112', `MaxLootGold`='360' WHERE `entry`='6206'; -- Caverndeep Burrower (154MinG) (206MaxG) https://www.wowhead.com/tbc/npc=6206/caverndeep-burrower
UPDATE `creature_template` SET `MaxLootGold`='120' WHERE `entry`='6207'; -- Caverndeep Ambusher (34MinG) (50MaxG) https://www.wowhead.com/tbc/npc=6207/caverndeep-ambusher
UPDATE `creature_template` SET `MinLootGold`='120', `MaxLootGold`='266' WHERE `entry`='6208'; -- Caverndeep Invader (133MinG) (179MaxG) https://www.wowhead.com/tbc/npc=6208/caverndeep-invader
UPDATE `creature_template` SET `MaxLootGold`='326' WHERE `entry`='6210'; -- Caverndeep Pillager (131MinG) (176MaxG) https://www.wowhead.com/tbc/npc=6210/caverndeep-pillager
UPDATE `creature_template` SET `MinLootGold`='68', `MaxLootGold`='431' WHERE `entry`='6211'; -- Caverndeep Reaver (153MinG) (205MaxG) https://www.wowhead.com/tbc/npc=6211/caverndeep-reaver
UPDATE `creature_template` SET `MinLootGold`='125', `MaxLootGold`='538' WHERE `entry`='6212'; -- Dark Iron Agent (200MinG) (266MaxG) https://www.wowhead.com/tbc/npc=6212/dark-iron-agent
UPDATE `creature_template` SET `MinLootGold`='105', `MaxLootGold`='340' WHERE `entry`='6213'; -- Irradiated Invader (114MinG) (154MaxG) https://www.wowhead.com/tbc/npc=6213/irradiated-invader
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='6215'; -- Chomper (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=6215/chomper
UPDATE `creature_template` SET `MinLootGold`='29' WHERE `entry`='6218'; -- Irradiated Slime (153MinG) (205MaxG) https://www.wowhead.com/tbc/npc=6218/irradiated-slime
UPDATE `creature_template` SET `MinLootGold`='16', `MaxLootGold`='113' WHERE `entry`='6221'; -- Addled Leper (32MinG) (47MaxG) (sample size 22)
UPDATE `creature_template` SET `MinLootGold`='32', `MaxLootGold`='166' WHERE `entry`='6222'; -- Leprous Technician (45MinG) (64MaxG) https://www.wowhead.com/tbc/npc=6222/leprous-technician
UPDATE `creature_template` SET `MinLootGold`='119', `MaxLootGold`='465' WHERE `entry`='6223'; -- Leprous Defender (164MinG) (219MaxG) https://www.wowhead.com/tbc/npc=6223/leprous-defender
UPDATE `creature_template` SET `MaxLootGold`='169' WHERE `entry`='6224'; -- Leprous Machinesmith (43MinG) (61MaxG) https://www.wowhead.com/tbc/npc=6224/leprous-machinesmith
UPDATE `creature_template` SET `MinLootGold`='125', `MaxLootGold`='365' WHERE `entry`='6225'; -- Mechano-Tank (174MinG) (232MaxG) https://www.wowhead.com/tbc/npc=6225/mechano-tank
UPDATE `creature_template` SET `MaxLootGold`='511' WHERE `entry`='6226'; -- Mechano-Flamewalker (163MinG) (217MaxG) https://www.wowhead.com/tbc/npc=6226/mechano-flamewalker
UPDATE `creature_template` SET `MinLootGold`='164', `MaxLootGold`='480' WHERE `entry`='6227'; -- Mechano-Frostwalker (169MinG) (225MaxG) https://www.wowhead.com/tbc/npc=6227/mechano-frostwalker
UPDATE `creature_template` SET `MinLootGold`='57', `MaxLootGold`='502' WHERE `entry`='6228'; -- Dark Iron Ambassador (286MinG) (502MaxG) https://www.wowhead.com/tbc/npc=6228/dark-iron-ambassador
UPDATE `creature_template` SET `MinLootGold`='72', `MaxLootGold`='444' WHERE `entry`='6233'; -- Mechanized Sentry (202MinG) (269MaxG) https://www.wowhead.com/tbc/npc=6233/mechanized-sentry
UPDATE `creature_template` SET `MinLootGold`='113', `MaxLootGold`='515' WHERE `entry`='6234'; -- Mechanized Guardian (190MinG) (253MaxG) https://www.wowhead.com/tbc/npc=6234/mechanized-guardian
UPDATE `creature_template` SET `MinLootGold`='28', `MaxLootGold`='138' WHERE `entry`='6238'; -- Big Will (51MinG) (71MaxG) https://www.wowhead.com/tbc/npc=6238/big-will
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='6239'; -- Cyclonian (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=6239/cyclonian
UPDATE `creature_template` SET `MinLootGold`='231' WHERE `entry`='6243'; -- Gelihast (232MinG) (308MaxG) https://www.wowhead.com/tbc/npc=6243/gelihast
UPDATE `creature_template` SET `MinLootGold`='69', `MaxLootGold`='369' WHERE `entry`='6329'; -- Irradiated Pillager (125MinG) (168MaxG) https://www.wowhead.com/tbc/npc=6329/irradiated-pillager
UPDATE `creature_template` SET `MinLootGold`='116' WHERE `entry`='6350'; -- Makrinni Razorclaw (117MinG) (158MaxG) https://www.wowhead.com/tbc/npc=6350/makrinni-razorclaw
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='6388'; -- Zanzil Skeleton (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=6388/zanzil-skeleton
UPDATE `creature_template` SET `MinLootGold`='90', `MaxLootGold`='541' WHERE `entry`='6426'; -- Anguished Dead (198MinG) (264MaxG) (sample size 29)
UPDATE `creature_template` SET `MinLootGold`='95', `MaxLootGold`='591' WHERE `entry`='6427'; -- Haunting Phantasm (196MinG) (261MaxG) (sample size 25)
UPDATE `creature_template` SET `MinLootGold`='4' WHERE `entry`='6466'; -- Gamon (25MinG) (38MaxG) https://www.wowhead.com/tbc/npc=6466/gamon
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='6486'; -- Riding Skeletal Horse (Black) (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=6486/riding-skeletal-horse-black
UPDATE `creature_template` SET `MinLootGold`='230', `MaxLootGold`='770' WHERE `entry`='6487'; -- Arcanist Doan (434MinG) (572MaxG) https://www.wowhead.com/tbc/npc=6487/arcanist-doan
UPDATE `creature_template` SET `MaxLootGold`='453' WHERE `entry`='6488'; -- Fallen Champion (298MinG) (394MaxG) https://www.wowhead.com/tbc/npc=6488/fallen-champion
UPDATE `creature_template` SET `MinLootGold`='182' WHERE `entry`='6489'; -- Ironspine (298MinG) (394MaxG) https://www.wowhead.com/tbc/npc=6489/ironspine
UPDATE `creature_template` SET `MinLootGold`='63', `MaxLootGold`='624' WHERE `entry`='6490'; -- Azshir the Sleepless (272MinG) (361MaxG) https://www.wowhead.com/tbc/npc=6490/azshir-the-sleepless
UPDATE `creature_template` SET `MaxLootGold`='27' WHERE `entry`='6494'; -- Tazan (14MinG) (23MaxG) https://www.wowhead.com/tbc/npc=6494/tazan
UPDATE `creature_template` SET `MinLootGold`='6' WHERE `entry`='6497'; -- Astor Hadren (19MinG) (30MaxG) https://www.wowhead.com/tbc/npc=6497/astor-hadren
UPDATE `creature_template` SET `MaxLootGold`='643' WHERE `entry`='6517'; -- Tar Beast (103MinG) (140MaxG) (sample size 50)
UPDATE `creature_template` SET `MinLootGold`='103', `MaxLootGold`='714' WHERE `entry`='6518'; -- Tar Lurker (111MinG) (150MaxG) (sample size 56)
UPDATE `creature_template` SET `MinLootGold`='127', `MaxLootGold`='742' WHERE `entry`='6519'; -- Tar Lord (99MinG) (135MaxG) (sample size 54)
UPDATE `creature_template` SET `MinLootGold`='94', `MaxLootGold`='357' WHERE `entry`='6523'; -- Dark Iron Rifleman (153MinG) (205MaxG) https://www.wowhead.com/tbc/npc=6523/dark-iron-rifleman
UPDATE `creature_template` SET `MinLootGold`='97', `MaxLootGold`='667' WHERE `entry`='6527'; -- Tar Creeper (91MinG) (124MaxG) (sample size 55)
UPDATE `creature_template` SET `MinLootGold`='81', `MaxLootGold`='322' WHERE `entry`='6556'; -- Muculent Ooze (95MinG) (129MaxG) https://www.wowhead.com/tbc/npc=6556/muculent-ooze
UPDATE `creature_template` SET `MinLootGold`='63', `MaxLootGold`='399' WHERE `entry`='6557'; -- Primal Ooze (103MinG) (140MaxG) (sample size 37)
UPDATE `creature_template` SET `MinLootGold`='56', `MaxLootGold`='247' WHERE `entry`='6559'; -- Glutinous Ooze (113MinG) (153MaxG) (sample size 31)
UPDATE `creature_template` SET `MinLootGold`='4', `MaxLootGold`='30' WHERE `entry`='6575'; -- Scarlet Trainee (30MinG) (44MaxG) (sample size 37)
UPDATE `creature_template` SET `MinLootGold`='14', `MaxLootGold`='31' WHERE `entry`='6606'; -- Overseer Glibby (18MinG) (29MaxG) https://www.wowhead.com/tbc/npc=6606/overseer-glibby
UPDATE `creature_template` SET `MaxLootGold`='62' WHERE `entry`='6668'; -- Lord Cyrik Blackforge (30MinG) (43MaxG) https://www.wowhead.com/tbc/npc=6668/lord-cyrik-blackforge
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='6729'; -- Morridune (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=6729/morridune
UPDATE `creature_template` SET `MinLootGold`='2' WHERE `entry`='6846'; -- Defias Dockmaster (10MinG) (18MaxG) https://www.wowhead.com/tbc/npc=6846/defias-dockmaster
UPDATE `creature_template` SET `MinLootGold`='3', `MaxLootGold`='18' WHERE `entry`='6866'; -- Defias Bodyguard (10MinG) (18MaxG) https://www.wowhead.com/tbc/npc=6866/defias-bodyguard
UPDATE `creature_template` SET `MaxLootGold`='1116' WHERE `entry`='6906'; -- Baelog (271MinG) (358MaxG) https://www.wowhead.com/tbc/npc=6906/baelog
UPDATE `creature_template` SET `MinLootGold`='231', `MaxLootGold`='676' WHERE `entry`='6907'; -- Eric "The Swift" (265MinG) (351MaxG) https://www.wowhead.com/tbc/npc=6907/eric-the-swift
UPDATE `creature_template` SET `MaxLootGold`='919' WHERE `entry`='6908'; -- Olaf (295MinG) (390MaxG) https://www.wowhead.com/tbc/npc=6908/olaf
UPDATE `creature_template` SET `MaxLootGold`='696' WHERE `entry`='6910'; -- Revelosh (227MinG) (301MaxG) https://www.wowhead.com/tbc/npc=6910/revelosh
UPDATE `creature_template` SET `MinLootGold`='3', `MaxLootGold`='13' WHERE `entry`='6911'; -- Minion of Sethir (10MinG) (18MaxG) https://www.wowhead.com/tbc/npc=6911/minion-of-sethir
UPDATE `creature_template` SET `MaxLootGold`='304' WHERE `entry`='7011'; -- Earthen Rocksmasher (75MinG) (103MaxG) https://www.wowhead.com/tbc/npc=7011/earthen-rocksmasher
UPDATE `creature_template` SET `MaxLootGold`='1087' WHERE `entry`='7012'; -- Earthen Sculptor (65MinG) (89MaxG) https://www.wowhead.com/tbc/npc=7012/earthen-sculptor
UPDATE `creature_template` SET `MaxLootGold`='34' WHERE `entry`='7015'; -- Flagglemurk the Cruel (18MinG) (29MaxG) https://www.wowhead.com/tbc/npc=7015/flagglemurk-the-cruel
UPDATE `creature_template` SET `MaxLootGold`='1162' WHERE `entry`='7023'; -- Obsidian Sentinel (417MinG) (549MaxG) https://www.wowhead.com/tbc/npc=7023/obsidian-sentinel
UPDATE `creature_template` SET `MaxLootGold`='822' WHERE `entry`='7025'; -- Blackrock Soldier (122MinG) (165MaxG) https://www.wowhead.com/tbc/npc=7025/blackrock-soldier
UPDATE `creature_template` SET `MaxLootGold`='626' WHERE `entry`='7026'; -- Blackrock Sorcerer (99MinG) (134MaxG) https://www.wowhead.com/tbc/npc=7026/blackrock-sorcerer
UPDATE `creature_template` SET `MinLootGold`='124', `MaxLootGold`='859' WHERE `entry`='7027'; -- Blackrock Slayer (125MinG) (169MaxG) https://www.wowhead.com/tbc/npc=7027/blackrock-slayer
UPDATE `creature_template` SET `MaxLootGold`='792' WHERE `entry`='7028'; -- Blackrock Warlock (100MinG) (135MaxG) https://www.wowhead.com/tbc/npc=7028/blackrock-warlock
UPDATE `creature_template` SET `MaxLootGold`='996' WHERE `entry`='7030'; -- Shadowforge Geologist (231MinG) (306MaxG) https://www.wowhead.com/tbc/npc=7030/shadowforge-geologist
UPDATE `creature_template` SET `MinLootGold`='110', `MaxLootGold`='636' WHERE `entry`='7033'; -- Firegut Ogre (114MinG) (154MaxG) (sample size 53)
UPDATE `creature_template` SET `MinLootGold`='119', `MaxLootGold`='680' WHERE `entry`='7034'; -- Firegut Ogre Mage (100MinG) (135MaxG) (sample size 33)
UPDATE `creature_template` SET `MinLootGold`='115', `MaxLootGold`='705' WHERE `entry`='7035'; -- Firegut Brute (118MinG) (159MaxG) (sample size 47)
UPDATE `creature_template` SET `MaxLootGold`='187' WHERE `entry`='7036'; -- Thaurissan Spy (114MinG) (154MaxG) https://www.wowhead.com/tbc/npc=7036/thaurissan-spy
UPDATE `creature_template` SET `MaxLootGold`='209' WHERE `entry`='7037'; -- Thaurissan Firewalker (114MinG) (154MaxG) https://www.wowhead.com/tbc/npc=7037/thaurissan-firewalker
UPDATE `creature_template` SET `MaxLootGold`='714' WHERE `entry`='7038'; -- Thaurissan Agent (117MinG) (158MaxG) https://www.wowhead.com/tbc/npc=7038/thaurissan-agent
UPDATE `creature_template` SET `MinLootGold`='103', `MaxLootGold`='651' WHERE `entry`='7047'; -- Black Broodling (93MinG) (127MaxG) (sample size 26)
UPDATE `creature_template` SET `MaxLootGold`='753' WHERE `entry`='7048'; -- Scalding Broodling (93MinG) (126MaxG) https://www.wowhead.com/tbc/npc=7048/scalding-broodling
UPDATE `creature_template` SET `MinLootGold`='34', `MaxLootGold`='101' WHERE `entry`='7076'; -- Earthen Guardian (52MinG) (72MaxG) https://www.wowhead.com/tbc/npc=7076/earthen-guardian
UPDATE `creature_template` SET `MinLootGold`='33' WHERE `entry`='7077'; -- Earthen Hallshaper (51MinG) (71MaxG) https://www.wowhead.com/tbc/npc=7077/earthen-hallshaper
UPDATE `creature_template` SET `MinLootGold`='53', `MaxLootGold`='295' WHERE `entry`='7086'; -- Cursed Ooze (96MinG) (130MaxG) (sample size 21)
UPDATE `creature_template` SET `MinLootGold`='107', `MaxLootGold`='309' WHERE `entry`='7091'; -- Shadowforge Ambusher (80MinG) (110MaxG) https://www.wowhead.com/tbc/npc=7091/shadowforge-ambusher
UPDATE `creature_template` SET `MinLootGold`='52', `MaxLootGold`='296' WHERE `entry`='7092'; -- Tainted Ooze (108MinG) (146MaxG) https://www.wowhead.com/tbc/npc=7092/tainted-ooze
UPDATE `creature_template` SET `MaxLootGold`='423' WHERE `entry`='7093'; -- Vile Ooze (108MinG) (146MaxG) https://www.wowhead.com/tbc/npc=7093/vile-ooze
UPDATE `creature_template` SET `MinLootGold`='111', `MaxLootGold`='712' WHERE `entry`='7100'; -- Warpwood Moss Flayer (109MinG) (148MaxG) (sample size 40)
UPDATE `creature_template` SET `MinLootGold`='127', `MaxLootGold`='725' WHERE `entry`='7101'; -- Warpwood Shredder (112MinG) (151MaxG) (sample size 23)
UPDATE `creature_template` SET `MinLootGold`='94', `MaxLootGold`='495' WHERE `entry`='7106'; -- Jadefire Rogue (103MinG) (140MaxG) https://www.wowhead.com/tbc/npc=7106/jadefire-rogue
UPDATE `creature_template` SET `MinLootGold`='112', `MaxLootGold`='684' WHERE `entry`='7107'; -- Jadefire Trickster (94MinG) (128MaxG) (sample size 25)
UPDATE `creature_template` SET `MaxLootGold`='706' WHERE `entry`='7108'; -- Jadefire Betrayer (109MinG) (148MaxG) https://www.wowhead.com/tbc/npc=7108/jadefire-betrayer
UPDATE `creature_template` SET `MinLootGold`='105', `MaxLootGold`='630' WHERE `entry`='7109'; -- Jadefire Felsworn (91MinG) (123MaxG) (sample size 21)
UPDATE `creature_template` SET `MaxLootGold`='609' WHERE `entry`='7110'; -- Jadefire Shadowstalker (106MinG) (144MaxG) https://www.wowhead.com/tbc/npc=7110/jadefire-shadowstalker
UPDATE `creature_template` SET `MaxLootGold`='718' WHERE `entry`='7111'; -- Jadefire Hellcaller (93MinG) (126MaxG) https://www.wowhead.com/tbc/npc=7111/jadefire-hellcaller
UPDATE `creature_template` SET `MinLootGold`='102', `MaxLootGold`='664' WHERE `entry`='7112'; -- Jaedenar Cultist (85MinG) (116MaxG) (sample size 51)
UPDATE `creature_template` SET `MinLootGold`='130', `MaxLootGold`='639' WHERE `entry`='7113'; -- Jaedenar Guardian (101MinG) (137MaxG) (sample size 49)
UPDATE `creature_template` SET `MinLootGold`='104', `MaxLootGold`='706' WHERE `entry`='7114'; -- Jaedenar Enforcer (107MinG) (145MaxG) (sample size 32)
UPDATE `creature_template` SET `MinLootGold`='127', `MaxLootGold`='675' WHERE `entry`='7115'; -- Jaedenar Adept (85MinG) (116MaxG) (sample size 37)
UPDATE `creature_template` SET `MinLootGold`='168', `MaxLootGold`='752' WHERE `entry`='7118'; -- Jaedenar Darkweaver (99MinG) (135MaxG) (sample size 40)
UPDATE `creature_template` SET `MinLootGold`='156', `MaxLootGold`='726' WHERE `entry`='7120'; -- Jaedenar Warlock (99MinG) (135MaxG) (sample size 40)
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='7135'; -- Infernal Bodyguard (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=7135/infernal-bodyguard
UPDATE `creature_template` SET `MaxLootGold`='555' WHERE `entry`='7138'; -- Irontree Wanderer (111MinG) (150MaxG) https://www.wowhead.com/tbc/npc=7138/irontree-wanderer
UPDATE `creature_template` SET `MaxLootGold`='717' WHERE `entry`='7139'; -- Irontree Stomper (109MinG) (148MaxG) https://www.wowhead.com/tbc/npc=7139/irontree-stomper
UPDATE `creature_template` SET `MinLootGold`='94', `MaxLootGold`='573' WHERE `entry`='7153'; -- Deadwood Warrior (93MinG) (126MaxG) (sample size 38)
UPDATE `creature_template` SET `MinLootGold`='86', `MaxLootGold`='570' WHERE `entry`='7154'; -- Deadwood Gardener (82MinG) (113MaxG) (sample size 32)
UPDATE `creature_template` SET `MinLootGold`='90', `MaxLootGold`='557' WHERE `entry`='7155'; -- Deadwood Pathfinder (96MinG) (130MaxG) (sample size 24)
UPDATE `creature_template` SET `MinLootGold`='109', `MaxLootGold`='679' WHERE `entry`='7156'; -- Deadwood Den Watcher (112MinG) (151MaxG) (sample size 26)
UPDATE `creature_template` SET `MinLootGold`='114', `MaxLootGold`='754' WHERE `entry`='7157'; -- Deadwood Avenger (117MinG) (158MaxG) (sample size 24)
UPDATE `creature_template` SET `MinLootGold`='108', `MaxLootGold`='754' WHERE `entry`='7158'; -- Deadwood Shaman (99MinG) (135MaxG) (sample size 25)
UPDATE `creature_template` SET `MinLootGold`='50', `MaxLootGold`='228' WHERE `entry`='7175'; -- Stonevault Ambusher (54MinG) (76MaxG) https://www.wowhead.com/tbc/npc=7175/stonevault-ambusher
UPDATE `creature_template` SET `MinLootGold`='249', `MaxLootGold`='904' WHERE `entry`='7206'; -- Ancient Stone Keeper (454MinG) (598MaxG) https://www.wowhead.com/tbc/npc=7206/ancient-stone-keeper
UPDATE `creature_template` SET `MinLootGold`='379' WHERE `entry`='7228'; -- Ironaya (703MinG) (922MaxG) https://www.wowhead.com/tbc/npc=7228/ironaya
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='7229'; -- Arantir's Shadow (1MinG) (689MaxG) https://www.wowhead.com/tbc/npc=7229/arantirs-shadow
UPDATE `creature_template` SET `MinLootGold`='4' WHERE `entry`='7234'; -- Ferocitas the Dream Eater (7MinG) (14MaxG) https://www.wowhead.com/tbc/npc=7234/ferocitas-the-dream-eater
UPDATE `creature_template` SET `MinLootGold`='1', `MaxLootGold`='12' WHERE `entry`='7235'; -- Gnarlpine Mystic (5MinG) (11MaxG) https://www.wowhead.com/tbc/npc=7235/gnarlpine-mystic
UPDATE `creature_template` SET `MinLootGold`='208', `MaxLootGold`='1318' WHERE `entry`='7246'; -- Sandfury Shadowhunter (273MinG) (362MaxG) https://www.wowhead.com/tbc/npc=7246/sandfury-shadowhunter
UPDATE `creature_template` SET `MinLootGold`='225', `MaxLootGold`='1403' WHERE `entry`='7247'; -- Sandfury Soul Eater (273MinG) (362MaxG) https://www.wowhead.com/tbc/npc=7247/sandfury-soul-eater
UPDATE `creature_template` SET `MinLootGold`='399', `MaxLootGold`='1620' WHERE `entry`='7267'; -- Chief Ukorz Sandscalp (674MinG) (885MaxG) https://www.wowhead.com/tbc/npc=7267/chief-ukorz-sandscalp
UPDATE `creature_template` SET `MinLootGold`='367', `MaxLootGold`='1510' WHERE `entry`='7271'; -- Witch Doctor Zum'rah (543MinG) (714MaxG) https://www.wowhead.com/tbc/npc=7271/witch-doctor-zumrah
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='7273'; -- Gahz'rilla (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=7273/gahzrilla
UPDATE `creature_template` SET `MaxLootGold`='1191' WHERE `entry`='7274'; -- Sandfury Executioner (483MinG) (636MaxG) https://www.wowhead.com/tbc/npc=7274/sandfury-executioner
UPDATE `creature_template` SET `MinLootGold`='417', `MaxLootGold`='1320' WHERE `entry`='7275'; -- Shadowpriest Sezz'ziz (417MinG) (549MaxG) https://www.wowhead.com/tbc/npc=7275/shadowpriest-sezzziz
UPDATE `creature_template` SET `MaxLootGold`='1233' WHERE `entry`='7290'; -- Shadowforge Sharpshooter (300MinG) (396MaxG) https://www.wowhead.com/tbc/npc=7290/shadowforge-sharpshooter
UPDATE `creature_template` SET `MinLootGold`='415', `MaxLootGold`='1324' WHERE `entry`='7291'; -- Galgann Firehammer (626MinG) (822MaxG) https://www.wowhead.com/tbc/npc=7291/galgann-firehammer
UPDATE `creature_template` SET `MinLootGold`='28' WHERE `entry`='7309'; -- Earthen Custodian (47MinG) (67MaxG) https://www.wowhead.com/tbc/npc=7309/earthen-custodian
UPDATE `creature_template` SET `MinLootGold`='3' WHERE `entry`='7318'; -- Rageclaw (10MinG) (18MaxG) https://www.wowhead.com/tbc/npc=7318/rageclaw
UPDATE `creature_template` SET `MinLootGold`='220', `MaxLootGold`='1056' WHERE `entry`='7320'; -- Stonevault Mauler (310MinG) (409MaxG) https://www.wowhead.com/tbc/npc=7320/stonevault-mauler
UPDATE `creature_template` SET `MaxLootGold`='687' WHERE `entry`='7321'; -- Stonevault Flameweaver (246MinG) (326MaxG) https://www.wowhead.com/tbc/npc=7321/stonevault-flameweaver
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='7322'; -- Riding Tiger (Black) (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=7322/riding-tiger-black
UPDATE `creature_template` SET `MinLootGold`='105', `MaxLootGold`='733' WHERE `entry`='7327'; -- Withered Warrior (216MinG) (287MaxG) https://www.wowhead.com/tbc/npc=7327/withered-warrior
UPDATE `creature_template` SET `MinLootGold`='196', `MaxLootGold`='761' WHERE `entry`='7328'; -- Withered Reaver (222MinG) (295MaxG) https://www.wowhead.com/tbc/npc=7328/withered-reaver
UPDATE `creature_template` SET `MinLootGold`='129', `MaxLootGold`='779' WHERE `entry`='7329'; -- Withered Quilguard (222MinG) (295MaxG) (sample size 21)
UPDATE `creature_template` SET `MinLootGold`='148', `MaxLootGold`='711' WHERE `entry`='7332'; -- Withered Spearhide (212MinG) (282MaxG) https://www.wowhead.com/tbc/npc=7332/withered-spearhide
UPDATE `creature_template` SET `MinLootGold`='128', `MaxLootGold`='762' WHERE `entry`='7335'; -- Death's Head Geomancer (180MinG) (240MaxG) https://www.wowhead.com/tbc/npc=7335/deaths-head-geomancer
UPDATE `creature_template` SET `MinLootGold`='184', `MaxLootGold`='820' WHERE `entry`='7337'; -- Death's Head Necromancer (203MinG) (270MaxG) https://www.wowhead.com/tbc/npc=7337/deaths-head-necromancer
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='7340'; -- Skeletal Shadowcaster (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=7340/skeletal-shadowcaster
UPDATE `creature_template` SET `MaxLootGold`='823' WHERE `entry`='7341'; -- Skeletal Frostweaver (196MinG) (261MaxG) https://www.wowhead.com/tbc/npc=7341/skeletal-frostweaver
UPDATE `creature_template` SET `MinLootGold`='153', `MaxLootGold`='892' WHERE `entry`='7342'; -- Skeletal Summoner (208MinG) (276MaxG) https://www.wowhead.com/tbc/npc=7342/skeletal-summoner
UPDATE `creature_template` SET `MinLootGold`='63', `MaxLootGold`='257' WHERE `entry`='7344'; -- Splinterbone Warrior (65MinG) (89MaxG) https://www.wowhead.com/tbc/npc=7344/splinterbone-warrior
UPDATE `creature_template` SET `MaxLootGold`='872' WHERE `entry`='7345'; -- Splinterbone Captain (263MinG) (348MaxG) https://www.wowhead.com/tbc/npc=7345/splinterbone-captain
UPDATE `creature_template` SET `MinLootGold`='58', `MaxLootGold`='316' WHERE `entry`='7346'; -- Splinterbone Centurion (65MinG) (90MaxG) https://www.wowhead.com/tbc/npc=7346/splinterbone-centurion
UPDATE `creature_template` SET `MinLootGold`='220', `MaxLootGold`='812' WHERE `entry`='7347'; -- Boneflayer Ghoul (249MinG) (330MaxG) https://www.wowhead.com/tbc/npc=7347/boneflayer-ghoul
UPDATE `creature_template` SET `MaxLootGold`='835' WHERE `entry`='7348'; -- Thorn Eater Ghoul (238MinG) (316MaxG) https://www.wowhead.com/tbc/npc=7348/thorn-eater-ghoul
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='7349'; -- Tomb Fiend (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=7349/tomb-fiend
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='7351'; -- Tomb Reaver (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=7351/tomb-reaver
UPDATE `creature_template` SET `MaxLootGold`='995' WHERE `entry`='7353'; -- Freezing Spirit (225MinG) (298MaxG) https://www.wowhead.com/tbc/npc=7353/freezing-spirit
UPDATE `creature_template` SET `MinLootGold`='435', `MaxLootGold`='573' WHERE `entry`='7354'; -- Ragglesnout (435MinG) (573MaxG) https://www.wowhead.com/tbc/npc=7354/ragglesnout corrupted data in vmangos
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='7355'; -- Tuten'kash (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=7355/tutenkash
UPDATE `creature_template` SET `MinLootGold`='80', `MaxLootGold`='941' WHERE `entry`='7356'; -- Plaguemaw the Rotting (575MinG) (756MaxG) https://www.wowhead.com/tbc/npc=7356/plaguemaw-the-rotting
UPDATE `creature_template` SET `MinLootGold`='328', `MaxLootGold`='832' WHERE `entry`='7357'; -- Mordresh Fire Eye (416MinG) (548MaxG) https://www.wowhead.com/tbc/npc=7357/mordresh-fire-eye
UPDATE `creature_template` SET `MinLootGold`='340', `MaxLootGold`='679' WHERE `entry`='7358'; -- Amnennar the Coldbringer (496MinG) (653MaxG) https://www.wowhead.com/tbc/npc=7358/amnennar-the-coldbringer
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='7360'; -- Dun Garok Soldier (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=7360/dun-garok-soldier
UPDATE `creature_template` SET `MinLootGold`='70', `MaxLootGold`='626' WHERE `entry`='7361'; -- Grubbis (281MinG) (372MaxG) https://www.wowhead.com/tbc/npc=7361/grubbis
UPDATE `creature_template` SET `MinLootGold`='187', `MaxLootGold`='947' WHERE `entry`='7370'; -- Restless Shade (195MinG) (260MaxG) https://www.wowhead.com/tbc/npc=7370/restless-shade
UPDATE `creature_template` SET `MaxLootGold`='422' WHERE `entry`='7396'; -- Earthen Stonebreaker (83MinG) (114MaxG) https://www.wowhead.com/tbc/npc=7396/earthen-stonebreaker
UPDATE `creature_template` SET `MaxLootGold`='197' WHERE `entry`='7397'; -- Earthen Stonecarver (71MinG) (97MaxG) https://www.wowhead.com/tbc/npc=7397/earthen-stonecarver
UPDATE `creature_template` SET `MaxLootGold`='172' WHERE `entry`='7404'; -- Galak Flame Guard (44MinG) (62MaxG) https://www.wowhead.com/tbc/npc=7404/galak-flame-guard
UPDATE `creature_template` SET `MaxLootGold`='2337' WHERE `entry`='7437'; -- Cobalt Mageweaver (357MinG) (472MaxG) https://www.wowhead.com/tbc/npc=7437/cobalt-mageweaver
UPDATE `creature_template` SET `MinLootGold`='141', `MaxLootGold`='907' WHERE `entry`='7438'; -- Winterfall Ursa (126MinG) (170MaxG) (sample size 91)
UPDATE `creature_template` SET `MinLootGold`='127', `MaxLootGold`='871' WHERE `entry`='7439'; -- Winterfall Shaman (110MinG) (149MaxG) (sample size 51)
UPDATE `creature_template` SET `MinLootGold`='121', `MaxLootGold`='830' WHERE `entry`='7440'; -- Winterfall Den Watcher (122MinG) (165MaxG) (sample size 144)
UPDATE `creature_template` SET `MinLootGold`='115', `MaxLootGold`='790' WHERE `entry`='7441'; -- Winterfall Totemic (100MinG) (136MaxG) (sample size 100)
UPDATE `creature_template` SET `MinLootGold`='118', `MaxLootGold`='750' WHERE `entry`='7442'; -- Winterfall Pathfinder (112MinG) (151MaxG) (sample size 168)
UPDATE `creature_template` SET `MinLootGold`='154', `MaxLootGold`='724' WHERE `entry`='7450'; -- Ragged Owlbeast (114MinG) (154MaxG) (sample size 29)
UPDATE `creature_template` SET `MinLootGold`='121', `MaxLootGold`='789' WHERE `entry`='7451'; -- Raging Owlbeast (122MinG) (164MaxG) (sample size 31)
UPDATE `creature_template` SET `MinLootGold`='145', `MaxLootGold`='829' WHERE `entry`='7452'; -- Crazed Owlbeast (125MinG) (169MaxG) (sample size 23)
UPDATE `creature_template` SET `MinLootGold`='135', `MaxLootGold`='907' WHERE `entry`='7453'; -- Moontouched Owlbeast (111MinG) (150MaxG) (sample size 31)
UPDATE `creature_template` SET `MaxLootGold`='823' WHERE `entry`='7454'; -- Berserk Owlbeast (131MinG) (176MaxG) https://www.wowhead.com/tbc/npc=7454/berserk-owlbeast
UPDATE `creature_template` SET `MinLootGold`='118', `MaxLootGold`='729' WHERE `entry`='7457'; -- Rogue Ice Thistle (114MinG) (154MaxG) (sample size 49)
UPDATE `creature_template` SET `MinLootGold`='119', `MaxLootGold`='828' WHERE `entry`='7458'; -- Ice Thistle Yeti (120MinG) (162MaxG) (sample size 118)
UPDATE `creature_template` SET `MinLootGold`='132', `MaxLootGold`='871' WHERE `entry`='7459'; -- Ice Thistle Matriarch (125MinG) (169MaxG) (sample size 46)
UPDATE `creature_template` SET `MinLootGold`='135', `MaxLootGold`='827' WHERE `entry`='7460'; -- Ice Thistle Patriarch (128MinG) (172MaxG) (sample size 40)
UPDATE `creature_template` SET `MaxLootGold`='2858' WHERE `entry`='7461'; -- Hederine Initiate (650MinG) (853MaxG) https://www.wowhead.com/tbc/npc=7461/hederine-initiate
UPDATE `creature_template` SET `MaxLootGold`='665' WHERE `entry`='7523'; -- Suffering Highborne (102MinG) (139MaxG) https://www.wowhead.com/tbc/npc=7523/suffering-highborne
UPDATE `creature_template` SET `MaxLootGold`='821' WHERE `entry`='7524'; -- Anguished Highborne (108MinG) (145MaxG) https://www.wowhead.com/tbc/npc=7524/anguished-highborne
UPDATE `creature_template` SET `MinLootGold`='88', `MaxLootGold`='434' WHERE `entry`='7584'; -- Wandering Forest Walker (92MinG) (125MaxG) https://www.wowhead.com/tbc/npc=7584/wandering-forest-walker
UPDATE `creature_template` SET `MinLootGold`='22', `MaxLootGold`='155' WHERE `entry`='7603'; -- Leprous Assistant (44MinG) (63MaxG) https://www.wowhead.com/tbc/npc=7603/leprous-assistant
UPDATE `creature_template` SET `MinLootGold`='400' WHERE `entry`='7604'; -- Sergeant Bly (839MinG) (1100MaxG) https://www.wowhead.com/tbc/npc=7604/sergeant-bly
UPDATE `creature_template` SET `MaxLootGold`='1265' WHERE `entry`='7606'; -- Oro Eyegouge (263MinG) (348MaxG) https://www.wowhead.com/tbc/npc=7606/oro-eyegouge
UPDATE `creature_template` SET `MinLootGold`='243', `MaxLootGold`='1084' WHERE `entry`='7608'; -- Murta Grimgut (289MinG) (382MaxG) https://www.wowhead.com/tbc/npc=7608/murta-grimgut
UPDATE `creature_template` SET `MinLootGold`='1374', `MaxLootGold`='2713' WHERE `entry`='7664'; -- Razelikh the Defiler (1374MinG) (1799MaxG) https://www.wowhead.com/tbc/npc=7664/razelikh-the-defiler
UPDATE `creature_template` SET `MaxLootGold`='2777' WHERE `entry`='7665'; -- Grol the Destroyer (1073MinG) (1406MaxG) https://www.wowhead.com/tbc/npc=7665/grol-the-destroyer
UPDATE `creature_template` SET `MinLootGold`='164' WHERE `entry`='7666'; -- Archmage Allistarj (691MinG) (907MaxG) https://www.wowhead.com/tbc/npc=7666/archmage-allistarj
UPDATE `creature_template` SET `MinLootGold`='499' WHERE `entry`='7667'; -- Lady Sevine (990MinG) (1297MaxG) https://www.wowhead.com/tbc/npc=7667/lady-sevine
UPDATE `creature_template` SET `MaxLootGold`='755' WHERE `entry`='7668'; -- Servant of Razelikh (130MinG) (175MaxG) https://www.wowhead.com/tbc/npc=7668/servant-of-razelikh
UPDATE `creature_template` SET `MaxLootGold`='693' WHERE `entry`='7669'; -- Servant of Grol (114MinG) (154MaxG) https://www.wowhead.com/tbc/npc=7669/servant-of-grol
UPDATE `creature_template` SET `MaxLootGold`='719' WHERE `entry`='7670'; -- Servant of Allistarj (119MinG) (161MaxG) https://www.wowhead.com/tbc/npc=7670/servant-of-allistarj
UPDATE `creature_template` SET `MaxLootGold`='799' WHERE `entry`='7671'; -- Servant of Sevine (125MinG) (168MaxG) https://www.wowhead.com/tbc/npc=7671/servant-of-sevine
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='7684'; -- Riding Tiger (Yellow) (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=7684/riding-tiger-yellow
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='7686'; -- Riding Tiger (Red) (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=7686/riding-tiger-red
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='7687'; -- Riding Tiger (White Spotted) (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=7687/riding-tiger-white-spotted
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='7689'; -- Riding Tiger (BlackSpotted) (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=7689/riding-tiger-blackspotted
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='7690'; -- Riding Tiger (BlackStriped) (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=7690/riding-tiger-blackstriped
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='7704'; -- Riding Raptor (Crimson) (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=7704/riding-raptor-crimson
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='7706'; -- Riding Raptor (Ivory) (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=7706/riding-raptor-ivory
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='7707'; -- Riding Raptor (Turquoise) (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=7707/riding-raptor-turquoise
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='7708'; -- Riding Raptor (Violet) (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=7708/riding-raptor-violet
UPDATE `creature_template` SET `MinLootGold`='99', `MaxLootGold`='403' WHERE `entry`='7725'; -- Grimtotem Raider (75MinG) (103MaxG) (sample size 23)
UPDATE `creature_template` SET `MinLootGold`='73', `MaxLootGold`='373' WHERE `entry`='7726'; -- Grimtotem Naturalist (66MinG) (91MaxG) (sample size 23)
UPDATE `creature_template` SET `MinLootGold`='61', `MaxLootGold`='420' WHERE `entry`='7727'; -- Grimtotem Shaman (70MinG) (96MaxG) (sample size 21)
UPDATE `creature_template` SET `MaxLootGold`='1414' WHERE `entry`='7728'; -- Kirith the Damned (520MinG) (684MaxG) https://www.wowhead.com/tbc/npc=7728/kirith-the-damned
UPDATE `creature_template` SET `MinLootGold`='324', `MaxLootGold`='812' WHERE `entry`='7734'; -- Ilifar (324MinG) (428MaxG) https://www.wowhead.com/tbc/npc=7734/ilifar
UPDATE `creature_template` SET `MinLootGold`='256', `MaxLootGold`='786' WHERE `entry`='7735'; -- Felcular (256MinG) (340MaxG) https://www.wowhead.com/tbc/npc=7735/felcular
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='7739'; -- Riding MechaStrider (Red) (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=7739/riding-mechastrider-red
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='7749'; -- Riding MechaStrider (Blue) (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=7749/riding-mechastrider-blue
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='7787'; -- Sandfury Slave (0MinG) (0MaxG) samplesize 0 makes no sense, so no money
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='7788'; -- Sandfury Drudge (0MinG) (0MaxG) samplesize 0 makes no sense, so no money
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='7789'; -- Sandfury Cretin (0MinG) (0MaxG) samplesize 0 makes no sense, so no money
UPDATE `creature_template` SET `MaxLootGold`='982' WHERE `entry`='7795'; -- Hydromancer Velratha (254MinG) (336MaxG) https://www.wowhead.com/tbc/npc=7795/hydromancer-velratha
UPDATE `creature_template` SET `MinLootGold`='107', `MaxLootGold`='534' WHERE `entry`='7796'; -- Nekrum Gutchewer (320MinG) (423MaxG) https://www.wowhead.com/tbc/npc=7796/nekrum-gutchewer
UPDATE `creature_template` SET `MaxLootGold`='723' WHERE `entry`='7800'; -- Mekgineer Thermaplugg (446MinG) (587MaxG) https://www.wowhead.com/tbc/npc=7800/mekgineer-thermaplugg
UPDATE `creature_template` SET `MinLootGold`='44', `MaxLootGold`='360' WHERE `entry`='7805'; -- Wastewander Scofflaw (84MinG) (115MaxG) https://www.wowhead.com/tbc/npc=7805/wastewander-scofflaw
UPDATE `creature_template` SET `MinLootGold`='44', `MaxLootGold`='374' WHERE `entry`='7808'; -- Marauding Owlbeast (87MinG) (119MaxG) https://www.wowhead.com/tbc/npc=7808/marauding-owlbeast
UPDATE `creature_template` SET `MinLootGold`='43', `MaxLootGold`='498' WHERE `entry`='7809'; -- Vilebranch Ambusher (92MinG) (125MaxG) https://www.wowhead.com/tbc/npc=7809/vilebranch-ambusher
UPDATE `creature_template` SET `MinLootGold`='8283', `MaxLootGold`='41416' WHERE `entry`='7846'; -- Teremus the Devourer (4080MinG) (5333MaxG) classicmangos value
UPDATE `creature_template` SET `MaxLootGold`='402' WHERE `entry`='7847'; -- Caliph Scorpidsting (87MinG) (119MaxG) https://www.wowhead.com/tbc/npc=7847/caliph-scorpidsting
UPDATE `creature_template` SET `MinLootGold`='43', `MaxLootGold`='440' WHERE `entry`='7848'; -- Lurking Feral Scar (91MinG) (124MaxG) https://www.wowhead.com/tbc/npc=7848/lurking-feral-scar
UPDATE `creature_template` SET `MinLootGold`='85', `MaxLootGold`='446' WHERE `entry`='7855'; -- Southsea Pirate (81MinG) (111MaxG) (sample size 26)
UPDATE `creature_template` SET `MinLootGold`='65', `MaxLootGold`='443' WHERE `entry`='7856'; -- Southsea Freebooter (81MinG) (111MaxG) (sample size 30)
UPDATE `creature_template` SET `MinLootGold`='68', `MaxLootGold`='422' WHERE `entry`='7857'; -- Southsea Dock Worker (81MinG) (111MaxG) (sample size 37)
UPDATE `creature_template` SET `MinLootGold`='73', `MaxLootGold`='451' WHERE `entry`='7858'; -- Southsea Swashbuckler (81MinG) (111MaxG) (sample size 44)
UPDATE `creature_template` SET `MaxLootGold`='424' WHERE `entry`='7864'; -- Lingering Highborne (95MinG) (129MaxG) https://www.wowhead.com/tbc/npc=7864/lingering-highborne
UPDATE `creature_template` SET `MaxLootGold`='120' WHERE `entry`='7883'; -- Andre Firebeard (84MinG) (115MaxG) https://www.wowhead.com/tbc/npc=7883/andre-firebeard
UPDATE `creature_template` SET `MaxLootGold`='386' WHERE `entry`='7885'; -- Spitelash Battlemaster (116MinG) (157MaxG) https://www.wowhead.com/tbc/npc=7885/spitelash-battlemaster
UPDATE `creature_template` SET `MaxLootGold`='486' WHERE `entry`='7886'; -- Spitelash Enchantress (100MinG) (136MaxG) https://www.wowhead.com/tbc/npc=7886/spitelash-enchantress
UPDATE `creature_template` SET `MinLootGold`='43', `MaxLootGold`='370' WHERE `entry`='7899'; -- Treasure Hunting Pirate (83MinG) (114MaxG) https://www.wowhead.com/tbc/npc=7899/treasure-hunting-pirate
UPDATE `creature_template` SET `MinLootGold`='43', `MaxLootGold`='312' WHERE `entry`='7901'; -- Treasure Hunting Swashbuckler (81MinG) (111MaxG) https://www.wowhead.com/tbc/npc=7901/treasure-hunting-swashbuckler
UPDATE `creature_template` SET `MinLootGold`='44', `MaxLootGold`='296' WHERE `entry`='7902'; -- Treasure Hunting Buccaneer (81MinG) (111MaxG) https://www.wowhead.com/tbc/npc=7902/treasure-hunting-buccaneer
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='7939'; -- Feathermoon Sentinel (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=7939/feathermoon-sentinel
UPDATE `creature_template` SET `MaxLootGold`='318' WHERE `entry`='7997'; -- Captured Sprite Darter (73MinG) (100MaxG) https://www.wowhead.com/tbc/npc=7997/captured-sprite-darter
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='8017'; -- Sen'jin Guardian (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=8017/senjin-guardian
UPDATE `creature_template` SET `MaxLootGold`='1111' WHERE `entry`='8127'; -- Antu'sul (631MinG) (829MaxG) https://www.wowhead.com/tbc/npc=8127/antusul
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='8138'; -- Sul'lithuz Broodling (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=8138/sullithuz-broodling
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='8149'; -- Sul'lithuz Warder (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=8149/sullithuz-warder
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='8156'; -- Servant of Antu'sul (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=8156/servant-of-antusul
UPDATE `creature_template` SET `MaxLootGold`='385' WHERE `entry`='8203'; -- Kregg Keelhaul (92MinG) (125MaxG) https://www.wowhead.com/tbc/npc=8203/kregg-keelhaul
UPDATE `creature_template` SET `MaxLootGold`='237' WHERE `entry`='8212'; -- The Reak (96MinG) (130MaxG) https://www.wowhead.com/tbc/npc=8212/the-reak
UPDATE `creature_template` SET `MaxLootGold`='495' WHERE `entry`='8214'; -- Jalinde Summerdrake (96MinG) (130MaxG) https://www.wowhead.com/tbc/npc=8214/jalinde-summerdrake
UPDATE `creature_template` SET `MaxLootGold`='1040' WHERE `entry`='8217'; -- Mith'rethis the Enchanter (493MinG) (649MaxG) https://www.wowhead.com/tbc/npc=8217/mithrethis-the-enchanter
UPDATE `creature_template` SET `MaxLootGold`='212' WHERE `entry`='8283'; -- Slave Master Blackheart (99MinG) (134MaxG) https://www.wowhead.com/tbc/npc=8283/slave-master-blackheart
UPDATE `creature_template` SET `MaxLootGold`='428' WHERE `entry`='8296'; -- Mojo the Twisted (78MinG) (107MaxG) https://www.wowhead.com/tbc/npc=8296/mojo-the-twisted
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='8302'; -- Deatheye (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=8302/deatheye
UPDATE `creature_template` SET `MaxLootGold`='336' WHERE `entry`='8304'; -- Dreadscorn (126MinG) (170MaxG) https://www.wowhead.com/tbc/npc=8304/dreadscorn
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='8317'; -- Atal'ai Deathwalker's Spirit (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=8317/atalai-deathwalkers-spirit
UPDATE `creature_template` SET `MinLootGold`='82', `MaxLootGold`='494' WHERE `entry`='8318'; -- Atal'ai Slave (91MinG) (124MaxG) https://www.wowhead.com/tbc/npc=8318/atalai-slave
UPDATE `creature_template` SET `MinLootGold`='113', `MaxLootGold`='604' WHERE `entry`='8319'; -- Nightmare Whelp (98MinG) (133MaxG) https://www.wowhead.com/tbc/npc=8319/nightmare-whelp
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='8324'; -- Atal'ai Skeleton (96MinG) (130MaxG) https://www.wowhead.com/tbc/npc=8324/atalai-skeleton
UPDATE `creature_template` SET `MinLootGold`='44', `MaxLootGold`='384' WHERE `entry`='8337'; -- Dark Iron Steelshifter (65MinG) (89MaxG) https://www.wowhead.com/tbc/npc=8337/dark-iron-steelshifter
UPDATE `creature_template` SET `MinLootGold`='311', `MaxLootGold`='1615' WHERE `entry`='8384'; -- Deep Lurker (362MinG) (477MaxG) https://www.wowhead.com/tbc/npc=8384/deep-lurker
UPDATE `creature_template` SET `MinLootGold`='147', `MaxLootGold`='782' WHERE `entry`='8391'; -- Lathoric the Black (595MinG) (782MaxG) https://www.wowhead.com/tbc/npc=8391/lathoric-the-black
UPDATE `creature_template` SET `MinLootGold`='407' WHERE `entry`='8400'; -- Obsidion (765MinG) (1004MaxG) https://www.wowhead.com/tbc/npc=8400/obsidion
UPDATE `creature_template` SET `MaxLootGold`='632' WHERE `entry`='8408'; -- Warlord Krellian (116MinG) (156MaxG) https://www.wowhead.com/tbc/npc=8408/warlord-krellian
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='8438'; -- Hakkari Bloodkeeper (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=8438/hakkari-bloodkeeper
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='8443'; -- Avatar of Hakkar (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=8443/avatar-of-hakkar
UPDATE `creature_template` SET `MaxLootGold`='1219' WHERE `entry`='8497'; -- Nightmare Suppressor (382MinG) (504MaxG) https://www.wowhead.com/tbc/npc=8497/nightmare-suppressor
UPDATE `creature_template` SET `MinLootGold`='103', `MaxLootGold`='640' WHERE `entry`='8504'; -- Dark Iron Sentry (287MinG) (380MaxG) https://www.wowhead.com/tbc/npc=8504/dark-iron-sentry
UPDATE `creature_template` SET `MaxLootGold`='268' WHERE `entry`='8518'; -- Rynthariel the Keymaster (161MinG) (215MaxG) https://www.wowhead.com/tbc/npc=8518/rynthariel-the-keymaster
UPDATE `creature_template` SET `MaxLootGold`='708' WHERE `entry`='8523'; -- Scourge Soldier (114MinG) (154MaxG) https://www.wowhead.com/tbc/npc=8523/scourge-soldier
UPDATE `creature_template` SET `MaxLootGold`='751' WHERE `entry`='8524'; -- Cursed Mage (96MinG) (130MaxG) https://www.wowhead.com/tbc/npc=8524/cursed-mage
UPDATE `creature_template` SET `MaxLootGold`='821' WHERE `entry`='8525'; -- Scourge Warder (105MinG) (143MaxG) https://www.wowhead.com/tbc/npc=8525/scourge-warder
UPDATE `creature_template` SET `MaxLootGold`='441' WHERE `entry`='8527'; -- Scourge Guard (128MinG) (172MaxG) https://www.wowhead.com/tbc/npc=8527/scourge-guard
UPDATE `creature_template` SET `MaxLootGold`='558' WHERE `entry`='8528'; -- Dread Weaver (106MinG) (143MaxG) https://www.wowhead.com/tbc/npc=8528/dread-weaver
UPDATE `creature_template` SET `MaxLootGold`='998' WHERE `entry`='8529'; -- Scourge Champion (134MinG) (180MaxG) https://www.wowhead.com/tbc/npc=8529/scourge-champion
UPDATE `creature_template` SET `MinLootGold`='116', `MaxLootGold`='789' WHERE `entry`='8530'; -- Cannibal Ghoul (115MinG) (155MaxG) (sample size 29)
UPDATE `creature_template` SET `MaxLootGold`='754' WHERE `entry`='8531'; -- Gibbering Ghoul (125MinG) (169MaxG) https://www.wowhead.com/tbc/npc=8531/gibbering-ghoul
UPDATE `creature_template` SET `MaxLootGold`='835' WHERE `entry`='8532'; -- Diseased Flayer (133MinG) (179MaxG) https://www.wowhead.com/tbc/npc=8532/diseased-flayer
UPDATE `creature_template` SET `MinLootGold`='131', `MaxLootGold`='865' WHERE `entry`='8539'; -- Eyeless Watcher (128MinG) (172MaxG) (sample size 24)
UPDATE `creature_template` SET `MaxLootGold`='673' WHERE `entry`='8540'; -- Torn Screamer (116MinG) (157MaxG) https://www.wowhead.com/tbc/npc=8540/torn-screamer
UPDATE `creature_template` SET `MaxLootGold`='812' WHERE `entry`='8541'; -- Hate Shrieker (122MinG) (165MaxG) https://www.wowhead.com/tbc/npc=8541/hate-shrieker
UPDATE `creature_template` SET `MinLootGold`='131', `MaxLootGold`='840' WHERE `entry`='8542'; -- Death Singer (133MinG) (178MaxG) https://www.wowhead.com/tbc/npc=8542/death-singer
UPDATE `creature_template` SET `MinLootGold`='149', `MaxLootGold`='908' WHERE `entry`='8543'; -- Stitched Horror (130MinG) (175MaxG) (sample size 25)
UPDATE `creature_template` SET `MaxLootGold`='567' WHERE `entry`='8545'; -- Stitched Golem (136MinG) (183MaxG) https://www.wowhead.com/tbc/npc=8545/abomination
UPDATE `creature_template` SET `MinLootGold`='142', `MaxLootGold`='959' WHERE `entry`='8546'; -- Dark Adept (133MinG) (179MaxG) (sample size 109)
UPDATE `creature_template` SET `MinLootGold`='145', `MaxLootGold`='1005' WHERE `entry`='8550'; -- Shadowmage (111MinG) (150MaxG) (sample size 118)
UPDATE `creature_template` SET `MaxLootGold`='927' WHERE `entry`='8561'; -- Mossflayer Shadowhunter (133MinG) (179MaxG) https://www.wowhead.com/tbc/npc=8561/mossflayer-shadowhunter
UPDATE `creature_template` SET `MaxLootGold`='890' WHERE `entry`='8562'; -- Mossflayer Cannibal (116MinG) (156MaxG) https://www.wowhead.com/tbc/npc=8562/mossflayer-cannibal
UPDATE `creature_template` SET `MaxLootGold`='959' WHERE `entry`='8563'; -- Woodsman (129MinG) (174MaxG) https://www.wowhead.com/tbc/npc=8563/woodsman
UPDATE `creature_template` SET `MaxLootGold`='751' WHERE `entry`='8564'; -- Ranger (134MinG) (180MaxG) https://www.wowhead.com/tbc/npc=8564/ranger
UPDATE `creature_template` SET `MaxLootGold`='905' WHERE `entry`='8565'; -- Pathstrider (126MinG) (170MaxG) https://www.wowhead.com/tbc/npc=8565/pathstrider
UPDATE `creature_template` SET `MinLootGold`='80', `MaxLootGold`='537' WHERE `entry`='8566'; -- Dark Iron Lookout (94MinG) (128MaxG) (sample size 64)
UPDATE `creature_template` SET `MinLootGold`='259', `MaxLootGold`='873' WHERE `entry`='8567'; -- Glutton (575MinG) (756MaxG) https://www.wowhead.com/tbc/npc=8567/glutton
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='8578'; -- Magus Rimtori (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=8578/magus-rimtori
UPDATE `creature_template` SET `MinLootGold`='497', `MaxLootGold`='1757' WHERE `entry`='8580'; -- Atal'alarion (762MinG) (1000MaxG) https://www.wowhead.com/tbc/npc=8580/atalalarion
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='8581'; -- Blood Elf Defender (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=8581/blood-elf-defender
UPDATE `creature_template` SET `MinLootGold`='118' WHERE `entry`='8606'; -- Living Decay (122MinG) (165MaxG) https://www.wowhead.com/tbc/npc=8606/living-decay
UPDATE `creature_template` SET `MaxLootGold`='471' WHERE `entry`='8607'; -- Rotting Sludge (119MinG) (161MaxG) https://www.wowhead.com/tbc/npc=8607/rotting-sludge
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='8608'; -- Angered Infernal (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=8608/angered-infernal
UPDATE `creature_template` SET `MaxLootGold`='437' WHERE `entry`='8637'; -- Dark Iron Watchman (81MinG) (111MaxG) https://www.wowhead.com/tbc/npc=8637/dark-iron-watchman
UPDATE `creature_template` SET `MinLootGold`='103', `MaxLootGold`='646' WHERE `entry`='8766'; -- Forest Ooze (109MinG) (148MaxG) https://www.wowhead.com/tbc/npc=8766/forest-ooze
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='8877'; -- Sandfury Zealot (0MinG) (0MaxG) no samples makes no sense so 0
UPDATE `creature_template` SET `MinLootGold`='275', `MaxLootGold`='1667' WHERE `entry`='8889'; -- Anvilrage Overseer (355MinG) (468MaxG) (sample size 40)
UPDATE `creature_template` SET `MinLootGold`='274', `MaxLootGold`='1820' WHERE `entry`='8890'; -- Anvilrage Warden (365MinG) (482MaxG) (sample size 68)
UPDATE `creature_template` SET `MinLootGold`='286', `MaxLootGold`='1930' WHERE `entry`='8891'; -- Anvilrage Guardsman (375MinG) (495MaxG) (sample size 107)
UPDATE `creature_template` SET `MinLootGold`='355', `MaxLootGold`='1944' WHERE `entry`='8892'; -- Anvilrage Footman (394MinG) (519MaxG) (sample size 65)
UPDATE `creature_template` SET `MaxLootGold`='2049' WHERE `entry`='8893'; -- Anvilrage Soldier (451MinG) (594MaxG) https://www.wowhead.com/tbc/npc=8893/anvilrage-soldier
UPDATE `creature_template` SET `MinLootGold`='311', `MaxLootGold`='2119' WHERE `entry`='8894'; -- Anvilrage Medic (366MinG) (483MaxG) https://www.wowhead.com/tbc/npc=8894/anvilrage-medic
UPDATE `creature_template` SET `MaxLootGold`='1987' WHERE `entry`='8895'; -- Anvilrage Officer (380MinG) (502MaxG) https://www.wowhead.com/tbc/npc=8895/anvilrage-officer
UPDATE `creature_template` SET `MinLootGold`='135', `MaxLootGold`='698' WHERE `entry`='8896'; -- Shadowforge Peasant (103MinG) (139MaxG) (sample size 40)
UPDATE `creature_template` SET `MinLootGold`='108', `MaxLootGold`='694' WHERE `entry`='8897'; -- Doomforge Craftsman (113MinG) (153MaxG) (sample size 40)
UPDATE `creature_template` SET `MaxLootGold`='2149' WHERE `entry`='8898'; -- Anvilrage Marshal (361MinG) (476MaxG) https://www.wowhead.com/tbc/npc=8898/anvilrage-marshal
UPDATE `creature_template` SET `MinLootGold`='339', `MaxLootGold`='2373' WHERE `entry`='8899'; -- Doomforge Dragoon (420MinG) (554MaxG) (sample size 26)
UPDATE `creature_template` SET `MaxLootGold`='611' WHERE `entry`='8900'; -- Doomforge Arcanasmith (96MinG) (130MaxG) https://www.wowhead.com/tbc/npc=8900/doomforge-arcanasmith
UPDATE `creature_template` SET `MaxLootGold`='702' WHERE `entry`='8902'; -- Shadowforge Citizen (92MinG) (125MaxG) https://www.wowhead.com/tbc/npc=8902/shadowforge-citizen
UPDATE `creature_template` SET `MaxLootGold`='1606' WHERE `entry`='8903'; -- Anvilrage Captain (439MinG) (578MaxG) https://www.wowhead.com/tbc/npc=8903/anvilrage-captain
UPDATE `creature_template` SET `MaxLootGold`='797' WHERE `entry`='8904'; -- Shadowforge Senator (103MinG) (140MaxG) https://www.wowhead.com/tbc/npc=8904/shadowforge-senator
UPDATE `creature_template` SET `MaxLootGold`='2225' WHERE `entry`='8905'; -- Warbringer Construct (410MinG) (540MaxG) https://www.wowhead.com/tbc/npc=8905/warbringer-construct
UPDATE `creature_template` SET `MaxLootGold`='2104' WHERE `entry`='8906'; -- Ragereaver Golem (429MinG) (565MaxG) https://www.wowhead.com/tbc/npc=8906/ragereaver-golem
UPDATE `creature_template` SET `MaxLootGold`='2436' WHERE `entry`='8907'; -- Wrath Hammer Construct (435MinG) (573MaxG) https://www.wowhead.com/tbc/npc=8907/wrath-hammer-construct
UPDATE `creature_template` SET `MaxLootGold`='1223' WHERE `entry`='8908'; -- Molten War Golem (601MinG) (789MaxG) https://www.wowhead.com/tbc/npc=8908/molten-war-golem
UPDATE `creature_template` SET `MinLootGold`='299', `MaxLootGold`='1890' WHERE `entry`='8912'; -- Twilight's Hammer Torturer (324MinG) (428MaxG) (sample size 25)
UPDATE `creature_template` SET `MinLootGold`='109', `MaxLootGold`='666' WHERE `entry`='8913'; -- Twilight Emissary (311MinG) (411MaxG) https://www.wowhead.com/tbc/npc=8913/twilight-emissary
UPDATE `creature_template` SET `MaxLootGold`='1894' WHERE `entry`='8914'; -- Twilight Bodyguard (351MinG) (463MaxG) https://www.wowhead.com/tbc/npc=8914/twilight-bodyguard
UPDATE `creature_template` SET `MaxLootGold`='324' WHERE `entry`='8915'; -- Twilight's Hammer Ambassador (102MinG) (139MaxG) https://www.wowhead.com/tbc/npc=8915/twilights-hammer-ambassador
UPDATE `creature_template` SET `MaxLootGold`='642' WHERE `entry`='8916'; -- Arena Spectator (111MinG) (150MaxG) https://www.wowhead.com/tbc/npc=8916/arena-spectator
UPDATE `creature_template` SET `MinLootGold`='115', `MaxLootGold`='754' WHERE `entry`='8920'; -- Weapon Technician (102MinG) (139MaxG) (sample size 41)
UPDATE `creature_template` SET `MinLootGold`='147', `MaxLootGold`='2561' WHERE `entry`='8923'; -- Panzor the Invincible (1035MinG) (1356MaxG) https://www.wowhead.com/tbc/npc=8923/panzor-the-invincible
UPDATE `creature_template` SET `MinLootGold`='120', `MaxLootGold`='1083' WHERE `entry`='8924'; -- The Behemoth (826MinG) (1083MaxG) https://www.wowhead.com/tbc/npc=8924/the-behemoth
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='8925'; -- Dredge Worm (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=8925/dredge-worm
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='8928'; -- Burrowing Thundersnout (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=8928/burrowing-thundersnout
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='8964'; -- Blackrock Drake (806MinG) (1058MaxG) https://www.wowhead.com/tbc/npc=8964/blackrock-drake
UPDATE `creature_template` SET `MinLootGold`='168', `MaxLootGold`='1533' WHERE `entry`='8976'; -- Hematos (1170MinG) (1533MaxG) https://www.wowhead.com/tbc/npc=8976/hematos
UPDATE `creature_template` SET `MinLootGold`='130', `MaxLootGold`='767' WHERE `entry`='8979'; -- Gruklash (130MinG) (175MaxG) https://www.wowhead.com/tbc/npc=8979/gruklash
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='8980'; -- Firegut Captain (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=8980/firegut-captain
UPDATE `creature_template` SET `MaxLootGold`='935' WHERE `entry`='8983'; -- Golem Lord Argelmach (646MinG) (849MaxG) https://www.wowhead.com/tbc/npc=8983/golem-lord-argelmach
UPDATE `creature_template` SET `MaxLootGold`='1649' WHERE `entry`='9018'; -- High Interrogator Gerstahn (489MinG) (644MaxG) https://www.wowhead.com/tbc/npc=9018/high-interrogator-gerstahn
UPDATE `creature_template` SET `MaxLootGold`='945' WHERE `entry`='9024'; -- Pyromancer Loregrain (659MinG) (865MaxG) https://www.wowhead.com/tbc/npc=9024/pyromancer-loregrain
UPDATE `creature_template` SET `MinLootGold`='147', `MaxLootGold`='1784' WHERE `entry`='9027'; -- Gorosh the Dervish (772MinG) (1013MaxG) https://www.wowhead.com/tbc/npc=9027/gorosh-the-dervish
UPDATE `creature_template` SET `MinLootGold`='143', `MaxLootGold`='2301' WHERE `entry`='9028'; -- Grizzle (1066MinG) (1397MaxG) https://www.wowhead.com/tbc/npc=9028/grizzle
UPDATE `creature_template` SET `MinLootGold`='147', `MaxLootGold`='1120' WHERE `entry`='9029'; -- Eviscerator (854MinG) (1120MaxG) https://www.wowhead.com/tbc/npc=9029/eviscerator
UPDATE `creature_template` SET `MinLootGold`='147', `MaxLootGold`='1007' WHERE `entry`='9030'; -- Ok'thor the Breaker (767MinG) (1007MaxG) https://www.wowhead.com/tbc/npc=9030/okthor-the-breaker
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='9031'; -- Anub'shiah (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=9031/anubshiah
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='9032'; -- Hedrum the Creeper (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=9032/hedrum-the-creeper
UPDATE `creature_template` SET `MaxLootGold`='1352' WHERE `entry`='9033'; -- General Angerforge (1029MinG) (1349MaxG) https://www.wowhead.com/tbc/npc=9033/general-angerforge
UPDATE `creature_template` SET `MaxLootGold`='2306' WHERE `entry`='9045'; -- Scarshield Acolyte (369MinG) (487MaxG) https://www.wowhead.com/tbc/npc=9045/scarshield-acolyte
UPDATE `creature_template` SET `MinLootGold`='376' WHERE `entry`='9056'; -- Fineous Darkvire (1279MinG) (1675MaxG) https://www.wowhead.com/tbc/npc=9056/fineous-darkvire
UPDATE `creature_template` SET `MinLootGold`='497', `MaxLootGold`='2819' WHERE `entry`='9096'; -- Rage Talon Dragonspawn (691MinG) (907MaxG) (sample size 21)
UPDATE `creature_template` SET `MinLootGold`='402', `MaxLootGold`='2367' WHERE `entry`='9097'; -- Scarshield Legionnaire (425MinG) (559MaxG) (sample size 65)
UPDATE `creature_template` SET `MaxLootGold`='2313' WHERE `entry`='9098'; -- Scarshield Spellbinder (361MinG) (476MaxG) https://www.wowhead.com/tbc/npc=9098/scarshield-spellbinder
UPDATE `creature_template` SET `MaxLootGold`='2000' WHERE `entry`='9156'; -- Ambassador Flamelash (1284MinG) (1682MaxG) https://www.wowhead.com/tbc/npc=9156/ambassador-flamelash
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='9158'; -- Riding Horse (Warhorse) (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=9158/riding-horse-warhorse
UPDATE `creature_template` SET `MaxLootGold`='620' WHERE `entry`='9176'; -- Gor'tesh (113MinG) (153MaxG) https://www.wowhead.com/tbc/npc=9176/gortesh
UPDATE `creature_template` SET `MinLootGold`='920', `MaxLootGold`='2139' WHERE `entry`='9196'; -- Highlord Omokk (1117MinG) (1464MaxG) https://www.wowhead.com/tbc/npc=9196/highlord-omokk
UPDATE `creature_template` SET `MaxLootGold`='2274' WHERE `entry`='9197'; -- Spirestone Battle Mage (561MinG) (738MaxG) https://www.wowhead.com/tbc/npc=9197/spirestone-battle-mage
UPDATE `creature_template` SET `MinLootGold`='394', `MaxLootGold`='2303' WHERE `entry`='9199'; -- Spirestone Enforcer (641MinG) (842MaxG) https://www.wowhead.com/tbc/npc=9199/spirestone-enforcer
UPDATE `creature_template` SET `MinLootGold`='388', `MaxLootGold`='2391' WHERE `entry`='9200'; -- Spirestone Reaver (643MinG) (845MaxG) https://www.wowhead.com/tbc/npc=9200/spirestone-reaver
UPDATE `creature_template` SET `MaxLootGold`='1687' WHERE `entry`='9201'; -- Spirestone Ogre Magus (518MinG) (681MaxG) https://www.wowhead.com/tbc/npc=9201/spirestone-ogre-magus
UPDATE `creature_template` SET `MaxLootGold`='2376' WHERE `entry`='9216'; -- Spirestone Warlord (689MinG) (905MaxG) https://www.wowhead.com/tbc/npc=9216/spirestone-warlord
UPDATE `creature_template` SET `MaxLootGold`='2245' WHERE `entry`='9219'; -- Spirestone Butcher (1226MinG) (1606MaxG) https://www.wowhead.com/tbc/npc=9219/spirestone-butcher
UPDATE `creature_template` SET `MaxLootGold`='2172' WHERE `entry`='9236'; -- Shadow Hunter Vosh'gajin (988MinG) (1295MaxG) https://www.wowhead.com/tbc/npc=9236/shadow-hunter-voshgajin
UPDATE `creature_template` SET `MaxLootGold`='2212' WHERE `entry`='9237'; -- War Master Voone (1330MinG) (1741MaxG) https://www.wowhead.com/tbc/npc=9237/war-master-voone
UPDATE `creature_template` SET `MaxLootGold`='2470' WHERE `entry`='9239'; -- Smolderthorn Mystic (375MinG) (495MaxG) https://www.wowhead.com/tbc/npc=9239/smolderthorn-mystic
UPDATE `creature_template` SET `MinLootGold`='427', `MaxLootGold`='2460' WHERE `entry`='9240'; -- Smolderthorn Shadow Priest (371MinG) (489MaxG) (sample size 26)
UPDATE `creature_template` SET `MaxLootGold`='2378' WHERE `entry`='9241'; -- Smolderthorn Headhunter (458MinG) (603MaxG) https://www.wowhead.com/tbc/npc=9241/smolderthorn-headhunter
UPDATE `creature_template` SET `MaxLootGold`='2228' WHERE `entry`='9257'; -- Scarshield Warlock (369MinG) (487MaxG) https://www.wowhead.com/tbc/npc=9257/scarshield-warlock
UPDATE `creature_template` SET `MinLootGold`='419', `MaxLootGold`='2288' WHERE `entry`='9258'; -- Scarshield Raider (439MinG) (578MaxG) https://www.wowhead.com/tbc/npc=9258/scarshield-raider
UPDATE `creature_template` SET `MinLootGold`='474', `MaxLootGold`='2573' WHERE `entry`='9259'; -- Firebrand Grunt (449MinG) (592MaxG) (sample size 24)
UPDATE `creature_template` SET `MaxLootGold`='2655' WHERE `entry`='9260'; -- Firebrand Legionnaire (464MinG) (610MaxG) https://www.wowhead.com/tbc/npc=9260/firebrand-legionnaire
UPDATE `creature_template` SET `MaxLootGold`='2553' WHERE `entry`='9261'; -- Firebrand Darkweaver (390MinG) (514MaxG) https://www.wowhead.com/tbc/npc=9261/firebrand-darkweaver
UPDATE `creature_template` SET `MaxLootGold`='2574' WHERE `entry`='9262'; -- Firebrand Invoker (385MinG) (508MaxG) https://www.wowhead.com/tbc/npc=9262/firebrand-invoker
UPDATE `creature_template` SET `MaxLootGold`='2694' WHERE `entry`='9263'; -- Firebrand Dreadweaver (400MinG) (527MaxG) https://www.wowhead.com/tbc/npc=9263/firebrand-dreadweaver
UPDATE `creature_template` SET `MaxLootGold`='2532' WHERE `entry`='9264'; -- Firebrand Pyromancer (396MinG) (522MaxG) https://www.wowhead.com/tbc/npc=9264/firebrand-pyromancer
UPDATE `creature_template` SET `MaxLootGold`='2242' WHERE `entry`='9265'; -- Smolderthorn Shadow Hunter (385MinG) (508MaxG) https://www.wowhead.com/tbc/npc=9265/smolderthorn-shadow-hunter
UPDATE `creature_template` SET `MaxLootGold`='2611' WHERE `entry`='9266'; -- Smolderthorn Witch Doctor (381MinG) (503MaxG) https://www.wowhead.com/tbc/npc=9266/smolderthorn-witch-doctor
UPDATE `creature_template` SET `MinLootGold`='379', `MaxLootGold`='2466' WHERE `entry`='9267'; -- Smolderthorn Axe Thrower (443MinG) (584MaxG) (sample size 29)
UPDATE `creature_template` SET `MaxLootGold`='2533' WHERE `entry`='9268'; -- Smolderthorn Berserker (464MinG) (610MaxG) https://www.wowhead.com/tbc/npc=9268/smolderthorn-berserker
UPDATE `creature_template` SET `MaxLootGold`='2594' WHERE `entry`='9269'; -- Smolderthorn Seer (385MinG) (508MaxG) https://www.wowhead.com/tbc/npc=9269/smolderthorn-seer
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='9396'; -- Ground Pounder (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=9396/ground-pounder
UPDATE `creature_template` SET `MinLootGold`='147' WHERE `entry`='9437'; -- Dark Keeper Vorfalk (363MinG) (737MaxG) https://www.wowhead.com/tbc/npc=9437/dark-keeper-vorfalk
UPDATE `creature_template` SET `MinLootGold`='147' WHERE `entry`='9438'; -- Dark Keeper Bethek (363MinG) (737MaxG) https://www.wowhead.com/tbc/npc=9438/dark-keeper-bethek
UPDATE `creature_template` SET `MinLootGold`='152' WHERE `entry`='9439'; -- Dark Keeper Uggel (367MinG) (761MaxG) https://www.wowhead.com/tbc/npc=9439/dark-keeper-uggel
UPDATE `creature_template` SET `MinLootGold`='200' WHERE `entry`='9441'; -- Dark Keeper Zimrel (375MinG) (998MaxG) https://www.wowhead.com/tbc/npc=9441/dark-keeper-zimrel
UPDATE `creature_template` SET `MinLootGold`='147' WHERE `entry`='9442'; -- Dark Keeper Ofgut (358MinG) (737MaxG) https://www.wowhead.com/tbc/npc=9442/dark-keeper-ofgut
UPDATE `creature_template` SET `MinLootGold`='152' WHERE `entry`='9443'; -- Dark Keeper Pelver (354MinG) (761MaxG) https://www.wowhead.com/tbc/npc=9443/dark-keeper-pelver
UPDATE `creature_template` SET `MaxLootGold`='1388' WHERE `entry`='9445'; -- Dark Guard (147MinG) (737MaxG) https://www.wowhead.com/tbc/npc=9445/dark-guard
-- vmangos custom researched
UPDATE `creature_template` SET `MinLootGold`='351', `MaxLootGold`='1463' WHERE `entry`='9447'; -- Scarlet Warder (351MinG) (463MaxG) https://www.wowhead.com/tbc/npc=9447/scarlet-warder
UPDATE `creature_template` SET `MinLootGold`='377', `MaxLootGold`='1497' WHERE `entry`='9448'; -- Scarlet Praetorian (377MinG) (497MaxG) https://www.wowhead.com/tbc/npc=9448/scarlet-praetorian
UPDATE `creature_template` SET `MinLootGold`='357', `MaxLootGold`='1471' WHERE `entry`='9449'; -- Scarlet Cleric (357MinG) (471MaxG) https://www.wowhead.com/tbc/npc=9449/scarlet-cleric
UPDATE `creature_template` SET `MinLootGold`='367', `MaxLootGold`='1484' WHERE `entry`='9450'; -- Scarlet Curate (367MinG) (484MaxG) https://www.wowhead.com/tbc/npc=9450/scarlet-curate
UPDATE `creature_template` SET `MinLootGold`='346', `MaxLootGold`='1456' WHERE `entry`='9451'; -- Scarlet Archmage (346MinG) (456MaxG) https://www.wowhead.com/tbc/npc=9451/scarlet-archmage
UPDATE `creature_template` SET `MinLootGold`='329', `MaxLootGold`='1435' WHERE `entry`='9452'; -- Scarlet Enchanter (329MinG) (435MaxG) https://www.wowhead.com/tbc/npc=9452/scarlet-enchanter
-- end scarlet.
UPDATE `creature_template` SET `MaxLootGold`='593' WHERE `entry`='9454'; -- Xavathras (115MinG) (155MaxG) https://www.wowhead.com/tbc/npc=9454/xavathras
UPDATE `creature_template` SET `MinLootGold`='16', `MaxLootGold`='87' WHERE `entry`='9456'; -- Warlord Krom'zar (91MinG) (123MaxG) https://www.wowhead.com/tbc/npc=9456/warlord-kromzar
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='9460'; -- Gadgetzan Bruiser (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=9460/gadgetzan-bruiser
UPDATE `creature_template` SET `MinLootGold`='129', `MaxLootGold`='643' WHERE `entry`='9461'; -- Frenzied Black Drake (416MinG) (548MaxG) https://www.wowhead.com/tbc/npc=9461/frenzied-black-drake
UPDATE `creature_template` SET `MaxLootGold`='309' WHERE `entry`='9462'; -- Chieftain Bloodmaw (123MinG) (166MaxG) https://www.wowhead.com/tbc/npc=9462/chieftain-bloodmaw
UPDATE `creature_template` SET `MaxLootGold`='364' WHERE `entry`='9464'; -- Overlord Ror (102MinG) (138MaxG) https://www.wowhead.com/tbc/npc=9464/overlord-ror
UPDATE `creature_template` SET `MinLootGold`='152', `MaxLootGold`='1133' WHERE `entry`='9476'; -- Watchman Doomgrip (520MinG) (761MaxG) https://www.wowhead.com/tbc/npc=9476/watchman-doomgrip
UPDATE `creature_template` SET `MinLootGold`='63', `MaxLootGold`='316' WHERE `entry`='9477'; -- Cloned Ooze (105MinG) (143MaxG) https://www.wowhead.com/tbc/npc=9477/cloned-ooze
UPDATE `creature_template` SET `MaxLootGold`='1955' WHERE `entry`='9502'; -- Phalanx (856MinG) (1122MaxG) https://www.wowhead.com/tbc/npc=9502/phalanx
UPDATE `creature_template` SET `MaxLootGold`='905' WHERE `entry`='9517'; -- Shadow Lord Fel'dan (101MinG) (136MaxG) https://www.wowhead.com/tbc/npc=9517/shadow-lord-feldan
UPDATE `creature_template` SET `MaxLootGold`='852' WHERE `entry`='9518'; -- Rakaiah (115MinG) (155MaxG) https://www.wowhead.com/tbc/npc=9518/rakaiah
UPDATE `creature_template` SET `MinLootGold`='143', `MaxLootGold`='713' WHERE `entry`='9522'; -- Blackrock Ambusher (284MinG) (376MaxG) https://www.wowhead.com/tbc/npc=9522/blackrock-ambusher
UPDATE `creature_template` SET `MinLootGold`='5', `MaxLootGold`='27' WHERE `entry`='9523'; -- Kolkar Stormseer (17MinG) (27MaxG) https://www.wowhead.com/tbc/npc=9523/kolkar-stormseer
UPDATE `creature_template` SET `MinLootGold`='14', `MaxLootGold`='49' WHERE `entry`='9524'; -- Kolkar Invader (19MinG) (29MaxG) (sample size 29)
UPDATE `creature_template` SET `MinLootGold`='147', `MaxLootGold`='2123' WHERE `entry`='9537'; -- Hurley Blackbreath (643MinG) (845MaxG) https://www.wowhead.com/tbc/npc=9537/hurley-blackbreath
UPDATE `creature_template` SET `MaxLootGold`='1575' WHERE `entry`='9541'; -- Blackbreath Crony (147MinG) (737MaxG) https://www.wowhead.com/tbc/npc=9541/blackbreath-crony
UPDATE `creature_template` SET `MinLootGold`='240' WHERE `entry`='9543'; -- Ribbly Screwspigot (406MinG) (535MaxG) https://www.wowhead.com/tbc/npc=9543/ribbly-screwspigot
UPDATE `creature_template` SET `MaxLootGold`='572' WHERE `entry`='9545'; -- Grim Patron (93MinG) (126MaxG) https://www.wowhead.com/tbc/npc=9545/grim-patron
UPDATE `creature_template` SET `MaxLootGold`='530' WHERE `entry`='9547'; -- Guzzling Patron (78MinG) (107MaxG) https://www.wowhead.com/tbc/npc=9547/guzzling-patron
UPDATE `creature_template` SET `MinLootGold`='377', `MaxLootGold`='924' WHERE `entry`='9554'; -- Hammered Patron (389MinG) (513MaxG) https://www.wowhead.com/tbc/npc=9554/hammered-patron
UPDATE `creature_template` SET `MinLootGold`='1124' WHERE `entry`='9568'; -- Overlord Wyrmthalak (1502MinG) (1966MaxG) https://www.wowhead.com/tbc/npc=9568/overlord-wyrmthalak
UPDATE `creature_template` SET `MinLootGold`='620', `MaxLootGold`='2692' WHERE `entry`='9583'; -- Bloodaxe Veteran (474MinG) (624MaxG) (sample size 24)
UPDATE `creature_template` SET `MaxLootGold`='2688' WHERE `entry`='9596'; -- Bannok Grimaxe (728MinG) (955MaxG) https://www.wowhead.com/tbc/npc=9596/bannok-grimaxe
UPDATE `creature_template` SET `MinLootGold`='61', `MaxLootGold`='305' WHERE `entry`='9601'; -- Treant Spirit (113MinG) (153MaxG) https://www.wowhead.com/tbc/npc=9601/treant-spirit
UPDATE `creature_template` SET `MinLootGold`='61', `MaxLootGold`='305' WHERE `entry`='9605'; -- Blackrock Raider (134MinG) (180MaxG) https://www.wowhead.com/tbc/npc=9605/blackrock-raider
UPDATE `creature_template` SET `MinLootGold`='55', `MaxLootGold`='276' WHERE `entry`='9621'; -- Gargantuan Ooze (101MinG) (137MaxG) https://www.wowhead.com/tbc/npc=9621/gargantuan-ooze
UPDATE `creature_template` SET `MaxLootGold`='1460' WHERE `entry`='9680'; -- Crest Killer (518MinG) (681MaxG) https://www.wowhead.com/tbc/npc=9680/crest-killer
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='9682'; -- Marshal Reginald Windsor (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=9682/marshal-reginald-windsor
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='9684'; -- Lar'korwi (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=9684/larkorwi
UPDATE `creature_template` SET `MaxLootGold`='1732' WHERE `entry`='9692'; -- Bloodaxe Raider (464MinG) (610MaxG) https://www.wowhead.com/tbc/npc=9692/bloodaxe-raider
UPDATE `creature_template` SET `MaxLootGold`='2640' WHERE `entry`='9693'; -- Bloodaxe Evoker (414MinG) (546MaxG) https://www.wowhead.com/tbc/npc=9693/bloodaxe-evoker
UPDATE `creature_template` SET `MaxLootGold`='2526' WHERE `entry`='9716'; -- Bloodaxe Warmonger (468MinG) (616MaxG) https://www.wowhead.com/tbc/npc=9716/bloodaxe-warmonger
UPDATE `creature_template` SET `MaxLootGold`='2104' WHERE `entry`='9717'; -- Bloodaxe Summoner (387MinG) (510MaxG) https://www.wowhead.com/tbc/npc=9717/bloodaxe-summoner
UPDATE `creature_template` SET `MinLootGold`='142', `MaxLootGold`='963' WHERE `entry`='9718'; -- Ghok Bashguud (734MinG) (963MaxG) https://www.wowhead.com/tbc/npc=9718/ghok-bashguud
UPDATE `creature_template` SET `MinLootGold`='737' WHERE `entry`='9736'; -- Quartermaster Zigris (1677MinG) (2195MaxG) https://www.wowhead.com/tbc/npc=9736/quartermaster-zigris
UPDATE `creature_template` SET `MaxLootGold`='376' WHERE `entry`='9776'; -- Flamekin Spitter (74MinG) (102MaxG) https://www.wowhead.com/tbc/npc=9776/flamekin-spitter
UPDATE `creature_template` SET `MaxLootGold`='567' WHERE `entry`='9777'; -- Flamekin Sprite (64MinG) (88MaxG) https://www.wowhead.com/tbc/npc=9777/flamekin-sprite
UPDATE `creature_template` SET `MaxLootGold`='2911' WHERE `entry`='9817'; -- Blackhand Dreadweaver (416MinG) (548MaxG) https://www.wowhead.com/tbc/npc=9817/blackhand-dreadweaver
UPDATE `creature_template` SET `MaxLootGold`='2937' WHERE `entry`='9818'; -- Blackhand Summoner (412MinG) (543MaxG) https://www.wowhead.com/tbc/npc=9818/blackhand-summoner
UPDATE `creature_template` SET `MaxLootGold`='3001' WHERE `entry`='9819'; -- Blackhand Veteran (480MinG) (631MaxG) https://www.wowhead.com/tbc/npc=9819/blackhand-veteran
UPDATE `creature_template` SET `MaxLootGold`='565' WHERE `entry`='9860'; -- Salia (115MinG) (155MaxG) https://www.wowhead.com/tbc/npc=9860/salia
UPDATE `creature_template` SET `MaxLootGold`='301' WHERE `entry`='9861'; -- Moora (92MinG) (125MaxG) https://www.wowhead.com/tbc/npc=9861/moora
UPDATE `creature_template` SET `MaxLootGold`='760' WHERE `entry`='9862'; -- Jaedenar Legionnaire (114MinG) (154MaxG) https://www.wowhead.com/tbc/npc=9862/jaedenar-legionnaire
UPDATE `creature_template` SET `MaxLootGold`='797' WHERE `entry`='9877'; -- Prince Xavalis (103MinG) (140MaxG) https://www.wowhead.com/tbc/npc=9877/prince-xavalis
UPDATE `creature_template` SET `MaxLootGold`='467' WHERE `entry`='9916'; -- Jarquia (87MinG) (119MaxG) https://www.wowhead.com/tbc/npc=9916/jarquia
UPDATE `creature_template` SET `MaxLootGold`='752' WHERE `entry`='9956'; -- Shadowforge Flame Keeper (68MinG) (94MaxG) https://www.wowhead.com/tbc/npc=9956/shadowforge-flame-keeper
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='10000'; -- Arugal (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=10000/arugal
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='10037'; -- Lakeshire Guard (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=10037/lakeshire-guard
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='10040'; -- Gorishi Hive Guard (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=10040/gorishi-hive-guard
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='10041'; -- Gorishi Hive Queen (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=10041/gorishi-hive-queen
UPDATE `creature_template` SET `MaxLootGold`='868' WHERE `entry`='10043'; -- Ribbly's Crony (389MinG) (513MaxG) https://www.wowhead.com/tbc/npc=10043/ribblys-crony
UPDATE `creature_template` SET `MinLootGold`='103', `MaxLootGold`='696' WHERE `entry`='10078'; -- Terrorspark (103MinG) (140MaxG) https://www.wowhead.com/tbc/npc=10078/terrorspark
UPDATE `creature_template` SET `MinLootGold`='93', `MaxLootGold`='1307' WHERE `entry`='10082'; -- Zerillis (469MinG) (617MaxG) https://www.wowhead.com/tbc/npc=10082/zerillis
UPDATE `creature_template` SET `MaxLootGold`='2600' WHERE `entry`='10083'; -- Rage Talon Flamescale (406MinG) (535MaxG) https://www.wowhead.com/tbc/npc=10083/rage-talon-flamescale
UPDATE `creature_template` SET `MinLootGold`='4', `MaxLootGold`='26' WHERE `entry`='10158'; -- Moonkin (13MinG) (22MaxG) https://www.wowhead.com/tbc/npc=10158/moonkin
UPDATE `creature_template` SET `MinLootGold`='9', `MaxLootGold`='24' WHERE `entry`='10160'; -- Raging Moonkin (14MinG) (23MaxG) https://www.wowhead.com/tbc/npc=10160/raging-moonkin
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='10162'; -- Lord Victor Nefarius (1360MinG) (1781MaxG) https://www.wowhead.com/tbc/npc=10162/lord-victor-nefarius
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='10179'; -- Riding MechaStrider (Black) (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=10179/riding-mechastrider-black
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='10180'; -- Riding MechaStrider (Steel) (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=10180/riding-mechastrider-steel
UPDATE `creature_template` SET `MinLootGold`='1300000', `MaxLootGold`='1820000' WHERE `entry`='10184'; -- Onyxia (937551MinG) (1273511MaxG) https://www.wowhead.com/tbc/npc=10184/onyxia - seemingly same ammount as Azuregos
UPDATE `creature_template` SET `MinLootGold`='193', `MaxLootGold`='985' WHERE `entry`='10316'; -- Blackhand Incarcerator (215MinG) (286MaxG) https://www.wowhead.com/tbc/npc=10316/blackhand-incarcerator
UPDATE `creature_template` SET `MinLootGold`='528', `MaxLootGold`='3166' WHERE `entry`='10317'; -- Blackhand Elite (779MinG) (1022MaxG) https://www.wowhead.com/tbc/npc=10317/blackhand-elite
UPDATE `creature_template` SET `MinLootGold`='766', `MaxLootGold`='2658' WHERE `entry`='10318'; -- Blackhand Assassin (779MinG) (1022MaxG) https://www.wowhead.com/tbc/npc=10318/blackhand-assassin
UPDATE `creature_template` SET `MaxLootGold`='2771' WHERE `entry`='10319'; -- Blackhand Iron Guard (609MinG) (800MaxG) https://www.wowhead.com/tbc/npc=10319/blackhand-iron-guard
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='10322'; -- Riding Tiger (White) (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=10322/riding-tiger-white
UPDATE `creature_template` SET `MinLootGold`='5', `MaxLootGold`='55' WHERE `entry`='10323'; -- Murkdeep (24MinG) (37MaxG) https://www.wowhead.com/tbc/npc=10323/murkdeep
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='10336'; -- Riding Tiger (Leopard) (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=10336/riding-tiger-leopard
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='10337'; -- Riding Tiger (Orange) (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=10337/riding-tiger-orange
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='10338'; -- Riding Tiger (Gold) (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=10338/riding-tiger-gold
UPDATE `creature_template` SET `MinLootGold`='5' WHERE `entry`='10358'; -- Fellicent's Shade (13MinG) (22MaxG) https://www.wowhead.com/tbc/npc=10358/fellicents-shade
UPDATE `creature_template` SET `MinLootGold`='1439' WHERE `entry`='10363'; -- General Drakkisath (1771MinG) (2164MaxG) https://www.wowhead.com/tbc/npc=10363/general-drakkisath
UPDATE `creature_template` SET `MaxLootGold`='2717' WHERE `entry`='10366'; -- Rage Talon Dragon Guard (907MinG) (1189MaxG) https://www.wowhead.com/tbc/npc=10366/rage-talon-dragon-guard
UPDATE `creature_template` SET `MaxLootGold`='2568' WHERE `entry`='10371'; -- Rage Talon Captain (910MinG) (1193MaxG) https://www.wowhead.com/tbc/npc=10371/rage-talon-captain
UPDATE `creature_template` SET `MinLootGold`='619', `MaxLootGold`='2979' WHERE `entry`='10372'; -- Rage Talon Fire Tongue (907MinG) (1189MaxG) https://www.wowhead.com/tbc/npc=10372/rage-talon-fire-tongue
UPDATE `creature_template` SET `MinLootGold`='10', `MaxLootGold`='52' WHERE `entry`='10373'; -- Xabraxxis (22MinG) (33MaxG) https://www.wowhead.com/tbc/npc=10373/xabraxxis
UPDATE `creature_template` SET `MinLootGold`='423', `MaxLootGold`='2614' WHERE `entry`='10381'; -- Ravaged Cadaver (449MinG) (592MaxG) (sample size 34)
UPDATE `creature_template` SET `MinLootGold`='411', `MaxLootGold`='2481' WHERE `entry`='10382'; -- Mangled Cadaver (435MinG) (573MaxG) (sample size 30)
UPDATE `creature_template` SET `MaxLootGold`='522' WHERE `entry`='10384'; -- Spectral Citizen (346MinG) (456MaxG) https://www.wowhead.com/tbc/npc=10384/spectral-citizen
UPDATE `creature_template` SET `MinLootGold`='122', `MaxLootGold`='821' WHERE `entry`='10390'; -- Skeletal Guardian (112MinG) (151MaxG) (sample size 85)
UPDATE `creature_template` SET `MinLootGold`='136', `MaxLootGold`='843' WHERE `entry`='10391'; -- Skeletal Berserker (108MinG) (146MaxG) (sample size 74)
UPDATE `creature_template` SET `MinLootGold`='346', `MaxLootGold`='2854' WHERE `entry`='10393'; -- Skul (974MinG) (1276MaxG) https://www.wowhead.com/tbc/npc=10393/skul
UPDATE `creature_template` SET `MinLootGold`='152', `MaxLootGold`='2416' WHERE `entry`='10394'; -- Black Guard Sentry (406MinG) (761MaxG) https://www.wowhead.com/tbc/npc=10394/black-guard-sentry
UPDATE `creature_template` SET `MaxLootGold`='2613' WHERE `entry`='10398'; -- Thuzadin Shadowcaster (380MinG) (502MaxG) https://www.wowhead.com/tbc/npc=10398/thuzadin-shadowcaster
UPDATE `creature_template` SET `MinLootGold`='472', `MaxLootGold`='3028' WHERE `entry`='10399'; -- Thuzadin Acolyte (113MinG) (153MaxG) (sample size 26)
UPDATE `creature_template` SET `MaxLootGold`='2812' WHERE `entry`='10400'; -- Thuzadin Necromancer (380MinG) (501MaxG) https://www.wowhead.com/tbc/npc=10400/thuzadin-necromancer
UPDATE `creature_template` SET `MinLootGold`='420', `MaxLootGold`='2677' WHERE `entry`='10405'; -- Plague Ghoul (468MinG) (616MaxG) (sample size 45)
UPDATE `creature_template` SET `MinLootGold`='547', `MaxLootGold`='2727' WHERE `entry`='10406'; -- Ghoul Ravener (474MinG) (624MaxG) (sample size 24)
UPDATE `creature_template` SET `MaxLootGold`='2930' WHERE `entry`='10407'; -- Fleshflayer Ghoul (493MinG) (648MaxG) https://www.wowhead.com/tbc/npc=10407/fleshflayer-ghoul
UPDATE `creature_template` SET `MinLootGold`='86', `MaxLootGold`='808' WHERE `entry`='10411'; -- Eye of Naxxramas (86MinG) (118MaxG) https://www.wowhead.com/tbc/npc=10411/eye-of-naxxramas
UPDATE `creature_template` SET `MaxLootGold`='2663' WHERE `entry`='10414'; -- Patchwork Horror (816MinG) (1071MaxG) https://www.wowhead.com/tbc/npc=10414/patchwork-horror
UPDATE `creature_template` SET `MinLootGold`='503', `MaxLootGold`='2070' WHERE `entry`='10416'; -- Bile Spewer (735MinG) (964MaxG) https://www.wowhead.com/tbc/npc=10416/bile-spewer
UPDATE `creature_template` SET `MinLootGold`='743', `MaxLootGold`='2721' WHERE `entry`='10417'; -- Venom Belcher (779MinG) (1022MaxG) https://www.wowhead.com/tbc/npc=10417/venom-belcher
UPDATE `creature_template` SET `MinLootGold`='393', `MaxLootGold`='2709' WHERE `entry`='10418'; -- Crimson Guardsman (464MinG) (610MaxG) (sample size 37)
UPDATE `creature_template` SET `MaxLootGold`='2525' WHERE `entry`='10419'; -- Crimson Conjuror (362MinG) (477MaxG) https://www.wowhead.com/tbc/npc=10419/crimson-conjuror
UPDATE `creature_template` SET `MinLootGold`='460', `MaxLootGold`='2637' WHERE `entry`='10420'; -- Crimson Initiate (396MinG) (522MaxG) (sample size 21)
UPDATE `creature_template` SET `MaxLootGold`='2844' WHERE `entry`='10421'; -- Crimson Defender (402MinG) (529MaxG) https://www.wowhead.com/tbc/npc=10421/crimson-defender
UPDATE `creature_template` SET `MaxLootGold`='2364' WHERE `entry`='10422'; -- Crimson Sorcerer (368MinG) (485MaxG) https://www.wowhead.com/tbc/npc=10422/crimson-sorcerer
UPDATE `creature_template` SET `MaxLootGold`='2296' WHERE `entry`='10423'; -- Crimson Priest (368MinG) (485MaxG) https://www.wowhead.com/tbc/npc=10423/crimson-priest
UPDATE `creature_template` SET `MinLootGold`='438', `MaxLootGold`='2897' WHERE `entry`='10424'; -- Crimson Gallant (416MinG) (548MaxG) (sample size 22)
UPDATE `creature_template` SET `MaxLootGold`='2054' WHERE `entry`='10425'; -- Crimson Battle Mage (382MinG) (504MaxG) https://www.wowhead.com/tbc/npc=10425/crimson-battle-mage
UPDATE `creature_template` SET `MaxLootGold`='2388' WHERE `entry`='10426'; -- Crimson Inquisitor (403MinG) (532MaxG) https://www.wowhead.com/tbc/npc=10426/crimson-inquisitor
UPDATE `creature_template` SET `MinLootGold`='2975', `MaxLootGold`='6929' WHERE `entry`='10429'; -- Warchief Rend Blackhand (2975MinG) (3890MaxG) https://youtu.be/VwhEXsEk3Ik?si=kZH5oEpGW5tSxAin&t=30 - vmangos corrupted
UPDATE `creature_template` SET `MaxLootGold`='2654' WHERE `entry`='10435'; -- Magistrate Barthilas (1286MinG) (1684MaxG) https://www.wowhead.com/tbc/npc=10435/magistrate-barthilas
UPDATE `creature_template` SET `MaxLootGold`='2697' WHERE `entry`='10438'; -- Maleki the Pallid (1036MinG) (1357MaxG) https://www.wowhead.com/tbc/npc=10438/maleki-the-pallid
UPDATE `creature_template` SET `MinLootGold`='1291', `MaxLootGold`='1757' WHERE `entry`='10439'; -- Ramstein the Gorger (1291MinG) (1690MaxG) https://www.wowhead.com/tbc/npc=10439/ramstein-the-gorger
UPDATE `creature_template` SET `MinLootGold`='159', `MaxLootGold`='896' WHERE `entry`='10442'; -- Chromatic Whelp (120MinG) (161MaxG) (sample size 21)
UPDATE `creature_template` SET `MinLootGold`='663', `MaxLootGold`='2288' WHERE `entry`='10447'; -- Chromatic Dragonspawn (735MinG) (964MaxG) https://www.wowhead.com/tbc/npc=10447/chromatic-dragonspawn
UPDATE `creature_template` SET `MaxLootGold`='2746' WHERE `entry`='10463'; -- Shrieking Banshee (464MinG) (610MaxG) https://www.wowhead.com/tbc/npc=10463/shrieking-banshee
UPDATE `creature_template` SET `MaxLootGold`='2869' WHERE `entry`='10464'; -- Wailing Banshee (478MinG) (629MaxG) https://www.wowhead.com/tbc/npc=10464/wailing-banshee
UPDATE `creature_template` SET `MinLootGold`='516', `MaxLootGold`='2862' WHERE `entry`='10469'; -- Scholomance Adept (402MinG) (529MaxG) (sample size 45)
UPDATE `creature_template` SET `MaxLootGold`='2748' WHERE `entry`='10470'; -- Scholomance Neophyte (357MinG) (472MaxG) https://www.wowhead.com/tbc/npc=10470/scholomance-neophyte
UPDATE `creature_template` SET `MaxLootGold`='2587' WHERE `entry`='10471'; -- Scholomance Acolyte (387MinG) (510MaxG) https://www.wowhead.com/tbc/npc=10471/scholomance-acolyte
UPDATE `creature_template` SET `MinLootGold`='511', `MaxLootGold`='2747' WHERE `entry`='10476'; -- Scholomance Necrolyte (391MinG) (516MaxG) (sample size 22)
UPDATE `creature_template` SET `MinLootGold`='465', `MaxLootGold`='2834' WHERE `entry`='10477'; -- Scholomance Necromancer (406MinG) (535MaxG) (sample size 36)
UPDATE `creature_template` SET `MaxLootGold`='2653' WHERE `entry`='10478'; -- Splintered Skeleton (488MinG) (643MaxG) https://www.wowhead.com/tbc/npc=10478/splintered-skeleton
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='10479'; -- Skulking Corpse (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=10479/skulking-corpse
UPDATE `creature_template` SET `MinLootGold`='141', `MaxLootGold`='940' WHERE `entry`='10480'; -- Unstable Corpse (133MinG) (179MaxG) (sample size 48)
UPDATE `creature_template` SET `MinLootGold`='145', `MaxLootGold`='954' WHERE `entry`='10481'; -- Reanimated Corpse (89MinG) (121MaxG) (sample size 23)
UPDATE `creature_template` SET `MinLootGold`='132', `MaxLootGold`='916' WHERE `entry`='10485'; -- Risen Aberration (101MinG) (136MaxG) (sample size 34)
UPDATE `creature_template` SET `MinLootGold`='477', `MaxLootGold`='2890' WHERE `entry`='10486'; -- Risen Warrior (777MinG) (1020MaxG) https://www.wowhead.com/tbc/npc=10486/risen-warrior
UPDATE `creature_template` SET `MaxLootGold`='2637' WHERE `entry`='10487'; -- Risen Protector (410MinG) (540MaxG) https://www.wowhead.com/tbc/npc=10487/risen-protector
UPDATE `creature_template` SET `MinLootGold`='664', `MaxLootGold`='2707' WHERE `entry`='10488'; -- Risen Construct (776MinG) (1018MaxG) https://www.wowhead.com/tbc/npc=10488/risen-construct
UPDATE `creature_template` SET `MinLootGold`='412', `MaxLootGold`='2500' WHERE `entry`='10489'; -- Risen Guard (472MinG) (621MaxG) (sample size 25)
UPDATE `creature_template` SET `MaxLootGold`='2194' WHERE `entry`='10491'; -- Risen Bonewarder (406MinG) (535MaxG) https://www.wowhead.com/tbc/npc=10491/risen-bonewarder
UPDATE `creature_template` SET `MinLootGold`='535', `MaxLootGold`='2844' WHERE `entry`='10495'; -- Diseased Ghoul (470MinG) (618MaxG) (sample size 25)
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='10497'; -- Ragged Ghoul (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=10497/ragged-ghoul
UPDATE `creature_template` SET `MaxLootGold`='2832' WHERE `entry`='10498'; -- Spectral Tutor (414MinG) (546MaxG) https://www.wowhead.com/tbc/npc=10498/spectral-tutor
UPDATE `creature_template` SET `MaxLootGold`='2285' WHERE `entry`='10499'; -- Spectral Researcher (410MinG) (540MaxG) https://www.wowhead.com/tbc/npc=10499/spectral-researcher
UPDATE `creature_template` SET `MaxLootGold`='2640' WHERE `entry`='10500'; -- Spectral Teacher (427MinG) (563MaxG) https://www.wowhead.com/tbc/npc=10500/spectral-teacher
UPDATE `creature_template` SET `MaxLootGold`='3038' WHERE `entry`='10502'; -- Lady Illucia Barov (1247MinG) (1633MaxG) https://www.wowhead.com/tbc/npc=10502/lady-illucia-barov
UPDATE `creature_template` SET `MaxLootGold`='2572' WHERE `entry`='10504'; -- Lord Alexei Barov (1247MinG) (1633MaxG) https://www.wowhead.com/tbc/npc=10504/lord-alexei-barov
UPDATE `creature_template` SET `MaxLootGold`='2122' WHERE `entry`='10505'; -- Instructor Malicia (1544MinG) (2021MaxG) https://www.wowhead.com/tbc/npc=10505/instructor-malicia
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='10506'; -- Kirtonos the Herald (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=10506/kirtonos-the-herald
UPDATE `creature_template` SET `MinLootGold`='470' WHERE `entry`='10507'; -- The Ravenian (1629MinG) (2132MaxG) https://www.wowhead.com/tbc/npc=10507/the-ravenian
UPDATE `creature_template` SET `MaxLootGold`='3291' WHERE `entry`='10508'; -- Ras Frostwhisper (1505MinG) (1970MaxG) https://www.wowhead.com/tbc/npc=10508/ras-frostwhisper
UPDATE `creature_template` SET `MaxLootGold`='2708' WHERE `entry`='10558'; -- Hearthsinger Forresten (589MinG) (774MaxG) https://www.wowhead.com/tbc/npc=10558/hearthsinger-forresten
UPDATE `creature_template` SET `MaxLootGold`='727' WHERE `entry`='10580'; -- Fetid Zombie (122MinG) (164MaxG) https://www.wowhead.com/tbc/npc=10580/fetid-zombie
UPDATE `creature_template` SET `MaxLootGold`='714' WHERE `entry`='10605'; -- Scarlet Medic (99MinG) (134MaxG) https://www.wowhead.com/tbc/npc=10605/scarlet-medic
UPDATE `creature_template` SET `MinLootGold`='35', `MaxLootGold`='97' WHERE `entry`='10617'; -- Galak Messenger (37MinG) (53MaxG) https://www.wowhead.com/tbc/npc=10617/galak-messenger
UPDATE `creature_template` SET `MaxLootGold`='135' WHERE `entry`='10640'; -- Oakpaw (39MinG) (55MaxG) https://www.wowhead.com/tbc/npc=10640/oakpaw
UPDATE `creature_template` SET `MaxLootGold`='88' WHERE `entry`='10641'; -- Branch Snapper (34MinG) (49MaxG) https://www.wowhead.com/tbc/npc=10641/branch-snapper
UPDATE `creature_template` SET `MaxLootGold`='156' WHERE `entry`='10647'; -- Prince Raze (52MinG) (73MaxG) https://www.wowhead.com/tbc/npc=10647/prince-raze
UPDATE `creature_template` SET `MaxLootGold`='712' WHERE `entry`='10648'; -- Xavaric (103MinG) (140MaxG) https://www.wowhead.com/tbc/npc=10648/xavaric
UPDATE `creature_template` SET `MinLootGold`='133', `MaxLootGold`='916' WHERE `entry`='10678'; -- Plagued Hatchling (130MinG) (175MaxG) (sample size 43)
UPDATE `creature_template` SET `MaxLootGold`='1363' WHERE `entry`='10680'; -- Summoned Blackhand Dreadweaver (412MinG) (543MaxG) https://www.wowhead.com/tbc/npc=10680/summoned-blackhand-dreadweaver
UPDATE `creature_template` SET `MaxLootGold`='903' WHERE `entry`='10683'; -- Rookery Hatcher (152MinG) (761MaxG) https://www.wowhead.com/tbc/npc=10683/rookery-hatcher
UPDATE `creature_template` SET `MaxLootGold`='1506' WHERE `entry`='10742'; -- Blackhand Dragon Handler (493MinG) (648MaxG) https://www.wowhead.com/tbc/npc=10742/blackhand-dragon-handler
UPDATE `creature_template` SET `MinLootGold`='18', `MaxLootGold`='123' WHERE `entry`='10758'; -- Grimtotem Bandit (35MinG) (51MaxG) (sample size 35)
UPDATE `creature_template` SET `MinLootGold`='27', `MaxLootGold`='132' WHERE `entry`='10759'; -- Grimtotem Stomper (34MinG) (50MaxG) (sample size 31)
UPDATE `creature_template` SET `MinLootGold`='17', `MaxLootGold`='121' WHERE `entry`='10760'; -- Grimtotem Geomancer (32MinG) (47MaxG) (sample size 45)
UPDATE `creature_template` SET `MaxLootGold`='154' WHERE `entry`='10761'; -- Grimtotem Reaver (41MinG) (59MaxG) https://www.wowhead.com/tbc/npc=10761/grimtotem-reaver
UPDATE `creature_template` SET `MaxLootGold`='652' WHERE `entry`='10801'; -- Jabbering Ghoul (113MinG) (153MaxG) https://www.wowhead.com/tbc/npc=10801/jabbering-ghoul
UPDATE `creature_template` SET `MinLootGold`='142', `MaxLootGold`='2828' WHERE `entry`='10808'; -- Timmy the Cruel (1611MinG) (2109MaxG) https://www.wowhead.com/tbc/npc=10808/timmy-the-cruel
UPDATE `creature_template` SET `MaxLootGold`='2609' WHERE `entry`='10811'; -- Archivist Galford (907MinG) (1189MaxG) https://www.wowhead.com/tbc/npc=10811/archivist-galford
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='10812'; -- Grand Crusader Dathrohan (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=10812/grand-crusader-dathrohan
UPDATE `creature_template` SET `MinLootGold`='461', `MaxLootGold`='3148' WHERE `entry`='10813'; -- Balnazzar (1462MinG) (2307MaxG) https://www.wowhead.com/tbc/npc=10813/balnazzar
UPDATE `creature_template` SET `MaxLootGold`='2830' WHERE `entry`='10814'; -- Chromatic Elite Guard (1117MinG) (1464MaxG) https://www.wowhead.com/tbc/npc=10814/chromatic-elite-guard
UPDATE `creature_template` SET `MaxLootGold`='773' WHERE `entry`='10816'; -- Wandering Skeleton (118MinG) (159MaxG) https://www.wowhead.com/tbc/npc=10816/wandering-skeleton
UPDATE `creature_template` SET `MinLootGold`='683', `MaxLootGold`='2141' WHERE `entry`='10828'; -- High General Abbendis (683MinG) (897MaxG) https://www.wowhead.com/tbc/npc=10828/high-general-abbendis
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='10836'; -- Farmer Dalson (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=10836/farmer-dalson
UPDATE `creature_template` SET `MaxLootGold`='159' WHERE `entry`='10896'; -- Arnak Grimtotem (43MinG) (61MaxG) https://www.wowhead.com/tbc/npc=10896/arnak-grimtotem
UPDATE `creature_template` SET `MaxLootGold`='1862' WHERE `entry`='10901'; -- Lorekeeper Polkelt (1247MinG) (1633MaxG) https://www.wowhead.com/tbc/npc=10901/lorekeeper-polkelt
UPDATE `creature_template` SET `MaxLootGold`='896' WHERE `entry`='10916'; -- Winterfall Runner (126MinG) (170MaxG) https://www.wowhead.com/tbc/npc=10916/winterfall-runner
UPDATE `creature_template` SET `MinLootGold`='1544', `MaxLootGold`='2021' WHERE `entry`='10946'; -- Horgus the Ravager (1544MinG) (2021MaxG) https://www.wowhead.com/tbc/npc=10946/horgus-the-ravager
UPDATE `creature_template` SET `MinLootGold`='152', `MaxLootGold`='761' WHERE `entry`='10996'; -- Fallen Hero (487MinG) (640MaxG) https://www.wowhead.com/tbc/npc=10996/fallen-hero
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='11021'; -- Riding Tiger (Winterspring) (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=11021/riding-tiger-winterspring
UPDATE `creature_template` SET `MaxLootGold`='2726' WHERE `entry`='11032'; -- Malor the Zealous (822MinG) (1078MaxG) https://www.wowhead.com/tbc/npc=11032/malor-the-zealous
UPDATE `creature_template` SET `MinLootGold`='486', `MaxLootGold`='2365' WHERE `entry`='11043'; -- Crimson Monk (491MinG) (646MaxG) https://www.wowhead.com/tbc/npc=11043/crimson-monk
UPDATE `creature_template` SET `MinLootGold`='173', `MaxLootGold`='1981' WHERE `entry`='11058'; -- Fras Siabi (1291MinG) (1690MaxG) https://www.wowhead.com/tbc/npc=11058/ezra-grimm
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='11075'; -- Cauldron Lord Bilemaw (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=11075/cauldron-lord-bilemaw
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='11076'; -- Cauldron Lord Razarch (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=11076/cauldron-lord-razarch
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='11077'; -- Cauldron Lord Malvinious (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=11077/cauldron-lord-malvinious
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='11078'; -- Cauldron Lord Soulwrath (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=11078/cauldron-lord-soulwrath
UPDATE `creature_template` SET `MinLootGold`='168', `MaxLootGold`='967' WHERE `entry`='11120'; -- Crimson Hammersmith (737MinG) (967MaxG) https://www.wowhead.com/tbc/npc=11120/crimson-hammersmith
UPDATE `creature_template` SET `MinLootGold`='187', `MaxLootGold`='935' WHERE `entry`='11121'; -- Black Guard Swordsmith (526MinG) (691MaxG) https://www.wowhead.com/tbc/npc=11121/black-guard-swordsmith
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='11122'; -- Restless Soul (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=11122/restless-soul
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='11142'; -- Undead Postman (408MinG) (538MaxG) https://www.wowhead.com/tbc/npc=11142/undead-postman
UPDATE `creature_template` SET `MinLootGold`='435' WHERE `entry`='11143'; -- Postmaster Malown (779MinG) (2176MaxG) https://www.wowhead.com/tbc/npc=11143/postmaster-malown
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='11147'; -- Riding MechaStrider (Green/Gray) (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=11147/riding-mechastrider-green-gray
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='11150'; -- Riding MechaStrider (Icy Blue) (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=11150/riding-mechastrider-icy-blue
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='11153'; -- Riding Skeletal Horse (Red) (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=11153/riding-skeletal-horse-red
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='11154'; -- Riding Skeletal Horse (Blue) (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=11154/riding-skeletal-horse-blue
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='11155'; -- Riding Skeletal Horse (Brown) (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=11155/riding-skeletal-horse-brown
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='11180'; -- Bloodvenom Post Brave (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=11180/bloodvenom-post-brave
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='11190'; -- Everlook Bruiser (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=11190/everlook-bruiser
UPDATE `creature_template` SET `MaxLootGold`='2895' WHERE `entry`='11257'; -- Scholomance Handler (420MinG) (554MaxG) https://www.wowhead.com/tbc/npc=11257/scholomance-handler
UPDATE `creature_template` SET `MaxLootGold`='2253' WHERE `entry`='11261'; -- Doctor Theolen Krastinov (1374MinG) (1799MaxG) https://www.wowhead.com/tbc/npc=11261/doctor-theolen-krastinov
UPDATE `creature_template` SET `MinLootGold`='162', `MaxLootGold`='2857' WHERE `entry`='10472'; -- Scholomance Occultist (423MinG) (557MaxG) https://www.wowhead.com/tbc/npc=10472/scholomance-occultist
UPDATE `creature_template` SET `MinLootGold`='162', `MaxLootGold`='2857' WHERE `entry`='11284'; -- Dark Shade (478MinG) (629MaxG) - should just be the model https://www.wowhead.com/tbc/npc=11284/dark-shade
UPDATE `creature_template` SET `MinLootGold`='110', `MaxLootGold`='741' WHERE `entry`='11290'; -- Mossflayer Zombie (112MinG) (151MaxG) https://www.wowhead.com/tbc/npc=11290/mossflayer-zombie
UPDATE `creature_template` SET `MaxLootGold`='531' WHERE `entry`='11291'; -- Unliving Mossflayer (117MinG) (158MaxG) https://www.wowhead.com/tbc/npc=11291/unliving-mossflayer
UPDATE `creature_template` SET `MinLootGold`='19', `MaxLootGold`='85' WHERE `entry`='11318'; -- Ragefire Trogg (60MinG) (84MaxG) (sample size 24)
UPDATE `creature_template` SET `MinLootGold`='18', `MaxLootGold`='82' WHERE `entry`='11319'; -- Ragefire Shaman (59MinG) (81MaxG) https://www.wowhead.com/tbc/npc=11319/ragefire-shaman
UPDATE `creature_template` SET `MinLootGold`='12', `MaxLootGold`='87' WHERE `entry`='11322'; -- Searing Blade Cultist (59MinG) (81MaxG) (sample size 35)
UPDATE `creature_template` SET `MinLootGold`='13', `MaxLootGold`='87' WHERE `entry`='11323'; -- Searing Blade Enforcer (62MinG) (86MaxG) (sample size 26)
UPDATE `creature_template` SET `MinLootGold`='30', `MaxLootGold`='84' WHERE `entry`='11324'; -- Searing Blade Warlock (57MinG) (80MaxG) https://www.wowhead.com/tbc/npc=11324/searing-blade-warlock
UPDATE `creature_template` SET `MaxLootGold`='2162' WHERE `entry`='11338'; -- Hakkari Shadowcaster (1155MinG) (1513MaxG) https://www.wowhead.com/tbc/npc=11338/hakkari-shadowcaster
UPDATE `creature_template` SET `MinLootGold`='542', `MaxLootGold`='2246' WHERE `entry`='11339'; -- Hakkari Shadow Hunter (1163MinG) (1524MaxG) https://www.wowhead.com/tbc/npc=11339/hakkari-shadow-hunter
UPDATE `creature_template` SET `MaxLootGold`='1290' WHERE `entry`='11340'; -- Hakkari Blood Priest (738MinG) (969MaxG) https://www.wowhead.com/tbc/npc=11340/hakkari-blood-priest
UPDATE `creature_template` SET `MinLootGold`='753', `MaxLootGold`='3174' WHERE `entry`='11350'; -- Gurubashi Axe Thrower (992MinG) (1300MaxG) https://www.wowhead.com/tbc/npc=11350/gurubashi-axe-thrower
UPDATE `creature_template` SET `MinLootGold`='574', `MaxLootGold`='2247' WHERE `entry`='11351'; -- Gurubashi Headhunter (992MinG) (1300MaxG) https://www.wowhead.com/tbc/npc=11351/gurubashi-headhunter
UPDATE `creature_template` SET `MaxLootGold`='3429' WHERE `entry`='11352'; -- Gurubashi Berserker (2142MinG) (2803MaxG) https://www.wowhead.com/tbc/npc=11352/gurubashi-berserker
UPDATE `creature_template` SET `MinLootGold`='476', `MaxLootGold`='3084' WHERE `entry`='11353'; -- Gurubashi Blood Drinker (907MinG) (1189MaxG) https://www.wowhead.com/tbc/npc=11353/gurubashi-blood-drinker
UPDATE `creature_template` SET `MinLootGold`='693', `MaxLootGold`='3265' WHERE `entry`='11356'; -- Gurubashi Champion (1418MinG) (1857MaxG) https://www.wowhead.com/tbc/npc=11356/gurubashi-champion
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='11374'; -- Hooktooth Frenzy (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=11374/hooktooth-frenzy
UPDATE `creature_template` SET `MaxLootGold`='410164' WHERE `entry`='11382'; -- Bloodlord Mandokir (331374MinG) (405013MaxG) https://www.wowhead.com/tbc/npc=11382/bloodlord-mandokir
UPDATE `creature_template` SET `MaxLootGold`='2155' WHERE `entry`='11387'; -- Sandfury Speaker (127MinG) (171MaxG) https://www.wowhead.com/tbc/npc=11387/sandfury-speaker
UPDATE `creature_template` SET `MaxLootGold`='2571' WHERE `entry`='11391'; -- Vilebranch Speaker (136MinG) (182MaxG) https://www.wowhead.com/tbc/npc=11391/vilebranch-speaker
UPDATE `creature_template` SET `MaxLootGold`='2711' WHERE `entry`='11441'; -- Gordok Brute (689MinG) (905MaxG) https://www.wowhead.com/tbc/npc=11441/gordok-brute
UPDATE `creature_template` SET `MaxLootGold`='511' WHERE `entry`='11443'; -- Gordok Ogre-Mage (340MinG) (449MaxG) https://www.wowhead.com/tbc/npc=11443/gordok-ogre-mage
UPDATE `creature_template` SET `MaxLootGold`='1812' WHERE `entry`='11444'; -- Gordok Mage-Lord (519MinG) (683MaxG) https://www.wowhead.com/tbc/npc=11444/gordok-mage-lord
UPDATE `creature_template` SET `MaxLootGold`='2093' WHERE `entry`='11445'; -- Gordok Captain (777MinG) (1020MaxG) https://www.wowhead.com/tbc/npc=11445/gordok-captain
UPDATE `creature_template` SET `MinLootGold`='168', `MaxLootGold`='5196' WHERE `entry`='11447'; -- Mushgog (3975MinG) (5196MaxG) https://www.wowhead.com/tbc/npc=11447/mushgog
UPDATE `creature_template` SET `MinLootGold`='481', `MaxLootGold`='2236' WHERE `entry`='11448'; -- Gordok Warlock (565MinG) (742MaxG) (sample size 4)
UPDATE `creature_template` SET `MaxLootGold`='2232' WHERE `entry`='11450'; -- Gordok Reaver (776MinG) (1018MaxG) https://www.wowhead.com/tbc/npc=11450/gordok-reaver
UPDATE `creature_template` SET `MaxLootGold`='723' WHERE `entry`='11451'; -- Wildspawn Satyr (439MinG) (578MaxG) https://www.wowhead.com/tbc/npc=11451/wildspawn-satyr
UPDATE `creature_template` SET `MaxLootGold`='625' WHERE `entry`='11452'; -- Wildspawn Rogue (453MinG) (597MaxG) https://www.wowhead.com/tbc/npc=11452/wildspawn-rogue
UPDATE `creature_template` SET `MaxLootGold`='2439' WHERE `entry`='11453'; -- Wildspawn Trickster (373MinG) (492MaxG) https://www.wowhead.com/tbc/npc=11453/wildspawn-trickster
UPDATE `creature_template` SET `MaxLootGold`='1067' WHERE `entry`='11454'; -- Wildspawn Betrayer (443MinG) (584MaxG) https://www.wowhead.com/tbc/npc=11454/wildspawn-betrayer
UPDATE `creature_template` SET `MaxLootGold`='1966' WHERE `entry`='11455'; -- Wildspawn Felsworn (341MinG) (451MaxG) https://www.wowhead.com/tbc/npc=11455/wildspawn-felsworn
UPDATE `creature_template` SET `MaxLootGold`='1787' WHERE `entry`='11456'; -- Wildspawn Shadowstalker (441MinG) (580MaxG) https://www.wowhead.com/tbc/npc=11456/wildspawn-shadowstalker
UPDATE `creature_template` SET `MaxLootGold`='1128' WHERE `entry`='11457'; -- Wildspawn Hellcaller (381MinG) (503MaxG) https://www.wowhead.com/tbc/npc=11457/wildspawn-hellcaller
UPDATE `creature_template` SET `MaxLootGold`='1918' WHERE `entry`='11459'; -- Ironbark Protector (859MinG) (1127MaxG) https://www.wowhead.com/tbc/npc=11459/ironbark-protector
UPDATE `creature_template` SET `MaxLootGold`='1306' WHERE `entry`='11461'; -- Warpwood Guardian (396MinG) (522MaxG) https://www.wowhead.com/tbc/npc=11461/warpwood-guardian
UPDATE `creature_template` SET `MaxLootGold`='2236' WHERE `entry`='11462'; -- Warpwood Treant (425MinG) (559MaxG) https://www.wowhead.com/tbc/npc=11462/warpwood-treant
UPDATE `creature_template` SET `MaxLootGold`='1996' WHERE `entry`='11464'; -- Warpwood Tangler (367MinG) (484MaxG) https://www.wowhead.com/tbc/npc=11464/warpwood-tangler
UPDATE `creature_template` SET `MaxLootGold`='1842' WHERE `entry`='11470'; -- Eldreth Sorcerer (402MinG) (529MaxG) https://www.wowhead.com/tbc/npc=11470/eldreth-sorcerer
UPDATE `creature_template` SET `MaxLootGold`='2405' WHERE `entry`='11471'; -- Eldreth Apparition (396MinG) (522MaxG) https://www.wowhead.com/tbc/npc=11471/eldreth-apparition
UPDATE `creature_template` SET `MaxLootGold`='2684' WHERE `entry`='11472'; -- Eldreth Spirit (464MinG) (610MaxG) https://www.wowhead.com/tbc/npc=11472/eldreth-spirit
UPDATE `creature_template` SET `MaxLootGold`='2858' WHERE `entry`='11473'; -- Eldreth Spectre (402MinG) (529MaxG) https://www.wowhead.com/tbc/npc=11473/eldreth-spectre
UPDATE `creature_template` SET `MaxLootGold`='2299' WHERE `entry`='11475'; -- Eldreth Phantasm (478MinG) (629MaxG) https://www.wowhead.com/tbc/npc=11475/eldreth-phantasm
UPDATE `creature_template` SET `MaxLootGold`='780' WHERE `entry`='11476'; -- Skeletal Highborne (128MinG) (172MaxG) https://www.wowhead.com/tbc/npc=11476/skeletal-highborne
UPDATE `creature_template` SET `MaxLootGold`='416' WHERE `entry`='11477'; -- Rotting Highborne (131MinG) (176MaxG) https://www.wowhead.com/tbc/npc=11477/rotting-highborne
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='11484'; -- Residual Monstrosity (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=11484/residual-monstrosity
UPDATE `creature_template` SET `MaxLootGold`='3263' WHERE `entry`='11486'; -- Prince Tortheldrin (1418MinG) (1857MaxG) https://www.wowhead.com/tbc/npc=11486/prince-tortheldrin
UPDATE `creature_template` SET `MaxLootGold`='2111' WHERE `entry`='11487'; -- Magister Kalendris (992MinG) (1300MaxG) https://www.wowhead.com/tbc/npc=11487/magister-kalendris
UPDATE `creature_template` SET `MaxLootGold`='1222' WHERE `entry`='11488'; -- Illyanna Ravenoak (822MinG) (1078MaxG) https://www.wowhead.com/tbc/npc=11488/illyanna-ravenoak
UPDATE `creature_template` SET `MinLootGold`='731' WHERE `entry`='11489'; -- Tendris Warpwood (1502MinG) (1966MaxG) https://www.wowhead.com/tbc/npc=11489/tendris-warpwood
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='11497'; -- The Razza (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=11497/the-razza
UPDATE `creature_template` SET `MinLootGold`='168', `MaxLootGold`='4939' WHERE `entry`='11498'; -- Skarr the Unbreakable (3779MinG) (4939MaxG) https://www.wowhead.com/tbc/npc=11498/skarr-the-unbreakable
UPDATE `creature_template` SET `MaxLootGold`='0' WHERE `entry`='0'; -- [UNUSED] Majordomo Bagrosh (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=11500/unused-majordomo-bagrosh
UPDATE `creature_template` SET `MinLootGold`='1302365', `MaxLootGold`='1625593' WHERE `entry`='11502'; -- Ragnaros (1330030MinG) (1625593MaxG) https://www.wowhead.com/tbc/npc=11502/ragnaros
UPDATE `creature_template` SET `MinLootGold`='21' WHERE `entry`='11518'; -- Jergosh the Invoker (88MinG) (120MaxG) https://www.wowhead.com/tbc/npc=11518/jergosh-the-invoker
UPDATE `creature_template` SET `MinLootGold`='33' WHERE `entry`='11519'; -- Bazzalan (92MinG) (125MaxG) https://www.wowhead.com/tbc/npc=11519/bazzalan
UPDATE `creature_template` SET `MinLootGold`='50' WHERE `entry`='11520'; -- Taragaman the Hungerer (109MinG) (148MaxG) https://www.wowhead.com/tbc/npc=11520/taragaman-the-hungerer
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='11521'; -- Kodo Apparition (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=11521/kodo-apparition
UPDATE `creature_template` SET `MinLootGold`='61', `MaxLootGold`='305' WHERE `entry`='11552'; -- Timbermaw Mystic (111MinG) (150MaxG) https://www.wowhead.com/tbc/npc=11552/timbermaw-mystic
UPDATE `creature_template` SET `MaxLootGold`='294' WHERE `entry`='11559'; -- Outcast Necromancer (56MinG) (78MaxG) https://www.wowhead.com/tbc/npc=11559/outcast-necromancer
UPDATE `creature_template` SET `MinLootGold`='69', `MaxLootGold`='292' WHERE `entry`='11561'; -- Undead Ravager (62MinG) (86MaxG) (sample size 41)
UPDATE `creature_template` SET `MinLootGold`='41', `MaxLootGold`='205' WHERE `entry`='11562'; -- Drysnap Crawler (46MinG) (65MaxG) (sample size 23)
UPDATE `creature_template` SET `MinLootGold`='40', `MaxLootGold`='239' WHERE `entry`='11563'; -- Drysnap Pincer (51MinG) (72MaxG) https://www.wowhead.com/tbc/npc=11563/drysnap-pincer
UPDATE `creature_template` SET `MaxLootGold`='2710' WHERE `entry`='11582'; -- Scholomance Dark Summoner (406MinG) (535MaxG) https://www.wowhead.com/tbc/npc=11582/scholomance-dark-summoner
UPDATE `creature_template` SET `MinLootGold`='2247690', `MaxLootGold`='2828570' WHERE `entry`='11583'; -- Nefarian (2314285MinG) (2828570MaxG) https://www.wowhead.com/tbc/npc=11583/nefarian
UPDATE `creature_template` SET `MaxLootGold`='866' WHERE `entry`='11598'; -- Risen Guardian (65MinG) (326MaxG) https://www.wowhead.com/tbc/npc=11598/risen-guardian
UPDATE `creature_template` SET `MaxLootGold`='615' WHERE `entry`='11611'; -- Cavalier Durgen (111MinG) (150MaxG) https://www.wowhead.com/tbc/npc=11611/cavalier-durgen
UPDATE `creature_template` SET `MaxLootGold`='788' WHERE `entry`='11613'; -- Huntsman Radley (123MinG) (166MaxG) https://www.wowhead.com/tbc/npc=11613/huntsman-radley
UPDATE `creature_template` SET `MinLootGold`='1861' WHERE `entry`='11661'; -- Flamewaker (3417MinG) (4468MaxG) https://www.wowhead.com/tbc/npc=11661/flamewaker
UPDATE `creature_template` SET `MinLootGold`='1989', `MaxLootGold`='3242' WHERE `entry`='11662'; -- Flamewaker Priest (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=11662/flamewaker-priest
UPDATE `creature_template` SET `MinLootGold`='1007', `MaxLootGold`='5037' WHERE `entry`='11663'; -- Flamewaker Healer (4222MinG) (5518MaxG) https://www.wowhead.com/tbc/npc=11663/flamewaker-healer
UPDATE `creature_template` SET `MinLootGold`='300', `MaxLootGold`='6244' WHERE `entry`='11664'; -- Flamewaker Elite (4777MinG) (6244MaxG) https://www.wowhead.com/tbc/npc=11664/flamewaker-elite
UPDATE `creature_template` SET `MaxLootGold`='128' WHERE `entry`='11680'; -- Horde Scout (36MinG) (52MaxG) https://www.wowhead.com/tbc/npc=11680/horde-scout
UPDATE `creature_template` SET `MaxLootGold`='141' WHERE `entry`='11685'; -- Maraudine Priest (57MinG) (79MaxG) https://www.wowhead.com/tbc/npc=11685/maraudine-priest
UPDATE `creature_template` SET `MaxLootGold`='354' WHERE `entry`='11686'; -- Ghostly Raider (71MinG) (98MaxG) https://www.wowhead.com/tbc/npc=11686/ghostly-raider
UPDATE `creature_template` SET `MaxLootGold`='256' WHERE `entry`='11687'; -- Ghostly Marauder (70MinG) (96MaxG) https://www.wowhead.com/tbc/npc=11687/ghostly-marauder
UPDATE `creature_template` SET `MinLootGold`='78', `MaxLootGold`='486' WHERE `entry`='11688'; -- Cursed Centaur (78MinG) (107MaxG) https://www.wowhead.com/tbc/npc=11688/cursed-centaur
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='11689'; -- Riding Kodo (Brown) (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=11689/riding-kodo-brown
UPDATE `creature_template` SET `MinLootGold`='24', `MaxLootGold`='117' WHERE `entry`='11697'; -- Mannoroc Lasher (40MinG) (58MaxG) https://www.wowhead.com/tbc/npc=11697/mannoroc-lasher
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='11699'; -- Varian Wrynn (1MinG) (754MaxG) https://www.wowhead.com/tbc/npc=11699/varian-wrynn
UPDATE `creature_template` SET `MinLootGold`='5', `MaxLootGold`='58' WHERE `entry`='11714'; -- Marosh the Devious (18MinG) (28MaxG) https://www.wowhead.com/tbc/npc=11714/marosh-the-devious
UPDATE `creature_template` SET `MaxLootGold`='856' WHERE `entry`='11790'; -- Putridus Satyr (300MinG) (396MaxG) https://www.wowhead.com/tbc/npc=11790/putridus-satyr
UPDATE `creature_template` SET `MinLootGold`='199', `MaxLootGold`='1008' WHERE `entry`='11791'; -- Putridus Trickster (310MinG) (409MaxG) https://www.wowhead.com/tbc/npc=11791/putridus-trickster
UPDATE `creature_template` SET `MaxLootGold`='856' WHERE `entry`='11792'; -- Putridus Shadowstalker (298MinG) (394MaxG) https://www.wowhead.com/tbc/npc=11792/putridus-shadowstalker
UPDATE `creature_template` SET `MaxLootGold`='1090' WHERE `entry`='11793'; -- Celebrian Dryad (273MinG) (362MaxG) https://www.wowhead.com/tbc/npc=11793/celebrian-dryad
UPDATE `creature_template` SET `MaxLootGold`='1476' WHERE `entry`='11794'; -- Sister of Celebrian (330MinG) (436MaxG) https://www.wowhead.com/tbc/npc=11794/sister-of-celebrian
UPDATE `creature_template` SET `MinLootGold`='681', `MaxLootGold`='2107' WHERE `entry`='11830'; -- Hakkari Priest (822MinG) (1078MaxG) https://www.wowhead.com/tbc/npc=11830/hakkari-priest
UPDATE `creature_template` SET `MinLootGold`='877', `MaxLootGold`='2480' WHERE `entry`='11831'; -- Hakkari Witch Doctor (1119MinG) (1466MaxG) https://www.wowhead.com/tbc/npc=11831/hakkari-witch-doctor
UPDATE `creature_template` SET `MaxLootGold`='69' WHERE `entry`='11858'; -- Grundig Darkcloud (21MinG) (32MaxG) https://www.wowhead.com/tbc/npc=11858/grundig-darkcloud
UPDATE `creature_template` SET `MaxLootGold`='544' WHERE `entry`='11873'; -- Spectral Attendant (118MinG) (159MaxG) https://www.wowhead.com/tbc/npc=11873/spectral-attendant
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='11876'; -- Demon Spirit (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=11876/demon-spirit
UPDATE `creature_template` SET `MinLootGold`='131', `MaxLootGold`='842' WHERE `entry`='11880'; -- Twilight Avenger (133MinG) (179MaxG) https://www.wowhead.com/tbc/npc=11880/twilight-avenger
UPDATE `creature_template` SET `MaxLootGold`='911' WHERE `entry`='11881'; -- Twilight Geolord (136MinG) (183MaxG) https://www.wowhead.com/tbc/npc=11881/twilight-geolord
UPDATE `creature_template` SET `MaxLootGold`='549' WHERE `entry`='11883'; -- Twilight Master (120MinG) (162MaxG) https://www.wowhead.com/tbc/npc=11883/twilight-master
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='11884'; -- Obi (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=11884/obi
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='11886'; -- Mercutio Filthgorger (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=11886/mercutio-filthgorger
UPDATE `creature_template` SET `MinLootGold`='61', `MaxLootGold`='2033' WHERE `entry`='11887'; -- Crypt Robber (153MinG) (205MaxG) https://www.wowhead.com/tbc/npc=11887/crypt-robber
UPDATE `creature_template` SET `MinLootGold`='414', `MaxLootGold`='1545' WHERE `entry`='11898'; -- Crusader Lord Valdelmar (414MinG) (545MaxG) https://www.wowhead.com/tbc/npc=11898/crusader-lord-valdelmar
UPDATE `creature_template` SET `MinLootGold`='4', `MaxLootGold`='34' WHERE `entry`='11910'; -- Grimtotem Ruffian (16MinG) (26MaxG) https://www.wowhead.com/tbc/npc=11910/grimtotem-ruffian
UPDATE `creature_template` SET `MinLootGold`='5', `MaxLootGold`='30' WHERE `entry`='11911'; -- Grimtotem Mercenary (16MinG) (26MaxG) https://www.wowhead.com/tbc/npc=11911/grimtotem-mercenary
UPDATE `creature_template` SET `MinLootGold`='7', `MaxLootGold`='37' WHERE `entry`='11912'; -- Grimtotem Brute (17MinG) (28MaxG) https://www.wowhead.com/tbc/npc=11912/grimtotem-brute
UPDATE `creature_template` SET `MinLootGold`='10', `MaxLootGold`='38' WHERE `entry`='11913'; -- Grimtotem Sorcerer (17MinG) (27MaxG) https://www.wowhead.com/tbc/npc=11913/grimtotem-sorcerer
UPDATE `creature_template` SET `MaxLootGold`='44' WHERE `entry`='11914'; -- Gorehoof the Black (22MinG) (34MaxG) https://www.wowhead.com/tbc/npc=11914/gorehoof-the-black
UPDATE `creature_template` SET `MinLootGold`='7', `MaxLootGold`='49' WHERE `entry`='11915'; -- Gogger Rock Keeper (18MinG) (28MaxG) (sample size 23)
UPDATE `creature_template` SET `MinLootGold`='8', `MaxLootGold`='49' WHERE `entry`='11917'; -- Gogger Geomancer (18MinG) (28MaxG) (sample size 22)
UPDATE `creature_template` SET `MinLootGold`='13', `MaxLootGold`='52' WHERE `entry`='11918'; -- Gogger Stonepounder (20MinG) (32MaxG) https://www.wowhead.com/tbc/npc=11918/gogger-stonepounder
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='11920'; -- Goggeroc (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=11920/goggeroc
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='11937'; -- Demon Portal Guardian (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=11937/demon-portal-guardian
UPDATE `creature_template` SET `MinLootGold`='829381', `MaxLootGold`='1208090' WHERE `entry`='11981'; -- Flamegor (829381MinG) (1013688MaxG) https://www.wowhead.com/tbc/npc=11981/flamegor
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='11982'; -- Magmadar (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=11982/magmadar
UPDATE `creature_template` SET `MinLootGold`='829381', `MaxLootGold`='1201890' WHERE `entry`='11983'; -- Firemaw (829381MinG) (1013688MaxG) https://www.wowhead.com/tbc/npc=11983/firemaw
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='11988'; -- Golemagg the Incinerator (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=11988/golemagg-the-incinerator
UPDATE `creature_template` SET `MinLootGold`='1200112', `MaxLootGold`='1605590' WHERE `entry`='12017'; -- Broodlord Lashlayer (1200112MinG) (1466803MaxG) https://www.wowhead.com/tbc/npc=12017/broodlord-lashlayer
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='12018'; -- Majordomo Executus (1360MinG) (1781MaxG) https://www.wowhead.com/tbc/npc=12018/majordomo-executus
UPDATE `creature_template` SET `MaxLootGold`='458' WHERE `entry`='12046'; -- Gor'marok the Ravager (98MinG) (133MaxG) https://www.wowhead.com/tbc/npc=12046/gormarok-the-ravager
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='12056'; -- Baron Geddon (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=12056/baron-geddon
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='12057'; -- Garr (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=12057/garr
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='12123'; -- Reef Shark (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=12123/reef-shark
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='12124'; -- Great Shark (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=12124/great-shark
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='12125'; -- Mammoth Shark (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=12125/mammoth-shark
UPDATE `creature_template` SET `MinLootGold`='176', `MaxLootGold`='3033' WHERE `entry`='12128'; -- Crimson Elite (418MinG) (550MaxG) https://www.wowhead.com/tbc/npc=12128/crimson-elite
UPDATE `creature_template` SET `MinLootGold`='1185' WHERE `entry`='12129'; -- Onyxian Warder (3627MinG) (4741MaxG) https://www.wowhead.com/tbc/npc=12129/onyxian-warder
UPDATE `creature_template` SET `MinLootGold`='12', `MaxLootGold`='21' WHERE `entry`='12138'; -- Lunaclaw (13MinG) (21MaxG) https://www.wowhead.com/tbc/npc=12138/lunaclaw (sample size 1)
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='12149'; -- Riding Kodo (Gray) (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=12149/riding-kodo-gray
UPDATE `creature_template` SET `MinLootGold`='178', `MaxLootGold`='891' WHERE `entry`='12159'; -- Korrak the Bloodrager (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=12159/korrak-the-bloodrager
UPDATE `creature_template` SET `MaxLootGold`='513' WHERE `entry`='12178'; -- Tortured Druid (108MinG) (145MaxG) https://www.wowhead.com/tbc/npc=12178/tortured-druid
UPDATE `creature_template` SET `MaxLootGold`='753' WHERE `entry`='12179'; -- Tortured Sentinel (123MinG) (166MaxG) https://www.wowhead.com/tbc/npc=12179/tortured-sentinel
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='12180'; -- Anubisath (149MinG) (743MaxG) https://www.wowhead.com/tbc/npc=12180/anubisath
UPDATE `creature_template` SET `MaxLootGold`='2040' WHERE `entry`='12201'; -- Princess Theradras (1061MinG) (1391MaxG) https://www.wowhead.com/tbc/npc=12201/princess-theradras
UPDATE `creature_template` SET `MinLootGold`='582', `MaxLootGold`='1360' WHERE `entry`='12203'; -- Landslide (720MinG) (945MaxG) https://www.wowhead.com/tbc/npc=12203/landslide
UPDATE `creature_template` SET `MinLootGold`='410', `MaxLootGold`='1610' WHERE `entry`='12206'; -- Primordial Behemoth (631MinG) (829MaxG) https://www.wowhead.com/tbc/npc=12206/primordial-behemoth
UPDATE `creature_template` SET `MaxLootGold`='281' WHERE `entry`='12216'; -- Poison Sprite (65MinG) (89MaxG) https://www.wowhead.com/tbc/npc=12216/poison-sprite
UPDATE `creature_template` SET `MaxLootGold`='267' WHERE `entry`='12217'; -- Corruptor (62MinG) (86MaxG) https://www.wowhead.com/tbc/npc=12217/corruptor
UPDATE `creature_template` SET `MinLootGold`='179', `MaxLootGold`='866' WHERE `entry`='12221'; -- Noxious Slime (292MinG) (386MaxG) https://www.wowhead.com/tbc/npc=12221/noxious-slime
UPDATE `creature_template` SET `MinLootGold`='221', `MaxLootGold`='498' WHERE `entry`='12222'; -- Creeping Sludge (320MinG) (423MaxG) https://www.wowhead.com/tbc/npc=12222/creeping-sludge
UPDATE `creature_template` SET `MaxLootGold`='1162' WHERE `entry`='12223'; -- Cavern Lurker (320MinG) (423MaxG) https://www.wowhead.com/tbc/npc=12223/cavern-lurker
UPDATE `creature_template` SET `MinLootGold`='116', `MaxLootGold`='685' WHERE `entry`='12237'; -- Meshlok the Harvester (521MinG) (685MaxG) https://www.wowhead.com/tbc/npc=12237/meshlok-the-harvester
UPDATE `creature_template` SET `MaxLootGold`='845' WHERE `entry`='12248'; -- Infiltrator Hameya (137MinG) (184MaxG) https://www.wowhead.com/tbc/npc=12248/infiltrator-hameya
UPDATE `creature_template` SET `MaxLootGold`='695' WHERE `entry`='12250'; -- Zaeldarr the Outcast (118MinG) (159MaxG) https://www.wowhead.com/tbc/npc=12250/zaeldarr-the-outcast
UPDATE `creature_template` SET `MinLootGold`='354545', `MaxLootGold`='1069897' WHERE `entry`='12259'; -- Gehennas (1069897MinG) (1307652MaxG) https://www.wowhead.com/tbc/npc=12259/gehennas ~60g
UPDATE `creature_template` SET `MinLootGold`='61', `MaxLootGold`='902' WHERE `entry`='12261'; -- Infected Mossflayer (130MinG) (175MaxG) https://www.wowhead.com/tbc/npc=12261/infected-mossflayer
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='12276'; -- Hive'Zora Egg (7MinG) (33MaxG) https://www.wowhead.com/tbc/npc=12276/hivezora-egg
UPDATE `creature_template` SET `MinLootGold`='5', `MaxLootGold`='23' WHERE `entry`='12319'; -- Burning Blade Toxicologist (15MinG) (25MaxG) https://www.wowhead.com/tbc/npc=12319/burning-blade-toxicologist
UPDATE `creature_template` SET `MinLootGold`='4', `MaxLootGold`='24' WHERE `entry`='12320'; -- Burning Blade Crusher (15MinG) (24MaxG) https://www.wowhead.com/tbc/npc=12320/burning-blade-crusher
UPDATE `creature_template` SET `MinLootGold`='11', `MaxLootGold`='53' WHERE `entry`='12321'; -- Stormscale Toxicologist (16MinG) (26MaxG) https://www.wowhead.com/tbc/npc=12321/stormscale-toxicologist
UPDATE `creature_template` SET `MaxLootGold`='455' WHERE `entry`='12322'; -- Quel'Lithien Protector (152MinG) (204MaxG) https://www.wowhead.com/tbc/npc=12322/quellithien-protector
UPDATE `creature_template` SET `MinLootGold`='1291', `MaxLootGold`='1690' WHERE `entry`='12339'; -- Demetria (1291MinG) (1690MaxG) https://www.wowhead.com/tbc/npc=12339/demetria
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='12344'; -- Swift Green Skeletal Horse (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=12344/swift-green-skeletal-horse
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='12348'; -- Ivory Raptor (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=12348/ivory-raptor
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='12361'; -- Riding Nightsaber (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=12361/riding-nightsaber
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='12369'; -- Lord Kragaru (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=12369/lord-kragaru
UPDATE `creature_template` SET `MinLootGold`='137', `MaxLootGold`='897' WHERE `entry`='12377'; -- Wailing Spectre (234MinG) (311MaxG) (sample size 21)
UPDATE `creature_template` SET `MinLootGold`='162', `MaxLootGold`='848' WHERE `entry`='12378'; -- Damned Soul (193MinG) (257MaxG) https://www.wowhead.com/tbc/npc=12378/damned-soul
UPDATE `creature_template` SET `MinLootGold`='167', `MaxLootGold`='946' WHERE `entry`='12379'; -- Unliving Caretaker (204MinG) (272MaxG) https://www.wowhead.com/tbc/npc=12379/unliving-caretaker
UPDATE `creature_template` SET `MinLootGold`='146', `MaxLootGold`='946' WHERE `entry`='12380'; -- Unliving Resident (211MinG) (280MaxG) (sample size 25)
UPDATE `creature_template` SET `MinLootGold`='108', `MaxLootGold`='401' WHERE `entry`='12387'; -- Large Vile Slime (108MinG) (146MaxG) https://www.wowhead.com/tbc/npc=12387/large-vile-slime
UPDATE `creature_template` SET `MinLootGold`='1065700', `MaxLootGold`='1820000' WHERE `entry`='12397'; -- Lord Kazzak (1300000MinG) (1820000MaxG) https://www.wowhead.com/tbc/npc=12397/lord-kazzak
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='12416'; -- Blackwing Legionnaire (609MinG) (800MaxG) https://www.wowhead.com/tbc/npc=12416/blackwing-legionnaire
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='12420'; -- Blackwing Mage (418MinG) (550MaxG) https://www.wowhead.com/tbc/npc=12420/blackwing-mage
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='12426'; -- Masterwork Target Dummy (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=12426/masterwork-target-dummy
UPDATE `creature_template` SET `MinLootGold`='1297137', `MaxLootGold`='1598890' WHERE `entry`='12435'; -- Razorgore the Untamed (1297137MinG) (1585390MaxG) https://www.wowhead.com/tbc/npc=12435/razorgore-the-untamed
UPDATE `creature_template` SET `MinLootGold`='3000', `MaxLootGold`='10000' WHERE `entry`='12457'; -- Blackwing Spellbinder (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=12457/blackwing-spellbinder
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='12458'; -- Blackwing Taskmaster (2312MinG) (3025MaxG) https://web.archive.org/web/20080112123852/http://wow.allakhazam.com:80/db/mob.html?wmob=12458
UPDATE `creature_template` SET `MinLootGold`='3000', `MaxLootGold`='10000' WHERE `entry`='12459'; -- Blackwing Warlock (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=12459/blackwing-warlock
UPDATE `creature_template` SET `MinLootGold`='3000', `MaxLootGold`='10000' WHERE `entry`='12460'; -- Death Talon Wyrmguard (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=12460/death-talon-wyrmguard
UPDATE `creature_template` SET `MinLootGold`='3000', `MaxLootGold`='10000' WHERE `entry`='12461'; -- Death Talon Overseer (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=12461/death-talon-overseer
UPDATE `creature_template` SET `MinLootGold`='3000', `MaxLootGold`='10000' WHERE `entry`='12463'; -- Death Talon Flamescale (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=12463/death-talon-flamescale
UPDATE `creature_template` SET `MinLootGold`='3000', `MaxLootGold`='10000' WHERE `entry`='12464'; -- Death Talon Seether (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=12464/death-talon-seether
UPDATE `creature_template` SET `MinLootGold`='3000', `MaxLootGold`='10000' WHERE `entry`='12465'; -- Death Talon Wyrmkin (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=12465/death-talon-wyrmkin
UPDATE `creature_template` SET `MinLootGold`='5000', `MaxLootGold`='15000' WHERE `entry`='12467'; -- Death Talon Captain (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=12467/death-talon-captain
UPDATE `creature_template` SET `MinLootGold`='3000', `MaxLootGold`='10000' WHERE `entry`='12468'; -- Death Talon Hatcher (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=12468/death-talon-hatcher
UPDATE `creature_template` SET `MinLootGold`='579' WHERE `entry`='12475'; -- Emeraldon Tree Warder (3372MinG) (4408MaxG) https://www.wowhead.com/tbc/npc=12475/emeraldon-tree-warder
UPDATE `creature_template` SET `MinLootGold`='2104' WHERE `entry`='12477'; -- Verdantine Boughguard (3502MinG) (4579MaxG) https://www.wowhead.com/tbc/npc=12477/verdantine-boughguard
UPDATE `creature_template` SET `MinLootGold`='2655' WHERE `entry`='12478'; -- Verdantine Oracle (2863MinG) (3744MaxG) https://www.wowhead.com/tbc/npc=12478/verdantine-oracle
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='12480'; -- Melris Malagan (174MinG) (232MaxG) https://www.wowhead.com/tbc/npc=12480/melris-malagan
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='12481'; -- Justine Demalier (147MinG) (197MaxG) https://www.wowhead.com/tbc/npc=12481/justine-demalier
UPDATE `creature_template` SET `MinLootGold`='3163' WHERE `entry`='12498'; -- Dreamstalker (3502MinG) (4579MaxG) https://www.wowhead.com/tbc/npc=12498/dreamstalker
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='12557'; -- Grethok the Controller (2822MinG) (3691MaxG) https://www.wowhead.com/tbc/npc=12557/grethok-the-controller
UPDATE `creature_template` SET `MaxLootGold`='260' WHERE `entry`='12579'; -- Bloodfury Ripper (135MinG) (181MaxG) https://www.wowhead.com/tbc/npc=12579/bloodfury-ripper
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='12581'; -- Mercutio (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=12581/mercutio
UPDATE `creature_template` SET `MinLootGold`='487', `MaxLootGold`='2437' WHERE `entry`='12739'; -- Onyxia's Elite Guard (1374MinG) (1799MaxG) https://www.wowhead.com/tbc/npc=12739/onyxias-elite-guard
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='12806'; -- Magmakin (208MinG) (1038MaxG) https://www.wowhead.com/tbc/npc=12806/magmakin
UPDATE `creature_template` SET `MinLootGold`='15', `MaxLootGold`='100' WHERE `entry`='12856'; -- Ashenvale Outrunner (29MinG) (43MaxG) https://www.wowhead.com/tbc/npc=12856/ashenvale-outrunner
UPDATE `creature_template` SET `MinLootGold`='13', `MaxLootGold`='64' WHERE `entry`='12860'; -- Duriel Moonfire (45MinG) (64MaxG) https://www.wowhead.com/tbc/npc=12860/duriel-moonfire
UPDATE `creature_template` SET `MaxLootGold`='809' WHERE `entry`='12865'; -- Ambassador Malcin (203MinG) (270MaxG) https://www.wowhead.com/tbc/npc=12865/ambassador-malcin
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='12876'; -- Baron Aquanis (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=12876/baron-aquanis
UPDATE `creature_template` SET `MaxLootGold`='68' WHERE `entry`='12896'; -- Silverwing Sentinel (29MinG) (43MaxG) https://www.wowhead.com/tbc/npc=12896/silverwing-sentinel
UPDATE `creature_template` SET `MaxLootGold`='80' WHERE `entry`='12897'; -- Silverwing Warrior (27MinG) (40MaxG) https://www.wowhead.com/tbc/npc=12897/silverwing-warrior
UPDATE `creature_template` SET `MinLootGold`='168', `MaxLootGold`='2303' WHERE `entry`='12900'; -- Somnus (1760MinG) (2303MaxG) https://www.wowhead.com/tbc/npc=12900/somnus
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='12904'; -- Spirit Of Redemption (64MinG) (318MaxG) https://www.wowhead.com/tbc/npc=12904/spirit-of-redemption
UPDATE `creature_template` SET `MinLootGold`='13', `MaxLootGold`='63' WHERE `entry`='12918'; -- Chief Murgut (36MinG) (52MaxG) https://www.wowhead.com/tbc/npc=12918/chief-murgut
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='12939'; -- Doctor Gustaf VanHowzen (1MinG) (602MaxG) https://www.wowhead.com/tbc/npc=12939/doctor-gustaf-vanhowzen
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='12940'; -- Vorsha the Lasher (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=12940/vorsha-the-lasher
UPDATE `creature_template` SET `MaxLootGold`='167' WHERE `entry`='12976'; -- Kolkar Waylayer (28MinG) (138MaxG) https://www.wowhead.com/tbc/npc=12976/kolkar-waylayer
UPDATE `creature_template` SET `MinLootGold`='29', `MaxLootGold`='207' WHERE `entry`='12977'; -- Kolkar Ambusher (56MinG) (78MaxG) https://www.wowhead.com/tbc/npc=12977/kolkar-ambusher
UPDATE `creature_template` SET `MinLootGold`='37', `MaxLootGold`='224' WHERE `entry`='13019'; -- Burning Blade Seer (45MinG) (63MaxG) https://www.wowhead.com/tbc/npc=13019/burning-blade-seer
UPDATE `creature_template` SET `MinLootGold`='1523076', `MaxLootGold`='1861537' WHERE `entry`='13020'; -- Vaelastrasz the Corrupt (1523076MinG) (1861537MaxG) https://www.wowhead.com/tbc/npc=13020/vaelastrasz-the-corrupt similar to onyxia and azu
UPDATE `creature_template` SET `MaxLootGold`='2207' WHERE `entry`='13021'; -- Warpwood Crusher (772MinG) (1013MaxG) https://www.wowhead.com/tbc/npc=13021/warpwood-crusher
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='13136'; -- Hive'Ashi Drone (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=13136/hiveashi-drone
UPDATE `creature_template` SET `MinLootGold`='282', `MaxLootGold`='880' WHERE `entry`='13141'; -- Deeprot Stomper (300MinG) (396MaxG) https://www.wowhead.com/tbc/npc=13141/deeprot-stomper
UPDATE `creature_template` SET `MaxLootGold`='1354' WHERE `entry`='13142'; -- Deeprot Tangler (310MinG) (409MaxG) https://www.wowhead.com/tbc/npc=13142/deeprot-tangler
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='13156'; -- Carrosh (3MinG) (14MaxG) Dummy
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='13221'; -- Ryson's Eye in the Sky (144MinG) (718MaxG) Dummy
UPDATE `creature_template` SET `MaxLootGold`='557' WHERE `entry`='13276'; -- Wildspawn Imp (121MinG) (163MaxG) https://www.wowhead.com/tbc/npc=13276/wildspawn-imp
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='13279'; -- Discordant Surge (0MinG) (0MaxG) Dummy
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='13301'; -- Hive'Ashi Ambusher (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=13301/hiveashi-ambusher
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='13456'; -- Noxxion's Spawn (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=13456/noxxions-spawn
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='13696'; -- Noxxious Scion (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=13696/noxxious-scion
UPDATE `creature_template` SET `MinLootGold`='195', `MaxLootGold`='994' WHERE `entry`='13718'; -- The Nameless Prophet (232MinG) (308MaxG) https://www.wowhead.com/tbc/npc=13718/the-nameless-prophet
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='13736'; -- Noxxious Essence (0MinG) (0MaxG) Dummy
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='13738'; -- Veng (332MinG) (438MaxG) - you fight and loot the spirits of, not these https://www.wowhead.com/tbc/npc=13738/veng
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='13739'; -- Maraudos (326MinG) (431MaxG) https://www.wowhead.com/tbc/npc=13739/maraudos
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='13740'; -- Magra (312MinG) (413MaxG) https://www.wowhead.com/tbc/npc=13740/magra
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='13741'; -- Gelk (285MinG) (377MaxG) https://www.wowhead.com/tbc/npc=13741/gelk
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='13742'; -- Kolk (295MinG) (391MaxG) https://www.wowhead.com/tbc/npc=13742/kolk
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='13839'; -- Royal Dreadguard (286MinG) (378MaxG) Guard
UPDATE `creature_template` SET `MinLootGold`='1010', `MaxLootGold`='25000' WHERE `entry`='13996'; -- Blackwing Technician (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=13996/blackwing-technician
UPDATE `creature_template` SET `MinLootGold`='1984482', `MaxLootGold`='2007690' WHERE `entry`='14020'; -- Chromaggus (1350135MinG) (1650165MaxG) https://www.wowhead.com/tbc/npc=14020/chromaggus
UPDATE `creature_template` SET `MaxLootGold`='99' WHERE `entry`='14221'; -- Gravis Slipknot (59MinG) (83MaxG) https://www.wowhead.com/tbc/npc=14221/gravis-slipknot
UPDATE `creature_template` SET `MinLootGold`='66', `MaxLootGold`='330' WHERE `entry`='14231'; -- Drogoth the Roamer (60MinG) (84MaxG) https://www.wowhead.com/tbc/npc=14231/drogoth-the-roamer
UPDATE `creature_template` SET `MinLootGold`='86', `MaxLootGold`='430' WHERE `entry`='14235'; -- The Rot (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=14235/the-rot slimes money yes
UPDATE `creature_template` SET `MinLootGold`='83', `MaxLootGold`='413' WHERE `entry`='14237'; -- Oozeworm (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=14237/oozeworm beasts money no
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='14242'; -- [UNUSED] Sulhasa (1MinG) (774MaxG) Dummy
UPDATE `creature_template` SET `MaxLootGold`='195' WHERE `entry`='14267'; -- Emogg the Crusher (128MinG) (172MaxG) https://www.wowhead.com/tbc/npc=14267/emogg-the-crusher
UPDATE `creature_template` SET `MaxLootGold`='50' WHERE `entry`='14270'; -- Squiddic (23MinG) (35MaxG) https://www.wowhead.com/tbc/npc=14270/squiddic
UPDATE `creature_template` SET `MaxLootGold`='38' WHERE `entry`='14271'; -- Ribchaser (20MinG) (31MaxG) https://www.wowhead.com/tbc/npc=14271/ribchaser
UPDATE `creature_template` SET `MaxLootGold`='102' WHERE `entry`='14273'; -- Boulderheart (33MinG) (48MaxG) https://www.wowhead.com/tbc/npc=14273/boulderheart
UPDATE `creature_template` SET `MaxLootGold`='65' WHERE `entry`='14276'; -- Scargil (44MinG) (62MaxG) https://www.wowhead.com/tbc/npc=14276/scargil
UPDATE `creature_template` SET `MaxLootGold`='179' WHERE `entry`='14277'; -- Lady Zephris (45MinG) (64MaxG) https://www.wowhead.com/tbc/npc=14277/lady-zephris
UPDATE `creature_template` SET `MaxLootGold`='100' WHERE `entry`='14278'; -- Ro'Bark (40MinG) (58MaxG) https://www.wowhead.com/tbc/npc=14278/robark
UPDATE `creature_template` SET `MinLootGold`='17', `MaxLootGold`='59' WHERE `entry`='14281'; -- Jimmy the Bleeder (44MinG) (59MaxG) https://www.wowhead.com/tbc/npc=14281/jimmy-the-bleeder
UPDATE `creature_template` SET `MaxLootGold`='2051' WHERE `entry`='14303'; -- Petrified Guardian (413MinG) (544MaxG) https://www.wowhead.com/tbc/npc=14303/petrified-guardian
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='14304'; -- Kor'kron Elite (0MinG) (0MaxG) Guard
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='14308'; -- Ferra (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=14308/ferra
UPDATE `creature_template` SET `MaxLootGold`='1201' WHERE `entry`='14327'; -- Lethtendris (859MinG) (1127MaxG) https://www.wowhead.com/tbc/npc=14327/lethtendris
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='14330'; -- Black War Raptor (0MinG) (0MaxG) Mount
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='14331'; -- Red Skeletal Warhorse (0MinG) (0MaxG) Mount
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='14332'; -- Black War Steed (0MinG) (0MaxG) Mount
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='14333'; -- Black War Kodo (0MinG) (0MaxG) Mount
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='14334'; -- Black Battlestrider (0MinG) (0MaxG) Mount
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='14335'; -- Black War Ram (0MinG) (0MaxG) Mount
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='14336'; -- Black War Saber (0MinG) (0MaxG) Mount
UPDATE `creature_template` SET `MinLootGold`='115', `MaxLootGold`='155' WHERE `entry`='14340'; -- Alshirr Banebreath (115MinG) (155MaxG) https://www.wowhead.com/tbc/npc=14340/alshirr-banebreath
UPDATE `creature_template` SET `MinLootGold`='102', `MaxLootGold`='138' WHERE `entry`='14342'; -- Ragepaw (102MinG) (138MaxG) https://www.wowhead.com/tbc/npc=14342/ragepaw
UPDATE `creature_template` SET `MinLootGold`='130', `MaxLootGold`='351' WHERE `entry`='14345'; -- The Ongar (106MinG) (144MaxG) https://www.wowhead.com/tbc/npc=14345/the-ongar
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='14363'; -- Thief Catcher Shadowdelve (0MinG) (0MaxG) Guard
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='14365'; -- Thief Catcher Farmountain (0MinG) (0MaxG) Guard
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='14366'; -- Warpwood Spores (0MinG) (0MaxG) Dummy
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='14367'; -- Thief Catcher Thunderbrew (299MinG) (395MaxG) Guard
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='14375'; -- Scout Stronghand (0MinG) (0MaxG) Guard
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='14376'; -- Scout Manslayer (0MinG) (0MaxG) Guard
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='14377'; -- Scout Tharr (0MinG) (0MaxG) Guard
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='14378'; -- Huntress Skymane (0MinG) (0MaxG) Guard
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='14379'; -- Huntress Ravenoak (0MinG) (0MaxG) Guard
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='14380'; -- Huntress Leafrunner (0MinG) (0MaxG) Guard
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='14399'; -- Arcane Torrent (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=14399/arcane-torrent
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='14402'; -- Seeker Cromwell (0MinG) (0MaxG) Guard
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='14403'; -- Seeker Nahr (0MinG) (0MaxG) Guard
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='14404'; -- Seeker Thompson (0MinG) (0MaxG) Guard
UPDATE `creature_template` SET `MaxLootGold`='147' WHERE `entry`='14425'; -- Gnawbone (32MinG) (47MaxG) https://www.wowhead.com/tbc/npc=14425/gnawbone
UPDATE `creature_template` SET `MaxLootGold`='86' WHERE `entry`='14426'; -- Harb Foulmountain (40MinG) (57MaxG) https://www.wowhead.com/tbc/npc=14426/harb-foulmountain
UPDATE `creature_template` SET `MinLootGold`='1' WHERE `entry`='14428'; -- Uruson (6MinG) (13MaxG) https://www.wowhead.com/tbc/npc=14428/uruson
UPDATE `creature_template` SET `MinLootGold`='11', `MaxLootGold`='20' WHERE `entry`='14429'; -- Grimmaw (11MinG) (20MaxG) https://www.wowhead.com/tbc/npc=14429/grimmaw
UPDATE `creature_template` SET `MinLootGold`='3' WHERE `entry`='14431'; -- Fury Shelda (7MinG) (14MaxG) https://www.wowhead.com/tbc/npc=14431/fury-shelda
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='14434'; -- Alarm-o-Bot (0MinG) (0MaxG)
UPDATE `creature_template` SET `MinLootGold`='31740', `MaxLootGold`='158699' WHERE `entry`='14435'; -- Prince Thunderaan (29155MinG) (38078MaxG) classicmangos https://www.wowhead.com/tbc/npc=14435/prince-thunderaan
UPDATE `creature_template` SET `MaxLootGold`='285' WHERE `entry`='14447'; -- Gilmorian (78MinG) (107MaxG) https://www.wowhead.com/tbc/npc=14447/gilmorian
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='14453'; -- Orb of Domination (0MinG) (0MaxG) Dummy
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='14454'; -- The Windreaver (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=14454/the-windreaver
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='14455'; -- Whirling Invader (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=14455/whirling-invader
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='14456'; -- Blackwing Guardsman (1673MinG) (2190MaxG) https://www.wowhead.com/tbc/npc=14456/blackwing-guardsman
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='14457'; -- Princess Tempestria (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=14457/princess-tempestria
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='14458'; -- Watery Invader (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=14458/watery-invader
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='14460'; -- Blazing Invader (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=14460/blazing-invader
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='14461'; -- Baron Charr (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=14461/baron-charr
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='14462'; -- Thundering Invader (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=14462/thundering-invader
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='14464'; -- Avalanchion (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=14464/avalanchion
UPDATE `creature_template` SET `MinLootGold`='52', `MaxLootGold`='330' WHERE `entry`='14487'; -- Gluggle (52MinG) (73MaxG) https://www.wowhead.com/tbc/npc=14487/gluggle
UPDATE `creature_template` SET `MinLootGold`='63', `MaxLootGold`='346' WHERE `entry`='14488'; -- Roloch (63MinG) (88MaxG) https://www.wowhead.com/tbc/npc=14488/roloch
UPDATE `creature_template` SET `MaxLootGold`='310' WHERE `entry`='14492'; -- Verifonix (75MinG) (103MaxG) https://www.wowhead.com/tbc/npc=14492/verifonix
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='14502'; -- Xorothian Dreadsteed (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=14502/xorothian-dreadsteed
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='14505'; -- Riding Horse (Dreadsteed) (0MinG) (0MaxG) Mount
UPDATE `creature_template` SET `MinLootGold`='1167' WHERE `entry`='14506'; -- Lord Hel'nurath (2131MinG) (2788MaxG) https://www.wowhead.com/tbc/npc=14506/lord-helnurath
UPDATE `creature_template` SET `MaxLootGold`='401620' WHERE `entry`='14510'; -- High Priestess Mar'li (327734MinG) (400563MaxG) https://www.wowhead.com/tbc/npc=14510/high-priestess-marli
UPDATE `creature_template` SET `MinLootGold`='340964', `MaxLootGold`='416733' WHERE `entry`='14515'; -- High Priestess Arlokk (340964MinG) (416733MaxG) https://www.wowhead.com/tbc/npc=14515/high-priestess-arlokk
UPDATE `creature_template` SET `MinLootGold`='1760', `MaxLootGold`='2303' WHERE `entry`='14516'; -- Death Knight Darkreaver (1760MinG) (2303MaxG) https://www.wowhead.com/tbc/npc=14516/death-knight-darkreaver
UPDATE `creature_template` SET `MaxLootGold`='411647' WHERE `entry`='14517'; -- High Priestess Jeklik (333374MinG) (407457MaxG) https://www.wowhead.com/tbc/npc=14517/high-priestess-jeklik
UPDATE `creature_template` SET `MinLootGold`='652', `MaxLootGold`='1806' WHERE `entry`='14518'; -- Aspect of Banality (694MinG) (911MaxG) https://www.wowhead.com/tbc/npc=14518/aspect-of-banality
UPDATE `creature_template` SET `MinLootGold`='652', `MaxLootGold`='1806' WHERE `entry`='14519'; -- Aspect of Corruption (864MinG) (1133MaxG) https://www.wowhead.com/tbc/npc=14519/aspect-of-corruption
UPDATE `creature_template` SET `MinLootGold`='652', `MaxLootGold`='1806' WHERE `entry`='14520'; -- Aspect of Malice (864MinG) (1133MaxG) https://www.wowhead.com/tbc/npc=14520/aspect-of-malice
UPDATE `creature_template` SET `MinLootGold`='652', `MaxLootGold`='1806' WHERE `entry`='14521'; -- Aspect of Shadow (652MinG) (856MaxG) https://www.wowhead.com/tbc/npc=14521/aspect-of-shadow
UPDATE `creature_template` SET `MaxLootGold`='467' WHERE `entry`='14523'; -- Ulathek (107MinG) (145MaxG) https://www.wowhead.com/tbc/npc=14523/ulathek
UPDATE `creature_template` SET `MinLootGold`='61' WHERE `entry`='14564'; -- Terrordale Spirit (134MinG) (305MaxG) https://www.wowhead.com/tbc/npc=14564/terrordale-spirit
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='14565'; -- Riding Horse (Charger) (0MinG) (0MaxG) Mount
UPDATE `creature_template` SET `MinLootGold`='1013688', `MaxLootGold`='1212590' WHERE `entry`='14601'; -- Ebonroc (829381MinG) (1013688MaxG) https://www.wowhead.com/tbc/npc=14601/ebonroc
UPDATE `creature_template` SET `MinLootGold`='41', `MaxLootGold`='560' WHERE `entry`='14603'; -- Zapped Shore Strider (93MinG) (126MaxG) https://www.wowhead.com/tbc/npc=14603/zapped-shore-strider - morph npc
UPDATE `creature_template` SET `MinLootGold`='41', `MaxLootGold`='560' WHERE `entry`='5359';
UPDATE `creature_template` SET `MinLootGold`='44', `MaxLootGold`='556' WHERE `entry`='14604'; -- Zapped Land Walker (97MinG) (132MaxG) https://www.wowhead.com/tbc/npc=14604/zapped-land-walker - morph npc
UPDATE `creature_template` SET `MinLootGold`='44', `MaxLootGold`='556' WHERE `entry`='5357';
UPDATE `creature_template` SET `MinLootGold`='43', `MaxLootGold`='540' WHERE `entry`='14638'; -- Zapped Wave Strider (94MinG) (128MaxG) https://www.wowhead.com/tbc/npc=14638/zapped-wave-strider - morph npc
UPDATE `creature_template` SET `MinLootGold`='43', `MaxLootGold`='540' WHERE `entry`='5361';
UPDATE `creature_template` SET `MinLootGold`='43', `MaxLootGold`='603' WHERE `entry`='14639'; -- Zapped Deep Strider (84MinG) (114MaxG) https://www.wowhead.com/tbc/npc=14639/zapped-deep-strider - morph npc
UPDATE `creature_template` SET `MinLootGold`='43', `MaxLootGold`='603' WHERE `entry`='5360';
UPDATE `creature_template` SET `MinLootGold`='44', `MaxLootGold`='603' WHERE `entry`='14640'; -- Zapped Cliff Giant (98MinG) (133MaxG) https://www.wowhead.com/tbc/npc=14640/zapped-cliff-giant - morph npc
UPDATE `creature_template` SET `MinLootGold`='44', `MaxLootGold`='603' WHERE `entry`='5358';
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='14668'; -- Corrupted Infernal (152MinG) (204MaxG) https://www.wowhead.com/tbc/npc=14668/corrupted-infernal
UPDATE `creature_template` SET `MinLootGold`='64', `MaxLootGold`='151' WHERE `entry`='14682'; -- Sever (0MinG) (0MaxG) (sample size 5)
UPDATE `creature_template` SET `MinLootGold`='2275', `MaxLootGold`='2984' WHERE `entry`='14684'; -- Balzaphon (0MinG) (0MaxG) (sample size 2)
UPDATE `creature_template` SET `MinLootGold`='208', `MaxLootGold`='378' WHERE `entry`='14686'; -- Lady Falther'ess (0MinG) (0MaxG) (sample size 3)
UPDATE `creature_template` SET `MinLootGold`='238', `MaxLootGold`='657' WHERE `entry`='14693'; -- Scorn (0MinG) (0MaxG) (sample size 4)
UPDATE `creature_template` SET `MinLootGold`='1041', `MaxLootGold`='1871' WHERE `entry`='14695'; -- Lord Blackwood (0MinG) (0MaxG) (sample size 1)
UPDATE `creature_template` SET `MinLootGold`='271', `MaxLootGold`='503' WHERE `entry`='14697'; -- Lumbering Horror (0MinG) (0MaxG) (sample size 3)
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='14717'; -- Horde Elite (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=14717/horde-elite
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='14721'; -- Field Marshal Afrasiabi (570MinG) (749MaxG) https://www.wowhead.com/tbc/npc=14721/field-marshal-stonebridge
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='14745'; -- Stormpike Riding Ram (0MinG) (0MaxG) Mount
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='14748'; -- Vilebranch Kidnapper (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=14748/vilebranch-kidnapper
UPDATE `creature_template` SET `MinLootGold`='618', `MaxLootGold`='3102' WHERE `entry`='14750'; -- Gurubashi Bat Rider (1418MinG) (1857MaxG) https://www.wowhead.com/tbc/npc=14750/gurubashi-bat-rider
UPDATE `creature_template` SET `MinLootGold`='794', `MaxLootGold`='3086' WHERE `entry`='14825'; -- Withered Mistress (0MinG) (0MaxG) (sample size 13)
UPDATE `creature_template` SET `MinLootGold`='433457', `MaxLootGold`='590558' WHERE `entry`='14834'; -- Hakkar (450277MinG) (550338MaxG) https://www.wowhead.com/tbc/npc=14834/hakkar
UPDATE `creature_template` SET `MinLootGold`='4023', `MaxLootGold`='4275' WHERE `entry`='14862'; -- Emissary Roman'khan (4055MinG) (4275MaxG) https://www.wowhead.com/tbc/npc=14862/emissary-romankhan
UPDATE `creature_template` SET `MinLootGold`='598', `MaxLootGold`='3056' WHERE `entry`='14882'; -- Atal'ai Mistress (779MinG) (1022MaxG) https://www.wowhead.com/tbc/npc=14882/atalai-mistress
UPDATE `creature_template` SET `MinLootGold`='2174', `MaxLootGold`='2476' WHERE `entry`='14883'; -- Voodoo Slave (0MinG) (0MaxG) (sample size 2)
UPDATE `creature_template` SET `MinLootGold`='1300000', `MaxLootGold`='1820000' WHERE `entry`='14887'; -- Ysondre (1300000MinG) (1820000MaxG) same as other dragons
UPDATE `creature_template` SET `MinLootGold`='1300000', `MaxLootGold`='1820000' WHERE `entry`='14888'; -- Lethon (1300000MinG) (1820000MaxG) same as other dragons
UPDATE `creature_template` SET `MinLootGold`='1300000', `MaxLootGold`='1820000' WHERE `entry`='14889'; -- Emeriss (1300000MinG) (1820000MaxG) same as other dragons
UPDATE `creature_template` SET `MinLootGold`='1300000', `MaxLootGold`='1820000' WHERE `entry`='14890'; -- Taerar (1300000MinG) (1820000MaxG) same as other dragons
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='15041'; -- Spawn of Mar'li (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=15041/spawn-of-marli
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='15068'; -- Zulian Guardian (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=15068/zulian-guardian
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='15082'; -- Gri'lek (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=15082/grilek
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='15083'; -- Hazza'rah (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=15083/hazzarah
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='15084'; -- Renataki (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=15084/renataki
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='15085'; -- Wushoolay (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=15085/wushoolay
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='15102'; -- Silverwing Emissary (0MinG) (0MaxG) Emissary
UPDATE `creature_template` SET `MaxLootGold`='3270' WHERE `entry`='15111'; -- Mad Servant (611MinG) (802MaxG) https://www.wowhead.com/classic/npc=15111/mad-servant
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='15114'; -- Gahz'ranka (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=15114/gahzranka
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='15122'; -- Gahz'ranka Dead (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=15122/gahzranka-dead
UPDATE `creature_template` SET `MinLootGold`='500', `MaxLootGold`='1658' WHERE `entry`='15162'; -- Scarlet Inquisitor (500MinG) (658MaxG) vmangos custom
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='15200'; -- Twilight Keeper Mayna (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=15200/twilight-keeper-mayna
UPDATE `creature_template` SET `MaxLootGold`='1059' WHERE `entry`='15201'; -- Twilight Flamereaver (135MinG) (181MaxG) https://www.wowhead.com/classic/npc=15201/twilight-flamereaver
UPDATE `creature_template` SET `MinLootGold`='150000', `MaxLootGold`='250000' WHERE `entry`='15203'; -- Prince Skaldrenox (35105MinG) (45848MaxG) https://www.wowhead.com/tbc/npc=15203/prince-skaldrenox ~20g
UPDATE `creature_template` SET `MinLootGold`='150000', `MaxLootGold`='250000' WHERE `entry`='15204'; -- High Marshal Whirlaxis (35105MinG) (45848MaxG) https://www.wowhead.com/tbc/npc=15204/high-marshal-whirlaxis ~20g
UPDATE `creature_template` SET `MinLootGold`='150000', `MaxLootGold`='250000' WHERE `entry`='15205'; -- Baron Kazum (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=15205/baron-kazum ~20g
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='15206'; -- The Duke of Cynders (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=15206/the-duke-of-cynders
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='15207'; -- The Duke of Fathoms (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=15207/the-duke-of-fathoms
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='15208'; -- The Duke of Shards (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=15208/the-duke-of-shards
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='15209'; -- Crimson Templar (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=15209/crimson-templar
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='15211'; -- Azure Templar (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=15211/azure-templar
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='15212'; -- Hoary Templar (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=15212/hoary-templar
UPDATE `creature_template` SET `MaxLootGold`='830' WHERE `entry`='15213'; -- Twilight Overlord (122MinG) (165MaxG) https://www.wowhead.com/tbc/npc=15213/twilight-overlord
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='15220'; -- The Duke of Zephyrs (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=15220/the-duke-of-zephyrs
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='15260'; -- Demented Druid Spirit (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=15260/demented-druid-spirit
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='15286'; -- Xil'xix (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=15286/xilxix
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='15288'; -- Aluntir (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=15288/aluntir
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='15290'; -- Arakis (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=15290/arakis
UPDATE `creature_template` SET `MinLootGold`='150000', `MaxLootGold`='250000' WHERE `entry`='15305'; -- Lord Skwol (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=15305/lord-skwol ~20g
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='15307'; -- Earthen Templar (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=15307/earthen-templar
UPDATE `creature_template` SET `MinLootGold`='121', `MaxLootGold`='163' WHERE `entry`='15308'; -- Twilight Prophet (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=15308/twilight-prophet
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='15343'; -- Qiraji Swarmguard (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=15343/qiraji-swarmguard
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='15385'; -- Colonel Zerran (0MinG) (0MaxG)
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='15386'; -- Major Yeggeth (0MinG) (0MaxG)
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='15388'; -- Major Pakkon (0MinG) (0MaxG)
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='15389'; -- Captain Drenn (0MinG) (0MaxG)
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='15390'; -- Captain Xurrem (0MinG) (0MaxG)
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='15391'; -- Captain Qeez (0MinG) (0MaxG)
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='15392'; -- Captain Tuubid (0MinG) (0MaxG)
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='15449'; -- Hive'Zora Abomination (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=15449/hivezora-abomination
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='15491'; -- Eranikus, Tyrant of the Dream (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=15491/eranikus-tyrant-of-the-dream
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='15527'; -- Mana Fiend (737MinG) (967MaxG) https://www.wowhead.com/tbc/npc=15527/mana-fiend
-- maybe only the bug that drops loot also drops gold. - core
UPDATE `creature_template` SET `MaxLootGold`='537463' WHERE `entry`='15543'; -- Princess Yauj (28305MinG) (36968MaxG) https://www.wowhead.com/tbc/npc=15543/princess-yauj
UPDATE `creature_template` SET `MinLootGold`='490638', `MaxLootGold`='516334' WHERE `entry`='15544'; -- Vem (0MinG) (0MaxG) (sample size 2)
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='15546'; -- Hive'Zara Swarmer (69MinG) (95MaxG) https://www.wowhead.com/tbc/npc=15546/hivezara-swarmer
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='15547'; -- Spectral Charger (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=15547/spectral-charger
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='15555'; -- Hive'Zara Larva (129MinG) (173MaxG) https://www.wowhead.com/tbc/npc=15555/hivezara-larva
UPDATE `creature_template` SET `MinLootGold`='1528', `MaxLootGold`='1794' WHERE `entry`='15591'; -- Minion of Weavil (0MinG) (0MaxG) (sample size 1)
UPDATE `creature_template` SET `MinLootGold`='258', `MaxLootGold`='417' WHERE `entry`='15685'; -- Southsea Kidnapper (0MinG) (0MaxG) (sample size 1)
UPDATE `creature_template` SET `MinLootGold`='92', `MaxLootGold`='471' WHERE `entry`='15692'; -- Dark Iron Kidnapper (0MinG) (0MaxG) (sample size 14)
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='15713'; -- Blue Qiraji Battle Tank (0MinG) (0MaxG) Mount
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='15714'; -- Yellow Qiraji Battle Tank (0MinG) (0MaxG) Mount
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='15715'; -- Green Qiraji Battle Tank (0MinG) (0MaxG) Mount
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='15716'; -- Red Qiraji Battle Tank (0MinG) (0MaxG) Mount
UPDATE `creature_template` SET `MaxLootGold`='1500000' WHERE `entry`='15727'; -- C'Thun (1029458MinG) (1258227MaxG) https://www.wowhead.com/tbc/npc=15727/cthun
UPDATE `creature_template` SET `MinLootGold`='754599' WHERE `entry`='15740'; -- Colossus of Zora (1000000MinG) (2000000MaxG) https://www.wowhead.com/tbc/npc=15740/colossus-of-zora
UPDATE `creature_template` SET `MinLootGold`='754599' WHERE `entry`='15741'; -- Colossus of Regal (1000000MinG) (2000000MaxG) https://www.wowhead.com/tbc/npc=15741/colossus-of-regal
UPDATE `creature_template` SET `MinLootGold`='754599' WHERE `entry`='15742'; -- Colossus of Ashi (1000000MinG) (2000000MaxG) https://www.wowhead.com/tbc/npc=15742/colossus-of-ashi
UPDATE `creature_template` SET `MinLootGold`='47736' WHERE `entry`='15743'; -- Colossal Anubisath Warbringer (80000MinG) (100000MaxG) https://www.wowhead.com/tbc/npc=15743/colossal-anubisath-warbringer
UPDATE `creature_template` SET `MinLootGold`='3396', `MaxLootGold`='172524' WHERE `entry`='15744'; -- Imperial Qiraji Destroyer (3396MinG) (4180MaxG) https://www.wowhead.com/tbc/npc=15744/imperial-qiraji-destroyer
UPDATE `creature_template` SET `MinLootGold`='10000', `MaxLootGold`='20000' WHERE `entry`='15747'; -- Qiraji Captain (15000MinG) (25000MaxG) https://www.wowhead.com/tbc/npc=15747/qiraji-captain
UPDATE `creature_template` SET `MinLootGold`='5024' WHERE `entry`='15748'; -- Lesser Anubisath Warbringer (10000MinG) (20000MaxG) https://www.wowhead.com/tbc/npc=15748/lesser-anubisath-warbringer
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='15749'; -- Lesser Silithid Flayer (500MinG) (1000MaxG) https://www.wowhead.com/tbc/npc=15749/lesser-silithid-flayer
UPDATE `creature_template` SET `MinLootGold`='20000', `MaxLootGold`='40000' WHERE `entry`='15750'; -- Qiraji Major (25000MinG) (50000MaxG) https://www.wowhead.com/tbc/npc=15750/qiraji-major
UPDATE `creature_template` SET `MinLootGold`='5000', `MaxLootGold`='25000' WHERE `entry`='15751'; -- Anubisath Warbringer (20000MinG) (40000MaxG) https://www.wowhead.com/tbc/npc=15751/anubisath-warbringer
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='15752'; -- Silithid Flayer (1000MinG) (2000MaxG) https://www.wowhead.com/tbc/npc=15752/silithid-flayer
UPDATE `creature_template` SET `MinLootGold`='50000', `MaxLootGold`='80000' WHERE `entry`='15753'; -- Qiraji Brigadier General (80000MinG) (100000MaxG) https://www.wowhead.com/tbc/npc=15753/qiraji-brigadier-general
UPDATE `creature_template` SET `MinLootGold`='5000', `MaxLootGold`='40000' WHERE `entry`='15754'; -- Greater Anubisath Warbringer (40000MinG) (60000MaxG) https://www.wowhead.com/tbc/npc=15754/greater-anubisath-warbringer
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='15756'; -- Greater Silithid Flayer (2000MinG) (4000MaxG) https://www.wowhead.com/tbc/npc=15756/greater-silithid-flayer
UPDATE `creature_template` SET `MinLootGold`='70000', `MaxLootGold`='100000' WHERE `entry`='15757'; -- Qiraji Lieutenant General (100000MinG) (120000MaxG) https://www.wowhead.com/tbc/npc=15757/qiraji-lieutenant-general
UPDATE `creature_template` SET `MinLootGold`='20000', `MaxLootGold`='80000' WHERE `entry`='15758'; -- Supreme Anubisath Warbringer (60000MinG) (80000MaxG) https://www.wowhead.com/tbc/npc=15758/supreme-anubisath-warbringer
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='15759'; -- Supreme Silithid Flayer (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=15759/supreme-silithid-flayer
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='15773'; -- Christmas Cannon Master Willey (1629MinG) (2132MaxG) Dummy
UPDATE `creature_template` SET `MinLootGold`='6000', `MaxLootGold`='10000' WHERE `entry`='15806'; -- Qiraji Lieutenant (10000MinG) (20000MaxG) https://www.wowhead.com/tbc/npc=15806/qiraji-lieutenant
UPDATE `creature_template` SET `MinLootGold`='6189', `MaxLootGold`='8033' WHERE `entry`='15807'; -- Minor Anubisath Warbringer (8000MinG) (12000MaxG) (sample size 36)
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='15808'; -- Minor Silithid Flayer (400MinG) (800MaxG) - no gold https://www.wowhead.com/classic/npc=15808/minor-silithid-flayer
UPDATE `creature_template` SET `MinLootGold`='5011', `MaxLootGold`='7488' WHERE `entry`='15810'; -- Eroded Anubisath Warbringer (5000MinG) (10000MaxG) (sample size 104) https://www.wowhead.com/classic/npc=15810/eroded-anubisath-warbringer my guess was pretty spot on ;)
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='15811'; -- Faltering Silithid Flayer (200MinG) (400MaxG) - no gold https://www.wowhead.com/classic/npc=15811/faltering-silithid-flayer
UPDATE `creature_template` SET `MinLootGold`='5241', `MaxLootGold`='7158' WHERE `entry`='15812'; -- Qiraji Officer (8000MinG) (12000MaxG) (sample size 44)
UPDATE `creature_template` SET `MinLootGold`='7124' WHERE `entry`='15813'; -- Qiraji Officer Zod (10000MinG) (15000MaxG) https://www.wowhead.com/tbc/npc=15813/qiraji-officer-zod
UPDATE `creature_template` SET `MinLootGold`='10000', `MaxLootGold`='20000' WHERE `entry`='15814'; -- Qiraji Lieutenant Jo-rel (15000MinG) (25000MaxG) https://www.wowhead.com/tbc/npc=15814/qiraji-lieutenant-jo-rel
UPDATE `creature_template` SET `MinLootGold`='15000', `MaxLootGold`='30000' WHERE `entry`='15815'; -- Qiraji Captain Ka'ark (20000MinG) (40000MaxG) https://www.wowhead.com/tbc/npc=15815/qiraji-captain-kaark
UPDATE `creature_template` SET `MinLootGold`='30000', `MaxLootGold`='50000' WHERE `entry`='15816'; -- Qiraji Major He'al-ie (40000MinG) (80000MaxG) https://www.wowhead.com/tbc/npc=15816/qiraji-major-heal-ie
UPDATE `creature_template` SET `MinLootGold`='50000', `MaxLootGold`='100000' WHERE `entry`='15817'; -- Qiraji Brigadier General Pax-lish (100000MinG) (120000MaxG) https://www.wowhead.com/tbc/npc=15817/qiraji-brigadier-general-pax-lish
UPDATE `creature_template` SET `MinLootGold`='100000', `MaxLootGold`='150000' WHERE `entry`='15818'; -- Lieutenant General Nokhor (120000MinG) (180000MaxG) https://www.wowhead.com/tbc/npc=15818/lieutenant-general-nokhor
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='15852'; -- Orgrimmar Elite Shieldguard (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=15852/orgrimmar-elite-shieldguard
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='16059'; -- Theldren (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=16059/theldren
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='16080'; -- Mor Grayhoof (2139MinG) (2798MaxG) https://www.wowhead.com/classic/npc=16080/mor-grayhoof strange this one has money listed
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='16101'; -- Jarien (0MinG) (0MaxG) https://www.wowhead.com/classic/npc=16101/jarien
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='16102'; -- Sothos (0MinG) (0MaxG) https://www.wowhead.com/classic/npc=16102/sothos
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='16118'; -- Kormok (0MinG) (0MaxG) https://www.wowhead.com/classic/npc=16118/kormok
UPDATE `creature_template` SET `MinLootGold`='144', `MaxLootGold`='659' WHERE `entry`='16141'; -- Ghoul Berserker (0MinG) (600MaxG) (sample size 360)
UPDATE `creature_template` SET `MinLootGold`='186', `MaxLootGold`='615' WHERE `entry`='16143'; -- Shadow of Doom (0MinG) (0MaxG) (sample size 15)
UPDATE `creature_template` SET `MinLootGold`='148', `MaxLootGold`='660' WHERE `entry`='16298'; -- Spectral Soldier (0MinG) (600MaxG) (sample size 280)
UPDATE `creature_template` SET `MinLootGold`='144', `MaxLootGold`='658' WHERE `entry`='16299'; -- Skeletal Shocktrooper (0MinG) (600MaxG) (sample size 296)
UPDATE `creature_template` SET `MinLootGold`='482', `MaxLootGold`='558' WHERE `entry`='16380'; -- Bone Witch (0MinG) (0MaxG) (sample size 2)
UPDATE `creature_template` SET `MinLootGold`='202', `MaxLootGold`='560' WHERE `entry`='16383'; -- Flameshocker (0MinG) (600MaxG) (sample size 2)
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='16478'; -- Lieutenant Orrin (0MinG) (0MaxG) https://www.wowhead.com/classic/npc=16478/lieutenant-orrin
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='16494'; -- Lieutenant Rukag (0MinG) (0MaxG) https://www.wowhead.com/classic/npc=16494/lieutenant-rukag
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='16547'; -- Speedy (0MinG) (0MaxG) Pet
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='16548'; -- Mr. Wiggles (0MinG) (0MaxG) Pet
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='16549'; -- Whiskers the Rat (0MinG) (0MaxG) Pet

-- ===========================
-- Alterac Valley (classic and tbc templates, wotlk uses diff2 and 3 too)
UPDATE `creature_template` SET `MinLootGold`='124', `MaxLootGold`='621' WHERE `entry`='603'; -- Grimtooth (186MinG) (248MaxG) https://www.wowhead.com/tbc/npc=603/grimtooth
UPDATE `creature_template` SET `MinLootGold`='124', `MaxLootGold`='621' WHERE `entry`='22555';
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='2225'; -- https://www.wowhead.com/tbc/npc=2225/zora-guthrek
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='22661';
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='3343'; -- https://www.wowhead.com/tbc/npc=3343/grelkor
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='22650';
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='3625'; -- https://www.wowhead.com/tbc/npc=3625/rarck
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='22654';
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='4255'; -- https://www.wowhead.com/tbc/npc=4255/brogus-thunderbrew
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='22646';
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='4257'; -- Lana Thunderbrew (1298MinG) (1699MaxG) https://www.wowhead.com/tbc/npc=4257/lana-thunderbrew
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='22653';
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='5134'; -- https://www.wowhead.com/tbc/npc=5134/jonivera-farmountain
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='22651';
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='5135'; -- https://www.wowhead.com/tbc/npc=5135/svalbrad-farmountain
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='22659';
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='5139'; -- https://www.wowhead.com/tbc/npc=5139/kurdrum-barleybeard
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='22652';
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='10364'; -- https://www.wowhead.com/tbc/npc=10364/yaelika-farclaw
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='22660';
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='10367'; -- https://www.wowhead.com/tbc/npc=10367/shrye-ragefist
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='22655';
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='10981'; -- https://www.wowhead.com/tbc/npc=10981/frostwolf
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='22737';
UPDATE `creature_template` SET `MinLootGold`='124', `MaxLootGold`='761' WHERE `entry`='10982'; -- Whitewhisker Vermin (124MinG) (167MaxG) https://www.wowhead.com/tbc/npc=10982/whitewhisker-vermin
UPDATE `creature_template` SET `MinLootGold`='124', `MaxLootGold`='761' WHERE `entry`='22782';
UPDATE `creature_template` SET `MinLootGold`='152', `MaxLootGold`='761' WHERE `entry`='10983'; -- https://www.wowhead.com/tbc/npc=10983/winterax-troll
UPDATE `creature_template` SET `MinLootGold`='152', `MaxLootGold`='761' WHERE `entry`='22794';
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='10985'; -- https://www.wowhead.com/tbc/npc=10985/ice-giant
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='22626';
UPDATE `creature_template` SET `MinLootGold`='126', `MaxLootGold`='699' WHERE `entry`='10986'; -- Snowblind Harpy (196MinG) (261MaxG) (sample size 25)
UPDATE `creature_template` SET `MinLootGold`='126', `MaxLootGold`='699' WHERE `entry`='22762';
UPDATE `creature_template` SET `MinLootGold`='109', `MaxLootGold`='761' WHERE `entry`='10987'; -- Irondeep Trogg (109MinG) (148MaxG) https://www.wowhead.com/tbc/npc=10987/irondeep-trogg
UPDATE `creature_template` SET `MinLootGold`='109', `MaxLootGold`='761' WHERE `entry`='22750';
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='10990'; -- Alterac Ram (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=10990/alterac-ram
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='22727';
UPDATE `creature_template` SET `MinLootGold`='61', `MaxLootGold`='488' WHERE `entry`='10991'; -- Wildpaw Gnoll (196MinG) (261MaxG) https://www.wowhead.com/tbc/npc=10991/wildpaw-gnoll
UPDATE `creature_template` SET `MinLootGold`='61', `MaxLootGold`='488' WHERE `entry`='22785';
UPDATE `creature_template` SET `MinLootGold`='147', `MaxLootGold`='761' WHERE `entry`='11600'; -- Irondeep Shaman (147MinG) (761MaxG) https://www.wowhead.com/tbc/npc=11600/irondeep-shaman
UPDATE `creature_template` SET `MinLootGold`='147', `MaxLootGold`='761' WHERE `entry`='22747';
UPDATE `creature_template` SET `MinLootGold`='109', `MaxLootGold`='147' WHERE `entry`='11602'; -- Irondeep Skullthumper (109MinG) (147MaxG) https://www.wowhead.com/tbc/npc=11602/irondeep-skullthumper
UPDATE `creature_template` SET `MinLootGold`='109', `MaxLootGold`='147' WHERE `entry`='22748';
UPDATE `creature_template` SET `MinLootGold`='152', `MaxLootGold`='761' WHERE `entry`='11603'; -- Whitewhisker Digger (109MinG) (148MaxG) https://www.wowhead.com/tbc/npc=11603/whitewhisker-digger
UPDATE `creature_template` SET `MinLootGold`='152', `MaxLootGold`='761' WHERE `entry`='22778';
UPDATE `creature_template` SET `MinLootGold`='147', `MaxLootGold`='761' WHERE `entry`='11604'; -- Whitewhisker Geomancer (147MinG) (761MaxG) https://www.wowhead.com/tbc/npc=11604/whitewhisker-geomancer
UPDATE `creature_template` SET `MinLootGold`='147', `MaxLootGold`='761' WHERE `entry`='22779';
UPDATE `creature_template` SET `MinLootGold`='147', `MaxLootGold`='761' WHERE `entry`='11605'; -- https://www.wowhead.com/tbc/npc=11605/whitewhisker-overseer
UPDATE `creature_template` SET `MinLootGold`='147', `MaxLootGold`='761' WHERE `entry`='22780';
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='11606'; -- https://www.wowhead.com/tbc/npc=11606/whitewhisker-tunnel-rat
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='22781';
UPDATE `creature_template` SET `MinLootGold`='157', `MaxLootGold`='786' WHERE `entry`='11657'; -- https://www.wowhead.com/tbc/npc=11657/morloch
UPDATE `creature_template` SET `MinLootGold`='157', `MaxLootGold`='786' WHERE `entry`='22685';
UPDATE `creature_template` SET `MinLootGold`='122', `MaxLootGold`='638' WHERE `entry`='11675'; -- Snowblind Windcaller (182MinG) (305MaxG) (sample size 21)
UPDATE `creature_template` SET `MinLootGold`='122', `MaxLootGold`='638' WHERE `entry`='22763';
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='11676'; -- https://www.wowhead.com/tbc/npc=11676/fjordune-the-greater
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='22642';
UPDATE `creature_template` SET `MinLootGold`='152', `MaxLootGold`='761' WHERE `entry`='11677'; -- Taskmaster Snivvle (152MinG) (761MaxG) https://www.wowhead.com/tbc/npc=11677/taskmaster-snivvle
UPDATE `creature_template` SET `MinLootGold`='152', `MaxLootGold`='761' WHERE `entry`='22694';
UPDATE `creature_template` SET `MinLootGold`='61', `MaxLootGold`='675' WHERE `entry`='11678'; -- Snowblind Ambusher (198MinG) (264MaxG) https://www.wowhead.com/tbc/npc=11678/snowblind-ambusher
UPDATE `creature_template` SET `MinLootGold`='61', `MaxLootGold`='675' WHERE `entry`='22761';
UPDATE `creature_template` SET `MaxLootGold`='721' WHERE `entry`='11837'; -- Wildpaw Shaman (61MinG) (305MaxG) https://www.wowhead.com/tbc/npc=11837/wildpaw-shaman
UPDATE `creature_template` SET `MaxLootGold`='721' WHERE `entry`='22787';
UPDATE `creature_template` SET `MinLootGold`='63', `MaxLootGold`='721' WHERE `entry`='11838'; -- https://www.wowhead.com/tbc/npc=11838/wildpaw-mystic
UPDATE `creature_template` SET `MinLootGold`='63', `MaxLootGold`='721' WHERE `entry`='22786';
UPDATE `creature_template` SET `MinLootGold`='63', `MaxLootGold`='316' WHERE `entry`='11839'; -- Wildpaw Brute (125MinG) (169MaxG) https://www.wowhead.com/tbc/npc=11839/wildpaw-brute
UPDATE `creature_template` SET `MinLootGold`='63', `MaxLootGold`='316' WHERE `entry`='22784';
UPDATE `creature_template` SET `MinLootGold`='61', `MaxLootGold`='305' WHERE `entry`='11840'; -- Wildpaw Alpha (131MinG) (176MaxG) https://www.wowhead.com/tbc/npc=11840/wildpaw-alpha
UPDATE `creature_template` SET `MinLootGold`='61', `MaxLootGold`='305' WHERE `entry`='22783';
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0', `LootId` = '0' WHERE `entry`='11946'; -- https://www.wowhead.com/tbc/npc=11946/drekthar
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='22641';
DELETE FROM `creature_loot_template` WHERE `entry` = '11946';
UPDATE `creature_template` SET `MinLootGold`='900', `MaxLootGold`='3141' WHERE `entry`='11947'; -- Captain Galvangar (24055MinG) (31418MaxG) https://www.wowhead.com/tbc/npc=11947/captain-galvangar - corrupted?
UPDATE `creature_template` SET `MinLootGold`='900', `MaxLootGold`='3141' WHERE `entry`='22606';
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0', `LootId` = '0' WHERE `entry`='11948'; -- https://www.wowhead.com/tbc/npc=11948/vanndar-stormpike
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='22644';
DELETE FROM `creature_loot_template` WHERE `entry` = '11948';
UPDATE `creature_template` SET `MinLootGold`='900', `MaxLootGold`='2586' WHERE `entry`='11949'; -- Captain Balinda Stonehearth (19805MinG) (25868MaxG) https://www.wowhead.com/tbc/npc=11949/captain-balinda-stonehearth - corrupted?
UPDATE `creature_template` SET `MinLootGold`='900', `MaxLootGold`='2586' WHERE `entry`='22605';
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='11997'; -- https://www.wowhead.com/tbc/npc=11997/stormpike-herald
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='22574';
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='11998'; -- https://www.wowhead.com/tbc/npc=11998/frostwolf-herald
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='22549';
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='12047'; -- https://www.wowhead.com/tbc/npc=12047/stormpike-mountaineer
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='22657';
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='12048'; -- Alliance Sentinel (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=12048/alliance-sentinel
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='22645';
UPDATE `creature_template` SET `MinLootGold`='70', `MaxLootGold`='604' WHERE `entry`='12050'; -- Stormpike Defender (153MinG) (204MaxG) https://www.wowhead.com/tbc/npc=12050/stormpike-defender
UPDATE `creature_template` SET `MinLootGold`='70', `MaxLootGold`='604' WHERE `entry`='22690';
UPDATE `creature_template` SET `MinLootGold`='83', `MaxLootGold`='416' WHERE `entry`='12051'; -- Frostwolf Legionnaire (145MinG) (195MaxG) https://www.wowhead.com/tbc/npc=12051/frostwolf-legionnaire
UPDATE `creature_template` SET `MinLootGold`='83', `MaxLootGold`='416' WHERE `entry`='22665';
UPDATE `creature_template` SET `MinLootGold`='63', `MaxLootGold`='316' WHERE `entry`='12052'; -- Frostwolf Warrior (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=12052/frostwolf-warrior
UPDATE `creature_template` SET `MinLootGold`='63', `MaxLootGold`='316' WHERE `entry`='22649';
UPDATE `creature_template` SET `MinLootGold`='70', `MaxLootGold`='352' WHERE `entry`='12053'; -- Frostwolf Guardian (150MinG) (201MaxG) https://www.wowhead.com/tbc/npc=12053/frostwolf-guardian
UPDATE `creature_template` SET `MinLootGold`='70', `MaxLootGold`='352' WHERE `entry`='22674';
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='12096'; -- https://www.wowhead.com/tbc/npc=12096/stormpike-quartermaster
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='22658';
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='12097'; -- https://www.wowhead.com/tbc/npc=12097/frostwolf-quartermaster
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='22648';
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='12121'; -- Drakan (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=12121/drakan
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='22540';
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='12122'; -- Duros (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=12122/duros
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='22546';
UPDATE `creature_template` SET `MinLootGold`='83', `MaxLootGold`='772' WHERE `entry`='12127'; -- Stormpike Guardsman (158MinG) (211MaxG) https://www.wowhead.com/tbc/npc=12127/stormpike-guardsman
UPDATE `creature_template` SET `MinLootGold`='83', `MaxLootGold`='772' WHERE `entry`='22666';
UPDATE `creature_template` SET `MinLootGold`='156', `MaxLootGold`='780' WHERE `entry`='12156'; -- https://www.wowhead.com/tbc/npc=12156/winterax-axe-thrower
UPDATE `creature_template` SET `MinLootGold`='156', `MaxLootGold`='780' WHERE `entry`='22788';
UPDATE `creature_template` SET `MinLootGold`='157', `MaxLootGold`='786' WHERE `entry`='13078'; -- Umi Thorson (172MinG) (229MaxG) https://www.wowhead.com/tbc/npc=13078/umi-thorson
UPDATE `creature_template` SET `MinLootGold`='157', `MaxLootGold`='786' WHERE `entry`='22696';
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='13079'; -- https://www.wowhead.com/tbc/npc=13079/keetar
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='22683';
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='13080'; -- https://www.wowhead.com/tbc/npc=13080/irondeep-guard
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='22743';
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='13081'; -- https://www.wowhead.com/tbc/npc=13081/irondeep-raider
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='22746';
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='13086'; -- https://www.wowhead.com/tbc/npc=13086/aggi-rumblestomp
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='22670';
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='13087'; -- https://www.wowhead.com/tbc/npc=13087/coldmine-invader
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='22731';
UPDATE `creature_template` SET `MinLootGold`='157', `MaxLootGold`='786' WHERE `entry`='13088'; -- https://www.wowhead.com/tbc/npc=13088/masha-swiftcut
UPDATE `creature_template` SET `MinLootGold`='157', `MaxLootGold`='786' WHERE `entry`='22684';
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='13089'; -- https://www.wowhead.com/tbc/npc=13089/coldmine-guard
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='22730';
UPDATE `creature_template` SET `MinLootGold`='143', `MaxLootGold`='737' WHERE `entry`='13096'; -- Coldmine Explorer (143MinG) (713MaxG) https://www.wowhead.com/tbc/npc=13096/coldmine-explorer
UPDATE `creature_template` SET `MinLootGold`='143', `MaxLootGold`='737' WHERE `entry`='22729';
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='13097'; -- https://www.wowhead.com/tbc/npc=13097/coldmine-surveyor
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='22734';
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='13098'; -- https://www.wowhead.com/tbc/npc=13098/irondeep-surveyor
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='22749';
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='13099'; -- https://www.wowhead.com/tbc/npc=13099/irondeep-explorer
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='22741';
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='13116'; -- https://www.wowhead.com/tbc/npc=13116/alliance-spirit-guide
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='22526';
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='13117'; -- https://www.wowhead.com/tbc/npc=13117/horde-spirit-guide
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='22558';
UPDATE `creature_template` SET `MinLootGold`='873', `MaxLootGold`='2392' WHERE `entry`='13137'; -- Lieutenant Rugba (2392MinG) (3129MaxG) https://www.wowhead.com/tbc/npc=13137/lieutenant-rugba#abilities
UPDATE `creature_template` SET `MinLootGold`='873', `MaxLootGold`='2392' WHERE `entry`='22707';
UPDATE `creature_template` SET `MinLootGold`='812', `MaxLootGold`='2392' WHERE `entry`='13138'; -- Lieutenant Spencer (2392MinG) (3129MaxG) https://www.wowhead.com/tbc/npc=13138/lieutenant-spencer#abilities
UPDATE `creature_template` SET `MinLootGold`='812', `MaxLootGold`='2392' WHERE `entry`='22708';
UPDATE `creature_template` SET `MinLootGold`='864', `MaxLootGold`='3161' WHERE `entry`='13139'; -- Commander Randolph (3161MinG) (4132MaxG) https://www.wowhead.com/tbc/npc=13139/commander-randolph
UPDATE `creature_template` SET `MinLootGold`='864', `MaxLootGold`='3161' WHERE `entry`='22620';
UPDATE `creature_template` SET `MinLootGold`='886', `MaxLootGold`='3161' WHERE `entry`='13140'; -- Commander Dardosh (3161MinG) (4132MaxG) https://www.wowhead.com/tbc/npc=13140/commander-dardosh
UPDATE `creature_template` SET `MinLootGold`='886', `MaxLootGold`='3161' WHERE `entry`='22613';
UPDATE `creature_template` SET `MinLootGold`='873', `MaxLootGold`='2435' WHERE `entry`='13143'; -- Lieutenant Stronghoof (2435MinG) (3184MaxG) https://www.wowhead.com/tbc/npc=13143/lieutenant-stronghoof
UPDATE `creature_template` SET `MinLootGold`='873', `MaxLootGold`='2435' WHERE `entry`='22710';
UPDATE `creature_template` SET `MinLootGold`='858', `MaxLootGold`='2392' WHERE `entry`='13144'; -- Lieutenant Vol'talar (2392MinG) (3129MaxG) https://www.wowhead.com/tbc/npc=13144/lieutenant-voltalar
UPDATE `creature_template` SET `MinLootGold`='858', `MaxLootGold`='2392' WHERE `entry`='22711';
UPDATE `creature_template` SET `MinLootGold`='858', `MaxLootGold`='2435' WHERE `entry`='13145'; -- Lieutenant Grummus (2435MinG) (3184MaxG) https://www.wowhead.com/tbc/npc=13145/lieutenant-grummus
UPDATE `creature_template` SET `MinLootGold`='858', `MaxLootGold`='2435' WHERE `entry`='22701';
UPDATE `creature_template` SET `MinLootGold`='858', `MaxLootGold`='2392' WHERE `entry`='13146'; -- Lieutenant Murp (2392MinG) (3129MaxG) https://www.wowhead.com/tbc/npc=13146/lieutenant-murp
UPDATE `creature_template` SET `MinLootGold`='858', `MaxLootGold`='2392' WHERE `entry`='22706';
UPDATE `creature_template` SET `MinLootGold`='844', `MaxLootGold`='2392' WHERE `entry`='13147'; -- Lieutenant Lewis (2392MinG) (3129MaxG) https://www.wowhead.com/tbc/npc=13147/lieutenant-lewis
UPDATE `creature_template` SET `MinLootGold`='844', `MaxLootGold`='2392' WHERE `entry`='22703';
UPDATE `creature_template` SET `MinLootGold`='886', `MaxLootGold`='3118' WHERE `entry`='13152'; -- Commander Malgor (3118MinG) (4077MaxG) https://www.wowhead.com/tbc/npc=13152/commander-malgor
UPDATE `creature_template` SET `MinLootGold`='886', `MaxLootGold`='3118' WHERE `entry`='22617';
UPDATE `creature_template` SET `MinLootGold`='1230', `MaxLootGold`='3118' WHERE `entry`='13153'; -- Commander Mulfort (3118MinG) (4077MaxG) https://www.wowhead.com/tbc/npc=13153/commander-mulfort
UPDATE `creature_template` SET `MinLootGold`='1230', `MaxLootGold`='3118' WHERE `entry`='22619';
UPDATE `creature_template` SET `MinLootGold`='900', `MaxLootGold`='3161' WHERE `entry`='13154'; -- Commander Louis Philips (3161MinG) (4132MaxG) https://www.wowhead.com/tbc/npc=13154/commander-louis-philips
UPDATE `creature_template` SET `MinLootGold`='900', `MaxLootGold`='3161' WHERE `entry`='22616';
UPDATE `creature_template` SET `MinLootGold`='886', `MaxLootGold`='1466' WHERE `entry`='13176'; -- Smith Regzar (1119MinG) (1466MaxG) https://www.wowhead.com/tbc/npc=13176/smith-regzar
UPDATE `creature_template` SET `MinLootGold`='886', `MaxLootGold`='1466' WHERE `entry`='22571';
UPDATE `creature_template` SET `MinLootGold`='858', `MaxLootGold`='1908' WHERE `entry`='13179'; -- Wing Commander Guse (1457MinG) (1908MaxG) https://www.wowhead.com/tbc/npc=13179/wing-commander-guse
UPDATE `creature_template` SET `MinLootGold`='858', `MaxLootGold`='1908' WHERE `entry`='22721';
UPDATE `creature_template` SET `MinLootGold`='817', `MaxLootGold`='1961' WHERE `entry`='13180'; -- Wing Commander Jeztor (1498MinG) (1961MaxG) https://www.wowhead.com/tbc/npc=13180/wing-commander-jeztor
UPDATE `creature_template` SET `MinLootGold`='817', `MaxLootGold`='1961' WHERE `entry`='22697';
UPDATE `creature_template` SET `MinLootGold`='1587', `MaxLootGold`='3035' WHERE `entry`='13181'; -- Wing Commander Mulverick (1587MinG) (2077MaxG) https://www.wowhead.com/tbc/npc=13181/wing-commander-mulverick
UPDATE `creature_template` SET `MinLootGold`='1587', `MaxLootGold`='3035' WHERE `entry`='22598';
UPDATE `creature_template` SET `MinLootGold`='817', `MaxLootGold`='1129' WHERE `entry`='13216'; -- Gaelden Hammersmith (861MinG) (1129MaxG) https://www.wowhead.com/tbc/npc=13216/gaelden-hammersmith
UPDATE `creature_template` SET `MinLootGold`='817', `MaxLootGold`='1129' WHERE `entry`='22680';
UPDATE `creature_template` SET `MinLootGold`='817', `MaxLootGold`='1517' WHERE `entry`='13218'; -- Grunnda Wolfheart (1158MinG) (1517MaxG) https://www.wowhead.com/tbc/npc=13218/grunnda-wolfheart
UPDATE `creature_template` SET `MinLootGold`='817', `MaxLootGold`='1517' WHERE `entry`='22681';
UPDATE `creature_template` SET `MinLootGold`='694', `MaxLootGold`='1911' WHERE `entry`='13236'; -- Primalist Thurloga (694MinG) (911MaxG) https://www.wowhead.com/tbc/npc=13236/primalist-thurloga
UPDATE `creature_template` SET `MinLootGold`='694', `MaxLootGold`='1911' WHERE `entry`='22568';
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='13256'; -- Lokholar the Ice Lord (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=13256/lokholar-the-ice-lord
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='22629';
UPDATE `creature_template` SET `MinLootGold`='1', `MaxLootGold`='886' WHERE `entry`='13257'; -- Murgot Deepforge (3032MinG) (3964MaxG) https://www.wowhead.com/tbc/npc=13257/murgot-deepforge
UPDATE `creature_template` SET `MinLootGold`='1', `MaxLootGold`='886' WHERE `entry`='22567';
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='13281'; -- https://www.wowhead.com/tbc/npc=13281/furis
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='22553';
UPDATE `creature_template` SET `MinLootGold`='903', `MaxLootGold`='1786' WHERE `entry`='13284'; -- Frostwolf Shaman (903MinG) (1184MaxG) https://www.wowhead.com/tbc/npc=13284/frostwolf-shaman
UPDATE `creature_template` SET `MinLootGold`='903', `MaxLootGold`='1786' WHERE `entry`='22678';
UPDATE `creature_template` SET `MinLootGold`='742', `MaxLootGold`='3129' WHERE `entry`='13296'; -- Lieutenant Largent (2392MinG) (3129MaxG) https://www.wowhead.com/tbc/npc=13296/lieutenant-largent
UPDATE `creature_template` SET `MinLootGold`='742', `MaxLootGold`='3129' WHERE `entry`='22702';
UPDATE `creature_template` SET `MinLootGold`='1175', `MaxLootGold`='3129' WHERE `entry`='13297'; -- Lieutenant Stouthandle (2392MinG) (3129MaxG) https://www.wowhead.com/tbc/npc=13297/lieutenant-stouthandle
UPDATE `creature_template` SET `MinLootGold`='1175', `MaxLootGold`='3129' WHERE `entry`='22709';
UPDATE `creature_template` SET `MinLootGold`='812', `MaxLootGold`='3129' WHERE `entry`='13298'; -- Lieutenant Greywand (2392MinG) (3129MaxG) https://www.wowhead.com/tbc/npc=13298/lieutenant-greywand
UPDATE `creature_template` SET `MinLootGold`='812', `MaxLootGold`='3129' WHERE `entry`='22700';
UPDATE `creature_template` SET `MinLootGold`='786', `MaxLootGold`='3129' WHERE `entry`='13299'; -- Lieutenant Lonadin (2392MinG) (3129MaxG) https://www.wowhead.com/tbc/npc=13299/lieutenant-lonadin
UPDATE `creature_template` SET `MinLootGold`='786', `MaxLootGold`='3129' WHERE `entry`='22704';
UPDATE `creature_template` SET `MinLootGold`='812', `MaxLootGold`='3129' WHERE `entry`='13300'; -- Lieutenant Mancuso (2392MinG) (3129MaxG) https://www.wowhead.com/tbc/npc=13300/lieutenant-mancuso
UPDATE `creature_template` SET `MinLootGold`='812', `MaxLootGold`='3129' WHERE `entry`='22705';
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='13316'; -- https://www.wowhead.com/tbc/npc=13316/coldmine-peon
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='22733';
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='13317'; -- https://www.wowhead.com/tbc/npc=13317/coldmine-miner
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='22732';
UPDATE `creature_template` SET `MinLootGold`='812', `MaxLootGold`='4132' WHERE `entry`='13318'; -- Commander Mortimer (3161MinG) (4132MaxG) https://www.wowhead.com/tbc/npc=13318/commander-mortimer
UPDATE `creature_template` SET `MinLootGold`='812', `MaxLootGold`='4132' WHERE `entry`='22618';
UPDATE `creature_template` SET `MinLootGold`='858', `MaxLootGold`='2301' WHERE `entry`='13319'; -- Commander Duffy (1758MinG) (2301MaxG) https://www.wowhead.com/tbc/npc=13319/commander-duffy
UPDATE `creature_template` SET `MinLootGold`='858', `MaxLootGold`='2301' WHERE `entry`='22614';
UPDATE `creature_template` SET `MinLootGold`='886', `MaxLootGold`='4077' WHERE `entry`='13320'; -- Commander Karl Philips (3118MinG) (4077MaxG) https://www.wowhead.com/tbc/npc=13320/commander-karl-philips
UPDATE `creature_template` SET `MinLootGold`='886', `MaxLootGold`='4077' WHERE `entry`='22615';
UPDATE `creature_template` SET `MinLootGold`='63', `MaxLootGold`='716' WHERE `entry`='13324'; -- Seasoned Guardsman (178MinG) (237MaxG) https://www.wowhead.com/tbc/npc=13324/seasoned-guardsman
UPDATE `creature_template` SET `MinLootGold`='63', `MaxLootGold`='716' WHERE `entry`='22687';
UPDATE `creature_template` SET `MinLootGold`='63', `MaxLootGold`='716' WHERE `entry`='13325'; -- Seasoned Mountaineer (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=13325/seasoned-mountaineer
UPDATE `creature_template` SET `MinLootGold`='63', `MaxLootGold`='716' WHERE `entry`='22662';
UPDATE `creature_template` SET `MinLootGold`='70', `MaxLootGold`='752' WHERE `entry`='13326'; -- Seasoned Defender (194MinG) (258MaxG) https://www.wowhead.com/tbc/npc=13326/seasoned-defender
UPDATE `creature_template` SET `MinLootGold`='70', `MaxLootGold`='752' WHERE `entry`='22714';
UPDATE `creature_template` SET `MinLootGold`='63', `MaxLootGold`='716' WHERE `entry`='13327'; -- Seasoned Sentinel (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=13327/seasoned-sentinel
UPDATE `creature_template` SET `MinLootGold`='63', `MaxLootGold`='716' WHERE `entry`='22663';
UPDATE `creature_template` SET `MinLootGold`='70', `MaxLootGold`='752' WHERE `entry`='13328'; -- Seasoned Guardian (181MinG) (241MaxG) https://www.wowhead.com/tbc/npc=13328/seasoned-guardian
UPDATE `creature_template` SET `MinLootGold`='70', `MaxLootGold`='752' WHERE `entry`='22715';
UPDATE `creature_template` SET `MinLootGold`='65', `MaxLootGold`='726' WHERE `entry`='13329'; -- Seasoned Legionnaire (170MinG) (226MaxG) https://www.wowhead.com/tbc/npc=13329/seasoned-legionnaire
UPDATE `creature_template` SET `MinLootGold`='65', `MaxLootGold`='726' WHERE `entry`='22688';
UPDATE `creature_template` SET `MinLootGold`='63', `MaxLootGold`='716' WHERE `entry`='13330'; -- Seasoned Warrior (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=13330/seasoned-warrior
UPDATE `creature_template` SET `MinLootGold`='63', `MaxLootGold`='716' WHERE `entry`='22664';
UPDATE `creature_template` SET `MinLootGold`='73', `MaxLootGold`='767' WHERE `entry`='13331'; -- Veteran Defender (169MinG) (226MaxG) https://www.wowhead.com/tbc/npc=13331/veteran-defender
UPDATE `creature_template` SET `MinLootGold`='73', `MaxLootGold`='767' WHERE `entry`='22588';
UPDATE `creature_template` SET `MinLootGold`='73', `MaxLootGold`='767' WHERE `entry`='13332'; -- Veteran Guardian (163MinG) (217MaxG) https://www.wowhead.com/tbc/npc=13332/veteran-guardian
UPDATE `creature_template` SET `MinLootGold`='73', `MaxLootGold`='767' WHERE `entry`='22589';
UPDATE `creature_template` SET `MinLootGold`='67', `MaxLootGold`='733' WHERE `entry`='13333'; -- Veteran Guardsman (156MinG) (208MaxG) https://www.wowhead.com/tbc/npc=13333/veteran-guardsman
UPDATE `creature_template` SET `MinLootGold`='67', `MaxLootGold`='733' WHERE `entry`='22719';
UPDATE `creature_template` SET `MinLootGold`='67', `MaxLootGold`='733' WHERE `entry`='13334'; -- Veteran Legionnaire (194MinG) (258MaxG) https://www.wowhead.com/tbc/npc=13334/veteran-legionnaire
UPDATE `creature_template` SET `MinLootGold`='67', `MaxLootGold`='733' WHERE `entry`='22720';
UPDATE `creature_template` SET `MinLootGold`='67', `MaxLootGold`='733' WHERE `entry`='13335'; -- Veteran Mountaineer (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=13335/veteran-mountaineer
UPDATE `creature_template` SET `MinLootGold`='67', `MaxLootGold`='733' WHERE `entry`='22667';
UPDATE `creature_template` SET `MinLootGold`='67', `MaxLootGold`='733' WHERE `entry`='13336'; -- Veteran Sentinel (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=13336/veteran-sentinel
UPDATE `creature_template` SET `MinLootGold`='67', `MaxLootGold`='733' WHERE `entry`='22668';
UPDATE `creature_template` SET `MinLootGold`='67', `MaxLootGold`='733' WHERE `entry`='13337'; -- Veteran Warrior (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=13337/veteran-warrior
UPDATE `creature_template` SET `MinLootGold`='67', `MaxLootGold`='733' WHERE `entry`='22669';
UPDATE `creature_template` SET `MinLootGold`='157', `MaxLootGold`='792' WHERE `entry`='13356'; -- https://www.wowhead.com/tbc/npc=13356/stormpike-mine-layer
UPDATE `creature_template` SET `MinLootGold`='157', `MaxLootGold`='792' WHERE `entry`='22635';
UPDATE `creature_template` SET `MinLootGold`='157', `MaxLootGold`='792' WHERE `entry`='13357'; -- https://www.wowhead.com/tbc/npc=13357/frostwolf-mine-layer
UPDATE `creature_template` SET `MinLootGold`='157', `MaxLootGold`='792' WHERE `entry`='22624';
UPDATE `creature_template` SET `MinLootGold`='65', `MaxLootGold`='765' WHERE `entry`='13358'; -- Stormpike Bowman (260MinG) (344MaxG) https://www.wowhead.com/tbc/npc=13358/stormpike-bowman
UPDATE `creature_template` SET `MinLootGold`='65', `MaxLootGold`='765' WHERE `entry`='22766';
UPDATE `creature_template` SET `MinLootGold`='65', `MaxLootGold`='765' WHERE `entry`='13359'; -- Frostwolf Bowman (262MinG) (347MaxG) https://www.wowhead.com/tbc/npc=13359/frostwolf-bowman
UPDATE `creature_template` SET `MinLootGold`='65', `MaxLootGold`='765' WHERE `entry`='22739';
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='13378'; -- Frostwolf Shredder Unit (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=13378/frostwolf-shredder-unit
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='22550';
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='13416'; -- Stormpike Shredder Unit (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=13416/stormpike-shredder-unit
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='22576';
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='13396'; -- https://www.wowhead.com/tbc/npc=13396/irondeep-miner
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='22744';
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='13397'; -- https://www.wowhead.com/tbc/npc=13397/irondeep-peon
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='22745';
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='13419'; -- Ivus the Forest Lord (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=13419/ivus-the-forest-lord
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='22627';
UPDATE `creature_template` SET `MinLootGold`='73', `MaxLootGold`='767' WHERE `entry`='13421'; -- Champion Guardian (166MinG) (221MaxG) https://www.wowhead.com/tbc/npc=13421/champion-guardian
UPDATE `creature_template` SET `MinLootGold`='73', `MaxLootGold`='767' WHERE `entry`='22609';
UPDATE `creature_template` SET `MinLootGold`='73', `MaxLootGold`='767' WHERE `entry`='13422'; -- Champion Defender (181MinG) (241MaxG) https://www.wowhead.com/tbc/npc=13422/champion-defender
UPDATE `creature_template` SET `MinLootGold`='73', `MaxLootGold`='767' WHERE `entry`='22608';
UPDATE `creature_template` SET `MinLootGold`='67', `MaxLootGold`='733' WHERE `entry`='13424'; -- Champion Guardsman (163MinG) (217MaxG) https://www.wowhead.com/tbc/npc=13424/champion-guardsman
UPDATE `creature_template` SET `MinLootGold`='67', `MaxLootGold`='733' WHERE `entry`='22533';
UPDATE `creature_template` SET `MinLootGold`='67', `MaxLootGold`='733' WHERE `entry`='13425'; -- Champion Legionnaire (173MinG) (231MaxG) https://www.wowhead.com/tbc/npc=13425/champion-legionnaire
UPDATE `creature_template` SET `MinLootGold`='67', `MaxLootGold`='733' WHERE `entry`='22538';
UPDATE `creature_template` SET `MinLootGold`='67', `MaxLootGold`='733' WHERE `entry`='13426'; -- Champion Mountaineer (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=13426/champion-mountaineer
UPDATE `creature_template` SET `MinLootGold`='67', `MaxLootGold`='733' WHERE `entry`='22671';
UPDATE `creature_template` SET `MinLootGold`='67', `MaxLootGold`='733' WHERE `entry`='13427'; -- Champion Sentinel (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=13427/champion-sentinel
UPDATE `creature_template` SET `MinLootGold`='67', `MaxLootGold`='733' WHERE `entry`='22672';
UPDATE `creature_template` SET `MinLootGold`='67', `MaxLootGold`='733' WHERE `entry`='13428'; -- https://www.wowhead.com/tbc/npc=13428/champion-warrior
UPDATE `creature_template` SET `MinLootGold`='67', `MaxLootGold`='733' WHERE `entry`='22673';
UPDATE `creature_template` SET `MinLootGold`='761', `MaxLootGold`='2078' WHERE `entry`='13437'; -- Wing Commander Ichman (822MinG) (1078MaxG) https://www.wowhead.com/tbc/npc=13437/wing-commander-ichman
UPDATE `creature_template` SET `MinLootGold`='761', `MaxLootGold`='2078' WHERE `entry`='22597';
UPDATE `creature_template` SET `MinLootGold`='858', `MaxLootGold`='1795' WHERE `entry`='13438'; -- Wing Commander Slidore (1371MinG) (1795MaxG) https://www.wowhead.com/tbc/npc=13438/wing-commander-slidore
UPDATE `creature_template` SET `MinLootGold`='858', `MaxLootGold`='1795' WHERE `entry`='22698';
UPDATE `creature_template` SET `MinLootGold`='830', `MaxLootGold`='1630' WHERE `entry`='13439'; -- Wing Commander Vipore (1245MinG) (1630MaxG) https://www.wowhead.com/tbc/npc=13439/wing-commander-vipore
UPDATE `creature_template` SET `MinLootGold`='830', `MaxLootGold`='1630' WHERE `entry`='22722';
UPDATE `creature_template` SET `MinLootGold`='152', `MaxLootGold`='761' WHERE `entry`='13440'; -- Frostwolf Wolf Rider (512MinG) (674MaxG) https://www.wowhead.com/tbc/npc=13440/frostwolf-wolf-rider
UPDATE `creature_template` SET `MinLootGold`='152', `MaxLootGold`='761' WHERE `entry`='22679';
UPDATE `creature_template` SET `MinLootGold`='414', `MaxLootGold`='886' WHERE `entry`='13441'; -- Frostwolf Wolf Rider Commander (414MinG) (545MaxG) https://www.wowhead.com/tbc/npc=13441/frostwolf-wolf-rider-commander
UPDATE `creature_template` SET `MinLootGold`='414', `MaxLootGold`='886' WHERE `entry`='22552';
UPDATE `creature_template` SET `MinLootGold`='844', `MaxLootGold`='1189' WHERE `entry`='13442'; -- Arch Druid Renferal (907MinG) (1189MaxG) https://www.wowhead.com/tbc/npc=13442/arch-druid-renferal
UPDATE `creature_template` SET `MinLootGold`='844', `MaxLootGold`='1189' WHERE `entry`='22527';
UPDATE `creature_template` SET `MinLootGold`='812', `MaxLootGold`='1898' WHERE `entry`='13443'; -- Druid of the Grove (949MinG) (1244MaxG) https://www.wowhead.com/tbc/npc=13443/druid-of-the-grove
UPDATE `creature_template` SET `MinLootGold`='812', `MaxLootGold`='1898' WHERE `entry`='22541';
UPDATE `creature_template` SET `MinLootGold`='173', `MaxLootGold`='864' WHERE `entry`='13446'; -- Field Marshal Teravaine (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=13446/field-marshal-teravaine
UPDATE `creature_template` SET `MinLootGold`='173', `MaxLootGold`='864' WHERE `entry`='22621';
UPDATE `creature_template` SET `MinLootGold`='873', `MaxLootGold`='1295' WHERE `entry`='13447'; -- Corporal Noreg Stormpike (988MinG) (1295MaxG) https://www.wowhead.com/tbc/npc=13447/corporal-noreg-stormpike
UPDATE `creature_template` SET `MinLootGold`='873', `MaxLootGold`='1295' WHERE `entry`='22735';
UPDATE `creature_template` SET `MinLootGold`='752', `MaxLootGold`='1396' WHERE `entry`='13448'; -- Sergeant Yazra Bloodsnarl (300MinG) (396MaxG) https://www.wowhead.com/tbc/npc=13448/sergeant-yazra-bloodsnarl
UPDATE `creature_template` SET `MinLootGold`='752', `MaxLootGold`='1396' WHERE `entry`='22760';
UPDATE `creature_template` SET `MinLootGold`='1', `MaxLootGold`='858' WHERE `entry`='13449'; -- Warmaster Garrick (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=13449/warmaster-garrick
UPDATE `creature_template` SET `MinLootGold`='1', `MaxLootGold`='858' WHERE `entry`='22639';
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='13496'; -- https://www.wowhead.com/tbc/npc=13496/risen-ancient
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='22632';
UPDATE `creature_template` SET `MinLootGold`='65', `MaxLootGold`='726' WHERE `entry`='13516'; -- Frostwolf Outrunner (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=13516/frostwolf-outrunner
UPDATE `creature_template` SET `MinLootGold`='65', `MaxLootGold`='726' WHERE `entry`='22675';
UPDATE `creature_template` SET `MinLootGold`='65', `MaxLootGold`='726' WHERE `entry`='13517'; -- Seasoned Outrunner (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=13517/seasoned-outrunner
UPDATE `creature_template` SET `MinLootGold`='65', `MaxLootGold`='726' WHERE `entry`='22716';
UPDATE `creature_template` SET `MinLootGold`='65', `MaxLootGold`='726' WHERE `entry`='13518'; -- Veteran Outrunner (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=13518/veteran-outrunner
UPDATE `creature_template` SET `MinLootGold`='65', `MaxLootGold`='726' WHERE `entry`='22590';
UPDATE `creature_template` SET `MinLootGold`='65', `MaxLootGold`='726' WHERE `entry`='13519'; -- Champion Outrunner (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=13519/champion-outrunner
UPDATE `creature_template` SET `MinLootGold`='65', `MaxLootGold`='726' WHERE `entry`='22610';
UPDATE `creature_template` SET `MinLootGold`='65', `MaxLootGold`='726' WHERE `entry`='13520'; -- Stormpike Ranger (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=13520/stormpike-ranger
UPDATE `creature_template` SET `MinLootGold`='65', `MaxLootGold`='726' WHERE `entry`='22692';
UPDATE `creature_template` SET `MinLootGold`='65', `MaxLootGold`='726' WHERE `entry`='13521'; -- Seasoned Ranger (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=13521/seasoned-ranger
UPDATE `creature_template` SET `MinLootGold`='65', `MaxLootGold`='726' WHERE `entry`='22717';
UPDATE `creature_template` SET `MinLootGold`='65', `MaxLootGold`='726' WHERE `entry`='13522'; -- Veteran Ranger (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=13522/veteran-ranger
UPDATE `creature_template` SET `MinLootGold`='65', `MaxLootGold`='726' WHERE `entry`='22591';
UPDATE `creature_template` SET `MinLootGold`='65', `MaxLootGold`='726' WHERE `entry`='13523'; -- Champion Ranger (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=13523/champion-ranger
UPDATE `creature_template` SET `MinLootGold`='65', `MaxLootGold`='726' WHERE `entry`='22611';
UPDATE `creature_template` SET `MinLootGold`='143', `MaxLootGold`='713' WHERE `entry`='13524'; -- https://www.wowhead.com/tbc/npc=13524/stormpike-commando
UPDATE `creature_template` SET `MinLootGold`='143', `MaxLootGold`='713' WHERE `entry`='22689';
UPDATE `creature_template` SET `MinLootGold`='162', `MaxLootGold`='812' WHERE `entry`='13525'; -- Seasoned Commando (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=13525/seasoned-commando
UPDATE `creature_template` SET `MinLootGold`='162', `MaxLootGold`='812' WHERE `entry`='22713';
UPDATE `creature_template` SET `MinLootGold`='152', `MaxLootGold`='761' WHERE `entry`='13526'; -- Veteran Commando (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=13526/veteran-commando
UPDATE `creature_template` SET `MinLootGold`='152', `MaxLootGold`='761' WHERE `entry`='22587';
UPDATE `creature_template` SET `MinLootGold`='162', `MaxLootGold`='812' WHERE `entry`='13527'; -- Champion Commando (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=13527/champion-commando
UPDATE `creature_template` SET `MinLootGold`='162', `MaxLootGold`='812' WHERE `entry`='22607';
UPDATE `creature_template` SET `MinLootGold`='157', `MaxLootGold`='786' WHERE `entry`='13528'; -- Frostwolf Reaver (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=13528/frostwolf-reaver
UPDATE `creature_template` SET `MinLootGold`='157', `MaxLootGold`='786' WHERE `entry`='22676';
UPDATE `creature_template` SET `MinLootGold`='157', `MaxLootGold`='786' WHERE `entry`='13529'; -- https://www.wowhead.com/tbc/npc=13529/seasoned-reaver
UPDATE `creature_template` SET `MinLootGold`='157', `MaxLootGold`='786' WHERE `entry`='22718';
UPDATE `creature_template` SET `MinLootGold`='168', `MaxLootGold`='838' WHERE `entry`='13530'; -- Veteran Reaver (567MinG) (745MaxG) https://www.wowhead.com/tbc/npc=13530/veteran-reaver
UPDATE `creature_template` SET `MinLootGold`='168', `MaxLootGold`='838' WHERE `entry`='22592';
UPDATE `creature_template` SET `MinLootGold`='1', `MaxLootGold`='900' WHERE `entry`='13531'; -- Champion Reaver (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=13531/champion-reaver
UPDATE `creature_template` SET `MinLootGold`='1', `MaxLootGold`='900' WHERE `entry`='22612';
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='13534'; -- https://www.wowhead.com/tbc/npc=13534/seasoned-coldmine-guard
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='22752';
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='13535'; -- https://www.wowhead.com/tbc/npc=13535/veteran-coldmine-guard
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='22771';
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='13536'; -- https://www.wowhead.com/tbc/npc=13536/champion-coldmine-guard
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='22530';
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='13537'; -- https://www.wowhead.com/tbc/npc=13537/seasoned-coldmine-surveyor
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='22754';
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='13538'; -- https://www.wowhead.com/tbc/npc=13538/veteran-coldmine-surveyor
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='22773';
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='13539'; -- https://www.wowhead.com/tbc/npc=13539/champion-coldmine-surveyor
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='22532';
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='13540'; -- https://www.wowhead.com/tbc/npc=13540/seasoned-irondeep-explorer
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='22755';
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='13541'; -- https://www.wowhead.com/tbc/npc=13541/veteran-irondeep-explorer#models
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='22774';
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='13542'; -- https://www.wowhead.com/tbc/npc=13542/champion-irondeep-explorer
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='22534';
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='13543'; -- https://www.wowhead.com/tbc/npc=13543/seasoned-irondeep-raider
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='22757';
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='13544'; -- https://www.wowhead.com/tbc/npc=13544/veteran-irondeep-raider
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='22776';
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='13545'; -- https://www.wowhead.com/tbc/npc=13545/champion-irondeep-raider
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='22536';
UPDATE `creature_template` SET `MinLootGold`='152' WHERE `entry`='13546'; -- Seasoned Coldmine Explorer (161MinG) (761MaxG) https://www.wowhead.com/tbc/npc=13546/seasoned-coldmine-explorer
UPDATE `creature_template` SET `MinLootGold`='152' WHERE `entry`='22751';
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='13547'; -- https://www.wowhead.com/tbc/npc=13547/veteran-coldmine-explorer
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='22770';
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='13548'; -- https://www.wowhead.com/tbc/npc=13548/champion-coldmine-explorer
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='22529';
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='13549'; -- https://www.wowhead.com/tbc/npc=13549/seasoned-coldmine-invader
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='22753';
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='13550'; -- https://www.wowhead.com/tbc/npc=13550/veteran-coldmine-invader
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='22772';
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='13551'; -- https://www.wowhead.com/tbc/npc=13551/champion-coldmine-invader
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='22531';
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='13552'; -- https://www.wowhead.com/tbc/npc=13552/seasoned-irondeep-guard
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='22756';
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='13553'; -- https://www.wowhead.com/tbc/npc=13553/veteran-irondeep-guard
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='22775';
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='13554'; -- https://www.wowhead.com/tbc/npc=13554/champion-irondeep-guard
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='22535';
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='13555'; -- https://www.wowhead.com/tbc/npc=13555/seasoned-irondeep-surveyor
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='22758';
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='13556'; -- https://www.wowhead.com/tbc/npc=13556/veteran-irondeep-surveyor
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='22777';
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='13557'; -- https://www.wowhead.com/tbc/npc=13557/champion-irondeep-surveyor
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='22537';
UPDATE `creature_template` SET `MinLootGold`='162', `MaxLootGold`='812' WHERE `entry`='13576'; -- Stormpike Ram Rider (393MinG) (518MaxG) https://www.wowhead.com/tbc/npc=13576/stormpike-ram-rider
UPDATE `creature_template` SET `MinLootGold`='162', `MaxLootGold`='812' WHERE `entry`='22691';
UPDATE `creature_template` SET `MinLootGold`='886', `MaxLootGold`='3298' WHERE `entry`='13577'; -- Stormpike Ram Rider Commander (2522MinG) (3298MaxG) https://www.wowhead.com/tbc/npc=13577/stormpike-ram-rider-commander
UPDATE `creature_template` SET `MinLootGold`='886', `MaxLootGold`='3298' WHERE `entry`='22575';
UPDATE `creature_template` SET `MinLootGold`='1', `MaxLootGold`='873' WHERE `entry`='13597'; -- Frostwolf Explosives Expert (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=13597/frostwolf-explosives-expert
UPDATE `creature_template` SET `MinLootGold`='1', `MaxLootGold`='873' WHERE `entry`='22623';
UPDATE `creature_template` SET `MinLootGold`='1', `MaxLootGold`='873' WHERE `entry`='13598'; -- Stormpike Explosives Expert (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=13598/stormpike-explosives-expert
UPDATE `creature_template` SET `MinLootGold`='1', `MaxLootGold`='873' WHERE `entry`='22634';
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='13616'; -- Frostwolf Stable Master (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=13616/frostwolf-stable-master
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='22551';
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='13617'; -- Stormpike Stable Master (4392MinG) (5740MaxG) https://www.wowhead.com/tbc/npc=13617/stormpike-stable-master
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='22577';
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='13618'; -- Stabled Frostwolf (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=13618/stabled-frostwolf
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='22765';
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='13676'; -- Stabled Alterac Ram (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=13676/stabled-alterac-ram
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='22764';
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='13777'; -- https://www.wowhead.com/tbc/npc=13777/sergeant-durgen-stormpike
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='22759';
UPDATE `creature_template` SET `MinLootGold`='1204', `MaxLootGold`='1577' WHERE `entry`='13797'; -- Mountaineer Boombellow (1204MinG) (1577MaxG) https://www.wowhead.com/tbc/npc=13797/mountaineer-boombellow
UPDATE `creature_template` SET `MinLootGold`='1204', `MaxLootGold`='1577' WHERE `entry`='22724';
UPDATE `creature_template` SET `MinLootGold`='864', `MaxLootGold`='1133' WHERE `entry`='13798'; -- Jotek (864MinG) (1133MaxG) https://www.wowhead.com/tbc/npc=13798/jotek
UPDATE `creature_template` SET `MinLootGold`='864', `MaxLootGold`='1133' WHERE `entry`='22723';
UPDATE `creature_template` SET `MinLootGold`='204', `MaxLootGold`='271' WHERE `entry`='13816'; -- Prospector Stonehewer (204MinG) (271MaxG) https://www.wowhead.com/tbc/npc=13816/prospector-stonehewer
UPDATE `creature_template` SET `MinLootGold`='204', `MaxLootGold`='271' WHERE `entry`='22630';
UPDATE `creature_template` SET `MinLootGold`='152', `MaxLootGold`='761' WHERE `entry`='13956'; -- https://www.wowhead.com/tbc/npc=13956/winterax-mystic
UPDATE `creature_template` SET `MinLootGold`='152', `MaxLootGold`='761' WHERE `entry`='22790';
UPDATE `creature_template` SET `MinLootGold`='162', `MaxLootGold`='812' WHERE `entry`='13957'; -- https://www.wowhead.com/tbc/npc=13957/winterax-warrior
UPDATE `creature_template` SET `MinLootGold`='162', `MaxLootGold`='812' WHERE `entry`='22795';
UPDATE `creature_template` SET `MinLootGold`='157', `MaxLootGold`='786' WHERE `entry`='13958'; -- https://www.wowhead.com/tbc/npc=13958/winterax-seer
UPDATE `creature_template` SET `MinLootGold`='157', `MaxLootGold`='786' WHERE `entry`='22791';
UPDATE `creature_template` SET `MinLootGold`='2226', `MaxLootGold`='3066' WHERE `entry`='13959'; -- Alterac Yeti (2226MinG) (2911MaxG) https://www.wowhead.com/tbc/npc=13959/alterac-yeti
UPDATE `creature_template` SET `MinLootGold`='2226', `MaxLootGold`='3066' WHERE `entry`='22604';
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='13977'; -- https://www.wowhead.com/tbc/npc=13977/gashnak-the-cannibal
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='22625';
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='14016'; -- https://www.wowhead.com/tbc/npc=14016/ushalac-the-gloomdweller
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='22637';
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='14017'; -- https://www.wowhead.com/tbc/npc=14017/withered-troll
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='22797';
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='14018'; -- https://www.wowhead.com/tbc/npc=14018/rezrelek
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='22631';
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='14019'; -- https://www.wowhead.com/tbc/npc=14019/tatterhide
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='22636';
UPDATE `creature_template` SET `MinLootGold`='41', `MaxLootGold`='204' WHERE `entry`='14021'; -- Winterax Sentry (41MinG) (204MaxG) https://www.wowhead.com/tbc/npc=14021/winterax-sentry
UPDATE `creature_template` SET `MinLootGold`='41', `MaxLootGold`='204' WHERE `entry`='22599';
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='14026'; -- Trigger Guse - Vipore
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='22581';
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='14027';
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='22584';
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='14028';
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='22583';
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='14029';
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='22582';
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='14030';
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='22585';
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='14031';
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='22586';
UPDATE `creature_template` SET `MinLootGold`='183', `MaxLootGold`='778' WHERE `entry`='14185'; -- Najak Hexxen (183MinG) (244MaxG) https://www.wowhead.com/tbc/npc=14185/najak-hexxen
UPDATE `creature_template` SET `MinLootGold`='183', `MaxLootGold`='778' WHERE `entry`='22712';
UPDATE `creature_template` SET `MinLootGold`='207', `MaxLootGold`='752' WHERE `entry`='14186'; -- Ravak Grimtotem (207MinG) (276MaxG) https://www.wowhead.com/tbc/npc=14186/ravak-grimtotem
UPDATE `creature_template` SET `MinLootGold`='207', `MaxLootGold`='752' WHERE `entry`='22569';
UPDATE `creature_template` SET `MinLootGold`='207', `MaxLootGold`='778' WHERE `entry`='14187'; -- Athramanis (207MinG) (276MaxG) https://www.wowhead.com/tbc/npc=14187/athramanis
UPDATE `creature_template` SET `MinLootGold`='207', `MaxLootGold`='778' WHERE `entry`='22528';
UPDATE `creature_template` SET `MinLootGold`='196', `MaxLootGold`='778' WHERE `entry`='14188'; -- Dirk Swindle (196MinG) (261MaxG) https://www.wowhead.com/tbc/npc=14188/dirk-swindle
UPDATE `creature_template` SET `MinLootGold`='196', `MaxLootGold`='778' WHERE `entry`='22699';
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='14282'; -- https://www.wowhead.com/tbc/npc=14282/frostwolf-bloodhound
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='22738';
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='14283'; -- Stormpike Owl (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=14283/stormpike-owl
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='22767';
UPDATE `creature_template` SET `MinLootGold`='377', `MaxLootGold`='1569' WHERE `entry`='14284'; -- https://www.wowhead.com/tbc/npc=14284/stormpike-battleguard
UPDATE `creature_template` SET `MinLootGold`='377', `MaxLootGold`='1569' WHERE `entry`='22633';
UPDATE `creature_template` SET `MinLootGold`='377', `MaxLootGold`='1569' WHERE `entry`='14285'; -- https://www.wowhead.com/tbc/npc=14285/frostwolf-battleguard
UPDATE `creature_template` SET `MinLootGold`='377', `MaxLootGold`='1569' WHERE `entry`='22622';
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='14762'; -- Marshals
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='22542';
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='14763';
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='22544';
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='14764';
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='22561';
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='14765';
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='22572';
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='14766';
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='22559';
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='14767';
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='22579';
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='14768';
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='22547';
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='14769';
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='22595';
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='14770';
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='22543';
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='14771';
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='22545';
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='14772'; -- East Frostwolf Warmaster (6049MinG) (7904MaxG) https://www.wowhead.com/tbc/npc=14772/east-frostwolf-warmaster
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='22548';
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='14773';
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='22560';
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='14774'; -- Icewing Warmaster (6049MinG) (7904MaxG) https://www.wowhead.com/tbc/npc=14774/icewing-warmaster
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='22562';
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='14775'; -- Stonehearth Warmaster (6049MinG) (7904MaxG) https://www.wowhead.com/tbc/npc=14775/stonehearth-warmaster
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='22573';
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='14776';
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='22580';
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='14777';
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='22596';
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='14848'; -- https://www.wowhead.com/tbc/npc=14848/herald
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='22557';
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='10989'; -- Blizzard Elemental (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=10989/blizzard-elemental
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='22728';

-- ===========================
-- Naxxramas (Attention cmangoswotlk)
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='15979'; -- Tomb Horror (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=15979/tomb-horror
UPDATE `creature_template` SET `MaxLootGold`='9596' WHERE `entry`='15980'; -- Naxxramas Cultist (1206MinG) (1579MaxG) https://www.wowhead.com/tbc/npc=15980/naxxramas-cultist
UPDATE `creature_template` SET `MaxLootGold`='9661' WHERE `entry`='15981'; -- Naxxramas Acolyte (1248MinG) (1635MaxG) https://www.wowhead.com/tbc/npc=15981/naxxramas-acolyte
UPDATE `creature_template` SET `MaxLootGold`='9694' WHERE `entry`='16020'; -- Mad Scientist (2226MinG) (2911MaxG) https://www.wowhead.com/tbc/npc=16020/mad-scientist
UPDATE `creature_template` SET `MaxLootGold`='9706' WHERE `entry`='16021'; -- Living Monstrosity (2015MinG) (2636MaxG) https://www.wowhead.com/tbc/npc=16021/living-monstrosity
UPDATE `creature_template` SET `MaxLootGold`='9796' WHERE `entry`='16022'; -- Surgical Assistant (1842MinG) (2410MaxG) https://www.wowhead.com/tbc/npc=16022/surgical-assistant
UPDATE `creature_template` SET `MinLootGold`='6445' WHERE `entry`='16025'; -- Stitched Spewer (6479MinG) (8466MaxG) https://www.wowhead.com/tbc/npc=16025/stitched-spewer
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='16036'; -- Frenzied Bat (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=16036/frenzied-bat
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='16064'; -- Thane Korth'azz (49555MinG) (64718MaxG) https://www.wowhead.com/tbc/npc=16064/thane-korthazz
UPDATE `creature_template` SET `MaxLootGold`='9644' WHERE `entry`='16145'; -- Deathknight Captain (4138MinG) (5409MaxG) https://www.wowhead.com/tbc/npc=16145/deathknight-captain
UPDATE `creature_template` SET `MaxLootGold`='8599' WHERE `entry`='16154'; -- Risen Deathknight (1163MinG) (1524MaxG) https://www.wowhead.com/tbc/npc=16154/risen-deathknight
UPDATE `creature_template` SET `MaxLootGold`='8752' WHERE `entry`='16163'; -- Deathknight Cavalier (4776MinG) (6241MaxG) https://www.wowhead.com/tbc/npc=16163/deathknight-cavalier
UPDATE `creature_template` SET `MaxLootGold`='5231' WHERE `entry`='16165'; -- Necro Knight (1801MinG) (2356MaxG) https://www.wowhead.com/tbc/npc=16165/necro-knight
UPDATE `creature_template` SET `MaxLootGold`='7378' WHERE `entry`='16193'; -- Skeletal Smith (2226MinG) (2911MaxG) https://www.wowhead.com/tbc/npc=16193/skeletal-smith
UPDATE `creature_template` SET `MinLootGold`='6690', `MaxLootGold`='9414' WHERE `entry`='16194'; -- Unholy Axe (6500MinG) (6800MaxG) (sample size 1) - https://www.wowhead.com/tbc/npc=16194/unholy-axe
UPDATE `creature_template` SET `MinLootGold`='6690', `MaxLootGold`='9414' WHERE `entry`='16215'; -- Unholy Staff (6500MinG) (6800MaxG) `gold_min`=0, `gold_max`=0 - https://www.wowhead.com/tbc/npc=16215/unholy-staff
UPDATE `creature_template` SET `MinLootGold`='6690', `MaxLootGold`='9414' WHERE `entry`='16216'; -- Unholy Swords (6500MinG) (6800MaxG) `gold_min`=0, `gold_max`=0 - https://www.wowhead.com/tbc/npc=16216/unholy-swords
UPDATE `creature_template` SET `MinLootGold`='4506', `MaxLootGold`='9113' WHERE `entry`='16244'; -- Infectious Ghoul (0MinG) (0MaxG) (sample size 10)
UPDATE `creature_template` SET `MaxLootGold`='9398' WHERE `entry`='16368'; -- Necropolis Acolyte (2865MinG) (3746MaxG) https://www.wowhead.com/tbc/npc=16368/necropolis-acolyte
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='16390'; -- Deathchill Servant (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=16390/deathchill-servant
UPDATE `creature_template` SET `MinLootGold`='5000', `MaxLootGold`='10000' WHERE `entry`='16446'; -- Plagued Gargoyle (6500MinG) (6800MaxG) https://www.wowhead.com/tbc/npc=16446/plagued-gargoyle
UPDATE `creature_template` SET `MinLootGold`='3878', `MaxLootGold`='8925' WHERE `entry`='16447'; -- Plagued Ghoul (4011MinG) (5242MaxG) https://www.wowhead.com/tbc/npc=16447/plagued-ghoul
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='16448'; -- Plagued Deathhound (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=16448/plagued-deathhound
UPDATE `creature_template` SET `MinLootGold`='6500' WHERE `entry`='16449'; -- Spirit of Naxxramas (6500MinG) (10432MaxG) https://www.wowhead.com/tbc/npc=16449/spirit-of-naxxramas
UPDATE `creature_template` SET `MinLootGold`='4220' WHERE `entry`='16451'; -- Deathknight Vindicator (5627MinG) (7354MaxG) https://www.wowhead.com/tbc/npc=16451/deathknight-vindicator
-- ===========================

-- These mobs should not drop any gold. - partly also no skinningloot
UPDATE `creature_template` SET `MinLootGold`=0, `MaxLootGold`=0, `SkinningLootId` = 0 WHERE `entry`=8932; -- Borer "Beetle"
UPDATE `creature_template` SET `MinLootGold`=0, `MaxLootGold`=0 WHERE `entry`=9683; -- Lar'korwi Mate
UPDATE `creature_template` SET `MinLootGold`=0, `MaxLootGold`=0, `SkinningLootId` = 0 WHERE `entry`=10177; -- Spire "Scarab"
UPDATE `creature_template` SET `MinLootGold`=0, `MaxLootGold`=0, `SkinningLootId` = 0 WHERE `entry`=10717; -- Temporal Parasite
UPDATE `creature_template` SET `SkinningLootId` = 0 WHERE `entry`=7269; -- Scarab
UPDATE `creature_template` SET `SkinningLootId` = 0 WHERE `entry`=10577; -- Crypt Scarab
UPDATE `creature_template` SET `SkinningLootId` = 0 WHERE `entry`=15718; -- Ouro Scarab

-- classic diff with tbc, reviewed
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='541'; -- Riding Gryphon (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=541/riding-gryphon
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='659'; -- El Pollo Grande (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=659/el-pollo-grande
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='853'; -- Coldridge Mountaineer (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=853/coldridge-mountaineer
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='866'; -- Stonard Grunt (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=866/stonard-grunt
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='1000'; -- Watcher Blomberg (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=1000/watcher-blomberg
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='1001'; -- Watcher Hutchins (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=1001/watcher-hutchins
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='1064'; -- Grom'gol Grunt (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=1064/gromgol-grunt
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='1098'; -- Watcher Merant (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=1098/watcher-merant
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='1099'; -- Watcher Gelwin (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=1099/watcher-gelwin
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='1100'; -- Watcher Selkin (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=1100/watcher-selkin
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='1101'; -- Watcher Thayer (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=1101/watcher-thayer
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='1203'; -- Watcher Sarys (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=1203/watcher-sarys
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='1204'; -- Watcher Corwin (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=1204/watcher-corwin
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='1419'; -- Fizzles (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=1419/fizzles
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='1642'; -- Northshire Guard (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=1642/northshire-guard
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='1736'; -- Deathguard Randolph (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=1736/deathguard-randolph
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='1739'; -- Deathguard Phillip (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=1739/deathguard-phillip
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='1741'; -- Deathguard Bartrand (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=1741/deathguard-bartrand
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='1880'; -- Berte (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=1880/berte
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='1946'; -- Lillith Nefara (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=1946/lillith-nefara
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='1976'; -- Stormwind City Patroller (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=1976/stormwind-city-patroller
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='2056'; -- Ravenclaw Apparition (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=2056/ravenclaw-apparition
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='2224'; -- Wind Rider (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=2224/wind-rider
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='2435'; -- Southshore Crier (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=2435/southshore-crier
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='2475'; -- Sloth (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=2475/sloth
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='2479'; -- Sludge (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=2479/sludge
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='2523'; -- Searing Totem (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=2523/searing-totem
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='2531'; -- Minion of Morganth (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=2531/minion-of-morganth
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='2540'; -- Dalaran Serpent (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=2540/dalaran-serpent
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='2623'; -- Spirit of Old (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=2623/spirit-of-old
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='2630'; -- Earthbind Totem (0MinG) (0MaxG) Totem
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='2667'; -- Ward of Laze (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=2667/ward-of-laze
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='2675'; -- Explosive Sheep (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=2675/explosive-sheep
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='2678'; -- Mechanical Dragonling (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=2678/mechanical-dragonling
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='2683'; -- Namdo Bizzfizzle (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=2683/namdo-bizzfizzle
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='2775'; -- Daggerspine Marauder (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=2775/daggerspine-marauder
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='2776'; -- Vengeful Surge (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=2776/vengeful-surge
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='2801'; -- Tresa MacGregor (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=2801/tresa-macgregor
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='2853'; -- Freed Druid of the Talon (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=2853/freed-druid-of-the-talon
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='2876'; -- Grunenstur Balindom (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=2876/grunenstur-balindom
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='2880'; -- [UNUSED] Hurom Juggendolf (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=2880/unused-hurom-juggendolf
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='2881'; -- [UNUSED] Durdek Karrin (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=2881/unused-durdek-karrin
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='2887'; -- Prismatic Exile (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=2887/prismatic-exile
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='2915'; -- Hammertoe's Spirit (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=2915/hammertoes-spirit
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='2919'; -- Fam'retor Guardian (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=2919/famretor-guardian
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='2946'; -- Puppet of Helcular (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=2946/puppet-of-helcular
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='3084'; -- Bluffwatcher (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=3084/bluffwatcher
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='3210'; -- Brave Proudsnout (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=3210/brave-proudsnout
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='3211'; -- Brave Lightninghorn (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=3211/brave-lightninghorn
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='3213'; -- Brave Running Wolf (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=3213/brave-running-wolf
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='3214'; -- Brave Greathoof (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=3214/brave-greathoof
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='3230'; -- Nazgrel (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=3230/nazgrel
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='3289'; -- Spirit of Minshina (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=3289/spirit-of-minshina
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='3296'; -- Orgrimmar Grunt (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=3296/orgrimmar-grunt
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='3301'; -- Morgan Ladimore (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=3301/morgan-ladimore
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='3417'; -- Living Flame (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=3417/living-flame
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='3451'; -- Pilot Wizzlecrank (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=3451/pilot-wizzlecrank
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='3509'; -- Geoff (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=3509/geoff
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='3527'; -- Healing Stream Totem (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=3527/healing-stream-totem
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='3570'; -- Cleansed Timberling (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=3570/cleansed-timberling
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='3571'; -- Teldrassil Sentinel (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=3571/teldrassil-sentinel
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='3574'; -- Riding Bat (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=3574/riding-bat
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='3579'; -- Stoneclaw Totem (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=3579/stoneclaw-totem
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='3582'; -- Aman (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=3582/aman
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='3694'; -- Sentinel Selarin (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=3694/sentinel-selarin
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='3837'; -- Riding Hippogryph (0MinG) (0MaxG)
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='3843'; -- Anaya (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=3843/anaya
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='3902'; -- Searing Totem II (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=3902/searing-totem-ii
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='3903'; -- Searing Totem III (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=3903/searing-totem-iii
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='3904'; -- Searing Totem IV (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=3904/searing-totem-iv
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='3906'; -- Healing Stream Totem II (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=3906/healing-stream-totem-ii
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='3907'; -- Healing Stream Totem III (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=3907/healing-stream-totem-iii
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='3908'; -- Healing Stream Totem IV (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=3908/healing-stream-totem-iv
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='3909'; -- Healing Stream Totem V (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=3909/healing-stream-totem-v
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='3911'; -- Stoneclaw Totem II (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=3911/stoneclaw-totem-ii
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='3912'; -- Stoneclaw Totem III (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=3912/stoneclaw-totem-iii
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='3913'; -- Stoneclaw Totem IV (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=3913/stoneclaw-totem-iv
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='3946'; -- Velinde Starsong (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=3946/velinde-starsong
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='3950'; -- Minor Water Guardian (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=3950/minor-water-guardian
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='3968'; -- Sentry Totem (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=3968/sentry-totem
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='4059'; -- Forest Spirit (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=4059/forest-spirit
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='4068'; -- Serpent Messenger (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=4068/serpent-messenger
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='4262'; -- Darnassus Sentinel (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=4262/darnassus-sentinel
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='4271'; -- Riding Wolf (DarkGray) (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=4271/riding-wolf-darkgray
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='4272'; -- Riding Wolf (DarkBrown) (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=4272/riding-wolf-darkbrown
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='4509'; -- Sargath (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=4509/sargath
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='4781'; -- Snufflenose Gopher (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=4781/snufflenose-gopher
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='4795'; -- Force of Nature (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=4795/force-of-nature
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='4947'; -- Theramore Lieutenant (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=4947/theramore-lieutenant
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='4958'; -- Haunting Spirit (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=4958/haunting-spirit
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='4971'; -- Slim's Friend (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=4971/slims-friend
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='4972'; -- Kagoro (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=4972/kagoro
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='5081'; -- Connor Rivers (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=5081/connor-rivers
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='5088'; -- Falgran Hastil (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=5088/falgran-hastil
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='5194'; -- Black Riding Wolf (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=5194/black-riding-wolf
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='5196'; -- Gray Riding Wolf (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=5196/gray-riding-wolf
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='5197'; -- Red Riding Wolf (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=5197/red-riding-wolf
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='5409'; -- Harvester Swarm (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=5409/harvester-swarm
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='5546'; -- Grunt Zuul (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=5546/grunt-zuul
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='5547'; -- Grunt Tharlak (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=5547/grunt-tharlak
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='5569'; -- Fizzlebang Booms (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=5569/fizzlebang-booms
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='5595'; -- Ironforge Guard (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=5595/ironforge-guard
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='5666'; -- Gunther's Visage (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=5666/gunthers-visage
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='5691'; -- Dalin Forgewright Projection (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=5691/dalin-forgewright-projection
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='5692'; -- Comar Villard Projection (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=5692/corma-villard-projection
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='5780'; -- Cloned Ectoplasm (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=5780/cloned-ectoplasm
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='5873'; -- Stoneskin Totem (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=5873/stoneskin-totem
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='5874'; -- Strength of Earth Totem (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=5874/strength-of-earth-totem
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='5889'; -- Mesa Earth Spirit (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=5889/mesa-earth-spirit
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='5895'; -- Minor Manifestation of Water (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=5895/minor-manifestation-of-water
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='5896'; -- Fire Spirit (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=5896/fire-spirit
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='5898'; -- Air Spirit (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=5898/air-spirit
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='5913'; -- Tremor Totem (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=5913/tremor-totem
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='5914'; -- Deviate Nightmare (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=5914/deviate-nightmare
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='5919'; -- Stoneskin Totem II (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=5919/stoneskin-totem-ii
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='5920'; -- Stoneskin Totem III (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=5920/stoneskin-totem-iii
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='5921'; -- Strength of Earth Totem II (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=5921/strength-of-earth-totem-ii
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='5922'; -- Strength of Earth Totem III (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=5922/strength-of-earth-totem-iii
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='5923'; -- Poison Cleansing Totem (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=5923/poison-cleansing-totem
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='5924'; -- Disease Cleansing Totem (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=5924/disease-cleansing-totem
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='5925'; -- Grounding Totem (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=5925/grounding-totem
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='5926'; -- Frost Resistance Totem (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=5926/frost-resistance-totem
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='5927'; -- Fire Resistance Totem (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=5927/fire-resistance-totem
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='5950'; -- Flametongue Totem (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=5950/flametongue-totem
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='5952'; -- Den Grunt (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=5952/den-grunt
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='6012'; -- Flametongue Totem II (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=6012/flametongue-totem-ii
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='6016'; -- Elemental Protection Totem (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=6016/elemental-protection-totem
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='6017'; -- Lava Spout Totem (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=6017/lava-spout-totem
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='6021'; -- Boar Spirit (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=6021/boar-spirit
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='6066'; -- Earthgrab Totem (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=6066/earthgrab-totem
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='6110'; -- Fire Nova Totem II (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=6110/fire-nova-totem-ii
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='6111'; -- Fire Nova Totem III (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=6111/fire-nova-totem-iii
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='6240'; -- Affray Challenger (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=6240/affray-challenger
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='6245'; -- Anathera (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=6245/anathera
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='6246'; -- Latherion (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=6246/latherion
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='6386'; -- Ward of Zanzil (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=6386/ward-of-zanzil
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='6390'; -- Ulag the Cleaver (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=6390/ulag-the-cleaver
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='6492'; -- Rift Spawn (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=6492/rift-spawn
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='6549'; -- Demon of the Orb (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=6549/demon-of-the-orb
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='6550'; -- Mana Surge (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=6550/mana-surge
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='6748'; -- Water Spirit (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=6748/water-spirit
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='6913'; -- Lost One Rift Traveler (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=6913/lost-one-rift-traveler
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='7172'; -- Lore Keeper of Norgannon (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=7172/lore-keeper-of-norgannon
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='7209'; -- Obsidian Shard (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=7209/obsidian-shard
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='7226'; -- Sand Storm (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=7226/sand-storm
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='7266'; -- Ember (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=7266/ember
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='7364'; -- Flawless Draenethyst Sphere (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=7364/flawless-draenethyst-sphere
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='7365'; -- Flawless Draenethyst Fragment (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=7365/flawless-draenethyst-fragment
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='7366'; -- Stoneskin Totem IV (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=7366/stoneskin-totem-iv
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='7367'; -- Stoneskin Totem V (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=7367/stoneskin-totem-v
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='7368'; -- Stoneskin Totem VI (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=7368/stoneskin-totem-vi
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='7380'; -- Siamese (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=7380/siamese
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='7383'; -- Black Tabby (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=7383/black-tabby
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='7386'; -- White Kitten (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=7386/white-kitten
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='7392'; -- Prairie Chicken (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=7392/prairie-chicken
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='7394'; -- Ancona Chicken (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=7394/ancona-chicken
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='7398'; -- Stoneclaw Totem V (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=7398/stoneclaw-totem-v
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='7399'; -- Stoneclaw Totem VI (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=7399/stoneclaw-totem-vi
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='7400'; -- Searing Totem V (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=7400/searing-totem-v
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='7401'; -- Draenei Refugee (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=7401/draenei-refugee
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='7402'; -- Searing Totem VI (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=7402/searing-totem-vi
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='7403'; -- Strength of Earth Totem IV (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=7403/strength-of-earth-totem-iv
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='7409'; -- Faltering Draenethyst Sphere (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=7409/faltering-draenethyst-sphere
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='7411'; -- Spirit of Sathrah (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=7411/spirit-of-sathrah
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='7412'; -- Frost Resistance Totem II (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=7412/frost-resistance-totem-ii
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='7413'; -- Frost Resistance Totem III (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=7413/frost-resistance-totem-iii
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='7414'; -- Mana Spring Totem II (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=7414/mana-spring-totem-ii
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='7415'; -- Mana Spring Totem III (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=7415/mana-spring-totem-iii
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='7416'; -- Mana Spring Totem IV (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=7416/mana-spring-totem-iv
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='7423'; -- Flametongue Totem III (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=7423/flametongue-totem-iii
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='7424'; -- Fire Resistance Totem II (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=7424/fire-resistance-totem-ii
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='7425'; -- Fire Resistance Totem III (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=7425/fire-resistance-totem-iii
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='7464'; -- Magma Totem II (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=7464/magma-totem-ii
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='7465'; -- Magma Totem III (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=7465/magma-totem-iii
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='7466'; -- Magma Totem IV (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=7466/magma-totem-iv
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='7467'; -- Nature Resistance Totem (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=7467/nature-resistance-totem
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='7468'; -- Nature Resistance Totem II (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=7468/nature-resistance-totem-ii
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='7469'; -- Nature Resistance Totem III (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=7469/nature-resistance-totem-iii
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='7483'; -- Windfury Totem II (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=7483/windfury-totem-ii
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='7484'; -- Windfury Totem III (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=7484/windfury-totem-iii
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='7486'; -- Grace of Air Totem (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=7486/grace-of-air-totem
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='7487'; -- Grace of Air Totem II (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=7487/grace-of-air-totem-ii
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='7527'; -- Goblin Land Mine (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=7527/goblin-land-mine
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='7543'; -- Dark Whelpling (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=7543/dark-whelpling
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='7545'; -- Emerald Whelpling (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=7545/emerald-whelpling
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='7549'; -- Tree Frog (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=7549/tree-frog
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='7550'; -- Wood Frog (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=7550/wood-frog
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='7566'; -- Scarlet Snake (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=7566/scarlet-snake
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='7568'; -- Ribbon Snake (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=7568/ribbon-snake
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='7569'; -- Green Water Snake (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=7569/green-water-snake
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='7729'; -- Spirit of Kirith (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=7729/spirit-of-kirith
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='7738'; -- Burning Servant (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=7738/burning-servant
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='7750'; -- Corporal Thund Splithoof (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=7750/corporal-thund-splithoof
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='7767'; -- Witherbark Felhunter (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=7767/witherbark-felhunter
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='7772'; -- Kalin Windflight (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=7772/kalin-windflight
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='7785'; -- Ward of Zum'rah (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=7785/ward-of-zumrah
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='7786'; -- Skeleton of Zum'rah (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=7786/skeleton-of-zumrah
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='7844'; -- Fire Nova Totem IV (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=7844/fire-nova-totem-iv
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='7845'; -- Fire Nova Totem V (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=7845/fire-nova-totem-v
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='7863'; -- Dream Vision (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=7863/dream-vision
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='7865'; -- Wildhammer Sentry (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=7865/wildhammer-sentry
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='7915'; -- Walking Bomb (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=7915/walking-bomb
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='7918'; -- Stone Watcher of Norgannon (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=7918/stone-watcher-of-norgannon
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='7975'; -- Mulgore Protector (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=7975/mulgore-protector
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='7980'; -- Deathguard Elite (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=7980/deathguard-elite
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='8024'; -- Sharpbeak's Father (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=8024/sharpbeaks-father
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='8025'; -- Sharpbeak's Mother (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=8025/sharpbeaks-mother
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='8035'; -- Dark Iron Land Mine (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=8035/dark-iron-land-mine
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='8116'; -- Ziggle Sparks (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=8116/ziggle-sparks
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='8117'; -- Wizbang Booms (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=8117/wizbang-booms
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='8118'; -- Lillian Singh (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=8118/lillian-singh
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='8121'; -- Jaxxil Sparks (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=8121/jaxxil-sparks
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='8122'; -- Kizzak Sparks (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=8122/kizzak-sparks
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='8147'; -- Camp Mojache Brave (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=8147/camp-mojache-brave
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='8155'; -- Kargath Grunt (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=8155/kargath-grunt
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='8179'; -- Greater Healing Ward (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=8179/greater-healing-ward
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='8338'; -- Dark Iron Marksman (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=8338/dark-iron-marksman
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='8376'; -- Mechanical Chicken (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=8376/mechanical-chicken
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='8387'; -- Horizon Scout First Mate (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=8387/horizon-scout-first-mate
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='8388'; -- Horizon Scout Cook (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=8388/horizon-scout-cook
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='8389'; -- Horizon Scout Engineer (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=8389/horizon-scout-engineer
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='8392'; -- Pilot Xiggs Fuselighter (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=8392/pilot-xiggs-fuselighter
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='8394'; -- Roland Geardabbler (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=8394/roland-geardabbler
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='8421'; -- Dorius (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=8421/dorius
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='8440'; -- Shade of Hakkar (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=8440/shade-of-hakkar
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='8446'; -- Xiggs Fuselighter's Flyingmachine (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=8446/xiggs-fuselighters-flyingmachine
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='8478'; -- Second Mate Shandril (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=8478/second-mate-shandril
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='8480'; -- Kalaran the Deceiver (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=8480/velarok-the-deceiver
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='8510'; -- Atal'ai Totem (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=8510/atalai-totem
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='8585'; -- Frost Spectre (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=8585/frost-spectre
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='8611'; -- Idol Room Spawner (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=8611/idol-room-spawner
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='8612'; -- Screecher Spirit (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=8612/screecher-spirit
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='8615'; -- Mithril Dragonling (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=8615/mithril-dragonling
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='8616'; -- Infernal Servant (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=8616/infernal-servant
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='8656'; -- Hukku's Voidwalker (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=8656/hukkus-voidwalker
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='8657'; -- Hukku's Succubus (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=8657/hukkus-succubus
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='8658'; -- Hukku's Imp (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=8658/hukkus-imp
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='8668'; -- Felhound Tracker (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=8668/felhound-tracker
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='8776'; -- Emerald Dragon Whelp (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=8776/emerald-dragon-whelp
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='8836'; -- Battle Chicken (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=8836/battle-chicken
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='8876'; -- Sandfury Acolyte (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=8876/sandfury-acolyte
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='8937'; -- Pet Bomb (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=8937/pet-bomb
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='8996'; -- Voidwalker Minion (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=8996/voidwalker-minion
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='9136'; -- Sha'ni Proudtusk (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=9136/shani-proudtusk
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='9178'; -- Burning Spirit (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=9178/burning-spirit
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='9297'; -- Enraged Wyvern (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=9297/enraged-wyvern
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='9436'; -- Spawn of Bael'Gar (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=9436/spawn-of-baelgar
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='9453'; -- Aquementas (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=9453/aquementas
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='9457'; -- Horde Defender (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=9457/horde-defender
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='9458'; -- Horde Axe Thrower (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=9458/horde-axe-thrower
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='9498'; -- Gorishi Grub (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=9498/gorishi-grub
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='9526'; -- Enraged Gryphon (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=9526/enraged-gryphon
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='9527'; -- Enraged Hippogryph (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=9527/enraged-hippogryph
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='9538'; -- High Executioner Nuzrak (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=9538/high-executioner-nuzrak
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='9539'; -- Shadow of Lexlort (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=9539/shadow-of-lexlort
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='9546'; -- Raschal the Courier (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=9546/raschal-the-courier
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='9556'; -- Felhound Minion (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=9556/felhound-minion
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='9598'; -- Arei (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=9598/arei
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='9637'; -- Scorching Totem (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=9637/scorching-totem
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='9656'; -- Tiny Walking Bomb (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=9656/tiny-walking-bomb
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='9657'; -- Lil' Smoky (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=9657/lil-smoky
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='9662'; -- Sprite Darter Hatchling (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=9662/sprite-darter-hatchling
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='9687'; -- Windwall Totem (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=9687/windwall-totem
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='9688'; -- Windwall Totem II (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=9688/windwall-totem-ii
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='9689'; -- Windwall Totem III (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=9689/windwall-totem-iii
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='9701'; -- Spire Scorpid (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=9701/spire-scorpid
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='9707'; -- Scarshield Portal (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=9707/scarshield-portal
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='9876'; -- Locheed (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=9876/locheed
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='9937'; -- Common Kitten (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=9937/common-kitten
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='10036'; -- Brackenwall Enforcer (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=10036/brackenwall-enforcer
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='10038'; -- Night Watch Guard (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=10038/night-watch-guard
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='10042'; -- Corrupted Saber (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=10042/corrupted-saber
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='10096'; -- High Justice Grimstone (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=10096/high-justice-grimstone
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='10161'; -- Rookery Whelp (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=10161/rookery-whelp
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='10183'; -- Moonflare Totem (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=10183/moonflare-totem
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='10217'; -- Flame Buffet Totem (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=10217/flame-buffet-totem
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='10218'; -- Superior Healing Ward (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=10218/superior-healing-ward
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='10257'; -- Bijou (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=10257/bijou
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='10259'; -- Worg Pup (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=10259/worg-pup
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='10290'; -- Captured Felwood Ooze (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=10290/captured-felwood-ooze
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='10322'; -- Riding Tiger (White) (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=10322/riding-tiger-white
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='10340'; -- Vaelastrasz the Red (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=10340/vaelastrasz-the-red
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='10383'; -- Broken Cadaver (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=10383/broken-cadaver
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='10387'; -- Vengeful Phantom (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=10387/vengeful-phantom
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='10467'; -- Mana Tide Totem (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=10467/mana-tide-totem
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='10538'; -- Vaelastrasz (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=10538/vaelastrasz
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='10557'; -- Flametongue Totem IV (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=10557/flametongue-totem-iv
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='10577'; -- Crypt Scarab (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=10577/crypt-scarab
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='10598'; -- Smolderweb Hatchling (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=10598/smolderweb-hatchling
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='10603'; -- Hallucination (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=10603/hallucination
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='10656'; -- Guardian Felhunter (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=10656/guardian-felhunter
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='10697'; -- Bile Slime (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=10697/bile-slime
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='10699'; -- Carrion Scarab (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=10699/carrion-scarab
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='10718'; -- Shahram (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=10718/shahram
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='10719'; -- Herald of Thrall (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=10719/herald-of-thrall
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='10799'; -- Warosh (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=10799/warosh
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='10800'; -- Warosh the Redeemed (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=10800/warosh-the-redeemed
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='10876'; -- Undead Scarab (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=10876/undead-scarab
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='10936'; -- Joseph Redpath (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=10936/joseph-redpath
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='10937'; -- Captain Redpath (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=10937/captain-redpath
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='10938'; -- Redpath the Corrupted (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=10938/redpath-the-corrupted
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='10939'; -- Marduk the Black (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=10939/marduk-the-black
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='10943'; -- Decrepit Guardian (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=10943/decrepit-guardian
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='10944'; -- Davil Lightfire (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=10944/davil-lightfire
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='10945'; -- Davil Crokford (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=10945/davil-crokford
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='10947'; -- Darrowshire Betrayer (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=10947/darrowshire-betrayer
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='10948'; -- Darrowshire Defender (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=10948/darrowshire-defender
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='10949'; -- Silver Hand Disciple (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=10949/silver-hand-disciple
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='10950'; -- Redpath Militia (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=10950/redpath-militia
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='10953'; -- Servant of Horgus (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=10953/servant-of-horgus
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='10954'; -- Bloodletter (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=10954/bloodletter
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='10955'; -- Summoned Water Elemental (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=10955/summoned-water-elemental
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='10980'; -- Umi's Mechanical Yeti (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=10980/umis-mechanical-yeti
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='10988'; -- Kodo Spirit (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=10988/kodo-spirit
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='11030'; -- Mindless Undead (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=11030/mindless-undead
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='11054'; -- Crimson Rifleman (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=11054/crimson-rifleman
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='11064'; -- Darrowshire Spirit (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=11064/darrowshire-spirit
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='11099'; -- Argent Guard (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=11099/argent-guard
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='11100'; -- Mana Tide Totem II (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=11100/mana-tide-totem-ii
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='11101'; -- Mana Tide Totem III (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=11101/mana-tide-totem-iii
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='11136'; -- Freed Soul (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=11136/freed-soul
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='11141'; -- Spirit of Trey Lightforge (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=11141/spirit-of-trey-lightforge
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='11194'; -- Argent Defender (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=11194/argent-defender
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='11197'; -- Mindless Skeleton (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=11197/mindless-skeleton
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='11199'; -- Crimson Cannon (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=11199/crimson-cannon
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='11200'; -- Summoned Skeleton (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=11200/summoned-skeleton
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='11236'; -- Blood Parrot (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=11236/blood-parrot
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='11256'; -- Manifestation of Water (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=11256/manifestation-of-water
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='11277'; -- Caer Darrow Citizen (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=11277/caer-darrow-citizen
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='11278'; -- Magnus Frostwake (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=11278/magnus-frostwake
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='11279'; -- Caer Darrow Guardsman (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=11279/caer-darrow-guardsman
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='11280'; -- Caer Darrow Cannoneer (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=11280/caer-darrow-cannoneer
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='11281'; -- Caer Darrow Horseman (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=11281/caer-darrow-horseman
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='11282'; -- Melia (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=11282/melia
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='11283'; -- Sammy (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=11283/sammy
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='11285'; -- Rory (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=11285/rory
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='11287'; -- Baker Masterson (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=11287/baker-masterson
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='11296'; -- Darrowshire Poltergeist (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=11296/darrowshire-poltergeist
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='11316'; -- Joseph Dirte (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=11316/joseph-dirte
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='11325'; -- Panda Cub (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=11325/panda-cub
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='11326'; -- Mini Diablo (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=11326/mini-diablo
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='11327'; -- Zergling (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=11327/zergling
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='11439'; -- Illusion of Jandice Barov (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=11439/illusion-of-jandice-barov
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='11560'; -- Magrami Spectre (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=11560/magrami-spectre
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='11623'; -- Scourge Summoning Crystal (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=11623/scourge-summoning-crystal
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='11627'; -- Tamed Kodo (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=11627/tamed-kodo
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='11636'; -- Servant of Weldon Barov (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=11636/servant-of-weldon-barov
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='11637'; -- Servant of Alexi Barov (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=11637/servant-of-alexi-barov
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='11690'; -- Gnarlpine Instigator (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=11690/gnarlpine-instigator
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='11701'; -- Mor'vek (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=11701/morvek
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='11702'; -- Arin'sor (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=11702/arinsor
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='11713'; -- Blackwood Tracker (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=11713/blackwood-tracker
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='11822'; -- Moonglade Warden (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=11822/moonglade-warden
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='11859'; -- Doomguard (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=11859/doomguard
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='11875'; -- Mortar Team Target Dummy (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=11875/mortar-team-target-dummy
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='12116'; -- Priestess of Elune (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=12116/priestess-of-elune
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='12126'; -- Lord Tirion Fordring (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=12126/lord-tirion-fordring
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='12140'; -- Guardian of Elune (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=12140/guardian-of-elune
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='12141'; -- Ice Totem (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=12141/ice-totem
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='12144'; -- Lunaclaw Spirit (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=12144/lunaclaw-spirit
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='12160'; -- Shadowglen Sentinel (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=12160/shadowglen-sentinel
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='12204'; -- Spitelash Raider (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=12204/spitelash-raider
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='12205'; -- Spitelash Witch (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=12205/spitelash-witch
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='12208'; -- Conquered Soul of the Blightcaller (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=12208/conquered-soul-of-the-blightcaller
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='12238'; -- Zaetar's Spirit (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=12238/zaetars-spirit
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='12257'; -- Mechanical Yeti (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=12257/mechanical-yeti
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='12338'; -- Shadowprey Guardian (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=12338/shadowprey-guardian
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='12352'; -- Scarlet Trooper (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=12352/scarlet-trooper - seemingly flase positive
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='12381'; -- Ley Sprite (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=12381/ley-sprite
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='12382'; -- Mana Sprite (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=12382/mana-sprite
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='12385'; -- Mortar Team Advanced Target Dummy (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=12385/mortar-team-advanced-target-dummy
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='12419'; -- Lifelike Toad (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=12419/lifelike-toad
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='12473'; -- Arcanite Dragonling (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=12473/arcanite-dragonling
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='12756'; -- Lady Onyxia (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=12756/lady-onyxia
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='12797'; -- Grunt Korf (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=12797/grunt-korf
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='12798'; -- Grunt Bek'rah (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=12798/grunt-bekrah
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='12799'; -- Sergeant Ba'sha (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=12799/sergeant-basha
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='12805'; -- Officer Areyn (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=12805/officer-areyn
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='12921'; -- Enraged Foulweald (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=12921/enraged-foulweald
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='12923'; -- Injured Soldier (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=12923/injured-soldier
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='12924'; -- Badly Injured Soldier (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=12924/badly-injured-soldier
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='12925'; -- Critically Injured Soldier (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=12925/critically-injured-soldier
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='12936'; -- Badly Injured Alliance Soldier (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=12936/badly-injured-alliance-soldier
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='12937'; -- Critically Injured Alliance Soldier (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=12937/critically-injured-alliance-soldier
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='12938'; -- Injured Alliance Soldier (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=12938/injured-alliance-soldier
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='12998'; -- Dwarven Farmer (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=12998/dwarven-farmer
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='12999'; -- World Invisible Trigger (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=12999/world-invisible-trigger
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='13082'; -- Milton Beats (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=13082/milton-beats
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='13161'; -- Aerie Gryphon (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=13161/aerie-gryphon
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='13178'; -- War Rider (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=13178/war-rider
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='13431'; -- Whulwert Copperpinch (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=13431/whulwert-copperpinch
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='13432'; -- Seersa Copperpinch (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=13432/seersa-copperpinch
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='13716'; -- Celebras the Redeemed (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=13716/celebras-the-redeemed
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='13756'; -- PvP Graveyard Credit Marker (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=13756/pvp-graveyard-credit-marker
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='13778'; -- PvP Tower Credit Marker (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=13778/pvp-tower-credit-marker
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='13796'; -- PvP Mine Credit Marker (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=13796/pvp-mine-credit-marker
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='13916'; -- Dire Maul Crystal Totem (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=13916/dire-maul-crystal-totem
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='14122'; -- Massive Geyser (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=14122/massive-geyser
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='14329'; -- Black War Wolf (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=14329/black-war-wolf
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='14353'; -- Mizzle the Crafty (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=14353/mizzle-the-crafty
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='14362'; -- Thornling (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=14362/thornling
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='14370'; -- Cadaverous Worm (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=14370/cadaverous-worm
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='14372'; -- Winterfall Ambusher (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=14372/winterfall-ambusher
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='14389'; -- Netherwalker (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=14389/netherwalker
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='14400'; -- Arcane Feedback (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=14400/arcane-feedback
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='14449'; -- Blackwing Orb Trigger (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=14449/blackwing-orb-trigger
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='14452'; -- Enslaved Doomguard Commander (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=14452/enslaved-doomguard-commander
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='14459'; -- Nefarian's Troops (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=14459/nefarians-troops
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='14465'; -- Alliance Battle Standard (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=14465/alliance-battle-standard
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='14466'; -- Horde Battle Standard (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=14466/horde-battle-standard
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='14484'; -- Injured Peasant (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=14484/injured-peasant
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='14485'; -- Plagued Peasant (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=14485/plagued-peasant
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='14489'; -- Scourge Archer (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=14489/scourge-archer
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='14494'; -- Eris Havenfire (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=14494/eris-havenfire
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='14495'; -- Invisible Trigger One (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=14495/invisible-trigger-one
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='14500'; -- J'eevee (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=14500/jeevee
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='14503'; -- The Cleaner (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=14503/the-cleaner
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='14511'; -- Shadowed Spirit (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=14511/shadowed-spirit
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='14512'; -- Corrupted Spirit (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=14512/corrupted-spirit
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='14513'; -- Malicious Spirit (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=14513/malicious-spirit
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='14514'; -- Banal Spirit (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=14514/banal-spirit
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='14524'; -- Vartrus the Ancient (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=14524/vartrus-the-ancient
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='14525'; -- Stoma the Ancient (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=14525/stoma-the-ancient
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='14526'; -- Hastat the Ancient (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=14526/hastat-the-ancient
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='14530'; -- Solenor the Slayer (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=14530/solenor-the-slayer
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='14533'; -- Simone the Seductress (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=14533/simone-the-seductress
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='14534'; -- Klinfran the Crazed (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=14534/klinfran-the-crazed
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='14535'; -- Artorius the Doombringer (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=14535/artorius-the-doombringer
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='14538'; -- Precious the Devourer (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=14538/precious-the-devourer
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='14568'; -- Darkreaver's Fallen Charger (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=14568/darkreavers-fallen-charger
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='14645'; -- Warsong Gulch Herald (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=14645/warsong-gulch-herald
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='14662'; -- Corrupted Fire Nova Totem V (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=14662/corrupted-fire-nova-totem-v
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='14663'; -- Corrupted Stoneskin Totem VI (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=14663/corrupted-stoneskin-totem-vi
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='14664'; -- Corrupted Healing Stream Totem V (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=14664/corrupted-healing-stream-totem-v
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='14666'; -- Corrupted Windfury Totem III (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=14666/corrupted-windfury-totem-iii
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='14667'; -- Corrupted Totem (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=14667/corrupted-totem
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='14730'; -- Revantusk Watcher (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=14730/revantusk-watcher
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='14732'; -- PvP CTF Credit Marker (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=14732/pvp-ctf-credit-marker
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='14744'; -- Frostwolf Riding Wolf (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=14744/frostwolf-riding-wolf
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='14745'; -- Stormpike Riding Ram (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=14745/stormpike-riding-ram
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='14751'; -- Frostwolf Battle Standard (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=14751/frostwolf-battle-standard
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='14752'; -- Stormpike Battle Standard (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=14752/stormpike-battle-standard
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='14842'; -- Melnan Darkstone (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=14842/melnan-darkstone
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='14848'; -- Herald (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=14848/herald
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='14878'; -- Jubling (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=14878/jubling
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='14884'; -- Parasitic Serpent (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=14884/parasitic-serpent
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='14943'; -- Guse's War Rider (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=14943/guses-war-rider
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='14944'; -- Jeztor's War Rider (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=14944/jeztors-war-rider
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='14945'; -- Mulverick's War Rider (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=14945/mulvericks-war-rider
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='14946'; -- Slidore's Gryphon (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=14946/slidores-gryphon
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='14947'; -- Ichman's Gryphon (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=14947/ichmans-gryphon
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='14948'; -- Vipore's Gryphon (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=14948/vipores-gryphon
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='14987'; -- Powerful Healing Ward (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=14987/powerful-healing-ward
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='14989'; -- Poisonous Cloud (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=14989/poisonous-cloud
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='15001'; -- PvP A-Mid Credit Marker (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=15001/pvp-a-mid-credit-marker
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='15002'; -- PvP Mid Credit Marker (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=15002/pvp-mid-credit-marker
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='15003'; -- PvP H-Mid Credit Marker (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=15003/pvp-h-mid-credit-marker
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='15004'; -- PvP ALT-S Credit Marker (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=15004/pvp-alt-s-credit-marker
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='15005'; -- PvP ALT-N Credit Marker (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=15005/pvp-alt-n-credit-marker
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='15009'; -- Voodoo Spirit (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=15009/voodoo-spirit
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='15047'; -- Gurubashi (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=15047/gurubashi
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='15061'; -- Spirit of Jin'do (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=15061/spirit-of-jindo
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='15069'; -- Heart of Hakkar (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=15069/heart-of-hakkar
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='15073'; -- Pat's Hellfire Guy (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=15073/pats-hellfire-guy
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='15077'; -- Riggle Bassbait (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=15077/riggle-bassbait
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='15086'; -- Arathi Stablehand (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=15086/arathi-stablehand
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='15088'; -- Booty Bay Elite (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=15088/booty-bay-elite
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='15112'; -- Brain Wash Totem (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=15112/brain-wash-totem
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='15117'; -- Chained Spirit (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=15117/chained-spirit
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='15119'; -- Barrus (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=15119/barrus
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='15136'; -- Hammerfall Elite (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=15136/hammerfall-elite
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='15137'; -- Menethil Elite (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=15137/menethil-elite
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='15138'; -- Silverpine Elite (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=15138/silverpine-elite
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='15140'; -- Pat's Splash Guy (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=15140/pats-splash-guy
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='15141'; -- Portal of Madness (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=15141/portal-of-madness
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='15146'; -- Mad Voidwalker (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=15146/mad-voidwalker
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='15163'; -- Nightmare Illusion (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=15163/nightmare-illusion
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='15193'; -- The Banshee Queen (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=15193/the-banshee-queen
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='15195'; -- Wickerman Guardian (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=15195/wickerman-guardian
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='15197'; -- Darkcaller Yanka (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=15197/darkcaller-yanka
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='15199'; -- Sergeant Hartman (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=15199/sergeant-hartman
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='15218'; -- Faire Cannon Trigger (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=15218/faire-cannon-trigger
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='15224'; -- Dream Fog (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=15224/dream-fog
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='15261'; -- Spirit Shade (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=15261/spirit-shade
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='15304'; -- Ancient Mana Spring Totem (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=15304/ancient-mana-spring-totem
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='15353'; -- Katrina Shimmerstar (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=15353/katrina-shimmerstar
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='15362'; -- Malfurion Stormrage (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=15362/malfurion-stormrage
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='15363'; -- Spirit Totem (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=15363/spirit-totem
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='15381'; -- Anachronos the Ancient (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=15381/anachronos-the-ancient
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='15415'; -- Southshore Stink Bomb Counter (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=15415/southshore-stink-bomb-counter
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='15428'; -- Sand Vortex (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=15428/sand-vortex
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='15440'; -- Captain Blackanvil (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=15440/captain-blackanvil
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='15471'; -- Lieutenant General Andorov (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=15471/lieutenant-general-andorov
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='15473'; -- Kaldorei Elite (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=15473/kaldorei-elite
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='15667'; -- Glob of Viscidus (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=15667/glob-of-viscidus
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='15702'; -- Senior Sergeant Taiga (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=15702/senior-sergeant-taiga
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='15776'; -- Christmas Warchief Rend Blackhand (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=15776/christmas-warchief-rend-blackhand
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='15796'; -- Christmas Goraluk Anvilcrack (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=15796/christmas-goraluk-anvilcrack
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='15854'; -- Orgrimmar Elite Cavalryman (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=15854/orgrimmar-elite-cavalryman
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='15857'; -- Stormwind Cavalryman (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=15857/stormwind-cavalryman
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='15858'; -- Stormwind Infantryman (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=15858/stormwind-infantryman
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='15859'; -- Stormwind Archmage (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=15859/stormwind-archmage
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='15862'; -- Ironforge Cavalryman (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=15862/ironforge-cavalryman
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='15866'; -- High Commander Lynore Windstryke (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=15866/high-commander-lynore-windstryke
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='15868'; -- Highlord Leoric Von Zeldig (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=15868/highlord-leoric-von-zeldig
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='15869'; -- Malagav the Tactician (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=15869/malagav-the-tactician
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='15870'; -- Duke August Foehammer (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=15870/duke-august-foehammer
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='16361'; -- Commander Thomas Helleran (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=16361/commander-thomas-helleran
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='1066'; -- Mottled Riptooth (31MinG) (154MaxG) https://www.wowhead.com/tbc/npc=1066/mottled-riptooth
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='1233'; -- [UNUSED] Shaethis Darkoak (1MinG) (774MaxG) https://www.wowhead.com/tbc/npc=1233/unused-shaethis-darkoak
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='1262'; -- White Ram (13MinG) (64MaxG) https://www.wowhead.com/tbc/npc=1262/white-ram
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='3990'; -- Venture Co. Cutter (5MinG) (24MaxG) https://www.wowhead.com/tbc/npc=3990/venture-co-cutter
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='7074'; -- Judge Thelgram (29MinG) (145MaxG) https://www.wowhead.com/tbc/npc=7074/judge-thelgram
UPDATE `creature_template` SET `MinLootGold`='152', `MaxLootGold`='962' WHERE `entry`='10076'; -- High Priestess of Thaurissan (733MinG) (962MaxG) https://www.wowhead.com/tbc/npc=10076/high-priestess-of-thaurissan
UPDATE `creature_template` SET `MinLootGold`='133', `MaxLootGold`='666' WHERE `entry`='10601'; -- Urok Enforcer (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=10601/urok-enforcer
UPDATE `creature_template` SET `MinLootGold`='18', `MaxLootGold`='90' WHERE `entry`='10720'; -- Galak Assassin (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=10720/galak-assassin
UPDATE `creature_template` SET `MinLootGold`='56', `MaxLootGold`='278' WHERE `entry`='10951'; -- Marauding Corpse (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=10951/marauding-corpse
UPDATE `creature_template` SET `MinLootGold`='56', `MaxLootGold`='278' WHERE `entry`='10952'; -- Marauding Skeleton (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=10952/marauding-skeleton

-- World Bosses (Expansion specific money?)
UPDATE `creature` SET `spawntimesecsmin` = 900, `spawntimesecsmax` = 2700 WHERE `id` IN (1748,2784,3057,4949,4968,7937,7999,10181);
-- classic 250000 - 500000, wotlk 1000000 to 1500000 suggestion.
UPDATE `creature_template` SET `MinLootGold`='250000', `MaxLootGold`='500000' WHERE `entry`='1748'; -- Highlord Bolvar Fordragon (1785MinG) (2336MaxG) https://www.wowhead.com/tbc/npc=1748/highlord-bolvar-fordragon
UPDATE `creature_template` SET `MinLootGold`='250000', `MaxLootGold`='500000' WHERE `entry`='2784'; -- King Magni Bronzebeard (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=2784/king-magni-bronzebeard
UPDATE `creature_template` SET `MinLootGold`='250000', `MaxLootGold`='500000' WHERE `entry`='3057'; -- Cairne Bloodhoof (6205MinG) (8108MaxG) https://www.wowhead.com/tbc/npc=3057/cairne-bloodhoof
UPDATE `creature_template` SET `MinLootGold`='250000', `MaxLootGold`='500000' WHERE `entry`='4949'; -- Thrall (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=4949/thrall
UPDATE `creature_template` SET `MinLootGold`='250000', `MaxLootGold`='500000' WHERE `entry`='4968'; -- Lady Jaina Proudmoore (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=4968/lady-jaina-proudmoore
UPDATE `creature_template` SET `MinLootGold`='250000', `MaxLootGold`='500000' WHERE `entry`='7937'; -- High Tinker Mekkatorque (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=7937/high-tinker-mekkatorque
UPDATE `creature_template` SET `MinLootGold`='250000', `MaxLootGold`='500000' WHERE `entry`='7999'; -- Tyrande Whisperwind (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=7999/tyrande-whisperwind
UPDATE `creature_template` SET `MinLootGold`='250000', `MaxLootGold`='500000' WHERE `entry`='10181'; -- Lady Sylvanas Windrunner (0MinG) (0MaxG) https://www.wowhead.com/tbc/npc=10181/lady-sylvanas-windrunner

-- tbc+
-- UPDATE `creature_template` SET `MinLootGold`='957', `MaxLootGold`='1288' WHERE `entry`='1410'; -- Firewing Bloodwarder (957MinG) (1288MaxG)
-- UPDATE `creature_template` SET `MinLootGold`='952', `MaxLootGold`='1177' WHERE `entry`='5355'; -- Firewing Defender (952MinG) (1177MaxG)
-- UPDATE `creature_template` SET `MinLootGold`='3732', `MaxLootGold`='8000' WHERE `entry`='11980'; -- Zuluhed the Whacked (3732MinG) (4878MaxG) https://www.youtube.com/watch?v=aIMbG3Fk1uU https://www.youtube.com/watch?v=n9vrwhbiLcU
-- UPDATE `creature_template` SET `HeroicEntry` = 22550, `MinLevel` = 60, `MaxLevel` = 60 WHERE `entry` = 13378; -- Frostwolf Shredder Unit
-- UPDATE `creature_template` SET `MinLevel` = 70, `MaxLevel` = 70 WHERE `entry` = 22550;
-- UPDATE `creature_template` SET `HeroicEntry` = 22576, `MinLevel` = 60, `MaxLevel` = 60 WHERE `entry` = 13416; -- Stormpike Shredder Unit
-- UPDATE `creature_template` SET `MinLevel` = 70, `MaxLevel` = 70 WHERE `entry` = 22576;
-- UPDATE `creature_template` SET `HeroicEntry` = 22621, `MinLevel` = 61, `MaxLevel` = 61 WHERE `entry` = 13446; -- Field Marshal Teravaine
-- UPDATE `creature_template` SET `MinLevel` = 71, `MaxLevel` = 71 WHERE `entry` = 22621;
-- UPDATE `creature_template` SET `HeroicEntry` = 22525, `MinLevel` = 60, `MaxLevel` = 60 WHERE `entry` = 13161; -- Aerie Gryphon
-- UPDATE `creature_template` SET `MinLevel` = 70, `MaxLevel` = 70 WHERE `entry` = 22525;
-- UPDATE `creature_template` SET `HeroicEntry` = 22594, `MinLevel` = 60, `MaxLevel` = 60 WHERE `entry` = 13178; -- War Rider
-- UPDATE `creature_template` SET `MinLevel` = 70, `MaxLevel` = 70 WHERE `entry` = 22594;
-- UPDATE `creature_template` SET `HeroicEntry` = 22556, `MinLevel` = 60, `MaxLevel` = 60 WHERE `entry` = 14943; -- Guse's War Rider
-- UPDATE `creature_template` SET `MinLevel` = 70, `MaxLevel` = 70 WHERE `entry` = 22556;
-- UPDATE `creature_template` SET `HeroicEntry` = 22564, `MinLevel` = 60, `MaxLevel` = 60 WHERE `entry` = 14944; -- Jeztor's War Rider
-- UPDATE `creature_template` SET `MinLevel` = 70, `MaxLevel` = 70 WHERE `entry` = 22564;
-- UPDATE `creature_template` SET `HeroicEntry` = 22566, `MinLevel` = 60, `MaxLevel` = 60 WHERE `entry` = 14945; -- Mulverick's War Rider
-- UPDATE `creature_template` SET `MinLevel` = 70, `MaxLevel` = 70 WHERE `entry` = 22566;
-- UPDATE `creature_template` SET `HeroicEntry` = 22570, `MinLevel` = 60, `MaxLevel` = 60 WHERE `entry` = 14946; -- Slidore's Gryphon
-- UPDATE `creature_template` SET `MinLevel` = 70, `MaxLevel` = 70 WHERE `entry` = 22570;
-- UPDATE `creature_template` SET `HeroicEntry` = 22563, `MinLevel` = 60, `MaxLevel` = 60 WHERE `entry` = 14947; -- Ichman's Gryphon
-- UPDATE `creature_template` SET `MinLevel` = 70, `MaxLevel` = 70 WHERE `entry` = 22563;
-- UPDATE `creature_template` SET `HeroicEntry` = 22593, `MinLevel` = 60, `MaxLevel` = 60 WHERE `entry` = 14948; -- Vipore's Gryphon
-- UPDATE `creature_template` SET `MinLevel` = 70, `MaxLevel` = 70 WHERE `entry` = 22593;

-- diffing npcs with "strange" MeleeBaseAttackTime with tbcmangos (later udpate, all good)
UPDATE `creature_template` SET `MaxLootGold`='541' WHERE `entry`='11803'; -- Twilight Keeper Exeter (137MinG)(184MaxG)
UPDATE `creature_template` SET `MaxLootGold`='874' WHERE `entry`='11804'; -- Twilight Keeper Havunth (125MinG)(168MaxG)
UPDATE `creature_template` SET `MaxLootGold`='903' WHERE `entry`='11880'; -- Twilight Avenger (131MinG)(842MaxG)
UPDATE `creature_template` SET `MaxLootGold`='962' WHERE `entry`='11881'; -- Twilight Geolord (136MinG)(911MaxG)
UPDATE `creature_template` SET `MaxLootGold`='786' WHERE `entry`='11882'; -- Twilight Stonecaller (119MinG)(161MaxG)
UPDATE `creature_template` SET `MaxLootGold`='1040' WHERE `entry`='11883'; -- Twilight Master (120MinG)(549MaxG)
UPDATE `creature_template` SET `MaxLootGold`='900' WHERE `entry`='14479'; -- Twilight Lord Everun (120MinG)(162MaxG)
UPDATE `creature_template` SET `MinLootGold`='294' WHERE `entry`='15541'; -- Twilight Marauder Morna (567MinG)(745MaxG)
UPDATE `creature_template` SET `MaxLootGold`='758' WHERE `entry`='15542'; -- Twilight Marauder (136MinG)(182MaxG)

