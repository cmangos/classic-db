-- Add your query below.
-- https://github.com/vmangos/core/commit/22bcfa71f1398bf2ae73f9cc7e8a4512b73d11aa

-- Correct level ranges for some creatures.

-- classic only
UPDATE `creature_template` SET `MinLevel` = 55, `MaxLevel` = 55 WHERE `entry` = 2405; -- Tarren Mill Deathguard	50	50
UPDATE `creature_template` SET `MinLevel` = 24, `MaxLevel` = 25 WHERE `entry` = 3863; -- Lupine Horror	24	24, only lvl 20 tbc+
UPDATE `creature_template` SET `MinLevel` = 25, `MaxLevel` = 25 WHERE `entry` = 5797; -- Aean Swiftriver	26	26
UPDATE `creature_template` SET `MinLevel` = 49, `MaxLevel` = 50 WHERE `entry` = 8440; -- Shade of Hakkar	1	1
UPDATE `creature_template` SET `MinLevel` = 57, `MaxLevel` = 57 WHERE `entry` = 9039; -- Doom'rel	56	56
UPDATE `creature_template` SET `MinLevel` = 42, `MaxLevel` = 44 WHERE `entry` = 11792; -- Putridus Shadowstalker	42	43

-- vmangos diff pointing towards classic only data.
UPDATE `creature_template` SET `MinLevel`='27', `MaxLevel`='27' WHERE `entry`='397'; -- Morganth
UPDATE `creature_template` SET `MinLevel`='55', `MaxLevel`='55' WHERE `entry`='866'; -- Stonard Grunt
UPDATE `creature_template` SET `MinLevel`='42' WHERE `entry`='1563'; -- Bloodsail Swashbuckler
UPDATE `creature_template` SET `MinLevel`='42' WHERE `entry`='1564'; -- Bloodsail Warlock
UPDATE `creature_template` SET `MaxLevel`='24' WHERE `entry`='1707'; -- Defias Captive
UPDATE `creature_template` SET `MaxLevel`='17' WHERE `entry`='3634'; -- Deviate Stalker
UPDATE `creature_template` SET `MinLevel`='19' WHERE `entry`='3853'; -- Shadowfang Moonwalker
UPDATE `creature_template` SET `MaxLevel`='21' WHERE `entry`='3854'; -- Shadowfang Wolfguard
UPDATE `creature_template` SET `MaxLevel`='22' WHERE `entry`='3857'; -- Shadowfang Glutton
UPDATE `creature_template` SET `MinLevel`='23' WHERE `entry`='3859'; -- Shadowfang Ragetooth
UPDATE `creature_template` SET `MaxLevel`='36' WHERE `entry`='4299'; -- Scarlet Chaplain
UPDATE `creature_template` SET `MaxLevel`='34' WHERE `entry`='4304'; -- Scarlet Tracking Hound
UPDATE `creature_template` SET `MinLevel`='39' WHERE `entry`='4388'; -- Young Murk Thresher
UPDATE `creature_template` SET `MaxLevel`='26' WHERE `entry`='4520'; -- Razorfen Geomancer
UPDATE `creature_template` SET `MinLevel`='21', `MaxLevel`='22' WHERE `entry`='4528'; -- Stone Rumbler (s.8270 -4)
UPDATE `creature_template` SET `MinLevel`='38' WHERE `entry`='4850'; -- Stonevault Cave Lurker
UPDATE `creature_template` SET `MinLevel`='44' WHERE `entry`='4860'; -- Stone Steward
UPDATE `creature_template` SET `MinLevel`='49' WHERE `entry`='5259'; -- Atal'ai Witch Doctor
UPDATE `creature_template` SET `MinLevel`='50' WHERE `entry`='5277'; -- Nightmare Scalebane
UPDATE `creature_template` SET `MinLevel`='55', `MaxLevel`='55' WHERE `entry`='7975'; -- Mulgore Protector
UPDATE `creature_template` SET `MinLevel`='50', `MaxLevel`='51' WHERE `entry`='8317'; -- Atal'ai Deathwalker's Spirit
UPDATE `creature_template` SET `MinLevel`='59', `MaxLevel`='59' WHERE `entry`='9237'; -- War Master Voone
UPDATE `creature_template` SET `MinLevel`='62', `MaxLevel`='62' WHERE `entry`='10204'; -- Misha
UPDATE `creature_template` SET `MinLevel`='60', `MaxLevel`='60' WHERE `entry`='10404'; -- [UNUSED] Fetid Wight
UPDATE `creature_template` SET `MinLevel`='61', `MaxLevel`='61' WHERE `entry`='10985'; -- Ice Giant
UPDATE `creature_template` SET `MinLevel`='56', `MaxLevel`='58' WHERE `entry`='10989'; -- Blizzard Elemental
UPDATE `creature_template` SET `MinLevel`='52', `MaxLevel`='53' WHERE `entry`='11606'; -- Whitewhisker Tunnel Rat
UPDATE `creature_template` SET `MinLevel`='62', `MaxLevel`='62' WHERE `entry`='11676'; -- Fjordune the Greater
UPDATE `creature_template` SET `MinLevel`='46' WHERE `entry`='11794'; -- Sister of Celebrian
UPDATE `creature_template` SET `MinLevel`='60', `MaxLevel`='60' WHERE `entry`='11798'; -- Bunthen Plainswind
UPDATE `creature_template` SET `MinLevel`='60', `MaxLevel`='60' WHERE `entry`='11800'; -- Silva Fil'naveth
UPDATE `creature_template` SET `MinLevel`='62', `MaxLevel`='62' WHERE `entry`='11980'; -- [NOT USED] Zuluhed the Whacked
UPDATE `creature_template` SET `MinLevel`='60', `MaxLevel`='60' WHERE `entry`='13281'; -- Furis
UPDATE `creature_template` SET `MinLevel`='61', `MaxLevel`='61' WHERE `entry`='13496'; -- Risen Ancient
UPDATE `creature_template` SET `MinLevel`='58', `MaxLevel`='58' WHERE `entry`='13516'; -- Frostwolf Outrunner
UPDATE `creature_template` SET `MinLevel`='59', `MaxLevel`='59' WHERE `entry`='13517'; -- Seasoned Outrunner
UPDATE `creature_template` SET `MinLevel`='60', `MaxLevel`='60' WHERE `entry`='13518'; -- Veteran Outrunner
UPDATE `creature_template` SET `MinLevel`='61', `MaxLevel`='61' WHERE `entry`='13519'; -- Champion Outrunner
UPDATE `creature_template` SET `MinLevel`='58', `MaxLevel`='58' WHERE `entry`='13520'; -- Stormpike Ranger
UPDATE `creature_template` SET `MinLevel`='59', `MaxLevel`='59' WHERE `entry`='13521'; -- Seasoned Ranger
UPDATE `creature_template` SET `MinLevel`='60', `MaxLevel`='60' WHERE `entry`='13522'; -- Veteran Ranger
UPDATE `creature_template` SET `MinLevel`='61', `MaxLevel`='61' WHERE `entry`='13523'; -- Champion Ranger
UPDATE `creature_template` SET `MinLevel`='58', `MaxLevel`='58' WHERE `entry`='13524'; -- Stormpike Commando
UPDATE `creature_template` SET `MinLevel`='60', `MaxLevel`='60' WHERE `entry`='13557'; -- Champion Irondeep Surveyor
UPDATE `creature_template` SET `MinLevel`='60', `MaxLevel`='60' WHERE `entry`='14688'; -- Master Sandoval
UPDATE `creature_template` SET `MinLevel`='60', `MaxLevel`='60' WHERE `entry`='14885'; -- [PH] Jon LeCraft
UPDATE `creature_template` SET `MinLevel`='60', `MaxLevel`='60' WHERE `entry`='15123'; -- [PH] Kris Zierhut
UPDATE `creature_template` SET `MinLevel`='63', `MaxLevel`='63' WHERE `entry`='15193'; -- The Banshee Queen
UPDATE `creature_template` SET `MinLevel`='1', `MaxLevel`='60' WHERE `entry`='15304'; -- Ancient Mana Spring Totem
UPDATE `creature_template` SET `MinLevel`='59', `MaxLevel`='59' WHERE `entry`='15775'; -- Christmas Emperor Dagran Thaurissan
UPDATE `creature_template` SET `MinLevel`='1', `MaxLevel`='60' WHERE `entry`='16781'; -- Midsummer Celebrant
UPDATE `creature_template` SET `MinLevel`='63', `MaxLevel`='63' WHERE `entry`='16510'; -- Argent Charger
UPDATE `creature_template` SET `MinLevel`='60', `MaxLevel`='60' WHERE `entry`='17231'; -- Garden Gas

-- general
UPDATE `creature_template` SET `MinLevel` = 17, `MaxLevel` = 18 WHERE `entry` = 598; -- Defias Miner	18	18
UPDATE `creature_template` SET `MinLevel` = 29, `MaxLevel` = 29 WHERE `entry` = 499; -- Watcher Paige	28	28
UPDATE `creature_template` SET `MinLevel` = 5, `MaxLevel` = 5 WHERE `entry` = 883; -- Deer	1	1
UPDATE `creature_template` SET `MinLevel` = 34, `MaxLevel` = 35 WHERE `entry` = 938; -- Kurzen Commando	33	35
UPDATE `creature_template` SET `MinLevel` = 35, `MaxLevel` = 36 WHERE `entry` = 1096; -- Venture Co. Geologist	34	36
UPDATE `creature_template` SET `MinLevel` = 40, `MaxLevel` = 41 WHERE `entry` = 1561; -- Bloodsail Raider	39	41
UPDATE `creature_template` SET `MinLevel` = 40, `MaxLevel` = 41 WHERE `entry` = 1562; -- Bloodsail Mage	39	41
UPDATE `creature_template` SET `MinLevel` = 54, `MaxLevel` = 55 WHERE `entry` = 1787; -- Skeletal Executioner	53	55
UPDATE `creature_template` SET `MinLevel` = 5, `MaxLevel` = 5 WHERE `entry` = 2442; -- Cow	1	1
UPDATE `creature_template` SET `MinLevel` = 43, `MaxLevel` = 43 WHERE `entry` = 2547; -- Ironpatch	42	43
UPDATE `creature_template` SET `MinLevel` = 36, `MaxLevel` = 37 WHERE `entry` = 2667; -- Ward of Laze	37	37
UPDATE `creature_template` SET `MinLevel` = 39, `MaxLevel` = 40 WHERE `entry` = 2729; -- Elder Crag Coyote	38	40
UPDATE `creature_template` SET `MinLevel` = 23, `MaxLevel` = 24 WHERE `entry` = 3844; -- Healing Ward IV	22	22
UPDATE `creature_template` SET `MinLevel` = 37, `MaxLevel` = 38 WHERE `entry` = 4655; -- Maraudine Wrangler	36	38
UPDATE `creature_template` SET `MinLevel` = 47, `MaxLevel` = 48 WHERE `entry` = 5474; -- Dunemaul Brute	46	48
UPDATE `creature_template` SET `MinLevel` = 42, `MaxLevel` = 43 WHERE `entry` = 5617; -- Wastewander Shadow Mage	41	43
UPDATE `creature_template` SET `MinLevel` = 55, `MaxLevel` = 56 WHERE `entry` = 7443; -- Shardtooth Mauler	54	56
UPDATE `creature_template` SET `MinLevel` = 42, `MaxLevel` = 43 WHERE `entry` = 7997; -- Captured Sprite Darter	41	41
UPDATE `creature_template` SET `MinLevel` = 55, `MaxLevel` = 56 WHERE `entry` = 9258; -- Scarshield Raider	54	56
UPDATE `creature_template` SET `MinLevel` = 15, `MaxLevel` = 18 WHERE `entry` = 9457; -- Horde Defender	18	18
UPDATE `creature_template` SET `MinLevel` = 60, `MaxLevel` = 61 WHERE `entry` = 10400; -- Thuzadin Necromancer	59	61
UPDATE `creature_template` SET `MinLevel` = 59, `MaxLevel` = 60 WHERE `entry` = 10697; -- Bile Slime	58	60
UPDATE `creature_template` SET `MinLevel` = 53, `MaxLevel` = 54 WHERE `entry` = 11290; -- Mossflayer Zombie	52	54
UPDATE `creature_template` SET `MinLevel` = 54, `MaxLevel` = 55 WHERE `entry` = 11291; -- Unliving Mossflayer	53	55
UPDATE `creature_template` SET `MinLevel` = 55, `MaxLevel` = 55 WHERE `entry` = 12250; -- Zaeldarr the Outcast	54	55
UPDATE `creature_template` SET `MinLevel` = 11, `MaxLevel` = 12 WHERE `entry` = 1202; -- Tunnel Rat Kobold	11	11
UPDATE `creature_template` SET `MinLevel` = 28, `MaxLevel` = 38 WHERE `entry` = 2992; -- Healing Ward V	28	28
UPDATE `creature_template` SET `MinLevel` = 37, `MaxLevel` = 38 WHERE `entry` = 4677; -- Doomwarder	37	37
UPDATE `creature_template` SET `MinLevel` = 54, `MaxLevel` = 55 WHERE `entry` = 10183; -- Moonflare Totem	54	54
UPDATE `creature_template` SET `MinLevel` = 56, `MaxLevel` = 57 WHERE `entry` = 10217; -- Flame Buffet Totem	56	56
UPDATE `creature_template` SET `MinLevel` = 20, `MaxLevel` = 20 WHERE `entry` = 4787; -- Argent Guard Thaelrid	18	18
UPDATE `creature_template` SET `MinLevel` = 15, `MaxLevel` = 18 WHERE `entry` = 9458; -- Horde Axe Thrower	16	16
UPDATE `creature_template` SET `MinLevel` = 54, `MaxLevel` = 55 WHERE `entry` = 9556; -- Felhound Minion	1	1
UPDATE `creature_template` SET `MinLevel` = 48, `MaxLevel` = 48 WHERE `entry` = 8149; -- Sul'lithuz Warder	2	2
UPDATE `creature_template` SET `MinLevel` = 16, `MaxLevel` = 17 WHERE `entry` = 449; -- Defias Knuckleduster	15	17
UPDATE `creature_template` SET `MinLevel` = 37, `MaxLevel` = 37 WHERE `entry` = 494; -- Watcher Bukouris	35	35
UPDATE `creature_template` SET `MinLevel` = 40, `MaxLevel` = 40 WHERE `entry` = 495; -- Watcher Keefer	38	38
UPDATE `creature_template` SET `MinLevel` = 17, `MaxLevel` = 18 WHERE `entry` = 517; -- Murloc Oracle	16	18
UPDATE `creature_template` SET `MinLevel` = 40, `MaxLevel` = 40 WHERE `entry` = 813; -- Colonel Kurzen	39	40
UPDATE `creature_template` SET `MinLevel` = 38, `MaxLevel` = 38 WHERE `entry` = 827; -- Watcher Mocarski	36	36
UPDATE `creature_template` SET `MinLevel` = 38, `MaxLevel` = 38 WHERE `entry` = 978; -- Kurzen Subchief	35	36
UPDATE `creature_template` SET `MinLevel` = 38, `MaxLevel` = 38 WHERE `entry` = 979; -- Kurzen Shadow Hunter	36	38
UPDATE `creature_template` SET `MinLevel` = 37, `MaxLevel` = 37 WHERE `entry` = 1436; -- Watcher Cutford	36	36
UPDATE `creature_template` SET `MinLevel` = 25, `MaxLevel` = 25 WHERE `entry` = 1461; -- Murndan Derth	43	43
UPDATE `creature_template` SET `MinLevel` = 57, `MaxLevel` = 58 WHERE `entry` = 1836; -- Scarlet Cavalier	56	58
UPDATE `creature_template` SET `MinLevel` = 16, `MaxLevel` = 17 WHERE `entry` = 1954; -- Elder Lake Skulker	16	16
UPDATE `creature_template` SET `MinLevel` = 20, `MaxLevel` = 21 WHERE `entry` = 2160; -- Gravelflint Geomancer	21	21
UPDATE `creature_template` SET `MinLevel` = 37, `MaxLevel` = 37 WHERE `entry` = 2470; -- Watcher Fraizer	35	35
UPDATE `creature_template` SET `MinLevel` = 30, `MaxLevel` = 30 WHERE `entry` = 2512; -- Mountaineer Roghan	28	28
UPDATE `creature_template` SET `MinLevel` = 32, `MaxLevel` = 33 WHERE `entry` = 2623; -- Spirit of Old	33	33
UPDATE `creature_template` SET `MinLevel` = 38, `MaxLevel` = 39 WHERE `entry` = 2636; -- Blackwater Deckhand	38	38
UPDATE `creature_template` SET `MinLevel` = 38, `MaxLevel` = 39 WHERE `entry` = 2742; -- Shadowforge Chanter	37	39
UPDATE `creature_template` SET `MinLevel` = 16, `MaxLevel` = 17 WHERE `entry` = 3283; -- Venture Co. Enforcer	14	17
UPDATE `creature_template` SET `MinLevel` = 17, `MaxLevel` = 18 WHERE `entry` = 3286; -- Venture Co. Overseer	15	18
UPDATE `creature_template` SET `MinLevel` = 14, `MaxLevel` = 15 WHERE `entry` = 3383; -- Southsea Cutthroat	12	15
UPDATE `creature_template` SET `MinLevel` = 14, `MaxLevel` = 15 WHERE `entry` = 3384; -- Southsea Privateer	12	15
UPDATE `creature_template` SET `MinLevel` = 22, `MaxLevel` = 23 WHERE `entry` = 4002; -- Windshear Stonecutter	23	23
UPDATE `creature_template` SET `MinLevel` = 36, `MaxLevel` = 37 WHERE `entry` = 4386; -- Withervine Bark Ripper	36	36
UPDATE `creature_template` SET `MinLevel` = 38, `MaxLevel` = 39 WHERE `entry` = 4680; -- Doomwarder Captain	38	38
UPDATE `creature_template` SET `MinLevel` = 36, `MaxLevel` = 36 WHERE `entry` = 5045; -- Private Hallan	34	34
UPDATE `creature_template` SET `MinLevel` = 44, `MaxLevel` = 45 WHERE `entry` = 5272; -- Grizzled Ironfur Bear	44	44
UPDATE `creature_template` SET `MinLevel` = 48, `MaxLevel` = 48 WHERE `entry` = 5400; -- Zekkis	49	49
UPDATE `creature_template` SET `MinLevel` = 49, `MaxLevel` = 50 WHERE `entry` = 5999; -- Nethergarde Soldier	49	49
UPDATE `creature_template` SET `MinLevel` = 49, `MaxLevel` = 51 WHERE `entry` = 6000; -- Nethergarde Cleric	49	49
UPDATE `creature_template` SET `MinLevel` = 35, `MaxLevel` = 37 WHERE `entry` = 6013; -- Wayward Buzzard	37	37
UPDATE `creature_template` SET `MinLevel` = 46, `MaxLevel` = 47 WHERE `entry` = 6184; -- Timbermaw Pathfinder	46	46
UPDATE `creature_template` SET `MinLevel` = 49, `MaxLevel` = 50 WHERE `entry` = 6187; -- Timbermaw Den Watcher	47	47
UPDATE `creature_template` SET `MinLevel` = 51, `MaxLevel` = 52 WHERE `entry` = 6195; -- Spitelash Siren	50	52
UPDATE `creature_template` SET `MinLevel` = 23, `MaxLevel` = 23 WHERE `entry` = 7051; -- Malformed Defias Drone	23	24
UPDATE `creature_template` SET `MinLevel` = 23, `MaxLevel` = 23 WHERE `entry` = 7053; -- Klaven Mortwake	26	26
UPDATE `creature_template` SET `MinLevel` = 55, `MaxLevel` = 55 WHERE `entry` = 7292; -- Dinita Stonemantle	40	40
UPDATE `creature_template` SET `MinLevel` = 59, `MaxLevel` = 60 WHERE `entry` = 7461; -- Hederine Initiate	57	60
UPDATE `creature_template` SET `MinLevel` = 59, `MaxLevel` = 60 WHERE `entry` = 7463; -- Hederine Slayer	57	60
UPDATE `creature_template` SET `MinLevel` = 30, `MaxLevel` = 30 WHERE `entry` = 8118; -- Lillian Singh	28	28
UPDATE `creature_template` SET `MinLevel` = 44, `MaxLevel` = 44 WHERE `entry` = 8397; -- Sentinel Keldara Sunblade	43	43
UPDATE `creature_template` SET `MinLevel` = 58, `MaxLevel` = 59 WHERE `entry` = 8532; -- Diseased Flayer	57	59
UPDATE `creature_template` SET `MinLevel` = 58, `MaxLevel` = 59 WHERE `entry` = 8546; -- Dark Adept	59	59
UPDATE `creature_template` SET `MinLevel` = 54, `MaxLevel` = 55 WHERE `entry` = 9522; -- Blackrock Ambusher	56	56
UPDATE `creature_template` SET `MinLevel` = 59, `MaxLevel` = 59 WHERE `entry` = 9605; -- Blackrock Raider	57	57
UPDATE `creature_template` SET `MinLevel` = 57, `MaxLevel` = 58 WHERE `entry` = 10948; -- Darrowshire Defender	57	57
UPDATE `creature_template` SET `MinLevel` = 57, `MaxLevel` = 58 WHERE `entry` = 10949; -- Silver Hand Disciple	57	57
UPDATE `creature_template` SET `MinLevel` = 57, `MaxLevel` = 58 WHERE `entry` = 11288; -- Spectral Betrayer	57	57
UPDATE `creature_template` SET `MinLevel` = 57, `MaxLevel` = 58 WHERE `entry` = 11289; -- Spectral Defender	57	57
UPDATE `creature_template` SET `MinLevel` = 27, `MaxLevel` = 28 WHERE `entry` = 11681; -- Horde Deforester	27	27
UPDATE `creature_template` SET `MinLevel` = 58, `MaxLevel` = 59 WHERE `entry` = 11880; -- Twilight Avenger	57	59
UPDATE `creature_template` SET `MinLevel` = 59, `MaxLevel` = 60 WHERE `entry` = 11881; -- Twilight Geolord	58	60
UPDATE `creature_template` SET `MinLevel` = 60, `MaxLevel` = 60 WHERE `entry` = 11883; -- Twilight Master	59	60
UPDATE `creature_template` SET `MinLevel` = 50, `MaxLevel` = 52 WHERE `entry` = 14388; -- Rogue Black Drake	50	51
UPDATE `creature_template` SET `MinLevel` = 37, `MaxLevel` = 42 WHERE `entry` = 14393; -- Expeditionary Priest	40	40
UPDATE `creature_template` SET `MinLevel` = 51, `MaxLevel` = 52 WHERE `entry` = 14484; -- Injured Peasant	51	51
UPDATE `creature_template` SET `MinLevel` = 52, `MaxLevel` = 53 WHERE `entry` = 14485; -- Plagued Peasant	52	52
UPDATE `creature_template` SET `MinLevel` = 60, `MaxLevel` = 61 WHERE `entry` = 15213; -- Twilight Overlord	59	61
UPDATE `creature_template` SET `MinLevel` = 60, `MaxLevel` = 60 WHERE `entry` = 16043; -- Magma Lord Bokk	58	60
UPDATE `creature_template` SET `MinLevel` = 14, `MaxLevel` = 15 WHERE `entry` = 2540; -- Dalaran Serpent	15	15
UPDATE `creature_template` SET `MinLevel` = 4, `MaxLevel` = 5 WHERE `entry` = 5766; -- Savannah Cub	9	9 / Savannah Cub	11	11
UPDATE `creature_template` SET `MinLevel` = 27, `MaxLevel` = 28 WHERE `entry` = 11684; -- Warsong Shredder	27	27
UPDATE `creature_template` SET `MinLevel` = 55, `MaxLevel` = 55 WHERE `entry` = 12426; -- Masterwork Target Dummy	1	1

UPDATE `creature_template` SET `MinLevel`='13', `MaxLevel`='13' WHERE `entry`='167'; -- Morhan Coppertongue
UPDATE `creature_template` SET `MinLevel`='30', `MaxLevel`='30' WHERE `entry`='226'; -- Morg Gnarltree
UPDATE `creature_template` SET `MinLevel`='13' WHERE `entry`='456'; -- Murloc Minor Oracle
UPDATE `creature_template` SET `MinLevel`='39', `MaxLevel`='39' WHERE `entry`='826'; -- Watcher Jan
UPDATE `creature_template` SET `MinLevel`='50', `MaxLevel`='51' WHERE `entry`='863'; -- Stonard Hunter
UPDATE `creature_template` SET `MinLevel`='50', `MaxLevel`='50' WHERE `entry`='864'; -- Stonard Orc
UPDATE `creature_template` SET `MinLevel`='39', `MaxLevel`='39' WHERE `entry`='885'; -- Watcher Keller
UPDATE `creature_template` SET `MinLevel`='38', `MaxLevel`='38' WHERE `entry`='886'; -- Watcher Hartin
UPDATE `creature_template` SET `MinLevel`='35', `MaxLevel`='35' WHERE `entry`='934'; -- Guard Clarke
UPDATE `creature_template` SET `MinLevel`='10', `MaxLevel`='10' WHERE `entry`='959'; -- Morley Eberlein
UPDATE `creature_template` SET `MinLevel`='37', `MaxLevel`='37' WHERE `entry`='999'; -- Watcher Royce
UPDATE `creature_template` SET `MinLevel`='12' WHERE `entry`='1065'; -- Riverpaw Shaman
UPDATE `creature_template` SET `MaxLevel`='7' WHERE `entry`='1129'; -- Black Bear
UPDATE `creature_template` SET `MinLevel`='9', `MaxLevel`='12' WHERE `entry`='1229'; -- Granis Swiftaxe
UPDATE `creature_template` SET `MinLevel`='8', `MaxLevel`='12' WHERE `entry`='1231'; -- Grif Wildheart
UPDATE `creature_template` SET `MinLevel`='8', `MaxLevel`='11' WHERE `entry`='1240'; -- Boran Ironclink
UPDATE `creature_template` SET `MinLevel`='8', `MaxLevel`='12' WHERE `entry`='1243'; -- Hegnar Rumbleshot
UPDATE `creature_template` SET `MinLevel`='8', `MaxLevel`='10' WHERE `entry`='1245'; -- Kogan Forgestone
UPDATE `creature_template` SET `MinLevel`='10', `MaxLevel`='10' WHERE `entry`='1249'; -- Quartermaster Hudson
UPDATE `creature_template` SET `MaxLevel`='12' WHERE `entry`='1252'; -- Senir Whitebeard
UPDATE `creature_template` SET `MinLevel`='8', `MaxLevel`='12' WHERE `entry`='1255'; -- Prospector Gehn
UPDATE `creature_template` SET `MinLevel`='30', `MaxLevel`='30' WHERE `entry`='1278'; -- Mountaineer Stenn
UPDATE `creature_template` SET `MinLevel`='30', `MaxLevel`='30' WHERE `entry`='1280'; -- Mountaineer Droken
UPDATE `creature_template` SET `MinLevel`='30', `MaxLevel`='30' WHERE `entry`='1281'; -- Mountaineer Zaren
UPDATE `creature_template` SET `MinLevel`='54', `MaxLevel`='54' WHERE `entry`='1296'; -- Felder Stover
UPDATE `creature_template` SET `MinLevel`='54', `MaxLevel`='54' WHERE `entry`='1296'; -- Felder Stover
UPDATE `creature_template` SET `MinLevel`='30', `MaxLevel`='30' WHERE `entry`='1337'; -- Mountaineer Gwarth
UPDATE `creature_template` SET `MinLevel`='30', `MaxLevel`='30' WHERE `entry`='1338'; -- Mountaineer Dalk
UPDATE `creature_template` SET `MinLevel`='30', `MaxLevel`='30' WHERE `entry`='1339'; -- Mayda Thane
UPDATE `creature_template` SET `MinLevel`='8', `MaxLevel`='11' WHERE `entry`='1355'; -- Cook Ghilm
UPDATE `creature_template` SET `MinLevel`='8', `MaxLevel`='10' WHERE `entry`='1358'; -- Miner Grothor
UPDATE `creature_template` SET `MinLevel`='8', `MaxLevel`='10' WHERE `entry`='1360'; -- Miner Grumnal
UPDATE `creature_template` SET `MinLevel`='20', `MaxLevel`='20' WHERE `entry`='1362'; -- Gothor Brumn
UPDATE `creature_template` SET `MinLevel`='40', `MaxLevel`='40' WHERE `entry`='1381'; -- Krakk
UPDATE `creature_template` SET `MinLevel`='22', `MaxLevel`='25' WHERE `entry`='1423'; -- Stormwind Guard
UPDATE `creature_template` SET `MinLevel`='25', `MaxLevel`='25' WHERE `entry`='1679'; -- Avarus Kharag
UPDATE `creature_template` SET `MinLevel`='10', `MaxLevel`='10' WHERE `entry`='1698'; -- Frast Dokner
UPDATE `creature_template` SET `MinLevel`='22', `MaxLevel`='22' WHERE `entry`='1742'; -- Deathguard Bartholomew
UPDATE `creature_template` SET `MinLevel`='38', `MaxLevel`='38' WHERE `entry`='1849'; -- Dreadwhisper
UPDATE `creature_template` SET `MinLevel`='8', `MaxLevel`='9' WHERE `entry`='1949'; -- Servant of Azora
UPDATE `creature_template` SET `MinLevel`='7' WHERE `entry`='1975'; -- Eastvale Lumberjack
UPDATE `creature_template` SET `MinLevel`='18', `MaxLevel`='19' WHERE `entry`='2112'; -- Farrin Daris
UPDATE `creature_template` SET `MinLevel`='14', `MaxLevel`='14' WHERE `entry`='2135'; -- Abe Winters
UPDATE `creature_template` SET `MinLevel`='18', `MaxLevel`='20' WHERE `entry`='2140'; -- Edwin Harly
UPDATE `creature_template` SET `MinLevel`='23' WHERE `entry`='2188'; -- Deep Sea Threshadon
UPDATE `creature_template` SET `MinLevel`='60', `MaxLevel`='60' WHERE `entry`='2215'; -- High Executor Darthalia
UPDATE `creature_template` SET `MinLevel`='25', `MaxLevel`='25' WHERE `entry`='2238'; -- Tog'thar
UPDATE `creature_template` SET `MinLevel`='25', `MaxLevel`='25' WHERE `entry`='2239'; -- Drull
UPDATE `creature_template` SET `MinLevel`='60', `MaxLevel`='60' WHERE `entry`='2276'; -- Magistrate Henry Maleb
UPDATE `creature_template` SET `MinLevel`='8', `MaxLevel`='12' WHERE `entry`='2326'; -- Thamner Pol
UPDATE `creature_template` SET `MinLevel`='30', `MaxLevel`='30' WHERE `entry`='2507'; -- Mountaineer Uthan
UPDATE `creature_template` SET `MinLevel`='30', `MaxLevel`='30' WHERE `entry`='2516'; -- Mountaineer Kamdar
UPDATE `creature_template` SET `MinLevel`='30', `MaxLevel`='30' WHERE `entry`='2527'; -- Mountaineer Angst
UPDATE `creature_template` SET `MinLevel`='44', `MaxLevel`='44' WHERE `entry`='2608'; -- Commander Amaren
UPDATE `creature_template` SET `MinLevel`='20', `MaxLevel`='20' WHERE `entry`='2673'; -- Target Dummy
UPDATE `creature_template` SET `MinLevel`='40', `MaxLevel`='40' WHERE `entry`='2674'; -- Advanced Target Dummy
UPDATE `creature_template` SET `MinLevel`='28', `MaxLevel`='30' WHERE `entry`='2679'; -- Wenna Silkbeard
UPDATE `creature_template` SET `MinLevel`='38', `MaxLevel`='40' WHERE `entry`='2812'; -- Drovnar Strongbrew
UPDATE `creature_template` SET `MinLevel`='42', `MaxLevel`='42' WHERE `entry`='2840'; -- Kizz Bluntstrike
UPDATE `creature_template` SET `MinLevel`='42', `MaxLevel`='42' WHERE `entry`='2845'; -- Fargon Mortalak
UPDATE `creature_template` SET `MinLevel`='10', `MaxLevel`='10' WHERE `entry`='3078'; -- Kennah Hawkseye
UPDATE `creature_template` SET `MinLevel`='13', `MaxLevel`='13' WHERE `entry`='3080'; -- Harant Ironbrace
UPDATE `creature_template` SET `MaxLevel`='9' WHERE `entry`='3141'; -- Makrura Elder
UPDATE `creature_template` SET `MinLevel`='60', `MaxLevel`='60' WHERE `entry`='3151'; -- Captain Obvious
UPDATE `creature_template` SET `MinLevel`='40', `MaxLevel`='40' WHERE `entry`='3152'; -- Cap'n Copyright
UPDATE `creature_template` SET `MinLevel`='16', `MaxLevel`='16' WHERE `entry`='3167'; -- Wuark
UPDATE `creature_template` SET `MinLevel`='14', `MaxLevel`='14' WHERE `entry`='3217'; -- Brave Dawneagle
UPDATE `creature_template` SET `MinLevel`='14', `MaxLevel`='14' WHERE `entry`='3218'; -- Brave Swiftwind
UPDATE `creature_template` SET `MinLevel`='14', `MaxLevel`='14' WHERE `entry`='3219'; -- Brave Leaping Deer
UPDATE `creature_template` SET `MinLevel`='14', `MaxLevel`='14' WHERE `entry`='3220'; -- Brave Darksky
UPDATE `creature_template` SET `MinLevel`='14', `MaxLevel`='14' WHERE `entry`='3221'; -- Brave Rockhorn
UPDATE `creature_template` SET `MinLevel`='14', `MaxLevel`='14' WHERE `entry`='3223'; -- Brave Rainchaser
UPDATE `creature_template` SET `MinLevel`='35', `MaxLevel`='35' WHERE `entry`='3301'; -- Morgan Ladimore
UPDATE `creature_template` SET `MinLevel`='23', `MaxLevel`='23' WHERE `entry`='3421'; -- Feegly the Exiled
UPDATE `creature_template` SET `MinLevel`='25', `MaxLevel`='25' WHERE `entry`='3493'; -- Grazlix
UPDATE `creature_template` SET `MinLevel`='11', `MaxLevel`='11' WHERE `entry`='3522'; -- Constance Brisboise
UPDATE `creature_template` SET `MinLevel`='32', `MaxLevel`='32' WHERE `entry`='3536'; -- Kris Legace
UPDATE `creature_template` SET `MinLevel`='40', `MaxLevel`='40' WHERE `entry`='3543'; -- Robert Aebischer
UPDATE `creature_template` SET `MinLevel`='18', `MaxLevel`='18' WHERE `entry`='3553'; -- Sebastian Meloche
UPDATE `creature_template` SET `MinLevel`='18', `MaxLevel`='20' WHERE `entry`='3554'; -- Andrea Boynton
UPDATE `creature_template` SET `MinLevel`='18', `MaxLevel`='20' WHERE `entry`='3556'; -- Andrew Hilbert
UPDATE `creature_template` SET `MaxLevel`='16' WHERE `entry`='3578'; -- Dalaran Miner
UPDATE `creature_template` SET `MinLevel`='14', `MaxLevel`='14' WHERE `entry`='3843'; -- Anaya
UPDATE `creature_template` SET `MinLevel`='60', `MaxLevel`='60' WHERE `entry`='3895'; -- Captain Noteo
UPDATE `creature_template` SET `MinLevel`='40', `MaxLevel`='40' WHERE `entry`='3896'; -- Captain Hart
UPDATE `creature_template` SET `MinLevel`='30', `MaxLevel`='39' WHERE `entry`='3945'; -- Caravaneer Ruzzgot
UPDATE `creature_template` SET `MinLevel`='40', `MaxLevel`='40' WHERE `entry`='3946'; -- Velinde Starsong
UPDATE `creature_template` SET `MinLevel`='15', `MaxLevel`='15' WHERE `entry`='4185'; -- Shaldyn
UPDATE `creature_template` SET `MinLevel`='25', `MaxLevel`='25' WHERE `entry`='4187'; -- Harlon Thornguard
UPDATE `creature_template` SET `MinLevel`='60', `MaxLevel`='60' WHERE `entry`='4497'; -- Captain Quirk
UPDATE `creature_template` SET `MinLevel`='26', `MaxLevel`='26' WHERE `entry`='4586'; -- Graham Van Talen
UPDATE `creature_template` SET `MinLevel`='43', `MaxLevel`='43' WHERE `entry`='4883'; -- Krak
UPDATE `creature_template` SET `MinLevel`='37', `MaxLevel`='37' WHERE `entry`='4886'; -- Hans Weston
UPDATE `creature_template` SET `MinLevel`='40', `MaxLevel`='40' WHERE `entry`='4889'; -- Torq Ironblast
UPDATE `creature_template` SET `MinLevel`='35', `MaxLevel`='35' WHERE `entry`='4950'; -- Spot
UPDATE `creature_template` SET `MinLevel`='48', `MaxLevel`='51' WHERE `entry`='4951'; -- Theramore Practicing Guard
UPDATE `creature_template` SET `MinLevel`='1', `MaxLevel`='1' WHERE `entry`='5002'; -- World Boar Trainer
UPDATE `creature_template` SET `MinLevel`='1', `MaxLevel`='1' WHERE `entry`='5027'; -- World Lockpicking Trainer
UPDATE `creature_template` SET `MinLevel`='1', `MaxLevel`='1' WHERE `entry`='5029'; -- World Survival Trainer
UPDATE `creature_template` SET `MinLevel`='1', `MaxLevel`='1' WHERE `entry`='5034'; -- World Brewing Trainer
UPDATE `creature_template` SET `MinLevel`='32', `MaxLevel`='33' WHERE `entry`='5085'; -- Sentry Point Guard
UPDATE `creature_template` SET `MinLevel`='34', `MaxLevel`='35' WHERE `entry`='5086'; -- Sentry Point Captain
UPDATE `creature_template` SET `MaxLevel`='42' WHERE `entry`='5186'; -- Basking Shark
UPDATE `creature_template` SET `MinLevel`='50', `MaxLevel`='50' WHERE `entry`='5326'; -- Coast Crawl Clacker
UPDATE `creature_template` SET `MinLevel`='55', `MaxLevel`='55' WHERE `entry`='5348'; -- Dreamwatcher Forktongue
UPDATE `creature_template` SET `MinLevel`='1', `MaxLevel`='2' WHERE `entry`='5403'; -- White Stallion
UPDATE `creature_template` SET `MinLevel`='1', `MaxLevel`='2' WHERE `entry`='5404'; -- Black Stallion
UPDATE `creature_template` SET `MinLevel`='1', `MaxLevel`='2' WHERE `entry`='5405'; -- Pinto
UPDATE `creature_template` SET `MinLevel`='1', `MaxLevel`='2' WHERE `entry`='5406'; -- Palomino
UPDATE `creature_template` SET `MaxLevel`='30' WHERE `entry`='5523'; -- War Party Kodo
UPDATE `creature_template` SET `MinLevel`='25', `MaxLevel`='25' WHERE `entry`='5652'; -- Practice Dummy
UPDATE `creature_template` SET `MinLevel`='25', `MaxLevel`='25' WHERE `entry`='5674'; -- Practice Target
UPDATE `creature_template` SET `MinLevel`='5', `MaxLevel`='5' WHERE `entry`='5739'; -- Caged Squirrel
UPDATE `creature_template` SET `MinLevel`='5', `MaxLevel`='5' WHERE `entry`='5741'; -- Caged Rabbit
UPDATE `creature_template` SET `MinLevel`='5', `MaxLevel`='5' WHERE `entry`='5742'; -- Caged Toad
UPDATE `creature_template` SET `MinLevel`='5', `MaxLevel`='5' WHERE `entry`='5743'; -- Caged Sheep
UPDATE `creature_template` SET `MinLevel`='18', `MaxLevel`='20' WHERE `entry`='5748'; -- Killian Sanatha
UPDATE `creature_template` SET `MinLevel`='1', `MaxLevel`='2' WHERE `entry`='5774'; -- Riding Wolf
UPDATE `creature_template` SET `MinLevel`='30', `MaxLevel`='30' WHERE `entry`='5814'; -- Innkeeper Thulbek
UPDATE `creature_template` SET `MinLevel`='5', `MaxLevel`='6' WHERE `entry`='5889'; -- Mesa Earth Spirit
UPDATE `creature_template` SET `MinLevel`='9', `MaxLevel`='10' WHERE `entry`='5896'; -- Fire Spirit
UPDATE `creature_template` SET `MaxLevel`='20' WHERE `entry`='5897'; -- Corrupt Water Spirit
UPDATE `creature_template` SET `MinLevel`='29', `MaxLevel`='30' WHERE `entry`='5898'; -- Air Spirit
UPDATE `creature_template` SET `MinLevel`='1', `MaxLevel`='2' WHERE `entry`='5917'; -- Clara Charles
UPDATE `creature_template` SET `MaxLevel`='32' WHERE `entry`='5953'; -- Razor Hill Grunt
UPDATE `creature_template` SET `MinLevel`='49', `MaxLevel`='51' WHERE `entry`='6001'; -- Nethergarde Analyst
UPDATE `creature_template` SET `MinLevel`='50', `MaxLevel`='51' WHERE `entry`='6003'; -- Nethergarde Officer
UPDATE `creature_template` SET `MinLevel`='28' WHERE `entry`='6139'; -- Highperch Soarer
UPDATE `creature_template` SET `MinLevel`='21' WHERE `entry`='6141'; -- Pridewing Soarer
UPDATE `creature_template` SET `MinLevel`='43', `MaxLevel`='45' WHERE `entry`='6169'; -- Klockmort Spannerspan
UPDATE `creature_template` SET `MinLevel`='22', `MaxLevel`='43' WHERE `entry`='6249'; -- Affray Spectator
UPDATE `creature_template` SET `MaxLevel`='51' WHERE `entry`='6372'; -- Makrinni Snapclaw
UPDATE `creature_template` SET `MinLevel`='30', `MaxLevel`='30' WHERE `entry`='6749'; -- Erma
UPDATE `creature_template` SET `MinLevel`='50', `MaxLevel`='55' WHERE `entry`='6887'; -- Yalda
UPDATE `creature_template` SET `MinLevel`='50', `MaxLevel`='50' WHERE `entry`='7167'; -- Polly
UPDATE `creature_template` SET `MinLevel`='45' WHERE `entry`='7272'; -- Theka the Martyr
UPDATE `creature_template` SET `MinLevel`='1', `MaxLevel`='1' WHERE `entry`='7560'; -- Snowshoe Rabbit
UPDATE `creature_template` SET `MinLevel`='40', `MaxLevel`='40' WHERE `entry`='7730'; -- Stonetalon Grunt
UPDATE `creature_template` SET `MinLevel`='57', `MaxLevel`='57' WHERE `entry`='7875'; -- Hadoken Swiftstrider
UPDATE `creature_template` SET `MinLevel`='45', `MaxLevel`='45' WHERE `entry`='8131'; -- Blizrik Buckshot
UPDATE `creature_template` SET `MinLevel`='45', `MaxLevel`='45' WHERE `entry`='8151'; -- Nijel's Point Guard
UPDATE `creature_template` SET `MinLevel`='50', `MaxLevel`='50' WHERE `entry`='8154'; -- Ghost Walker Brave
UPDATE `creature_template` SET `MinLevel`='40', `MaxLevel`='42' WHERE `entry`='8276'; -- Soaring Razorbeak
UPDATE `creature_template` SET `MaxLevel`='47' WHERE `entry`='8402'; -- Enslaved Archaeologist
UPDATE `creature_template` SET `MaxLevel`='47' WHERE `entry`='8417'; -- Dying Archaeologist
UPDATE `creature_template` SET `MinLevel`='50', `MaxLevel`='50' WHERE `entry`='8612'; -- Screecher Spirit
UPDATE `creature_template` SET `MinLevel`='1', `MaxLevel`='2' WHERE `entry`='8881'; -- Riding Ram
UPDATE `creature_template` SET `MinLevel`='1', `MaxLevel`='2' WHERE `entry`='8882'; -- Riding Tiger
UPDATE `creature_template` SET `MinLevel`='1', `MaxLevel`='2' WHERE `entry`='8883'; -- Riding Horse
UPDATE `creature_template` SET `MinLevel`='1', `MaxLevel`='2' WHERE `entry`='8884'; -- Skeletal Mount
UPDATE `creature_template` SET `MinLevel`='1', `MaxLevel`='2' WHERE `entry`='8885'; -- Riding Raptor
UPDATE `creature_template` SET `MinLevel`='50', `MaxLevel`='52' WHERE `entry`='8964'; -- Blackrock Drake
UPDATE `creature_template` SET `MinLevel`='56', `MaxLevel`='56' WHERE `entry`='8982'; -- Ironhand Guardian
UPDATE `creature_template` SET `MinLevel`='60', `MaxLevel`='60' WHERE `entry`='9299'; -- Gaeriyan
UPDATE `creature_template` SET `MinLevel`='52', `MaxLevel`='54' WHERE `entry`='9503'; -- Private Rocknot
UPDATE `creature_template` SET `MinLevel`='60', `MaxLevel`='60' WHERE `entry`='9542'; -- Franclorn's Spirit
UPDATE `creature_template` SET `MinLevel`='53', `MaxLevel`='53' WHERE `entry`='9544'; -- Yuka Screwspigot
UPDATE `creature_template` SET `MinLevel`='52', `MaxLevel`='53' WHERE `entry`='9601'; -- Treant Spirit
UPDATE `creature_template` SET `MaxLevel`='55' WHERE `entry`='9707'; -- Scarshield Portal
UPDATE `creature_template` SET `MinLevel`='5', `MaxLevel`='5' WHERE `entry`='9937'; -- Common Kitten
UPDATE `creature_template` SET `MinLevel`='30', `MaxLevel`='30' WHERE `entry`='9988'; -- Xon'cha
UPDATE `creature_template` SET `MinLevel`='4', `MaxLevel`='4' WHERE `entry`='9990'; -- Lanti'gah
UPDATE `creature_template` SET `MinLevel`='5', `MaxLevel`='5' WHERE `entry`='10042'; -- Corrupted Saber
UPDATE `creature_template` SET `MinLevel`='30', `MaxLevel`='30' WHERE `entry`='10048'; -- Gereck
UPDATE `creature_template` SET `MaxLevel`='55' WHERE `entry`='10299'; -- Scarshield Infiltrator
UPDATE `creature_template` SET `MinLevel`='52', `MaxLevel`='52' WHERE `entry`='10361'; -- Gruul Darkblade
UPDATE `creature_template` SET `MinLevel`='55', `MaxLevel`='55' WHERE `entry`='10379'; -- Altsoba Ragetotem
UPDATE `creature_template` SET `MinLevel`='1', `MaxLevel`='1' WHERE `entry`='10482'; -- Risen Lackey
UPDATE `creature_template` SET `MinLevel`='58', `MaxLevel`='58' WHERE `entry`='10577'; -- Crypt Scarab
UPDATE `creature_template` SET `MinLevel`='10', `MaxLevel`='10' WHERE `entry`='10582'; -- Dog
UPDATE `creature_template` SET `MinLevel`='50', `MaxLevel`='50' WHERE `entry`='10619'; -- Glacier
UPDATE `creature_template` SET `MinLevel`='8' WHERE `entry`='10803'; -- Rifleman Wheeler
UPDATE `creature_template` SET `MinLevel`='8' WHERE `entry`='10804'; -- Rifleman Middlecamp
UPDATE `creature_template` SET `MinLevel`='55', `MaxLevel`='57' WHERE `entry`='10956'; -- Naga Siren
UPDATE `creature_template` SET `MinLevel`='60', `MaxLevel`='60' WHERE `entry`='11054'; -- Crimson Rifleman
UPDATE `creature_template` SET `MinLevel`='56' WHERE `entry`='11064'; -- Darrowshire Spirit
UPDATE `creature_template` SET `MinLevel`='30', `MaxLevel`='30' WHERE `entry`='11069'; -- Jenova Stoneshield
UPDATE `creature_template` SET `MinLevel`='30', `MaxLevel`='30' WHERE `entry`='11105'; -- Aboda
UPDATE `creature_template` SET `MinLevel`='30', `MaxLevel`='30' WHERE `entry`='11119'; -- Azzleby
UPDATE `creature_template` SET `MinLevel`='1', `MaxLevel`='2' WHERE `entry`='11156'; -- Green Skeletal Warhorse
UPDATE `creature_template` SET `MinLevel`='53', `MaxLevel`='53' WHERE `entry`='11184'; -- Wixxrak
UPDATE `creature_template` SET `MinLevel`='60', `MaxLevel`='60' WHERE `entry`='11197'; -- Mindless Skeleton
UPDATE `creature_template` SET `MinLevel`='12', `MaxLevel`='60' WHERE `entry`='11277'; -- Caer Darrow Citizen
UPDATE `creature_template` SET `MinLevel`='51', `MaxLevel`='55' WHERE `entry`='11279'; -- Caer Darrow Guardsman
UPDATE `creature_template` SET `MinLevel`='50', `MaxLevel`='54' WHERE `entry`='11280'; -- Caer Darrow Cannoneer
UPDATE `creature_template` SET `MinLevel`='52', `MaxLevel`='56' WHERE `entry`='11281'; -- Caer Darrow Horseman
UPDATE `creature_template` SET `MinLevel`='40', `MaxLevel`='40' WHERE `entry`='11317'; -- Jinar'Zillen
UPDATE `creature_template` SET `MinLevel`='6' WHERE `entry`='11328'; -- Eastvale Peasant
UPDATE `creature_template` SET `MinLevel`='1', `MaxLevel`='1' WHERE `entry`='11547'; -- Skeletal Scholomance Student
UPDATE `creature_template` SET `MaxLevel`='58' WHERE `entry`='11620'; -- Spectral Marauder
UPDATE `creature_template` SET `MaxLevel`='58' WHERE `entry`='11621'; -- Spectral Corpse
UPDATE `creature_template` SET `MaxLevel`='37' WHERE `entry`='11627'; -- Tamed Kodo
UPDATE `creature_template` SET `MinLevel`='60', `MaxLevel`='60' WHERE `entry`='11817'; -- Krah'ranik
UPDATE `creature_template` SET `MinLevel`='58', `MaxLevel`='58' WHERE `entry`='11819'; -- Jory Zaga
UPDATE `creature_template` SET `MinLevel`='13' WHERE `entry`='11836'; -- Captured Rabid Thistle Bear
UPDATE `creature_template` SET `MinLevel`='44', `MaxLevel`='44' WHERE `entry`='11874'; -- Masat T'andr
UPDATE `creature_template` SET `MinLevel`='14', `MaxLevel`='14' WHERE `entry`='11875'; -- Mortar Team Target Dummy
UPDATE `creature_template` SET `MinLevel`='45', `MaxLevel`='45' WHERE `entry`='11877'; -- Roon Wildmane
UPDATE `creature_template` SET `MinLevel`='1', `MaxLevel`='2' WHERE `entry`='11884'; -- Obi
UPDATE `creature_template` SET `MinLevel`='51', `MaxLevel`='51' WHERE `entry`='12024'; -- Meliri
UPDATE `creature_template` SET `MinLevel`='30', `MaxLevel`='30' WHERE `entry`='12030'; -- Malux
UPDATE `creature_template` SET `MinLevel`='30', `MaxLevel`='30' WHERE `entry`='12045'; -- Hae'Wilani
UPDATE `creature_template` SET `MaxLevel`='54' WHERE `entry`='12141'; -- Ice Totem
UPDATE `creature_template` SET `MinLevel`='1', `MaxLevel`='2' WHERE `entry`='12150'; -- Riding Kodo (Purple)
UPDATE `creature_template` SET `MaxLevel`='58' WHERE `entry`='12208'; -- Conquered Soul of the Blightcaller
UPDATE `creature_template` SET `MinLevel`='3', `MaxLevel`='3' WHERE `entry`='12297'; -- Cured Gazelle
UPDATE `creature_template` SET `MinLevel`='5', `MaxLevel`='5' WHERE `entry`='12299'; -- Cured Deer
UPDATE `creature_template` SET `MinLevel`='1', `MaxLevel`='2' WHERE `entry`='12341'; -- Blue Skeletal Horse
UPDATE `creature_template` SET `MinLevel`='1', `MaxLevel`='2' WHERE `entry`='12342'; -- Brown Skeletal Horse
UPDATE `creature_template` SET `MinLevel`='1', `MaxLevel`='2' WHERE `entry`='12343'; -- Red Skeletal Horse
UPDATE `creature_template` SET `MinLevel`='1', `MaxLevel`='2' WHERE `entry`='12346'; -- Emerald Raptor
UPDATE `creature_template` SET `MinLevel`='1', `MaxLevel`='2' WHERE `entry`='12349'; -- Turquoise Raptor
UPDATE `creature_template` SET `MinLevel`='1', `MaxLevel`='2' WHERE `entry`='12350'; -- Violet Raptor
UPDATE `creature_template` SET `MinLevel`='11',`MaxLevel`='12' WHERE `entry`='12354'; -- Brown Riding Kodo
UPDATE `creature_template` SET `MinLevel`='11',`MaxLevel`='12' WHERE `entry`='12355'; -- Gray Riding Kodo
UPDATE `creature_template` SET `MinLevel`='1', `MaxLevel`='2' WHERE `entry`='12358'; -- Riding Striped Frostsaber
UPDATE `creature_template` SET `MinLevel`='1', `MaxLevel`='2' WHERE `entry`='12359'; -- Riding Spotted Frostsaber
UPDATE `creature_template` SET `MinLevel`='1', `MaxLevel`='2' WHERE `entry`='12360'; -- Riding Striped Nightsaber
UPDATE `creature_template` SET `MinLevel`='1', `MaxLevel`='2' WHERE `entry`='12363'; -- Blue Mechanostrider
UPDATE `creature_template` SET `MinLevel`='1', `MaxLevel`='2' WHERE `entry`='12365'; -- Red Mechanostrider
UPDATE `creature_template` SET `MinLevel`='1', `MaxLevel`='2' WHERE `entry`='12366'; -- Unpainted Mechanostrider
UPDATE `creature_template` SET `MinLevel`='1', `MaxLevel`='2' WHERE `entry`='12367'; -- Green Mechanostrider
UPDATE `creature_template` SET `MinLevel`='1', `MaxLevel`='2' WHERE `entry`='12372'; -- Brown Ram
UPDATE `creature_template` SET `MinLevel`='1', `MaxLevel`='2' WHERE `entry`='12373'; -- Gray Ram
UPDATE `creature_template` SET `MinLevel`='1', `MaxLevel`='2' WHERE `entry`='12374'; -- White Riding Ram
UPDATE `creature_template` SET `MinLevel`='1', `MaxLevel`='2' WHERE `entry`='12375'; -- Chestnut Mare
UPDATE `creature_template` SET `MinLevel`='1', `MaxLevel`='2' WHERE `entry`='12376'; -- Brown Horse
UPDATE `creature_template` SET `MinLevel`='60', `MaxLevel`='60' WHERE `entry`='12536'; -- Illusion: Black Dragonkin
UPDATE `creature_template` SET `MinLevel`='62', `MaxLevel`='62' WHERE `entry`='12756'; -- Lady Onyxia
UPDATE `creature_template` SET `MinLevel`='62', `MaxLevel`='62' WHERE `entry`='12898'; -- Phantim Illusion
UPDATE `creature_template` SET `MaxLevel`='46' WHERE `entry`='12923'; -- Injured Soldier
UPDATE `creature_template` SET `MaxLevel`='48' WHERE `entry`='12924'; -- Badly Injured Soldier
UPDATE `creature_template` SET `MaxLevel`='50' WHERE `entry`='12925'; -- Critically Injured Soldier
UPDATE `creature_template` SET `MaxLevel`='48' WHERE `entry`='12936'; -- Badly Injured Alliance Soldier
UPDATE `creature_template` SET `MinLevel`='46' WHERE `entry`='12937'; -- Critically Injured Alliance Soldier
UPDATE `creature_template` SET `MaxLevel`='46' WHERE `entry`='12938'; -- Injured Alliance Soldier
UPDATE `creature_template` SET `MinLevel`='60', `MaxLevel`='60' WHERE `entry`='12999'; -- Blackwing Trigger
UPDATE `creature_template` SET `MinLevel`='54', `MaxLevel`='55' WHERE `entry`='13080'; -- Irondeep Guard
UPDATE `creature_template` SET `MinLevel`='58', `MaxLevel`='58' WHERE `entry`='13216'; -- Gaelden Hammersmith
UPDATE `creature_template` SET `MaxLevel`='58' WHERE `entry`='13322'; -- Hydraxian Honor Guard
UPDATE `creature_template` SET `MinLevel`='61', `MaxLevel`='61' WHERE `entry`='13356'; -- Stormpike Mine Layer
UPDATE `creature_template` SET `MinLevel`='40', `MaxLevel`='40' WHERE `entry`='13699'; -- Selendra
UPDATE `creature_template` SET `MinLevel`='60', `MaxLevel`='60' WHERE `entry`='13756'; -- PvP Graveyard Credit Marker
UPDATE `creature_template` SET `MaxLevel`='59' WHERE `entry`='13777'; -- Sergeant Durgen Stormpike
UPDATE `creature_template` SET `MinLevel`='60', `MaxLevel`='60' WHERE `entry`='13778'; -- PvP Tower Credit Marker
UPDATE `creature_template` SET `MinLevel`='60', `MaxLevel`='60' WHERE `entry`='13796'; -- PvP Mine Credit Marker
UPDATE `creature_template` SET `MinLevel`='58', `MaxLevel`='59' WHERE `entry`='13957'; -- Winterax Warrior
UPDATE `creature_template` SET `MinLevel`='61', `MaxLevel`='61' WHERE `entry`='13977'; -- Gash'nak the Cannibal
UPDATE `creature_template` SET `MinLevel`='61', `MaxLevel`='61' WHERE `entry`='14016'; -- Ushalac the Gloomdweller
UPDATE `creature_template` SET `MinLevel`='59', `MaxLevel`='60' WHERE `entry`='14017'; -- Withered Troll
UPDATE `creature_template` SET `MinLevel`='61', `MaxLevel`='61' WHERE `entry`='14018'; -- Rezrelek
UPDATE `creature_template` SET `MinLevel`='61', `MaxLevel`='61' WHERE `entry`='14019'; -- Tatterhide
UPDATE `creature_template` SET `MinLevel`='60', `MaxLevel`='60' WHERE `entry`='14021'; -- Winterax Sentry
UPDATE `creature_template` SET `MinLevel`='60', `MaxLevel`='60' WHERE `entry`='14026'; -- Trigger Guse
UPDATE `creature_template` SET `MinLevel`='60', `MaxLevel`='60' WHERE `entry`='14027'; -- Trigger Mulverick
UPDATE `creature_template` SET `MinLevel`='60', `MaxLevel`='60' WHERE `entry`='14028'; -- Trigger Jeztor
UPDATE `creature_template` SET `MinLevel`='60', `MaxLevel`='60' WHERE `entry`='14029'; -- Trigger Ichman
UPDATE `creature_template` SET `MinLevel`='60', `MaxLevel`='60' WHERE `entry`='14030'; -- Trigger Slidore
UPDATE `creature_template` SET `MinLevel`='60', `MaxLevel`='60' WHERE `entry`='14031'; -- Trigger Vipore
UPDATE `creature_template` SET `MinLevel`='54', `MaxLevel`='55' WHERE `entry`='14061'; -- Phase Lasher (Fire)
UPDATE `creature_template` SET `MinLevel`='54', `MaxLevel`='55' WHERE `entry`='14062'; -- Phase Lasher (Nature)
UPDATE `creature_template` SET `MinLevel`='54', `MaxLevel`='55' WHERE `entry`='14063'; -- Phase Lasher (Arcane)
UPDATE `creature_template` SET `MinLevel`='54', `MaxLevel`='55' WHERE `entry`='14184'; -- Phase Lasher (Frost)
UPDATE `creature_template` SET `MinLevel`='61', `MaxLevel`='61' WHERE `entry`='14284'; -- Stormpike Battleguard
UPDATE `creature_template` SET `MinLevel`='45', `MaxLevel`='45' WHERE `entry`='14301'; -- Brinna Valanaar
UPDATE `creature_template` SET `MinLevel`='60', `MaxLevel`='60' WHERE `entry`='14306'; -- Eskhandar
UPDATE `creature_template` SET `MaxLevel`='58' WHERE `entry`='14364'; -- Shen'dralar Spirit
UPDATE `creature_template` SET `MinLevel`='36', `MaxLevel`='40' WHERE `entry`='14390'; -- Expeditionary Mountaineer
UPDATE `creature_template` SET `MaxLevel`='58' WHERE `entry`='14395'; -- Griniblix the Spectator
UPDATE `creature_template` SET `MinLevel`='1', `MaxLevel`='1' WHERE `entry`='14434'; -- Alarm-o-Bot
UPDATE `creature_template` SET `MinLevel`='59' WHERE `entry`='14482'; -- Xorothian Imp
UPDATE `creature_template` SET `MinLevel`='60', `MaxLevel`='60' WHERE `entry`='14495'; -- Invisible Trigger One
UPDATE `creature_template` SET `MinLevel`='1', `MaxLevel`='3' WHERE `entry`='14499'; -- Horde Orphan
UPDATE `creature_template` SET `MinLevel`='63', `MaxLevel`='63' WHERE `entry`='14503'; -- The Cleaner
UPDATE `creature_template` SET `MinLevel`='60' WHERE `entry`='14519'; -- Aspect of Corruption
UPDATE `creature_template` SET `MinLevel`='1', `MaxLevel`='2' WHERE `entry`='14602'; -- Swift Stormsaber
UPDATE `creature_template` SET `MaxLevel`='49' WHERE `entry`='14604'; -- Zapped Land Walker
UPDATE `creature_template` SET `MaxLevel`='52' WHERE `entry`='14622'; -- Thorium Brotherhood Lookout
UPDATE `creature_template` SET `MaxLevel`='50' WHERE `entry`='14640'; -- Zapped Cliff Giant
UPDATE `creature_template` SET `MinLevel`='60', `MaxLevel`='60' WHERE `entry`='14646'; -- Stratholme Trigger
UPDATE `creature_template` SET `MaxLevel`='27' WHERE `entry`='14718'; -- Horde Laborer
UPDATE `creature_template` SET `MinLevel`='47', `MaxLevel`='47' WHERE `entry`='14737'; -- Smith Slagtree
UPDATE `creature_template` SET `MinLevel`='48', `MaxLevel`='48' WHERE `entry`='14738'; -- Otho Moji'ko
UPDATE `creature_template` SET `MinLevel`='48', `MaxLevel`='48' WHERE `entry`='14739'; -- Mystic Yayo'jin
UPDATE `creature_template` SET `MinLevel`='42', `MaxLevel`='42' WHERE `entry`='14740'; -- Katoom the Angler
UPDATE `creature_template` SET `MinLevel`='3', `MaxLevel`='3' WHERE `entry`='14801'; -- Wild Polymorph Target
UPDATE `creature_template` SET `MinLevel`='60', `MaxLevel`='60' WHERE `entry`='14848'; -- Herald
UPDATE `creature_template` SET `MinLevel`='5', `MaxLevel`='5' WHERE `entry`='14878'; -- Jubling
UPDATE `creature_template` SET `MinLevel`='1', `MaxLevel`='1' WHERE `entry`='14884'; -- Parasitic Serpent
UPDATE `creature_template` SET `MinLevel`='30', `MaxLevel`='30' WHERE `entry`='14962'; -- Dillord Copperpinch
UPDATE `creature_template` SET `MinLevel`='30', `MaxLevel`='30' WHERE `entry`='14964'; -- Hecht Copperpinch
UPDATE `creature_template` SET `MinLevel`='60', `MaxLevel`='60' WHERE `entry`='14987'; -- Powerful Healing Ward
UPDATE `creature_template` SET `MinLevel`='5', `MaxLevel`='5' WHERE `entry`='15045'; -- Arathi Farmer
UPDATE `creature_template` SET `MinLevel`='5', `MaxLevel`='5' WHERE `entry`='15046'; -- Forsaken Farmer
UPDATE `creature_template` SET `MinLevel`='5', `MaxLevel`='5' WHERE `entry`='15062'; -- Arathi Lumberjack
UPDATE `creature_template` SET `MinLevel`='5', `MaxLevel`='5' WHERE `entry`='15063'; -- Arathi Blacksmith
UPDATE `creature_template` SET `MinLevel`='5', `MaxLevel`='5' WHERE `entry`='15064'; -- Forsaken Blacksmith
UPDATE `creature_template` SET `MinLevel`='60', `MaxLevel`='60' WHERE `entry`='15068'; -- Zulian Guardian
UPDATE `creature_template` SET `MinLevel`='63', `MaxLevel`='63' WHERE `entry`='15069'; -- Heart of Hakkar
UPDATE `creature_template` SET `MinLevel`='5', `MaxLevel`='5' WHERE `entry`='15074'; -- Arathi Miner
UPDATE `creature_template` SET `MinLevel`='5', `MaxLevel`='5' WHERE `entry`='15075'; -- Forsaken Miner
UPDATE `creature_template` SET `MinLevel`='5', `MaxLevel`='5' WHERE `entry`='15086'; -- Arathi Stablehand
UPDATE `creature_template` SET `MinLevel`='5', `MaxLevel`='5' WHERE `entry`='15087'; -- Forsaken Stablehand
UPDATE `creature_template` SET `MinLevel`='5', `MaxLevel`='5' WHERE `entry`='15089'; -- Forsaken Lumberjack
UPDATE `creature_template` SET `MaxLevel`='23' WHERE `entry`='15102'; -- Silverwing Emissary
UPDATE `creature_template` SET `MinLevel`='5', `MaxLevel`='5' WHERE `entry`='15107'; -- Arathi Horse
UPDATE `creature_template` SET `MinLevel`='1', `MaxLevel`='2' WHERE `entry`='15108'; -- Forsaken Horse
UPDATE `creature_template` SET `MinLevel`='60', `MaxLevel`='60' WHERE `entry`='15112'; -- Brain Wash Totem
UPDATE `creature_template` SET `MinLevel`='38', `MaxLevel`='40' WHERE `entry`='15118'; -- Master Angler Form
UPDATE `creature_template` SET `MinLevel`='55', `MaxLevel`='55' WHERE `entry`='15127'; -- Samuel Hawke
UPDATE `creature_template` SET `MinLevel`='55', `MaxLevel`='55' WHERE `entry`='15130'; -- League of Arathor Elite
UPDATE `creature_template` SET `MinLevel`='70', `MaxLevel`='70' WHERE `entry`='15134'; -- Outlands Test Dummy Warrior 70
UPDATE `creature_template` SET `MinLevel`='60', `MaxLevel`='60' WHERE `entry`='15140'; -- Pat's Splash Guy
UPDATE `creature_template` SET `MinLevel`='65', `MaxLevel`='65' WHERE `entry`='15144'; -- Outlands Test Dummy Warrior 65
UPDATE `creature_template` SET `MinLevel`='67', `MaxLevel`='67' WHERE `entry`='15145'; -- Outlands Test Dummy Warrior 67
UPDATE `creature_template` SET `MinLevel`='64', `MaxLevel`='64' WHERE `entry`='15158'; -- Outlands Test Dummy Warrior 64
UPDATE `creature_template` SET `MinLevel`='66', `MaxLevel`='66' WHERE `entry`='15159'; -- Outlands Test Dummy Warrior 66
UPDATE `creature_template` SET `MinLevel`='68', `MaxLevel`='68' WHERE `entry`='15160'; -- Outlands Test Dummy Warrior 68
UPDATE `creature_template` SET `MinLevel`='69', `MaxLevel`='69' WHERE `entry`='15161'; -- Outlands Test Dummy Warrior 69
UPDATE `creature_template` SET `MinLevel`='60', `MaxLevel`='60' WHERE `entry`='15164'; -- Mulgore Trigger
UPDATE `creature_template` SET `MaxLevel`='57' WHERE `entry`='15191'; -- Windcaller Proudhorn
UPDATE `creature_template` SET `MinLevel`='63', `MaxLevel`='63' WHERE `entry`='15192'; -- Anachronos
UPDATE `creature_template` SET `MinLevel`='60', `MaxLevel`='60' WHERE `entry`='15218'; -- Faire Cannon Trigger
UPDATE `creature_template` SET `MinLevel`='63', `MaxLevel`='63' WHERE `entry`='15224'; -- Dream Fog
UPDATE `creature_template` SET `MaxLevel`='58' WHERE `entry`='15306'; -- Bor Wildmane
UPDATE `creature_template` SET `MinLevel`='63', `MaxLevel`='63' WHERE `entry`='15362'; -- Malfurion Stormrage
UPDATE `creature_template` SET `MinLevel`='60', `MaxLevel`='60' WHERE `entry`='15384'; -- World Trigger
UPDATE `creature_template` SET `MinLevel`='5', `MaxLevel`='5' WHERE `entry`='15429'; -- Disgusting Oozeling
UPDATE `creature_template` SET `MinLevel`='61', `MaxLevel`='61' WHERE `entry`='15471'; -- Lieutenant General Andorov
UPDATE `creature_template` SET `MinLevel`='60', `MaxLevel`='60' WHERE `entry`='15473'; -- Kaldorei Elite
UPDATE `creature_template` SET `MinLevel`='60', `MaxLevel`='60' WHERE `entry`='15512'; -- Apothecary Jezel
UPDATE `creature_template` SET `MinLevel`='58', `MaxLevel`='58' WHERE `entry`='15522'; -- Sergeant Umala
UPDATE `creature_template` SET `MinLevel`='60', `MaxLevel`='60' WHERE `entry`='15525'; -- Doctor Serratus
UPDATE `creature_template` SET `MinLevel`='58', `MaxLevel`='58' WHERE `entry`='15529'; -- Lady Callow
UPDATE `creature_template` SET `MinLevel`='60', `MaxLevel`='60' WHERE `entry`='15532'; -- Stoneguard Clayhoof
UPDATE `creature_template` SET `MinLevel`='62', `MaxLevel`='62' WHERE `entry`='15537'; -- Anubisath Warrior
UPDATE `creature_template` SET `MinLevel`='62', `MaxLevel`='62' WHERE `entry`='15538'; -- Anubisath Swarmguard
UPDATE `creature_template` SET `MinLevel`='6' WHERE `entry`='15624'; -- Forest Wisp
UPDATE `creature_template` SET `MinLevel`='45' WHERE `entry`='15692'; -- Dark Iron Kidnapper
UPDATE `creature_template` SET `MinLevel`='60', `MaxLevel`='60' WHERE `entry`='15695'; -- Vek Twins Trigger
UPDATE `creature_template` SET `MaxLevel`='60' WHERE `entry`='15719'; -- Thunder Bluff Reveler
UPDATE `creature_template` SET `MinLevel`='58', `MaxLevel`='58' WHERE `entry`='15721'; -- Mechanical Greench
UPDATE `creature_template` SET `MinLevel`='1', `MaxLevel`='60' WHERE `entry`='15723'; -- Booty Bay Reveler
UPDATE `creature_template` SET `MinLevel`='30', `MaxLevel`='30' WHERE `entry`='15746'; -- Great-father Winter's Helper
UPDATE `creature_template` SET `MinLevel`='30' WHERE `entry`='15760'; -- Winter Reveler
UPDATE `creature_template` SET `MinLevel`='60', `MaxLevel`='60' WHERE `entry`='15773'; -- Christmas Cannon Master Willey
UPDATE `creature_template` SET `MinLevel`='62', `MaxLevel`='62' WHERE `entry`='15776'; -- Christmas Warchief Rend Blackhand
UPDATE `creature_template` SET `MinLevel`='61', `MaxLevel`='61' WHERE `entry`='15796'; -- Christmas Goraluk Anvilcrack
UPDATE `creature_template` SET `MinLevel`='1', `MaxLevel`='11' WHERE `entry`='15801'; -- GONG BOY DND DNR
UPDATE `creature_template` SET `MinLevel`='50', `MaxLevel`='50' WHERE `entry`='15803'; -- Tranquil Air Totem
UPDATE `creature_template` SET `MinLevel`='13', `MaxLevel`='15' WHERE `entry`='15839'; -- Might of Kalimdor Grunt
UPDATE `creature_template` SET `MinLevel`='15', `MaxLevel`='17' WHERE `entry`='15840'; -- Might of Kalimdor Sergeant
UPDATE `creature_template` SET `MinLevel`='45', `MaxLevel`='48' WHERE `entry`='15841'; -- Might of Kalimdor Lieutenant
UPDATE `creature_template` SET `MinLevel`='35', `MaxLevel`='36' WHERE `entry`='15842'; -- Might of Kalimdor Mage
UPDATE `creature_template` SET `MinLevel`='55', `MaxLevel`='56' WHERE `entry`='15843'; -- Might of Kalimdor Priest
UPDATE `creature_template` SET `MinLevel`='45', `MaxLevel`='46' WHERE `entry`='15846'; -- Might of Kalimdor Archer
UPDATE `creature_template` SET `MinLevel`='56', `MaxLevel`='59' WHERE `entry`='15848'; -- Might of Kalimdor Infantry
UPDATE `creature_template` SET `MinLevel`='35', `MaxLevel`='36' WHERE `entry`='15849'; -- Might of Kalimdor Druid
UPDATE `creature_template` SET `MinLevel`='35', `MaxLevel`='36' WHERE `entry`='15850'; -- Might of Kalimdor Skirmisher
UPDATE `creature_template` SET `MinLevel`='59', `MaxLevel`='60' WHERE `entry`='15851'; -- Might of Kalimdor Marshal
UPDATE `creature_template` SET `MinLevel`='55', `MaxLevel`='56' WHERE `entry`='15865'; -- Might of Kalimdor Major
UPDATE `creature_template` SET `MinLevel`='59', `MaxLevel`='60' WHERE `entry`='15867'; -- Might of Kalimdor Archmage
UPDATE `creature_template` SET `MaxLevel`='61' WHERE `entry`='15852'; -- Orgrimmar Elite Shieldguard
UPDATE `creature_template` SET `MinLevel`='61', `MaxLevel`='61' WHERE `entry`='15854'; -- Orgrimmar Elite Cavalryman
UPDATE `creature_template` SET `MinLevel`='59' WHERE `entry`='15858'; -- Stormwind Infantryman
UPDATE `creature_template` SET `MinLevel`='60', `MaxLevel`='60' WHERE `entry`='15882'; -- Pat's Firework Guy - RED
UPDATE `creature_template` SET `MinLevel`='60', `MaxLevel`='60' WHERE `entry`='15883'; -- Pat's Firework Guy - YELLOW
UPDATE `creature_template` SET `MinLevel`='55', `MaxLevel`='55' WHERE `entry`='15899'; -- Lunar Festival NE Vendor (PH)
UPDATE `creature_template` SET `MinLevel`='55', `MaxLevel`='55' WHERE `entry`='15900'; -- Lunar Festival NE Harbinger
UPDATE `creature_template` SET `MinLevel`='60', `MaxLevel`='60' WHERE `entry`='15902'; -- Giant Spotlight
UPDATE `creature_template` SET `MaxLevel`='60' WHERE `entry`='15905'; -- Darnassus Reveler
UPDATE `creature_template` SET `MaxLevel`='60' WHERE `entry`='15907'; -- Undercity Reveler
UPDATE `creature_template` SET `MaxLevel`='60' WHERE `entry`='15908'; -- Orgrimmar Reveler
UPDATE `creature_template` SET `MinLevel`='55', `MaxLevel`='55' WHERE `entry`='15917'; -- Lunar Festival Reveler
UPDATE `creature_template` SET `MinLevel`='60', `MaxLevel`='60' WHERE `entry`='15918'; -- Pat's Firework Cluster Guy (ELUNE)
UPDATE `creature_template` SET `MinLevel`='60', `MaxLevel`='60' WHERE `entry`='15922'; -- Viscidus Trigger
UPDATE `creature_template` SET `MinLevel`='60', `MaxLevel`='60' WHERE `entry`='16006'; -- InCombat Trigger
UPDATE `creature_template` SET `MinLevel`='60', `MaxLevel`='60' WHERE `entry`='16044'; -- Mor Grayhoof Trigger
UPDATE `creature_template` SET `MinLevel`='60', `MaxLevel`='60' WHERE `entry`='16046'; -- Jarien and Sothos Trigger
UPDATE `creature_template` SET `MinLevel`='60', `MaxLevel`='60' WHERE `entry`='16047'; -- Kormok Trigger
UPDATE `creature_template` SET `MinLevel`='60', `MaxLevel`='60' WHERE `entry`='16079'; -- Theldren Trigger
UPDATE `creature_template` SET `MinLevel`='60', `MaxLevel`='60' WHERE `entry`='16082'; -- Naxxramas Trigger
UPDATE `creature_template` SET `MinLevel`='60', `MaxLevel`='60' WHERE `entry`='16100'; -- Ysida's Trigger
UPDATE `creature_template` SET `MinLevel`='5', `MaxLevel`='5' WHERE `entry`='16110'; -- Annalise Lerent
UPDATE `creature_template` SET `MinLevel`='60', `MaxLevel`='60' WHERE `entry`='16137'; -- Naxxramas Military Sub-Boss Trigger
UPDATE `creature_template` SET `MinLevel`='60', `MaxLevel`='60' WHERE `entry`='16166'; -- Theldren Kill Credit
UPDATE `creature_template` SET `MinLevel`='55', `MaxLevel`='55' WHERE `entry`='16241'; -- Argent Recruiter
UPDATE `creature_template` SET `MinLevel`='55', `MaxLevel`='55' WHERE `entry`='16281'; -- Keeper of the Rolls
UPDATE `creature_template` SET `MinLevel`='55', `MaxLevel`='55' WHERE `entry`='16285'; -- Argent Emissary
UPDATE `creature_template` SET `MinLevel`='60', `MaxLevel`='60' WHERE `entry`='16400'; -- Toxic Tunnel
UPDATE `creature_template` SET `MinLevel`='1', `MaxLevel`='1' WHERE `entry`='16401'; -- Necropolis
UPDATE `creature_template` SET `MinLevel`='60', `MaxLevel`='60' WHERE `entry`='16419'; -- Ghost of Naxxramas
UPDATE `creature_template` SET `MinLevel`='10', `MaxLevel`='10' WHERE `entry`='16484'; -- Lieutenant Nevell
UPDATE `creature_template` SET `MinLevel`='10', `MaxLevel`='10' WHERE `entry`='16490'; -- Lieutenant Lisande
UPDATE `creature_template` SET `MinLevel`='10', `MaxLevel`='10' WHERE `entry`='16493'; -- Lieutenant Dagel
UPDATE `creature_template` SET `MinLevel`='10', `MaxLevel`='10' WHERE `entry`='16495'; -- Lieutenant Beitha
UPDATE `creature_template` SET `MinLevel`='55', `MaxLevel`='55' WHERE `entry`='16384'; -- Argent Dawn Initiate
UPDATE `creature_template` SET `MinLevel`='55', `MaxLevel`='55' WHERE `entry`='16395'; -- Argent Dawn Paladin
UPDATE `creature_template` SET `MinLevel`='55', `MaxLevel`='55' WHERE `entry`='16433'; -- Argent Dawn Crusader
UPDATE `creature_template` SET `MinLevel`='55', `MaxLevel`='55' WHERE `entry`='16434'; -- Argent Dawn Champion
UPDATE `creature_template` SET `MinLevel`='55', `MaxLevel`='55' WHERE `entry`='16435'; -- Argent Dawn Cleric
UPDATE `creature_template` SET `MinLevel`='55', `MaxLevel`='55' WHERE `entry`='16436'; -- Argent Dawn Priest
UPDATE `creature_template` SET `MinLevel`='55', `MaxLevel`='55' WHERE `entry`='16786'; -- Argent Quartermaster
UPDATE `creature_template` SET `MinLevel`='55', `MaxLevel`='55' WHERE `entry`='16787'; -- Argent Outfitter
UPDATE `creature_template` SET `MinLevel`='60', `MaxLevel`='60' WHERE `entry`='16979'; -- Midsummer Merchant
UPDATE `creature_template` SET `MinLevel`='60', `MaxLevel`='60' WHERE `entry`='16985'; -- Midsummer Merchant Horde Costume
UPDATE `creature_template` SET `MinLevel`='60', `MaxLevel`='60' WHERE `entry`='16986'; -- Midsummer Merchant Alliance Costume
UPDATE `creature_template` SET `MinLevel`='60', `MaxLevel`='60' WHERE `entry`='16995'; -- Mouth of Kel'Thuzad
UPDATE `creature_template` SET `MinLevel`='1', `MaxLevel`='60' WHERE `entry`='17038'; -- Stormwind Firebreather
UPDATE `creature_template` SET `MinLevel`='1', `MaxLevel`='60' WHERE `entry`='17041'; -- Orgrimmar Fireeater
UPDATE `creature_template` SET `MinLevel`='1', `MaxLevel`='60' WHERE `entry`='17048'; -- Ironforge Firebreather
UPDATE `creature_template` SET `MinLevel`='1', `MaxLevel`='60' WHERE `entry`='17049'; -- Darnassus Firebreather
UPDATE `creature_template` SET `MinLevel`='1', `MaxLevel`='60' WHERE `entry`='17050'; -- Thunder Bluff Fireeater
UPDATE `creature_template` SET `MinLevel`='1', `MaxLevel`='60' WHERE `entry`='17051'; -- Undercity Fireeater
UPDATE `creature_template` SET `MinLevel`='60', `MaxLevel`='60' WHERE `entry`='17719'; -- Ironforge Gryphon Rider
UPDATE `creature_template` SET `MinLevel`='60', `MaxLevel`='60' WHERE `entry`='17720'; -- Orgrimmar Wyvern Rider

-- tbc+
-- UPDATE `creature_template` SET `MinLevel` = 65, `MaxLevel` = 65 WHERE `entry` = 10038; -- Night Watch Guard	55	55
-- UPDATE `creature_template` SET `MinLevel`='45', `MaxLevel`='45' WHERE `entry`='2386'; -- Southshore Guard - prob reduced due to quest, Tarren Mill Deathguard were nerfed too for balance.
-- UPDATE `creature_template` SET `MaxLevel`='30' WHERE `entry`='3180'; -- Dark Iron Entrepreneur
-- UPDATE `creature_template` SET `MinLevel`='21', `MaxLevel`='21' WHERE `entry`='4528'; -- Stone Rumbler (summoned?)
-- UPDATE `creature_template` SET `MinLevel`='70', `MaxLevel`='70' WHERE `entry`='10404'; -- [UNUSED] Fetid Wight
-- UPDATE `creature_template` SET `MinLevel`='61', `MaxLevel`='61', `HeroicEntry` = 22626 WHERE `entry`='10985'; -- Ice Giant
-- UPDATE `creature_template` SET `MinLevel`='61', `MaxLevel`='61' WHERE `entry` = 22626;
-- UPDATE `creature_template` SET `MinLevel`='58', `MaxLevel`='58', `HeroicEntry` = 22728 WHERE `entry`='10989'; -- Blizzard Elemental
-- UPDATE `creature_template` SET `MinLevel`='68', `MaxLevel`='68' WHERE `entry`='22728';
-- UPDATE `creature_template` SET `MinLevel`='52', `MaxLevel`='53', `HeroicEntry` = 22781 WHERE `entry`='11606'; -- Whitewhisker Tunnel Rat
-- UPDATE `creature_template` SET `MinLevel`='62', `MaxLevel`='63' WHERE `entry`='22781';
-- UPDATE `creature_template` SET `MinLevel`='62', `MaxLevel`='62', `HeroicEntry` = 22642 WHERE `entry`='11676'; -- Fjordune the Greater
-- UPDATE `creature_template` SET `MinLevel`='72', `MaxLevel`='72' WHERE `entry`='22642';
-- UPDATE `creature_template` SET `MinLevel`='64', `MaxLevel`='65' WHERE `entry`='22743'; -- Irondeep Guard
-- UPDATE `creature_template` SET `MinLevel`='68', `MaxLevel`='68' WHERE `entry`='22680'; -- Gaelden Hammersmith
-- UPDATE `creature_template` SET `MinLevel`='60', `MaxLevel`='60', `HeroicEntry` = 22553 WHERE `entry`='13281'; -- Furis
-- UPDATE `creature_template` SET `MinLevel`='70', `MaxLevel`='70' WHERE `entry`='22553';
-- UPDATE `creature_template` SET `MinLevel`='61', `MaxLevel`='61', `HeroicEntry` = 22632 WHERE `entry`='13496'; -- Risen Ancient
-- UPDATE `creature_template` SET `MinLevel`='71', `MaxLevel`='71' WHERE `entry`='22632';
-- UPDATE `creature_template` SET `MinLevel`='58', `MaxLevel`='58', `HeroicEntry` = 22675 WHERE `entry`='13516'; -- Frostwolf Outrunner
-- UPDATE `creature_template` SET `MinLevel`='68', `MaxLevel`='68' WHERE `entry`='22675';
-- UPDATE `creature_template` SET `MinLevel`='58', `MaxLevel`='58', `HeroicEntry` = 22692 WHERE `entry`='13520'; -- Stormpike Ranger
-- UPDATE `creature_template` SET `MinLevel`='68', `MaxLevel`='68' WHERE `entry`='22692';
-- UPDATE `creature_template` SET `MinLevel`='61', `MaxLevel`='61', `HeroicEntry` = 22611 WHERE `entry`='13523'; -- Champion Ranger
-- UPDATE `creature_template` SET `MinLevel`='71', `MaxLevel`='71' WHERE `entry`='22611';
-- UPDATE `creature_template` SET `MaxLevel`='59', `HeroicEntry` = 22759 WHERE `entry`='13777'; -- Sergeant Durgen Stormpike
-- UPDATE `creature_template` SET `MinLevel`='68', `MaxLevel`='69' WHERE `entry`='22759';
-- UPDATE `creature_template` SET `MinLevel`='58', `MaxLevel`='59', `HeroicEntry` = 22795 WHERE `entry`='13957'; -- Winterax Warrior
-- UPDATE `creature_template` SET `MinLevel`='68', `MaxLevel`='69' WHERE `entry`='22795';
-- UPDATE `creature_template` SET `MinLevel`='61', `MaxLevel`='61', `HeroicEntry` = 22625 WHERE `entry`='13977'; -- Gash'nak the Cannibal
-- UPDATE `creature_template` SET `MinLevel`='71', `MaxLevel`='71' WHERE `entry`='22625';
-- UPDATE `creature_template` SET `MinLevel`='61', `MaxLevel`='61', `HeroicEntry` = 22637 WHERE `entry`='14016'; -- Ushalac the Gloomdweller
-- UPDATE `creature_template` SET `MinLevel`='71', `MaxLevel`='71' WHERE `entry`='22637';
-- UPDATE `creature_template` SET `MinLevel`='59', `MaxLevel`='60', `HeroicEntry` = 22797 WHERE `entry`='14017'; -- Withered Troll
-- UPDATE `creature_template` SET `MinLevel`='69', `MaxLevel`='70' WHERE `entry`='22797';
-- UPDATE `creature_template` SET `MinLevel`='61', `MaxLevel`='61', `HeroicEntry` = 22631 WHERE `entry`='14018'; -- Rezrelek
-- UPDATE `creature_template` SET `MinLevel`='71', `MaxLevel`='71' WHERE `entry`='22631';
-- UPDATE `creature_template` SET `MinLevel`='61', `MaxLevel`='61', `HeroicEntry` = 22636 WHERE `entry`='14019'; -- Tatterhide
-- UPDATE `creature_template` SET `MinLevel`='71', `MaxLevel`='71' WHERE `entry`='22636';
-- UPDATE `creature_template` SET `MinLevel`='60', `MaxLevel`='60', `HeroicEntry` = 22599 WHERE `entry`='14021'; -- Winterax Sentry
-- UPDATE `creature_template` SET `MinLevel`='70', `MaxLevel`='70' WHERE `entry`='22599';
-- UPDATE `creature_template` SET `MinLevel`='60', `MaxLevel`='60', `HeroicEntry` = 22581 WHERE `entry`='14026'; -- Trigger Guse
-- UPDATE `creature_template` SET `MinLevel`='70', `MaxLevel`='70' WHERE `entry`='22581';
-- UPDATE `creature_template` SET `MinLevel`='60', `MaxLevel`='60', `HeroicEntry` = 22584 WHERE `entry`='14027'; -- Trigger Mulverick
-- UPDATE `creature_template` SET `MinLevel`='70', `MaxLevel`='70' WHERE `entry`='22584';
-- UPDATE `creature_template` SET `MinLevel`='60', `MaxLevel`='60', `HeroicEntry` = 22583 WHERE `entry`='14028'; -- Trigger Jeztor
-- UPDATE `creature_template` SET `MinLevel`='70', `MaxLevel`='70' WHERE `entry`='22583';
-- UPDATE `creature_template` SET `MinLevel`='60', `MaxLevel`='60', `HeroicEntry` = 22582 WHERE `entry`='14029'; -- Trigger Ichman
-- UPDATE `creature_template` SET `MinLevel`='70', `MaxLevel`='70' WHERE `entry`='22582';
-- UPDATE `creature_template` SET `MinLevel`='60', `MaxLevel`='60', `HeroicEntry` = 22585 WHERE `entry`='14030'; -- Trigger Slidore
-- UPDATE `creature_template` SET `MinLevel`='70', `MaxLevel`='70' WHERE `entry`='22585';
-- UPDATE `creature_template` SET `MinLevel`='60', `MaxLevel`='60', `HeroicEntry` = 22586 WHERE `entry`='14031'; -- Trigger Vipore
-- UPDATE `creature_template` SET `MinLevel`='70', `MaxLevel`='70' WHERE `entry`='22586';
-- UPDATE `creature_template` SET `MinLevel`='70', `MaxLevel`='70' WHERE `entry`='14688'; -- Master Sandoval
-- UPDATE `creature_template` SET `MinLevel`='60', `MaxLevel`='60', `HeroicEntry` = 22557 WHERE `entry`='14848'; -- Herald
-- UPDATE `creature_template` SET `MinLevel`='70', `MaxLevel`='70' WHERE `entry`='22557';
-- UPDATE `creature_template` SET `MinLevel`='70', `MaxLevel`='70' WHERE `entry`='14885'; -- [PH] Jon LeCraft
-- UPDATE `creature_template` SET `MinLevel`='70', `MaxLevel`='70' WHERE `entry`='15123'; -- [PH] Kris Zierhut
-- UPDATE `creature_template` SET `MinLevel`='73', `MaxLevel`='73' WHERE `entry`='15193'; -- The Banshee Queen
-- UPDATE `creature_template` SET `MinLevel`='56', `MaxLevel`='56' WHERE `entry`='15775'; -- Christmas Emperor Dagran Thaurissan
-- UPDATE `creature_template` SET `MinLevel`='73', `MaxLevel`='73' WHERE `entry`='16440'; -- Highlord Mograine
-- UPDATE `creature_template` SET `MinLevel`='40', `MaxLevel`='60' WHERE `entry`='16781'; -- Midsummer Celebrant
-- UPDATE `creature_template` SET `MinLevel`='70', `MaxLevel`='70' WHERE `entry`='16510'; -- Argent Charger
-- UPDATE `creature_template` SET `MinLevel`='70', `MaxLevel`='70' WHERE `entry`='17231'; -- Garden Gas


-- End of migration.

