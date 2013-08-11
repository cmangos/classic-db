-- Added gossip menus to the following creatures based on UDB data, also fixed npcflag when needed
-- Gossips were checked to prevent linking to a TBC/WotLK gossip
-- Removed unneeded npc_gossips
-- This should greatly decrease the number of broken quests, events or scripts due to missing gossip menus
-- Source: UDB
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 64 WHERE `entry` = 5882;    -- Pephredo
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 64 WHERE `entry` = 5883;    -- Enyo
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 64 WHERE `entry` = 5884;    -- Mai'ah
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 64 WHERE `entry` = 5885;    -- Deino
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 64 WHERE `entry` = 7311;    -- Uthel'nay
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 83 WHERE `entry` = 6491;    -- Spirit Healer
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 141 WHERE `entry` = 3170;    -- Kaplak
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 264 WHERE `entry` = 2238;    -- Tog'thar
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 268 WHERE `entry` = 6119;    -- Tog Rustsprocket
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 342 WHERE `entry` = 6272;    -- Innkeeper Janene
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 342 WHERE `entry` = 6740;    -- Innkeeper Allison
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 342 WHERE `entry` = 8931;    -- Innkeeper Heather
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 344 WHERE `entry` = 6746;    -- Innkeeper Pala
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 345 WHERE `entry` = 1464;    -- Innkeeper Helbrek
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 345 WHERE `entry` = 5111;    -- Innkeeper Firebrew
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 349 WHERE `entry` = 6791;    -- Innkeeper Wiley
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 349 WHERE `entry` = 6807;    -- Innkeeper Skindle
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 349 WHERE `entry` = 11118;    -- Innkeeper Vizzie
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 381 WHERE `entry` = 917;    -- Keryn Sylvius
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 410 WHERE `entry` = 1234;    -- Hogral Bakkan
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 436 WHERE `entry` = 3599;    -- Jannok Breezesong
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 523 WHERE `entry` = 3169;    -- Tarshaw Jaggedscar
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 562 WHERE `entry` = 7172;    -- Lore Keeper of Norgannon
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 597 WHERE `entry` = 5164;    -- Grumnus Steelshaper
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 643 WHERE `entry` = 5566;    -- Tannysa
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 648 WHERE `entry` = 1292;    -- Maris Granger
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 655 WHERE `entry` = 3063;    -- Krang Stonehoof
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 660 WHERE `entry` = 5513;    -- Gelman Stonehand
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 681 WHERE `entry` = 1309;    -- Wynne Larson
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 681 WHERE `entry` = 1310;    -- Evan Larson
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 681 WHERE `entry` = 1314;    -- Duncan Cullen
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 681 WHERE `entry` = 1318;    -- Jessara Cordell
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 684 WHERE `entry` = 1347;    -- Alexandra Bolero
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 685 WHERE `entry` = 1257;    -- Keldric Boucher
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 685 WHERE `entry` = 1287;    -- Marda Weller
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 685 WHERE `entry` = 1289;    -- Gunther Weller
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 685 WHERE `entry` = 1294;    -- Aldric Moore
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 685 WHERE `entry` = 1301;    -- Julia Gallina
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 685 WHERE `entry` = 3518;    -- Thomas Miller
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 685 WHERE `entry` = 4981;    -- Ben Trias
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 686 WHERE `entry` = 1275;    -- Kyra Boucher
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 686 WHERE `entry` = 1295;    -- Lara Moore
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 686 WHERE `entry` = 1297;    -- Lina Stover
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 687 WHERE `entry` = 1286;    -- Edna Mullby
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 688 WHERE `entry` = 1320;    -- Seoman Griffith
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 688 WHERE `entry` = 1321;    -- Alyssa Griffith
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 688 WHERE `entry` = 1323;    -- Osric Strang
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 688 WHERE `entry` = 1333;    -- Gerik Koen
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 688 WHERE `entry` = 5483;    -- Erika Tate
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 688 WHERE `entry` = 5565;    -- Jillian Tanner
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 689 WHERE `entry` = 1341;    -- Wilhelm Strang
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 692 WHERE `entry` = 1351;    -- Brother Cassius
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 693 WHERE `entry` = 5512;    -- Kaita Deepforge
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 693 WHERE `entry` = 5514;    -- Brooke Stonebraid
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 698 WHERE `entry` = 5519;    -- Billibub Cogspinner
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 699 WHERE `entry` = 2455;    -- Olivia Burnside
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 699 WHERE `entry` = 2456;    -- Newton Burnside
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 699 WHERE `entry` = 2457;    -- John Burnside
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 701 WHERE `entry` = 1305;    -- Jarel Moor
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 702 WHERE `entry` = 1327;    -- Reese Langston
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 703 WHERE `entry` = 1303;    -- Felicia Gump
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 840 WHERE `entry` = 7572;    -- Fallen Hero of the Horde
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 900 WHERE `entry` = 5594;    -- Alchemist Pestlezugg
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 940 WHERE `entry` = 7607;    -- Weegli Blastfuse
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 941 WHERE `entry` = 7604;    -- Sergeant Bly
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 942 WHERE `entry` = 7763;    -- Curgle Cranklehop
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 980 WHERE `entry` = 3413;    -- Sovik
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 1041 WHERE `entry` = 7232;    -- Borgus Steelhand
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 1042 WHERE `entry` = 7231;    -- Kelgruk Bloodaxe
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 1043 WHERE `entry` = 7230;    -- Shayis Steelfury
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 1080 WHERE `entry` = 7998;    -- Blastmaster Emi Shortfuse
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 1100 WHERE `entry` = 4963;    -- Mikhail
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 1120 WHERE `entry` = 7683;    -- Alessandro Luca
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 1142 WHERE `entry` = 7804;    -- Trenton Lighthammer
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 1161 WHERE `entry` = 4944;    -- Captain Garran Vimes
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 1201 WHERE `entry` = 3836;    -- Mountaineer Pebblebitty
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 1262 WHERE `entry` = 836;    -- Durnan Furcutter
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 1281 WHERE `entry` = 5901;    -- Islen Waterseer
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 1290 WHERE `entry` = 5814;    -- Innkeeper Thulbek
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 1290 WHERE `entry` = 6928;    -- Innkeeper Grosk
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 1290 WHERE `entry` = 6929;    -- Innkeeper Gryshka
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 1290 WHERE `entry` = 6930;    -- Innkeeper Karakul
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 1290 WHERE `entry` = 7731;    -- Innkeeper Jayka
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 1290 WHERE `entry` = 9356;    -- Innkeeper Shul'kar
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 1290 WHERE `entry` = 12196;    -- Innkeeper Kaylisk
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 1291 WHERE `entry` = 295;    -- Innkeeper Farley
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 1291 WHERE `entry` = 2352;    -- Innkeeper Anderson
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 1291 WHERE `entry` = 6727;    -- Innkeeper Brianna
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 1291 WHERE `entry` = 6790;    -- Innkeeper Trelayne
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 1293 WHERE `entry` = 6736;    -- Innkeeper Keldamyr
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 1294 WHERE `entry` = 6747;    -- Innkeeper Kauth
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 1296 WHERE `entry` = 2388;    -- Innkeeper Shay
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 1296 WHERE `entry` = 5688;    -- Innkeeper Renee
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 1296 WHERE `entry` = 6739;    -- Innkeeper Bates
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 1296 WHERE `entry` = 6741;    -- Innkeeper Norman
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 1297 WHERE `entry` = 1247;    -- Innkeeper Belm
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 1297 WHERE `entry` = 6734;    -- Innkeeper Hearthstove
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 1301 WHERE `entry` = 6568;    -- Vizzklick
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 1362 WHERE `entry` = 8399;    -- Nyrill
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 1403 WHERE `entry` = 4217;    -- Mathrengyl Bearwalker
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 1404 WHERE `entry` = 7771;    -- Marvon Rivetseeker
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 1421 WHERE `entry` = 7773;    -- Marli Wishrunner
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 1422 WHERE `entry` = 7772;    -- Kalin Windflight
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 1467 WHERE `entry` = 7406;    -- Oglethorpe Obnoticus
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 1468 WHERE `entry` = 7944;    -- Tinkmaster Overspark
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 1470 WHERE `entry` = 8579;    -- Yeh'kinya
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 1482 WHERE `entry` = 7916;    -- Erelas Ambersky
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 1503 WHERE `entry` = 459;    -- Drusilla La Salle
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 1581 WHERE `entry` = 6735;    -- Innkeeper Saelienne
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 1581 WHERE `entry` = 7736;    -- Innkeeper Shyria
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 1581 WHERE `entry` = 16458;    -- Innkeeper Faralia
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 1601 WHERE `entry` = 6826;    -- Talvash del Kissel
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 1621 WHERE `entry` = 8962;    -- Hilary
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 1622 WHERE `entry` = 8965;    -- Shawn
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 1623 WHERE `entry` = 3309;    -- Karus
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 1623 WHERE `entry` = 3320;    -- Soran
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 1624 WHERE `entry` = 3314;    -- Urtharo
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 1625 WHERE `entry` = 8509;    -- Squire Maltrake
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 1628 WHERE `entry` = 7853;    -- Scooty
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 1629 WHERE `entry` = 5769;    -- Arch Druid Hamuul Runetotem
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 1630 WHERE `entry` = 3516;    -- Arch Druid Fandral Staghelm
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 1631 WHERE `entry` = 963;    -- Deputy Rainer
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 1632 WHERE `entry` = 1340;    -- Mountaineer Kadrell
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 1641 WHERE `entry` = 8380;    -- Captain Vanessa Beltis
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 1662 WHERE `entry` = 9047;    -- Jenal
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 1663 WHERE `entry` = 8888;    -- Franclorn Forgewright
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 1701 WHERE `entry` = 9087;    -- Bashana Runetotem
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 1721 WHERE `entry` = 9099;    -- Sraaz
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 1761 WHERE `entry` = 7766;    -- Tyrion
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 1844 WHERE `entry` = 9467;    -- Miblon Snarltooth
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 1946 WHERE `entry` = 9038;    -- Seeth'rel
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 1947 WHERE `entry` = 9039;    -- Doom'rel
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 1961 WHERE `entry` = 8737;    -- Linken
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 1962 WHERE `entry` = 9545;    -- Grim Patron
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 1963 WHERE `entry` = 9547;    -- Guzzling Patron
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 1965 WHERE `entry` = 7852;    -- Pratt McGrubben
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 1966 WHERE `entry` = 9554;    -- Hammered Patron
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 1966 WHERE `entry` = 10043;    -- Ribbly's Crony
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 1969 WHERE `entry` = 9564;    -- Frezza
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 1969 WHERE `entry` = 12137;    -- Squibby Overspeck
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 1970 WHERE `entry` = 9543;    -- Ribbly Screwspigot
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 1971 WHERE `entry` = 3149;    -- Nez'raz
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 1971 WHERE `entry` = 9566;    -- Zapetta
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 2061 WHERE `entry` = 9563;    -- Ragged John
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 2063 WHERE `entry` = 9598;    -- Arei
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 2076 WHERE `entry` = 9500;    -- Mistress Nagmara
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 2081 WHERE `entry` = 9618;    -- Karna Remtravel
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 2101 WHERE `entry` = 3150;    -- Hin Denburg
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 2184 WHERE `entry` = 9117;    -- J.D. Collie
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 2188 WHERE `entry` = 9619;    -- Torwa Pathfinder
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 2242 WHERE `entry` = 5411;    -- Krinkle Goodsteel
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 2283 WHERE `entry` = 9502;    -- Phalanx
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 2304 WHERE `entry` = 5149;    -- Brandur Ironhammer
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 2381 WHERE `entry` = 5172;    -- Briarthorn
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 2383 WHERE `entry` = 4563;    -- Kaal Soulreaper
UPDATE `creature_template` SET `npcflag`= `npcflag`|(1+16+32), `gossip_menu_id` = 2385 WHERE `entry` = 6251;    -- Strahad Farsan
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 2404 WHERE `entry` = 4155;    -- Idriana
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 2405 WHERE `entry` = 9616;    -- Laris Geardawdle
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 2422 WHERE `entry` = 9272;    -- Spark Nilminer
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 2423 WHERE `entry` = 9271;    -- Hol'anyee Marshal
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 2424 WHERE `entry` = 9270;    -- Williden Marshal
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 2464 WHERE `entry` = 9676;    -- Tink Sprocketwhistle
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 2562 WHERE `entry` = 10216;    -- Gubber Blump
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 2601 WHERE `entry` = 2788;    -- Apprentice Kryten
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 2602 WHERE `entry` = 10267;    -- Tinkee Steamboil
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 2603 WHERE `entry` = 6266;    -- Menara Voidrender
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 2685 WHERE `entry` = 2670;    -- Xizk Goodstitch
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 2801 WHERE `entry` = 1154;    -- Marek Ironheart
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 2831 WHERE `entry` = 1156;    -- Vyrin Swiftwind
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 2852 WHERE `entry` = 9997;    -- Spraggle Frock
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 2883 WHERE `entry` = 3429;    -- Thork
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 2890 WHERE `entry` = 7733;    -- Innkeeper Fizzgrimble
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 2910 WHERE `entry` = 3143;    -- Gornek
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 2911 WHERE `entry` = 10667;    -- Chromie
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 2912 WHERE `entry` = 6252;    -- Acolyte Magaz
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 2913 WHERE `entry` = 6254;    -- Acolyte Wytula
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 2916 WHERE `entry` = 6546;    -- Tabetha
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 2921 WHERE `entry` = 10739;    -- Mulgris Deepriver
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 2943 WHERE `entry` = 10782;    -- Royal Factor Bathrilor
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 2952 WHERE `entry` = 8403;    -- Jeremiah Payson
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 2961 WHERE `entry` = 10778;    -- Janice Felstone
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 2984 WHERE `entry` = 10637;    -- Malyfous Darkhammer
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 3042 WHERE `entry` = 10838;    -- Commander Ashlam Valorfist
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 3043 WHERE `entry` = 10917;    -- Aurius
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 3063 WHERE `entry` = 10740;    -- Awbee
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 3070 WHERE `entry` = 7868;    -- Sarah Tanner
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 3072 WHERE `entry` = 7870;    -- Caryssia Moonhunter
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 3074 WHERE `entry` = 10922;    -- Greta Mosshoof
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 3128 WHERE `entry` = 11019;    -- Jessir Moonbow
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 3129 WHERE `entry` = 11016;    -- Captured Arko'narin
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 3131 WHERE `entry` = 10300;    -- Ranshalla
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 3142 WHERE `entry` = 9116;    -- Eridan Bluewind
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 3161 WHERE `entry` = 3362;    -- Ogunaro Wolfrunner
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 3162 WHERE `entry` = 7952;    -- Zjolnir
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 3181 WHERE `entry` = 11038;    -- Caretaker Alen
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 3182 WHERE `entry` = 11145;    -- Myolor Sunderfury
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 3184 WHERE `entry` = 11053;    -- High Priestess MacDonnell
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 3185 WHERE `entry` = 4730;    -- Lelanai
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 3186 WHERE `entry` = 7955;    -- Milli Featherwhistle
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 3187 WHERE `entry` = 11176;    -- Krathok Moltenfist
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 3201 WHERE `entry` = 11146;    -- Ironus Coldsteel
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 3202 WHERE `entry` = 11178;    -- Borgosh Corebender
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 3203 WHERE `entry` = 11177;    -- Okothos Ironrager
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 3310 WHERE `entry` = 11216;    -- Eva Sarkhoff
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 3362 WHERE `entry` = 11277;    -- Caer Darrow Citizen
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 3363 WHERE `entry` = 11279;    -- Caer Darrow Guardsman
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 3363 WHERE `entry` = 11281;    -- Caer Darrow Horseman
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 3372 WHERE `entry` = 11286;    -- Magistrate Marduke
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 3381 WHERE `entry` = 11316;    -- Joseph Dirte
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 3382 WHERE `entry` = 10839;    -- Argent Officer Garush
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 3383 WHERE `entry` = 10840;    -- Argent Officer Pureheart
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 3421 WHERE `entry` = 10856;    -- Argent Quartermaster Hasana
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 3441 WHERE `entry` = 10857;    -- Argent Quartermaster Lightspark
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 3461 WHERE `entry` = 11536;    -- Quartermaster Miranda Breechlock
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 3481 WHERE `entry` = 11548;    -- Loh'atu
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 3602 WHERE `entry` = 11609;    -- Alexia Ironknife
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 3603 WHERE `entry` = 11610;    -- Kirsta Deepshadow
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 3622 WHERE `entry` = 11554;    -- Grazle
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 3625 WHERE `entry` = 11555;    -- Gorn One Eye
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 3626 WHERE `entry` = 11557;    -- Meilosh
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 3643 WHERE `entry` = 11397;    -- Nara Meideros
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 3644 WHERE `entry` = 3706;    -- Tai'jin
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 3646 WHERE `entry` = 11407;    -- Var'jun
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 3647 WHERE `entry` = 10475;    -- Scholomance Student
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 3648 WHERE `entry` = 10432;    -- Vectus
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 3649 WHERE `entry` = 10433;    -- Marduk Blackpool
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 3651 WHERE `entry` = 11035;    -- Betina Bigglezink
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 3661 WHERE `entry` = 11833;    -- Rahauro
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 3664 WHERE `entry` = 4949;    -- Thrall
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 3761 WHERE `entry` = 10301;    -- Jaron Stoneshaper
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 3802 WHERE `entry` = 9298;    -- Donova Snowden
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 3821 WHERE `entry` = 11616;    -- Nathaniel Dumah
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 3841 WHERE `entry` = 12136;    -- Snurk Bucksquick
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 3861 WHERE `entry` = 10936;    -- Joseph Redpath
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 3864 WHERE `entry` = 11063;    -- Carlin Redpath
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 3901 WHERE `entry` = 11802;    -- Dendrite Starblaze
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 3921 WHERE `entry` = 3033;    -- Turak Runetotem
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 3922 WHERE `entry` = 10945;    -- Davil Crokford
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 3924 WHERE `entry` = 4218;    -- Denatharion
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 3925 WHERE `entry` = 5505;    -- Theridran
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 3926 WHERE `entry` = 3064;    -- Gennia Runetotem
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 3962 WHERE `entry` = 11878;    -- Nathanos Blightcaller
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 3985 WHERE `entry` = 10431;    -- Gregor Greystone
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4004 WHERE `entry` = 384;    -- Katie Hunter
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4004 WHERE `entry` = 1460;    -- Unger Statforth
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4004 WHERE `entry` = 2357;    -- Merideth Carlson
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4004 WHERE `entry` = 4885;    -- Gregor MacVince
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4005 WHERE `entry` = 4731;    -- Zachariah Post
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4006 WHERE `entry` = 3685;    -- Harb Clawhoof
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4009 WHERE `entry` = 3601;    -- Dazalar
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4010 WHERE `entry` = 3352;    -- Ormak Grimshot
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4011 WHERE `entry` = 3038;    -- Kary Thunderhorn
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4012 WHERE `entry` = 3065;    -- Yaw Sharpmane
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4017 WHERE `entry` = 3171;    -- Thotar
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4018 WHERE `entry` = 4732;    -- Randal Hunter
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4019 WHERE `entry` = 4753;    -- Jartsam
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4020 WHERE `entry` = 4752;    -- Kildar
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4021 WHERE `entry` = 3690;    -- Kar Stormsinger
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4022 WHERE `entry` = 7953;    -- Xar'Ti
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4023 WHERE `entry` = 3039;    -- Holt Thunderhorn
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4043 WHERE `entry` = 3448;    -- Tonga Runetotem
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4044 WHERE `entry` = 1569;    -- Shadow Priest Sarvis
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4046 WHERE `entry` = 2079;    -- Conservator Ilthalaine
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4086 WHERE `entry` = 738;    -- Private Thorsen
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4090 WHERE `entry` = 1243;    -- Hegnar Rumbleshot
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4103 WHERE `entry` = 3066;    -- Narm Skychaser
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4104 WHERE `entry` = 3173;    -- Swart
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4106 WHERE `entry` = 523;    -- Thor
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4107 WHERE `entry` = 491;    -- Quartermaster Lewis
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4281 WHERE `entry` = 2226;    -- Karos Razok
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4283 WHERE `entry` = 4556;    -- Gordon Wendham
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4301 WHERE `entry` = 3841;    -- Caylais Moonfeather
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4302 WHERE `entry` = 3838;    -- Vesprystus
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4303 WHERE `entry` = 10118;    -- Nessa Shadowsong
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4304 WHERE `entry` = 4200;    -- Laird
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4305 WHERE `entry` = 4241;    -- Mydrannul
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4306 WHERE `entry` = 2859;    -- Gyll
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4307 WHERE `entry` = 4551;    -- Michael Garrett
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4322 WHERE `entry` = 2057;    -- Huldar
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4323 WHERE `entry` = 3615;    -- Devrak
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4323 WHERE `entry` = 5637;    -- Roetten Stonehammer
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4324 WHERE `entry` = 3483;    -- Jahan Hawkwing
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4326 WHERE `entry` = 2995;    -- Tal
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4341 WHERE `entry` = 3489;    -- Zargh
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4342 WHERE `entry` = 3310;    -- Doras
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4343 WHERE `entry` = 12658;    -- Adam Lind
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4358 WHERE `entry` = 1572;    -- Thorgrum Borrelson
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4359 WHERE `entry` = 4256;    -- Golnir Bouldertoe
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4360 WHERE `entry` = 1573;    -- Gryth Thurden
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4361 WHERE `entry` = 1681;    -- Brock Stoneseeker
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4468 WHERE `entry` = 5484;    -- Brother Benjamin
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4469 WHERE `entry` = 5491;    -- Arthur the Faithful
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4470 WHERE `entry` = 5492;    -- Katherine the Pure
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4471 WHERE `entry` = 928;    -- Lord Grayson Shadowbreaker
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4474 WHERE `entry` = 5515;    -- Einris Brightspear
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4484 WHERE `entry` = 5498;    -- Elsharin
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4485 WHERE `entry` = 5497;    -- Jennea Cannon
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4486 WHERE `entry` = 331;    -- Maginor Dumas
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4502 WHERE `entry` = 918;    -- Osborne the Night Man
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4503 WHERE `entry` = 461;    -- Demisette Cloyce
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4504 WHERE `entry` = 5496;    -- Sandahl
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4505 WHERE `entry` = 5495;    -- Ursula Deline
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4506 WHERE `entry` = 3406;    -- Xor'juul
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4506 WHERE `entry` = 3407;    -- Sian'dur
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4507 WHERE `entry` = 5506;    -- Maldryn
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4508 WHERE `entry` = 5504;    -- Sheldras Moontree
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4516 WHERE `entry` = 3344;    -- Kardris Dreamseeker
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4524 WHERE `entry` = 3040;    -- Urek Thunderhorn
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4525 WHERE `entry` = 3042;    -- Sark Ragetotem
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4526 WHERE `entry` = 3041;    -- Torm Ragetotem
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4527 WHERE `entry` = 3043;    -- Ker Ragetotem
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4528 WHERE `entry` = 3030;    -- Siln Skychaser
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4529 WHERE `entry` = 3032;    -- Beram Skychaser
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4530 WHERE `entry` = 3031;    -- Tigor Skychaser
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4534 WHERE `entry` = 3047;    -- Archmage Shymm
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4537 WHERE `entry` = 4568;    -- Anastasia Hartwell
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4538 WHERE `entry` = 4567;    -- Pierce Shackleton
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4539 WHERE `entry` = 4566;    -- Kaelystia Hatebringer
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4549 WHERE `entry` = 5115;    -- Daera Brightspear
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4550 WHERE `entry` = 5116;    -- Olmin Burningbeard
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4551 WHERE `entry` = 5117;    -- Regnus Thundergranite
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4552 WHERE `entry` = 944;    -- Marryk Nurribit
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4552 WHERE `entry` = 5144;    -- Bink
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4552 WHERE `entry` = 5145;    -- Juli Stormkettle
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4552 WHERE `entry` = 5146;    -- Nittlebur Sparkfizzle
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4553 WHERE `entry` = 7312;    -- Dink
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4562 WHERE `entry` = 5166;    -- Ormyr Flinteye
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4568 WHERE `entry` = 5114;    -- Bilban Tosslespanner
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4569 WHERE `entry` = 1901;    -- Kelstrum Stonebreaker
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4570 WHERE `entry` = 5113;    -- Kelv Sternhammer
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4571 WHERE `entry` = 4219;    -- Fylerian Nightwing
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4576 WHERE `entry` = 4163;    -- Syurna
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4576 WHERE `entry` = 4214;    -- Erion Shadewhisper
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4576 WHERE `entry` = 4215;    -- Anishar
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4576 WHERE `entry` = 4794;    -- Morgan Stern
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4601 WHERE `entry` = 12866;    -- Myriam Moonsinger
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4606 WHERE `entry` = 3034;    -- Sheal Runetotem
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4607 WHERE `entry` = 3036;    -- Kym Wildmane
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4609 WHERE `entry` = 4564;    -- Luther Pickman
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4641 WHERE `entry` = 3172;    -- Dhugru Gorelust
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4645 WHERE `entry` = 3059;    -- Harutt Thunderhorn
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4647 WHERE `entry` = 3061;    -- Lanka Farshot
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4648 WHERE `entry` = 3154;    -- Jen'shan
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4649 WHERE `entry` = 914;    -- Ander Germaine
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4649 WHERE `entry` = 5479;    -- Wu Shen
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4649 WHERE `entry` = 5480;    -- Ilsa Corbin
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4650 WHERE `entry` = 911;    -- Llane Beshere
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4654 WHERE `entry` = 2124;    -- Isabella
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4657 WHERE `entry` = 1404;    -- Kragg
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4659 WHERE `entry` = 915;    -- Jorik Kerridan
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4660 WHERE `entry` = 198;    -- Khelden Bremen
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4661 WHERE `entry` = 328;    -- Zaldimar Wefhellt
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4662 WHERE `entry` = 8140;    -- Brother Karman
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4663 WHERE `entry` = 925;    -- Brother Sammuel
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4664 WHERE `entry` = 927;    -- Brother Wilhelm
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4666 WHERE `entry` = 376;    -- High Priestess Laurena
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4666 WHERE `entry` = 377;    -- Priestess Josetta
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4666 WHERE `entry` = 5489;    -- Brother Joshua
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4667 WHERE `entry` = 906;    -- Maximillian Crowe
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4667 WHERE `entry` = 5173;    -- Alexander Calder
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4675 WHERE `entry` = 895;    -- Thorgas Grimson
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4676 WHERE `entry` = 916;    -- Solm Hargrin
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4677 WHERE `entry` = 1232;    -- Azar Stronghammer
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4678 WHERE `entry` = 926;    -- Bromos Grummner
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4680 WHERE `entry` = 837;    -- Branstock Khalder
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4680 WHERE `entry` = 1226;    -- Maxan Anvol
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4680 WHERE `entry` = 5141;    -- Theodrus Frostbeard
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4680 WHERE `entry` = 5142;    -- Braenna Flintcrag
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4680 WHERE `entry` = 5143;    -- Toldren Deepiron
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4680 WHERE `entry` = 11406;    -- High Priest Rohan
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4681 WHERE `entry` = 460;    -- Alamar Grimm
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4682 WHERE `entry` = 5612;    -- Gimrizz Shadowcog
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4683 WHERE `entry` = 1229;    -- Granis Swiftaxe
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4684 WHERE `entry` = 912;    -- Thran Khorman
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4685 WHERE `entry` = 1228;    -- Magis Sparkmantle
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4687 WHERE `entry` = 12042;    -- Loganaar
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4688 WHERE `entry` = 3597;    -- Mardant Strongoak
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4690 WHERE `entry` = 3594;    -- Frahun Shadewhisper
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4691 WHERE `entry` = 3595;    -- Shanda
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4691 WHERE `entry` = 3600;    -- Laurna Morninglight
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4691 WHERE `entry` = 4090;    -- Astarii Starseeker
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4691 WHERE `entry` = 4091;    -- Jandria
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4691 WHERE `entry` = 4092;    -- Lariia
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4691 WHERE `entry` = 11401;    -- Priestess Alathea
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4695 WHERE `entry` = 3596;    -- Ayanna Everstride
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4697 WHERE `entry` = 3593;    -- Alyissia
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4697 WHERE `entry` = 3598;    -- Kyra Windblade
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4697 WHERE `entry` = 4087;    -- Arias'ta Bladesinger
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4697 WHERE `entry` = 7315;    -- Darnath Bladesinger
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4743 WHERE `entry` = 10304;    -- Aurora Skycaller
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4783 WHERE `entry` = 543;    -- Nalesette Wildbringer
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4783 WHERE `entry` = 2878;    -- Peria Lamenur
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4783 WHERE `entry` = 2879;    -- Karrina Mekenda
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4783 WHERE `entry` = 3306;    -- Keldas
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4783 WHERE `entry` = 3545;    -- Claude Erksine
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4783 WHERE `entry` = 3620;    -- Harruk
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4783 WHERE `entry` = 3622;    -- Grokor
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4783 WHERE `entry` = 3624;    -- Zudd
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4783 WHERE `entry` = 3688;    -- Reban Freerunner
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4783 WHERE `entry` = 3698;    -- Bolyun
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4783 WHERE `entry` = 4320;    -- Caelyb
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4783 WHERE `entry` = 10086;    -- Hesuwa Thunderhorn
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4783 WHERE `entry` = 10088;    -- Xao'tsu
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4783 WHERE `entry` = 10089;    -- Silvaria
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4783 WHERE `entry` = 10090;    -- Belia Thundergranite
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4821 WHERE `entry` = 4165;    -- Elissa Dumas
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4822 WHERE `entry` = 2485;    -- Larimaine Purdue
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4823 WHERE `entry` = 2489;    -- Milstaff Stormeye
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4826 WHERE `entry` = 5958;    -- Thuul
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4827 WHERE `entry` = 2492;    -- Lexington Mortaim
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4844 WHERE `entry` = 9584;    -- Jalane Ayrole
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4863 WHERE `entry` = 10219;    -- Gwennyth Bly'Leggonde
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4941 WHERE `entry` = 332;    -- Master Mathias Shaw
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 5021 WHERE `entry` = 13257;    -- Murgot Deepforge
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 5065 WHERE `entry` = 13278;    -- Duke Hydraxis
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 5102 WHERE `entry` = 11801;    -- Rabine Saturna
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 5103 WHERE `entry` = 13220;    -- Layo Starstrike
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 5109 WHERE `entry` = 13322;    -- Hydraxian Honor Guard
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 5123 WHERE `entry` = 13417;    -- Sagorne Creststrider
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 5124 WHERE `entry` = 13176;    -- Smith Regzar
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 5146 WHERE `entry` = 13437;    -- Wing Commander Ichman
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 5147 WHERE `entry` = 13439;    -- Wing Commander Vipore
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 5148 WHERE `entry` = 13438;    -- Wing Commander Slidore
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 5241 WHERE `entry` = 12096;    -- Stormpike Quartermaster
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 5281 WHERE `entry` = 13577;    -- Stormpike Ram Rider Commander
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 5283 WHERE `entry` = 13617;    -- Stormpike Stable Master
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 5301 WHERE `entry` = 4967;    -- Archmage Tervosh
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 5321 WHERE `entry` = 13717;    -- Centaur Pariah
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 5348 WHERE `entry` = 2916;    -- Historian Karnik
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 5441 WHERE `entry` = 13840;    -- Warmaster Laggrond
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 5442 WHERE `entry` = 13841;    -- Lieutenant Haggerdin
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 5461 WHERE `entry` = 5054;    -- Krumn
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 5482 WHERE `entry` = 10929;    -- Haleh
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 5483 WHERE `entry` = 716;    -- Barnil Stonepot
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 5503 WHERE `entry` = 8496;    -- Liv Rizzlefix
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 5541 WHERE `entry` = 9544;    -- Yuka Screwspigot
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 5602 WHERE `entry` = 11491;    -- Old Ironbark
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 5602 WHERE `entry` = 14241;    -- Ironbark the Redeemed
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 5641 WHERE `entry` = 6122;    -- Gakin the Darkbinder
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 5667 WHERE `entry` = 14338;    -- Knot Thimblejack
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 5708 WHERE `entry` = 14353;    -- Mizzle the Crafty
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 5709 WHERE `entry` = 14354;    -- Pusillin
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 5721 WHERE `entry` = 14322;    -- Stomper Kreeg
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 5729 WHERE `entry` = 14358;    -- Shen'dralar Ancient
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 5736 WHERE `entry` = 11486;    -- Prince Tortheldrin
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 5737 WHERE `entry` = 14369;    -- Shen'dralar Zealot
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 5739 WHERE `entry` = 14325;    -- Captain Kromcrush
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 5742 WHERE `entry` = 14324;    -- Cho'Rush the Observer
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 5746 WHERE `entry` = 11441;    -- Gordok Brute
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 5746 WHERE `entry` = 11444;    -- Gordok Mage-Lord
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 5746 WHERE `entry` = 11445;    -- Gordok Captain
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 5746 WHERE `entry` = 11448;    -- Gordok Warlock
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 5746 WHERE `entry` = 11450;    -- Gordok Reaver
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 5746 WHERE `entry` = 14351;    -- Gordok Bushwacker
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 5747 WHERE `entry` = 14368;    -- Lorekeeper Lydros
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 5748 WHERE `entry` = 14383;    -- Lorekeeper Kildrath
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 5750 WHERE `entry` = 14387;    -- Lothos Riftwaker
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 5752 WHERE `entry` = 14392;    -- Overlord Runthak
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 5753 WHERE `entry` = 14394;    -- Major Mattingly
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 5755 WHERE `entry` = 14381;    -- Lorekeeper Javon
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 5756 WHERE `entry` = 14382;    -- Lorekeeper Mykos
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 5782 WHERE `entry` = 2198;    -- Crier Goodman
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 5782 WHERE `entry` = 10877;    -- Courier Hammerfall
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 5782 WHERE `entry` = 10878;    -- Herald Moonstalker
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 5782 WHERE `entry` = 10879;    -- Harbinger Balthazad
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 5782 WHERE `entry` = 10880;    -- Warcaller Gorlach
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 5782 WHERE `entry` = 10881;    -- Bluff Runner Windstrider
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 5819 WHERE `entry` = 14305;    -- Human Orphan
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 5845 WHERE `entry` = 14469;    -- Niby the Almighty
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 5848 WHERE `entry` = 14451;    -- Orphan Matron Battlewail
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 5849 WHERE `entry` = 14450;    -- Orphan Matron Nightingale
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 5868 WHERE `entry` = 14527;    -- Simone the Inconspicuous
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 5869 WHERE `entry` = 14528;    -- Precious
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 5902 WHERE `entry` = 1416;    -- Grimand Elmore
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 5921 WHERE `entry` = 14508;    -- Short John Mithril
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 5941 WHERE `entry` = 14634;    -- Lookout Captain Lolo Longstriker
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 5942 WHERE `entry` = 14628;    -- Evonice Sootsmoker
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 5963 WHERE `entry` = 14627;    -- Hansel Heavyhands
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 5966 WHERE `entry` = 14626;    -- Taskmaster Scrange
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 5967 WHERE `entry` = 2941;    -- Lanie Reed
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6023 WHERE `entry` = 4314;    -- Gorkas
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6028 WHERE `entry` = 14721;    -- Field Marshal Afrasiabi
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6037 WHERE `entry` = 14728;    -- Rumstag Proudstrider
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6041 WHERE `entry` = 14722;    -- Clavicus Knavingham
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6042 WHERE `entry` = 14724;    -- Bubulo Acerbus
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6043 WHERE `entry` = 14723;    -- Mistina Steelshield
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6044 WHERE `entry` = 14725;    -- Raedon Duskstriker
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6089 WHERE `entry` = 11192;    -- Kilram
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6090 WHERE `entry` = 11191;    -- Lilith the Lithe
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6091 WHERE `entry` = 11193;    -- Seril Scourgebane
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6092 WHERE `entry` = 14742;    -- Zap Farflinger
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6094 WHERE `entry` = 14743;    -- Jhordy Lapforge
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6161 WHERE `entry` = 14829;    -- Yebb Neblegear
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6162 WHERE `entry` = 10378;    -- Omusa Thunderhorn
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6182 WHERE `entry` = 14823;    -- Silas Darkmoon
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6183 WHERE `entry` = 14828;    -- Gelvas Grimegate
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6184 WHERE `entry` = 14827;    -- Burth
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6186 WHERE `entry` = 14822;    -- Sayge
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6201 WHERE `entry` = 14849;    -- Darkmoon Faire Carnie
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6202 WHERE `entry` = 14847;    -- Professor Thaddeus Paleo
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6223 WHERE `entry` = 14832;    -- Kerri Hicks
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6224 WHERE `entry` = 14833;    -- Chronos
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6225 WHERE `entry` = 14841;    -- Rinling
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6227 WHERE `entry` = 14871;    -- Morja
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6230 WHERE `entry` = 14844;    -- Sylannia
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6231 WHERE `entry` = 14860;    -- Flik
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6233 WHERE `entry` = 14846;    -- Lhara
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6234 WHERE `entry` = 14845;    -- Stamp Thunderhorn
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6235 WHERE `entry` = 14875;    -- Molthor
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6261 WHERE `entry` = 13776;    -- Corporal Teeka Bloodsnarl
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6262 WHERE `entry` = 13777;    -- Sergeant Durgen Stormpike
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6321 WHERE `entry` = 14902;    -- Jin'rokh the Breaker
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6322 WHERE `entry` = 14903;    -- Al'tabim the All-Seeing
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6323 WHERE `entry` = 14983;    -- Field Marshal Oslight
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6341 WHERE `entry` = 14904;    -- Maywiki of Zuldazar
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6343 WHERE `entry` = 15011;    -- Wagner Hammerstrike
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6361 WHERE `entry` = 15021;    -- Deathmaster Dwire
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6381 WHERE `entry` = 14921;    -- Rin'wosho the Trader
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6421 WHERE `entry` = 15077;    -- Riggle Bassbait
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6422 WHERE `entry` = 14910;    -- Exzhal
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6447 WHERE `entry` = 15079;    -- Fishbot 5000
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6463 WHERE `entry` = 14982;    -- Lylandris
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6465 WHERE `entry` = 12197;    -- Glordrum Steelbeard
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6471 WHERE `entry` = 857;    -- Donal Osgood
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6475 WHERE `entry` = 15007;    -- Sir Malory Wheeler
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6513 WHERE `entry` = 15119;    -- Barrus
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6514 WHERE `entry` = 15078;    -- Jang
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6519 WHERE `entry` = 15076;    -- Zandalarian Emissary
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6523 WHERE `entry` = 14733;    -- Sentinel Farsong
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6525 WHERE `entry` = 15174;    -- Calandrath
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6527 WHERE `entry` = 15176;    -- Vargus
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6541 WHERE `entry` = 15191;    -- Windcaller Proudhorn
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6564 WHERE `entry` = 15270;    -- Huum Wildmane
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6565 WHERE `entry` = 7951;    -- Zas'Tysh
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6575 WHERE `entry` = 15303;    -- Maxima Blastenheimer
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6582 WHERE `entry` = 10445;    -- Selina Dourman
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6583 WHERE `entry` = 15306;    -- Bor Wildmane
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6588 WHERE `entry` = 15169;    -- Ralo'shan the Eternal Watcher
UPDATE `creature_template` SET `npcflag`= `npcflag`|(1+4), `gossip_menu_id` = 6597 WHERE `entry` = 15351;    -- Alliance Brigadier General
UPDATE `creature_template` SET `npcflag`= `npcflag`|(1+4), `gossip_menu_id` = 6598 WHERE `entry` = 15350;    -- Horde Warbringer
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6629 WHERE `entry` = 15471;    -- Lieutenant General Andorov
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6646 WHERE `entry` = 11811;    -- Narain Soothfancy
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6658 WHERE `entry` = 15526;    -- Meridith the Mermaiden
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6685 WHERE `entry` = 2496;    -- Baron Revilgaz
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6763 WHERE `entry` = 15664;    -- Metzen the Reindeer
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6786 WHERE `entry` = 15708;    -- Master Sergeant Maclure
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6796 WHERE `entry` = 15540;    -- Windcaller Kaldon
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6800 WHERE `entry` = 15395;    -- Nafien
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6801 WHERE `entry` = 11558;    -- Kernda
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6803 WHERE `entry` = 15762;    -- Officer Lunalight
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6804 WHERE `entry` = 15763;    -- Officer Porterhouse
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6805 WHERE `entry` = 15764;    -- Officer Ironbeard
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6806 WHERE `entry` = 15766;    -- Officer Maloof
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6821 WHERE `entry` = 15565;    -- Elder Stormbrow
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6823 WHERE `entry` = 15569;    -- Elder Goldwell
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6825 WHERE `entry` = 15577;    -- Elder Skychaser
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6826 WHERE `entry` = 15601;    -- Elder Starweave
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6827 WHERE `entry` = 15605;    -- Elder Riversong
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6829 WHERE `entry` = 15576;    -- Elder Winterhoof
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6831 WHERE `entry` = 15586;    -- Elder Dreamseer
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6837 WHERE `entry` = 10305;    -- Umi Rumplesnicker
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6841 WHERE `entry` = 15871;    -- Elder Bronzebeard
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6866 WHERE `entry` = 15563;    -- Elder Bellowrage
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6880 WHERE `entry` = 15598;    -- Elder Bladeswift
UPDATE `creature_template` SET `npcflag`= `npcflag`|(1+4), `gossip_menu_id` = 6917 WHERE `entry` = 15864;    -- Valadar Starsong
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6918 WHERE `entry` = 15895;    -- Lunar Festival Harbinger
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6925 WHERE `entry` = 15499;    -- Warden Haro
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6944 WHERE `entry` = 2299;    -- Borgus Stoutarm
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6944 WHERE `entry` = 10897;    -- Sindrayl
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6944 WHERE `entry` = 12617;    -- Khaelyn Steelwing
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6951 WHERE `entry` = 1432;    -- Renato Gallina
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6981 WHERE `entry` = 16002;    -- Colara Dean
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 7034 WHERE `entry` = 16070;    -- Garel Redrock
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 7034 WHERE `entry` = 16076;    -- Tharl Stonebleeder
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 7045 WHERE `entry` = 16091;    -- Dirk Thunderwood
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 7054 WHERE `entry` = 16075;    -- Kwee Q. Peddlefeet
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 7070 WHERE `entry` = 16012;    -- Mokvar
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 7071 WHERE `entry` = 16013;    -- Deliana
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 7084 WHERE `entry` = 16032;    -- Falrin Treeshaper
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 7091 WHERE `entry` = 16031;    -- Ysida Harmon
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 7096 WHERE `entry` = 16116;    -- Archmage Angela Dosantos
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 7098 WHERE `entry` = 16113;    -- Father Inigo Montoy
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 7099 WHERE `entry` = 16112;    -- Korfax WHERE `entry` = Champion of the Light
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 7100 WHERE `entry` = 16114;    -- Scarlet Commander Marjhan
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 7101 WHERE `entry` = 16131;    -- Rohan the Assassin
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 7102 WHERE `entry` = 16132;    -- Huntsman Leopold
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 7103 WHERE `entry` = 16134;    -- Rimblat Earthshatter
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 7104 WHERE `entry` = 16135;    -- Rayne
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 7105 WHERE `entry` = 16133;    -- Mataus the Wrathcaster
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 7109 WHERE `entry` = 11033;    -- Smokey LaRue
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 7157 WHERE `entry` = 16212;    -- Dispatch Commander Metz
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 7175 WHERE `entry` = 16284;    -- Argent Medic
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 7219 WHERE `entry` = 16376;    -- Craftsman Wilhelm
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 7238 WHERE `entry` = 16416;    -- Bronn Fitzwrench
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 7339 WHERE `entry` = 10540;    -- Vol'jin
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 7379 WHERE `entry` = 17209;    -- William Kielar
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 7406 WHERE `entry` = 3848;    -- Kayneth Stillwind
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 7418 WHERE `entry` = 16543;    -- Garon Hutchins
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 7524 WHERE `entry` = 15165;    -- Haughty Modiste
-- UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 7577 WHERE `entry` = 715;    -- Hemet Nesingwary Jr.
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 7690 WHERE `entry` = 1701;    -- Dank Drizzlecut
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 7690 WHERE `entry` = 3001;    -- Brek Stonehoof
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 7690 WHERE `entry` = 3137;    -- Matt Johnson
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 7690 WHERE `entry` = 3357;    -- Makaru
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 7690 WHERE `entry` = 4254;    -- Geofram Bouldertoe
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 7690 WHERE `entry` = 4598;    -- Brom Killian
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 7690 WHERE `entry` = 5392;    -- Yarr Hammerstone
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 7691 WHERE `entry` = 812;    -- Alma Jainrose
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 7691 WHERE `entry` = 1458;    -- Telurinon Moonshadow
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 7691 WHERE `entry` = 3013;    -- Komin Winterhoof
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 7691 WHERE `entry` = 3404;    -- Jandi
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 7691 WHERE `entry` = 4614;    -- Martha Alliestar
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 7691 WHERE `entry` = 5137;    -- Reyna Stonebranch
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 7691 WHERE `entry` = 8146;    -- Ruw
-- UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 8085 WHERE `entry` = 3230;    -- Nazgrel
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 8217 WHERE `entry` = 10181;    -- Lady Sylvanas Windrunner
-- UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 8453 WHERE `entry` = 15103;    -- Stormpike Emissary
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 8793 WHERE `entry` = 5086;    -- Captain Wymor
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 8840 WHERE `entry` = 4921;    -- Guard Byron
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 8846 WHERE `entry` = 2708;    -- Archmage Malin
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 8851 WHERE `entry` = 4979;    -- Theramore Guard
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 9821 WHERE `entry` = 6749;    -- Erma
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 9821 WHERE `entry` = 9980;    -- Shelby Stoneflint
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 9821 WHERE `entry` = 9982;    -- Penny
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 9821 WHERE `entry` = 9984;    -- Ulbrek Firehand
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 9821 WHERE `entry` = 9987;    -- Shoja'my
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 9821 WHERE `entry` = 9989;    -- Lina Hearthstove
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 9821 WHERE `entry` = 10045;    -- Kirk Maxwell
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 9821 WHERE `entry` = 10046;    -- Bethaine Flinthammer
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 9821 WHERE `entry` = 10050;    -- Seikwa
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 9821 WHERE `entry` = 10051;    -- Seriadne
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 9821 WHERE `entry` = 10053;    -- Anya Maulray
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 9821 WHERE `entry` = 10054;    -- Bulrug
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 9821 WHERE `entry` = 10055;    -- Morganus
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 9821 WHERE `entry` = 11119;    -- Azzleby
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 9821 WHERE `entry` = 16094;    -- Durik
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 10215 WHERE `entry` = 11832;    -- Keeper Remulos
-- UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 10775 WHERE `entry` = 2055;    -- Master Apothecary Faranell
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 11390 WHERE `entry` = 7937;    -- High Tinker Mekkatorque
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 11393 WHERE `entry` = 11390;    -- Skullsplitter Speaker
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4783 WHERE `entry` IN (543, 3545, 3698, 4320);    -- Nalesette Wildbringer, Claude Erksine, Bolyun, Caelyb
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 5304 WHERE `entry` = 12238;    -- Zaetar
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 685 WHERE `entry` = 5494;    -- Catherine Leland

-- Removing all NPC gossips from spawns that have a gossip menu granted by their template
DELETE FROM `npc_gossip` WHERE `npc_guid` IN
    (SELECT `guid` FROM `creature` WHERE `id` IN
        (SELECT `entry` FROM `creature_template` WHERE `gossip_menu_id` <> 0));