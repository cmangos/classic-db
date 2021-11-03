-- Add your query below.
-- https://github.com/vmangos/core/commit/a1d225c2d758bcc7e12720262661943c2caddb9b

-- Uncommon Lvl 6-9 - 1-2h
UPDATE `creature` SET `spawntimesecsmin` = 3600, `spawntimesecsmax` = 7200 WHERE `id` IN (
79, -- Narg the Taskmaster - 7200, -- 9000
99, -- Morgaine the Sly - 1800, -- 9000
471, -- Mother Fang - 3600, -- 9000
1132, -- Timber - 14400, -- 21600
1137, -- Edan the Howler - 1400/1500/1700/1900 , -- 7200
1531, -- Lost Soul - 3600, -- 7200
1533, -- Tormented Spirit - 3600, -- 7200
1910, -- Muad - 3600, -- 9000
1936, -- Farmer Solliden - 3600, -- 7200
5786, -- Snagglespear - 3600, -- 7200
5808, -- Warlord Kolkanis - 3600, -- 7200
5809, -- Watch Commander Zalaphil - 18000, -- 28800
5826, -- Geolord Mottle - 3600, -- 7200
10356, -- Bayne - 3600, -- 10800
14428, -- Uruson - 3600, -- 7200
14430, -- Duskstalker - 3600, -- 7200
14431, -- Fury Shelda - 3600, -- 7200
14432); -- Threggil - 3600, -- 7200

-- Uncommon Lvl 11-15 - 1.5-2.5h
UPDATE `creature` SET `spawntimesecsmin` = 5400, `spawntimesecsmax` = 9000 WHERE `id` IN (
61, -- Thuros Lightfingers - 5400 9000
100, -- Gruff Swiftbite - 5400 9000
472, -- Fedfennel - 5400 9000
519, -- Slark - 5400 9000
1119, -- Hammerspine - 5400 9000
1130, -- Bjarn - 14400 21600
1260, -- Great Father Arctikus - 5400 9000
1424, -- Master Digger - 5400 9000
1425, -- Grizlak - spawn_group
1911, -- Deeb - 5400 9000
2175, -- Shadowclaw - 3600 86400
2191, -- Licillin - 7200 10800
3056, -- Ghost Howl - 9900 9900
3270, -- Elder Mystic Razorsnout - 5400 9000
3470, -- Rathorian - 5400 9000
3535, -- Blackmoss the Fetid - 5400 9000
5785, -- Sister Hatelash - 43200 43200
5787, -- Enforcer Emilgund - 19900 19900
5823, -- Death Flayer - 5400 9000
5824, -- Captain Flat Tusk - 18000 28800
5837, -- Stonearm - 5400 9000
5865, -- Dishu - 18000 28800
7017, -- Lord Sinslayer - 7200 10800
8503, -- Gibblewilt - 5400 9000
10357, -- Ressan the Needler - 3600 10800
10358, -- Fellicent's Shade - 5400 9000
10359, -- Sri'skulk - 3600 10800
12431, -- Gorefang - 86400 172800
12432, -- Old Vicejaw - 5400 9000
12433, -- Krethis Shadowspinner - 5400 9000
14429); -- Grimmaw - 3600 7200

-- 148 Loch Modan - Grizlak (1) Wandering 000
UPDATE `creature` SET `spawntimesecsmin` = 5400, `spawntimesecsmax` = 9000 WHERE `guid` = 140168;

-- Uncommon Lvl 16-20 - 2-3h
UPDATE `creature` SET `spawntimesecsmin` = 7200, `spawntimesecsmax` = 10800 WHERE `id` IN (
506, -- Sergeant Brashclaw - 7200 10800
520, -- Brack - 7200 10800
572, -- Leprithus - 14400 21600
2186, -- Carnivous the Breaker - 7200 10800
5829, -- Snort the Heckler - 7200 10800
5836, -- Engineer Whirleygig - 7200 10800
5838, -- Brokespear - 7200 10800
5863, -- Geopriest Gukk'rok - 7200 10800
7015, -- Flagglemurk the Cruel - 7200 10800
14270, -- Squiddic - 7200 10800
14271, -- Ribchaser - 7200 10800
14272); -- Snarlflare - 7200 10800

-- Semi-Rare Lvl 16-20 - 4-6h
UPDATE `creature` SET `spawntimesecsmin` = 14400, `spawntimesecsmax` = 21600 WHERE `id` IN (
573, -- Foe Reaper 4000 - 14400 21600
2192, -- Firecaller Radison - 14400 21600
3295, -- Sludge Beast - 14400 21600
5835, -- Foreman Grills - 14400 21600
5842, -- Takk the Leaper - 14400 21600
14266, -- Shanda the Spinner - 14400 21600
14268); -- Lord Condar - 7200 10800

-- Uncommon Lvl 21-25 - 4-6h
UPDATE `creature` SET `spawntimesecsmin` = 14400, `spawntimesecsmax` = 21600 WHERE `id` IN (
521, -- Lupos - 14400 21600
616, -- Chatter - 14400 21600
1112, -- Leech Widow - 18000 28800
1398, -- Boss Galgosh - 14400 21600
1399, -- Magosh - 18000 28800
1948, -- Snarlmane - 14400 21600
2090, -- Ma'ruk Wyrmscale - 14400 21600
2283, -- Ravenclaw Regent - 18000 28800
3735, -- Apothecary Falthis - 14400 21600
4015, -- Pridewing Patriarch - 37800 57600
5832, -- Thunderstomp - 18000 28800
5834, -- Azzere the Skyblade - 14400 21600
5847, -- Heggin Stonewhisker - 14400 21600
5849, -- Digger Flameforge - 14400 21600
5931, -- Foreman Rigger - 14400 21600
10559, -- Lady Vespia - 14400 21600
10639); -- Rorgish Jowl - 14400 21600

-- Semi-Rare Lvl 21-25 - 8.5-12.5h
UPDATE `creature` SET `spawntimesecsmin` = 30600, `spawntimesecsmax` = 45000 WHERE `id` IN (
7016, -- Lady Vespira - 30600 45000
10643, -- Mugglefin - 30600 45000
10644, -- Mist Howler - 30600 45000
14273, -- Boulderheart - 30600 45000
14279, -- Creepthess - 30600 45000
14424); -- Mirelow - 30600 45000

-- Average Rare Lvl 21-25 17-25.5h
UPDATE `creature` SET `spawntimesecsmin` = 61200, `spawntimesecsmax` = 91800 WHERE `id` IN (
3398, -- Gesharahan - 61200 91800
14269, -- Seeker Aqualon - 61200 91800
14425); -- Gnawbone - 61200 91800

-- Uncommon Lvl 26+ - 5-8h
UPDATE `creature` SET `spawntimesecsmin` = 18000, `spawntimesecsmax` = 28800 WHERE `id` IN (
503, -- Lord Malathrom - 18000 28800
507, -- Fenros - 18000 28800
534, -- Nefaru - 18000 28800
574, -- Naraxis - 18000 28800
584, -- Kazon - 18000 28800
771, -- Commander Felstrom - 18000 28800
1106, -- Lost One Cook - 18000 28800
1140, -- Razormaw Matriarch - 25200 25200 / 115200 172800
1552, -- Scale Belly - 18000 28800
1838, -- Scarlet Interrogator - 3600 86400
1843, -- Foreman Jerris - 3600 86400
1848, -- Lord Maldazzar - 37800 57600
1885, -- Scarlet Smith - 3600 86400
2108, -- Garneg Charskull - 18000 28800
2541, -- Lord Sakrasis - 18000 28800
2600, -- Singer - 37800 57600
2603, -- Kovork - 18000 28800
2606, -- Nimar the Slayer - 18000 28800
2752, -- Rumbler - 18000 28800
2754, -- Anathemus - 18000 28800
2850, -- Broken Tooth - 3600 86400
2931, -- Zaricotl - 86400 172800
4030, -- Vengeful Ancient - 18000 28800
4380, -- Darkmist Widow - 43200 86400
5343, -- Lady Szallah - 18000 28800
5349, -- Arash-ethis - 86400 129600
5350, -- Qirot - 18000 28800
5356, -- Snarler - 18000 28800
5399, -- Veyzhak the Cannibal - 28800 28800
5859, -- Hagg Taurenbane - 18000 28800
5933, -- Achellios the Banished - 18000 28800
6585, -- Uhk'loc - 172800 259200
6649, -- Lady Sesspira - 18000 28800
8203, -- Kregg Keelhaul - 43200 86400
8204, -- Soriid the Devourer - 43200 86400
8214, -- Jalinde Summerdrake - 18000 28800
8216, -- Retherokk the Berserker - 25200 86400
8219, -- Zul'arek Hatefowler - 18000 28800
8282, -- Highlord Mastrogonde - 18000 28800
8283, -- Slave Master Blackheart - 18000 28800
8296, -- Mojo the Twisted - 18000 28800
8298, -- Akubar the Seer - 18000 28800
8304, -- Dreadscorn - 18000 28800
8978, -- Thauris Balgarr - 18000 28800
8979, -- Gruklash - 18000 28800
-- 9218, -- Spirestone Battle Lord - 43200 86400 - instance
-- 9718, -- Ghok Bashguud - 43200 86400 - instance
-- 9736, -- Quartermaster Zigris - 43200 86400 - instance
10077, -- Deathmaw - 43200 86400
10119, -- Volchan - 86400 172800
10197, -- Mezzir the Howler - 43200 86400
10199, -- Grizzle Snowpaw - 43200 86400
-- 10509, -- Jed Runewatcher - 43200 86400 - instance
10647, -- Prince Raze - 18000 28800
10822, -- Warlord Thresh'jin - 18000 28800
10824, -- Ranger Lord Hawkspear - 21600 86400
10827, -- Deathspeaker Selendre - 18000 28800
10828, -- High General Abbendis - 43200/50400/57600 86400
13896, -- Scalebeard - 43200 86400
14221, -- Gravis Slipknot - 18000 28800
14230, -- Burgle Eye - 18000 28800
14231, -- Drogoth the Roamer - 18000 28800
14232, -- Dart - 18000 28800
14275, -- Tamra Stormpike - 18000 28800
14276, -- Scargil - 18000 28800
14277, -- Lady Zephris - 18000 28800
14278, -- Ro'Bark - 18000 28800
14340, -- Alshirr Banebreath - 18000 28800
14342, -- Ragepaw - 18000 28800
14426, -- Harb Foulmountain - 18000 28800
14445, -- Lord Captain Wyrmak - 18000 28800
14478, -- Huricanian - 18000 28800
14479); -- Twilight Lord Everun - 900 2700

-- Semi-Rare Lvl 26+ 10.5-16h
UPDATE `creature` SET `spawntimesecsmin` = 37800, `spawntimesecsmax` = 57600 WHERE `id` IN (
763, -- Lost One Chieftain - 37800 57600
947, -- Rohh the Silent - 37800 57600
1837, -- Scarlet Judge - 3600 86400
1847, -- Foulmane - 18000 28800
2447, -- Narillasanz - 53200 53200
2452, -- Skhowl - 37800 57600
2598, -- Darbel Montrose - 37800 57600
2604, -- Molok the Crusher - 37800 57600
2744, -- Shadowforge Commander - 86400 172800
2751, -- War Golem - 37800 57600
5345, -- Diamond Head - 37800 57600
6582, -- Clutchmother Zavas - 43200 86400
6650, -- General Fangferror - 37800 57600
6651, -- Gatekeeper Rageroar - 37800 57600
7057, -- Digmaster Shovelphlange - 43200 43200
7104, -- Dessecus - 37800 57600
7137, -- Immolatus - 37800 57600
7895, -- Ambassador Bloodrage - 37800 57600
8201, -- Omgorn the Lost - 43200 86400
8211, -- Old Cliff Jumper - 43200 86400
8213, -- Ironback - 43200 86400
8218, -- Witherheart the Stalker - 37800 57600
8278, -- Smoldar - 43200 86400
8279, -- Faulty War Golem - 37800 57600
8299, -- Spiteflayer - spawn_group
8300, -- Ravage - 43200 86400
8301, -- Clack the Reaver - spawn_group
8981, -- Malfunctioning Reaver - 37800 57600
9602, -- Hahk'Zor - 37800 57600
10196, -- General Colbatann - 43200 86400
10200, -- Rak'shiri - 86400 172800
10640, -- Oakpaw - 37800 57600
10817, -- Duggan Wildhammer - 43200 86400
10823, -- Zul'Brin Warpbranch - 37800 57600
11383, -- High Priestess Hai'watna - 37800 57600
12037, -- Ursol'lok - 43200 86400
14227, -- Hissperak - 43200 86400
14228, -- Giggler - 43200 86400
14233, -- Ripscale - 37800 57600
14280, -- Big Samras - 37800 57600
14427, -- Gibblesnik - 37800 57600
14446, -- Fingat - 37800 57600
14476, -- Krellack - 43200 86400
14487); -- Gluggle - 43200 86400

-- 262 Blasted Lands - Spiteflayer (1) Rare 000
UPDATE `creature` SET `spawntimesecsmin` = 37800, `spawntimesecsmax` = 57600 WHERE `guid` = 140300;

-- 264 Blasted Lands - Clack the Reaver (1) Rare 000
UPDATE `creature` SET `spawntimesecsmin` = 37800, `spawntimesecsmax` = 57600 WHERE `guid` = 140400;

-- Average Rare Lvl 26+ 21-32h
UPDATE `creature` SET `spawntimesecsmin` = 75600, `spawntimesecsmax` = 115200 WHERE `id` IN (
462, -- Vultros - 75600 115200
1839, -- Scarlet High Clerist - 3600 86400
1844, -- Foreman Marcrid - 3600 86400
2453, -- Lo'Grosh - 37800 57600
2602, -- Ruul Onestone - 75600 115200
2749, -- Siege Golem - 75600 115200
2753, -- Barnabus - 172800 259200
3773, -- Akkrilus - 75600 115200
3792, -- Terrowulf Packlord - 75600 115200
5827, -- Brontus - 75600 115200
5851, -- Captain Gerogg Hammertoe - 75600 115200
6647, -- Magister Hawkhelm - 75600 115200
6652, -- Master Feardred - 75600 115200
8205, -- Haarka the Ravenous - 43200 86400
8207, -- Greater Firebird - 43200 86400
8210, -- Razortalon - 43200 86400
8217, -- Mith'rethis the Enchanter - 75600 115200
8277, -- Rekk'tilac - 18000 28800
8281, -- Scald - 75600 115200
8297, -- Magronos the Unyielding - 75600 115200
8302, -- Deatheye - 75600 115200
9604, -- Gorgon'och - 75600 115200
10078, -- Terrorspark - 75600 115200
10198, -- Kashoch the Reaver - 43200 86400
10202, -- Azurous - 43200 86400
10642, -- Eck'alom - 75600 115200
10825, -- Gish the Unmoving - 43200 86400
10826, -- Lord Darkscythe - 75600 115200
14222, -- Araga - 86400 129600
14225, -- Prince Kellen - 75600 115200
14229, -- Accursed Slitherblade - 75600 115200
14235, -- The Rot - 75600 115200
14236, -- Lord Angler - 75600 115200
14281, -- Jimmy the Bleeder - 75600 115200
14339, -- Death Howl - 43200 86400
14343, -- Olm the Wise - 43200 86400
14433, -- Sludginn - 75600 115200
14447, -- Gilmorian - 43200 86400
14448, -- Molt Thorn - 43200 86400
14474, -- Zora - 86400 172800
14475, -- Rex Ashil - 86400 172800
14488, -- Roloch - 43200 86400
14492); -- Verifonix - 75600 115200

-- Very Rare Lvl 31+ 32-48h
UPDATE `creature` SET `spawntimesecsmin` = 115200, `spawntimesecsmax` = 172800 WHERE `id` IN (
1063, -- Jade - 115200 172800
1841, -- Scarlet Executioner - 3600 86400
1851, -- The Husk - 57600 115200
2601, -- Foulbelly - 115200 172800
2779, -- Prince Nazjak - 115200/122400/129600/136800/144000/158400/172800 172800
5352, -- Old Grizzlegut - 43200 86400
5354, -- Gnarl Leafbrother - 115200 172800
6648, -- Antilos - 43200 86400
8202, -- Cyclok the Mad - 172800 259200
8208, -- Murderous Blisterpaw - 172800 259200
8212, -- The Reak - 115200 172800
8215, -- Grimungous - 115200 172800
8280, -- Shleipnarr - 115200 172800
8303, -- Grunter - 43200 86400
8660, -- The Evalcharr - 86400 172800
8976, -- Hematos - 151200 172800
10201, -- Lady Hederine - 43200 86400
10821, -- Hed'mush the Rotting - 115200 172800
14223, -- Cranky Benj - 43200 86400
14224, -- 7:XT - 115200 172800
14226, -- Kaskk - 43200 86400
14237, -- Oozeworm - 172800 259200
14344, -- Mongress - 115200 172800
14345, -- The Ongar - 115200 172800
14472, -- Gretheer - 43200 86400
14473, -- Lapress - 43200 86400
14490, -- Rippa - 43200 86400
14491); -- Kurmokk - 43200 86400

-- Uber-Rare Lvl 36+ 48-72h
UPDATE `creature` SET `spawntimesecsmin` = 172800, `spawntimesecsmax` = 259200 WHERE `id` IN (
1850, -- Putridius - 172800, -- 259200
2605, -- Zalas Witherbark - 172800 259200
6646, -- Monnos the Elder - 172800 259200
14471); -- Setis - 43200 115200

-- Not altered in base commit

-- 1849, -- Dreadwhisper - event
-- 14697, -- Lumbering Horror - event
-- 16379, -- Spirit of the Damned - event
-- 16380, -- Bone Witch - event
-- 1720, -- Bruegal Ironknuckle - instance
-- 3586 -- Miner Johnson - instance
-- 3872 -- Deathsworn Captain 3600	86400 21	21	2 - classic 25 - instance
-- 4425 -- Blind Hunter 3600	86400 27	27	2 - classic 32 - instance
-- 4438 -- Razorfen Spearhide 7200	7200 25	26	2 - classic 29 30 - instance
-- 4842 -- Earthcaller Halmgar 3600	86400 27	27	2 - classic 32 - instance
-- 5912, -- Deviate Faerie Dragon 86400	86400 19	19	2 - instance classic 20
-- 6228, -- Dark Iron Ambassador 86400	86400 28	28	2 - instance classic 33
-- 6488, -- Fallen Champion 86400, 86400 32	32	2 - instance classic 33
-- 6489, -- Ironspine 86400, 86400 32	32	2 - instance classic 33
-- 6490, -- Azshir the Sleepless 86400, 86400 32	32	2 - instance classic 33
-- 8923, -- Panzor the Invincible 604800	604800 56	56	2 - instance classic 57
-- 9024, -- Pyromancer Loregrain 604800	604800 52	52	2 - instance
-- 9041, -- Warder Stilgiss 604800	604800 54	54	2 - instance classic 56
-- 9042, -- Verek 604800	604800 53	53	2 - instance classic 55
-- 9217, -- Spirestone Lord Magus 43200	86400 58	58	2 - instance
-- 9219, -- Spirestone Butcher - 43200	86400 57	57	2 - instance
-- 9596, -- Bannok Grimaxe 43200	86400 59	59	2 - instance
-- 10080, -- Sandarr Dunereaver 43200	86400 45	45	2 - instance
-- 10081, -- Dustwraith 43200	86400 45	45	2 - instance
-- 10082, -- Zerillis 43200	86400 45	45	2 - instance
-- 10376, -- Crystal Fang 43200	86400 60	60	2 - instance
-- 10393, -- Skul 43200	86400 58	58	2 - instance
-- 10558, -- Hearthsinger Forresten 43200	86400 57	57	2 - instance
-- 10809, -- Stonespine 43200	86400 60	60	2 - instance
-- 10899, -- Goraluk Anvilcrack 1000000	1000000 61	61	2 - instance
-- 11467, -- Tsu'zee 43200	86400 59	59	2 - instance
-- 12237, -- Meshlok the Harvester 43200	86400 46	46	2 - instance classic 48
-- 16179, -- Hyakiss the Lurker - event instance
-- 16180, -- Shadikith the Glider - event instance
-- 16181, -- Rokad the Ravager - event instance

-- spawntimesecsmin, spawntimesecsmax, minlevel, maxlevel, rank
-- Uncommon Lvl 6-9 - 1-2h
UPDATE `creature` SET `spawntimesecsmin` = 3600, `spawntimesecsmax` = 7200 WHERE `id` = 3068; -- Mazzranache 86400	172800 9	9	4

-- Uncommon Lvl 11-15 - 1.5-2.5h
UPDATE `creature` SET `spawntimesecsmin` = 5400, `spawntimesecsmax` = 9000 WHERE `id` = 5822; -- Felweaver Scornn 5400	9000 11	11	2

-- Uncommon Lvl 16-20 - 2-3h
-- UPDATE `creature` SET `spawntimesecsmin` = 7200, `spawntimesecsmax` = 10800 WHERE `id` IN (

-- Semi-Rare Lvl 16-20 - 4-6h
UPDATE `creature` SET `spawntimesecsmin` = 14400, `spawntimesecsmax` = 21600 WHERE `id` IN (
596, -- Brainwashed Noble - 115200	172800 18	18	4
599, -- Marisa du'Paige - 115200	172800 18	18	4
2172, -- Strider Clutchmother 3600	86400 20	20	4
2184, -- Lady Moongazer 18000	28800 17	17	4
3652, -- Trigore the Lasher 172800	259200 17	17	4 - classic 19
3672, -- Boahn 172800	259200 17	17	4 - classic 20
5830, -- Sister Rathtalon 18000	28800 19	19	2
5841, -- Rocklance 37800	57600 17	17	2
14267); -- Emogg the Crusher 3600	43200 19	19	2

-- Uncommon Lvl 21-25 - 4-6h
UPDATE `creature` SET `spawntimesecsmin` = 14400, `spawntimesecsmax` = 21600 WHERE `id` IN (
3253, -- Silithid Harvester 86400	172800 24	24	4
5831, -- Swiftmane 86400	115200 21	21	2
5848); -- Malgin Barleybrew 7200	10800 25	25	4

-- Semi-Rare Lvl 21-25 - 8.5-12.5h
UPDATE `creature` SET `spawntimesecsmin` = 30600, `spawntimesecsmax` = 45000 WHERE `id` IN (
1037, -- Dragonmaw Battlemaster - 37800	57600 24	25	4 - classic 30
1920, -- Dalaran Spellscribe - 23400 39600 21	21	4
1944, -- Rot Hide Bruiser - 18000	28800 22	22	4
2476, -- Large Loch Crocolisk 37800	57600 22	22	4
5828); -- Humar the Pridelord 28800	43200 23	23	2

-- Average Rare Lvl 21-25 17-25.5h
UPDATE `creature` SET `spawntimesecsmin` = 61200, `spawntimesecsmax` = 91800 WHERE `id` IN (
5864, -- Swinegart Spearhide 75600	115200 22	22	2
5932, -- Taskmaster Whipfang 43200	86400 22	22	2
10641); -- Branch Snapper 43200	86400 25	25	4

-- Uncommon Lvl 26+ - 5-8h
UPDATE `creature` SET `spawntimesecsmin` = 18000, `spawntimesecsmax` = 28800 WHERE `id` IN (
2258, -- Stone Fury 18000	28800 37	37	4
4132, -- Silithid Ravager 75600	115200 36	36	4
5400, -- Zekkis 28800	28800 48	48	2
5928, -- Sorrow Wing 18000	28800 27	27	2
5934, -- Heartrazor 18000	28800 32	32	2
6118, -- Varo'then's Ghost 18000	28800 48	48	4
11447, -- Mushgog 21600	25200 60	60	2
11497, -- The Razza 21600	25200 60	60	2
11498, -- Skarr the Unbreakable 21600	25200 58	58	2
11688); -- Cursed Centaur 28800	28800 43	43	4

-- Semi-Rare Lvl 26+ 10.5-16h
UPDATE `creature` SET `spawntimesecsmin` = 37800, `spawntimesecsmax` = 57600 WHERE `id` IN (
5930, -- Sister Riven 37800	57600 28	28	2
14234); -- Hayoc 43200	86400 41	41	4

-- Average Rare Lvl 26+ 21-32h
UPDATE `creature` SET `spawntimesecsmin` = 75600, `spawntimesecsmax` = 115200 WHERE `id` IN (
2609, -- Geomancer Flintdagger 86400	172800 40	40	4
4066, -- Nal'taszar 43200	86400 30	30	2
4339, -- Brimgore 43200	86400 41	41	2 - classic 45
5347, -- Antilus the Soarer 43200	86400 48	48	4
5915, -- Brother Ravenoak 75600	115200 29	29	2
5916, -- Sentinel Amarassan 75600	115200 27	27	2
6583, -- Gruff 75600	115200 57	57	2
8199, -- Warleader Krazzilak 43200	86400 45	45	2
8200); -- Jin'Zallah the Sandbringer 43200	86400 46	46	2

-- Very Rare Lvl 31+ 32-48h
UPDATE `creature` SET `spawntimesecsmin` = 115200, `spawntimesecsmax` = 172800 WHERE `id` IN (
3581, -- Sewer Beast 115200	172800 50	50	4
5346, -- Bloodroar the Stalker 86400	129600 48	48	4
5935, -- Ironeye the Invincible 115200	172800 37	37	2
5937, -- Vile Sting 43200	86400 35	35	2
6581); -- Ravasaur Matriarch 115200	172800 50	50	4

-- Uber-Rare Lvl 36+ 48-72h
UPDATE `creature` SET `spawntimesecsmin` = 172800, `spawntimesecsmax` = 259200 WHERE `id` IN (
6584, -- King Mosh 172800	259200 60	60	2
8924); -- The Behemoth 172800	259200 50	50	4

-- https://wowpedia.fandom.com/wiki/Scarshield_Quartermaster?diff=1615252&oldid=1479070
UPDATE `creature` SET `spawntimesecsmin` = 90, `spawntimesecsmax` = 180 WHERE `id` = 9046; -- Scarshield Quartermaster 600	900 55	55	4
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|1048576 WHERE `entry` = 9046;

-- 16184, -- Nerubian Overseer 43200	86400 60	60	2
-- https://www.wowhead.com/classic/npc=16184/nerubian-overseer#comments:id=2920497
UPDATE `creature` SET `spawntimesecsmin` = 1800, `spawntimesecsmax` = 5400 WHERE `id` = 16184;
UPDATE `creature_loot_template` SET `mincountOrRef` = 2, `MaxCount` = 8 WHERE `entry` = 16184 AND `item` = 22525; -- Crypt Fiend Parts

-- Add CREATURE_EXTRA_FLAG_FORCE_ATTACKING_CAPABILITY for unselectable
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|524288 WHERE `entry` = 10577; -- Crypt Scarabs


-- 10263, -- Burning Felguard 56	57	2 - loot!
-- http://web.archive.org/web/20060307182444/http://wow.allakhazam.com/db/mob.html?wmob=10263
-- http://web.archive.org/web/20080220162555/http://wow.allakhazam.com/db/mob.html?wmob=10263
DELETE FROM `creature_loot_template` WHERE `entry` = 10263;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(10263, 14047, 10, 0, 2, 4, 0, 'Runecloth'),
(10263, 14256, 1.5, 0, 1, 1, 0, 'Felcloth'),
(10263, 8948, 5, 0, 2, 4, 0, 'Dried King Bolete'),
(10263, 12662, 8, 0, 1, 1, 0, 'Demonic Rune'),
(10263, 5759, 0.5, 0, 1, 1, 0, 'Thorium Lockbox'),
(10263, 18335, 0.1, 0, 1, 1, 0, 'Pristine Black Diamond'),
(10263, 60008, 2, 0, -60008, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 51-60) - (NPC Levels: 51-63) - VANILLA NPC ONLY'),
(10263, 49003, 0.1, 0, -49003, 1, 0, 'Darkmoon Cards (Beasts, Elementals, Portals, Warlords 5-8) - (Elite NPC Levels: ~50+) - VANILLA NPC ONLY'),
(10263, 60273, 0.1, 0, -60273, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 53-65) - (NPC Levels: 56-57)'),
(10263, 50499, 0.1, 0, -50499, 1, 0, 'NPC LOOT (World Drop) - (Level: 48/50/60 - Book / Codex / Tome / Grimoire) - NPC Levels 52+ (WORLD CLASS LOOT DROP)'),
(10263, 60446, 0.1, 0, -60446, 1, 0, '16 Slot Bag - (NPC Levels: 48+)'),
(10263, 50557, 0.1, 0, -50557, 1, 0, 'LOOT (World Drop) - (RequiredSkillRank: 230-300 (Profession Recipes)) - (NPC Levels ~57)'),
(10263, 65019, 100, 0, -65019, 1, 0, 'NPC LOOT (Rare NPC Loot) - Burning Felguard - Special Items');

DELETE FROM `reference_loot_template_names` WHERE `entry` = 65019;
INSERT INTO `reference_loot_template_names` (`entry`, `name`) VALUES (65019, 'NPC LOOT (Rare NPC Loot) - Burning Felguard - Special Items');

DELETE FROM `reference_loot_template` WHERE `entry` = 65019;
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(65019, 13181, 25, 1, 1, 1, 0, 'Demonskin Gloves'),
(65019, 13182, 25, 1, 1, 1, 0, 'Phase Blade'),
(65019, 60197, 50, 1, -60197, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 55-60) - (NPC Levels: 56-57)');

-- 14477, -- Grubthor 28800	36000 58	58	4
DELETE FROM `creature` WHERE `id` = 14477;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
(43124, 14477, 1, 1, -7810.5, 997.569, 1.18693, 0, 28800, 36000, 50, 1),
(43280, 14477, 1, 1, -7851.31, 1592.94, 3.59923, 0, 28800, 36000, 50, 1),
(43323, 14477, 1, 1, -7638.15, 1314.82, 2.18643, 0, 28800, 36000, 50, 1),
(43422, 14477, 1, 1, -7523.97, 844.59, -2.88, 0, 28800, 36000, 50, 1);

DELETE FROM `spawn_group` WHERE id = 19026;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(19026,'Silithus - Grubthor (14477)', 0, 1, 0, 0);
DELETE FROM `spawn_group_spawn` WHERE id = 19026;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(19026, 43124, 0),
(19026, 43280, 1),
(19026, 43323, 2),
(19026, 43422, 3);

-- 14506, -- Lord Hel'nurath 62	62	2 - loot!
-- UPDATE `creature_loot_template` SET `groupid` = 1 WHERE `entry` = 14506 AND `item` IN (18754,18755,18756,18757);
DELETE FROM `creature_loot_template` WHERE `entry` = 14506 AND `item` IN (8948,8766,5760,60008,60298,60284,60344,49003,50563,50603,50615);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(14506, 8948, 2, 0, 1, 1, 0, 'Dried King Bolete'),
(14506, 8766, 1, 0, 1, 1, 0, 'Morning Glory Dew'),
(14506, 5760, 0.1, 0, 1, 1, 0, 'Eternium Lockbox'),
(14506, 60008, 2, 0, -60008, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 51-60) - (NPC Levels: 51-63) - VANILLA NPC ONLY'),
(14506, 60298, 2, 0, -60298, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 61-65) - (NPC Levels: 62) - VANILLA NPC ONLY'), 
(14506, 60284, 0.1, 0, -60284, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 57-65) - (NPC Levels: 62) - VANILLA NPC ONLY'),
(14506, 60344, 0.01, 0, -60344, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 60-65) - (NPC Levels: 62) - VANILLA NPC ONLY'),
(14506, 49003, 0.1, 0, -49003, 1, 0, 'Darkmoon Cards (Beasts, Elementals, Portals, Warlords 5-8) - (Elite NPC Levels: ~50+) - VANILLA NPC ONLY'),
(14506, 50563, 0.1, 0, -50563, 1, 0, 'LOOT (World Drop) - (RequiredSkillRank: 250-300 (Profession Recipes)) - (NPC Levels ~50-63) (Split me up)'),
(14506, 50603, 0.75, 0, -50603, 1, 0, 'NPC LOOT (White World Drop) - (Scrolls IV) - (NPC Levels 55-62)'),
(14506, 50615, 1, 0, -50615, 1, 0, 'NPC LOOT (Major Healing Potion / Major Mana Potion)');

-- UPDATE `creature_template` SET `MinLevel` = 32, `MaxLevel` = 32 WHERE `entry` = 6488; -- tbc+

-- End of migration.

