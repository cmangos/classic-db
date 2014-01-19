-- Added gossip menus to the following creatures based on YTDB data, also fixed npcflag when needed
-- Gossips were checked to prevent linking to a TBC/WotLK gossip
-- Removed unneeded npc_gossips
-- This should greatly decrease the number of broken quests, events or scripts due to missing gossip menus
-- Source: YTDB

UPDATE `creature_template` SET `gossip_menu_id` = 63, `npcflag` = `npcflag`|1 WHERE `entry` = 2128;    -- Cain Firesong
UPDATE `creature_template` SET `gossip_menu_id` = 64, `npcflag` = `npcflag`|1 WHERE `entry` = 5880;    -- Un'Thuwa
UPDATE `creature_template` SET `gossip_menu_id` = 85, `npcflag` = `npcflag`|1 WHERE `entry` = 2130;    -- Marion Call
UPDATE `creature_template` SET `gossip_menu_id` = 85, `npcflag` = `npcflag`|1 WHERE `entry` = 2122;    -- David Trias
UPDATE `creature_template` SET `gossip_menu_id` = 141, `npcflag` = `npcflag`|1 WHERE `entry` = 3155;    -- Rwag
UPDATE `creature_template` SET `gossip_menu_id` = 161, `npcflag` = `npcflag`|1 WHERE `entry` = 6566;    -- Estelle Gendry
UPDATE `creature_template` SET `gossip_menu_id` = 181, `npcflag` = `npcflag`|1 WHERE `entry` = 6586;    -- Rokar Bladeshadow
UPDATE `creature_template` SET `gossip_menu_id` = 201, `npcflag` = `npcflag`|1 WHERE `entry` = 3679;    -- Naralex
UPDATE `creature_template` SET `gossip_menu_id` = 202, `npcflag` = `npcflag`|1 WHERE `entry` = 3678;    -- Disciple of Naralex
UPDATE `creature_template` SET `gossip_menu_id` = 262, `npcflag` = `npcflag`|1 WHERE `entry` = 2239;    -- Drull
UPDATE `creature_template` SET `gossip_menu_id` = 341, `npcflag` = `npcflag`|1 WHERE `entry` = 3628;    -- Steven Lohan
UPDATE `creature_template` SET `gossip_menu_id` = 342, `npcflag` = `npcflag`|1 WHERE `entry` = 2808;    -- Vikki Lonsav
UPDATE `creature_template` SET `gossip_menu_id` = 344, `npcflag` = `npcflag`|1 WHERE `entry` = 3934;    -- Innkeeper Boorand Plainswind
UPDATE `creature_template` SET `gossip_menu_id` = 344, `npcflag` = `npcflag`|1 WHERE `entry` = 9501;    -- Innkeeper Adegwa
UPDATE `creature_template` SET `gossip_menu_id` = 344, `npcflag` = `npcflag`|1 WHERE `entry` = 7714;    -- Innkeeper Byula
UPDATE `creature_template` SET `gossip_menu_id` = 344, `npcflag` = `npcflag`|1 WHERE `entry` = 7737;    -- Innkeeper Greul
UPDATE `creature_template` SET `gossip_menu_id` = 344, `npcflag` = `npcflag`|1 WHERE `entry` = 11106;    -- Innkeeper Sikewa
UPDATE `creature_template` SET `gossip_menu_id` = 344, `npcflag` = `npcflag`|1 WHERE `entry` = 11116;    -- Innkeeper Abeqwa
UPDATE `creature_template` SET `gossip_menu_id` = 345, `npcflag` = `npcflag`|1 WHERE `entry` = 7744;    -- Innkeeper Thulfram
UPDATE `creature_template` SET `gossip_menu_id` = 347, `npcflag` = `npcflag`|1 WHERE `entry` = 6737;    -- Innkeeper Shaussiy
UPDATE `creature_template` SET `gossip_menu_id` = 411, `npcflag` = `npcflag`|1 WHERE `entry` = 5165;    -- Hulfdan Blackbeard
UPDATE `creature_template` SET `gossip_menu_id` = 523, `npcflag` = `npcflag`|1 WHERE `entry` = 3153;    -- Frang
UPDATE `creature_template` SET `gossip_menu_id` = 523, `npcflag` = `npcflag`|1 WHERE `entry` = 985;    -- Malosh
UPDATE `creature_template` SET `gossip_menu_id` = 524, `npcflag` = `npcflag`|1 WHERE `entry` = 7166;    -- Wrenix's Gizmotronic Apparatus
UPDATE `creature_template` SET `gossip_menu_id` = 541, `npcflag` = `npcflag`|1 WHERE `entry` = 4895;    -- Smiling Jim
UPDATE `creature_template` SET `gossip_menu_id` = 656, `npcflag` = `npcflag`|1 WHERE `entry` = 2131;    -- Austil de Mon
UPDATE `creature_template` SET `gossip_menu_id` = 681, `npcflag` = `npcflag`|1 WHERE `entry` = 1312;    -- Ardwyn Cailen
UPDATE `creature_template` SET `gossip_menu_id` = 681, `npcflag` = `npcflag`|1 WHERE `entry` = 1313;    -- Maria Lumere
UPDATE `creature_template` SET `gossip_menu_id` = 681, `npcflag` = `npcflag`|1 WHERE `entry` = 1307;    -- Charys Yserian
UPDATE `creature_template` SET `gossip_menu_id` = 681, `npcflag` = `npcflag`|1 WHERE `entry` = 1315;    -- Allan Hafgan
UPDATE `creature_template` SET `gossip_menu_id` = 681, `npcflag` = `npcflag`|1 WHERE `entry` = 1308;    -- Owen Vaughn
UPDATE `creature_template` SET `gossip_menu_id` = 682, `npcflag` = `npcflag`|1 WHERE `entry` = 1304;    -- Darian Singh
UPDATE `creature_template` SET `gossip_menu_id` = 683, `npcflag` = `npcflag`|1 WHERE `entry` = 5503;    -- Eldraeith
UPDATE `creature_template` SET `gossip_menu_id` = 687, `npcflag` = `npcflag`|1 WHERE `entry` = 1285;    -- Thurman Mullby
UPDATE `creature_template` SET `gossip_menu_id` = 687, `npcflag` = `npcflag`|1 WHERE `entry` = 1298;    -- Frederick Stover
UPDATE `creature_template` SET `gossip_menu_id` = 688, `npcflag` = `npcflag`|1 WHERE `entry` = 1319;    -- Bryan Cross
UPDATE `creature_template` SET `gossip_menu_id` = 689, `npcflag` = `npcflag`|1 WHERE `entry` = 1339;    -- Mayda Thane
UPDATE `creature_template` SET `gossip_menu_id` = 690, `npcflag` = `npcflag`|1 WHERE `entry` = 1324;    -- Heinrich Stone
UPDATE `creature_template` SET `gossip_menu_id` = 691, `npcflag` = `npcflag`|1 WHERE `entry` = 1350;    -- Theresa Moulaine
UPDATE `creature_template` SET `gossip_menu_id` = 691, `npcflag` = `npcflag`|1 WHERE `entry` = 1348;    -- Gregory Ardus
UPDATE `creature_template` SET `gossip_menu_id` = 691, `npcflag` = `npcflag`|1 WHERE `entry` = 1349;    -- Agustus Moulaine
UPDATE `creature_template` SET `gossip_menu_id` = 693, `npcflag` = `npcflag`|1 WHERE `entry` = 5509;    -- Kathrum Axehand
UPDATE `creature_template` SET `gossip_menu_id` = 693, `npcflag` = `npcflag`|1 WHERE `entry` = 5510;    -- Thulman Flintcrag
UPDATE `creature_template` SET `gossip_menu_id` = 700, `npcflag` = `npcflag`|1 WHERE `entry` = 1311;    -- Joachim Brenlow
UPDATE `creature_template` SET `gossip_menu_id` = 703, `npcflag` = `npcflag`|1 WHERE `entry` = 1302;    -- Bernard Gump
UPDATE `creature_template` SET `gossip_menu_id` = 705, `npcflag` = `npcflag`|1 WHERE `entry` = 1326;    -- Sloan McCoy
UPDATE `creature_template` SET `gossip_menu_id` = 706, `npcflag` = `npcflag`|1 WHERE `entry` = 1325;    -- Jasper Fel
UPDATE `creature_template` SET `gossip_menu_id` = 708, `npcflag` = `npcflag`|1 WHERE `entry` = 4974;    -- Aldwin Laughlin
UPDATE `creature_template` SET `gossip_menu_id` = 752, `npcflag` = `npcflag`|1 WHERE `entry` = 7363;    -- Kum'isha the Collector
UPDATE `creature_template` SET `gossip_menu_id` = 800, `npcflag` = `npcflag`|1 WHERE `entry` = 7505;    -- Bloodmage Drazial
UPDATE `creature_template` SET `gossip_menu_id` = 1141, `npcflag` = `npcflag`|1 WHERE `entry` = 8115;    -- Witch Doctor Uzer'i
UPDATE `creature_template` SET `gossip_menu_id` = 1186, `npcflag` = `npcflag`|1 WHERE `entry` = 4926;    -- Krog
UPDATE `creature_template` SET `gossip_menu_id` = 1242, `npcflag` = `npcflag`|1 WHERE `entry` = 3387;    -- Jorn Skyseer
UPDATE `creature_template` SET `gossip_menu_id` = 1401, `npcflag` = `npcflag`|1 WHERE `entry` = 8576;    -- Ag'tor Bloodfist
UPDATE `creature_template` SET `gossip_menu_id` = 1465, `npcflag` = `npcflag`|1 WHERE `entry` = 8738;    -- Vazario Linkgrease
UPDATE `creature_template` SET `gossip_menu_id` = 1469, `npcflag` = `npcflag`|1 WHERE `entry` = 8126;    -- Nixx Sprocketspring
UPDATE `creature_template` SET `gossip_menu_id` = 63, `npcflag` = `npcflag`|1 WHERE `entry` = 2128;    -- Cain Firesong
UPDATE `creature_template` SET `gossip_menu_id` = 1581, `npcflag` = `npcflag`|1 WHERE `entry` = 6738;    -- Innkeeper Kimlya
UPDATE `creature_template` SET `gossip_menu_id` = 1581, `npcflag` = `npcflag`|1 WHERE `entry` = 11103;    -- Innkeeper Lyshaerya
UPDATE `creature_template` SET `gossip_menu_id` = 1626, `npcflag` = `npcflag`|1 WHERE `entry` = 3370;    -- Urtrun Clanbringer
UPDATE `creature_template` SET `gossip_menu_id` = 1681, `npcflag` = `npcflag`|1 WHERE `entry` = 9076;    -- Ghede
UPDATE `creature_template` SET `gossip_menu_id` = 1822, `npcflag` = `npcflag`|1 WHERE `entry` = 9021;    -- Kharan Mighthammer
UPDATE `creature_template` SET `gossip_menu_id` = 1882, `npcflag` = `npcflag`|1 WHERE `entry` = 3389;    -- Regthar Deathgate
UPDATE `creature_template` SET `gossip_menu_id` = 1914, `npcflag` = `npcflag`|1 WHERE `entry` = 9299;    -- Gaeriyan
UPDATE `creature_template` SET `gossip_menu_id` = 1941, `npcflag` = `npcflag`|1 WHERE `entry` = 9034;    -- Hate'rel
UPDATE `creature_template` SET `gossip_menu_id` = 1943, `npcflag` = `npcflag`|1 WHERE `entry` = 9035;    -- Anger'rel
UPDATE `creature_template` SET `gossip_menu_id` = 1944, `npcflag` = `npcflag`|1 WHERE `entry` = 9036;    -- Vile'rel
UPDATE `creature_template` SET `gossip_menu_id` = 1948, `npcflag` = `npcflag`|1 WHERE `entry` = 9040;    -- Dope'rel
UPDATE `creature_template` SET `gossip_menu_id` = 1964, `npcflag` = `npcflag`|1 WHERE `entry` = 7854;    -- Jangdor Swiftstrider
UPDATE `creature_template` SET `gossip_menu_id` = 1967, `npcflag` = `npcflag`|1 WHERE `entry` = 9558;    -- Grimble
UPDATE `creature_template` SET `gossip_menu_id` = 1968, `npcflag` = `npcflag`|1 WHERE `entry` = 9559;    -- Grizzlowe
UPDATE `creature_template` SET `gossip_menu_id` = 2189, `npcflag` = `npcflag`|1 WHERE `entry` = 8659;    -- Jes'rimon
UPDATE `creature_template` SET `gossip_menu_id` = 2306, `npcflag` = `npcflag`|1 WHERE `entry` = 8441;    -- Raze
UPDATE `creature_template` SET `gossip_menu_id` = 2362, `npcflag` = `npcflag`|1 WHERE `entry` = 9990;    -- Lanti'gah
UPDATE `creature_template` SET `gossip_menu_id` = 2384, `npcflag` = `npcflag`|1 WHERE `entry` = 3326;    -- Zevrost
UPDATE `creature_template` SET `gossip_menu_id` = 2501, `npcflag` = `npcflag`|1 WHERE `entry` = 10136;    -- Chemist Fuely
UPDATE `creature_template` SET `gossip_menu_id` = 2561, `npcflag` = `npcflag`|1 WHERE `entry` = 3885;    -- Sentinel Velene Starstrike
UPDATE `creature_template` SET `gossip_menu_id` = 2851, `npcflag` = `npcflag`|1 WHERE `entry` = 7776;    -- Talo Thornhoof
UPDATE `creature_template` SET `gossip_menu_id` = 2861, `npcflag` = `npcflag`|1 WHERE `entry` = 3432;    -- Mankrik
UPDATE `creature_template` SET `gossip_menu_id` = 2941, `npcflag` = `npcflag`|1 WHERE `entry` = 10781;    -- Royal Overseer Bauhaus
UPDATE `creature_template` SET `gossip_menu_id` = 2942, `npcflag` = `npcflag`|1 WHERE `entry` = 3433;    -- Tatternack Steelforge
UPDATE `creature_template` SET `gossip_menu_id` = 2944, `npcflag` = `npcflag`|1 WHERE `entry` = 3430;    -- Mangletooth
UPDATE `creature_template` SET `gossip_menu_id` = 2951, `npcflag` = `npcflag`|1 WHERE `entry` = 10776;    -- Finkle Einhorn
UPDATE `creature_template` SET `gossip_menu_id` = 3041, `npcflag` = `npcflag`|1 WHERE `entry` = 10837;    -- High Executor Derrington
UPDATE `creature_template` SET `gossip_menu_id` = 3067, `npcflag` = `npcflag`|1 WHERE `entry` = 7866;    -- Peter Galen
UPDATE `creature_template` SET `gossip_menu_id` = 3133, `npcflag` = `npcflag`|1 WHERE `entry` = 11040;    -- Watcher Brownell
UPDATE `creature_template` SET `gossip_menu_id` = 3183, `npcflag` = `npcflag`|1 WHERE `entry` = 11055;    -- Shadow Priestess Vandis
UPDATE `creature_template` SET `gossip_menu_id` = 3331, `npcflag` = `npcflag`|1 WHERE `entry` = 3219;    -- Brave Leaping Deer
UPDATE `creature_template` SET `gossip_menu_id` = 3356, `npcflag` = `npcflag`|1 WHERE `entry` = 1735;    -- Deathguard Abraham
UPDATE `creature_template` SET `gossip_menu_id` = 3356, `npcflag` = `npcflag`|1 WHERE `entry` = 2209;    -- Deathguard Gavin
UPDATE `creature_template` SET `gossip_menu_id` = 3356, `npcflag` = `npcflag`|1 WHERE `entry` = 2210;    -- Deathguard Royann
UPDATE `creature_template` SET `gossip_menu_id` = 3501, `npcflag` = `npcflag`|1 WHERE `entry` = 1694;    -- Loslor Rudge
UPDATE `creature_template` SET `gossip_menu_id` = 3533, `npcflag` = `npcflag`|1 WHERE `entry` = 12996;    -- Mounted Ironforge Mountaineer
UPDATE `creature_template` SET `gossip_menu_id` = 3601, `npcflag` = `npcflag`|1 WHERE `entry` = 11608;    -- Bardu Sharpeye
UPDATE `creature_template` SET `gossip_menu_id` = 3604, `npcflag` = `npcflag`|1 WHERE `entry` = 11615;    -- Mickey Levine
UPDATE `creature_template` SET `gossip_menu_id` = 3644, `npcflag` = `npcflag`|1 WHERE `entry` = 3707;    -- Ken'jai
UPDATE `creature_template` SET `gossip_menu_id` = 3645, `npcflag` = `npcflag`|1 WHERE `entry` = 2123;    -- Dark Cleric Duesten
UPDATE `creature_template` SET `gossip_menu_id` = 3645, `npcflag` = `npcflag`|1 WHERE `entry` = 2129;    -- Dark Cleric Beryl
UPDATE `creature_template` SET `gossip_menu_id` = 3650, `npcflag` = `npcflag`|1 WHERE `entry` = 11627;    -- Tamed Kodo
UPDATE `creature_template` SET `gossip_menu_id` = 3662, `npcflag` = `npcflag`|1 WHERE `entry` = 11835;    -- Theodore Griffs
UPDATE `creature_template` SET `gossip_menu_id` = 3923, `npcflag` = `npcflag`|1 WHERE `entry` = 3602;    -- Kal
UPDATE `creature_template` SET `gossip_menu_id` = 3961, `npcflag` = `npcflag`|1 WHERE `entry` = 11625;    -- Cork Gizelton
UPDATE `creature_template` SET `gossip_menu_id` = 3963, `npcflag` = `npcflag`|1 WHERE `entry` = 11626;    -- Rigger Gizelton
UPDATE `creature_template` SET `gossip_menu_id` = 3984, `npcflag` = `npcflag`|1 WHERE `entry` = 6707;    -- Fahrad
UPDATE `creature_template` SET `gossip_menu_id` = 4001, `npcflag` = `npcflag`|1 WHERE `entry` = 1261;    -- Veron Amberstill
UPDATE `creature_template` SET `gossip_menu_id` = 4002, `npcflag` = `npcflag`|1 WHERE `entry` = 12246;    -- Super-Seller 680
UPDATE `creature_template` SET `gossip_menu_id` = 4003, `npcflag` = `npcflag`|1 WHERE `entry` = 12245;    -- Vendor-Tron 1000
UPDATE `creature_template` SET `gossip_menu_id` = 4007, `npcflag` = `npcflag`|1 WHERE `entry` = 1231;    -- Grif Wildheart
UPDATE `creature_template` SET `gossip_menu_id` = 4008, `npcflag` = `npcflag`|1 WHERE `entry` = 4146;    -- Jocaste
UPDATE `creature_template` SET `gossip_menu_id` = 4014, `npcflag` = `npcflag`|1 WHERE `entry` = 4772;    -- Ultham Ironhorn
UPDATE `creature_template` SET `gossip_menu_id` = 4015, `npcflag` = `npcflag`|1 WHERE `entry` = 4773;    -- Velma Warnam
UPDATE `creature_template` SET `gossip_menu_id` = 4016, `npcflag` = `npcflag`|1 WHERE `entry` = 7954;    -- Binjy Featherwhistle
UPDATE `creature_template` SET `gossip_menu_id` = 4025, `npcflag` = `npcflag`|1 WHERE `entry` = 11317;    -- Jinar'Zillen
UPDATE `creature_template` SET `gossip_menu_id` = 4045, `npcflag` = `npcflag`|1 WHERE `entry` = 2980;    -- Grull Hawkwind
UPDATE `creature_template` SET `gossip_menu_id` = 4047, `npcflag` = `npcflag`|1 WHERE `entry` = 658;    -- Sten Stoutarm
UPDATE `creature_template` SET `gossip_menu_id` = 4066, `npcflag` = `npcflag`|1 WHERE `entry` = 12031;    -- Mai'Lahii
UPDATE `creature_template` SET `gossip_menu_id` = 4084, `npcflag` = `npcflag`|1 WHERE `entry` = 11799;    -- Tajarri
UPDATE `creature_template` SET `gossip_menu_id` = 4091, `npcflag` = `npcflag`|1 WHERE `entry` = 8141;    -- Captain Evencane
UPDATE `creature_template` SET `gossip_menu_id` = 4092, `npcflag` = `npcflag`|1 WHERE `entry` = 8308;    -- Alenndaar Lapidaar
UPDATE `creature_template` SET `gossip_menu_id` = 4092, `npcflag` = `npcflag`|1 WHERE `entry` = 3963;    -- Danlaar Nightstride
UPDATE `creature_template` SET `gossip_menu_id` = 4101, `npcflag` = `npcflag`|1 WHERE `entry` = 987;    -- Ogromm
UPDATE `creature_template` SET `gossip_menu_id` = 4103, `npcflag` = `npcflag`|1 WHERE `entry` = 3062;    -- Meela Dawnstrider
UPDATE `creature_template` SET `gossip_menu_id` = 4162, `npcflag` = `npcflag`|1 WHERE `entry` = 12340;    -- Drulzegar Skraghook
UPDATE `creature_template` SET `gossip_menu_id` = 4307, `npcflag` = `npcflag`|1 WHERE `entry` = 2858;    -- Gringer
UPDATE `creature_template` SET `gossip_menu_id` = 4308, `npcflag` = `npcflag`|1 WHERE `entry` = 12656;    -- Thamarian
UPDATE `creature_template` SET `gossip_menu_id` = 4325, `npcflag` = `npcflag`|1 WHERE `entry` = 8359;    -- Ahanu
UPDATE `creature_template` SET `gossip_menu_id` = 4346, `npcflag` = `npcflag`|1 WHERE `entry` = 12696;    -- Senani Thunderheart
UPDATE `creature_template` SET `gossip_menu_id` = 4401, `npcflag` = `npcflag`|1 WHERE `entry` = 12757;    -- Karang Amakkar
UPDATE `creature_template` SET `gossip_menu_id` = 4441, `npcflag` = `npcflag`|1 WHERE `entry` = 12737;    -- Mastok Wrilehiss
UPDATE `creature_template` SET `gossip_menu_id` = 4442, `npcflag` = `npcflag`|1 WHERE `entry` = 12736;    -- Je'neu Sancrea
UPDATE `creature_template` SET `gossip_menu_id` = 4472, `npcflag` = `npcflag`|1 WHERE `entry` = 5517;    -- Thorfin Stoneshield
UPDATE `creature_template` SET `gossip_menu_id` = 4473, `npcflag` = `npcflag`|1 WHERE `entry` = 5516;    -- Ulfir Ironbeard
UPDATE `creature_template` SET `gossip_menu_id` = 4509, `npcflag` = `npcflag`|1 WHERE `entry` = 3353;    -- Grezz Ragefist
UPDATE `creature_template` SET `gossip_menu_id` = 4510, `npcflag` = `npcflag`|1 WHERE `entry` = 3408;    -- Zel'mak
UPDATE `creature_template` SET `gossip_menu_id` = 4511, `npcflag` = `npcflag`|1 WHERE `entry` = 3354;    -- Sorek
UPDATE `creature_template` SET `gossip_menu_id` = 4512, `npcflag` = `npcflag`|1 WHERE `entry` = 3328;    -- Ormok
UPDATE `creature_template` SET `gossip_menu_id` = 4513, `npcflag` = `npcflag`|1 WHERE `entry` = 3327;    -- Gest
UPDATE `creature_template` SET `gossip_menu_id` = 4515, `npcflag` = `npcflag`|1 WHERE `entry` = 3403;    -- Sian'tsu
UPDATE `creature_template` SET `gossip_menu_id` = 4521, `npcflag` = `npcflag`|1 WHERE `entry` = 6018;    -- Ur'kyo
UPDATE `creature_template` SET `gossip_menu_id` = 4522, `npcflag` = `npcflag`|1 WHERE `entry` = 5994;    -- Zayus
UPDATE `creature_template` SET `gossip_menu_id` = 4523, `npcflag` = `npcflag`|1 WHERE `entry` = 6014;    -- X'yera
UPDATE `creature_template` SET `gossip_menu_id` = 4531, `npcflag` = `npcflag`|1 WHERE `entry` = 3045;    -- Malakai Cross
UPDATE `creature_template` SET `gossip_menu_id` = 4532, `npcflag` = `npcflag`|1 WHERE `entry` = 3046;    -- Father Cobb
UPDATE `creature_template` SET `gossip_menu_id` = 4533, `npcflag` = `npcflag`|1 WHERE `entry` = 3044;    -- Miles Welsh
UPDATE `creature_template` SET `gossip_menu_id` = 4535, `npcflag` = `npcflag`|1 WHERE `entry` = 3049;    -- Thurston Xane
UPDATE `creature_template` SET `gossip_menu_id` = 4536, `npcflag` = `npcflag`|1 WHERE `entry` = 3048;    -- Ursyn Ghull
UPDATE `creature_template` SET `gossip_menu_id` = 4540, `npcflag` = `npcflag`|1 WHERE `entry` = 4583;    -- Miles Dexter
UPDATE `creature_template` SET `gossip_menu_id` = 4541, `npcflag` = `npcflag`|1 WHERE `entry` = 4584;    -- Gregory Charles
UPDATE `creature_template` SET `gossip_menu_id` = 4542, `npcflag` = `npcflag`|1 WHERE `entry` = 4582;    -- Carolyn Ward
UPDATE `creature_template` SET `gossip_menu_id` = 4543, `npcflag` = `npcflag`|1 WHERE `entry` = 4608;    -- Father Lazarus
UPDATE `creature_template` SET `gossip_menu_id` = 4544, `npcflag` = `npcflag`|1 WHERE `entry` = 4606;    -- Aelthalyste
UPDATE `creature_template` SET `gossip_menu_id` = 4545, `npcflag` = `npcflag`|1 WHERE `entry` = 4607;    -- Father Lankester
UPDATE `creature_template` SET `gossip_menu_id` = 4546, `npcflag` = `npcflag`|1 WHERE `entry` = 4594;    -- Angela Curthas
UPDATE `creature_template` SET `gossip_menu_id` = 4547, `npcflag` = `npcflag`|1 WHERE `entry` = 4595;    -- Baltus Fowler
UPDATE `creature_template` SET `gossip_menu_id` = 4548, `npcflag` = `npcflag`|1 WHERE `entry` = 4593;    -- Christoph Walker
UPDATE `creature_template` SET `gossip_menu_id` = 4556, `npcflag` = `npcflag`|1 WHERE `entry` = 5148;    -- Beldruk Doombrow
UPDATE `creature_template` SET `gossip_menu_id` = 4557, `npcflag` = `npcflag`|1 WHERE `entry` = 5147;    -- Valgar Highforge
UPDATE `creature_template` SET `gossip_menu_id` = 4561, `npcflag` = `npcflag`|1 WHERE `entry` = 5167;    -- Fenthwick
UPDATE `creature_template` SET `gossip_menu_id` = 4567, `npcflag` = `npcflag`|1 WHERE `entry` = 5171;    -- Thistleheart
UPDATE `creature_template` SET `gossip_menu_id` = 4578, `npcflag` = `npcflag`|1 WHERE `entry` = 4089;    -- Sildanair
UPDATE `creature_template` SET `gossip_menu_id` = 4603, `npcflag` = `npcflag`|1 WHERE `entry` = 3324;    -- Grol'dar
UPDATE `creature_template` SET `gossip_menu_id` = 4604, `npcflag` = `npcflag`|1 WHERE `entry` = 3325;    -- Mirket
UPDATE `creature_template` SET `gossip_menu_id` = 4605, `npcflag` = `npcflag`|1 WHERE `entry` = 9465;    -- Golhine the Hooded
UPDATE `creature_template` SET `gossip_menu_id` = 4606, `npcflag` = `npcflag`|1 WHERE `entry` = 8142;    -- Jannos Lighthoof
UPDATE `creature_template` SET `gossip_menu_id` = 4610, `npcflag` = `npcflag`|1 WHERE `entry` = 4565;    -- Richard Kerwin
UPDATE `creature_template` SET `gossip_menu_id` = 4621, `npcflag` = `npcflag`|1 WHERE `entry` = 4138;    -- Jeen'ra Nightrunner
UPDATE `creature_template` SET `gossip_menu_id` = 4642, `npcflag` = `npcflag`|1 WHERE `entry` = 988;    -- Kartosh
UPDATE `creature_template` SET `gossip_menu_id` = 4643, `npcflag` = `npcflag`|1 WHERE `entry` = 3156;    -- Nartok
UPDATE `creature_template` SET `gossip_menu_id` = 4644, `npcflag` = `npcflag`|1 WHERE `entry` = 3060;    -- Gart Mistrunner
UPDATE `creature_template` SET `gossip_menu_id` = 4649, `npcflag` = `npcflag`|1 WHERE `entry` = 913;    -- Lyria Du Lac
UPDATE `creature_template` SET `gossip_menu_id` = 4652, `npcflag` = `npcflag`|1 WHERE `entry` = 3157;    -- Shikrik
UPDATE `creature_template` SET `gossip_menu_id` = 4652, `npcflag` = `npcflag`|1 WHERE `entry` = 986;    -- Haromm
UPDATE `creature_template` SET `gossip_menu_id` = 4653, `npcflag` = `npcflag`|1 WHERE `entry` = 2119;    -- Dannal Stern
UPDATE `creature_template` SET `gossip_menu_id` = 4655, `npcflag` = `npcflag`|1 WHERE `entry` = 2126;    -- Maximillion
UPDATE `creature_template` SET `gossip_menu_id` = 4656, `npcflag` = `npcflag`|1 WHERE `entry` = 2127;    -- Rupert Boch
UPDATE `creature_template` SET `gossip_menu_id` = 4658, `npcflag` = `npcflag`|1 WHERE `entry` = 1411;    -- Ian Strom
UPDATE `creature_template` SET `gossip_menu_id` = 4665, `npcflag` = `npcflag`|1 WHERE `entry` = 375;    -- Priestess Anetta
UPDATE `creature_template` SET `gossip_menu_id` = 4674, `npcflag` = `npcflag`|1 WHERE `entry` = 10930;    -- Dargh Trueaim
UPDATE `creature_template` SET `gossip_menu_id` = 4693, `npcflag` = `npcflag`|1 WHERE `entry` = 4205;    -- Dorion
UPDATE `creature_template` SET `gossip_menu_id` = 4694, `npcflag` = `npcflag`|1 WHERE `entry` = 5501;    -- Kaerbrus
UPDATE `creature_template` SET `gossip_menu_id` = 4701, `npcflag` = `npcflag`|1 WHERE `entry` = 4631;    -- Wharfmaster Lozgil
UPDATE `creature_template` SET `gossip_menu_id` = 4825, `npcflag` = `npcflag`|1 WHERE `entry` = 5957;    -- Birgitte Cranston
UPDATE `creature_template` SET `gossip_menu_id` = 4841, `npcflag` = `npcflag`|1 WHERE `entry` = 12997;    -- Monty
UPDATE `creature_template` SET `gossip_menu_id` = 4842, `npcflag` = `npcflag`|1 WHERE `entry` = 8153;    -- Narv Hidecrafter
UPDATE `creature_template` SET `gossip_menu_id` = 4843, `npcflag` = `npcflag`|1 WHERE `entry` = 4578;    -- Josephine Lister
UPDATE `creature_template` SET `gossip_menu_id` = 4845, `npcflag` = `npcflag`|1 WHERE `entry` = 13018;    -- Nipsy
UPDATE `creature_template` SET `gossip_menu_id` = 4861, `npcflag` = `npcflag`|1 WHERE `entry` = 6766;    -- Ravenholdt Guard
UPDATE `creature_template` SET `gossip_menu_id` = 4862, `npcflag` = `npcflag`|1 WHERE `entry` = 6771;    -- Ravenholdt Assassin
UPDATE `creature_template` SET `gossip_menu_id` = 4922, `npcflag` = `npcflag`|1 WHERE `entry` = 13085;    -- Myrokos Silentform
UPDATE `creature_template` SET `gossip_menu_id` = 4981, `npcflag` = `npcflag`|1 WHERE `entry` = 12863;    -- Warsong Runner
UPDATE `creature_template` SET `gossip_menu_id` = 5061, `npcflag` = `npcflag`|1 WHERE `entry` = 13283;    -- Lord Tony Romano
UPDATE `creature_template` SET `gossip_menu_id` = 5081, `npcflag` = `npcflag`|1 WHERE `entry` = 13447;    -- Corporal Noreg Stormpike
UPDATE `creature_template` SET `gossip_menu_id` = 5101, `npcflag` = `npcflag`|1 WHERE `entry` = 11939;    -- Umber
UPDATE `creature_template` SET `gossip_menu_id` = 5108, `npcflag` = `npcflag`|1 WHERE `entry` = 4613;    -- Christopher Drakul
UPDATE `creature_template` SET `gossip_menu_id` = 5141, `npcflag` = `npcflag`|1 WHERE `entry` = 13443;    -- Druid of the Grove
UPDATE `creature_template` SET `gossip_menu_id` = 5142, `npcflag` = `npcflag`|1 WHERE `entry` = 13442;    -- Arch Druid Renferal
UPDATE `creature_template` SET `gossip_menu_id` = 5161, `npcflag` = `npcflag`|1 WHERE `entry` = 12724;    -- Pixel
UPDATE `creature_template` SET `gossip_menu_id` = 5181, `npcflag` = `npcflag`|1 WHERE `entry` = 13435;    -- Khole Jinglepocket
UPDATE `creature_template` SET `gossip_menu_id` = 5181, `npcflag` = `npcflag`|1 WHERE `entry` = 13420;    -- Penney Copperpinch
UPDATE `creature_template` SET `gossip_menu_id` = 5181, `npcflag` = `npcflag`|1 WHERE `entry` = 13434;    -- Macey Jinglepocket
UPDATE `creature_template` SET `gossip_menu_id` = 5232, `npcflag` = `npcflag`|1 WHERE `entry` = 13444;    -- Greatfather Winter
UPDATE `creature_template` SET `gossip_menu_id` = 5232, `npcflag` = `npcflag`|1 WHERE `entry` = 13445;    -- Great-father Winter
UPDATE `creature_template` SET `gossip_menu_id` = 5302, `npcflag` = `npcflag`|1 WHERE `entry` = 13698;    -- Keeper Marandis
UPDATE `creature_template` SET `gossip_menu_id` = 5303, `npcflag` = `npcflag`|1 WHERE `entry` = 13699;    -- Selendra
UPDATE `creature_template` SET `gossip_menu_id` = 5349, `npcflag` = `npcflag`|1 WHERE `entry` = 13716;    -- Celebras the Redeemed
UPDATE `creature_template` SET `gossip_menu_id` = 5462, `npcflag` = `npcflag`|1 WHERE `entry` = 5130;    -- Jondor Steelbrow
UPDATE `creature_template` SET `gossip_menu_id` = 5502, `npcflag` = `npcflag`|1 WHERE `entry` = 3691;    -- Raene Wolfrunner
UPDATE `creature_template` SET `gossip_menu_id` = 5521, `npcflag` = `npcflag`|1 WHERE `entry` = 13697;    -- Cavindra
UPDATE `creature_template` SET `gossip_menu_id` = 5542, `npcflag` = `npcflag`|1 WHERE `entry` = 2393;    -- Christoph Jeffcoat
UPDATE `creature_template` SET `gossip_menu_id` = 5630, `npcflag` = `npcflag`|1 WHERE `entry` = 9118;    -- Larion
UPDATE `creature_template` SET `gossip_menu_id` = 5741, `npcflag` = `npcflag`|1 WHERE `entry` = 14374;    -- Scholar Runethorn
UPDATE `creature_template` SET `gossip_menu_id` = 5763, `npcflag` = `npcflag`|1 WHERE `entry` = 7207;    -- Doc Mixilpixil
UPDATE `creature_template` SET `gossip_menu_id` = 5818, `npcflag` = `npcflag`|1 WHERE `entry` = 14437;    -- Gorzeeki Wildeyes
UPDATE `creature_template` SET `gossip_menu_id` = 5824, `npcflag` = `npcflag`|1 WHERE `entry` = 14463;    -- Daio the Decrepit
UPDATE `creature_template` SET `gossip_menu_id` = 5968, `npcflag` = `npcflag`|1 WHERE `entry` = 3305;    -- Grisha
UPDATE `creature_template` SET `gossip_menu_id` = 6021, `npcflag` = `npcflag`|1 WHERE `entry` = 13020;    -- Vaelastrasz the Corrupt
UPDATE `creature_template` SET `gossip_menu_id` = 6034, `npcflag` = `npcflag`|1 WHERE `entry` = 14727;    -- Vehena
UPDATE `creature_template` SET `gossip_menu_id` = 6035, `npcflag` = `npcflag`|1 WHERE `entry` = 14726;    -- Rashona Straglash
UPDATE `creature_template` SET `gossip_menu_id` = 6036, `npcflag` = `npcflag`|1 WHERE `entry` = 14729;    -- Ralston Farnsley
UPDATE `creature_template` SET `gossip_menu_id` = 6059, `npcflag` = `npcflag`|1 WHERE `entry` = 14731;    -- Lard
UPDATE `creature_template` SET `gossip_menu_id` = 6083, `npcflag` = `npcflag`|1 WHERE `entry` = 14738;    -- Otho Moji'ko
UPDATE `creature_template` SET `gossip_menu_id` = 6085, `npcflag` = `npcflag`|1 WHERE `entry` = 14737;    -- Smith Slagtree
UPDATE `creature_template` SET `gossip_menu_id` = 6086, `npcflag` = `npcflag`|1 WHERE `entry` = 14739;    -- Mystic Yayo'jin
UPDATE `creature_template` SET `gossip_menu_id` = 6228, `npcflag` = `npcflag`|1 WHERE `entry` = 7875;    -- Hadoken Swiftstrider
UPDATE `creature_template` SET `gossip_menu_id` = 6229, `npcflag` = `npcflag`|1 WHERE `entry` = 7010;    -- Zilzibin Drumlore
UPDATE `creature_template` SET `gossip_menu_id` = 6232, `npcflag` = `npcflag`|1 WHERE `entry` = 14866;    -- Flik's Frog
UPDATE `creature_template` SET `gossip_menu_id` = 6282, `npcflag` = `npcflag`|1 WHERE `entry` = 2302;    -- Aethalas
UPDATE `creature_template` SET `gossip_menu_id` = 6324, `npcflag` = `npcflag`|1 WHERE `entry` = 14984;    -- Sergeant Maclear
UPDATE `creature_template` SET `gossip_menu_id` = 6342, `npcflag` = `npcflag`|1 WHERE `entry` = 15012;    -- Javnir Nashak
UPDATE `creature_template` SET `gossip_menu_id` = 6362, `npcflag` = `npcflag`|1 WHERE `entry` = 15022;    -- Deathstalker Mortis
UPDATE `creature_template` SET `gossip_menu_id` = 6459, `npcflag` = `npcflag`|1 WHERE `entry` = 3890;    -- Brakgul Deathbringer
UPDATE `creature_template` SET `gossip_menu_id` = 6460, `npcflag` = `npcflag`|1 WHERE `entry` = 14981;    -- Elfarran
UPDATE `creature_template` SET `gossip_menu_id` = 6461, `npcflag` = `npcflag`|1 WHERE `entry` = 10360;    -- Kergul Bloodaxe
UPDATE `creature_template` SET `gossip_menu_id` = 6462, `npcflag` = `npcflag`|1 WHERE `entry` = 2804;    -- Kurden Bloodclaw
UPDATE `creature_template` SET `gossip_menu_id` = 6464, `npcflag` = `npcflag`|1 WHERE `entry` = 5118;    -- Brogun Stoneshield
UPDATE `creature_template` SET `gossip_menu_id` = 6466, `npcflag` = `npcflag`|1 WHERE `entry` = 347;    -- Grizzle Halfmane
UPDATE `creature_template` SET `gossip_menu_id` = 6467, `npcflag` = `npcflag`|1 WHERE `entry` = 14942;    -- Kartra Bloodsnarl
UPDATE `creature_template` SET `gossip_menu_id` = 6468, `npcflag` = `npcflag`|1 WHERE `entry` = 7427;    -- Taim Ragetotem
UPDATE `creature_template` SET `gossip_menu_id` = 6469, `npcflag` = `npcflag`|1 WHERE `entry` = 7410;    -- Thelman Slatefist
UPDATE `creature_template` SET `gossip_menu_id` = 6470, `npcflag` = `npcflag`|1 WHERE `entry` = 15006;    -- Deze Snowbane
UPDATE `creature_template` SET `gossip_menu_id` = 6472, `npcflag` = `npcflag`|1 WHERE `entry` = 907;    -- Keras Wolfheart
UPDATE `creature_template` SET `gossip_menu_id` = 6473, `npcflag` = `npcflag`|1 WHERE `entry` = 15008;    -- Lady Hoteshem
UPDATE `creature_template` SET `gossip_menu_id` = 6474, `npcflag` = `npcflag`|1 WHERE `entry` = 12198;    -- Martin Lindsey
UPDATE `creature_template` SET `gossip_menu_id` = 6476, `npcflag` = `npcflag`|1 WHERE `entry` = 15116;    -- Grinkle
UPDATE `creature_template` SET `gossip_menu_id` = 6478, `npcflag` = (1+2048) WHERE `entry` = 14990;    -- Defilers Emissary
UPDATE `creature_template` SET `gossip_menu_id` = 6504, `npcflag` = (1+2048) WHERE `entry` = 14991;    -- Arathor Emissary
UPDATE `creature_template` SET `gossip_menu_id` = 6484, `npcflag` = `npcflag`|1 WHERE `entry` = 15106;    -- Frostwolf Emissary
UPDATE `creature_template` SET `gossip_menu_id` = 6490, `npcflag` = `npcflag`|1 WHERE `entry` = 15105;    -- Warsong Emissary
UPDATE `creature_template` SET `gossip_menu_id` = 6508, `npcflag` = (1+2048) WHERE `entry` = 15102;    -- Silverwing Emissary
UPDATE `creature_template` SET `gossip_menu_id` = 6524, `npcflag` = `npcflag`|1 WHERE `entry` = 14781;    -- Captain Shatterskull
UPDATE `creature_template` SET `gossip_menu_id` = 6526, `npcflag` = `npcflag`|1 WHERE `entry` = 15175;    -- Khur Hornstriker
UPDATE `creature_template` SET `gossip_menu_id` = 6528, `npcflag` = `npcflag`|1 WHERE `entry` = 15179;    -- Mishta
UPDATE `creature_template` SET `gossip_menu_id` = 6529, `npcflag` = `npcflag`|1 WHERE `entry` = 15180;    -- Baristolth of the Shifting Sands
UPDATE `creature_template` SET `gossip_menu_id` = 6530, `npcflag` = `npcflag`|1 WHERE `entry` = 15181;    -- Commander Mar'alith
UPDATE `creature_template` SET `gossip_menu_id` = 6531, `npcflag` = `npcflag`|1 WHERE `entry` = 15182;    -- Vish Kozus
UPDATE `creature_template` SET `gossip_menu_id` = 6532, `npcflag` = `npcflag`|1 WHERE `entry` = 15183;    -- Geologist Larksbane
UPDATE `creature_template` SET `gossip_menu_id` = 6539, `npcflag` = `npcflag`|1 WHERE `entry` = 15192;    -- Anachronos
UPDATE `creature_template` SET `gossip_menu_id` = 6544, `npcflag` = `npcflag`|1 WHERE `entry` = 15190;    -- Noggle Ficklespragg
UPDATE `creature_template` SET `gossip_menu_id` = 6565, `npcflag` = `npcflag`|1 WHERE `entry` = 2943;    -- Ransin Donner
UPDATE `creature_template` SET `gossip_menu_id` = 6567, `npcflag` = `npcflag`|1 WHERE `entry` = 15282;    -- Aurel Goldleaf
UPDATE `creature_template` SET `gossip_menu_id` = 6568, `npcflag` = `npcflag`|1 WHERE `entry` = 15293;    -- Aendel Windspear
UPDATE `creature_template` SET `gossip_menu_id` = 6596, `npcflag` = `npcflag`|1 WHERE `entry` = 15194;    -- Hermit Ortell
UPDATE `creature_template` SET `gossip_menu_id` = 6623, `npcflag` = `npcflag`|1 WHERE `entry` = 15443;    -- Janela Stouthammer
UPDATE `creature_template` SET `gossip_menu_id` = 6644, `npcflag` = `npcflag`|1 WHERE `entry` = 15502;    -- Andorgos
UPDATE `creature_template` SET `gossip_menu_id` = 6645, `npcflag` = `npcflag`|1 WHERE `entry` = 15503;    -- Kandrostrasz
UPDATE `creature_template` SET `gossip_menu_id` = 6655, `npcflag` = `npcflag`|1 WHERE `entry` = 15504;    -- Vethsera
UPDATE `creature_template` SET `gossip_menu_id` = 6687, `npcflag` = `npcflag`|1 WHERE `entry` = 15612;    -- Krug Skullsplit
UPDATE `creature_template` SET `gossip_menu_id` = 6690, `npcflag` = `npcflag`|1 WHERE `entry` = 15610;    -- Cenarion Scout Azenel
UPDATE `creature_template` SET `gossip_menu_id` = 6691, `npcflag` = `npcflag`|1 WHERE `entry` = 15611;    -- Cenarion Scout Jalia
UPDATE `creature_template` SET `gossip_menu_id` = 6768, `npcflag` = `npcflag`|1 WHERE `entry` = 13418;    -- Kaymard Copperpinch
UPDATE `creature_template` SET `gossip_menu_id` = 6769, `npcflag` = `npcflag`|1 WHERE `entry` = 13433;    -- Wulmort Jinglepocket
UPDATE `creature_template` SET `gossip_menu_id` = 6791, `npcflag` = `npcflag`|1 WHERE `entry` = 15722;    -- Squire Leoren Mal'derath
UPDATE `creature_template` SET `gossip_menu_id` = 6793, `npcflag` = `npcflag`|1 WHERE `entry` = 15380;    -- Arygos
UPDATE `creature_template` SET `gossip_menu_id` = 6794, `npcflag` = `npcflag`|1 WHERE `entry` = 15379;    -- Caelestrasz
UPDATE `creature_template` SET `gossip_menu_id` = 6795, `npcflag` = `npcflag`|1 WHERE `entry` = 15378;    -- Merithra of the Dream
UPDATE `creature_template` SET `gossip_menu_id` = 6802, `npcflag` = `npcflag`|1 WHERE `entry` = 15732;    -- Wonderform Operator
UPDATE `creature_template` SET `gossip_menu_id` = 6813, `npcflag` = `npcflag`|1 WHERE `entry` = 15760;    -- Winter Reveler
UPDATE `creature_template` SET `gossip_menu_id` = 6814, `npcflag` = `npcflag`|1 WHERE `entry` = 15575;    -- Elder Bloodhoof
UPDATE `creature_template` SET `gossip_menu_id` = 6815, `npcflag` = `npcflag`|1 WHERE `entry` = 15572;    -- Elder Runetotem
UPDATE `creature_template` SET `gossip_menu_id` = 6816, `npcflag` = `npcflag`|1 WHERE `entry` = 15568;    -- Elder Graveborn
UPDATE `creature_template` SET `gossip_menu_id` = 6817, `npcflag` = `npcflag`|1 WHERE `entry` = 15597;    -- Elder Moonwarden
UPDATE `creature_template` SET `gossip_menu_id` = 6818, `npcflag` = `npcflag`|1 WHERE `entry` = 15588;    -- Elder High Mountain
UPDATE `creature_template` SET `gossip_menu_id` = 6819, `npcflag` = `npcflag`|1 WHERE `entry` = 15561;    -- Elder Obsidian
UPDATE `creature_template` SET `gossip_menu_id` = 6820, `npcflag` = `npcflag`|1 WHERE `entry` = 15584;    -- Elder Skyseer
UPDATE `creature_template` SET `gossip_menu_id` = 6822, `npcflag` = `npcflag`|1 WHERE `entry` = 15595;    -- Elder Bladeleaf
UPDATE `creature_template` SET `gossip_menu_id` = 6824, `npcflag` = `npcflag`|1 WHERE `entry` = 15560;    -- Elder Stonefort
UPDATE `creature_template` SET `gossip_menu_id` = 6828, `npcflag` = `npcflag`|1 WHERE `entry` = 15582;    -- Elder Windtotem
UPDATE `creature_template` SET `gossip_menu_id` = 6830, `npcflag` = `npcflag`|1 WHERE `entry` = 15604;    -- Elder Morningdew
UPDATE `creature_template` SET `gossip_menu_id` = 6832, `npcflag` = `npcflag`|1 WHERE `entry` = 15564;    -- Elder Darkcore
UPDATE `creature_template` SET `gossip_menu_id` = 6833, `npcflag` = `npcflag`|1 WHERE `entry` = 15562;    -- Elder Hammershout
UPDATE `creature_template` SET `gossip_menu_id` = 6834, `npcflag` = `npcflag`|1 WHERE `entry` = 15566;    -- Elder Snowcrown
UPDATE `creature_template` SET `gossip_menu_id` = 6835, `npcflag` = `npcflag`|1 WHERE `entry` = 15599;    -- Elder Bladesing
UPDATE `creature_template` SET `gossip_menu_id` = 6848, `npcflag` = `npcflag`|1 WHERE `entry` = 15559;    -- Elder Highpeak
UPDATE `creature_template` SET `gossip_menu_id` = 6849, `npcflag` = `npcflag`|1 WHERE `entry` = 15594;    -- Elder Moonstrike
UPDATE `creature_template` SET `gossip_menu_id` = 6852, `npcflag` = `npcflag`|1 WHERE `entry` = 15592;    -- Elder Windrun
UPDATE `creature_template` SET `gossip_menu_id` = 6853, `npcflag` = `npcflag`|1 WHERE `entry` = 15607;    -- Elder Farwhisper
UPDATE `creature_template` SET `gossip_menu_id` = 6855, `npcflag` = `npcflag`|1 WHERE `entry` = 15549;    -- Elder Morndeep
UPDATE `creature_template` SET `gossip_menu_id` = 6856, `npcflag` = `npcflag`|1 WHERE `entry` = 15558;    -- Elder Silvervein
UPDATE `creature_template` SET `gossip_menu_id` = 6861, `npcflag` = `npcflag`|1 WHERE `entry` = 15567;    -- Elder Ironband
UPDATE `creature_template` SET `gossip_menu_id` = 6864, `npcflag` = `npcflag`|1 WHERE `entry` = 15585;    -- Elder Dawnstrider
UPDATE `creature_template` SET `gossip_menu_id` = 6872, `npcflag` = `npcflag`|1 WHERE `entry` = 15557;    -- Elder Rumblerock
UPDATE `creature_template` SET `gossip_menu_id` = 6874, `npcflag` = `npcflag`|1 WHERE `entry` = 15593;    -- Elder Starsong
UPDATE `creature_template` SET `gossip_menu_id` = 6885, `npcflag` = `npcflag`|1 WHERE `entry` = 15574;    -- Elder Stonespire
UPDATE `creature_template` SET `gossip_menu_id` = 6887, `npcflag` = `npcflag`|1 WHERE `entry` = 15603;    -- Elder Nightwind
UPDATE `creature_template` SET `gossip_menu_id` = 6888, `npcflag` = `npcflag`|1 WHERE `entry` = 15606;    -- Elder Brightspear
UPDATE `creature_template` SET `gossip_menu_id` = 6889, `npcflag` = `npcflag`|1 WHERE `entry` = 15600;    -- Elder Skygleam
UPDATE `creature_template` SET `gossip_menu_id` = 6890, `npcflag` = `npcflag`|1 WHERE `entry` = 15580;    -- Elder Ezra Wheathoof
UPDATE `creature_template` SET `gossip_menu_id` = 6899, `npcflag` = `npcflag`|1 WHERE `entry` = 15579;    -- Elder Darkhorn
UPDATE `creature_template` SET `gossip_menu_id` = 6903, `npcflag` = `npcflag`|1 WHERE `entry` = 15587;    -- Elder Mistwalker
UPDATE `creature_template` SET `gossip_menu_id` = 6905, `npcflag` = `npcflag`|1 WHERE `entry` = 15581;    -- Elder Grimtotem
UPDATE `creature_template` SET `gossip_menu_id` = 6906, `npcflag` = `npcflag`|1 WHERE `entry` = 15556;    -- Elder Splitrock
UPDATE `creature_template` SET `gossip_menu_id` = 6911, `npcflag` = `npcflag`|1 WHERE `entry` = 15573;    -- Elder Ragetotem
UPDATE `creature_template` SET `gossip_menu_id` = 6912, `npcflag` = `npcflag`|1 WHERE `entry` = 15578;    -- Elder Wildmane
UPDATE `creature_template` SET `gossip_menu_id` = 6914, `npcflag` = `npcflag`|1 WHERE `entry` = 15583;    -- Elder Thunderhorn
UPDATE `creature_template` SET `gossip_menu_id` = 6916, `npcflag` = `npcflag`|1 WHERE `entry` = 15570;    -- Elder Primestone
UPDATE `creature_template` SET `gossip_menu_id` = 6919, `npcflag` = `npcflag`|1 WHERE `entry` = 15602;    -- Elder Meadowrun
UPDATE `creature_template` SET `gossip_menu_id` = 6921, `npcflag` = `npcflag`|1 WHERE `entry` = 15596;    -- Elder Starglade
UPDATE `creature_template` SET `gossip_menu_id` = 6923, `npcflag` = `npcflag`|1 WHERE `entry` = 15903;    -- Sergeant Carnes
UPDATE `creature_template` SET `gossip_menu_id` = 6924, `npcflag` = `npcflag`|(1+4) WHERE `entry` = 15909;    -- Fariel Starsong
UPDATE `creature_template` SET `gossip_menu_id` = 6926, `npcflag` = `npcflag`|1 WHERE `entry` = 15613;    -- Merok Longstride
UPDATE `creature_template` SET `gossip_menu_id` = 6927, `npcflag` = `npcflag`|1 WHERE `entry` = 15500;    -- Keyl Swiftclaw
UPDATE `creature_template` SET `gossip_menu_id` = 6928, `npcflag` = `npcflag`|1 WHERE `entry` = 15498;    -- Windcaller Yessendra
UPDATE `creature_template` SET `gossip_menu_id` = 6929, `npcflag` = `npcflag`|1 WHERE `entry` = 15906;    -- Ironforge Reveler
UPDATE `creature_template` SET `gossip_menu_id` = 6930, `npcflag` = `npcflag`|1 WHERE `entry` = 15905;    -- Darnassus Reveler
UPDATE `creature_template` SET `gossip_menu_id` = 6931, `npcflag` = `npcflag`|1 WHERE `entry` = 15694;    -- Stormwind Reveler
UPDATE `creature_template` SET `gossip_menu_id` = 6932, `npcflag` = `npcflag`|1 WHERE `entry` = 15908;    -- Orgrimmar Reveler
UPDATE `creature_template` SET `gossip_menu_id` = 6933, `npcflag` = `npcflag`|1 WHERE `entry` = 15719;    -- Thunder Bluff Reveler
UPDATE `creature_template` SET `gossip_menu_id` = 6934, `npcflag` = `npcflag`|1 WHERE `entry` = 15907;    -- Undercity Reveler
UPDATE `creature_template` SET `gossip_menu_id` = 6944, `npcflag` = `npcflag`|1 WHERE `entry` = 13177;    -- Vahgruk
UPDATE `creature_template` SET `gossip_menu_id` = 6944, `npcflag` = `npcflag`|1 WHERE `entry` = 6026;    -- Breyk
UPDATE `creature_template` SET `gossip_menu_id` = 6944, `npcflag` = `npcflag`|1 WHERE `entry` = 4317;    -- Nyse
UPDATE `creature_template` SET `gossip_menu_id` = 6944, `npcflag` = `npcflag`|1 WHERE `entry` = 2861;    -- Gorrik
UPDATE `creature_template` SET `gossip_menu_id` = 6944, `npcflag` = `npcflag`|1 WHERE `entry` = 4407;    -- Teloren
UPDATE `creature_template` SET `gossip_menu_id` = 6944, `npcflag` = `npcflag`|1 WHERE `entry` = 8610;    -- Kroum
UPDATE `creature_template` SET `gossip_menu_id` = 6944, `npcflag` = `npcflag`|1 WHERE `entry` = 12740;    -- Faustron
UPDATE `creature_template` SET `gossip_menu_id` = 6944, `npcflag` = `npcflag`|1 WHERE `entry` = 2389;    -- Zarise
UPDATE `creature_template` SET `gossip_menu_id` = 6944, `npcflag` = `npcflag`|1 WHERE `entry` = 6726;    -- Thalon
UPDATE `creature_template` SET `gossip_menu_id` = 7046, `npcflag` = `npcflag`|1 WHERE `entry` = 16015;    -- Vi'el
UPDATE `creature_template` SET `gossip_menu_id` = 7083, `npcflag` = `npcflag`|1 WHERE `entry` = 16014;    -- Mux Manascrambler
UPDATE `creature_template` SET `gossip_menu_id` = 7097, `npcflag` = `npcflag`|1 WHERE `entry` = 16115;    -- Commander Eligor Dawnbringer
UPDATE `creature_template` SET `gossip_menu_id` = 7173, `npcflag` = `npcflag`|1 WHERE `entry` = 16256;    -- Jessica Chambers
UPDATE `creature_template` SET `gossip_menu_id` = 7174, `npcflag` = `npcflag`|1 WHERE `entry` = 16283;    -- Packmaster Stonebruiser
UPDATE `creature_template` SET `gossip_menu_id` = 7215, `npcflag` = `npcflag`|1 WHERE `entry` = 16365;    -- Master Craftsman Omarion
UPDATE `creature_template` SET `gossip_menu_id` = 7236, `npcflag` = `npcflag`|1 WHERE `entry` = 16399;    -- Bloodsail Traitor
UPDATE `creature_template` SET `gossip_menu_id` = 7239, `npcflag` = `npcflag`|1 WHERE `entry` = 16417;    -- Rumsen Fizzlebrack
UPDATE `creature_template` SET `gossip_menu_id` = 7326, `npcflag` = `npcflag`|1 WHERE `entry` = 16817;    -- Festival Loremaster
UPDATE `creature_template` SET `gossip_menu_id` = 7487, `npcflag` = `npcflag`|1 WHERE `entry` = 4161;    -- Lysheana
UPDATE `creature_template` SET `gossip_menu_id` = 8453, `npcflag` = `npcflag`|1 WHERE `entry` = 15103;    -- Stormpike Emissary
UPDATE `creature_template` SET `gossip_menu_id` = 8730, `npcflag` = `npcflag`|1 WHERE `entry` = 5698;    -- Joanna Whitehall
UPDATE `creature_template` SET `gossip_menu_id` = 8871, `npcflag` = `npcflag`|1 WHERE `entry` = 4501;    -- Draz'Zilb
UPDATE `creature_template` SET `gossip_menu_id` = 9148, `npcflag` = `npcflag`|1 WHERE `entry` = 16781;    -- Midsummer Celebrant
UPDATE `creature_template` SET `gossip_menu_id` = 9298, `npcflag` = `npcflag`|1 WHERE `entry` = 16818;    -- Festival Talespinner
UPDATE `creature_template` SET `gossip_menu_id` = 9821, `npcflag` = `npcflag`|1 WHERE `entry` = 11105;    -- Aboda
UPDATE `creature_template` SET `gossip_menu_id` = 9821, `npcflag` = `npcflag`|1 WHERE `entry` = 9977;    -- Sylista
UPDATE `creature_template` SET `gossip_menu_id` = 9821, `npcflag` = `npcflag`|1 WHERE `entry` = 9985;    -- Laziphus
UPDATE `creature_template` SET `gossip_menu_id` = 9821, `npcflag` = `npcflag`|1 WHERE `entry` = 10049;    -- Hekkru
UPDATE `creature_template` SET `gossip_menu_id` = 9821, `npcflag` = `npcflag`|1 WHERE `entry` = 10059;    -- Antarius
UPDATE `creature_template` SET `gossip_menu_id` = 9821, `npcflag` = `npcflag`|1 WHERE `entry` = 10085;    -- Jaelysia
UPDATE `creature_template` SET `gossip_menu_id` = 9821, `npcflag` = `npcflag`|1 WHERE `entry` = 11117;    -- Awenasa
UPDATE `creature_template` SET `gossip_menu_id` = 9821, `npcflag` = `npcflag`|1 WHERE `entry` = 14741;    -- Huntsman Markhor
UPDATE `creature_template` SET `gossip_menu_id` = 9821, `npcflag` = `npcflag`|1 WHERE `entry` = 9978;    -- Wesley
UPDATE `creature_template` SET `gossip_menu_id` = 9821, `npcflag` = `npcflag`|1 WHERE `entry` = 9986;    -- Shyrka Wolfrunner
UPDATE `creature_template` SET `gossip_menu_id` = 9821, `npcflag` = `npcflag`|1 WHERE `entry` = 10052;    -- Maluressian
UPDATE `creature_template` SET `gossip_menu_id` = 9821, `npcflag` = `npcflag`|1 WHERE `entry` = 10060;    -- Grimestack
UPDATE `creature_template` SET `gossip_menu_id` = 9821, `npcflag` = `npcflag`|1 WHERE `entry` = 11069;    -- Jenova Stoneshield
UPDATE `creature_template` SET `gossip_menu_id` = 9821, `npcflag` = `npcflag`|1 WHERE `entry` = 13616;    -- Frostwolf Stable Master
UPDATE `creature_template` SET `gossip_menu_id` = 9821, `npcflag` = `npcflag`|1 WHERE `entry` = 9979;    -- Sarah Goode
UPDATE `creature_template` SET `gossip_menu_id` = 9821, `npcflag` = `npcflag`|1 WHERE `entry` = 9988;    -- Xon'cha
UPDATE `creature_template` SET `gossip_menu_id` = 9821, `npcflag` = `npcflag`|1 WHERE `entry` = 10056;    -- Alassin
UPDATE `creature_template` SET `gossip_menu_id` = 9821, `npcflag` = `npcflag`|1 WHERE `entry` = 10061;    -- Killium Bouldertoe
UPDATE `creature_template` SET `gossip_menu_id` = 9821, `npcflag` = `npcflag`|1 WHERE `entry` = 9981;    -- Sikwa
UPDATE `creature_template` SET `gossip_menu_id` = 9821, `npcflag` = `npcflag`|1 WHERE `entry` = 10047;    -- Michael
UPDATE `creature_template` SET `gossip_menu_id` = 9821, `npcflag` = `npcflag`|1 WHERE `entry` = 10057;    -- Theodore Mont Claire
UPDATE `creature_template` SET `gossip_menu_id` = 9821, `npcflag` = `npcflag`|1 WHERE `entry` = 10062;    -- Steven Black
UPDATE `creature_template` SET `gossip_menu_id` = 9821, `npcflag` = `npcflag`|1 WHERE `entry` = 11104;    -- Shelgrayn
UPDATE `creature_template` SET `gossip_menu_id` = 9821, `npcflag` = `npcflag`|1 WHERE `entry` = 15131;    -- Qeeju
UPDATE `creature_template` SET `gossip_menu_id` = 9821, `npcflag` = `npcflag`|1 WHERE `entry` = 9976;    -- Tharlidun
UPDATE `creature_template` SET `gossip_menu_id` = 9821, `npcflag` = `npcflag`|1 WHERE `entry` = 9983;    -- Kelsuwa
UPDATE `creature_template` SET `gossip_menu_id` = 9821, `npcflag` = `npcflag`|1 WHERE `entry` = 10048;    -- Gereck
UPDATE `creature_template` SET `gossip_menu_id` = 9821, `npcflag` = `npcflag`|1 WHERE `entry` = 10058;    -- Greth
UPDATE `creature_template` SET `gossip_menu_id` = 9821, `npcflag` = `npcflag`|1 WHERE `entry` = 10063;    -- Reggifuz
UPDATE `creature_template` SET `gossip_menu_id` = 9832, `npcflag` = `npcflag`|1 WHERE `entry` = 5049;    -- Lyesa Steelbrow
UPDATE `creature_template` SET `gossip_menu_id` = 9832, `npcflag` = `npcflag`|1 WHERE `entry` = 5188;    -- Garyl
UPDATE `creature_template` SET `gossip_menu_id` = 9832, `npcflag` = `npcflag`|1 WHERE `entry` = 5189;    -- Thrumn
UPDATE `creature_template` SET `gossip_menu_id` = 9832, `npcflag` = `npcflag`|1 WHERE `entry` = 5190;    -- Merill Pleasance
UPDATE `creature_template` SET `gossip_menu_id` = 9832, `npcflag` = `npcflag`|1 WHERE `entry` = 5191;    -- Shalumon
UPDATE `creature_template` SET `gossip_menu_id` = 10031, `npcflag` = `npcflag`|1 WHERE `entry` = 5875;    -- Gan'rul Bloodeye
UPDATE `creature_template` SET `gossip_menu_id` = 10181, `npcflag` = `npcflag`|1 WHERE `entry` = 3079;    -- Varg Windwhisper
UPDATE `creature_template` SET `gossip_menu_id` = 10181, `npcflag` = `npcflag`|1 WHERE `entry` = 3881;    -- Grimtak
UPDATE `creature_template` SET `gossip_menu_id` = 10311, `npcflag` = `npcflag`|(1+4) WHERE `entry` = 3443;    -- Grub
UPDATE `creature_template` SET `gossip_menu_id` = 10312, `npcflag` = `npcflag`|1 WHERE `entry` = 3846;    -- Talen
UPDATE `creature_template` SET `gossip_menu_id` = 10313, `npcflag` = `npcflag`|1 WHERE `entry` = 3845;    -- Shindrell Swiftfire
UPDATE `creature_template` SET `gossip_menu_id` = 10331, `npcflag` = `npcflag`|1 WHERE `entry` = 8582;    -- Kadrak
UPDATE `creature_template` SET `gossip_menu_id` = 10392, `npcflag` = `npcflag`|1 WHERE `entry` = 5193;    -- Rebecca Laughlin
UPDATE `creature_template` SET `gossip_menu_id` = 10438, `npcflag` = `npcflag`|1 WHERE `entry` = 11701;    -- Mor'vek
UPDATE `creature_template` SET `gossip_menu_id` = 10482, `npcflag` = `npcflag`|1 WHERE `entry` = 3701;    -- Tharnariun Treetender
UPDATE `creature_template` SET `gossip_menu_id` = 10526, `npcflag` = `npcflag`|1 WHERE `entry` = 6091;    -- Dellylah
UPDATE `creature_template` SET `gossip_menu_id` = 10567, `npcflag` = `npcflag`|1 WHERE `entry` = 3467;    -- Baron Longshore
UPDATE `creature_template` SET `gossip_menu_id` = 10771, `npcflag` = `npcflag`|1 WHERE `entry` = 5395;    -- Felgur Twocuts
UPDATE `creature_template` SET `gossip_menu_id` = 10832, `npcflag` = `npcflag`|1 WHERE `entry` = 8586;    -- Haggrum Bloodfist
UPDATE `creature_template` SET `gossip_menu_id` = 10893, `npcflag` = `npcflag`|1 WHERE `entry` = 786;    -- Grelin Whitebeard
UPDATE `creature_template` SET `gossip_menu_id` = 10898, `npcflag` = `npcflag`|1 WHERE `entry` = 8416;    -- Felix Whindlebolt
UPDATE `creature_template` SET `gossip_menu_id` = 10900, `npcflag` = `npcflag`|1 WHERE `entry` = 6782;    -- Hands Springsprocket
UPDATE `creature_template` SET `gossip_menu_id` = 10968, `npcflag` = `npcflag`|1 WHERE `entry` = 3341;    -- Gann Stonespire
UPDATE `creature_template` SET `gossip_menu_id` = 11004, `npcflag` = `npcflag`|1 WHERE `entry` = 3418;    -- Kirge Sternhorn
UPDATE `creature_template` SET `gossip_menu_id` = 11006, `npcflag` = `npcflag`|1 WHERE `entry` = 2981;    -- Chief Hawkwind
UPDATE `creature_template` SET `gossip_menu_id` = 11145, `npcflag` = `npcflag`|1 WHERE `entry` = 1519;    -- Deathguard Simmer
UPDATE `creature_template` SET `gossip_menu_id` = 11159, `npcflag` = `npcflag`|1 WHERE `entry` = 10666;    -- Gordo
UPDATE `creature_template` SET `gossip_menu_id` = 11189, `npcflag` = `npcflag`|1 WHERE `entry` = 10676;    -- Raider Jhash
UPDATE `creature_template` SET `gossip_menu_id` = 11241, `npcflag` = `npcflag`|1 WHERE `entry` = 3293;    -- Rezlak
UPDATE `creature_template` SET `gossip_menu_id` = 11284, `npcflag` = `npcflag`|1 WHERE `entry` = 3936;    -- Shandris Feathermoon
UPDATE `creature_template` SET `gossip_menu_id` = 11361, `npcflag` = `npcflag`|1 WHERE `entry` = 14637;    -- Zorbin Fandazzle
UPDATE `creature_template` SET `gossip_menu_id` = 11473, `npcflag` = `npcflag`|1 WHERE `entry` = 7506;    -- Bloodmage Lynnore
UPDATE `creature_template` SET `gossip_menu_id` = 11487, `npcflag` = `npcflag`|1 WHERE `entry` = 7783;    -- Loramus Thalipedes
UPDATE `creature_template` SET `gossip_menu_id` = 11573, `npcflag` = `npcflag`|1 WHERE `entry` = 3411;    -- Denni'ka
UPDATE `creature_template` SET `gossip_menu_id` = 11618, `npcflag` = `npcflag`|1 WHERE `entry` = 9540;    -- Enohar Thunderbrew
UPDATE `creature_template` SET `gossip_menu_id` = 11673, `npcflag` = `npcflag`|1 WHERE `entry` = 2464;    -- Commander Aggro'gosh
UPDATE `creature_template` SET `gossip_menu_id` = 11674, `npcflag` = `npcflag`|1 WHERE `entry` = 2465;    -- Far Seer Mok'thardin
UPDATE `creature_template` SET `gossip_menu_id` = 11675, `npcflag` = `npcflag`|1 WHERE `entry` = 2497;    -- Nimboya
UPDATE `creature_template` SET `gossip_menu_id` = 11712, `npcflag` = `npcflag`|1 WHERE `entry` = 2789;    -- Skuerto
UPDATE `creature_template` SET `gossip_menu_id` = 11727, `npcflag` = `npcflag`|1 WHERE `entry` = 2491;    -- Whiskey Slim
UPDATE `creature_template` SET `gossip_menu_id` = 11738, `npcflag` = `npcflag`|1 WHERE `entry` = 14395;    -- Griniblix the Spectator
UPDATE `creature_template` SET `gossip_menu_id` = 11743, `npcflag` = `npcflag`|1 WHERE `entry` = 2663;    -- Narkk
UPDATE `creature_template` SET `gossip_menu_id` = 11744, `npcflag` = `npcflag`|1 WHERE `entry` = 2487;    -- Fleet Master Seahorn
UPDATE `creature_template` SET `gossip_menu_id` = 11767, `npcflag` = `npcflag`|1 WHERE `entry` = 8664;    -- Saern Priderunner
UPDATE `creature_template` SET `gossip_menu_id` = 11778, `npcflag` = `npcflag`|1 WHERE `entry` = 4265;    -- Nyoma
UPDATE `creature_template` SET `gossip_menu_id` = 11788, `npcflag` = `npcflag`|1 WHERE `entry` = 2153;    -- Terl Arakor
UPDATE `creature_template` SET `gossip_menu_id` = 11790, `npcflag` = `npcflag`|1 WHERE `entry` = 3139;    -- Gar'Thok
UPDATE `creature_template` SET `gossip_menu_id` = 11827, `npcflag` = `npcflag`|1 WHERE `entry` = 10665;    -- Junior Apothecary Holland
UPDATE `creature_template` SET `gossip_menu_id` = 11876, `npcflag` = `npcflag`|1 WHERE `entry` = 7770;    -- Winkey
UPDATE `creature_template` SET `gossip_menu_id` = 11881, `npcflag` = `npcflag`|1 WHERE `entry` = 2700;    -- Captain Nials
UPDATE `creature_template` SET `gossip_menu_id` = 11886, `npcflag` = `npcflag`|1 WHERE `entry` = 2215;    -- High Executor Darthalia
UPDATE `creature_template` SET `gossip_menu_id` = 11909, `npcflag` = `npcflag`|1 WHERE `entry` = 2439;    -- Major Samuelson
UPDATE `creature_template` SET `gossip_menu_id` = 12056, `npcflag` = `npcflag`|1 WHERE `entry` = 3322;    -- Kaja
UPDATE `creature_template` SET `gossip_menu_id` = 12131, `npcflag` = `npcflag`|1 WHERE `entry` = 2785;    -- Theldurin the Lost
UPDATE `creature_template` SET `gossip_menu_id` = 12202, `npcflag` = `npcflag`|1 WHERE `entry` = 2920;    -- Lucien Tosselwrench
UPDATE `creature_template` SET `gossip_menu_id` = 12209, `npcflag` = `npcflag`|1 WHERE `entry` = 4618;    -- Martek the Exiled
UPDATE `creature_template` SET `gossip_menu_id` = 12237, `npcflag` = `npcflag`|1 WHERE `entry` = 12636;    -- Georgia
UPDATE `creature_template` SET `gossip_menu_id` = 12271, `npcflag` = `npcflag`|1 WHERE `entry` = 5843;    -- Slave Worker
UPDATE `creature_template` SET `gossip_menu_id` = 12293, `npcflag` = `npcflag`|1 WHERE `entry` = 14625;    -- Overseer Oilfist
UPDATE `creature_template` SET `gossip_menu_id` = 12449, `npcflag` = `npcflag`|1 WHERE `entry` = 2397;    -- Derak Nightfall
UPDATE `creature_template` SET `gossip_menu_id` = 12502, `npcflag` = `npcflag`|1 WHERE `entry` = 11079;    -- Wynd Nightchaser
UPDATE `creature_template` SET `gossip_menu_id` = 12636, `npcflag` = `npcflag`|1 WHERE `entry` = 2771;    -- Drum Fel
UPDATE `creature_template` SET `gossip_menu_id` = 12662, `npcflag` = `npcflag`|1 WHERE `entry` = 9177;    -- Oralius
UPDATE `creature_template` SET `gossip_menu_id` = 12663, `npcflag` = `npcflag`|1 WHERE `entry` = 10260;    -- Kibler
UPDATE `creature_template` SET `gossip_menu_id` = 12670, `npcflag` = `npcflag`|1 WHERE `entry` = 12776;    -- Hraug
UPDATE `creature_template` SET `gossip_menu_id` = 12670, `npcflag` = `npcflag`|1 WHERE `entry` = 5749;    -- Kayla Smithe
UPDATE `creature_template` SET `gossip_menu_id` = 12670, `npcflag` = `npcflag`|1 WHERE `entry` = 6328;    -- Dannie Fizzwizzle
UPDATE `creature_template` SET `gossip_menu_id` = 12670, `npcflag` = `npcflag`|1 WHERE `entry` = 5750;    -- Gina Lang
UPDATE `creature_template` SET `gossip_menu_id` = 12670, `npcflag` = `npcflag`|1 WHERE `entry` = 6373;    -- Dane Winslow
UPDATE `creature_template` SET `gossip_menu_id` = 12670, `npcflag` = `npcflag`|1 WHERE `entry` = 5520;    -- Spackle Thornberry
UPDATE `creature_template` SET `gossip_menu_id` = 12670, `npcflag` = `npcflag`|1 WHERE `entry` = 5753;    -- Martha Strain
UPDATE `creature_template` SET `gossip_menu_id` = 12670, `npcflag` = `npcflag`|1 WHERE `entry` = 6027;    -- Kitha
UPDATE `creature_template` SET `gossip_menu_id` = 12670, `npcflag` = `npcflag`|1 WHERE `entry` = 6374;    -- Cylina Darkheart
UPDATE `creature_template` SET `gossip_menu_id` = 12670, `npcflag` = `npcflag`|1 WHERE `entry` = 5815;    -- Kurgul
UPDATE `creature_template` SET `gossip_menu_id` = 12670, `npcflag` = `npcflag`|1 WHERE `entry` = 6382;    -- Jubahl Corpseseeker
UPDATE `creature_template` SET `gossip_menu_id` = 12707, `npcflag` = `npcflag`|1 WHERE `entry` = 3233;    -- Lorekeeper Raintotem
UPDATE `creature_template` SET `gossip_menu_id` = 12726, `npcflag` = `npcflag`|1 WHERE `entry` = 6301;    -- Gorbold Steelhand
UPDATE `creature_template` SET `gossip_menu_id` = 12741, `npcflag` = `npcflag`|1 WHERE `entry` = 8320;    -- Sprok
UPDATE `creature_template` SET `gossip_menu_id` = 12846, `npcflag` = `npcflag`|1 WHERE `entry` = 4941;    -- Caz Twosprocket
UPDATE `creature_template` SET `gossip_menu_id` = 50142, `npcflag` = `npcflag`|1 WHERE `entry` = 4429;    -- Goblin Pit Crewman
UPDATE `creature_template` SET `gossip_menu_id` = 50143, `npcflag` = `npcflag`|1 WHERE `entry` = 4430;    -- Gnome Pit Crewman
UPDATE `creature_template` SET `gossip_menu_id` = 50151, `npcflag` = `npcflag`|1 WHERE `entry` = 3849;    -- Deathstalker Adamant
UPDATE `creature_template` SET `gossip_menu_id` = 50157, `npcflag` = `npcflag`|1 WHERE `entry` = 15080;    -- Servant of the Hand
UPDATE `creature_template` SET `gossip_menu_id` = 50199, `npcflag` = `npcflag`|1 WHERE `entry` = 3401;    -- Shenthul
UPDATE `creature_template` SET `gossip_menu_id` = 50260, `npcflag` = `npcflag`|1 WHERE `entry` = 9077;    -- Warlord Goretooth

-- Removed all NPC gossips from spawns that have a gossip menu granted by their template
DELETE FROM `npc_gossip` WHERE `npc_guid` IN
    (SELECT `guid` FROM `creature` WHERE `id` IN
        (SELECT `entry` FROM `creature_template` WHERE `gossip_menu_id` <> 0));
        