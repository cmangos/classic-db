-- File:	SQL
-- Name:	0436_creature_template
-- Desc:	Corrections of creatures rank (Rare). Source: old.wowhead.com, www.wowhead.com (mostly from comments), www.wowwiki.com, wowpedia.org
-- Auth:	Kupix
-- Date:	2014/03/11

-- --------------------------------------------------------------------------------------
-- Alterac Mountains:
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  14222;    -- Araga, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  14223;    -- Cranky Benj, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  14221;    -- Gravis Slipknot, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  14281;    -- Jimmy the Bleeder, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  2453;     -- Lo'Grosh, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  2452;     -- Skhowl, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  2258;     -- Stone Fury

-- Arathi Highlands:
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  2609;     -- Geomancer Flintdagger,
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  2603;     -- Kovork, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  2604;     -- Molok the Crusher, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  2606;     -- Nimar the Slayer, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  2779;     -- Prince Nazjak, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  2600;     -- Singer, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  2605;     -- Zalas Witherbark 

-- Ashenvale:
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  3773;     -- Akkrilus, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  3735;     -- Apothecary Falthis, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  10641;    -- Branch Snapper, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  3736;     -- Darkslayer Mordenthal, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  10642;    -- Eck'alom, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  10559;    -- Lady Vespia, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  10644;    -- Mist Howler, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  10643;    -- Mugglefin, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  10640;    -- Oakpaw, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  10647;    -- Prince Raze, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  10639;    -- Rorgish Jowl, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  3792;     -- Terrowulf Packlord, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  12037;    -- Ursol'lok 

-- Azshara:
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  6648;     -- Antilos, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  6651;     -- Gatekeeper Rageroar, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  6650;     -- General Fangferror, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  6649;     -- Lady Sesspira, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  6647;     -- Magister Hawkhelm, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  6652;     -- Master Feardred, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  8660;     -- The Evalcharr, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  6118;     -- Varo'then's Ghost 

-- Badlands:
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  14224;    -- 7:XT, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  2753;     -- Barnabus, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  2850;     -- Broken Tooth, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  2752;     -- Rumbler, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  2744;     -- Shadowforge Commander, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  2751;     -- War Golem

-- Blasted Lands:
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  8298;     -- Akubar the Seer, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  8301;     -- Clack the Reaver, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  8302;     -- Deatheye, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  8304;     -- Dreadscorn, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  8303;     -- Grunter, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  8297;     -- Magronos the Unyielding, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  8296;     -- Mojo the Twisted, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  8300;     -- Ravage, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  8299;     -- Spiteflayer 

-- Burning Steppes:
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  10077;    -- Deathmaw, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  9604;     -- Gorgon'och, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  8979;     -- Gruklash, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  9602;     -- Hahk'Zor, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  8981;     -- Malfunctioning Reaver, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  10078;    -- Terrorspark, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  8978;     -- Thauris Balgarr

-- Darkshore:
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  2186;     -- Carnivous the Breaker, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  2192;     -- Firecaller Radison, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  7015;     -- Flagglemurk the Cruel, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  2184;     -- Lady Moongazer, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  7016;     -- Lady Vespira, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  2191;     -- Licillin, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  7017;     -- Lord Sinslayer, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  2175;     -- Shadowclaw, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  2172;     -- Strider Clutchmother 

-- Desolace:
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  14229;    -- Accursed Slitherblade, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  14228;    -- Giggler, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  14227;    -- Hissperak, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  14226;    -- Kaskk, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  14225;    -- Prince Kellen 

-- Dun Morogh:
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  1130;     -- Bjarn, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  1137;     -- Edan the Howler, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  8503;     -- Gibblewilt, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  1260;     -- Great Father Arctikus, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  1119;     -- Hammerspine, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  1132;     -- Timber 

-- Durotar:
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  5823;     -- Death Flayer, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  5822;     -- Felweaver Scornn, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  5826;     -- Geolord Mottle, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  5808;     -- Warlord Kolkanis, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  5809;     -- Watch Commander Zalaphil 

-- Duskwood:
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  771;      -- Commander Felstrom, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  507;      -- Fenros, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  503;      -- Lord Malathrom, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  521;      -- Lupos, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  574;      -- Naraxis, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  534;      -- Nefaru, 

-- Dustwallow Marsh:
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  14230;    -- Burgle Eye, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  4380;     -- Darkmist Widow, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  14232;    -- Dart, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  14231;    -- Drogoth the Roamer, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  14234;    -- Hayoc, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  14236;    -- Lord Angler, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  14237;    -- Oozeworm, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  14233;    -- Ripscale, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  14235;    -- The Rot 

-- Eastern Plaguelands:
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  10827;    -- Deathspeaker Selendre, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  10817;    -- Duggan Wildhammer, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  10825;    -- Gish the Unmoving, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  10821;    -- Hed'mush the Rotting, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  10826;    -- Lord Darkscythe, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  10824;    -- Ranger Lord Hawkspear, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  10822;    -- Warlord Thresh'jin, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  10823;    -- Zul'Brin Warpbranch 

-- Elwynn Forest:
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  62;       -- Gug Fatcandle, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  472;      -- Fedfennel, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  100;      -- Gruff Swiftbite, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  99;       -- Morgaine the Sly, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  471;      -- Mother Fang, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  79;       -- Narg the Taskmaster, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  61;       -- Thuros Lightfingers 

-- Felwood:
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  14340;    -- Alshirr Banebreath, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  14339;    -- Death Howl, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  14344;    -- Mongress, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  14343;    -- Olm the Wise, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  14342;    -- Ragepaw, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  14345;    -- The Ongar 

-- Feralas:
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  5347;     -- Antilus the Soarer, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  5349;     -- Arash-ethis, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  5346;     -- Bloodroar the Stalker, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  5345;     -- Diamond Head, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  5354;     -- Gnarl Leafbrother, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  5343;     -- Lady Szallah, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  5352;     -- Old Grizzlegut, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  5350;     -- Qirot, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  5356;     -- Snarler 

-- Hillsbrad Foothills:
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  14280;    -- Big Samras, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  14279;    -- Creepthess, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  14277;    -- Lady Zephris, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  14278;    -- Ro'Bark, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  14276;    -- Scargil

-- Loch Modan:
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  1398;     -- Boss Galgosh, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  1425;     -- Grizlak, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  2476;     -- Gosh-Haldir, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  2476;     -- Large Loch Crocolisk, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  14268;    -- Lord Condar, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  1399;     -- Magosh, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  14266;    -- Shanda the Spinner 

-- Mulgore:
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  5787;     -- Enforcer Emilgund, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  3056;     -- Ghost Howl, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  3068;     -- Mazzranache, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  5786;     -- Snagglespear, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  5807;     -- The Rake 

-- Redridge Mountains:
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  14273;    -- Boulderheart, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  616;      -- Chatter, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  584;      -- Kazon, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  14271;    -- Ribchaser, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  947;      -- Rohh the Silent, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  14269;    -- Seeker Aqualon, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  14272;    -- Snarlflare, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  14270;    -- Squiddic 

-- Searing Gorge:
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  8279;    -- Faulty War Golem, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  8277;    -- Rekk'tilac, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  8281;    -- Scald, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  8280;    -- Shleipnarr, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  8283;    -- Slave Master Blackheart, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  8278;    -- Smoldar 

-- Silithus:
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  14472;    -- Gretheer, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  14477;    -- Grubthor, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  14478;    -- Huricanian, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  14476;    -- Krellack, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  14479;    -- Twilight Lord Everun

-- Silverpine Forest:
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  1920;     -- Dalaran Spellscribe, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  12431;    -- Gorefang, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  12433;    -- Krethis Shadowspinner, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  12432;    -- Old Vicejaw, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  2283;     -- Ravenclaw Regent, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  1944;     -- Rot Hide Bruiser, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  1948;     -- Snarlmane 

-- Stonetalon Mountains:
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  4015;     -- Pridewing Patriarch, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  4030;     -- Vengeful Ancient 

-- Stormwind City:
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  3581;     -- Sewer Beast

-- Stranglethorn Vale:
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  14487;    -- Gluggle, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  14491;    -- Kurmokk, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  2541;     -- Lord Sakrasis, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  14490;    -- Rippa, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  14488;    -- Roloch, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  1552;     -- Scale Belly, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  14492;    -- Verifonix 

-- Swamp of Sorrows:
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  14446;    -- Fingat, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  14447;    -- Gilmorian, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  763;      -- Lost One Chieftain, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  1106;     -- Lost One Cook, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  14448;    -- Molt Thorn 

-- Tanaris:
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  8202;     -- Cyclok the Mad, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  8207;     -- Greater Firebird, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  8205;     -- Haarka the Ravenous, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  8203;     -- Kregg Keelhaul, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  8208;     -- Murderous Blisterpaw, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  8201;     -- Omgorn the Lost, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  8204;     -- Soriid the Devourer

-- Teldrassil:
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  3535;     -- Blackmoss the Fetid, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  14430;    -- Duskstalker, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  14431;    -- Fury Shelda, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  14429;    -- Grimmaw, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  14432;    -- Threggil, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  14428;    -- Uruson 

-- The Barrens:
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  5834;     -- Azzere the Skyblade, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  5838;     -- Brokespear, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  5849;     -- Digger Flameforge, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  5865;     -- Dishu, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  5836;     -- Engineer Whirleygig, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  5835;     -- Foreman Grills, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  5863;     -- Geopriest Gukk'rok, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  5847;     -- Heggin Stonewhisker, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  5848;     -- Malgin Barleybrew, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  3470;     -- Rathorian, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  3253;     -- Silithid Harvester, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  3295;     -- Sludge Beast, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  5829;     -- Snort the Heckler, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  5837;     -- Stonearm, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  5832;     -- Thunderstomp 

-- The Hinterlands:
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  8213;     -- Ironback, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  8214;     -- Jalinde Summerdrake, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  8211;     -- Old Cliff Jumper, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  8210;     -- Razortalon, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  8216;     -- Retherokk the Berserker, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  8212;     -- The Reak, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  8218;     -- Witherheart the Stalker, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  8219;     -- Zul'arek Hatefowler 

-- Thousand Needles:
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  14427;    -- Gibblesnik, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  14426;    -- Harb Foulmountain, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  4132;     -- Silithid Ravager

-- Tirisfal Glades:
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  10356;    -- Bayne, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  1911;     -- Deeb, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  1936;     -- Farmer Solliden, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  10358;    -- Fellicent's Shade, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  1531;     -- Lost Soul, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  1910;     -- Muad, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  10357;    -- Ressan the Needler, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  10359;    -- Sri'skulk, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  1533;     -- Tormented Spirit 

-- Un'Goro Crater:
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  6582;     -- Clutchmother Zavas, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  6581;     -- Ravasaur Matriarch, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  6585;     -- Uhk'loc 

-- Western Plaguelands:
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  1844;     -- Foreman Marcrid, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  1847;     -- Foulmane, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  1848;     -- Lord Maldazzar, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  1851;     -- The Husk 

-- Westfall:
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  520;      -- Brack, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  573;      -- Foe Reaper 4000, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  572;      -- Leprithus, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  1424;     -- Master Digger, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  506;      -- Sergeant Brashclaw, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  519;      -- Slark, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  462;      -- Vultros 

-- Wetlands:
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  1037;     -- Dragonmaw Battlemaster, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  2108;     -- Garneg Charskull, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  14425;    -- Gnawbone, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  1112;     -- Leech Widow, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  2090;     -- Ma'ruk Wyrmscale, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  14424;    -- Mirelow, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  1140;     -- Razormaw Matriarch, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  14433;    -- Sludginn 

-- Winterspring:
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  10199;    -- Grizzle Snowpaw, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  10197;    -- Mezzir the Howler, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  10200;    -- Rak'shiri 

-- Maraudon:
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  11688;    -- Cursed Centaur

-- Temple of Atal'Hakkar:
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  1063;     -- Jade, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  5399;     -- Veyzhak the Cannibal, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  5400;     -- Zekkis 

-- The Deadmines:
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  596;      -- Brainwashed Noble, 

-- Wailing Caverns:
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  3672;     -- Boahn, 
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` =  3652;     -- Trigore the Lasher 
