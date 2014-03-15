-- File:	SQL
-- Name:	0436_creature_template
-- Desc:	Corrections of creatures rank (Rare). Source of information about each creature - next to each record.
--          Full list comes from http://www.wowwiki.com/Rare_mobs_by_zone#In_World_of_Warcraft
--          and http://web.archive.org/web/20061230071942/http://wow.allakhazam.com/dyn/mobs/rare.html
--          Some creatures which are on that lists, are already marked as Rare and are not included in this update.
-- Auth:	Kupix
-- Date:	2014/03/11
-- ----------------------------------------------------------------------------------------------

-- Alterac Mountains
-- Cranky Benj
-- http://www.wowwiki.com/Cranky_Benj
-- http://web.archive.org/web/20060514103946/http://wow.allakhazam.com/db/mob.html?wmob=14223
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 14223;

-- Gravis Slipknot
-- http://www.wowwiki.com/Gravis_Slipknot
-- http://web.archive.org/web/20050527154140/http://wow.allakhazam.com/db/mob.html?wmob=14221
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 14221;

-- Jimmy the Bleeder
-- http://www.wowwiki.com/Jimmy_the_Bleeder
-- http://web.archive.org/web/20060114040949/http://wow.allakhazam.com/db/mob.html?wmob=14281
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 14281;

-- Stone Fury
-- http://www.wowwiki.com/Stone_Fury
-- http://web.archive.org/web/20050701075140/http://wow.allakhazam.com/db/mob.html?wmob=2258
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 2258;

-- Arathi Highlands
-- Kovork
-- http://www.wowwiki.com/Kovork
-- http://web.archive.org/web/20050226204934/http://wow.allakhazam.com/db/mob.html?wmob=2603
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 2603;

-- Prince Nazjak
-- http://www.wowwiki.com/Prince_Nazjak
-- http://web.archive.org/web/20050208002742/http://wow.allakhazam.com/db/mob.html?wmob=2779
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 2779;

-- Zalas Witherbark
-- http://www.wowwiki.com/Zalas_Witherbark
-- http://web.archive.org/web/20060114031040/http://wow.allakhazam.com/db/mob.html?wmob=2605
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 2605;

-- Ashenvale
-- Akkrilus
-- http://www.wowwiki.com/Akkrilus
-- http://web.archive.org/web/20060415023445/http://wow.allakhazam.com/db/mob.html?wmob=3773
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 3773;

-- Apothecary Falthis
-- http://www.wowwiki.com/Apothecary_Falthis
-- http://web.archive.org/web/20060114030140/http://wow.allakhazam.com/db/mob.html?wmob=3735
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 3735;

-- Branch Snapper
-- http://www.wowwiki.com/Branch_Snapper
-- http://web.archive.org/web/20060114034958/http://wow.allakhazam.com/db/mob.html?wmob=10641
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 10641;

-- Eck'alom
-- http://www.wowwiki.com/Eck%27alom
-- http://web.archive.org/web/20060114035023/http://wow.allakhazam.com/db/mob.html?wmob=10642
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 10642;

-- Mist Howler
-- http://www.wowwiki.com/Mist_Howler
-- http://web.archive.org/web/20050206210818/http://wow.allakhazam.com/db/mob.html?wmob=10644
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 10644;

-- Mugglefin
-- http://www.wowwiki.com/Mugglefin
-- http://web.archive.org/web/20041231112850/http://wow.allakhazam.com/db/mob.html?wmob=10643
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 10643;

-- Oakpaw
-- http://www.wowwiki.com/Oakpaw
-- http://web.archive.org/web/20060114034934/http://wow.allakhazam.com/db/mob.html?wmob=10640
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 10640;

-- Rorgish Jowl
-- http://www.wowwiki.com/Rorgish_Jowl
-- http://web.archive.org/web/20050206202452/http://wow.allakhazam.com/db/mob.html?wmob=10639
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 10639;

-- Azshara
-- Antilos
-- http://www.wowwiki.com/Antilos
-- http://web.archive.org/web/20050215161545/http://wow.allakhazam.com/db/mob.html?wmob=6648
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 6648;

-- Gatekeeper Rageroar
-- http://www.wowwiki.com/Gatekeeper_Rageroar
-- http://web.archive.org/web/20050217112128/http://wow.allakhazam.com/db/mob.html?wmob=6651
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 6651;

-- General Fangferror
-- http://www.wowwiki.com/General_Fangferror
-- http://web.archive.org/web/20050208012425/http://wow.allakhazam.com/db/mob.html?wmob=6650
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 6650;

-- Lady Sesspira
-- http://www.wowwiki.com/Lady_Sesspira
-- http://web.archive.org/web/20050208011648/http://wow.allakhazam.com/db/mob.html?wmob=6649
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 6649;

-- Magister Hawkhelm
-- http://www.wowwiki.com/Magister_Hawkhelm
-- http://web.archive.org/web/20050215161541/http://wow.allakhazam.com/db/mob.html?wmob=6647
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 6647;

-- The Evalcharr
-- http://www.wowwiki.com/The_Evalcharr
-- http://web.archive.org/web/20050209090647/http://wow.allakhazam.com/db/mob.html?wmob=8660
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 8660;

-- Varo'then's Ghost
-- http://www.wowwiki.com/Varo%27then%27s_Ghost
-- http://web.archive.org/web/20050215161441/http://wow.allakhazam.com/db/mob.html?wmob=6118
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 6118;

-- Badlands
-- 7:XT
-- http://www.wowwiki.com/7:XT
-- http://web.archive.org/web/20050506233005/http://wow.allakhazam.com/db/mob.html?wmob=14224
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 14224;

-- Rumbler
-- http://www.wowwiki.com/Rumbler
-- http://web.archive.org/web/20050426084527/http://wow.allakhazam.com/db/mob.html?wmob=2752
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 2752;

-- Shadowforge Commander
-- http://web.archive.org/web/20060114023107/http://wow.allakhazam.com/db/mob.html?wmob=2744
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 2744;

-- War Golem
-- http://www.wowwiki.com/War_Golem
-- http://web.archive.org/web/20051115201238/http://wow.allakhazam.com/db/mob.html?wmob=2751
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 2751;

-- Blasted Lands
-- Akubar the Seer
-- http://www.wowwiki.com/Akubar_the_Seer
-- http://web.archive.org/web/20050511075344/http://wow.allakhazam.com/db/mob.html?wmob=8298
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 8298;

-- Clack the Reaver
-- http://www.wowwiki.com/Clack_the_Reaver
-- http://web.archive.org/web/20050209091557/http://wow.allakhazam.com/db/mob.html?wmob=8301
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 8301;

-- Deatheye
-- http://www.wowwiki.com/Deatheye
-- http://web.archive.org/web/20060114034131/http://wow.allakhazam.com/db/mob.html?wmob=8302
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 8302;

-- Dreadscorn
-- http://www.wowwiki.com/Dreadscorn
-- http://web.archive.org/web/20050209085657/http://wow.allakhazam.com/db/mob.html?wmob=8304
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 8304;

-- Grunter
-- http://www.wowwiki.com/Grunter
-- http://web.archive.org/web/20051127044618/http://wow.allakhazam.com/db/mob.html?wmob=8303
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 8303;

-- Magronos the Unyielding
-- http://www.wowwiki.com/Magronos_the_Unyielding
-- http://web.archive.org/web/20051113092744/http://wow.allakhazam.com/db/mob.html?wmob=8297
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 8297;

-- Mojo the Twisted
-- http://www.wowwiki.com/Mojo_the_Twisted
-- http://web.archive.org/web/20050209090734/http://wow.allakhazam.com/db/mob.html?wmob=8296
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 8296;

-- Ravage
-- http://www.wowwiki.com/Ravage_(Hyena)
-- http://web.archive.org/web/20050209091253/http://wow.allakhazam.com/db/mob.html?wmob=8300
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 8300;

-- Spiteflayer
-- http://www.wowwiki.com/Spiteflayer
-- http://web.archive.org/web/20050209094745/http://wow.allakhazam.com/db/mob.html?wmob=8299
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 8299;

-- Lost One Cook
-- http://web.archive.org/web/20060114030611/http://wow.allakhazam.com/db/mob.html?wmob=1106
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 1106;

-- Burning Steppes
-- Gorgon'och
-- http://www.wowwiki.com/Gorgon%27och
-- http://web.archive.org/web/20050112161827/http://wow.allakhazam.com/db/mob.html?wmob=9604
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 9604;

-- Gruklash
-- http://www.wowwiki.com/Gruklash
-- http://web.archive.org/web/20050209090139/http://wow.allakhazam.com/db/mob.html?wmob=8979
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 8979;

-- Hahk'Zor
-- http://www.wowwiki.com/Hahk%27Zor
-- http://web.archive.org/web/20050209091045/http://wow.allakhazam.com/db/mob.html?wmob=9602
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 9602;

-- Malfunctioning Reaver
-- http://www.wowwiki.com/Malfunctioning_Reaver
-- http://web.archive.org/web/20050209092012/http://wow.allakhazam.com/db/mob.html?wmob=8981
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 8981;

-- Terrorspark
-- http://www.wowwiki.com/Terrorspark
-- http://web.archive.org/web/20050206172403/http://wow.allakhazam.com/db/mob.html?wmob=10078
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 10078;

-- Thauris Balgarr
-- http://www.wowwiki.com/Thauris_Balgarr
-- http://web.archive.org/web/20050209094324/http://wow.allakhazam.com/db/mob.html?wmob=8978
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 8978;

-- Darkshore
-- Carnivous the Breaker
-- http://www.wowwiki.com/Carnivous_the_Breaker
-- http://web.archive.org/web/20041227022811/http://wow.allakhazam.com/db/mob.html?wmob=2186
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 2186;

-- Firecaller Radison
-- http://www.wowwiki.com/Firecaller_Radison
-- http://web.archive.org/web/20050208004103/http://wow.allakhazam.com/db/mob.html?wmob=2192
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 2192;

-- Flagglemurk the Cruel
-- http://www.wowwiki.com/Flagglemurk_the_Cruel
-- http://web.archive.org/web/20050106063630/http://wow.allakhazam.com/db/mob.html?wmob=7015
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 7015;

-- Lady Moongazer
-- http://www.wowwiki.com/Lady_Moongazer
-- http://web.archive.org/web/20050101053532/http://wow.allakhazam.com/db/mob.html?wmob=2184
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 2184;

-- Licillin
-- http://www.wowwiki.com/Licillin
-- http://web.archive.org/web/20050101053553/http://wow.allakhazam.com/db/mob.html?wmob=2191
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 2191;

-- Lord Sinslayer
-- http://www.wowwiki.com/Lord_Sinslayer
-- http://web.archive.org/web/20050106063638/http://wow.allakhazam.com/db/mob.html?wmob=7017
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 7017;

-- Shadowclaw
-- http://www.wowwiki.com/Shadowclaw
-- http://web.archive.org/web/20050101053814/http://wow.allakhazam.com/db/mob.html?wmob=2175
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 2175;

-- Strider Clutchmother
-- http://www.wowwiki.com/Strider_Clutchmother
-- http://web.archive.org/web/20050208015256/http://wow.allakhazam.com/db/mob.html?wmob=2172
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 2172;

-- Cursed Centaur
-- http://www.wowwiki.com/Cursed_Centaur
-- http://web.archive.org/web/20050204060213/http://wow.allakhazam.com/db/mob.html?wmob=11688
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 11688;

-- Giggler
-- http://www.wowwiki.com/Giggler
-- http://web.archive.org/web/20060114035956/http://wow.allakhazam.com/db/mob.html?wmob=14228
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 14228;

-- Hissperak
-- http://www.wowwiki.com/Hissperak
-- http://web.archive.org/web/20050529172121/http://wow.allakhazam.com/db/mob.html?wmob=14227
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 14227;

-- Prince Kellen
-- http://www.wowwiki.com/Prince_Kellen
-- http://web.archive.org/web/20060114035834/http://wow.allakhazam.com/db/mob.html?wmob=14225
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 14225;

-- Ravenclaw Regent
-- http://www.wowwiki.com/Ravenclaw_Regent
-- http://web.archive.org/web/20050217110648/http://wow.allakhazam.com/db/mob.html?wmob=2283
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 2283;

-- Dun Morogh
-- Bjarn
-- http://www.wowwiki.com/Bjarn
-- http://web.archive.org/web/20050206213543/http://wow.allakhazam.com/db/mob.html?wmob=1130
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 1130;

-- Edan the Howler
-- http://www.wowwiki.com/Edan_the_Howler
-- http://web.archive.org/web/20050325012609/http://wow.allakhazam.com/db/mob.html?wmob=1137
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 1137;

-- Gibblewilt
-- http://www.wowwiki.com/Gibblewilt
-- http://web.archive.org/web/20041228044131/http://wow.allakhazam.com/db/mob.html?wmob=8503
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 8503;

-- Great Father Arctikus
-- http://www.wowwiki.com/Great_Father_Arctikus
-- http://web.archive.org/web/20041231112959/http://wow.allakhazam.com/db/mob.html?wmob=1260
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 1260;

-- Hammerspine
-- http://www.wowwiki.com/Hammerspine
-- http://web.archive.org/web/20041226015356/http://wow.allakhazam.com/db/mob.html?wmob=1119
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 1119;

-- Timber
-- http://www.wowwiki.com/Timber
-- http://web.archive.org/web/20041226015901/http://wow.allakhazam.com/db/mob.html?wmob=1132
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 1132;

-- Durotar
-- Death Flayer
-- http://www.wowwiki.com/Death_Flayer
-- http://web.archive.org/web/20050105142052/http://wow.allakhazam.com/db/mob.html?wmob=5823
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 5823;

-- Geolord Mottle
-- http://www.wowwiki.com/Geolord_Mottle
-- http://web.archive.org/web/20050101054744/http://wow.allakhazam.com/db/mob.html?wmob=5826
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 5826;

-- Warlord Kolkanis
-- http://www.wowwiki.com/Warlord_Kolkanis
-- http://web.archive.org/web/20050101054736/http://wow.allakhazam.com/db/mob.html?wmob=5808
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 5808;

-- Watch Commander Zalaphil
-- http://www.wowwiki.com/Watch_Commander_Zalaphil
-- http://web.archive.org/web/20050113215700/http://wow.allakhazam.com/db/mob.html?wmob=5809
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 5809;

-- Fenros
-- http://www.wowwiki.com/Fenros
-- http://web.archive.org/web/20050113215514/http://wow.allakhazam.com/db/mob.html?wmob=507
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 507;

-- Lord Malathrom
-- http://www.wowwiki.com/Lord_Malathrom
-- http://web.archive.org/web/20050208011307/http://wow.allakhazam.com/db/mob.html?wmob=503
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 503;

-- Lupos
-- http://www.wowwiki.com/Lupos
-- http://web.archive.org/web/20050101053718/http://wow.allakhazam.com/db/mob.html?wmob=521
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 521;

-- Naraxis
-- http://www.wowwiki.com/Naraxis
-- http://web.archive.org/web/20050106062713/http://wow.allakhazam.com/db/mob.html?wmob=574
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 574;

-- Nefaru
-- http://www.wowwiki.com/Nefaru
-- http://web.archive.org/web/20050215155021/http://wow.allakhazam.com/db/mob.html?wmob=534
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 534;

-- Dustwallow Marsh
-- Burgle Eye
-- http://www.wowwiki.com/Burgle_Eye
-- http://web.archive.org/web/20050514143014/http://wow.allakhazam.com/db/mob.html?wmob=14230
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 14230;

-- Darkmist Widow
-- http://www.wowwiki.com/Darkmist_Widow
-- http://web.archive.org/web/20050112161555/http://wow.allakhazam.com/db/mob.html?wmob=4380
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 4380;

-- Dart
-- http://www.wowwiki.com/Dart
-- http://web.archive.org/web/20050514143022/http://wow.allakhazam.com/db/mob.html?wmob=14232
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 14232;

-- Drogoth the Roamer
-- http://www.wowwiki.com/Drogoth_the_Roamer
-- http://web.archive.org/web/20050514143019/http://wow.allakhazam.com/db/mob.html?wmob=14231
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 14231;

-- Hayoc
-- http://www.wowwiki.com/Hayoc
-- http://web.archive.org/web/20050514143027/http://wow.allakhazam.com/db/mob.html?wmob=14234
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 14234;

-- Lord Angler
-- http://www.wowwiki.com/Lord_Angler
-- http://web.archive.org/web/20050520065048/http://wow.allakhazam.com/db/mob.html?wmob=14236
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 14236;

-- Oozeworm
-- http://www.wowwiki.com/Oozeworm
-- http://web.archive.org/web/20050518164745/http://wow.allakhazam.com/db/mob.html?wmob=14237
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 14237;

-- Ripscale
-- http://www.wowwiki.com/Ripscale
-- http://web.archive.org/web/20050430154809/http://wow.allakhazam.com/db/mob.html?wmob=14233
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 14233;

-- The Rot
-- http://www.wowwiki.com/The_Rot
-- http://web.archive.org/web/20051205003509/http://wow.allakhazam.com/db/mob.html?wmob=14235
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 14235;

-- Eastern Plaguelands
-- Deathspeaker Selendre
-- http://www.wowwiki.com/Deathspeaker_Selendre
-- http://web.archive.org/web/20050207011807/http://wow.allakhazam.com/db/mob.html?wmob=10827
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 10827;

-- Duggan Wildhammer
-- http://www.wowwiki.com/Duggan_Wildhammer
-- http://web.archive.org/web/20050207001632/http://wow.allakhazam.com/db/mob.html?wmob=10817
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 10817;

-- Gish the Unmoving
-- http://www.wowwiki.com/Gish_the_Unmoving
-- http://web.archive.org/web/20050207010127/http://wow.allakhazam.com/db/mob.html?wmob=10825
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 10825;

-- Hed'mush the Rotting
-- http://www.wowwiki.com/Hed%27mush_the_Rotting
-- http://web.archive.org/web/20050207003055/http://wow.allakhazam.com/db/mob.html?wmob=10821
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 10821;

-- Lord Darkscythe
-- http://www.wowwiki.com/Lord_Darkscythe
-- http://web.archive.org/web/20050207010702/http://wow.allakhazam.com/db/mob.html?wmob=10826
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 10826;

-- Ranger Lord Hawkspear
-- http://www.wowwiki.com/Ranger_Lord_Hawkspear
-- http://web.archive.org/web/20050207005110/http://wow.allakhazam.com/db/mob.html?wmob=10824
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 10824;

-- Warlord Thresh'jin
-- http://www.wowwiki.com/Warlord_Thresh%27jin
-- http://web.archive.org/web/20050207003708/http://wow.allakhazam.com/db/mob.html?wmob=10822
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 10822;

-- Zul'Brin Warpbranch
-- http://www.wowwiki.com/Zul%27Brin_Warpbranch
-- http://web.archive.org/web/20050207004739/http://wow.allakhazam.com/db/mob.html?wmob=10823
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 10823;

-- Elwynn Forest
-- Fedfennel
-- http://www.wowwiki.com/Fedfennel
-- http://web.archive.org/web/20060114024155/http://wow.allakhazam.com/db/mob.html?wmob=472
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 472;

-- Morgaine the Sly
-- http://www.wowwiki.com/Morgaine_the_Sly
-- http://web.archive.org/web/20050101053514/http://wow.allakhazam.com/db/mob.html?wmob=99
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 99;

-- Mother Fang
-- http://www.wowwiki.com/Mother_Fang
-- http://web.archive.org/web/20050105133537/http://wow.allakhazam.com/db/mob.html?wmob=471
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 471;

-- Narg the Taskmaster
-- http://www.wowwiki.com/Narg_the_Taskmaster
-- http://web.archive.org/web/20050101053508/http://wow.allakhazam.com/db/mob.html?wmob=79
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 79;

-- Felwood
-- Alshirr Banebreath
-- http://www.wowwiki.com/Alshirr_Banebreath
-- http://web.archive.org/web/20050326062728/http://wow.allakhazam.com/db/mob.html?wmob=14340
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 14340;

-- Death Howl
-- http://www.wowwiki.com/Death_Howl
-- http://web.archive.org/web/20050327104825/http://wow.allakhazam.com/db/mob.html?wmob=14339
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 14339;

-- Mongress
-- http://www.wowwiki.com/Mongress
-- http://web.archive.org/web/20060114041252/http://wow.allakhazam.com/db/mob.html?wmob=14344
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 14344;

-- Olm the Wise
-- http://www.wowwiki.com/Olm_the_Wise
-- http://web.archive.org/web/20050326062732/http://wow.allakhazam.com/db/mob.html?wmob=14343
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 14343;

-- Ragepaw
-- http://www.wowwiki.com/Ragepaw
-- http://web.archive.org/web/20060114041134/http://wow.allakhazam.com/db/mob.html?wmob=14342
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 14342;

-- The Ongar
-- http://www.wowwiki.com/The_Ongar
-- http://web.archive.org/web/20060114041338/http://wow.allakhazam.com/db/mob.html?wmob=14345
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 14345;

-- Feralas
-- Antilus the Soarer
-- http://www.wowwiki.com/Antilus_the_Soarer
-- http://web.archive.org/web/20050208010800/http://wow.allakhazam.com/db/mob.html?wmob=5347
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 5347;

-- Arash-ethis
-- http://www.wowwiki.com/Arash-ethis
-- http://web.archive.org/web/20060114030428/http://wow.allakhazam.com/db/mob.html?wmob=5349
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 5349;

-- Bloodroar the Stalker
-- http://www.wowwiki.com/Bloodroar_the_Stalker
-- http://web.archive.org/web/20050208014820/http://wow.allakhazam.com/db/mob.html?wmob=5346
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 5346;

-- Diamond Head
-- http://www.wowwiki.com/Diamond_Head
-- http://web.archive.org/web/20060114032355/http://wow.allakhazam.com/db/mob.html?wmob=5345
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 5345;

-- Gnarl Leafbrother
-- http://www.wowwiki.com/Gnarl_Leafbrother
-- http://web.archive.org/web/20050215161154/http://wow.allakhazam.com/db/mob.html?wmob=5354
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 5354;

-- Lady Szallah
-- http://www.wowwiki.com/Lady_Szallah
-- http://web.archive.org/web/20050208012737/http://wow.allakhazam.com/db/mob.html?wmob=5343
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 5343;

-- Old Grizzlegut
-- http://www.wowwiki.com/Old_Grizzlegut
-- http://web.archive.org/web/20050226205151/http://wow.allakhazam.com/db/mob.html?wmob=5352
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 5352;

-- Qirot
-- http://www.wowwiki.com/Qirot
-- http://web.archive.org/web/20050208010820/http://wow.allakhazam.com/db/mob.html?wmob=5350
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 5350;

-- Snarler
-- http://www.wowwiki.com/Snarler
-- http://web.archive.org/web/20051202123338/http://wow.allakhazam.com/db/mob.html?wmob=5356
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 5356;

-- Hillsbrad Foothills
-- Creepthess
-- http://www.wowwiki.com/Creepthess
-- http://web.archive.org/web/20060114040901/http://wow.allakhazam.com/db/mob.html?wmob=14279
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 14279;

-- Lady Zephris
-- http://www.wowwiki.com/Lady_Zephris
-- http://web.archive.org/web/20050514232417/http://wow.allakhazam.com/db/mob.html?wmob=14277
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 14277;

-- Ro'Bark
-- http://www.wowwiki.com/Ro%27Bark
-- http://web.archive.org/web/20050518164436/http://wow.allakhazam.com/db/mob.html?wmob=14278
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 14278;

-- Scargil
-- http://www.wowwiki.com/Scargil
-- http://web.archive.org/web/20050518164822/http://wow.allakhazam.com/db/mob.html?wmob=14276
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 14276;

-- Loch Modan
-- Boss Galgosh
-- http://www.wowwiki.com/Boss_Galgosh
-- http://web.archive.org/web/20041226015725/http://wow.allakhazam.com/db/mob.html?wmob=1398
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 1398;

-- Grizlak
-- http://www.wowwiki.com/Grizlak
-- http://web.archive.org/web/20050207021244/http://wow.allakhazam.com/db/mob.html?wmob=1425
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 1425;

-- Lord Condar
-- http://www.wowwiki.com/Lord_Condar
-- http://web.archive.org/web/20050518164918/http://wow.allakhazam.com/db/mob.html?wmob=14268
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 14268;

-- Magosh
-- http://www.wowwiki.com/Magosh
-- http://web.archive.org/web/20041226020014/http://wow.allakhazam.com/db/mob.html?wmob=1399
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 1399;

-- Shanda the Spinner
-- http://www.wowwiki.com/Shanda_the_Spinner
-- http://web.archive.org/web/20050520070201/http://wow.allakhazam.com/db/mob.html?wmob=14266
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 14266;

-- Mulgore
-- Enforcer Emilgund
-- http://www.wowwiki.com/Enforcer_Emilgund
-- http://web.archive.org/web/20050208011025/http://wow.allakhazam.com/db/mob.html?wmob=5787
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 5787;

-- Mazzranache
-- http://www.wowwiki.com/Mazzranache
-- http://web.archive.org/web/20041227023832/http://wow.allakhazam.com/db/mob.html?wmob=3068
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 3068;

-- Snagglespear
-- http://www.wowwiki.com/Snagglespear
-- http://web.archive.org/web/20050101054727/http://wow.allakhazam.com/db/mob.html?wmob=5786
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 5786;

-- The Rake
-- http://www.wowwiki.com/The_Rake
-- http://web.archive.org/web/20050101054730/http://wow.allakhazam.com/db/mob.html?wmob=5807
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 5807;

-- Redridge Mountains
-- Boulderheart
-- http://www.wowwiki.com/Boulderheart
-- http://web.archive.org/web/20050523153102/http://wow.allakhazam.com/db/mob.html?wmob=14273
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 14273;

-- Chatter
-- http://www.wowwiki.com/Chatter
-- http://web.archive.org/web/20050120022218/http://wow.allakhazam.com/db/mob.html?wmob=616
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 616;

-- Kazon
-- http://www.wowwiki.com/Kazon
-- http://web.archive.org/web/20050106062716/http://wow.allakhazam.com/db/mob.html?wmob=584
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 584;

-- Ribchaser
-- http://www.wowwiki.com/Ribchaser
-- http://web.archive.org/web/20050501151215/http://wow.allakhazam.com/db/mob.html?wmob=14271
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 14271;

-- Seeker Aqualon
-- http://www.wowwiki.com/Seeker_Aqualon
-- http://web.archive.org/web/20050520065727/http://wow.allakhazam.com/db/mob.html?wmob=14269
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 14269;

-- Snarlflare
-- http://www.wowwiki.com/Snarlflare
-- http://web.archive.org/web/20060114040645/http://wow.allakhazam.com/db/mob.html?wmob=14272
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 14272;

-- Squiddic
-- http://www.wowwiki.com/Squiddic
-- http://web.archive.org/web/20050209090503/http://wow.allakhazam.com/db/mob.html?wmob=8279
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 14270;

-- Searing Gorge
-- Faulty War Golem
-- http://www.wowwiki.com/Faulty_War_Golem
-- http://web.archive.org/web/20050209090503/http://wow.allakhazam.com/db/mob.html?wmob=8279
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 8279;

-- Rekk'tilac
-- http://www.wowwiki.com/Rekk%27tilac
-- http://web.archive.org/web/20060114024515/http://wow.allakhazam.com/db/mob.html?wmob=8277
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 8277;

-- Scald
-- http://www.wowwiki.com/Scald
-- http://web.archive.org/web/20050828012930/http://wow.allakhazam.com/db/mob.html?wmob=8281
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 8281;

-- Shleipnarr
-- http://www.wowwiki.com/Shleipnarr
-- http://web.archive.org/web/20050209091758/http://wow.allakhazam.com/db/mob.html?wmob=8280
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 8280;

-- Slave Master Blackheart
-- http://www.wowwiki.com/Slave_Master_Blackheart
-- http://web.archive.org/web/20050209090119/http://wow.allakhazam.com/db/mob.html?wmob=8283
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 8283;

-- Smoldar
-- http://www.wowwiki.com/Smoldar
-- http://web.archive.org/web/20050209085057/http://wow.allakhazam.com/db/mob.html?wmob=8278
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 8278;

-- Silithus
-- Gretheer
-- http://www.wowwiki.com/Gretheer
-- http://web.archive.org/web/20050506233109/http://wow.allakhazam.com/db/mob.html?wmob=14472
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 14472;

-- Huricanian
-- http://www.wowwiki.com/Huricanian
-- http://web.archive.org/web/20050508114853/http://wow.allakhazam.com/db/mob.html?wmob=14478
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 14478;

-- Krellack
-- http://www.wowwiki.com/Krellack
-- http://web.archive.org/web/20060415094751/http://wow.allakhazam.com/db/mob.html?wmob=14476
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 14476;

-- Twilight Lord Everun
-- http://www.wowwiki.com/Twilight_Lord_Everun
-- http://web.archive.org/web/20050518164301/http://wow.allakhazam.com/db/mob.html?wmob=14479
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 14479;

-- Silverpine Forest
-- Dalaran Spellscribe
-- http://www.wowwiki.com/Dalaran_Spellscribe
-- http://web.archive.org/web/20050217110540/http://wow.allakhazam.com/db/mob.html?wmob=1920
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 1920;

-- Gorefang
-- http://www.wowwiki.com/Gorefang
-- http://web.archive.org/web/20050108143824/http://wow.allakhazam.com/db/mob.html?wmob=12431
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 12431;

-- Krethis Shadowspinner
-- http://www.wowwiki.com/Krethis_Shadowspinner
-- http://web.archive.org/web/20050207023640/http://wow.allakhazam.com/db/mob.html?wmob=12433
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 12433;

-- Old Vicejaw
-- http://www.wowwiki.com/Old_Vicejaw
-- http://web.archive.org/web/20050111225410/http://wow.allakhazam.com/db/mob.html?wmob=12432
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 12432;

-- Rot Hide Bruiser
-- http://www.wowwiki.com/Rot_Hide_Bruiser
-- http://web.archive.org/web/20050805074946/http://wow.allakhazam.com/db/mob.html?wmob=1944
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 1944;

-- Snarlmane
-- http://www.wowwiki.com/Snarlmane
-- http://web.archive.org/web/20050101053806/http://wow.allakhazam.com/db/mob.html?wmob=1948
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 1948;

-- Stonetalon Mountains
-- Pridewing Patriarch
-- http://www.wowwiki.com/Pridewing_Patriarch
-- http://web.archive.org/web/20050101054340/http://wow.allakhazam.com/db/mob.html?wmob=4015
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 4015;

-- Vengeful Ancient
-- http://www.wowwiki.com/Vengeful_Ancient
-- http://web.archive.org/web/20050105141440/http://wow.allakhazam.com/db/mob.html?wmob=4030
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 4030;

-- Stormwind City
-- Sewer Beast
-- http://www.wowwiki.com/Sewer_Beast
-- http://web.archive.org/web/20050217111144/http://wow.allakhazam.com/db/mob.html?wmob=3581
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 3581;

-- Stranglethorn Vale
-- Gluggle
-- http://www.wowwiki.com/Gluggle
-- http://web.archive.org/web/20060114042132/http://wow.allakhazam.com/db/mob.html?wmob=14487
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 14487;

-- Kurmokk
-- http://www.wowwiki.com/Kurmokk
-- http://web.archive.org/web/20050506233352/http://wow.allakhazam.com/db/mob.html?wmob=14491
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 14491;

-- Lord Sakrasis
-- http://www.wowwiki.com/Lord_Sakrasis
-- http://web.archive.org/web/20060114025416/http://wow.allakhazam.com/db/mob.html?wmob=2541
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 2541;

-- Rippa
-- http://www.wowwiki.com/Rippa
-- http://web.archive.org/web/20050514143031/http://wow.allakhazam.com/db/mob.html?wmob=14490
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 14490;

-- Scale Belly
-- http://www.wowwiki.com/Scale_Belly
-- http://web.archive.org/web/20050208014429/http://wow.allakhazam.com/db/mob.html?wmob=1552
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 1552;

-- Verifonix
-- http://www.wowwiki.com/Verifonix
-- http://web.archive.org/web/20050523081821/http://wow.allakhazam.com/db/mob.html?wmob=14492
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 14492;

-- Swamp of Sorrows
-- Fingat
-- http://www.wowwiki.com/Fingat
-- http://web.archive.org/web/20050501143149/http://wow.allakhazam.com/db/mob.html?wmob=14446
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 14446;

-- Gilmorian
-- http://www.wowwiki.com/Gilmorian
-- http://web.archive.org/web/20050506233529/http://wow.allakhazam.com/db/mob.html?wmob=14447
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 14447;

-- Molt Thorn
-- http://www.wowwiki.com/Molt_Thorn
-- http://web.archive.org/web/20050522010619/http://wow.allakhazam.com/db/mob.html?wmob=14448
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 14448;

-- Tanaris
-- Cyclok the Mad
-- http://www.wowwiki.com/Cyclok_the_Mad
-- http://web.archive.org/web/20050209091529/http://wow.allakhazam.com/db/mob.html?wmob=8202
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 8202;

-- Greater Firebird
-- http://www.wowwiki.com/Greater_Firebird
-- http://web.archive.org/web/20050209094133/http://wow.allakhazam.com/db/mob.html?wmob=8207
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 8207;

-- Haarka the Ravenous
-- http://www.wowwiki.com/Haarka_the_Ravenous
-- http://web.archive.org/web/20060114033634/http://wow.allakhazam.com/db/mob.html?wmob=8205
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 8205;

-- Kregg Keelhaul
-- http://www.wowwiki.com/Kregg_Keelhaul
-- http://web.archive.org/web/20050622081144/http://wow.allakhazam.com/db/mob.html?wmob=8203
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 8203;

-- Murderous Blisterpaw
-- http://www.wowwiki.com/Murderous_Blisterpaw
-- http://web.archive.org/web/20050209084717/http://wow.allakhazam.com/db/mob.html?wmob=8208
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 8208;

-- Omgorn the Lost
-- http://www.wowwiki.com/Omgorn_the_Lost
-- http://web.archive.org/web/20050209085357/http://wow.allakhazam.com/db/mob.html?wmob=8201
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 8201;

-- Soriid the Devourer
-- http://www.wowwiki.com/Soriid_the_Devourer
-- http://web.archive.org/web/20050528012749/http://wow.allakhazam.com/db/mob.html?wmob=8204
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 8204;

-- Teldrassil
-- Blackmoss the Fetid
-- http://www.wowwiki.com/Blackmoss_the_Fetid
-- http://web.archive.org/web/20050113215518/http://wow.allakhazam.com/db/mob.html?wmob=3535
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 3535;

-- The Barrens
-- Azzere the Skyblade
-- http://www.wowwiki.com/Azzere_the_Skyblade
-- http://web.archive.org/web/20050101054756/http://wow.allakhazam.com/db/mob.html?wmob=5834
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 5834;

-- Brokespear
-- http://www.wowwiki.com/Brokespear
-- http://web.archive.org/web/20050101054808/http://wow.allakhazam.com/db/mob.html?wmob=5838
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 5838;

-- Sludge Beast
-- http://www.wowwiki.com/Sludge_Beast
-- http://web.archive.org/web/20050106063253/http://wow.allakhazam.com/db/mob.html?wmob=3295
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 3295;

-- Digger Flameforge
-- http://www.wowwiki.com/Digger_Flameforge
-- http://web.archive.org/web/20050101054824/http://wow.allakhazam.com/db/mob.html?wmob=5849
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 5849;

-- Dishu
-- http://www.wowwiki.com/Dishu
-- http://web.archive.org/web/20050106061831/http://wow.allakhazam.com/db/mob.html?wmob=5865
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 5865;

-- Engineer Whirleygig
-- http://www.wowwiki.com/Engineer_Whirleygig
-- http://web.archive.org/web/20050106063546/http://wow.allakhazam.com/db/mob.html?wmob=5836
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 5836;

-- Foreman Grills
-- http://www.wowwiki.com/Foreman_Grills
-- http://web.archive.org/web/20050101054800/http://wow.allakhazam.com/db/mob.html?wmob=5835
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 5835;

-- Geopriest Gukk'rok
-- http://www.wowwiki.com/Geopriest_Gukk%27rok
-- http://web.archive.org/web/20050106063554/http://wow.allakhazam.com/db/mob.html?wmob=5863
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 5863;

-- Heggin Stonewhisker
-- http://www.wowwiki.com/Heggin_Stonewhisker
-- http://web.archive.org/web/20050101054820/http://wow.allakhazam.com/db/mob.html?wmob=5847
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 5847;

-- Malgin Barleybrew
-- http://www.wowwiki.com/Malgin_Barleybrew
-- http://web.archive.org/web/20050106063550/http://wow.allakhazam.com/db/mob.html?wmob=5848
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 5848;

-- Rathorian
-- http://www.wowwiki.com/Rathorian
-- http://web.archive.org/web/20050101054202/http://wow.allakhazam.com/db/mob.html?wmob=3470
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 3470;

-- Silithid Harvester
-- http://www.wowwiki.com/Silithid_Harvester
-- http://web.archive.org/web/20050101054140/http://wow.allakhazam.com/db/mob.html?wmob=3253
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 3253;

-- Snort the Heckler
-- http://www.wowwiki.com/Snort_the_Heckler
-- http://web.archive.org/web/20050105142056/http://wow.allakhazam.com/db/mob.html?wmob=5829
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 5829;

-- Stonearm
-- http://www.wowwiki.com/Stonearm
-- http://web.archive.org/web/20050101054805/http://wow.allakhazam.com/db/mob.html?wmob=5837
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 5837;

-- Thunderstomp
-- http://www.wowwiki.com/Thunderstomp_(mob)
-- http://web.archive.org/web/20050101054752/http://wow.allakhazam.com/db/mob.html?wmob=5832
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 5832;

-- The Hinterlands
-- Ironback
-- http://www.wowwiki.com/Ironback
-- http://web.archive.org/web/20050528013057/http://wow.allakhazam.com/db/mob.html?wmob=8213
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 8213;

-- Jalinde Summerdrake
-- http://www.wowwiki.com/Jalinde_Summerdrake
-- http://web.archive.org/web/20050209085509/http://wow.allakhazam.com/db/mob.html?wmob=8214
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 8214;

-- Old Cliff Jumper
-- http://www.wowwiki.com/Old_Cliff_Jumper
-- http://web.archive.org/web/20060114033821/http://wow.allakhazam.com/db/mob.html?wmob=8211
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 8211;

-- Retherokk the Berserker
-- http://www.wowwiki.com/Retherokk_the_Berserker
-- http://web.archive.org/web/20050209091129/http://wow.allakhazam.com/db/mob.html?wmob=8216
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 8216;

-- The Reak
-- http://www.wowwiki.com/The_Reak
-- http://web.archive.org/web/20050620073511/http://wow.allakhazam.com/db/mob.html?wmob=8212
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 8212;

-- Witherheart the Stalker
-- http://www.wowwiki.com/Witherheart_the_Stalker
-- http://web.archive.org/web/20060111231149/http://wow.allakhazam.com/db/mob.html?wmob=8218
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 8218;

-- Zul'arek Hatefowler
-- http://www.wowwiki.com/Zul%27arek_Hatefowler
-- http://web.archive.org/web/20050209091726/http://wow.allakhazam.com/db/mob.html?wmob=8219
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 8219;

-- Thousand Needles
-- Achellios the Banished
-- http://web.archive.org/web/20061128235041/http://wow.allakhazam.com/db/mob.html?wmob=5933
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 5933;

-- Silithid Ravager
-- http://www.wowwiki.com/Silithid_Ravager
-- http://web.archive.org/web/20050221043133/http://wow.allakhazam.com/db/mob.html?wmob=4132
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 4132;

-- Tirisfal Glades
-- Bayne
-- http://www.wowwiki.com/Bayne
-- http://web.archive.org/web/20050206223151/http://wow.allakhazam.com/db/mob.html?wmob=10356
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 10356;

-- Deeb
-- http://www.wowwiki.com/Deeb
-- http://web.archive.org/web/20050215155326/http://wow.allakhazam.com/db/mob.html?wmob=1911
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 1911;

-- Farmer Solliden
-- http://www.wowwiki.com/Farmer_Solliden
-- http://web.archive.org/web/20041226020714/http://wow.allakhazam.com/db/mob.html?wmob=1936
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 1936;

-- Muad
-- http://www.wowwiki.com/Muad
-- http://web.archive.org/web/20050208005058/http://wow.allakhazam.com/db/mob.html?wmob=1910
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 1910;

-- Ressan the Needler
-- http://www.wowwiki.com/Ressan_the_Needler
-- http://web.archive.org/web/20050129215341/http://wow.allakhazam.com/db/mob.html?wmob=10357
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 10357;

-- Sri'skulk
-- http://www.wowwiki.com/Sri%27skulk
-- http://web.archive.org/web/20041226021542/http://wow.allakhazam.com/db/mob.html?wmob=10359
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 10359;

-- Tormented Spirit
-- http://www.wowwiki.com/Tormented_Spirit
-- http://web.archive.org/web/20041231112646/http://wow.allakhazam.com/db/mob.html?wmob=1533
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 1533;

-- Un'Goro Crater
-- Clutchmother Zavas
-- http://www.wowwiki.com/Clutchmother_Zavas
-- http://web.archive.org/web/20050226205215/http://wow.allakhazam.com/db/mob.html?wmob=6582
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 6582;

-- Ravasaur Matriarch
-- http://www.wowwiki.com/Ravasaur_Matriarch
-- http://web.archive.org/web/20060114023614/http://wow.allakhazam.com/db/mob.html?wmob=6581
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 6581;

-- Uhk'loc
-- http://www.wowwiki.com/Uhk%27loc
-- http://web.archive.org/web/20050620082014/http://wow.allakhazam.com/db/mob.html?wmob=6585
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 6585;

-- Western Plaguelands
-- Foreman Marcrid
-- http://www.wowwiki.com/Foreman_Marcrid
-- http://web.archive.org/web/20050208011917/http://wow.allakhazam.com/db/mob.html?wmob=1844
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 1844;

-- Foulmane
-- http://www.wowwiki.com/Foulmane
-- http://web.archive.org/web/20050217110520/http://wow.allakhazam.com/db/mob.html?wmob=1847
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 1847;

-- Lord Maldazzar
-- http://www.wowwiki.com/Lord_Maldazzar
-- http://web.archive.org/web/20050208015733/http://wow.allakhazam.com/db/mob.html?wmob=1848
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 1848;

-- Scarlet Judge
-- http://www.wowwiki.com/Scarlet_Judge
-- http://web.archive.org/web/20050208010928/http://wow.allakhazam.com/db/mob.html?wmob=1837
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 1837;

-- Scarlet Smith
-- http://www.wowwiki.com/Scarlet_Smith
-- http://web.archive.org/web/20050217110523/http://wow.allakhazam.com/db/mob.html?wmob=1885
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 1885;

-- The Husk
-- http://www.wowwiki.com/The_Husk
-- http://web.archive.org/web/20050208002555/http://wow.allakhazam.com/db/mob.html?wmob=1851
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 1851;

-- Dreadwhisper
-- http://www.wowwiki.com/Dreadwhisper
-- http://web.archive.org/web/20070828044709/http://wow.allakhazam.com/db/mob.html?wmob=1849
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 1849;

-- Westfall
-- Foe Reaper 4000
-- http://www.wowwiki.com/Foe_Reaper_4000
-- http://web.archive.org/web/20050226204831/http://wow.allakhazam.com/db/mob.html?wmob=573
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 573;

-- Leech Widow
-- http://www.wowwiki.com/Leech_Widow
-- http://web.archive.org/web/20050206180655/http://wow.allakhazam.com/db/mob.html?wmob=1112
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 1112;

-- Ma'ruk Wyrmscale
-- http://www.wowwiki.com/Ma%27ruk_Wyrmscale
-- http://web.archive.org/web/20050217110604/http://wow.allakhazam.com/db/mob.html?wmob=2090
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 2090;

-- Razormaw Matriarch
-- http://www.wowwiki.com/Razormaw_Matriarch
-- http://web.archive.org/web/20050206234213/http://wow.allakhazam.com/db/mob.html?wmob=1140
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 1140;

-- Winterspring
-- Grizzle Snowpaw
-- http://www.wowwiki.com/Grizzle_Snowpaw
-- http://web.archive.org/web/20050206191129/http://wow.allakhazam.com/db/mob.html?wmob=10199
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 10199;

-- Mezzir the Howler
-- http://www.wowwiki.com/Mezzir_the_Howler
-- http://web.archive.org/web/20050206190553/http://wow.allakhazam.com/db/mob.html?wmob=10197
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 10197;

-- Rak'shiri
-- http://www.wowwiki.com/Rak%27shiri
-- http://web.archive.org/web/20050206192917/http://wow.allakhazam.com/db/mob.html?wmob=10200
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 10200;
